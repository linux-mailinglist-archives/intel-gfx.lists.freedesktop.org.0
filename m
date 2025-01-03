Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0184BA00927
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 13:18:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96B5D10E0A5;
	Fri,  3 Jan 2025 12:18:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CRAREM0Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B71C110E0A5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 12:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735906716; x=1767442716;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bY9LFidW8/m++mhIo+s1LoWnUk96s9Lto43aYFO6vIg=;
 b=CRAREM0QZKA2IRLdP8z86ZvKUsa6mF+U+vN0qDpBLiyzGH1Ji5jbiHEq
 9TZpH5VKy0A2UfFq9fQfHz5AuQO//kUu7FgdZ24kiESUZ8wDmQBWyQN+s
 WPN0MGGEixTtc5BZlaklcrudyVLVcLsUcjg8LmEQirDsFwRuA4WGmAWQk
 0ko+RO9j16y4QNHtQt8KyTGAweMqgQYnCnHQw1up1v2ynVdUhIBNwvzw7
 57bksVb7Hggv/AyPHV3XxxhJ2FY4ZWrLjX4qHw9RB/XNhrgTDv/CTbswL
 bcg+t2hNFA4cbxvuAcbDXgnBYW+R5dn7t4kqCVQgkRH5RYW5j+w/enqzm A==;
