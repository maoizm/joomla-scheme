<?php

			echo (class_exists('JPlatform') && version_compare(JPlatform::RELEASE, '12', 'ge')) ? new JResponseJson() : new JJsonResponse();