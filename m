Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B18B1B431C4
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 07:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2AC10E971;
	Thu,  4 Sep 2025 05:49:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWeOdhNG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 525DA10E22C;
 Thu,  4 Sep 2025 05:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756964941; x=1788500941;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=WcxKol+PU3flWSaOfRG5Sm5cLRVUb/mGWW7xydpmOv0=;
 b=PWeOdhNGuO+OMg85kUPpSRG77aE9czyKun5boIQtRV+B21p+in2mfpIA
 hJUYC+tWBS9z3nkG2ZAn1IJ3BNogL1RHYnmN1KVJ/PGd2Q+u22oN9oDxx
 4mpIccMLSZ5CNJg7o89DCLfrRwPgk7rh/yo/OfBclXjNuCVuE9yRMgQ5A
 w+LDEoPRv/EVbAg/cnG6zy4r95xGOkGFeuNHLqYyKzxv9Lv6gU9URLs8H
 BelYWohkqVg/bTsGXp4cYge/A8Pqoaf0ggm9YIHRTuWzok9b6n+EXKu0B
 tXxyB+fktk+PXZUBgylM6Ksg1l4RDR7vU2zsP6eBKr16N9TH7ZfV2mK+I w==;
X-CSE-ConnectionGUID: 3tb5zxU+SB6SFMS1V7gexQ==
X-CSE-MsgGUID: kJ4V8kbrTc+foQ1orzloNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="69555764"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="69555764"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 22:49:01 -0700
X-CSE-ConnectionGUID: TinqxQGhRGK2bDFKP93Oqg==
X-CSE-MsgGUID: jak4UXGMRDGD2RZRmtVVZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="171084965"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 22:49:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 22:49:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 22:49:00 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.45)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 22:48:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IJqS8lq1+wnynK4ZvERsCVsmucvrPwrD06S+H2jGClGXtlIO7hGDzi6RPfNt6g75KMV0fEXXqTMs4RwkPg/ckOqEnfOPQytC3RV8K3AI9r4qc+rxsMDd/SXOsX7SrGpUVTYDzj7SYH7gFxAmYNGz05emxctUN/ceQ/1IXt3/HTcLlshm93Lu/D/StPdx+OV1f5U5pxni3XU4ze1b4j+EULc3/eazRZpiz+2dsbZrSQRYJ99VyzDQs+/ANkhgM1EztDm4j0wdFygI4mP3YSlHABeoDHunOyqZYB8F2s5x/282sYARkGfd1QfMKETvnMXlVIg0NeRwPB0qEIf7qtMk2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WcxKol+PU3flWSaOfRG5Sm5cLRVUb/mGWW7xydpmOv0=;
 b=FQaWSd3kc5Qhp30WZcBExDoViB3zoB2G5iey07w5jDcbTM3fVomrVzNOTvKF9vwwbseSLebj0q/2CNNsKtHRho+c6UUfbchTYobmhFYWWZmNFYeEpdHZOb9LfI7xFpJV2jtN+adRt3qKh/5PGINodvMSQptaiOkrmZxjBr8p+8zrCOFGeWGwlSKMFZv5c2VjnE3YnETphd2t2M5KrM2XS2NHTAzFjQKXMjfZjNHlYgcp7ChqUfCY8IFMgsLOLfR+PtBavXPmX52TJjPaAuzC77NOKOtCYLMbbkFwrtcgUgqRDsf06CdetWezHNCESkMn2pEUMN3g/Jkit18W+6rwGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB4977.namprd11.prod.outlook.com (2603:10b6:303:6d::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.17; Thu, 4 Sep 2025 05:48:52 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 05:48:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 10/20] drm/i915/power-well: use generic poll_timeout_us()
 instead of wait_for() for DKL PHY
Thread-Topic: [PATCH 10/20] drm/i915/power-well: use generic poll_timeout_us()
 instead of wait_for() for DKL PHY
