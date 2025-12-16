Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2475BCC1F2E
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 11:22:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1016610E723;
	Tue, 16 Dec 2025 10:22:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IZmLGcbc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78F3810E673;
 Tue, 16 Dec 2025 10:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765880560; x=1797416560;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=nlMcEoIo3EagY6om1Mj1KQlHZ3u3YVpp77k/KEYprb8=;
 b=IZmLGcbcf0h7AwIUrgacbPfbLQ9Sw9JaBIgq1cU83nT86qgBhfwK+cwQ
 PsN2Q3nS+c7qR8aRWOctbqjQk1Jz/wZa0eFVB2FcmndxeeSCo9mZExEkz
 JWc2owArQ8nGWzHmpzSNUBc5WE+HmQVQw8HxwQ6vZtoWxYzVuPx6Dcp0m
 HGNtYqXkZNlyL/4FJ1zZzcZ9eFL0+s3e5ZBzbpsmMuTdl8CeySdlLhMBq
 Gce+mqib4evQBpoeSg4IITN9Q94507kb648bURuLgdBd7pXagArBeuaGE
 DVdvzMFTDC/Gek8zd0JQgMIaY/QK2uUAjcbJFxa2cGTIkTFRb9zysrOMQ A==;
X-CSE-ConnectionGUID: FHkRMREURQWgDu37STtxGg==
X-CSE-MsgGUID: uAMgMnM0SFam58A6CgHZcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="55364579"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="55364579"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 02:22:39 -0800
X-CSE-ConnectionGUID: gRhhUgevTJm0ryf01g3dcA==
X-CSE-MsgGUID: crXkW9RtQqqwGpJRwKYrPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="202165027"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 02:22:39 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 02:22:38 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 02:22:38 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.38) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 02:22:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yvCJWhbe0W1BLAEP0VkiZPcKFrIYD1HwnDriW1kXUgP2Gc5fhYrH3KmgNuAzb74enavyiFJ2lvzNuBG5B0uzaM29MxpT6ZETry3SUp+Wlkab7S831Ow7zSX11OdCYWVBv9g0uj3RzxaYRHo/ksvKoKPBrZX1mfIto9/BQt56iRb31ZVyzzbU0B39Us9ZZk36a8NvpJxvejz+dtMSxK3LAJsF5dKip1QzOcg0pUBI873vL9uMKvrFwMC6Bap0XWVS2jDYRX3+xd2GC7naNre+sjhu/PVuGjuBI/kzI2mYeSly3SuDhiqlm94Rln8W843jVDIf23NsR941m9+iGSFtyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nlMcEoIo3EagY6om1Mj1KQlHZ3u3YVpp77k/KEYprb8=;
 b=MYCdPwo9OX3KCXt/gwjCXoLYEqr5W9z4Sruhpb2vxaEMCHlr3Jyv6EfMVOKn88OvSgPy9qnUgZol7vUNmHwn7OPNqgF/8TkylPIKR9wK7CS1POfKzU3F+BGCioyGedionwlgjkfdv4Idj8TqT+5YTRUnbaLBd+Ny0bZjQUti29i7NMvJh+Y8O6Ju3KgiNvHrxo/TQ3Rd8t6GmPmkIfYqTWW8xLO5mIlzFLW2Go1obcAla4l+Jv4n9yE/K9U+5cIRhNH1r2hpnHY1cF9eF/q121R0+NFxzt07P+C2aWDAAzPfhTrCU1Wisg0gC9AWmn51ZAvCuEkegkiamzioAgGKEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS4PPF382351574.namprd11.prod.outlook.com (2603:10b6:f:fc02::1d) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 10:22:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.011; Tue, 16 Dec 2025
 10:22:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 0/3] Selective Fetch and async flip
Thread-Topic: [PATCH v4 0/3] Selective Fetch and async flip
Thread-Index: AQHcZOyz59K73UXkKEW1bp/w1WYWh7UZqM2AgADIXoCAAAU3gIAJq4+A
Date: Tue, 16 Dec 2025 10:22:36 +0000
Message-ID: <9cec8083bcec15f6919129eba599486156d2adbc.camel@intel.com>
References: <20251204070718.1090778-1-jouni.hogander@intel.com>
 <aThp0YZOjgWyA9DW@intel.com>
 <66f94d37118e7de638e3d0f5a016b7e496497ee3.camel@intel.com>
 <aTkWRYBWrWaMNkbC@intel.com>
