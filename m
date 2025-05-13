Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E8FAB4A4B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 05:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA9E110E4D9;
	Tue, 13 May 2025 03:59:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WlZO9mee";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2097D10E4D8;
 Tue, 13 May 2025 03:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747108773; x=1778644773;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xOVZ50tDLmcXPUKk4MMzo5CuBw0DwOT+eU9X/NuffGo=;
 b=WlZO9meecc4ba93pq0GjVroYKDsMGIdtD3/U93wOVqJk43h0P5mtTAgi
 VG20UddjhK5IBP+VZGUFWKT00QFbJQgoSp18QAyhPNKEKmgxyWUiZBdD1
 N8qHjP8JAgV29fZqqxPkQPCTZwUTq2+2NtzwW+1o5vdFO5vogiTSswqi9
 LAb5JgkGwLpTS8rCY46QSxds9XKPYX397YoGJiq21jJ+8RoUK4GMutyAy
 J43pIuLIyaCdbi2cGHKnuR0q/7Q+JEf0SmuCfSjd3M8fXioprpo7yXfWg
 36K11bFsycpoCny7RNV+al6WATXQKNXtKmovpWV4TO1rPOMOFli63iInI g==;
X-CSE-ConnectionGUID: qhiVH5JQSuGTBhDyXA4g7A==
X-CSE-MsgGUID: uKeXquZ0R52K9KikVVYwAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="52739921"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="52739921"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 20:59:33 -0700
X-CSE-ConnectionGUID: iDemapeZRxqWR6ohFud9IQ==
X-CSE-MsgGUID: 7sZv8ivsTfi5AiGLM7MaXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137983487"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 20:59:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 20:59:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 20:59:31 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 20:59:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZcBSdZhA+8T5NtcERUgXuu/1JCS0uemuum403t73T3rlu4yg/9Vh9C5TRsJYcflzoM1UQQrX0p5NOw/sKldweAFuQ9IF8pGB1vUVG3oEt0vUqAojGfXui13ptSx+1e2zTesrQhivr7cvu9RO5G3tt6U3O4oYU5kdgbNZtuMxuDiv9Ujl843hgsUYz3b4qMh3FnGnpKvv8KlkR32a3jTUDvGK5ORnO1OUydh7v+bWUet5O3RBLATw1ikwvmpmMK21CkkY/nBjld9pUBiLXHJiATJtsRd9SNR3mfnC7rzn0pveG8vlV4PiYGeziiRgAIkM8I4Mu3nprR2YxtBcO4YTpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xOVZ50tDLmcXPUKk4MMzo5CuBw0DwOT+eU9X/NuffGo=;
 b=lxcTRI10k4pkrS0giAf0yAFhbsvBhmpwdbYEPyYp+ITaBolA208cXJ1Q0H+X5TIWXK1B0/2qGjp79OevTEljD12NYyGBqaUgNJVhhJfEWgXBlxVAZqyaGL0XjeO/9ZJC/suYZu7SVjpUGoiMM6ssOjzXjJFSZwSkea6INedwa/O/T3rNn+HCECIUQ1Q+JzPcGa9x8ZgMKdiS6du5Fzd5hq+IOfyuVlTKMMj59NrhdXvE8FOOVlQ6tU/DZyuD6O+ULgPnUBzhwM6SpdzWmtWDMRvLeES8JioV0B1gihM+OLXJFfDe3WTptDdYXTTD8Uev91vUIE9v8CUwYnbhq2EwEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH8PR11MB6731.namprd11.prod.outlook.com (2603:10b6:510:1c7::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Tue, 13 May
 2025 03:59:27 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 03:59:27 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 2/2] drm/i915/alpm: Stop writing ALPM registers when
 PSR is enabled
Thread-Topic: [PATCH v3 2/2] drm/i915/alpm: Stop writing ALPM registers when
 PSR is enabled
Thread-Index: AQHbwCPygu976+KqE0m8NT4DK4jlnbPP9dPA
Date: Tue, 13 May 2025 03:59:27 +0000
Message-ID: <SN7PR11MB6750BD686FB7B3740198DCCAE396A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250508141701.3878486-1-jouni.hogander@intel.com>
 <20250508141701.3878486-3-jouni.hogander@intel.com>
