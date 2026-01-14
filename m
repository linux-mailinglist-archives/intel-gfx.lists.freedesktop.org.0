Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25826D2030C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB82310E617;
	Wed, 14 Jan 2026 16:23:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cgonPhmM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6B7B10E63A;
 Wed, 14 Jan 2026 16:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407801; x=1799943801;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=z47nBaK13cci2/BTEpjEfI2+kY8xx6Ll2fLZAYyeZ20=;
 b=cgonPhmMS722euIUgUmwFsir9pKkGYHNAjS9uXJiUDvg2xA2IbM4MSGd
 dXEZ7Iam4E131rvx3BV7i2CDokQCMzIiPo/JJH6Ii4sMLBGRSAR6eKKSx
 9wffXVO1Bpm014gLOsvP48Z8Jrpn3ztgfZyFMlKVtFSiz7BnKeifZEyve
 bnQxmfRR9RCOrcv782f52dho/3/i08Q4RNQr655u3/eCXLsaMHlBaP3rJ
 F8sZnS1g4X+XM/jCHBxX/t9YTCATuv0qFntNXs1PiT3lmkDsQWjzAWIUg
 xXeDuhrXS46IdByWR4g9vByWBhT7o2EPXUj1UL+0ts3xifAZsCzGKPHCQ Q==;
X-CSE-ConnectionGUID: JkctPaH0QXav3s44FH9Vzg==
X-CSE-MsgGUID: rNBKN30CRZq5zW2WxeFivA==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="81074201"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="81074201"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:21 -0800
X-CSE-ConnectionGUID: VB7YiCYUSXCMTRb6feYJ8g==
X-CSE-MsgGUID: CdZF3lfmT56e3FCM4gTTug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204508215"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:21 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:20 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:20 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.24) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aiREHHefNzyYmkE3HnybnJvh5FaGOhjra88bpMno0wGS7geQdYIX/qgKSzJBS+UhTbgQrHDDq4Erv7rPBHFfNdEZqUuZa3iQnZT+ZiGFHkQWbYG6qqDxVVq+xZXdtV2jFjYoULoym6dI3JJTfEC8zh/ceSPYEQeNV/JTFoGUa3tEgYsT6PQOmogB+rk57frwsqIqAs4pIhm9LU5vazESqLgb6SVKIs2VA8DcNNf4aN4CpUKHYOyHo876A+h5NFT8imRs4wEGKChnxUjX4S4F/XmdjdLnv3QVXHJZSpg5x5ZSQ/Zi37HOGBetr9MUNvUF83g3oP42tt1klTZtJqnjgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i+FNhZOqcb7bbMmuWAb9gY3/RTpmpz8KGSlr64JHoRo=;
 b=F+V9PcE8zS6OUQ/0vX0S/1Xiu4yeVOuouOI0Kv+3ahu5b50V3BKmnUbT7Th/ADXYhcimzCv48FL369id6SV9TGWOvJglGb1qH0N3vFquADzN7NfwSXAHjj0dPDrlGOln0/57p0KhGlFpG5eYkRYNYdxxWuYBJmAYwNQIsFdaDwvltmee+X7CHmjPgXAmlfZS0TLEru97N9bUfKLx6XeX+AenlcJveyc6LJqO5UxKAf5SvtiCiJE+hzSQhRXAE5apCRfui0tXzz/5KIO0W8ZSgQVEWF+tYo1YTyLXwD/kYKG+Y8Q0NExkDC+Ls3Tw7OPBRs19jbBMntzS7g9Upq2J4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 16:23:12 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:23:12 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 15/15] drm/i915/dp: Use intel_dp_dsc_get_slice_config()