In-Reply-To: <aTkWRYBWrWaMNkbC@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS4PPF382351574:EE_
x-ms-office365-filtering-correlation-id: c38b0e38-40f1-4f15-a011-08de3c8d08d0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dEFhdmZaWHh5ZU55QzNoUXZoS0t2VzViaXU0L0J6VnBGcGFqNzhESVAybmY4?=
 =?utf-8?B?V09qalNjZEZYR3Vydm1HekJva2Z1T2FEVVY4Mm15S2c3SzlBdXhjUVRKWlVV?=
 =?utf-8?B?emUzMUNNVmtwSUpWTVVLV0NMODdldzlaQm0xRlQwUjFHTG1HN3c0NWp3T092?=
 =?utf-8?B?TXJBOExVR2RmM09BTlhOK05mOU90WXpVa3VQVjFJeEFkUGdlbGtjQXRQZDZK?=
 =?utf-8?B?RURBcGRTRFZBenVtam1qVnJvN1JWc1FIQXMrSkhGS2lHcHFrOUNLK09xVnlu?=
 =?utf-8?B?TkxoaEhHcU5CZWx2ZmJzaU5zZTMvTzZIdkg3ZTNqVG0waFIrK2pQelZUbnZ0?=
 =?utf-8?B?YTRZc0Z3VkZPbUM2WVlxK3NHTnp4ajJSQVJqeXdPQUJqOXRCQ0p3R0ZGT2Fs?=
 =?utf-8?B?ekZzRzgzV3MxU3hCZDZqdGZ1aGlOMWVoTWhZb1o1TkQxUDNxNHNYN2RzUUMz?=
 =?utf-8?B?M052UVNYMUhaUmNDdmlxRVFiUDdZKzNISDVERURmYnhodnVXWmxLb2MyeERz?=
 =?utf-8?B?amh0ZjBQWXBRSFpYb25kM05xdWdSZ3lEQjJ4alZFUHA5U0xLWllQcDFrRkZx?=
 =?utf-8?B?RkhTUlZaelhvZUcxSURIZmdNaGwzQUFTLzV5RmlCenJQME92RmpDTUsrZUhX?=
 =?utf-8?B?MUZTT3Z6YllrUHc1NzZmSHZNNi9qSFp1Z1g3YkM0bGl3cTBhaHVidmsvQTkv?=
 =?utf-8?B?VVlYUDRqZVBBWnY1Y0g4QlFxRVNhOXFLbVRvcytJZUVXQTk4WWdTVkVVakt6?=
 =?utf-8?B?Q0xZNURYVEQzQjhLR2lrTE1kdmdycTFTcmJ1WXFQQkJ1NHgrU1d1ZXhjVDA1?=
 =?utf-8?B?a2tDcmtaL2lZOU9UMnBGTkVGNkVzdW90WjlYVTFOa1paMEZRd3VQNTBQQ0JW?=
 =?utf-8?B?d0RJdXB4Nm9meDArMHBraUdyQUhIZEZWWCtzL3BrS3IxdDVDSSt1UDdNalp4?=
 =?utf-8?B?VFJjTlFOWnh0MHNHT3U4cEVidmtJclQ1T1RaRUQ1WDlkQVlTU1NORk9MNC84?=
 =?utf-8?B?NnhzZ0tvam5iejlEUnduWnhPaGxwc2tGWlc0TEpEU2N5bjViWXlHYURzQm9h?=
 =?utf-8?B?azFOcGN1SGsveENZWWQ0QWgzVkNIM1dWdkcvQ1NjQThKNC9YaGM4Z3dkR1dR?=
 =?utf-8?B?dXVBREU4NSt1RW0yTDBhU29sRFZ3U1Q5Q3pvNGdtT1VxajVoMkYrYSsvSEpS?=
 =?utf-8?B?ek1jZVJ6UXBmT25IVjFCQlQzcXhMR1FHRW1HZTFhZ05kWkUyZmlBNUxoZm5V?=
 =?utf-8?B?Z2ZGaURmU0xZQUdRQ0dlZ0VidkhvYkRCMy9HYVFTcXdxU2s0UEZHSmlqaVAy?=
 =?utf-8?B?QXN4Ri9aNThOcXMzZGhYNnB4eUF3bS9LZ05WdkZ4amdpcXJMMjY0KzNheGpu?=
 =?utf-8?B?ak50d1ZvUWdqUFI1ZnhGdTVRRkMwbUpmUHplYkpyNzNWYXIvU09XMEdHTWVW?=
 =?utf-8?B?YmlsT1FqbjNjVEN6bHk2ZVZzR2laemV5VXpIQy9PZ09EblZKVVlISDJ3Rjlh?=
 =?utf-8?B?OEJCNm44Qlh4YU14VjB6UXVRQVpYNGJMNGNkbGlMNjZWaHpxYlcrVWlwR1Y1?=
 =?utf-8?B?Zi9YTkxpUDYxRzIrTVEvaUs1UXJkY09Wd1gwY29WeEZTNTdRUUFUSHV3V1Qy?=
 =?utf-8?B?Yi8rS1l4eU5lenM0L0RxdGp6UFF2cVMxbHBsaWVEL3JnUVZZb0ZTT0FsRS8z?=
 =?utf-8?B?d0VzUGJMcGtlY1BqZHVNRnljNXNwaE1FZ2dUa1dlL1NKNkdCbjJHSU85VkU2?=
 =?utf-8?B?Qk1qNkxGL2lad0k3NEJibkZTbkRWSnpJTVNFaWFjRDBlN2N4L2YrVzFxUXFt?=
 =?utf-8?B?ZmgyN0kzRG5IL2xHTy9JMjR3M1RsdU5ENm9xZ1B6QnRnMjRDR01yVmJjeEhi?=
 =?utf-8?B?MHY0RWJrWHJFcFUrbnQ0Y1h3M2tac09HdlpWaFB5ZmJCNzlxcXFnV015cDAy?=
 =?utf-8?B?R0JkZTFIOG05dkpjcit3ckNPUXcwdzhZSUFyamJOS1YvTk4yVUtpNVB3Q2hV?=
 =?utf-8?B?RnpiejVxUmQzMEN6czFibUFOUDlPOWRTMUlLaW9qaVRUbmZqVERYUDRGWDBE?=
 =?utf-8?Q?2qljQe?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a0xTSWoxTmNYdERlWlhmN0FQSGgzZkVnNDFaazNvK1lMbHZuRHlrdWFQNllT?=
 =?utf-8?B?QnBRSEtYWHAzMWVQRzlIVnI0eFBybDAwVlM3Z0oxb296R2dWM2dzVUVNRjYz?=
 =?utf-8?B?V2NvNkJyUzV2Vm5ablN2THpMUStyNUh1aDJQQzRZMStBQmZJNUhGbEZ5NXZQ?=
 =?utf-8?B?RXBDZjRrOUFrNTRjRjg5RlJqMUtBTzZOaWtuNG80UXZ5aEsvREQyZnljYnFu?=
 =?utf-8?B?b1hmelllRzdmaHRvRUFnQmxwV3VHZkxieEs1ZlNQMXdKbmhxdElxcVhLWFYx?=
 =?utf-8?B?Q0FrK2J5YXBDbTBCNkg3VE9RMzJVYmtKZUVlcmcwMG9SU3dWVnFpR3dlL1JO?=
 =?utf-8?B?dnBDSHdlTUpDdU5zbnR1Q2JyNTdWTVVQQWw1VmVCdWFadktrdWpDS2J2TUpU?=
 =?utf-8?B?ZFcrY3NqQ0dvR2thcDRyV0ZjaUM5MGQ2UVY1dlVBUDd6QWdOTWdFcEpRQzRo?=
 =?utf-8?B?ZFl3OERYVkxTNWNaQWx0SHRLUW10ZTZrSFZmWGxxSUF3bTNnSk9rdE1kcjFV?=
 =?utf-8?B?eUpzaFJYOFZSanIxQUV2eTBQb2cxL0I5YUZ2ZFlPb0ZGeklyc0dEci8xVmVu?=
 =?utf-8?B?NE5UMTBWblN2WXlKNDFVcFpCdElGenZ2d1BrY25wR0FKaXV3bmVSSTZNK0NE?=
 =?utf-8?B?MGdRZ0o3aDkxL1BiQkd2V05xTFJwSHhLQS9zL2dKWjNRSldZekY0dTNwbllQ?=
 =?utf-8?B?YWs2cDhjV3FSUjlMd3g3Vlk4TkkrZHlhR1c2MERoOFU5OVRuUFNGTUJKL3lo?=
 =?utf-8?B?M3lack5Bd2twbVhTVzZuL1pkMHBhNlkxbGN4ekxkK3BQSkc3c0xOb2N0OTRw?=
 =?utf-8?B?VzNCNEZFMmVyUDM5Wmh2NXdvcmwvQTlkZlp2ZlVtWENteUhZU0dWVWxoenFu?=
 =?utf-8?B?MktjV05qcW92czRjT2xGcWtyRG52c1paR3NSNUtuNXhheWREcEc1V05ZQ0du?=
 =?utf-8?B?bTZwNW5VUVU0R2d4TFkwNW1WMVBqK0dxVWlESmQyaHBEWnVUQU1pUldjMkZk?=
 =?utf-8?B?SDl5U3kwbUYrb2oycXRleURldmFobHQxOHRyR004S0tYNWFkZmhKU1R5bnJs?=
 =?utf-8?B?bXFqRGxYZTYrZjU1WElENEVFRlVhOXpBMnA4eHltQVJCbWg4Q2gvV3M2cjBP?=
 =?utf-8?B?VXEzQ0tQcWZ5bi9DRVM4U0xtTThBK0xSWVo1YkVPMThNaDNQMTlwZlFJWklX?=
 =?utf-8?B?d2R0YWxFcy9ZcjBVQkR2cmhCc2d5M3lkZFN5REpQTTdXMUc2Mm9aN2tUMHpU?=
 =?utf-8?B?UW9GaWsvUXdDM2hMN1RXQjdIaUF1Umczb1pZNFpUWEE3NkxqTThjeDAzNCtq?=
 =?utf-8?B?aHlQUnFhQUJxUTU2UEQ0bXYyRnhzNWtDbndZUS82WmU0WkdsSitUT2tzclZr?=
 =?utf-8?B?T2doeGFLQTFCWERJZlhiRTRiV1d2eDJYWTlXemlCUVdpeVNGWHp2Z1g3REtv?=
 =?utf-8?B?VWdaTXJsTHdNekJmYXl3NXBKRnBiNEVJL0RCcDFkeFVrdDBJUWN4TTBaYU1K?=
 =?utf-8?B?NTNSMUpZR1N0T1lGcGRLN2FvcExEWG9ib3AzRXFzMW1xM3VjU0Z6bVQvY2V4?=
 =?utf-8?B?ck5PZWxEanNqSzc2LzI0cjVwbHBrRVpNczF1MEtQSTErTzRXVFhld3BjVWJn?=
 =?utf-8?B?VEdpeWNkZnIxbDYwMncvL0pxZXJQMDdydVJnVHdOd0s3aG1ocVJOTFRBeUps?=
 =?utf-8?B?Q3dFRjVZUlE0VEVxQnc3WE41OFZNcjIxVHJIL1lmNU8vM01DSkt2NE01V0NX?=
 =?utf-8?B?dE1WdFVFSmV1ZmpZOVllWnlsZ3l2eVJZZ1E5Wm5WMTY0NnNiT1p4UElOQ1JS?=
 =?utf-8?B?MnArTVhWOTBLQ3I2MTJkRUt5UG5FRitBdUxNdTBDKzF5RmRkR2F0SE03REFO?=
 =?utf-8?B?Y1JEaVNCdTgvYjdlVVM3Ykc2KzZCN0xTL1MwTFBITENYeUE1OTFnTlpuU1dK?=
 =?utf-8?B?TGNGL2Y0eEZoSnRMT0hFQ1JHU2xmSC9FOC9TbnA2LzNaNzRmcUxUcjlNaEtp?=
 =?utf-8?B?eVdLVHpLVGkxdDV5MFhYVTBybXZpbW5kZkVsNktNTlV6dmhrcjlmS2FwVGFB?=
 =?utf-8?B?aVh3UTJzYUhRZ0NwUnhDWk9mYnhnRHMxYnU5UjhLa0tHSkZoRVMyd0piU0Jy?=
 =?utf-8?B?blozbnc4R1FxS0JmTnBYaWdPTDRYUUpSbmpzSzVkRHM1L3J2blltN0Q0VDJp?=
 =?utf-8?B?SEhURHZzVkpMYVVTcTlmbFcvMFE2VFMwTlQ4ZFduTm1lalR0bTFNemZ1M2hX?=
 =?utf-8?B?UWZHTENQMGY1ZUZrdWZmdGJzNzNBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <86DEABF2555ADC4EB16535C75367CE6F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c38b0e38-40f1-4f15-a011-08de3c8d08d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2025 10:22:36.8550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hx0EY+jf1C0q5CGzH3HYq3Xsly9ej/7XFlgUKlMLSfnLweVD2W1enqqQ4ULKUzOTt4gCxiZogC0RauB+4D/VPCqObTNCVw2NxmsSZPIYGHQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF382351574
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

