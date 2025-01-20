Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB93A16D27
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 14:14:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818CE10E3ED;
	Mon, 20 Jan 2025 13:14:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y0I0vQfS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CF7C10E3ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 13:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737378865; x=1768914865;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3ON+2TOMCTVHqgz2iOglmQXKWiaXtM9tkQlZZS17DuY=;
 b=Y0I0vQfS9hvJkMx0A7gKJBsCoZs7Xk45WbP93N9ZcT6cEW56rw9q9MsQ
 u7TAecreM0TgmZJh1ll9IR3expB/ysyL3LWQELtM8u6U/fuRjPVEWKksG
 pknM6aJFWGRsP6U058oVFkrCik4FnuivFlLQhhUckqflzcST5gkfUXknq
 TZ7qejukc2eViALwa+uAUE/jcauFogGo4gEdDGmJW0MbnIZnDAvD6fA12
 HHWhO99e6UDkCV+4vneh2WJBqhu9Km6f+52jp1FOQYieJ/g7lMHGZsIGY
 QVahqLS8bbxmHRFJ8Anim4wMbeL/XBkLV0te01rNfJVSzdsRh28Cu7Y1Y g==;
X-CSE-ConnectionGUID: 8aE4ktSATNSpfJMXgDJMVQ==
X-CSE-MsgGUID: z+X7yTbeSpq0gYv3DejpGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="25371934"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="25371934"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 05:14:24 -0800
X-CSE-ConnectionGUID: GeaWRAqGQyKl86m0Ec9Sbw==
X-CSE-MsgGUID: D9NwoTQSRbKO5lYceGDo2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="137412036"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 05:14:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 05:14:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 05:14:23 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 05:14:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QZ8Q/Ik5o6sQEpP2tieCXH3PpVQkLCnv91kEdfDB7kF93/5mY0RtESuv6teFmdrcI9y+bSD7oPVhtUY5CIGHzEMY6A7v2kKez7+Knr1a4RXmHLysCngJCGmwa6B7A9ZfJhgKj70jU0/0eCJral8ycv5uIT9Vc/Ojd4IOtl8TgTabFgDYlQJY73IHuqs5pNCWdXL7YbaJ4iA17dUKCkz2Rk6dHhzC2AmEPsiKqZ0M2yppzqM+RFvLSzy6IFmDjJNt7VjdbWgVSQL1Z5xHyMT6vyNUExUnK7vA6H/UiOTcnfa5nPZbApT0vnxvpq7/d/vZxLqZwrHOupfBd4Rkyxr03Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GgTHunK1WOaEFwQ42TED9vqM7jRM47J4de9NTOcutzo=;
 b=ykuVFg7TBOZZyxoy0hi+6+E2D0pa+tbTTLugw+ngckk04Sh8G6FgVAbypCG9eygRCCHMcxK2xbaB3wSIKuab/CggFREd7tV8DbmuYaFRoeiix/1/75Mfy+sn2eXQZAYjtAyolt9wSUcs5vkcZ20jXO0/eBKUzw85lgqacT5wfPIjlgzNDgrkVjfda1dAxGU+reA2QdyrNxggMBZ+HRWuuOUNyQJ9TrPuYFgGFjBrkrnuUkgf/gTN6rl+hHpGiqN9lLPvby7GNQXytRXDNYFkpligL+6gXlFGOObXjhIDkFK700f9weRg7utlPsRxpZZWyV85Dra8OsCjv2tZxDUEKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by DS0PR11MB8181.namprd11.prod.outlook.com (2603:10b6:8:159::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Mon, 20 Jan
 2025 13:14:07 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 13:14:06 +0000
Date: Mon, 20 Jan 2025 14:14:01 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 1/8] drm/i915/gt: fix typos in i915/gt files.
Message-ID: <r3m7t7pdjmfhfhtczo5ckbw4m5cltwsgnm7d5lsajbw4wsjbul@zv4f4omwuvjo>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
 <20250120081517.3237326-2-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250120081517.3237326-2-nitin.r.gote@intel.com>