Date: Wed, 14 Jan 2026 18:22:32 +0200
Message-ID: <20260114162232.92731-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: 22ce9973-afb1-41e5-78ce-08de53893694
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YzVkL2pMSW1MWXo0cTU0b0FUL2tEWVMwajlaR0w2aUVmNXJvS3dBYjVOZjJp?=
 =?utf-8?B?MEdEeTNXWGYrb2ZFYjA3dTArRFNlalFVckE0enVwWWFaL0FQYi90MHJnQlBD?=
 =?utf-8?B?Lzlkem5zYkN3aDJFSkpSRm14dEhXRVgycmJPa25OR1V1SzB6Q3ZJeFdHN20z?=
 =?utf-8?B?UkNJWFFlbjNvVm1CNndmMWEvVzhGL1pzSFBBVUdPWGgwb1JMVVJscno5UVFr?=
 =?utf-8?B?dUpmUFpHMTBhckxucUxZeFBJNFVHK1VZeEpoV1grZngzTy9ablRwbEN1L3F4?=
 =?utf-8?B?ZUtYR29aMlg4MzhJZDI5UXQyaGgxTk5GQVFscGRmWUtsZjR6R0Z3NENqMmgw?=
 =?utf-8?B?bG8vaWJtSk5KYi9JYmVHYlhHZXZZeVdZd0tKWkwyYW85R2pMR1MrOEZWUzJr?=
 =?utf-8?B?dzFsK2ZrZTZBS1RpbzBPaDQ5V3FBVmlReDNRdEo0WVJLYU8xY1dmOG9DSFph?=
 =?utf-8?B?SG5pREpndkRYWWZVOVlWbkN0ZDNmSVlXc1F4YlJiUnkzRFI1UUU0cjA5Mzhx?=
 =?utf-8?B?UC80b0ZWZEpLVWwxNUxHVlcvbVltMFJ6TDBsVnFNK1RXanJsWGE2WGdQblNl?=
 =?utf-8?B?UDFNdWRVaDB3QkEyU1FhS1lUc09jeU9WbzNJcXRQbldnTlpaM2hCYm1GNFBr?=
 =?utf-8?B?elRKYUtHNlNHVHFKTHMrZHg4RTI1ZmlBckZpc2M4WDFqbjNuQ21aZ1RYZUxk?=
 =?utf-8?B?a0NVc09Nekp4cG8rQ3BBck1tTlFuNEFaVm5XV2Z0dnBUZ28yeDgrcEZFT0xi?=
 =?utf-8?B?dmdTL3FqMGlsQWZrb3JDNlA1dmhMOWkrZGpOeml6NWJraGNCK3I5ZXZWZFNl?=
 =?utf-8?B?WXJyQjYrbzZnejVCMmppSkhKVHlNTmVab244di96SnJSaTlReU00b1ppNnBw?=
 =?utf-8?B?bWpSMVJRNmttZEk3N0I5dWZ4TmlGUHZRV29tcVM0bHFaTDM4UGUwcDNLVkp6?=
 =?utf-8?B?c2QvZkIzeWhZdWJjbytOQkhuTE0wbDdhRGxJSGdZbWFGR2NpMTRrZmZLWU9y?=
 =?utf-8?B?NzdlR0tHVlltdXY4Y3F4dDY0RXZvVFFyak5jOHVIczFHbGhkNEtxREFtYzNw?=
 =?utf-8?B?Y3dpWGdXaHlCazBkLzd3N2NoNXRKQjJYazVyY0tURlJpQmVWR3RKaFlVVkJN?=
 =?utf-8?B?bnBUQlV0TmtlcDVyaVdxdm1IbzdGM3U3OTZJdWQxb1AxOVpVKy85SVN3YnZj?=
 =?utf-8?B?NWozRVFVenlucUNYOXJGbzJoRWVlZ0kwbFFXdHZVaG9aTk41czB0Qmx2VzRy?=
 =?utf-8?B?bndHbmI4bUYvNzBEUzdtM2ZlN3ZRWHdyRkpkUTV5S1NmS25ZRUM1K0JJVmF2?=
 =?utf-8?B?aXljNGJqVE4wNi9LRWUxakxwUTlXNW9aUHcrSjB3RnUzTWViOS9zc2x2SFNU?=
 =?utf-8?B?SkR3UjlRWW01Qm9Gd0JZWnF1QzBSZ0c4K1ZFTWYxZlRmMlVlSE1tOXlIZGtI?=
 =?utf-8?B?MUVabzArS1hZbGx5dWZrOGJFZXFLa3dLU3B4ZlVEQ3ZMc1BhTXhIRFg1L3JS?=
 =?utf-8?B?VnhRN3Z5eGtpK2JPNkFOSXFYa0taeTJlT28wV1BqL2lxMnA0R2JSSGkzbTRG?=
 =?utf-8?B?L21FSEtyWDRmOUFrYWI0aTVTbTVvOVhjcUhQMlpTNkhIc2JsK2hqUzFyUWZh?=
 =?utf-8?B?QWIyWDRiWWNyYW83VXFQMDJ5UU9aTE8yMWxUanNqVHg4Ly9qWldLREtwcmZi?=
 =?utf-8?B?V3JGdGxZMzZ0bzU4eXozRmx0Y2hxL1cyVGt0MmVTbEpoZi81TG9aeW9BVmlQ?=
 =?utf-8?B?Mk1yVGxzeVdYQlVMOFg5bkpHbEVpdWprVE5YdHAxUnlLVUErc2JRUWsrR3hN?=
 =?utf-8?B?KzhRS2EwQTlKTGJzYnVWWXNSR1I2cWVCZ1FuS01HeHBKREZIUlkybFYvbmFy?=
 =?utf-8?B?ZHpzSkdZckZvdkpSUlRjUnIrbHVBUnkreE53aGdNWEpZa2RrZ0twejMxbHAr?=
 =?utf-8?B?eHo0bFFEdVdPNldER2VnT2RQQytVenBjeVc4dDVpeFBSbHRncVJrbUVCSVlV?=
 =?utf-8?B?VHRYdHNiZGlwbFJhMWxRdlkzK2NTSStOZU1wTnJTODcyN3I4cUd6UHduWm5J?=
 =?utf-8?B?RkRpYlNkbzlweldoRGVCWVRQYWx3WmxPUVJvN1hSL3NGNUVPSUtSQWR2YnBj?=
 =?utf-8?Q?tKvE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVhTYWdzekxOMVV4OGdidnpWbzg4aythU2NqbHMrQi83UkdnTkFvSUdkcU5Y?=
 =?utf-8?B?VURjaFZpbGdwTUNSQXRIRFVtbWVXUllONEN5bEl6MHJXWXBZN1h6K3ZaZXda?=
 =?utf-8?B?MUVJWlhjRE84NnlWVnptQndEamJleWEwWFdMV2JaN0N0eG5PMiswVGhoUTgr?=
 =?utf-8?B?L3dVbHRjZTVPM3Z3dnpoM1RyQTg4WUpWMldrbWU4bW9zTmJ3UE5IRHFWbmdM?=
 =?utf-8?B?UHljS2VweWNiZ3I4S1YzOGxTUGRITEZ6ZnJDUVZEV3JuWkpjMHFvbExDWis2?=
 =?utf-8?B?OGlRVW1mWndBMTNqQTZyWkRENktuZzY0WC85MmFyeHlGVmYzWnJlRVdwdzZI?=
 =?utf-8?B?T0tHSWlaa1FhWGdKZHRza3hHZGtVYjVnNGV0Z1dCb3pDSnVWVERsc3ZJams4?=
 =?utf-8?B?Q29wR09FUXA5M282THp6TXoyZ1JhRXlINFRSWkk1TUpqYWh1bFp0VHdWcFZx?=
 =?utf-8?B?MllCbDhsaEhlMjBldnh2bThFVVNwbWFzN1c3SFoyVUdkVS9NM1VWL3RjRUpQ?=
 =?utf-8?B?bDV6QTR4eHJPblRqVVJLSEdNTURUdlIxeStQeFVQNDJzd1BkZ2gwRnVoakVF?=
 =?utf-8?B?SEQrcGlHSTVSZlgxb3ZOUWtJSVl0ay8zMDNOcWVSZDgwUUk5eVhQT0g1UTBh?=
 =?utf-8?B?alZTUVgvWHJPWk1WMXd2WXVoN0xoQXlHRzJGa2thKzdrOUU3VnJYOUdDZ2dJ?=
 =?utf-8?B?cWJ2WWFyR3VjYzRKM3d0V3hBaHhVeXVHVDZzbmtSbmhmMU9ZbStlZTJIWnpv?=
 =?utf-8?B?VVV6RGFGUzZyS3NQWVdvTnlnN25rb2o2SlhHaUNLelNCOWJ2ektlUXppRU5E?=
 =?utf-8?B?aGxOWnhtT1JKOVV2Z2x4YTNyNENhYkprNTQrOUppU2hIWkhwMURtbU9VanlL?=
 =?utf-8?B?TnJHQzVYNDY2RnJRTFh6UUxZc3N0UEZFcTBDaEhGVUdiWEUxUVBhS1ZOUmdh?=
 =?utf-8?B?WjhuUnJ0U1lrL0J2UUdDRUNnZWw5TFdiN2tJMWlsa21BbTJBQkdmd1NlUDZF?=
 =?utf-8?B?aW5pcjNYQWl4RlNhZ2tFN1JOSmphZWpqOWF3VStaZTM0UlptWmZPWU82WUEx?=
 =?utf-8?B?SXlxSm5Mb1J5SW9BRlRua3VGdHdoNFZuOExEdDN0SGFEUmZYWUY4OFRGczJR?=
 =?utf-8?B?YnR6OWhnYXdRdDc2QWJWS3ZCMDJ2Zk9sT0RSUXFjdnQrTFdHS1FLTmhjbW11?=
 =?utf-8?B?UFJyR1ZMOWJ2dmhvajdlN0tkT2JZQXNXWEFuWDdySUdIZTFucXRuWEpoL3Bp?=
 =?utf-8?B?VFBlYlFhTFdqdEhPYTc4cjFUYWQ0WFl0c3pmdnJiU3p6KzdUOWs0dFNQMkEr?=
 =?utf-8?B?SzNqL1o1amxrVDdnQzFlbUdmakdmMEdzK3BaVTM1ck9nOGZCUVNRSGpDN0lm?=
 =?utf-8?B?UnRVMDJTMGdMbmV4T3RPYThEVkp2RVZCU1FyTXlvYStQSk90M1NHcGN4MlNY?=
 =?utf-8?B?VGFsZk1QQ0JzalV0VmxXTjhlNDlUMlJ3dStHS3NIdnYwUk9TTXVCRVhPZys2?=
 =?utf-8?B?RitpNzBralN1VmFqMXlpVnh6dDRyeXNHVDNDT1lvN25hVURYWkt3d0tvcGhG?=
 =?utf-8?B?K1F2L3dlMDh0b0U0SXJnM1hsNmNLWC96RzdSa25OWWlFVEN6aW01bDlwWTJ0?=
 =?utf-8?B?WVMrQ0RaSWswWFp1bHBWYlZLc2tmS0k2NDhGZzNyTmxmd1pvRHhKWnNjMDFl?=
 =?utf-8?B?SHBYL3l2bkJHZXRrNWF2cTA2bGkwNGJFd1cxZHZua0Q1OFVkbXlCbzcyT21j?=
 =?utf-8?B?NWZyMll5eWtsbE5zUVJsYzJTWmFuNm8wNUNSaHR1THA3MFdmSzNiZlF5QWU0?=
 =?utf-8?B?NFVPRVk3ZkxRbUk3YkgzQzgva1IybTZRL3B6N0F2NUgreGN2Tmx2cWY1VFA4?=
 =?utf-8?B?ZnpVWUgrNWtOUml5OWFhbWtlYkJZdnN1a1NNa0hwWTFsUHhPQ2pKTloyQzBE?=
 =?utf-8?B?VWUxV2p4UDl5cm5Vd1R6R2NWV0VjZVUzV080Z3VvQm9MMzB2STRHY2pBcU9z?=
 =?utf-8?B?MFlFblhrMFRLTXpDUUdXb2xtNTdoUEROWFZMb0JIcU90b3VwQlBSWkxXZlJC?=
 =?utf-8?B?RjhFYm1FOGpzWThUeXZiYXNuS2Noek96TkMra0Jha2w2OXYvYWpvMlpjU1Zx?=
 =?utf-8?B?clowcFRWYjJwcW9HN3hiMjdITzdrV25sYUkzYnV1NXFPM0NXb1F1ZGJOSFMx?=
 =?utf-8?B?bU9XWnVrZURpNEFCejl4ZDBiTldkci9uWGRTWXRrTmt0OWhWMG1teXZlQ21H?=
 =?utf-8?B?cnJ5MzdzSVJUdDFqcHMvT3hzUFFqM2RMRzBGVU5rZ1J3ZDY3VlpGaGFTUE80?=
 =?utf-8?B?NEMwc0VNUk1SNW1qd0lYZVQvM3d3eC9MazJCQWRwKzJBd1RneWpaREl5NmQ5?=
 =?utf-8?Q?J4Is0If7v5+NqV1YKmN0KKXGn//X/ZyMmTlhbjNIh323F?=