T24gV2VkLCAyMDI1LTEyLTEwIGF0IDA4OjQyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgRGVjIDEwLCAyMDI1IGF0IDA2OjIzOjM0QU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBUdWUsIDIwMjUtMTItMDkgYXQgMjA6MjYgKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIFRodSwgRGVjIDA0LCAyMDI1IGF0IDA5OjA3OjE1
QU0gKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gVGhpcyBwYXRjaCBzZXQg
Y29udGFpbnMgZml4ZXMgZm9yIFNlbGVjdGl2ZSBGZXRjaCBhc3luYyBmbGlwDQo+ID4gPiA+IHNl
cXVlbmNlcy4gT24gYXN5bmMgZmxpcCBzZWxlY3RpdmUgZmV0Y2ggaXMgY2hvb3NpbmcgZnVsbCBm
cmFtZQ0KPiA+ID4gPiB1cGRhdGUuIEFsc28gc3Vic2VxdWVudCBmbGlwL3VwZGF0ZSBpcyBzdGls
bCB1c2luZyBmdWxsIGZyYW1lDQo+ID4gPiA+IHVwZGF0ZQ0KPiA+ID4gPiB0byBlbnN1cmUgcGxh
bmUgd2l0aCBwZW5kaW5nIGFzeW5jIGZsaXAgaXMgbm90IHRha2VuIGluIHRvDQo+ID4gPiA+IHNl
bGVjdGl2ZQ0KPiA+ID4gPiBmZXRjaC91cGRhdGUuDQo+ID4gPiA+IA0KPiA+ID4gPiB2NDoNCj4g
PiA+ID4gwqAgLSByZXdvcmsgaWYtZWxzZSBpZiB0byBpZi1pZg0KPiA+ID4gPiDCoCAtIGFkZGVk
IGNvbW1lbnQgdXBkYXRlZA0KPiA+ID4gPiDCoCAtIGNoZWNrIGNydGNfc3RhdGUtPmFzeW5jX2Zs
aXBfcGxhbmVzIGluDQo+ID4gPiA+IMKgwqDCoCBwc3IyX3NlbF9mZXRjaF9waXBlX3N0YXRlX3N1
cHBvcnRlZA0KPiA+ID4gPiB2MzoNCj4gPiA+ID4gwqAgLSByZWJhc2UNCj4gPiA+ID4gwqAgLSBm
aXggb2xkX2NydGNfc3RhdGUtPnBpcGVfc3Jjc3pfZWFybHlfdHB0DQo+ID4gPiA+IMKgIC0gZml4
IHVzaW5nIGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUNCj4gPiA+ID4gdjI6DQo+ID4g
PiA+IMKgIC0gY2hlY2sgYWxzbyBjcnRjX3N0YXRlLT5hc3luY19mbGlwX3BsYW5lcyBpbg0KPiA+
ID4gPiDCoMKgwqAgcHNyMl9zZWxfZmV0Y2hfcGxhbmVfc3RhdGVfc3VwcG9ydGVkDQo+ID4gPiA+
IA0KPiA+ID4gPiBKb3VuaSBIw7ZnYW5kZXIgKDMpOg0KPiA+ID4gPiDCoCBkcm0vaTkxNS9wc3I6
IFNldCBwbGFuZSBpZCBiaXQgaW4gY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPmFzeW5jX2ZsaXBfcGxh
bmVzDQo+ID4gPiA+IGZvcg0KPiA+ID4gPiDCoMKgwqAgUFNSDQo+ID4gPiA+IMKgIGRybS9pOTE1
L3BzcjogUGVyZm9ybSBmdWxsIGZyYW1lIHVwZGF0ZSBvbiBhc3luYyBmbGlwDQo+ID4gPiA+IMKg
IGRybS9pOTE1L3BzcjogQWxsb3cgYXN5bmMgZmxpcCB3aGVuIFNlbGVjdGl2ZSBGZXRjaCBlbmFi
bGVkDQo+ID4gPiANCj4gPiA+IFNlcmllcyBpcw0KPiA+ID4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IFdo
ZW4gdGVzdGluZyB0aGlzIEkgc2F3IHRoYXQgd2UgZ2V0IHN0dWNrIGludG8gZnVsbCBmcmFtZSBt
b2RlDQo+ID4gPiBhbGwgdGhlIHRpbWUuIEJ1dCB0aGF0IHNlZW1zIHRvIGJlIGEgcHJlLWV4aXN0
aW5nIGlzc3VlcyBjYXVzZWQNCj4gPiA+IGJ5IHRoZSBicm9rZW4gc2VsZWN0aXZlIGZldGNoIGFy
ZWEgY2FsY3VsYXRpb24gY29kZS4gSSBzdXBwb3NlDQo+ID4gPiBub3cgdGhhdCBJIGhhdmUgYSBs
YXB0b3Agd2l0aCBhIFBTUjIgcGFuZWwgSSBtaWdodCBoYXZlIHRvIGRpZw0KPiA+ID4gb3V0DQo+
ID4gPiB0aGF0IGJyYW5jaCBvZiBtaW5lIHdoZXJlIEkgYXR0ZW1wdGVkIHRvIHJld3JpdGUgdGhl
IHdob2lsZSB0aGluZw0KPiA+ID4gYW5kIGZpZ3VyZSBvdXQgd2hhdCB3YXMgd3Jvbmcgd2l0aCBp
dC4uLg0KPiA+ID4gDQo+ID4gDQo+ID4gV2hhdCBpcyB0aGUgU1cgc2V0dXAgeW91IGFyZSB1c2lu
ZyBhbmQgd2hhdCBraW5kIG9mIHRlc3RpbmcgeW91IGFyZQ0KPiA+IGRvaW5nPyBDb3VsZCBpdCBi
ZSByZWxhdGVkIHRvIGZyb250YnVmZmVyIHRyYWNraW5nPw0KPiANCj4gSSBqdXN0IGhhdmUgWG9y
ZyBydW5uaW5nIHcvbyBhIGNvbXBvc2l0b3IgYW5kIHRoZW4gcnVubmluZw0KPiAndmJsYW5rX21v
ZGU9MCBnbHhnZWFycyAtZnVsbHNjcmVlbicuIFRoZSBsYXN0IHRlc3RzIHdlcmUgZG9uZQ0KPiB1
c2luZyBtYXRlL21hcmNvIGFzIHRoZSB3aW5kb3cgbWFuYWdlciwgYnV0IEkgc3VwcG9zZSBpdCBt
aWdodCBiZQ0KPiByZXByb2R1Y2libGUgdy9vIGFueSB3aW5kb3cgbWFuYWdlciBhcyB3ZWxsLg0K
PiANCj4gSSB3YXMgbW9uaXRvcmluZyB0aGUgZnVsbCB2cy4gcGFydGlhbCB1cGRhdGUgc3RhdGUg
YnkganVzdCBwb2xsaW5nDQo+IHRoZSBQU1JfTUFOX1RSQUNLX0NUTCAob3Igd2hhdGV2ZXIgaXQn
cyBjYWxsZWQpIHJlZ2lzdGVyLiBNaWdodA0KPiBhY3R1YWxseSBiZSBhIGRlY2VudCBpZGVhIHRv
IGFkZCBzb21ldGhpbmcgaW50byB0aGUgZGVidWZzIHN0YXR1cw0KPiBmaWxlIGZvciB0aGF0LCBn
aXZlbiB0aGF0IHRoZSByZWdpc3RlciBsYXlvdXQgaXMgcmF0aGVyIHBsYXRmb3JtDQo+IHNwZWNp
ZmljLg0KDQpJIGluc3RydW1lbnRlZCBwc3IyX21hbl90cmtfY3RsX2NhbGMgdG8gZHVtcCBvdXQg
aWYgaXQgZW5kcyB1cCB0byBmdWxsDQpmcmFtZSB1cGRhdGUgb3Igc2VsZWN0aXZlIHVwZGF0ZS4g
SSBjb3VsZG4ndCBzZWUgaXQgYmVpbmcgc3R1Y2tlZCB0bw0KZnVsbCB1cGRhdGUuICJ2Ymxhbmtf
bW9kZT0wIGdseGdlYXJzIC1mdWxsc2NyZWVuIiBpcyBjb250aW51b3VzbHkNCnRyaWdnZXJpbmcg
ZnVsbCBmcmFtZSB1cGRhdGVzLiBXaGVuIGl0IGV4aXRzIHRoZXJlIGlzIG9uZSBzZWxlY3RpdmUN
CnVwZGF0ZS4NCg0KUGxlYXNlIG5vdGUgdGhhdCBQU1IyX01BTl9UUktfQ1RMIGlzIGxlZnQgYXMg
aXQgaXMgdW50aWwgbmV4dA0KcHNyMl9tYW5fdHJrX2N0bF9jYWxjL2ludGVsX3BzcjJfcHJvZ3Jh
bV90cmFuc19tYW5fdHJrX2N0bC4gSS5lLiBpZg0Kc2VsZWN0aW9uIGxvZ2ljIGlzIG9uY2UgZW5k
aW5nIHVwIHRvIGZ1bGwgZnJhbWUgdXBkYXRlIGFuZCBhZnRlciB0aGF0DQp0aGVyZSBhcmUgb25s
eSBmcm9udGJ1ZmZlciBmbHVzaGVzIC0+IFBTUjJfTUFOX1RSS19DVEwgd2lsbCBzdGljayBpbnRv
DQoiZnVsbCBmcmFtZSB1cGRhdGUiLiBGcm9udGJ1ZmZlciBmbHVzaGVzIGFyZSBqdXN0DQpkZWFj
dGl2YXRpbmcvYWN0aXZhdGluZyBQU1IyIHdpdGhvdXQgdG91Y2hpbmcgUFNSMl9NQU5fVFJLX0NU
TC4NCg0KQlIsDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gSSBzcHJpbmtsZWQgYSBmZXcgZGVi
dWdzIGluIHRoZSBkcml2ZXIgYW5kIGl0IGdlbmVyYWxseSBzZWVtZWQgdG8gZW5kDQo+IHVwIGlu
IHRoZSAnaWYgKGNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS55MSA9PSAtMSkgLT4gZnVsbF91cGRh
dGUnDQo+IGNhc2UsIHdoaWNoIGRvZXNuJ3QgcmVhbGx5IHN1cnByaXNlIGdpdmVuIHRoYXQgdGhl
IGNvZGUgaXMgdmVyeQ0KPiBjb25mdXNlZCBhYm91dCBjb29yZGluYXRlIHNwYWNlcy4NCj4gDQoN
Cg==