X-CSE-ConnectionGUID: 5E7NjDjTQOiVRqjieJuKRA==
X-CSE-MsgGUID: kZnckEm1S4muELu1qF2p3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36378927"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36378927"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 04:18:36 -0800
X-CSE-ConnectionGUID: eLF1Fp3qTc6ruJH+faQOsA==
X-CSE-MsgGUID: 51ujy19ARkeAQ6CWjz4wqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="102257988"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 04:18:35 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 04:18:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 04:18:34 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 04:18:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SYIDMR/2NKP4JP/yLmcXiXf+PIUIKuFtW3Rns/36DDkyk+e+X0Xqegv+BjH/un3oB7L3k31p2W4olz/4Str/62iavkIB9/AUKei+8yuQNurlznJ2wk3i5Db39sM4ShQwhB4t85dDhtSxxh3Nj4kEEDJHQwJtN+Y02T0OEVJuY6vqL9wLs9QDnhsTT8PGyVRmGtYw4c0gAqVIeKduupdp2G7UbLMxsYGxMgxGrRgxbgL8XLglvL0tIM1NaRysS8HtqvcXJxcx7T3CMxcexc894IXmIr9yAuJ9lkUbjB8nPPRLj5ZsLby6l4W2hyrRbLll03o4s7wCd93Y/TGbSBgWdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=chgrWI75Dk5u+BwOp9BQz39yTzcAPypOq+NU3p14bzQ=;
 b=SAokpnZ3Nu6udJ98vsLZnkCnBghOFIdzfNgv7q/B+DvL+xb4kjHFFMAP3UifbTv5Adx2NYl2Jo90DgtyevM4U/iGZs4z7XYx0DyHUrqdS/NSpg3QyNKWW3wd0881/SpMhqeuYbKOvx9uGLgXBXLyFbH/DvpQOl7MFKOfJYpyaF/SkLxPgsail8jrCoTY4HI6yRXGaAbKZV5jx2mfxe5Rr7CoRLnNN4FNOlYyfJVnSbE5T4f+0iurPNqg4WwlVzxDGukEC+hHueiYW44a+8DfdJSl0IRPrets1xxwI715unEJRsf2vlwdH1pcLck37N08Us3K+iLP8n6yQn6FjxmUNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5076.namprd11.prod.outlook.com (2603:10b6:303:90::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.12; Fri, 3 Jan
 2025 12:18:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 12:18:29 +0000
Message-ID: <ce1c10bc-22e2-4d47-a54e-b64c9c8cc65c@intel.com>
Date: Fri, 3 Jan 2025 17:48:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/18] drm/i915/dsb: Allow DSB to perform commits when VRR
 is enabled
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-19-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-19-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0091.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5076:EE_
X-MS-Office365-Filtering-Correlation-Id: 1002cfbd-fb6c-4ece-154a-08dd2bf0bb30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cDVkMmxjQjIrc1BUb21QaWFQSjhLclNkb0prSjQ4YXJkb0puV2Z3NHY1RlBN?=
 =?utf-8?B?ektpNU9pTEJaUklBcFI1eFYzTHJTWmxscGs2Um1aWFF3cUVDQkQ2cEwzTEM1?=
 =?utf-8?B?emV2Y0VjUmU1dExlWDZKdkNxbGhjT3h1bnpQZ1JoSHEwZFZKNElLMTVtazJO?=
 =?utf-8?B?eUp5R2VuMG5qOWtmd2x1cVlDVklnTW8zNnRCOFAxcVR0Z2YrSWh4OExjSEcv?=
 =?utf-8?B?UlgycTdpbVBuVTJjT2Y1NDFxTVVDRjlqbHhmSGxnRnB3d01pd0FQNWtEcUli?=
 =?utf-8?B?dXZtalNvYTRORnlzRGVqczZ6TmVXL2xnYTB0eDllL0JzUk5zVkhYU0J0VjIz?=
 =?utf-8?B?S0ErRVlmWUQxeldQc0hRd3huZzd5eDN1S1IxL3FienhTUjl0S1NhVlFXa09O?=
 =?utf-8?B?NytMKzN2QkJVQVRqeWZybWRjVXNrNUV6U2xhbXZVUW1IYmFEY3ZwdVU1d2RO?=
 =?utf-8?B?elNqNkU2R0xOV1BNNnBUUnFJTFRUc0FralBRQTh5ZkNyMUdQSDR1MXJ1aXBM?=
 =?utf-8?B?TVJWTXBIcEs2TlBCbWx6emkwUHlYY0pmb2ZaS3dwTnFxN3BpeVA2bDhvN2th?=
 =?utf-8?B?UnQyRXF0Q2dOaEtCMEpHaExXNUNOTkNVdlIzS2NGRU9JR2Y0TmFVVmxqaGM4?=
 =?utf-8?B?WkV3ekF6dHVuSjdEc3kzT05NTXBLNXNBY1NweE96Ym5ydWdCenJ3ME8yblUx?=
 =?utf-8?B?NFRBU3UzVXIrS05KNDg5dllNb3dCVEowRXdGWXdDNEwrQ1RPNC95clkwMkda?=
 =?utf-8?B?WFVJUk04MGZaUzRoeFNKZFpCV2tCM05wN0hmeExjci9pMCtSajNtZW40TGlB?=
 =?utf-8?B?N3FHWlJvUktBb3lOOW5NWGdRYmxRZnJEVjlLeFJrTENEZjFRVmM5bTB5YXRh?=
 =?utf-8?B?UDN3dEphcy9ybStXb3B4cVBVM3BvYnZPZmN1aG1sSTNrUzRjZG5VYUROQUl1?=
 =?utf-8?B?Y0pFRnpRcDJIS05NRnpHcmQ0RkFjVW9vbEFKcE1HMFF4eFlRb09TaU11S29V?=
 =?utf-8?B?ODF2WG1EMmZmWHhjamtrcHA5NVIveXptWnNPOTZFaTRzVWE2WEl1dktNa2Nw?=
 =?utf-8?B?cHJFQjFpTEdLdnJZejNycjh0QzZHVmVlbGI3KzQrM1pQWSswNmV1WWVtSWRt?=
 =?utf-8?B?YlpQVENqNmtIaGVmS0UzRFNLT1dQZm1yakVQSUFrRFAwYXVtbWNkWFlPUTJh?=
 =?utf-8?B?dTBpS2ZzV1phbFFBSzNYdDduTlIzb01yY0d0dXgwdGswaWkwL0RLUFhrMi9s?=
 =?utf-8?B?cjR3dVVYN2ZCOVlxM3BNWnU4VGpxblJXbHNIV0x3VjhuN2lmUzArMkZXcWM0?=
 =?utf-8?B?amZkbXBhcXB6bnM2cHRIZE5yRUJCS1dIWTh6SFpHMVB3aUt1ZkRYMVhjKzRU?=
 =?utf-8?B?NFhPQlJDQmtkdXRWd1ZxNTV0UHdHV01uT1FJZHcycXdoMURkRThnTWIrY1Jr?=
 =?utf-8?B?QTdPT0NCY2VQck5iRU1XNFY5OWZ3MGFBeUpJekU5bUh4dEpZL1NISUorckhl?=
 =?utf-8?B?M3RKQ2NHZXl2dkZuT01oTW9WSE80a2cvZ2ZOT1JEcGEzS1d6djZSMGRXcGdn?=
 =?utf-8?B?ZExiZk4zcHY5QXRXS3F3VGxTOW0vU09ob1M4VElHY3hoWFJvdVh5WFRGNlFi?=
 =?utf-8?B?TkxwbCs1b2NtekVhQmdBK1RvYnRncFNQZmM5N2dPUjVBM2tSN3ZKeFhTeHNE?=
 =?utf-8?B?bjl5T2F3eExBNWs1MWZ2YllHRllodDJkOFdkdXBJeTAyOWZRc3BzblBITXhJ?=
 =?utf-8?B?OWpmQWg2cXJLL25HS01GVFBZQzBKSXZSY3Bxc3JXSlJMU2J0TVgvbHBxNWJr?=
 =?utf-8?B?Y2tGZk1UTDZONjA3TG9CNzhQKzNiUHV3UCtNS0VXbGpJc25IRElOOHFxdVFn?=
 =?utf-8?Q?n9V4/dREbSz6K?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWZaVFI2U1dWczI3Znd1ekwzdHc0blpmbFEvYmpxS0Z1RTZrRWlKTXJUV3NV?=
 =?utf-8?B?cTlhWW9sempsSTU4OUdZcEFCeUhSbHN1Q1R1b3ZFYVZUY080NDVpMHA1Zk1E?=
 =?utf-8?B?OHpMbTZJVFBFeUIzZ0NGK0RGZG8vOVhJV3lQRE5sWUZHUXoxMXdpdWNVT0Fi?=
 =?utf-8?B?REF4OGF6em5nTFM1V2dxOEpTaGQzYmhnWE14ZDdSakxWQ3dQdUw5S3B1R2p1?=
 =?utf-8?B?ckUzSWVSSG1NVWVQcHltN2c3WGJsSTZIZVBmM3hxK3FJOGdEcEhQT2l3aEdx?=
 =?utf-8?B?bk1ZckV1TnJ2WEJoRW1od21JY1BoVUhkVFNoNW12aTFhd0tuTmp3SHlJaG51?=
 =?utf-8?B?YjNqNHNkaGRRWnRuRER0Y2xSY0s4MmhJWkZJaXhEeGwwRFNIN0hFeVh4dERN?=
 =?utf-8?B?VS9TWUdITUp3Q0wwZHpXcENCdUtkREZRai9OV2h6TjZvWjZUVHlhLzRsUysy?=
 =?utf-8?B?bUFEemFHc2dSRllGbXhXOHBrVzVEcUVGaDNjZUxpSS80TUV1OHVZV0dnRmFw?=
 =?utf-8?B?K3A2YVdoREtYcTVxY0lTL3k1NnEzTnZpU2xSS2JxUGdiL0I0SytrOEdNZWdU?=
 =?utf-8?B?MDhPVVRSbU02MHRBd2pKZ1N5eHBzNkdtbzVFUFZUTUYrNmFXYzZpR2ZkTGNp?=
 =?utf-8?B?bkIrcVliclN6Qjg3VHk4ZS9iK2NvQkpSUVFFNWhzTURHM1B0U01DaDRLZ3BW?=
 =?utf-8?B?QkIwL3pvQ2V0azU0SEN4c0dBdlNlYnJ2RGErOTMxRmQrY3YwVUFLeGcxd1A5?=
 =?utf-8?B?QTd4NlNabXNYdFJGMnhxWU5LOEVGbU9ZMzdLRVhCREtCblJYNVRPSzZGNDZS?=
 =?utf-8?B?VytvbksyTHdXT2xwWmV2ZFl3QVRiRFYyOE50SUdTUUdZNTRjQ0NadndHeSsr?=
 =?utf-8?B?VmhNRGxzOHA1SnlqOEQ3Rko0c0JrZ0tzbzYvSXVrNDdzY3JGd21aRTM5SWVZ?=
 =?utf-8?B?YUpGTGtBQ0k1eUhnMjhXNiswNGh6RzFGTk52RUV3YTBsVjA5TmlGU05saDFa?=
 =?utf-8?B?Yi9BTUhsNzhVVEdSaDJtOHZhZkQyYnIxQ3pzQTExb0VpZExGNUtSZ1N2QkNh?=
 =?utf-8?B?d3lKM3pwTmZ5aEU3UWZ0Y0dsMXg3a1h5NU9VUWcyTDQ2NmZxZWFiVHl4UVUy?=
 =?utf-8?B?MFh0L2ZKL3Z4Y2k3VFVEVjRqWmpOeXlJYUpwdlhSRitFV2hveWdBVkpwdGtx?=
 =?utf-8?B?RTRGaW4ycWlDVHlWeHhPKzAxanFRUzlQL0ZZNGU1YnpPUzlSSHR6VktNQWZm?=
 =?utf-8?B?TVlvV2pxVUtHWVllcHFVcEsxbE15Mit2UWpqVE5ub3Z3bmU1R0lBRjl6L2la?=
 =?utf-8?B?aTA1SUhLMUdDdmd3K0hOaTZIMFZRUWtYWFVFVFQxdDlyTVBwYVh0Nm8yVDV0?=
 =?utf-8?B?eHh1aytWWW5jV2xHL2F3SktKcWlhc2Z2T2hRNXN3SFNCbHVMT2gvdDhPMGZL?=
 =?utf-8?B?c0oySkpmUnp2WWZoeFZ2V24vSEZFUlZad1YrdHhhM2pNNVM5Umc4elhyc0RF?=
 =?utf-8?B?N2JnN0hCSnBqajNQVndEUDU0U0k1bjAzbzAzem0rQUNDZ1ZmR3hFb1k2cTYy?=
 =?utf-8?B?M01IWUkxRDFVUzR5dVdMZnpMeVEzOHNvQmRraEtGc3FZNjh6dm9WZFB1L1A3?=
 =?utf-8?B?UVFOWExCbERRci9mS1JyUG9US1B6NTliYW15T1JHeU91aVYyWUtHRUxMS3Qx?=
 =?utf-8?B?U0EwU1RicXlLK0hMZUVBSVZPVHVJeVZVM3J0by9CdnVvZVFkbm10eDM3bmtL?=
 =?utf-8?B?Zk1lYThHdll1blhKaC9CWCtHYWZHQ1ZtSlBoL1prQThqSHQ0WXJXOGlSOGhY?=
 =?utf-8?B?ZTRxL1VpL3Q4RTBxdnBScFc2bDl6djlNci9GcnY0WS8vQWxtam1uUi9SRFVO?=
 =?utf-8?B?VDFKYnRHcWtxdjVTcWNtdDVEUE5QcmVaVG9rUXVyZW9mTDVvUmUxaFl4VXJp?=
 =?utf-8?B?RmsvNnJGRm0rTkdmR3UyY1B5MmgrYUZhdnMyRGRCbHVERHBCakRxUmJLK0xo?=
 =?utf-8?B?VWNYdXlqdWpHd0RhQklOTW40bkRzYjdjQXRUTEkxeXdJZXpwTUJhQXV4MzJK?=
 =?utf-8?B?MHI0cWhuaW8reTdrWER2RmdpTkJiNXdNK2JPRFNHRW9LQWo5Nlh0NkljaEFn?=
 =?utf-8?B?dmhBRWd0ZTI3anlvb0huYWQ0bVpaUEpXYjdWUHdkd1N5OFhjWE9MOXFiOGww?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1002cfbd-fb6c-4ece-154a-08dd2bf0bb30
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 12:18:29.2969 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PIFZqne60bc0RrE6lnCPLYLTCh8xIsImjIr4TyYunq11HRTV3PiTciDogl8qh9qvpqs2XtZdDewupU8EToFD+zgTBnNEPxw7ytA/x3HuuOg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5076
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


On 12/11/2024 2:40 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Now that we know how to issue the push with the DSB we can
> allow the DSB to drive the commits even when VRR is active.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 1 -
>   1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4b3199dcbe7a..171f65e5be9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7692,7 +7692,6 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   	/* FIXME deal with everything */
>   	new_crtc_state->use_dsb =
>   		new_crtc_state->update_planes &&
> -		!new_crtc_state->vrr.enable &&
>   		!new_crtc_state->do_async_flip &&
>   		!new_crtc_state->has_psr &&
>   		!new_crtc_state->scaler_state.scaler_users &&