X-MS-Exchange-AntiSpam-MessageData-1: 4GWx9hu+pHpHNQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 22ce9973-afb1-41e5-78ce-08de53893694
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:23:12.5793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b3BoXhG+eJvw3ccgH6XASYWUIyJV6TqK9W5ctXHMrOTGxv8SrHULTf/Uojl74+UolNiZV6iFZUYHnjdCWe68qQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
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

Simplify things by computing the detailed slice configuration using
intel_dp_dsc_get_slice_config(), instead of open-coding the same.

While at it add a TODO comment to intel_dp_dsc_compute_config() to
explore if it's worth increasing the number of VDSC stream engines used,
in order to reduce the minimum CDCLK required.

v2: Add a TODO comment to intel_dp_dsc_compute_config() to explore if
    it's worth increasing the number of slices in order to use a lower
    CDCLK. (Jouni)

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 41 ++++++-------------------
 1 file changed, 9 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ea9c4e3b7d35..053443eea9d50 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1041,6 +1041,12 @@ intel_dp_dsc_get_slice_config(const struct intel_connector *connector,
 	 * ICL:  2x2
 	 * BMG:  2x2, or for ultrajoined 4 pipes: 3x1
 	 * TGL+: 2x4 (TODO: Add support for this)
+	 *
+	 * TODO: Explore if it's worth increasing the number of slices (from 1
+	 * to 2 or 3), so that multiple VDSC engines can be used, thus
+	 * reducing the minimum CDCLK requirement, which in turn is determined
+	 * by the 1 pixel per clock VDSC engine throughput in
+	 * intel_vdsc_min_cdclk().
 	 */
 	for (slices_per_pipe = 1; slices_per_pipe <= 4; slices_per_pipe++) {
 		struct intel_dsc_slice_config config;
@@ -2388,7 +2394,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		&pipe_config->hw.adjusted_mode;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	bool is_mst = intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST);
-	int slices_per_line;
 	int ret;
 
 	/*
@@ -2414,39 +2419,11 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		}
 	}
 
-	/* Calculate Slice count */
-	slices_per_line = intel_dp_dsc_get_slice_count(connector,
-						       adjusted_mode->crtc_clock,
-						       adjusted_mode->crtc_hdisplay,
-						       num_joined_pipes);
-	if (!slices_per_line)
+	if (!intel_dp_dsc_get_slice_config(connector, adjusted_mode->crtc_clock,
+					   adjusted_mode->crtc_hdisplay, num_joined_pipes,
+					   &pipe_config->dsc.slice_config))
 		return -EINVAL;
 
-	/*
-	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
-	 * is greater than the maximum Cdclock and if slice count is even
-	 * then we need to use 2 VDSC instances.
-	 * In case of Ultrajoiner along with 12 slices we need to use 3
-	 * VDSC instances.
-	 */
-	pipe_config->dsc.slice_config.pipes_per_line = num_joined_pipes;
-
-	if (pipe_config->joiner_pipes && num_joined_pipes == 4 &&
-	    slices_per_line == 12)
-		pipe_config->dsc.slice_config.streams_per_pipe = 3;
-	else if (pipe_config->joiner_pipes || slices_per_line > 1)
-		pipe_config->dsc.slice_config.streams_per_pipe = 2;
-	else
-		pipe_config->dsc.slice_config.streams_per_pipe = 1;
-
-	pipe_config->dsc.slice_config.slices_per_stream =
-		slices_per_line /
-		pipe_config->dsc.slice_config.pipes_per_line /
-		pipe_config->dsc.slice_config.streams_per_pipe;
-
-	drm_WARN_ON(display->drm,
-		    intel_dsc_line_slice_count(&pipe_config->dsc.slice_config) != slices_per_line);
-
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
 		drm_dbg_kms(display->drm,
-- 
2.49.1