X-ClientProxiedBy: ZR2P278CA0083.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:65::9) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|DS0PR11MB8181:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bc7477a-a4e7-4c72-ac66-08dd395451b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dXJETUtIRnJZUE9KWFN5Z295bGoyeWcya2VOK1daZ3RWOUhTWFBOMEpHM1dL?=
 =?utf-8?B?NC9PdHpHUy9ZZjFuN0c3UlY5YXJCZnJmTVZDZUdvc0I5UzdJbGN6alNxZnVN?=
 =?utf-8?B?aHZjY2xEVE1BdFF0YWRLbCtCbHRZUUhLNXVKeUh2VTlMTDFQbTF2Yi9mNjlX?=
 =?utf-8?B?QkE1aEJDUFBhOGpaeEZUaERITkZwa1dEYzRSYnIrK3l5cW9ZWjBjREo1aFly?=
 =?utf-8?B?eTRENmlYNEQveXdWM0dNaXl0NURmNTNaME02b1NDdnl4OEM3QU5jejNuL0Fk?=
 =?utf-8?B?SWVWUHZtN00yclJWR3Y4VTdmYUgyWnBzakUySG9BcTZhdTJ3NFMyb0lySXVH?=
 =?utf-8?B?MEdGRTZSdW9tcHJTQ2RpejR5ODU4SmRnN0JNbi9tdG5ocEpJUDZIbUpCSnh0?=
 =?utf-8?B?RjRZTnB3ZUp6VDk0eE83S3luaVJZVndRSUJHZWtEQkdETVVjaXVrN3U2ZEsw?=
 =?utf-8?B?TnRqWm8wRStabjJaZ0hEUWhSV3p2ZWZSZjZ1alpaN3p6TU94a1dycFM1RjJw?=
 =?utf-8?B?TmhlZ3BRREJUUWxENGNHVzBhVVN3czdYZ0tSUFR1NUZIakV2QnFJcUdJNUdI?=
 =?utf-8?B?VmlXZmxTdEZZNFRhWHFNNG9aMnl2NGx5QnZqTUVUd2hvMkNPaWVmL0xvY3Rt?=
 =?utf-8?B?clI0LzR1a1p1RzlWdUJ2L3FtSlhBSnczK21IbXN5bEFldkNibFN0bzBGYjN6?=
 =?utf-8?B?MytwQlYzUmo0dVZzR2ZNSFlGZHQxWHRTZlVrMk5tV3JDd2h4RnVNWDdTU01G?=
 =?utf-8?B?MDdhUllJYVVqYzh6ZGJaYjdJTktROEdtNUJtMkt0OWx3T3VwTzVJdzM3RGlx?=
 =?utf-8?B?NnpZNXpvd3BJSmJrQktIOG4zcGc2WHV2eWREOXI4OWZ6YjBrWjVOY2xKWXQ5?=
 =?utf-8?B?MkkxMTB5Y2s4SXgwTDBTOTlHK2x4Ris0aUEzZWluQ2RjYlpGclhNU3RWTU9R?=
 =?utf-8?B?NGZOTTZ2MHdKclQyTmdEV1pWWG9VQ1NBTEpEU3oxalRIVTVYdVpTclpYL3Ay?=
 =?utf-8?B?MHNUdVF4MDVjVVdTbUhIR3BOeW5kSUw4dFNLRE9wUnZRMWtqL2d1Y1JKblAx?=
 =?utf-8?B?eFdzcGxNbGRkZjBPUEVUczJVQ09JRTE2Ym1CRWJKdEY1Z3F4K2hJbVhmUm1Q?=
 =?utf-8?B?ZXJtMkdhbmwxcFJXb0o5dVhuY0hrWmdFWm93dk83aVJzTjRqWjRVQU9oSTlk?=
 =?utf-8?B?a09hRHkvT2hEcnlsTEJWdlRPNWU0WVNxcUptQ0RvYlQ1bkxBcWJjOFhqUit5?=
 =?utf-8?B?WDdzUG5QaUNqRk1VRXdkNzRmczNsZjZjZkxRdzdxaEJURnJXNXp5RnZ2TnRx?=
 =?utf-8?B?N0hYL0h4SEVvUkVwNUU3SkZFK0U5cEx1bHhCZ2V6V21RNE10ZkgzTkR1TjJL?=
 =?utf-8?B?Vjh2eTFLaHlTdEpBYldtUW12MWxUb0FpbVZsZmlxRUI3aWtEODZ4UnF6eVBS?=
 =?utf-8?B?dlhGamJIMUxOY1haWTZXdkV5eG5RUThuYTVOMzdsbVJiU2xhRTVHakM5ZXhF?=
 =?utf-8?B?TTFQVVUraXVBN0k0cktTTDF4Uld6cFBNd3FwcGJjc0dsc3BWcU5tUmpDK2lT?=
 =?utf-8?B?OVJLSlQwWVEzWW5YdjR0RUExUU1wZU9idGZmc3lyWVpweDRFZXYyeHdDZnY4?=
 =?utf-8?B?eXJoWG1JS2lQeWVWaUZxV3NTQnFhYlpMT1crZTFZOTdKeVliQUhMbkdaaEFW?=
 =?utf-8?B?Nkt6Ykh1dlVST1IyRkZrQmFhN2F0SXlOMFByVm41RmhNZ0NISUw0Qk9GZG1x?=
 =?utf-8?B?T0w4Uyt3YlNBeEVCRnB3MlNBWjFMQ1doTXV2YmZNeS9NZmswSFFkMU9MSXR0?=
 =?utf-8?B?ZTJ3L3hXbjlkRVpVN3NnZk9RRXFHYi9YNWxGY3U3d3dOVWE0SnZteVgxTXBl?=
 =?utf-8?Q?916uTn8P5u0m2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UlF1OEdMZld0VjdNaUpZakduUW0rY1hjYW9jSHBSeWNpM0xxN29JWFZNeS9N?=
 =?utf-8?B?U0w2cDNqdGRVSVBIaU1TaG1wQ3pHUmg5OU90eUc0RWw3Zm5jd1N2WE9UR2dq?=
 =?utf-8?B?MzE1SEVFMzRScmJSZzVYTDczRTVvZXZxVVVaK1d3UGtpRzAvOUpqZXhYdlhB?=
 =?utf-8?B?TEFrbE5lWkpRWmc4Z2JJTHRwejRtNnpFWXRzS0RIMWQvUEhvTlJzN053aGMz?=
 =?utf-8?B?YnQ1amhDNytmblRBOEdFRCtnSDdYZFk5Tk9VZnc0NTFFTkZybnluc1Vnd2xM?=
 =?utf-8?B?Rm9rNTBmaS8yRGRXbDlzZGtpZ290aWR6eUdqMDdCMHphTWlzT1RVcnU0Vk5p?=
 =?utf-8?B?cUNUT2UvL05lMzh6VlY4bGwrMG1DYWNqK3VpYUVvVkI2SDNoQjh6SmZ4KzVK?=
 =?utf-8?B?UUd5Z2NiZXBDUWZPTGlqMm9hOVQ4SjJvYVZ0RTNWMVRQcXg0ZWtkWkY1dWI1?=
 =?utf-8?B?SjJyN2JGSWZ0YWFZUTlIWUJwMDloYjkyZDI0bGRkTjYvT1A5M2ZtS3ErQ1Rt?=
 =?utf-8?B?aFpaTFhkNUNWT0w2SmI3ZW85L3lscnkrUFdYUGJZQVRNYUJMamxmc0FTSjZm?=
 =?utf-8?B?am5uSEhUTU9zNlJUU0p6Ymg5blZyTjBMZGZYYm9CeXd1U1lmcERoeFNWWXYv?=
 =?utf-8?B?YVp4YTBVQkY4M3EvWjI3ZFMyciszSEs0bjlpWnVlampld1o1UjVCV0lBSnY0?=
 =?utf-8?B?eitVbjh4QldzU21RcjJYQytLYmdpNlRLV2g3dzFxNklpMlpLWkJkVzJFT1pL?=
 =?utf-8?B?QUNkdWtGeStGM2pxbkN4RjFHVXJmSVNHbTkwaXRKRzYwd1ptSTdGamVzUjBL?=
 =?utf-8?B?Qm9ncFBEQk5ka01sV25zMDNqRnd6eDNZQWovMHZmbC9HOUtXeHZLVDRFcjVn?=
 =?utf-8?B?OVVCcjE4T3Qzemh5M3dDNUkxandlblNrRmZNU1djZDBDTEU0WHRVa21PSlFM?=
 =?utf-8?B?eHVIOXVLd1Voend6WDdTYy9VaHp5NzlPbHRmNWYzdis4MW9vcGxZOTEyWEd5?=
 =?utf-8?B?VXBUT2ljR1R5Qi9FNnFLMVNyNitOVUxVY2c0c29Ha1lXbDdXUzFINW1CZXVo?=
 =?utf-8?B?NWJ3ZHBjV0cvbWtENVltTWtIVFVZc1pldGFCOFJCTHNnK1ZmTzREdzBVbUFZ?=
 =?utf-8?B?Y1R0dXp4bkJUbjFFcjRsWmR0bXJ6c1BEVTdmRmJYc0Y2ZFh4RmxxaTdWcGVK?=
 =?utf-8?B?NEI2ZE5uMUdUTitsRHFLdXhvVjRuWDZKTHN0WUtkSWljcWpxalZvd3VheXVl?=
 =?utf-8?B?TUo2SmlHaTNaNW9vT2l0R0tYeTlzZjBCbEc0ODdTMUV5RFhMWmQ4Q0txbWFs?=
 =?utf-8?B?MFczUTIyOHFMOE05dXRpWlFTUDhkai9NeVE4a09mOVFJS2RIMXduUXJmeDFT?=
 =?utf-8?B?YUl3dFR4TkdlY25wcmNZSEhoeW1Cc1U2VTVLUkN4N0xwRWI3bFFWWnV5NTNi?=
 =?utf-8?B?NkxGRU1VQ2JtUlVtRXlwekd2Vi9rNVdTdExKR1ZRMVlHZnhKQ3FTa2s5Rkwr?=
 =?utf-8?B?QXRQblRscGJ6L053SWx5NW51ZnJhVnJYa2lGc2x4YzhocThEQjc2K0cyaVgx?=
 =?utf-8?B?TElMWGdqSnNGSmJKdGUwQVNHaUlabDlmWkV2UVNCT21CYllWeDdtdndGdUI1?=
 =?utf-8?B?WXkvR3g3UXUxR3BRMlpEMU5BdTRIc3dzMGlJMG96SHE5dWFLbWYydlUxaWps?=
 =?utf-8?B?WGlVL1pjSXJtVmx3YVpNWHNOc2c5dWlPVlVjRlBwSDNRbzNOcWx2UFNwYy80?=
 =?utf-8?B?SE56ZlFNWGpTNmhWNjI0UzU2Szd6bllrSzVqRkp5V3VtWXJBcGtYUWFHUXpv?=
 =?utf-8?B?NjlLcVhXelBmcjkxRG9GczQ1NVdLSk0rUTM4T3NaRHZlelErMCswTDNwdzZk?=
 =?utf-8?B?VkdPZkovNHQ3VE41cDNmT3FSSWFodjNSSk96d0pHTEFISXNNdzJLQnptSk44?=
 =?utf-8?B?Mnk1cVlzOGVSR2dLblRENFAveUVqZ3lhTDQ3ZEZzTVhDeWdRVm91cmpDeVEy?=
 =?utf-8?B?cGRjaE5HaTBzc2p5WEtNc0VkMkFpZDhPTlkvclBqTUUvejhrMkVNc3dRTnpi?=
 =?utf-8?B?Zng1M2phdkVlblVsR0Z6b1pjdEFUS0dWSG85Vmp1cmRQU2QyVC9mMDNkMUdk?=
 =?utf-8?B?bnQ0YXZ3NXMxOGRaaDUzOUJvN201UU41eEdBeGtBWmpCTVg5UTBkb05yZGhm?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bc7477a-a4e7-4c72-ac66-08dd395451b9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 13:14:06.8784 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XiwzXourUqw01r7oNByXsMhxno6JmjQy3RCAN4+3FixI6UoD18cqKFw+TxFhnLkTRt09Ad0QU7Tk6/0ErnTjG0I4Q4HaahJEKhbWwrcWGfs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8181
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

Hi Nitin,

On 2025-01-20 at 13:45:10 GMT, Nitin Gote wrote:
> Fix all typos in files under drm/i915/gt reported by codespell tool.
> 
> v2: Fix grammar mistake in comment. <Andi>
> 
> v3: Correct typo in commit log. <Krzysztof Niemiec>
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
