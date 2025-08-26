Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1FCB35835
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 11:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E2810E2DF;
	Tue, 26 Aug 2025 09:10:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IxpHJBz0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7162610E2DF;
 Tue, 26 Aug 2025 09:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756199420; x=1787735420;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=xQMF/nTTopW5IyOcBgVvT9Wthl6D5tl3BrsXbZqoiBs=;
 b=IxpHJBz09wbdyGxXd4t3G+72/eulf3LH2jGZmKTy7kNztSnQtMZGLbNX
 Qx/5ZoXvmyBgjWhsQbU60+6gbXxhY5MXr2rE63wsJTRaZW3OUnT7DSmm5
 DEMH16ZQQv0cYi60k/CgYgj1lWnhH3W1jI7KEKiik6fkrceA9XCAjTXXA
 rkt2LCDCXUumVNyI42H4/Dy8BRerj6YuizQfjBlLdcVWeQ02h3Hax4jeI
 k8lT8eOa8lgvpXhfTh1d3WH5q6GZUPnW10f2cPBsa38aRUBh2LExWxgnm
 VFC39k7/ca4lQUlCDgsvhdw1lsCIfNgabbe4LPYPsLHIBmwcIXD0Sh4V+ A==;
X-CSE-ConnectionGUID: VC0oJix2TueDFYd6t3o7hA==
X-CSE-MsgGUID: Y/DEkVBRQuGXkdpwx6KdwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11533"; a="58135297"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58135297"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 02:10:20 -0700
X-CSE-ConnectionGUID: CyrdAFcLRnm3eSSM+4Pxqg==
X-CSE-MsgGUID: DbqocylsToK4L6EaXzPrCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="168734757"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 02:10:20 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 02:10:19 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 02:10:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.62)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 02:10:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hJ6xSi5MtHZpI78MmTC8Hry4geB78D6gknwKinLdCctE2xeD1g2L+pyFHyazECipty9CxU0SH/tTsYHKR3VTeqMUkX/ngZNQA+MECA/ENXojLxQ9Lt1X4ja8UjLVZ+GYVJNipI8iMF2qNPsPuL01nf6wDq0TWEk1CLX0XwvEUnuraOF6/fxmoCtoZqwt62IcLuX+JpP+KlJr6YkePq8hlVpy762PI1+qeF/Omv6ZNmBSAK/cic/Fs/5hsQ819783lspvSX3fGaloJ6B/lobx8rAKhk5gjujovDDVg6BMhEQBRAq3wK2TbfqLywUXwOC9w4ASgwYg8x/34rRZolAnLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xQMF/nTTopW5IyOcBgVvT9Wthl6D5tl3BrsXbZqoiBs=;
 b=deUbbO4F+1ZMzsh/GRk5ijlhK2HTxvulvptLj7TPSAdibop6q8DTAuhQk2SFCbRtZqqXdHGjtIazwRdex0jxyXGjb3DbpccYKwkc8NEv3dvn18ZS8qcf5RFuBhCYJYezRXvll9n1i2NdYn1TsXB3Dh8g6FPgM2sz33NrLe251OX1UTCp9MD1gfWSiVIUcPpW3CHnd7RVYwl6cZdf4hCPh9EG+x6CDU7BleG9rnLhXQFIcOvGv3ZEvDyNWf+j94beUbzrCX9S6JsrLImKl5ADBYHTJtG30n9c1sxwrXWv8o5P56U0VsDsdBXHuchOCiDjcBwC+3nLbkSYcC5dGKk+6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6492.namprd11.prod.outlook.com (2603:10b6:208:3a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Tue, 26 Aug
 2025 09:10:17 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9052.019; Tue, 26 Aug 2025
 09:10:16 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v7 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Topic: [PATCH v7 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Index: AQHcFauBx5bLZgdcO0iMApnVVOJ2ZbR0pyGA
Date: Tue, 26 Aug 2025 09:10:16 +0000
Message-ID: <c5683e8ebc687b7e669ae3950cc16108ba9397cc.camel@intel.com>
References: <20250825103332.885420-1-michal.grzelak@intel.com>
 <20250825103332.885420-2-michal.grzelak@intel.com>
In-Reply-To: <20250825103332.885420-2-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6492:EE_
x-ms-office365-filtering-correlation-id: a1000115-8e59-4ede-5569-08dde4805f81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MnNhK1FnUkpxY2NWcE04cmVXdFMvY1VRYnorblVQMUZFVFNWbi9hOUFYSUxV?=
 =?utf-8?B?WFhOdVFpNDQ0dUIyWDZRY0pldTJQcTNXNllwUk5qa1RoemVNVU4rcVY1VjVm?=
 =?utf-8?B?WWk1R0QrWndUWlk4ckJTZjJXbVdwNGxUSkRPWkVFYm80eG9ZcTNpSHFtVVJW?=
 =?utf-8?B?YStpSS9DRTdid0M3VXJBMmJIV2thbzFxWG1VZk1mQWFwTWlKa3E4eDFFM2FY?=
 =?utf-8?B?ODhwN1Q1UXFhcEt6Z0d1QVZ5SHpIZWhCSHNxdk9NckJEWkxkM1A0TEVLL2VZ?=
 =?utf-8?B?ejNidEg5ejRySkYzYkRXVGpMZnhyVjduRDRTVk9jektOUkJhRjR1dTFsYlVE?=
 =?utf-8?B?MUl2Z1VGMG8xYXFoR200dHNwSEwzWTdPYTJycFY2WFBTZ2lEenhhT3VnUzd0?=
 =?utf-8?B?MElqQ2dLSDhvbUt2MkFNcnhycGhsT3BkZEZISXUxR1FBUVpGSTBuMkVrNVNG?=
 =?utf-8?B?ZzRBLzBPSjhNQUErWkZubUlpZmZqUkJtN1BpYVV1cmo0Z0xJb2UyOFdHRURV?=
 =?utf-8?B?R1ZSMnU4QjNHVHBRdkNEUm10K2xUNllBUGRneW5Kak54M1JFUkx0YWxpOTJ3?=
 =?utf-8?B?R2VKU3E0VEZxeC9Wb2NjbmFueXAzMGoxZTBrWTI1TVdVNnNoRmU5YnVuNUpT?=
 =?utf-8?B?dGVJRE9kUVNLbi8yRWF3U3VaL2FqdmdDREJRVk13emdhQXZaS3BGL0UxS2Rq?=
 =?utf-8?B?ZWFPdnVQRm11NXZJWnpyVkJZYzBDYzMwMTFidXNzVUNMalFxaUhzVjdsMDV0?=
 =?utf-8?B?WEl2L0JRbnY2c25oejhXREQxbHJJTjBwOGxUZk05cHZjQ1UrRFQyTFZRZ3lV?=
 =?utf-8?B?eUQ3U1N4SjFRZDFRZVlhRW1KUGprOXdMRUJnYTdWampObG9nTGwzcThtNWkr?=
 =?utf-8?B?czk0ckNZSjVFV2ZLemNleXEya0gwemJoTzdEZW4rckFqTzl4TXV4dmNmelFY?=
 =?utf-8?B?Ry9hcytKcUNXYVhpY1c4dThXVU1UR3UxQ3pucW10dHRJbjNKU0REa2dJRnVs?=
 =?utf-8?B?b0M5UFFqc3paaFJwTTBObTZjMVo3NkUzQXBxeHh0Wm9maG92MGtHWU1yc0NB?=
 =?utf-8?B?YlJSM0lzTVIrdTc1WUYrVlFLZ3l6eUJPZS9zQk9vVG1VRU1QWi9aVzZyTVZO?=
 =?utf-8?B?NlVzbTZxcExTT2ZqZkExMk80S3k0L3FJUFgyWG5Hd1ZLNjNEWDNEbml6N3Iz?=
 =?utf-8?B?Y1hMSStrQzVHc05SV0dHYTJ4T1pUN0t1WXdHUFFlbWhyQmZ2R1JoRWxZV1Zx?=
 =?utf-8?B?cXBQVFE0blBJTmljSFNQVDJDaWhFbTd1RW8wYmhSakpKTmt0UHV6bnlZMWxJ?=
 =?utf-8?B?T0lRNTk5NUlkejhJNzR3cUVsV1didXZYeXg0S3hSZTR6ZVRIWW1QZlR2VGNZ?=
 =?utf-8?B?RGtjTkNmdmlpeEhDRTVxbmp5dFd3ZHdpK0M4ZTB4TXlXcExxNVJmUlAzYlA1?=
 =?utf-8?B?YVdXenlzbHkwS1hXTTNqMEMrMnlzUmZyc25NZkRZNEEzYVJWVUh2YXB0c0lX?=
 =?utf-8?B?aVhRWUVNNUp5MUwrenp5Y1Nad0FDSFFCM3pSamIzSngzcXF6aWZUL2p0NVBU?=
 =?utf-8?B?dDUvUnN1Q3FqSFo1M3FjUFVETlRPMFd2d2p1RWlSaVNVTE03NVpkLytyc1VB?=
 =?utf-8?B?bWZudTQyelJWa3o4aUdtbEhhaGFvQndpZ0M3eTQrOGp2U3lEV2hrczJEM25z?=
 =?utf-8?B?SS9jd0kvT3pSYUFjbzhFeUxWUERBeXR5OHUrRXlGQk8wdTB6dnRPTVl6dTFU?=
 =?utf-8?B?a3BNRFROOWJad1dOSnljM0hodVl5WktDMTdjWDBYNzZSekZQamhTa1U5SmxS?=
 =?utf-8?B?aTYwd2wreld3RTJLL01aWmhieEhmazNsRERtYXRIblc5Nkkxcm0wZitmbkRK?=
 =?utf-8?B?aHBVaFAxNnJvc2hyVGltS2daVUZFYVdYb08zd3VhVEFoZ3BVWVovd0E4VFB6?=
 =?utf-8?B?c1VGVnZnRDF6S1Y5N1hFY3owd2N5eFZ3TjYyVUNOVVFhOENNS2c0S3AzRENq?=
 =?utf-8?Q?Gq6OUKEGsFADqbqsVN4QMIiOssHhks=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c0t2VFlVZWwzNERFUDE1cjF2L2ZyeDFqN3VxSW9HTWV4RzlpU1BIa21hc01Q?=
 =?utf-8?B?K1IzUEU1a1hERXVYNFZxcndMZkVoZzVKRjY3Y3V6OVFoaHRFTmcvUGhMWnRw?=
 =?utf-8?B?MGNaVjB4eGdUbmVFNjJiSkhFY2NwWEcwUnZkS3psdjZBM0RzU0xwcEhKNlV0?=
 =?utf-8?B?NTROMmhJZUhsd3UzUUlRbkJLaW5MbmtLOVNzaHE2MXBpNlJkWkhDcmc0MnU5?=
 =?utf-8?B?RjNSeUVJT3pIQkNtYXcyOGNvYTBGVEcyZFU1b3FOS0dpVVYyeUFOMVA4cWhZ?=
 =?utf-8?B?bzVoQUZVWXJBSXJWS3lKQjFDYUIwQUcyWHJvNElhZ2ZZWHc3TjB0NkptMXBK?=
 =?utf-8?B?dlNEMThKZjJqT0RpZi82WTBURnFhZlorVUFjZml2S0twWXF5M2x2T1ZVemZZ?=
 =?utf-8?B?MEo4eEVDY1o4S1NBVXlidWtLTkVnbzl3dzFnekw2NCtzaFp4Q3RqZFdKSWd2?=
 =?utf-8?B?aVZOeW1YVEQ2L29ad0lCcUNGMFM0RjFhZm5DMkN1WHNSZnFBNkxOalBmQ3kw?=
 =?utf-8?B?UHNpRVVYbGxxV25DQ3N0cnhwMTlpZHl1azVWOUtFZGJsditvdzRIN3Vzd1RB?=
 =?utf-8?B?MFd5bUhzMEZhaGJtR2tSWDlOR3MrUTJlMmRaMmhmZ01wdjRVM1gva0QzUUVh?=
 =?utf-8?B?bG5ub3Q0TWI0QlVla1VyOXczaEZxUjhZYXovbE0wWGgxdnhiNFZkdXpSdTQ1?=
 =?utf-8?B?NVVnbnlrRzhhTWk4K2V0RUtxV2RZWG5lSmQ5VVJremk3MzM2WGZXZzNDa0xL?=
 =?utf-8?B?SkUvVW5tTjdHRHJYVzlKSk5PZWRkK2x5azcyQk9DRHdtQS9Yb1RrVGpEUlN6?=
 =?utf-8?B?OFF1ajVWNTd1R0dONmhaQnRMRG02ODR4amc2WU03OVFGazlqeHdVOTcxeFRw?=
 =?utf-8?B?aE1ibWtNcmNDNmxIb3p2M2NYSkV6dmJqUzcxS25NZnpHNmVlMmMzbjMxRmVF?=
 =?utf-8?B?QThTY2JGRmNVMHpiUlVrVTdkNXVvOUdSb2tMUFJUdzhIQTI4QTJxQ2VNUTFU?=
 =?utf-8?B?WHR3SjVIWG5RVk9Dc2ZlUTB4OFN3NGxxU3lHVnpnbDIwS1FzSUVzRy9HZjZx?=
 =?utf-8?B?YnNhakYvZTdObmxuazRGNlpsYzF1a0YrTXFlYTQ4aWRIV0lVVkR6UUZyb2tt?=
 =?utf-8?B?bCtsTThZSXh2OGJDYUVFa21iS25jNCtDRnk0VlJrRHBkWVBLekF3Ykx0YW9F?=
 =?utf-8?B?VHdGaUpMRzlqWGN3cGtIcUp6OFljeHRqbDRNMGd6QlhwL2RVeVN6Mm5aTkc4?=
 =?utf-8?B?QmdLSzVkY2dCcVc2NURoMHk4TlBFY2xuTzNHRTRLYm02ZFJCZFROV01ab2Ja?=
 =?utf-8?B?V0FGMFRsWjFCMXFmQmtOc3VkTXUySHR2U1dLNHVDMWZFWmhsNnhBTVRMVEtr?=
 =?utf-8?B?WG41UXIzaHRuUVhoQUF2aWRjZ0Vhd09WM3pRZFM2RXN5cU5leHUxRmhGWGYw?=
 =?utf-8?B?Wk1sOXhuM1JNbWp3ODJVbCtua2JYc1hZeHhvRUpFOVk4YjNMV2o1emVKNnFX?=
 =?utf-8?B?QVYvVjhDR2thaExpMEN3bXEyNHlhT1JvUmxua1hoSW0vUXlNcjVDNGNqd3Zy?=
 =?utf-8?B?SXVMa3hxczFJN1N0UVlheVZWS3k4d0YxY2dYY2k4TEZFY2t3MUcrOUdLeUxH?=
 =?utf-8?B?UUE3aEN4RWNKSU9pU1ZZaWk4bWorTnJqSmVZVkx2ZHp4NjlaU0lXV2pGZTM0?=
 =?utf-8?B?dEEwYVo1UlNxdHlkOHRvWmhiUWhKMDFMeFlwSE40WldONWd4R3FleG9qNXk1?=
 =?utf-8?B?SHVFaUtrNUFNNFprL3l4clV1QlhkVGxwcVV5NWVyTUZiWEpHKy9Qa1RLUXZ2?=
 =?utf-8?B?NE9HUzZ1c0VzOVZ2eVRCR2xQNTkvNzB6NGdzUFZxeGszTFQwQ0lXR3hKZXZw?=
 =?utf-8?B?aWx3K0V5cU5MZmcrUkhxb2pSR2xsTXBTMGQ1ZTZtR283aTlZTlRyMTlIYmxH?=
 =?utf-8?B?cWw5emd4STlIdzNkTjZVOUdFY3V2Y2NIUWNpNnFWRmJFYnN3SXRuYSs1aDhQ?=
 =?utf-8?B?SENNZ3Z3OWVxY3FqcTFreVZXODJublNyMFhrR0pPOWdtcEZIdkdsREVVSEt1?=
 =?utf-8?B?YjFEUEU0ZW54bzhPRTZCZzNUSGg5djFZd3I2Q0h5eXMrYkF4TkVjbnVpQkJE?=
 =?utf-8?B?SDQ2ZzNYeEx1eUxvUkFXQjhraUZEb1F4Y09VaW5WKzlrZEFWQXVXRTJqbVdo?=
 =?utf-8?B?MnRLclAxbjJWREYvQTR2bUNVdGhaM1VZVlp0VmtXbVlENlBYVVJlQmx2cEsv?=
 =?utf-8?B?YlZpOTVqS2Z1NVhGWjdSYUNoMkJBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E660511C287B884088F2EC295D9CC488@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1000115-8e59-4ede-5569-08dde4805f81
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2025 09:10:16.5672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MEnElJA9ims3V3XrqumE5PtRTta0QLHUuTTdBfZnSE0/BpfSHOmccCZGmcoC3yVyEY9OWG7U0CWpkOQpVxiWey2t/BHVEWxfsnPGRuxQJ78=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6492
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

SGVsbG8gTWljaGFsLA0KDQpBZGRpdGlvbiB0byBteSBjb21tZW50cyBpbmxpbmUgYmVsb3c6DQoN
CllvdSBzaG91bGQgcmVzZXQgbm9fcHNyX3JlYXNvbiB0byBOVUxMIGF0IHRoZSBiZWdpbiBvZg0K
aW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnLiBKdXN0IHRvIGVuc3VyZSBpdCdzIHVwLXRvLWRhdGUg
b3IgTlVMTC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQpPbiBNb24sIDIwMjUtMDgtMjUg
YXQgMTI6MzMgKzAyMDAsIE1pY2hhxYIgR3J6ZWxhayB3cm90ZToNCj4gVGhlcmUgaXMgbm8gcmVh
c29uIGluIGRlYnVnZnMgd2h5IFBTUiBoYXMgYmVlbiBkaXNhYmxlZC4gQWRkDQo+IG5vX3Bzcl9y
ZWFzb24gZmllbGQgaW50byBzdHJ1Y3QgaW50ZWxfcHNyLiBXcml0ZSB0aGUgcmVhc29uLA0KPiBl
LmcuIFBTUiBzZXR1cCB0aW1pbmcgbm90IG1ldCwgaW50byBwcm9wZXIgUFNSIGRlYnVnZnMgZmls
ZS4NCj4gQ2xlYW4gaXQgd2hlbiBQU1IgaXMgYWN0aXZhdGVkLg0KPiANCj4gUmVmYWN0b3IgaW50
ZWxfcHNyX3Bvc3RfcGxhbmVfdXBkYXRlIGJ5IHVzaW5nIG5vX3Bzcl9yZWFzb24NCj4gaW5zdGVh
ZCBvZiBib29sZWFuIGtlZXBfZGlzYWJsZWQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWC
IEdyemVsYWsgPG1pY2hhbC5ncnplbGFrQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgLi4uL2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAyICsrDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAzMSArKysr
KysrKysrLS0tLS0tLQ0KPiAtLQ0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygr
KSwgMTQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCBmZDlkMjUyNzg4OWIuLjBm
ODMzMmNlMWFhMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE2ODcsNiArMTY4Nyw4IEBAIHN0cnVjdCBp
bnRlbF9wc3Igew0KPiDCoAlib29sIHBrZ19jX2xhdGVuY3lfdXNlZDsNCj4gwqANCj4gwqAJdTgg
YWN0aXZlX25vbl9wc3JfcGlwZXM7DQo+ICsNCj4gKwljb25zdCBjaGFyICpub19wc3JfcmVhc29u
Ow0KPiDCoH07DQo+IMKgDQo+IMKgc3RydWN0IGludGVsX2RwIHsNCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGVlYzRmN2RjMmQ2Ni4uNDE0M2Rm
YzBjMjdjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gQEAgLTE1NzksNiArMTU3OSw3IEBAIHN0YXRpYyBib29sIF9wc3JfY29tcHV0ZV9jb25maWco
c3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJaWYgKGVudHJ5X3NldHVwX2ZyYW1l
cyA+PSAwKSB7DQo+IMKgCQlpbnRlbF9kcC0+cHNyLmVudHJ5X3NldHVwX2ZyYW1lcyA9DQo+IGVu
dHJ5X3NldHVwX2ZyYW1lczsNCj4gwqAJfSBlbHNlIHsNCj4gKwkJaW50ZWxfZHAtPnBzci5ub19w
c3JfcmVhc29uID0gIlBTUiBzZXR1cCB0aW1pbmcgbm90DQo+IG1ldCI7DQo+IMKgCQlkcm1fZGJn
X2ttcyhkaXNwbGF5LT5kcm0sDQo+IMKgCQkJwqDCoMKgICJQU1IgY29uZGl0aW9uIGZhaWxlZDog
UFNSIHNldHVwIHRpbWluZw0KPiBub3QgbWV0XG4iKTsNCj4gwqAJCXJldHVybiBmYWxzZTsNCj4g
QEAgLTE4MTAsNiArMTgxMSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9hY3RpdmF0ZShzdHJ1
Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiDCoAkJaHN3X2FjdGl2YXRlX3BzcjEoaW50ZWxf
ZHApOw0KPiDCoA0KPiDCoAlpbnRlbF9kcC0+cHNyLmFjdGl2ZSA9IHRydWU7DQo+ICsJaW50ZWxf
ZHAtPnBzci5ub19wc3JfcmVhc29uID0gTlVMTDsNCj4gwqB9DQo+IMKgDQo+IMKgLyoNCj4gQEAg
LTI5NjIsMjggKzI5NjQsMjkgQEAgdm9pZCBpbnRlbF9wc3JfcG9zdF9wbGFuZV91cGRhdGUoc3Ry
dWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgCQkJCQnCoMKgwqDCoCBjcnRj
X3N0YXRlLQ0KPiA+dWFwaS5lbmNvZGVyX21hc2spIHsNCj4gwqAJCXN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAgPQ0KPiBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+IMKgCQlzdHJ1Y3QgaW50
ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gLQkJYm9vbCBrZWVwX2Rpc2FibGVkID0g
ZmFsc2U7DQoNCkkgZG9uJ3QgdGhpbmsgeW91IHNob3VsZCBjaGFuZ2UgdGhpcyB0byByZWx5IG9u
IGRlYnVnIGRhdGEuIERlYnVnIGRhdGENCmlzIHN1cHBvc2VkIHRvIGp1c3QgcHJlc2VudCB3aGF0
IGlzIHRoZSBzdGF0ZSBhbmQgbm90IGFmZmVjdCB0byB3aGF0IGlzDQp0aGUgc3RhdGUuDQoNCj4g
wqANCj4gwqAJCW11dGV4X2xvY2soJnBzci0+bG9jayk7DQo+IMKgDQo+IMKgCQlkcm1fV0FSTl9P
TihkaXNwbGF5LT5kcm0sDQo+IMKgCQkJwqDCoMKgIHBzci0+ZW5hYmxlZCAmJiAhY3J0Y19zdGF0
ZS0NCj4gPmFjdGl2ZV9wbGFuZXMpOw0KPiDCoA0KPiAtCQlrZWVwX2Rpc2FibGVkIHw9IHBzci0+
c2lua19ub3RfcmVsaWFibGU7DQo+IC0JCWtlZXBfZGlzYWJsZWQgfD0gIWNydGNfc3RhdGUtPmFj
dGl2ZV9wbGFuZXM7DQo+ICsJCWlmIChwc3ItPnNpbmtfbm90X3JlbGlhYmxlKQ0KPiArCQkJcHNy
LT5ub19wc3JfcmVhc29uID0gIlNpbmsgbm90IHJlbGlhYmxlIjsNCg0KSWYgeW91IGFyZSBhZGRp
bmcgdGhpcyBoZXJlLCB0aGVuIEkgdGhpbmsgeW91IHNob3VsZCBoYXZlIGl0IGluDQppbnRlbF9w
c3JfY29tcHV0ZV9jb25maWcgYXMgd2VsbDoNCg0Kdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25m
aWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCgkJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLA0KCQkJICAgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUg
KmNvbm5fc3RhdGUpDQp7DQouLi4NCglpZiAoaW50ZWxfZHAtPnBzci5zaW5rX25vdF9yZWxpYWJs
ZSkgew0KCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQoJCQkgICAgIlBTUiBzaW5rIGltcGxl
bWVudGF0aW9uIGlzIG5vdA0KcmVsaWFibGVcbiIpOw0KCQlyZXR1cm47DQoJfQ0KLi4uDQoNCkkg
d291bGQganVzdCBkcm9wIHRoaXMgY2hhbmdlIGF0IHRoaXMgcG9pbnQuIFlvdSBhbHJlYWR5IGhh
dmUgdGhpcw0KaW5mb3JtYXRpb24gYW55d2F5czoNCg0Kc3RhdGljIGludCBpbnRlbF9wc3Jfc3Rh
dHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGludGVsX2RwDQoqaW50ZWxfZHApDQouLi4N
CglpZiAoIXBzci0+ZW5hYmxlZCkgew0KCQlzZXFfcHJpbnRmKG0sICJQU1Igc2luayBub3QgcmVs
aWFibGU6ICVzXG4iLA0KCQkJICAgc3RyX3llc19ubyhwc3ItPnNpbmtfbm90X3JlbGlhYmxlKSk7
DQoNCgkJZ290byB1bmxvY2s7DQoJfQ0KLi4uDQoNCj4gKwkJaWYgKCFjcnRjX3N0YXRlLT5hY3Rp
dmVfcGxhbmVzKQ0KPiArCQkJcHNyLT5ub19wc3JfcmVhc29uID0gIkFsbCBwbGFuZXMgaW5hY3Rp
dmUiOw0KPiDCoA0KPiDCoAkJLyogRGlzcGxheSBXQSAjMTEzNjogc2tsLCBieHQgKi8NCj4gLQkJ
a2VlcF9kaXNhYmxlZCB8PSBESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDExICYmDQo+IC0JCQljcnRj
X3N0YXRlLT53bV9sZXZlbF9kaXNhYmxlZDsNCj4gKwkJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkp
IDwgMTEgJiYgY3J0Y19zdGF0ZS0NCj4gPndtX2xldmVsX2Rpc2FibGVkKQ0KPiArCQkJcHNyLT5u
b19wc3JfcmVhc29uID0gIldvcmthcm91bmQgZm9yIHNrbCwNCj4gYnh0IjsNCg0KTWF5YmUgYWRk
IGFsc28gdGhhdCBXQSBudW1iZXI/DQo+IMKgDQo+IC0JCWlmICghcHNyLT5lbmFibGVkICYmICFr
ZWVwX2Rpc2FibGVkKQ0KPiArCQlpZiAoIXBzci0+ZW5hYmxlZCAmJiAhcHNyLT5ub19wc3JfcmVh
c29uKQ0KPiDCoAkJCWludGVsX3Bzcl9lbmFibGVfbG9ja2VkKGludGVsX2RwLA0KPiBjcnRjX3N0
YXRlKTsNCj4gwqAJCWVsc2UgaWYgKHBzci0+ZW5hYmxlZCAmJiAhY3J0Y19zdGF0ZS0NCj4gPndt
X2xldmVsX2Rpc2FibGVkKQ0KPiDCoAkJCS8qIFdhXzE0MDE1NjQ4MDA2ICovDQo+IMKgCQkJd21f
b3B0aW1pemF0aW9uX3dhKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gwqANCj4gwqAJCS8qIEZv
cmNlIGEgUFNSIGV4aXQgd2hlbiBlbmFibGluZyBDUkMgdG8gYXZvaWQgQ1JDDQo+IHRpbWVvdXRz
ICovDQo+IC0JCWlmIChjcnRjX3N0YXRlLT5jcmNfZW5hYmxlZCAmJiBwc3ItPmVuYWJsZWQpDQo+
ICsJCWlmIChwc3ItPmVuYWJsZWQgJiYgY3J0Y19zdGF0ZS0+Y3JjX2VuYWJsZWQpDQoNClRoaXMg
Y2hhbmdlIGlzIHVucmVsYXRlZC4NCg0KPiDCoAkJCWludGVsX3Bzcl9mb3JjZV91cGRhdGUoaW50
ZWxfZHApOw0KPiDCoA0KPiDCoAkJLyoNCj4gQEAgLTM5NTMsMTIgKzM5NTYsNyBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9wc3JfcHJpbnRfbW9kZShzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0K
PiDCoAkJCQkgc3RydWN0IHNlcV9maWxlICptKQ0KPiDCoHsNCj4gwqAJc3RydWN0IGludGVsX3Bz
ciAqcHNyID0gJmludGVsX2RwLT5wc3I7DQo+IC0JY29uc3QgY2hhciAqc3RhdHVzLCAqbW9kZSwg
KnJlZ2lvbl9ldDsNCj4gLQ0KPiAtCWlmIChwc3ItPmVuYWJsZWQpDQo+IC0JCXN0YXR1cyA9ICIg
ZW5hYmxlZCI7DQo+IC0JZWxzZQ0KPiAtCQlzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPiArCWNvbnN0
IGNoYXIgKm1vZGUsICpyZWdpb25fZXQ7DQo+IMKgDQo+IMKgCWlmIChwc3ItPnBhbmVsX3JlcGxh
eV9lbmFibGVkICYmIHBzci0+c2VsX3VwZGF0ZV9lbmFibGVkKQ0KPiDCoAkJbW9kZSA9ICJQYW5l
bCBSZXBsYXkgU2VsZWN0aXZlIFVwZGF0ZSI7DQo+IEBAIC0zOTc2LDcgKzM5NzQsMTIgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfcHNyX3ByaW50X21vZGUoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9k
cCwNCj4gwqAJZWxzZQ0KPiDCoAkJcmVnaW9uX2V0ID0gIiI7DQo+IMKgDQo+IC0Jc2VxX3ByaW50
ZihtLCAiUFNSIG1vZGU6ICVzJXMlc1xuIiwgbW9kZSwgc3RhdHVzLA0KPiByZWdpb25fZXQpOw0K
PiArCWlmIChwc3ItPmVuYWJsZWQpIHsNCj4gKwkJc2VxX3B1dHMobSwgIlBTUiBlbmFibGVkXG4i
KTsNCj4gKwkJc2VxX3ByaW50ZihtLCAiUFNSIG1vZGU6ICVzJXNcbiIsIG1vZGUsIHJlZ2lvbl9l
dCk7DQo+ICsJfSBlbHNlIHsNCj4gKwkJc2VxX3ByaW50ZihtLCAiUFNSIGRpc2FibGVkOiAlc1xu
IiwgcHNyLQ0KPiA+bm9fcHNyX3JlYXNvbik7DQo+ICsJfQ0KDQpEbyB5b3UgaGF2ZSBzcGVjaWZp
YyByZWFzb24gdG8gY2hhbmdlIHRoaXMgZm9ybWF0PyBZb3UgY291bGQga2VlcCB0aGUNCmZvcm1h
dCBhbmQgdGhlbiBqdXN0IGFkZCBub19wc3JfcmVhc29uICh3aGVuIGl0J3MgYXZhaWxhYmxlKSBp
bnRvDQpicmFjZXM6DQoNClBTUiBtb2RlOiBkaXNhYmxlZCAoUFNSIHNldHVwIHRpbWluZyBub3Qg
bWV0KQ0KDQpUaGVuIGlmIG5vX3Bzcl9yZWFzb24gaXMgbm90IGZpbGxlZCB3aXRoIGEgcmVhc29u
IHRoZW4gaXQgY291bGQgYmUganVzdA0KYXMgaXQgaXMgY3VycmVudGx5IGFsd2F5czoNCg0KUFNS
IG1vZGU6IGRpc2FibGVkDQoNClRoZW4gaWYgdGhpbmsgeW91IHdhbnQvbmVlZCB0byBjaGFuZ2Ug
dGhlIGZvcm1hdCB5b3Ugc2hvdWxkIGhhdmUgaXQgaW4NCnNlcGFyYXRlIHBhdGNoIGhhdmluZyBj
b21taXQgbWVzc2FnZSBleHBsYWluaW5nIHdoeSB5b3Ugd2FudCB0byBkbw0KdGhhdC4NCg0KPiDC
oH0NCj4gwqANCj4gwqBzdGF0aWMgaW50IGludGVsX3Bzcl9zdGF0dXMoc3RydWN0IHNlcV9maWxl
ICptLCBzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KDQo=