Thread-Index: AQHcGBZpRcrdajAS+EWbGU76BioEfbSCjwAA
Date: Thu, 4 Sep 2025 05:48:51 +0000
Message-ID: <a26bbdbce440217f1be908a44386b0f3b322d3b7.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <663c9edf4a98b09121d7200f8d734ebc829da85b.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <663c9edf4a98b09121d7200f8d734ebc829da85b.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB4977:EE_
x-ms-office365-filtering-correlation-id: b8938c3c-0325-40a4-89aa-08ddeb76b9ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?L1dVdWRXM3UwTGhWci84YlFXdHp5Q3ZsSWtGS0lkM1A5VEtLSXkyaDgzK0J5?=
 =?utf-8?B?QUJpakl0VkYwTkRrUGZLWmx6ZTFzSEtqcmFrT2hvWUNFNDcyZDdDWFdOUUM2?=
 =?utf-8?B?clRSSHRXN1RUYkFnRnZ1dVZkVzdCelJqbzdCWGhjdGc1b294Q0Z3TUx2NThK?=
 =?utf-8?B?R0VtbmZ0ZkJDaTY5Z2J2ZGYwOHpsT1BOcjBSaDk0d1pwY0pnVkF3SW0xSlRG?=
 =?utf-8?B?VVNqMndQK2FKYVR2T3c5eUlFc3JpUWM0R05ORnlJc3F3cmUrcTNrSzJmeTEx?=
 =?utf-8?B?bWw2eEJQTCsyM3BJWlNhTDlEMVgzSStsaG40MW5ZOU50a3UrMzBlend0N2NN?=
 =?utf-8?B?QXlTN09NL1d1VFpIRWthZEhTTmJBUGpnaWxlOFNpNHg1cWxtK3N6MHJTVDJZ?=
 =?utf-8?B?eTJGNVpka2lrTFB5dXkrS2ZVT3pOejRncGY4WjkwRzVhQldTR2lyNDcybERz?=
 =?utf-8?B?RWNiYjl5RjBNbXExTFVSMlVTMmZrQm05V29CbzJvdDkvTFpEYURTS0sxSm5U?=
 =?utf-8?B?MFo4SkoxeFh4TURPVDNDY3VZMyttVHhNRWxBUzhxeFgxR1JRK3c1d1V6Nk11?=
 =?utf-8?B?N0RuTG5KRmxrSzg4Z1pKQ001V0RneWYzN013OGJ2c2pqU25CanEwSFhmOXpS?=
 =?utf-8?B?QllKYy9LbVBuTEFZZjUvQ1c4ck1rR3E1bVYrWWhrSjdJL2cyVTdMTUxsOE5k?=
 =?utf-8?B?d3hiby85ZU1vc215THZqUzhKMlk3SE5iUU0vUzEvVTVFNnZibjFCcTRwNjdr?=
 =?utf-8?B?M2JEODZtZTF0Z1FxQ1YzanJTR2ZENS9zMFVzcnFxVmlFTkFHOGl6MVcvQm51?=
 =?utf-8?B?RTFTVVF2MXFxT09abTZXcDBZUkYvejdyM3dmQ3FRQndMUXNqOVZmT0hiVGg4?=
 =?utf-8?B?MTdQNkhCSnhQMnhkdUFQaC9LU0tUUEZReUJzUS9TSkM5UTBMdjY2RHlNd2ov?=
 =?utf-8?B?eVhUeUh2VS9QRldycGtlZkY1aEY5eHZPajBqam54bGlPaTZZaGh0TEo4M1M5?=
 =?utf-8?B?NFo0UHRJRkVkdEhDcDFwTHJuZDAxWlAzTiswSzhZSUswWVNQUTk4RXdMYkx3?=
 =?utf-8?B?Umx1T0d3NmVabDllUjZ4aUw0ejNMZkt6YXMvWkkxd05kekhsU2U2Y1JUVENl?=
 =?utf-8?B?NitSTjlCTDFHK1N2VGYrYmsyV2V5QjFMOCtDajVUaWVaNEtCMzRhS2hLWHMv?=
 =?utf-8?B?NDVVRDgwQUdFV0RvS0o5byt3SmwzT3pqSXJ6YUJPN3F1cjJnbS8ydGJMU29Q?=
 =?utf-8?B?a1ZYTlJBNXdaUmNnVEdvbnh4bFByMGhPQS9mWGFLSnZrWnFMNnJ1MmZzOUFR?=
 =?utf-8?B?azNqa2FyR0llTHBVUnJ3ZGFZbGhjSG1oUFY3VDlpVzcwQmVScU1rRlljYU01?=
 =?utf-8?B?NzNhN0NvQmJrbEQzSW81SmFJU2NSUGYwaytUM0p6b3YraXRheHBpS3E5N3RW?=
 =?utf-8?B?ZzU0UHlnci8yMS90V2FwN1hZODhwVTlMUm9LYTBWUm1GUEdIbkNCc1kwbUI0?=
 =?utf-8?B?ZVdib1J6NlB3LzE0eFlQcXVVNFVXZU9HRVhTaGpyY3R1blA0WEFrUGNHNTJm?=
 =?utf-8?B?QmJqcUlpN1R0aVVpTlRoMG1PalQwcXNXTHVzeXMxdEI5eUhVcDlCVHVIaEl6?=
 =?utf-8?B?bG5ONnMwcU81MzUyRUR5cThVRGRtbjdYZjhZT04zaVZkZ08rN3o2Q0R5cmNw?=
 =?utf-8?B?aTAwSHZTWlVYWWtHM3N2bFFQRDl3VzdaVlJ3d1JNS3dISHRuR2VuUDNMMUxQ?=
 =?utf-8?B?ejZZSUFPZi9ObkQvNUd6Ti9UY20wRUN4ZjRDZWRMaEcxcTA5OUU0K20wZmtD?=
 =?utf-8?B?Q3Vwb3pQdXV1OUF6K0tmck5zaDcwSXcvb1ZJUGI4TTZEcGRETi9HRE5vOUZU?=
 =?utf-8?B?cDNYVFJVSjR5b1lRTFhLb3hNTTJDWTk5MGRxNFRPM3Z0TGJHY2FCVGJHbHRR?=
 =?utf-8?B?NDZQbzJjWU9IaERFS3JtQW9xR1BjREVxNnNVMnRWRVgyMXAvRUluZzc5WTk4?=
 =?utf-8?B?V1ROWFpRY3F3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnhtRDV1U2JMK01qbHZ0K2RYUXRHYng3ZHEybHF6L09tWTVvN0hYZHV4VkE3?=
 =?utf-8?B?QnJHTGtERjlNSFIrOFF2bXlneXg2Skk4WkVPTHV2U3gzQTcvcVJyWGFpUUpK?=
 =?utf-8?B?Q2tDbWNUSXNjcGEvYkRLYVp4M0xUWUdEUnlXNlVHTmRkUy9WZGpTdFFaYlRK?=
 =?utf-8?B?d0RKOFhnUmc4WmFFbUsyWTRPZDZDRW5MOGRBY0JMUXFoS2hxQkk4amwxRlRI?=
 =?utf-8?B?aTBoRTJuY0hVZ2txcnFiOWxWTEFBQ2o3NThxYXFnQWVBbEFJdmxXbHlpVUI2?=
 =?utf-8?B?aWkreC9OQStuU3FqZEJDRHpGNWJ6aGp4bjd3djV2K2dTSTBVZ1hoUGUxT0x2?=
 =?utf-8?B?bktmRkZabDJPR0xJZzMwazhnMmFlOGN3SGp5L1B6V29mWi90ZmNjb1hscjBD?=
 =?utf-8?B?elZJcHF6NWNONVR5TWo3ZzF6ejFTN0NydnMxcjVBQ3Y2MWtDcjdkYnZBRGtt?=
 =?utf-8?B?ZG9BKzIySEk2YUlDTmo5OFhCVUUvemZiV2hZQk41M3E5V09WS3g2Nytpb0Nk?=
 =?utf-8?B?cDlFL084NUZOeUFkSTJ5ZVVZQkNBY0pjQXhhejlEZmlkRVpzSGxPMUhPdTJu?=
 =?utf-8?B?RnljcndkaDBlOHlodUQxVVVpbEYwREVUeGo5bndodHVnbE5FSGtsMDhKdTE3?=
 =?utf-8?B?Ty9ieXVycEJzRytHdHhnVkFGNXRDZzczM3pnWElZYzZhU0h5SjVyVFpxR3FB?=
 =?utf-8?B?ck9iZnNyZERPaVdYTGcwdGNDWGNmUVJTZC9sb1p6b1NPeHJya3J3TmIyT0xy?=
 =?utf-8?B?TFh5RXZPanJqcVVzVGY2d21Nc0Z2aGUyKzJWQWoyc2x3T1pYSzZZWFhadlpa?=
 =?utf-8?B?UXdKNlV5NEU4SzVubjhwRmVBU0FDSU03NWluNms1UXRkNVZLckppZlhJKy8w?=
 =?utf-8?B?SXBUMDRvUENFRlpqT2FoQkJHWmttbm56MmQyWEhETVVFRjhFaGhOWjFwTU1L?=
 =?utf-8?B?MUpmV1Uzb0xWTFAzNnVSdExwcWIzcnJsQUQrNDVJL2lPejl0ZCttNmZIWjlX?=
 =?utf-8?B?c2J5TExmSzZ6QXpsbWc2ZlV5MUtxbkdXcEFHVTJYaVFYc3ovUUdud2RKSTNO?=
 =?utf-8?B?aEc4bVV2Nlh6bmp3dlU1OXBqQWtCb0U2Q3IxMmdZOG0zcmNDc05pNVZxMkRm?=
 =?utf-8?B?NUJyUHVJamMzWW1WZ0NYSmVyWFBDUFpYZGpYRFhTbjl4NkJIci9GU3FYcDlX?=
 =?utf-8?B?dC9idHZQWHI3VHQvZFc0ZEdmTFNqYWs3U0ErSWIybUtMK0RPMTlhd20rU2Vw?=
 =?utf-8?B?czFjYWVCejRqUGhkMXBqbzNJVktnUU5tUVdPblZ0Zm9hU1Z0NmZ1a2Exdjls?=
 =?utf-8?B?VE1aUUJTYW5JdGhIQlJnM1FUb29WZkdNT3Q4VHFYdjNGMzZEdk1lZ3JXL3dx?=
 =?utf-8?B?NlJVODhUb1cvNmNOclJOQXVKZ1hMMUw1bEVrMW0zYk5tNVdkVnhuSnhDemVM?=
 =?utf-8?B?RnlSanB1Y0ZDOXE4SWtlNWV6b0tNa3lQMnltL2tKb3N4MVpjRWZzQmM3WVR6?=
 =?utf-8?B?ayswQW9CRkJKcjBremVoS1FQaDVDVDZRd29sUjV1ZTJsTEY4OGluR2V4MElt?=
 =?utf-8?B?c0dZME5PSDdIZ2FYS2xkakozQWxjeTd0Y0VqY1pFREZySEtQTU9zemo2bHFK?=
 =?utf-8?B?bzF2N3ROaGxsejlRakZpejBFOTVjdytleG1nc25qTVBGREV3bTU4QVcyb0U1?=
 =?utf-8?B?TnNDYnFFRmdnTDFBcmNKazZTS0dZMXpDV2Y2N3hxZC9rbVlOamUzMnV2c3Zm?=
 =?utf-8?B?c0l1eHl1TXVCUm15aFhGT3ZCbkl6dXNzWXo1cXBBTE41M2dNeUZOVVBQMzBa?=
 =?utf-8?B?S2lJMFJIOEVDb3pMSTNHMUVhV242ZzliUmkzcEpxMUFkdjdzWWdUVFVJbU53?=
 =?utf-8?B?ZkoxSFlMVUVvN05Gd3pqUWxTY3RLM0Q1NkRSY0JzL2xFVG81Y1JiaC9TeG9i?=
 =?utf-8?B?UVVsc1VxSEN4dlRuS0Z6OFFFeVlDZWRrTi9oaVl5SWtFby9FY1NmQTRUU3dj?=
 =?utf-8?B?T0ZpVnFIMDlzZUxNUnNORHM5c1VVRVhKOWIyQ0hjMnhFTlZwZ0VYbG1nL1l4?=
 =?utf-8?B?TjdMZ1dMTUpxRXpVcTk3WEM0Y09hUjR5clhwZFlIWG1PaWZlaThzWUV1T1JE?=
 =?utf-8?B?QlZPYTBWajlaZUx2SjNkdjVNd2JicjZWR3JIdzJ6Z1hiL2srczhwcVdub3Rh?=
 =?utf-8?B?dms0VzlIVjFzTjdrZmdZdnMzMVhVa2VoR2g2djhjeXV2SVhyY2J0M2pPeGpX?=
 =?utf-8?B?bDZ3OFVUZDdNUDFyY0x4cHdNWVFRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D9266D0C8B291B408B22443D992192EC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8938c3c-0325-40a4-89aa-08ddeb76b9ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 05:48:51.4260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t7WhIp2051QtUfBt0coVJ77EuBr4+zOH5RatmonKy/uVXw/qKfzB1lY1iqfhKZXMdADMRjkMQlNI6vB3VUQ/cLooRrGlanc/z6qCA6na+NU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4977
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiB3YWl0X2ZvcigpLCB3aGljaCB1c2VkIHRvIGJlIDEwLCAyMCwgNDAs
IC4uLiwgNjQwLCBhbmQgMTI4MCB1cy4NCj4gDQo+IFVzZSBhbiBhcmJpdHJhcnkgY29uc3RhbnQg
MTAwIHVzIHNsZWVwIGluc3RlYWQuIFRoZSB0aW1lb3V0IHJlbWFpbnMNCj4gYXQgMQ0KPiBtcy4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCg0KPiAtLS0NCj4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlcl93ZWxsLmMgfCAxMyArKysrKysrKystLQ0KPiAtLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA5
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyX3dlbGwuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlcl93ZWxsLmMNCj4g
aW5kZXggMzFjMmEwN2JiMTg4Li4yNzViYzI3MDhhMGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlcl93ZWxsLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyX3dlbGwuYw0K
PiBAQCAtMyw2ICszLDggQEANCj4gwqAgKiBDb3B5cmlnaHQgwqkgMjAyMiBJbnRlbCBDb3Jwb3Jh
dGlvbg0KPiDCoCAqLw0KPiDCoA0KPiArI2luY2x1ZGUgPGxpbnV4L2lvcG9sbC5oPg0KPiArDQo+
IMKgI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+IMKgI2luY2x1ZGUgImk5MTVfaXJxLmgiDQo+IMKg
I2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+IEBAIC01MjgsNiArNTMwLDggQEAgaWNsX3RjX3BoeV9h
dXhfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+
IMKgCWNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfcmVncyAqcmVncyA9IHBvd2VyX3dlbGwt
PmRlc2MtDQo+ID5vcHMtPnJlZ3M7DQo+IMKgCWJvb2wgaXNfdGJ0ID0gcG93ZXJfd2VsbC0+ZGVz
Yy0+aXNfdGNfdGJ0Ow0KPiDCoAlib29sIHRpbWVvdXRfZXhwZWN0ZWQ7DQo+ICsJdTMyIHZhbDsN
Cj4gKwlpbnQgcmV0Ow0KPiDCoA0KPiDCoAlpY2xfdGNfcG9ydF9hc3NlcnRfcmVmX2hlbGQoZGlz
cGxheSwgcG93ZXJfd2VsbCwgZGlnX3BvcnQpOw0KPiDCoA0KPiBAQCAtNTU0LDEwICs1NTgsMTEg
QEAgaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0DQo+IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXksDQo+IMKgDQo+IMKgCQl0Y19wb3J0ID0NCj4gVEdMX0FVWF9QV19UT19UQ19Q
T1JUKGk5MTVfcG93ZXJfd2VsbF9pbnN0YW5jZShwb3dlcl93ZWxsKS0+aHN3LmlkeCk7DQo+IMKg
DQo+IC0JCWlmICh3YWl0X2ZvcihpbnRlbF9ka2xfcGh5X3JlYWQoZGlzcGxheSwNCj4gREtMX0NN
Tl9VQ19EV18yNyh0Y19wb3J0KSkgJg0KPiAtCQkJwqDCoMKgwqAgREtMX0NNTl9VQ19EVzI3X1VD
X0hFQUxUSCwgMSkpDQo+IC0JCQlkcm1fd2FybihkaXNwbGF5LT5kcm0sDQo+IC0JCQkJICJUaW1l
b3V0IHdhaXRpbmcgVEMgdUMgaGVhbHRoXG4iKTsNCj4gKwkJcmV0ID0gcG9sbF90aW1lb3V0X3Vz
KHZhbCA9DQo+IGludGVsX2RrbF9waHlfcmVhZChkaXNwbGF5LCBES0xfQ01OX1VDX0RXXzI3KHRj
X3BvcnQpKSwNCj4gKwkJCQnCoMKgwqDCoMKgIHZhbCAmDQo+IERLTF9DTU5fVUNfRFcyN19VQ19I
RUFMVEgsDQo+ICsJCQkJwqDCoMKgwqDCoCAxMDAsIDEwMDAsIGZhbHNlKTsNCj4gKwkJaWYgKHJl
dCkNCj4gKwkJCWRybV93YXJuKGRpc3BsYXktPmRybSwgIlRpbWVvdXQgd2FpdGluZyBUQw0KPiB1
QyBoZWFsdGhcbiIpOw0KPiDCoAl9DQo+IMKgfQ0KPiDCoA0KDQo=