In-Reply-To: <20250508141701.3878486-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH8PR11MB6731:EE_
x-ms-office365-filtering-correlation-id: 7a5add7c-6456-498f-dcce-08dd91d28e69
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?STJULzdBdENyV0VxTUxnVjI3Y2NNT2JPcDZYV1RNNU0rT0M5SW9CVXQ4RHgx?=
 =?utf-8?B?citUeUpIUFVwTkFXTXczd2FwRVhIUi9rdE1VeG1mNTQ0Q3pVTS9uYW5VdHFV?=
 =?utf-8?B?STBYUm9BVUQ3Vk5laDJvTW9DTkoxSE9wVVRGUDlvM1RTMkp6RUZDdlJKN3Qx?=
 =?utf-8?B?K1FlWHQyNW1kUUVWckRlRVp6Z1VUMXk3MFROSDcyRVNYZGUzQmhpRENBK2o5?=
 =?utf-8?B?Nk9jUG04MWs0MHgzc3hsVGJUb3BxckdrNDhRZTZ6V1A5aDBROEczb2pCQjVs?=
 =?utf-8?B?d1FjZ1V1RDQ4SlNzb3FUdjNITkpvRkdWcnp0T0t4alpwUXc2c0hVVVdJUC9n?=
 =?utf-8?B?YjMrRkVtNGlaOEdIQVdLSjRvVFArejFqVVc1aFJOMWc1enUyZVR4NjZsRllO?=
 =?utf-8?B?VSt4QjdSa1lNTWxHc2FjVEVZaWV4aXIwUHEyWEVKMHlmRld1TjdvTmMvNFV2?=
 =?utf-8?B?YklYSVppSitGa2RUOVlOaWVxQ0t6Ti9CK1VqSEhkSDdUOXVKNDNuWFNoRmJm?=
 =?utf-8?B?a2k2aVFaeVVpaVhWN3pQakJ0OTQ4Q0hvNWlzQ2VvSGtrRkdsL1p2YklaZ3FL?=
 =?utf-8?B?c2VYTGVFTnpKL3NJZHBPN3hJNGRSUGViVkhEUTNpQmZqWGY2ZnNmYmZNWnhl?=
 =?utf-8?B?OWl5cnB3RThVaWh1SDFaSHQ0WkRQKzZiSlhlVjA4dFZsZm1jSG5UbmxnTzNx?=
 =?utf-8?B?S0lKVTgyN0pVQlN3dnVScVlxUE0zMCsyaDV2R0lnd2VHSUdmMmwwQnM0Y3VT?=
 =?utf-8?B?bHRkM0o4OGtHRDh4b0svL0JzbUVEUGZjYUhiV2w4RVZSOGxCREdEVEVPOGlU?=
 =?utf-8?B?Y3BOMWR1aGsrSmJYVi9ueEZ3R3FXQ0FEM0NpenVjU1pVbFMzbkxob0g0Sy9s?=
 =?utf-8?B?WS9WWTB4V1JDTDl6QUJsd3BrZlgxcElUUWt5amN5amE4UTdQNUcwM1JWeXZ2?=
 =?utf-8?B?TWZCdUZScUY1TGtJMnlSeU1KNE9mTmJqeTR6REx2QzZrdDR4Q1F2alBiUXlL?=
 =?utf-8?B?MlNxWFZsMDd1czR0Y2pySjdxYitlcnlPUW40OEVyOTd0Nkh2VkU2YWV1bGhM?=
 =?utf-8?B?QUNvLzRiczhlSDY0TnVSRlpiNDlBZWQ0SDg2a3BIc0xrUzl1czlvMkxQMjRx?=
 =?utf-8?B?K3U5ZjJPUVJ3Rmo0M2hLYTdOZ3FSYTgzNTNyT3RRQm5RS2gxamJWRkdLTHBl?=
 =?utf-8?B?bVVkemVEVWVQWmk3V1NuMktlWjk5NDZNdVRxaUl0U0hHc1NGelhVZTBhZWZl?=
 =?utf-8?B?UVd5NmJncWg0Z3pRU2c2S1JJQ3dmcVoydGEvUkJyYnlZQXhtdFhhb0YrTGM2?=
 =?utf-8?B?U1RwR1U0eFA4MVNwVWlTRkZ0OFdSTEdicWU0TFpuLzN2NXR5RGhYb3dSOG1r?=
 =?utf-8?B?cjBmTkNveUVjNkJwaDJiT2xsQ1RsUUp3UEkvYVlGTitvS2dTNWRWTzU4NCtN?=
 =?utf-8?B?cG0zaDBxN0tqcVRuUkxRTGVpdmkzb1Zpa0hBZitnaE9JeHgwSWJ2M2xxTktv?=
 =?utf-8?B?dnF3YnFBSjFYRlh1em1rMHVwTG9zbDlOVlgxRWUwUW9OYjVwVVpiSUYxWDQ5?=
 =?utf-8?B?YU9xQ2pzQ2pZcEIwTzg5bjYrcnpFUU5ZMEhwdjhDeE81VWt5eGNiS3E3TVhL?=
 =?utf-8?B?V3p1Sjk4NWJPV1BnbjBjUUdsL3ZDbVNmeHhZN2pTTXNuTS9iM3pNTjdubVh5?=
 =?utf-8?B?aUgxcVJxby8wTDRDUjhPQ1lZQVFCcDZpcGNKWnAvNFlrRXVZM1FQdGpIZTdr?=
 =?utf-8?B?bVpkM3pQMm5WVUZXWnREbUhQQnRISmlOTEdEbm5tVWY0MjJxNm1NMlZZaXdM?=
 =?utf-8?B?WmU4RFBJRjlSMHlOZi9wRzh4bi8vcjNZLzNvWk9BZ0o3MGYza2dMV3haSGxz?=
 =?utf-8?B?Q2p4N2Vab1pUcGJMN0g2amkwUmJsZjUrcXlqNm54cTg2VVN6Ym44NGwyZlpO?=
 =?utf-8?B?OXB5VWlmdW5EaWJHWi9LVkU0NnoxV1Q2RDN0SEV0VlB0eStBQlVwenZrbDJX?=
 =?utf-8?Q?W81RGuy6VojG+Mqtl7vytXyjtu64/8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ay9XemNGTjJVYmd1WENxRHdxa0kyeXJPT3MwS1NrRVZXVUhvd00vdVpKaXBE?=
 =?utf-8?B?T1V5VlYwRkptQitNNmVyVytYNVp3L1RuZm05QlJWTmpTSWR0Sk1INVRUbUZv?=
 =?utf-8?B?Q1VKZm1NblJDcGVHTUN5a0tMQngvdDhGRUQ4OThrWnU3a04wbGZkY004Mk9v?=
 =?utf-8?B?cWp6b0kvZ2xOMDNnNmVGNzNZNW03MEhtRkFMNHkyUm96RC83K0JBamR4T0lB?=
 =?utf-8?B?WUZ1Z2FTQXVYQ1pEbUJEN1I1b0Y4Ulh0SmptbTQ4WUg3aloxUHBXVjJoK3FN?=
 =?utf-8?B?KytUQWQwQUhRMGwrNUNXK2dnc3ArTnAwblVDVGF2ZGFCbUxVcjBzNnpZQ0Fi?=
 =?utf-8?B?d3RYSE1naFBjcFZUS3dQL29waW1tcWsvUnRZdlArNktrakF0NittamxabjIz?=
 =?utf-8?B?bFlzSThYZzhYZ2FQcFhoREMrdTV6ZnlWVDVjT1N3QlVIUy9QZEJlU0FsQWtM?=
 =?utf-8?B?ZlJMUVpyc0Qzdm9zSGxaWTRkdTRhbUpDMkZubG44eXRXVzBKRHV0M20wbk5o?=
 =?utf-8?B?eFhHTzRPcVZRYjF3dVQrVXBVOGdFSGZPUXNGWExvd2hYc0hkcVBTRTV6ZWdE?=
 =?utf-8?B?ODQ0aWJlZC9aeW9zY2FjTHZxdzNCNG1PbDFydHRSdjA2bUN1V2VnaFZUVnQ2?=
 =?utf-8?B?b0IzWHVzOGs2R1p6aysxZzc1WkVlTnpiUVltREZhbVNMUlRkRU9zUzBHSTZw?=
 =?utf-8?B?bUx4WWx6QXVLSTI3UHJyRjVIYWcvVXRIWVB3VnpBTjE5NkloaGxKNDJsWE40?=
 =?utf-8?B?YTZXV083S3lZUkl6VzV0MVJrdFZaQythV0NhWVlFK3NIbGJ1eG00MFRuNHNI?=
 =?utf-8?B?NHpaL244SHdJbGxQRmUyNDR1aFRGSWd4bkdDalQvVlFVdDlSR3paelZJUm1q?=
 =?utf-8?B?cE9SbUJhWFdZblQ3b1BpNG5FdGdCUVliL0JsS2lJalM4VVhKWGNzYUZrc2lM?=
 =?utf-8?B?ZkQ2aWdNSlNZbWFOU1o2L2tsS0NXcVRGZ1FkdlJ6Mkk0QjEyVXNmY3Bqa1RV?=
 =?utf-8?B?clMyb0FRZnBwVnlhb1BVQTBZcWVadFRSbWxSSXZacXIrM0UrazZseTN3Vkt0?=
 =?utf-8?B?aG9mb09nTFA3eHdDNGp5d1doaUFPNUl4eWpzMUJmRWZ2T0daL2pyN3RuWjRO?=
 =?utf-8?B?NE5Rb0pYd1Z2NU9QYTVVbnR4MTVyN3MwQXJDem9qVm1ZTTlYRzJpQlFDTkZB?=
 =?utf-8?B?UWVjWncyc2NYRU9kM0laa1krSkVTY3BHS3NJeXFpR01CbzFvRXU1ZW9IeWxt?=
 =?utf-8?B?RzM0ZHdKdDRiSDRlTmtXSTM0cC85d1phdGtWY2RkUENPQWE4Z055T0tuU3dp?=
 =?utf-8?B?UElJVEJJcFdSU2FHYmg3eW5IR2lQNFdwK2lwY1dSMGFsMHBuOThPUGdvaE1N?=
 =?utf-8?B?ZU9xTkpiMHUxLysyeGtDbkVUMDJSNE9veUZEbndhRno5bEF6a2ROYzV6aXFL?=
 =?utf-8?B?RzU5cFBiOFJDbFdXbGZxa0hGVm9hU1htQzRMNXhKNEhleUI4Z3pjRTBNZGN6?=
 =?utf-8?B?dzlnc01abUF6TUhNUWxWQkhJazlqY2hrZ1NFZU9DQm5oU1djdGxLbkJxRWta?=
 =?utf-8?B?WWtOYm5XQ1NzNi9OZ3FtblE3ZzBlR01aeU03WnBqTmJaTGZ4KzVZNDdzWkJF?=
 =?utf-8?B?MWhqQzRXZlJ5MGp2TWl4dzhhVmNZZlRQcXVIblcxakUwc1NmZ1kxa0tqUXN6?=
 =?utf-8?B?Y0ZpS2JCd2dRMHRsR20rYmdBWTZNVXlJTndHcWgrSW9ZbE9CKy9NT1hmTmxw?=
 =?utf-8?B?clVtQTk4TVFmNGN5Sllmby93Q2tFNDBYQkptUXRTOXluUERLYVRRRHhWSSt3?=
 =?utf-8?B?ZUZoZlpwNm1JMGhET2trcUZrZkN0Z2I0SjhpS05WWFk1VzVCOUVTdVBPMUNW?=
 =?utf-8?B?MUhLUDlTdTlQQzF2ZENVU2RRYnhmVGZhTytNSHJEbTBSQ2RTR1lKbUhYNnEx?=
 =?utf-8?B?Y2Job2FPUnU1YjZjcUlXaTZ5L1prbWpaZnJadUhVNzhmc084QmNsRzJ5SGVo?=
 =?utf-8?B?dWtOT3h5NENObG9PSWZNd0QyaXVRdCsvbDd6M1JFYThpdVB1QU4xUEY2MVVm?=
 =?utf-8?B?WUpFc3BQTFFIaWhBODJzVjRBRW1zaUZmMUV0UjhPZGJCS0RpU3h1alE0Sk1F?=
 =?utf-8?Q?ER1pSXVenFwt40HNruJibOwoR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a5add7c-6456-498f-dcce-08dd91d28e69
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2025 03:59:27.4313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GELq/BssJ2uC1tG6rTPfnnqx7bu6OzBkitHLvZ3/88sufVQAiPQp7GlHFlCN/BZjL77sEeg7Sr01wzFlEBdItw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6731
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IFRodXJzZGF5LCBNYXkgOCwgMjAyNSA3OjQ3IFBNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhv
Z2FuZGVyLCBKb3VuaQ0KPiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBb
UEFUQ0ggdjMgMi8yXSBkcm0vaTkxNS9hbHBtOiBTdG9wIHdyaXRpbmcgQUxQTSByZWdpc3RlcnMg
d2hlbiBQU1INCj4gaXMgZW5hYmxlZA0KPiANCj4gQ3VycmVudGx5IHdlIGFyZSBzZWVpbmcgdGhl
c2Ugb24gUFRMOg0KPiANCj4geGUgMDAwMDowMDowMi4wOiBbZHJtXSAqRVJST1IqIFRpbWVvdXQg
d2FpdGluZyBmb3IgRERJIEJVRiBBIHRvIGdldCBhY3RpdmUNCj4gDQo+IFRoZXNlIHNlZW0gdG8g
YmUgY2F1c2VkIGJ5IHdyaXRpbmcgQUxQTSByZWdpc3RlcnMgd2hpbGUgUGFuZWwgUmVwbGF5IGlz
DQo+IGVuYWJsZWQuDQo+IA0KPiBGaXggdGhpcyBieSB3cml0aW5nIEFMUE0gcmVnaXN0ZXJzIG9u
bHkgd2hlbiBQYW5lbCBSZXBsYXkgaXMgYWJvdXQgdG8gYmUNCj4gZW5hYmxlZC4NCj4gDQo+IHYz
OiBlbmFibGUvZGlzYWJsZSBBTFBNIGZyb20gUFNSIGNvZGUNCj4gDQo+IEZpeGVzOiAxNzI3NTdh
Y2Q2ZjYgKCJkcm0vaTkxNS9sb2JmOiBBZGQgbG9iZiBlbmFibGVtZW50IGluIHBvc3QgcGxhbmUN
Cj4gdXBkYXRlIikNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hbHBtLmMgfCA0ICsrLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyAgfCA4ICsrKysrKystDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5jDQo+IGluZGV4IDk0NDI0ODMwNThkMi4uYmM5M2U4MDI2NzAzIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtNDYwLDgg
KzQ2MCw4IEBAIHZvaWQgaW50ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19z
dGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+
IA0KPiAtCWlmICgoIWNydGNfc3RhdGUtPmhhc19sb2JmIHx8DQo+IC0JICAgICBjcnRjX3N0YXRl
LT5oYXNfbG9iZiA9PSBvbGRfY3J0Y19zdGF0ZS0+aGFzX2xvYmYpICYmICFjcnRjX3N0YXRlLQ0K
PiA+aGFzX3BzcikNCj4gKwlpZiAoY3J0Y19zdGF0ZS0+aGFzX3BzciB8fCAhY3J0Y19zdGF0ZS0+
aGFzX2xvYmYgfHwNCj4gKwkgICAgY3J0Y19zdGF0ZS0+aGFzX2xvYmYgPT0gb2xkX2NydGNfc3Rh
dGUtPmhhc19sb2JmKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAgCWZvcl9lYWNoX2ludGVsX2VuY29k
ZXJfbWFzayhkaXNwbGF5LT5kcm0sIGVuY29kZXIsIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBjY2Q2NmJiYzcyZjcuLjBkYmU1OWQwNjE4NyAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC04
MDAsNiArODAwLDggQEAgc3RhdGljIHZvaWQgX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLA0KPiBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKSAgew0KPiArCWludGVsX2FscG1fZW5hYmxlX3NpbmsoaW50ZWxfZHAs
IGNydGNfc3RhdGUpOw0KPiArDQo+ICAJY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSA/DQo+
ICAJCV9wYW5lbF9yZXBsYXlfZW5hYmxlX3NpbmsoaW50ZWxfZHAsIGNydGNfc3RhdGUpIDoNCj4g
IAkJX3Bzcl9lbmFibGVfc2luayhpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7IEBAIC0xOTYyLDYgKzE5
NjQsOA0KPiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLA0KPiAgCSAgICAgSVNfRElTUExBWV9WRVJ4MTAwX1NURVAoZGlzcGxh
eSwgMzAwMCwgU1RFUF9BMCwgU1RFUF9CMCkpICYmDQo+ICAJICAgICFpbnRlbF9kcC0+cHNyLnBh
bmVsX3JlcGxheV9lbmFibGVkKQ0KPiAgCQlpbnRlbF9kbWNfYmxvY2tfcGtnYyhkaXNwbGF5LCBp
bnRlbF9kcC0+cHNyLnBpcGUsIHRydWUpOw0KPiArDQo+ICsJaW50ZWxfYWxwbV9jb25maWd1cmUo
aW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KDQpOb3cgdGhhdCB3ZSBkbyBhbHBtIGNvbmZpZ3VyZSBh
bmQgZW5hYmxlIHNpbmsgZnJvbSBwc3IgY29kZSBkbyB3ZSBuZWVkIHRvIGRvIGl0IGZyb20gdGhl
IGFscG1fcG9zdF9wbGFuZSBjb2RlPw0KDQpBbHNvIG9uIGEgc2lkZSBub3RlIGludGVsX3Bzcl9l
bmFibGVfc2luayBoYXMgYSBjb21tZW50IHdoZXJlIGl0IGlzIGNhbGxlZCAoaW50ZWxfcHNyX2Vu
YWJsZV9sb2NrZWQpDQp3aGljaCB0ZWxscyB1cyB3aGF0IGFsbCBpcyBiZWluZyBkb25lIGluc2lk
ZSB0aGUgZnVuY3Rpb24gd2UgbmVlZCB0byBhZGQgdGhlIGFscG0gZW5hYmxlbWVudCB0b28gdGhl
cmUuDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gIH0NCj4gDQo+ICBzdGF0aWMgYm9v
bCBwc3JfaW50ZXJydXB0X2Vycm9yX2NoZWNrKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApIEBA
IC0yMTcyLDYNCj4gKzIxNzYsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZGlzYWJsZV9sb2Nr
ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAlpZiAoaW50ZWxfZHBfaXNfZWRwKGlu
dGVsX2RwKSkNCj4gDQo+IAlpbnRlbF9zbnBzX3BoeV91cGRhdGVfcHNyX3Bvd2VyX3N0YXRlKCZk
cF90b19kaWdfcG9ydChpbnRlbF9kcCktDQo+ID5iYXNlLCBmYWxzZSk7DQo+IA0KPiArCWlmIChp
bnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkICYmIGludGVsX2RwX2lzX2VkcChpbnRl
bF9kcCkpDQo+ICsJCWludGVsX2FscG1fZGlzYWJsZShpbnRlbF9kcCk7DQo+ICsNCj4gIAkvKiBE
aXNhYmxlIFBTUiBvbiBTaW5rICovDQo+ICAJaWYgKCFpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxh
eV9lbmFibGVkKSB7DQo+ICAJCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBf
UFNSX0VOX0NGRywgMCk7DQo+IEBAIC0zNDk4LDcgKzM1MDUsNiBAQCBzdGF0aWMgdm9pZCBwc3Jf
YWxwbV9jaGVjayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWlmIChpbnRlbF9hbHBt
X2dldF9lcnJvcihpbnRlbF9kcCkpIHsNCj4gIAkJaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKGlu
dGVsX2RwKTsNCj4gIAkJcHNyLT5zaW5rX25vdF9yZWxpYWJsZSA9IHRydWU7DQo+IC0JCWludGVs
X2FscG1fZGlzYWJsZShpbnRlbF9kcCk7DQo+ICAJfQ0KPiAgfQ0KPiANCj4gLS0NCj4gMi40My4w
DQoNCg==
