<?php
	function getSong($streamingUrl, $interval, $offset = 0, $headers = true)
	{
		$needle = 'StreamTitle=';
		$ua = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36';
		$opts = [
			'http' => [
				'method' => 'GET',
				'header' => 'Icy-MetaData: 1',
				'user_agent' => $ua
			]
		];
		if (($headers = get_headers($streamingUrl)))
			foreach ($headers as $h)
				if (strpos(strtolower($h), 'icy-metaint') !== false && ($interval = explode(':', $h)[1]))
					break;
		$context = stream_context_create($opts);
		if ($stream = fopen($streamingUrl, 'r', false, $context))
		{
			while($buffer = stream_get_contents($stream, $interval, $offset)) {
				if (strpos($buffer, $needle) !== false)
				{
					fclose($stream);
					$title = explode($needle, $buffer)[1];
					return substr($title, 1, strpos($title, ';') - 2);
				}
				
				$offset += $interval;
			}
		}
	}
?>
