Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12ED3A1368E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 10:26:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA7310E917;
	Thu, 16 Jan 2025 09:26:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IU2ok7JP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95AD310E912;
 Thu, 16 Jan 2025 09:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737019601; x=1768555601;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6U50mL1vR0dT8Q7/shsrgI6FdaGwH3QnknsaIMZZWRM=;
 b=IU2ok7JPP5XqWgYL/XFJN0jdY2bBELMoP5E3ySj+YmX13qfrLvehWo63
 7PsCPUS/nbFzhkL/NuYh3eFCMu1DWeYoJk3e43qlMjleYlSZnMz8w/ilx
 cB/RDJV67Vs9ExQuhGDJzlBvxmT4uNRlg3fGMUnlYfR7Qh1N2Ce5rkhPC
 66japslmoIhOLZz4t3DadLJ5vh7cPg4tEnWnTf7Shf5ChGFUCIm9nl6s6
 XShfXpMnDE63qJCpY5LiX2B5Umt3Syfw8Ck8B/3fy4wWVp1d9tbsNQ7y3
 1V809IfeMVq6Djx67EvIvfx0JQVcXtfGKusdJqH0Z7fappWhnfso/8jiY Q==;
X-CSE-ConnectionGUID: hfpTxIeNQmqx2Vw7waNYqg==
X-CSE-MsgGUID: 60K2jXuSSvegiurZ8P728w==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37514935"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37514935"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 01:26:41 -0800
X-CSE-ConnectionGUID: Bmqveb3GTdGb6oqhc0kmMA==
X-CSE-MsgGUID: JK9YhDbVTji0rt/RaoP32g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="105372356"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 01:26:36 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 01:26:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 01:26:35 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 01:26:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BlPqfsOLAoywPkSXmsbBVG1xSfPB3VWXoAupuv24ETZWJ+aM3IW4LGmteEOnn6Q0BiXXWapkr36LHGyDF4L4ke4G6VYxikgd+6qMNIOvdXisx/Q6aIITZFfQmUgYyyReffHSY/Qk+F0KUwbaELYm843vck1XzTE3bqaiAZelvV82YBfDYDNLmFkDo+aNCL/NrhW+ryFEzVpz96gWnWkzxAiLlNHOU2v8O4Hjtl8ZfiMshQDIz4LasVU+4wvS5zMBeKO9V8HlT+xNZB7owUn+Q6b/YnrQGxdq1eqnuuctjr+luuvjku+gqOFoISGlE6bjvuESn86mrQKg3uGbChb0lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6U50mL1vR0dT8Q7/shsrgI6FdaGwH3QnknsaIMZZWRM=;
 b=e/jdGpzgoK5OcjzydzhBHilk9y7p58cx8xawMna3TuN1M7Jqy9fjk+UNjseYaVvSrbATqqhZZcMXOMlzs+nW6jJc+vTtWukFhf/j2xgS0CtEGWLCZKdUBkTkw/9za3womvApRAVt2/MjD1ny9PNurnqMLr92e61Z1mWwrTQKEDjqOxxkf9n+zORJdUyXn2R7lCQKHFEfmTcESarrFwrI74/08Gxohrv9ShjPFT9nhMZb/7xWh1Mc6yZ465xtmojn5RtkLLfp3iJATUHnUBt9AftFjCodIm59LTPIG65x4OmmyNCtSAyPiQr2SBn5MwLpuOYbXcZ93ekyngcKjYyJEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB8097.namprd11.prod.outlook.com (2603:10b6:208:457::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.14; Thu, 16 Jan
 2025 09:26:06 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 09:25:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Use correct function to check if encoder
 is HDMI
Thread-Topic: [PATCH] drm/i915/hdcp: Use correct function to check if encoder
 is HDMI
Thread-Index: AQHbZ9ZwePALUjLAo0Sqes8fyeRKUbMZC4QAgAAAaoCAABRV8A==
Date: Thu, 16 Jan 2025 09:25:59 +0000
Message-ID: <SN7PR11MB67506F9E87F1BF513B83C943E31A2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250116052023.981666-1-suraj.kandpal@intel.com>
 <8734hjgp2d.fsf@intel.com> <87zfjrfafg.fsf@intel.com>
In-Reply-To: <87zfjrfafg.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB8097:EE_
x-ms-office365-filtering-correlation-id: 77750d2b-a37c-4d25-a458-08dd360fc99a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SVA0YUNlY0EvQzJheVZ1eU1uMFUyL3ZmQVd4QlBGWUtSMVNMZkV5TkVjT2NY?=
 =?utf-8?B?UER1RitlZVYvWldxbktGYWdkY0lRd1RRZWdINk5LWjVpWUY3VUVHZ2dERk1a?=
 =?utf-8?B?bWp3K1RzSUZPVzFObTJJZzNEM3R3NWJ2Rlg2SGJVeHBSWWRodWFrdng0M0ZZ?=
 =?utf-8?B?bUEzVjN2Vy9hVkljSC9nV2NsTE1ablIra3ZJd2RCQU9NdUVBUzAyK3VGOEtv?=
 =?utf-8?B?alNaTnVMZ2dyNkhwYnJ5ZFBzakRwbWNqUEFtNWNveUMzTWxBM2lQZ3NjY0Ro?=
 =?utf-8?B?WWVSeXJCeUo4ZG5maWF6ZTBFemxSMVI3am1tbVFCWUFLUWtTbUhsekpGdW9p?=
 =?utf-8?B?bk1neWNiRnZSNm5ldVRXUXYrWDNxdlExOHk2Sk5VMmM4am55RnMwNUdmLzJ3?=
 =?utf-8?B?Z04wTk13Um11aVJVbFBCVjVISlh3RTNFQXkwaDJaTmR2ZUhMZTBXdmJHTHZ2?=
 =?utf-8?B?ZzdNeklRcCtickRIU1NiUCtvSmNZMnJzbFpsVVBUWEJ4UlcwRDVFQkdHeUJL?=
 =?utf-8?B?MUtFNUR0L2VYbW0zZGhiVk1Rcm4waTNJc1ZlcmpOb2ZVWlZueWN2OG9lZ1lS?=
 =?utf-8?B?SW1jVDczMVNtRmh0RG9wL1hjMW1kWHgvTXJXVUkvdWtEWm9GMVFwS3BHMGkv?=
 =?utf-8?B?Y1RDeHVnakJDcnA0bHNtN2lvVERQTTBTTktyNElJSEFUMENNNEVwd1oyNXdr?=
 =?utf-8?B?WW9hTHF3WnBkMjB0TmpMR2VXamYwWEV0ZWF5TC9GazhoZm1HUFVTWk5kQ2VC?=
 =?utf-8?B?bXR2bW1na2JGTzg5MVF6Y1hlVEF6U1RGRHFIU0huTTJvOEo3K1g4UGJSRlBO?=
 =?utf-8?B?b2lrUStOT0FIdkEzOFFiVnJ2ZlVFTjF1bHVUZXB5UmNLUHF6ZzhSa3N1b1o1?=
 =?utf-8?B?Q01JZndpWEJYTE1kcHRIVW5DS0VoYU1ua09VL2JVUmdyaGh2R3RWY0prQWV5?=
 =?utf-8?B?NnhZZnJxaTRzK09JUm1jZHRjbG04ZW5VdTRKMTlOK2NlVFkxUU1WWG4zTmla?=
 =?utf-8?B?YmhlTGFadk5pUHVld28wQ3NicklqVENUWHlxaXloajd0ek5sdEsxeGxhc2xD?=
 =?utf-8?B?cktIRWNnaDA3Nkk1ODlYUjZYUHZYVElTazJHdC9lNDUzTWdJa3pDendqSnVO?=
 =?utf-8?B?WWphLzluRWN0NXJLdHZlZ3Z4TE93ZXgvTzhvcjdzNE9odFh0VzUycHphQmYx?=
 =?utf-8?B?VXpPMnc2dklYL2N2NSt4NnFPd0NMVFJLTGxRNzBtTHpOYm9hUWZENmF5SkZ6?=
 =?utf-8?B?eGMxQzFUY3J1Qmdad282WWFWQUwyWGF0RkZtZXRod3pyZmZ3eFR0NXFSbFNO?=
 =?utf-8?B?R3NueVBnMEJTZmtkamZhYk43dEZPQ1hjYXExSDZFczgzZEkzWDdLMFk5VEta?=
 =?utf-8?B?K2ZPZUIybk9sazVlN0xNNjEvU09YNTNvS3VQaU90YWthRVVrSnNnZnR3KzNE?=
 =?utf-8?B?N0RhOFRkUndyaTRUQjMrRDE4QkNUd2Q5bkRGMFAyOE43dlVxRjNhbDdhVkk3?=
 =?utf-8?B?amZkbkZiUTNjQUs2RUVhbFNvTmRnNjVUT1NrMjErdHkyUjlwN0ZFNnRROGx3?=
 =?utf-8?B?dXFMSURTSzNkOFhoZmxUd3ArN2ErY05UVWNSM25jTjQ0RCswelU4Y2RXUlJo?=
 =?utf-8?B?dlhXd3k0YUdoODNTd3RKa3d0VnlpNllxSlBnaVNQblI5KzRGa3pzZnNKWWJ0?=
 =?utf-8?B?SitPeFZTYzBIc1lsSjJtR1hyOWtxeVdvODkzdWdDcTVmOU45VWwzbDRPSUU2?=
 =?utf-8?B?RHNKQ2RYUDE4TTlYeDBJWTVGbXVPS1dmYmpTR0gvekNwNlpVcmMwdUxBejlt?=
 =?utf-8?B?eGd2cUxyMk04dDhWZExuRTJCdHJHK1pjVk5OTGExWUJ1UlNERU96OGN3RVUx?=
 =?utf-8?B?ck1vMFZZT0tQeXNxWnlxVTZvcnBRTXd2TGpPRVpKMnN4QkdxRk9ORmg1T1NM?=
 =?utf-8?Q?ivag3mYRlO0M+b86epe+eeDnLSxPAHv/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2Q3RWdCVUtlRHQrR1c3Q3lHZkd4N1puOGozU2pUNVNqTVZzbXUzanU5aTlS?=
 =?utf-8?B?aXpTOHJzbUdJZTlJZXdtMlRuVWYwdzZDS3NMU0E4b1dzRktXY09HMFFzZjJI?=
 =?utf-8?B?eU1yUEg0ODBkRnllVXV3NGswdjIzSXloQTAwRlcyK0J5cVFaZU9XeitYbXZW?=
 =?utf-8?B?OE1DbHI1Ni83enAydFVmS0E5eEZVT21PVXd6dGt1aWo0ZG9kb1E0MVVoTFl4?=
 =?utf-8?B?bWRrVjlHOHd2VWdIa1cvbHpKWkJVcS9TNG56ckxuaWF1aElvV3ovdDE4TnRC?=
 =?utf-8?B?VlZMRjNKakZMVy9TOGFIdWx4S3NRMFlBUE1qZ0N3ZXBXWk56ZHR0TnJTSkxy?=
 =?utf-8?B?LzhzWC9kOFh3MXFzWGNhdmltVTdsQXJqdlpLSGN1VjZybXZlTjFXcjdYUXNL?=
 =?utf-8?B?UW54NFUyZ1RkSVVjUUNrZjVxcnMvbkQ4Z3l3YlQyamEvMVRyQjBUTzJSRlQ5?=
 =?utf-8?B?aUwxLytROFUxc21ibFpkMzlqbjlMbkk2Z0UwWG5POVZTSDBCNVk4V1BmeHh6?=
 =?utf-8?B?YXZlQ2s0MGhESkxYbXhxbkxPclNoSTlxVWR4T3NYOENPVVluZkR4d1JnbDJZ?=
 =?utf-8?B?MXJaUmlYNUxQOFpHU2gvY3pLZ0Z5UitKaHQzVWN6Y3ZPUmYzQnA3N3pMNUZM?=
 =?utf-8?B?UStDV1RhcUc4SEdmdjM4WVBlcXorSGJ5cUg5bDRETjBZTWZIbXdxcFh2NjNL?=
 =?utf-8?B?NFUrTEtaNXFqNFkwcXpTajBYa1YxenZ4OXg0SG1UVGNTZmgwNEhuRlIwamg1?=
 =?utf-8?B?Q2thYThWeTJ3OWlRa2pZOEhSZW9pTDZYcmpvbWwxaXl0czB2blIvVk01Q2x1?=
 =?utf-8?B?MFZHSTRCcUt4QUNvTnhVZENZWjhqZzhibUlqSFBmb2pGMkY5RE1yUEMwZmdl?=
 =?utf-8?B?ZkhyK0xnVUJiWVA3dXYxTWw3bVk3THFMSzlpdUxCaFk0QTYyd1hTZ0Q0eFlH?=
 =?utf-8?B?d0liVVZjaFhrRHZFV2Z4aDFnR0FVNzJlWlYycjUzaWtLOGlEenRZc1M4TjVK?=
 =?utf-8?B?OTdsemVwOXU5eWdrT0h6MzBZVUpsUUVNelpCTkRBQTdnSS9KQjVnUUl3U051?=
 =?utf-8?B?Z0xaSmVIQmtxazh4KzVYTSt2OVpML1BQRXNBV3VkeEh2aWw1WGRJTkNwTjIy?=
 =?utf-8?B?eEx2empQczlTWjRQbkxoOVdvbER1dTJwb0V0Z1V1M0MwQm5ENVIySHVYdHNL?=
 =?utf-8?B?dnJWYzRhbzJ3bklzOVNleVltQ0tCNGVBSFB5cG9qdzhtVU9YZ3RaYWhGWVlS?=
 =?utf-8?B?UVhzc2xIb2YzSG03aHB6NjByK0w3V1FSQnpyM0hsWFpIL3dBekJ3QmRlN0JB?=
 =?utf-8?B?Q1VJdWt6RmdIUzNpczVLdldkSzIvVTRjWTRLN3NaeWtXRUtma2ZIMmZqNHFy?=
 =?utf-8?B?VjFBbkdyUWxFZG5HU1pGVGJ5WlBwdkhaN2pyUkZPa0hDQ2lvay9OdmttQjJV?=
 =?utf-8?B?MmJFbWZqWm1WUzAwMXNyNURNbFVreWp3djdNRm95bnZkSWUwUjE0UVMxZUJG?=
 =?utf-8?B?TFIxYWgrSXlhVi9UMHpIY2VtUVl3NjR0VGNpSi85ZkUzclZBemdNRkZLRUZq?=
 =?utf-8?B?U0ZKcTdYeFRYQ3d4WVFJZW5PVWNOeHN3YUE3cm0raXVxOUdxR2VYN3p5djVX?=
 =?utf-8?B?SFhUbGxySkJoU0psWnk4QnJRbks0TTBtb1Y1YW1sR2RJTUw1dU9VVjBuZUZq?=
 =?utf-8?B?bkR3NXFrRXIyVXIwTHUrQjFpeUdja1Q5cUVhZkZFSVhzemdlOE1ic2wrMm9z?=
 =?utf-8?B?cVYxY2JyYll3K05IelRFZEtlL1JpQlVucmFpNFNRdEYzWXNjSGhObzU5OUtT?=
 =?utf-8?B?UXNkVk9JaUtnQ2pTeFpwMGxRaWIzM3k2Ty81RFpzSHpYcC9SU1c0SXBUZzZD?=
 =?utf-8?B?bWlsYXpRalVvWC9YMjBkNXFtOWJSeDFCMEdXZ2swUURNODBlV3dwdkcyK0tL?=
 =?utf-8?B?cXVqeHhKbkxkQ3llalNaWjB3ZGFpTmpwU055dkpBVURJWmxXbWI1Wk9uU3dG?=
 =?utf-8?B?NXB3L29UTjZvYWo1Y0ZYYzI4bUJhZU1JNkFrNzVyWXFRMkU3QmtFNEhVUFlQ?=
 =?utf-8?B?TGZ3dldBVUlmQUE1N1NaSXVQdlFQV0VDZS9tRXovREpub3Y3aExMcmFNcWZG?=
 =?utf-8?Q?ysLK2KD5MZv/Z0tqK6kYT/OaC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77750d2b-a37c-4d25-a458-08dd360fc99a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 09:25:59.0658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2TV5b+DQonbGWaMI8ShHqtBQR1lyy/cs7BABNm2H6bT9QJGPKSDJ/FeE3Fq1k4EOhbWlE9q8QWVA0yyrMWbGlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8097
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEphbnVhcnkgMTYs
IDIwMjUgMTozOCBQTQ0KPiBUbzogS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwu
Y29tPjsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOYXV0aXlhbCwgQW5raXQgSyA8YW5raXQuay5uYXV0aXlh
bEBpbnRlbC5jb20+OyBCaGFkYW5lLCBEbnlhbmVzaHdhcg0KPiA8ZG55YW5lc2h3YXIuYmhhZGFu
ZUBpbnRlbC5jb20+OyBLYW5kcGFsLCBTdXJhag0KPiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1L2hkY3A6IFVzZSBjb3JyZWN0IGZ1bmN0
aW9uIHRvIGNoZWNrIGlmIGVuY29kZXINCj4gaXMgSERNSQ0KPiANCj4gT24gVGh1LCAxNiBKYW4g
MjAyNSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+
ID4gT24gVGh1LCAxNiBKYW4gMjAyNSwgU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+PiBVc2UgaW50ZWxfZW5jb2Rlcl9pc19oZG1pIGZ1bmN0aW9uIHdo
aWNoIHdhcyByZWNlbnRseSBpbnRyb2R1Y2VkIHRvDQo+ID4+IHNlZSBpZiBlbmNvZGVyIGlzIEhE
TUkgb3Igbm90Lg0KPiA+DQo+ID4gRG9lcyB0aGlzIG1lYW4gd2UgYWx3YXlzIHJldHVybmVkIGVh
cmx5IGZyb20NCj4gPiBpbnRlbF9oZGNwX2FkanVzdF9oZGNwX2xpbmVfcmVrZXlpbmcoKT8NCj4g
Pg0KDQpBcHBhcmVudGx5IHNvLiBXYXNuJ3QgYXdhcmUgdGhhdCBlbmNvZGVyLT50eXBlIHJlYWxs
eSBkaWRu4oCZdCB3b3JrIGluIHRoZSBsYXRlciBnZW4NCg0KPiA+IEZpeGVzOiA/DQo+IA0KDQpT
dXJlIHdpbGwgYWRkIGl0DQoNCj4gQW5kIHdoeSBpcyB0aGVyZSBubyBwYXRjaCBjaGFuZ2Vsb2cs
IGp1c3QgdHdvIHBhdGNoZXMgb24gdGhlIGxpc3QsIG9uZSB3aXRoDQo+IHRoZSBjb25kaXRpb24g
ZmxpcHBlZCBhbmQgdGhlIG90aGVyIG5vdD8NCg0KT2ggdGhhdOKAmXMgYmVjYXVzZSBvZiBteSBi
YWQgbHVjayB3aXRoIG5ldHdvcmsgSSBuZXZlciBtZWFudCB0byBzZW5kIHRoZSBmaXJzdCBwYXRj
aChyZXZpc2lvbiAxKSBhbmQgaW5mYWN0IHdhcyBub3QNCkF3YXJlIGl0IGhhZCBnb25lIHRocm91
Z2ggc2luY2UgSSBoYWQgY2FuY2VsbGVkIGl0IGRpZG7igJl0IHJlYWxpemUgaXQgdGlsbCBJIGdv
dCBzYXcgdHdvIG1haWxzIGZyb20gbWUgd2hlbiBJIHNlbnQgdGhlDQpDb3JyZWN0IHBhdGNoIGlt
bWVkaWF0ZWx5IGFmdGVyIPCfmJAuIFdpbGwgYmUgbW9yZSBjYXJlZnVsIHdpdGggdGhhdCBuZXh0
IHRpbWUNCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiANCj4gDQo+ID4NCj4gPiBCUiwN
Cj4gPiBKYW5pLg0KPiA+DQo+ID4NCj4gPg0KPiA+DQo+ID4NCj4gPg0KPiA+Pg0KPiA+PiBTaWdu
ZWQtb2ZmLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPj4g
LS0tDQo+ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYyB8IDIg
Ky0NCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0K
PiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9oZGNwLmMNCj4gPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3Au
Yw0KPiA+PiBpbmRleCA3NDY0YjQ0YzhiYjMuLjkxZDU2MjljZDlmOSAxMDA2NDQNCj4gPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gPj4gQEAgLTQxLDcg
KzQxLDcgQEAgaW50ZWxfaGRjcF9hZGp1c3RfaGRjcF9saW5lX3Jla2V5aW5nKHN0cnVjdA0KPiBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+PiAgCXUzMiByZWtleV9iaXQgPSAwOw0KPiA+Pg0K
PiA+PiAgCS8qIEhlcmUgd2UgYXNzdW1lIEhETUkgaXMgaW4gVE1EUyBtb2RlIG9mIG9wZXJhdGlv
biAqLw0KPiA+PiAtCWlmIChlbmNvZGVyLT50eXBlICE9IElOVEVMX09VVFBVVF9IRE1JKQ0KPiA+
PiArCWlmICghaW50ZWxfZW5jb2Rlcl9pc19oZG1pKGVuY29kZXIpKQ0KPiA+PiAgCQlyZXR1cm47
DQo+ID4+DQo+ID4+ICAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDMwKSB7DQo+IA0KPiAt
LQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
