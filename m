Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B47FA5EAAC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 05:38:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C213610E7EF;
	Thu, 13 Mar 2025 04:38:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KpwQq2nx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DC8010E7EF;
 Thu, 13 Mar 2025 04:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741840724; x=1773376724;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9xedFFXXsjBr74x3tZSEt0Sif/oVOwo2dj02iKMqOMs=;
 b=KpwQq2nxEtMQGqD7qKNmmYQDQKbH4x7Jmh+OXxf5GwA2pK9W52G2IEoI
 HcOSaFWpJXE9V6dqOtsKavMAR3emi4dZIWX1n7TgSWnHx1sM9nMfSq0p/
 IxKu8UrMkMnQQHw6ztj7HccyJ4CoEkp/xOpC2MvXkt0a2LRtYncIUiO4U
 si0TXFMBwJmP8GerfMkr4NPui7XPezwYcGLvhXcetuntKr9Bh7hRDBiOw
 UA0Ad9rdvm0QQn76shjP3Cjq51sLy4tBykM0w3Vuy2h/gCYsoK16dSHLE
 xrS5mDRYHZNwSzkyJlsjOMGej9vLV4YO87vsyDqspe1/tKZm3FvMHfDo3 Q==;
X-CSE-ConnectionGUID: q4JTFUUBSSiu07agGaztbQ==
X-CSE-MsgGUID: PDgqAfoITsCR4yYA9HuzNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="65401130"
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="65401130"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 21:38:43 -0700
X-CSE-ConnectionGUID: sbbjprgBQByg5B5YCwCiaQ==
X-CSE-MsgGUID: pJDWFkwvTaizR6Z+dX2s/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="120801518"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2025 21:38:40 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Mar 2025 21:38:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Mar 2025 21:38:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 21:38:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kozESNX8ACMeYPBFOHp5ZMn4EsPuupQ3GSu/G8G0u97PYwD0qfGUvnty5oB6/VCxayH+PdcQ1+JKyxPjZylCH/2bk8GaCpnlYu/VpAGaI0yLuYrfsXqISAjF/qLi3ZfCf6zN8r5bKFVN2exNBe72zETmgtjC4z4andEo21eCdo6D9z1xLAt1L/YFvyPmibD3UVEaV9vHFHAF23/FENsgVsU9XgDmI/aKo2zfmeieYOs4XPAqKpbeo+F0BlDUsXXiViXKmzKh6apxVeJUTCnO2gwR4LOfIwhoxjxAelF4kTYoWttnBs8sznbHPWeiS/R4IOPegiO0eTt/TzwxYLgXxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vO9xTiibXFrxzqgmDS2OBV0saS8RAkT4ltQnvDC5Q1E=;
 b=AuZTL/OnpsmhLGI7rdlq+Wids39XSF1RiNTvm+fc2sAS5t8FmNlkOiNtaa6WrOqTSa3iIHC+JKWmSiVa5yE/hMTWukWFFyLVIYdogtvhnyejp+IvMxynfn8Lwtx3rKTo4G9D9rj3IoQZv/3UNHMRg42/+ZSuulk9VeiFAjr6bvby16T3lX7KF9yHE4cAiHcYdpjcf129eaXKLCf7v9kAB9HKbtL4smGf1J3qaNIKjAWdd5KB6AuVlkYi4dM65/i7N8q/04q28CMidTDoaXOZ+GOeOccdel1CYMu4dSiA8gnd9SVPAB2xwtjqGS5TzJf53mwGX5D1GmjGvjQypDaMsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6304.namprd11.prod.outlook.com (2603:10b6:208:3c0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Thu, 13 Mar
 2025 04:38:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8511.026; Thu, 13 Mar 2025
 04:38:37 +0000
Message-ID: <cdb8af14-e5fe-4718-991b-1b44fcea5d04@intel.com>
Date: Thu, 13 Mar 2025 10:08:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Maintain alphabetical order for
 HAS_AS_SDP and HAS_CMRR
To: Gustavo Sousa <gustavo.sousa@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <mitulkumar.ajitkumar.golani@intel.com>, 
 <lucas.demarchi@intel.com>
References: <20250311135925.1523852-1-ankit.k.nautiyal@intel.com>
 <87wmcvfnin.fsf@intel.com>
 <174179922572.12216.11347505165808081803@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <174179922572.12216.11347505165808081803@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0068.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6304:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f51cc34-85c8-4b53-ac90-08dd61e8eb79
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aDc1cWN3SmpDSms0RTNkMXk3MERNY2lWWHRLZlR0aW5EaDRxVm9SY2RqTGlj?=
 =?utf-8?B?bkRvekNZS1ZWenJMWHlWY3Bacy9kb1Y2R0RYK1gwOHZuT3p0M1RSbDdkbmFh?=
 =?utf-8?B?bVJEZU5nVTRyWW5Ba2taZXB4TWwrakFQREVXaW1iMEZ3UTR1bnlvUjhtSFBw?=
 =?utf-8?B?VUNOOE85dnk5TDVDVVlZZ2Qzd2NtQVVsMm1Nb2F1cm1wT3lrRHhvclZzUzc0?=
 =?utf-8?B?YkFkN3Z1Z3BiMjRRcVMxTk1iazFORWRBNWNjd0o3Wmk3dzgxTUFKVTlFNnli?=
 =?utf-8?B?dithL0ZuTFNjcmRHckZ0Wm4zSkl4Z2xqVVplVkZKRVloQWEveXBnNFVibDNY?=
 =?utf-8?B?akdGUTVQUnE2aWUrdkZqTkJPR2ZKbzJqSVorQ28vNXcyc0s0VTVzREFTalVk?=
 =?utf-8?B?ODR0cGh5NXpMb0t2bUNYSzZNa2pQMThUeDVJVVh6ZFFzSjkyZzV2bmVOd0pP?=
 =?utf-8?B?anZ5SFQ1a1F4SEFUS3U5VWVEa3pjMlZVb2o2VnNJQ2toYzBrb1Yzcm53eVZw?=
 =?utf-8?B?REtmSEp3eEtXb1cvdmZTTWh4K2NtSzU0SDNlQkZoMXRoK3BmVm5aOVJieEp5?=
 =?utf-8?B?SVc2ZDlqbmtJam9sS0QvQkU1WitZL1ZINHJWRFBrNzh5RVRianBibDZFV3c4?=
 =?utf-8?B?QXVlOWhObzJLWmlsQUV5U0pFdTNHM1RJSTdvWmxSM080aWI3QUFzSkZDZUtm?=
 =?utf-8?B?bHRQdGZBMm0yNGRxZFo3TjlpU3QxT21jbkhoTzhpRks4RWpaL1NRRk9FVFZP?=
 =?utf-8?B?SDhMbHZCZWxHVXFrVlJnNFdVbkg0dkM4UElLSm5pMjEvR0ViNDZlSFoydnU5?=
 =?utf-8?B?aGo5MjdKMXdvNkNuckFOUEQ1OE95aWw0NktBWlR2QWF5RklIclFNY2dXR0N4?=
 =?utf-8?B?anI3TllUR3ovUkNZcGhqZURWTnZxR002QW14b3l0c1BHSHJMWnozVHdla3Fx?=
 =?utf-8?B?Y2VTVlcvanBVZDAybVV0aE43ajlSbjJDaEFacU92V3hrNkhNTFVFUm9UVlZ3?=
 =?utf-8?B?cVlEc1h1cWVhK3YxMXFQczlOQlpNQ2liT0dVWk5hSUhaYjFIZUJpb3R1Tjdh?=
 =?utf-8?B?dk45amtEeFRVZE5FbFZXV3J0d3JzR0tOcWZnekFxMms4cHM5c3ZrOVpFWW9o?=
 =?utf-8?B?VjgvUUNvR1hQMHF4TVpsQWpUM1lHd21mR3NHUFNtalFUK1ljWjh5d3hzZkhK?=
 =?utf-8?B?SGFheUFVOXFmNXlwT0tQWFRTcURkYk0yM2x4diswa3MrSnh6NFFyNDdhaVVP?=
 =?utf-8?B?SWhCekJZU3d3SFFUdWxOWEY5U2V5UGRhZUJmZGpoR2sxdnZyMXN1TWJTNWVW?=
 =?utf-8?B?eVFqL0RZRE1KOFpFeEpOWDZlSkxWS1NwSHlIc3RUekJRQU14TGtzRmE4WkRu?=
 =?utf-8?B?MGoyVzBaRW93UXZUekEyVlJibzRTaHlFaXUyaEpRaTUycHNHcGJxZzNrTmls?=
 =?utf-8?B?VGRQSG5WZm1VTXBzM2k2dDFMckZsK2Y4OThJZGl6Umh3ZFBITFJEOXJlODVq?=
 =?utf-8?B?eVZabDZhZEQvb0wrN0lxUlozRW1DSFErNk9aZmRFNkc5Vkx5NnZtNE9NSFly?=
 =?utf-8?B?TDhvTzVxNnpxcjlleEoxNCtLVHNmWGNLNzY3S3M1eDdvOWpIRFhjamNUMWMz?=
 =?utf-8?B?Ym52V29NMDNBKzQ5cVcxSURiaDBJaHNKZW96WHpzbTZocHg0S2Q0Yk9nTDhi?=
 =?utf-8?B?V3lWWGxmNnZ4d3J1U3J2UTFOVEtxOGpRVzM5THJvbWw4U2VEUXdoZ0ltdGI5?=
 =?utf-8?B?RE1neXdJTE82VTltU2RFMWw2VlFLYWpGYWpDUklEdVlwczBxZ2lSMTFvUHBI?=
 =?utf-8?B?ck5LbUk2MU5vb2NhTTJhbDlLR0dUK3VWS1JMTmQ4aDJIcTlMSGM2VndTeGJl?=
 =?utf-8?Q?3Vnmd7hFwgli2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDFRZFFPRHF2M2VCYUd0VmpQQUZmUE9vU0dBbGgrUjFKWnNGSW10VHpsTy9W?=
 =?utf-8?B?TmJmNHY4TXdmcEhReno0TlRzV2Rna3pGSTNnMFNaaGdBOGVnRldxRWNCWEFH?=
 =?utf-8?B?WFc5bE1kSkt1TjdkcVQ1eGdFcFBHdHVUQTUrdTZiSnBhN1dhT1kvdzU2cmVO?=
 =?utf-8?B?MmFGU0pDTE02NHZ4a1BrMm5lNFpQK0hKNlNSS25LMTcwQjhKaVBMSFJsTkpN?=
 =?utf-8?B?amdvYUJpbmJSV1I1dlFGUjUrcGpQMW82VnlhZEVSLzhQdUxqRyswVm9uYWxk?=
 =?utf-8?B?b0tPd0twT2Vhbk9LcmExNHg1RmtKMndTdXBLdnZIc1dQbytzODhiOVNoQW5u?=
 =?utf-8?B?THY5aE41Yk9lbFRkd0xOVVB0TUhScUp4TVl3ZHVxTDZSNjBGSHV5NUM5dDds?=
 =?utf-8?B?WU9QMTVjTmlPNTlrVTZXOEE1eFBkOTBpQVZzeWtPVFA3N0ZkU09DTU85b0FV?=
 =?utf-8?B?N1puZ1FFZXBwMzVxRGZoUXNqS1JDS1ltNlR6ckFSdHBWemJ5QTVnREhVWUxp?=
 =?utf-8?B?Vm0rb3RsdjRzZ1pNSGdWQTlPMllpVG1sZWhNdzNjR2ZBK0NCbzlHN2o4UEZn?=
 =?utf-8?B?VUZ4Zk5PR1FWSGJTQ0JXY1BoNnZRd3ZSVjBBN1diNDBlbGZ0NDBoWGNnNzla?=
 =?utf-8?B?Nlh1dVducDZaVzV4dFkweG90VjhvRUtiTjZRam1xNUV4YTJnV3dXZk1hOWJP?=
 =?utf-8?B?RWZKYSs3MHJvVFRlR3hEVElpVHVWVHVGQzAzMkh0QkFlUUhEUGxvcW5wS1RK?=
 =?utf-8?B?T0QrajgvT0Jabi9wNUVqY3IzaWk4VDMrMndENisvQjdzdk1uM29LaEIyUGV1?=
 =?utf-8?B?Q0VnUGtjUzkwZE5KV084WGFNMlZXMUJ1djNhc1VDcmo4ZU5tTDJYTDhTeGI5?=
 =?utf-8?B?UkcrWkxUL01wQjA2MHZOK3V0K2ppMDYzaG9FU0wyTEJnOUxGYjJ1c2JCRThG?=
 =?utf-8?B?Umc3SzJhaXRPVmFqOHZOcVpBSzFwY1E3MDJqb1ptU0dFelBueGl1QzJaSVRp?=
 =?utf-8?B?WTZXQ0M4dytKVkVmR25sTTlmUzF6UythQmg5eEQ1cjdUakg1NlcyNlV4VWhG?=
 =?utf-8?B?T3JRcnVuM3ljMFh6SEJqdXhpVlJiNS9HL1VTRVFXSjBoT2w3WWVKbEp6SDhH?=
 =?utf-8?B?V3JSVFJJSlRYRWhrODh2RVVKeE83SGRwVWtwM05KaFNrVU00ZVVOQTE0cDEv?=
 =?utf-8?B?cTBMMDRDeDFPOTdJaDNGa21uUW93NFJ0Z3BpQlFnQnNwTzluNnlGTW54UVVL?=
 =?utf-8?B?VkNMT1R2Zzgybk9HWSsxOU1DUDgxYUlOeldFZW5BbHMyMlMzNDkrSmFyM3Q1?=
 =?utf-8?B?SDdaQytrYTI5VXE2blE3S3ZlalJQZ2FyV0hyeHBxVWVzdEZGRzIyNVlMVkNP?=
 =?utf-8?B?bk1QQWcreWJqcW1aQUw1cTQ3OFJFNENpaUphR1k3dG12YmQ2bXI0QzNwUjhm?=
 =?utf-8?B?RFFKWWJxTmdTc29zT1F1dEs1K0xsQUNvNFMzSFZqTDB6YldBYWIvSk5Na1dT?=
 =?utf-8?B?VXJnTWNjZWI4Mm11emYrQUtzVFNDWE9zQWZEUnJ0OXBFMkxGRytFcTFPa1B4?=
 =?utf-8?B?Zm5aOHZMd2IzaWM4VEtvQlVnTFhYT2lBb2xIL3hEK0FxclhQOENzL0JtRStT?=
 =?utf-8?B?N25hdjd0NXNLT3ZBd05Pb21HWGpYQmlDNldtL2VNQnByZkdlVGd2OS91VE5M?=
 =?utf-8?B?cFFJLzM4VCtyTis0SE5Sc1hWeEdTL0hkQThnU3ZDSzYzVEh4VUUrV0NHdXVh?=
 =?utf-8?B?OEx6N3JaQXZMd2h1d3BVQ2tvWU82QnVCWHd2a3hqNlFkeXZlT1NxbjgvMmhK?=
 =?utf-8?B?aFdDMWRXb0p4MGwwaGtzekZVU3pGMy9mWnROWXRwY3NpVXk0bWdQNVV3cU83?=
 =?utf-8?B?cm4yQ2M2Z3BNWEdMaWZJa3BhWHpiU21SeWkzZEhzQnJnYWF0MlpZbEo4ZmFE?=
 =?utf-8?B?bEtBaWlzZnl2c0tkREpGUkZqYk5aNEhhQURsMVMxQm5QTXNMcm9RN0dEV1Rv?=
 =?utf-8?B?ZExVMmk4dnN6TlJBQitUMVJTelRNQnJlMlZoOXNKT2tkemZxTmMxRzFtWHY5?=
 =?utf-8?B?VjJZb1VHSmx1SGFuUHlFRHVQSi9DTWwvQU5oVHFrb3cwQlVXSElLbnUyaGdS?=
 =?utf-8?B?bmVqTnJpN3QwSlpUOUJqcyt0VFkwVHZLUTZQcWNoVjBTWDJ2bml5RExLQTI0?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f51cc34-85c8-4b53-ac90-08dd61e8eb79
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2025 04:38:37.0956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v1qbhQr3eqi5eJyDrLJNZWED7jAC1ZMyb5pwPGVu+GYnhFJxo3QJjxbOFgY84CADTbbzTSyW1oCGjcG9mAAqtmawaAbmQpgc40HoyH7iZE8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6304
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


On 3/12/2025 10:37 PM, Gustavo Sousa wrote:
> Quoting Jani Nikula (2025-03-11 15:08:48-03:00)
>> On Tue, 11 Mar 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> Reorder the macros HAS_AS_SDP and HAS_CMRR as per alphabetical order.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> index 717286981687..332647c4ca81 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> @@ -142,10 +142,12 @@ struct intel_display_platforms {
>>>           func(supports_tv);
>>>   
>>>   #define HAS_4TILE(__display)                ((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>>> +#define HAS_AS_SDP(__display)                (DISPLAY_VER(__display) >= 13)
>>>   #define HAS_ASYNC_FLIPS(__display)        (DISPLAY_VER(__display) >= 5)
>> Y comes before _ in asciibetical order.
> Maybe that's just me, but I feel that's counter-intuitive in a context
> where we use _ to separate words.

I do agree. I was assuming that we sort the words separated by '_' as 
delimiter.

For a given hypothetical list, I thought the ordering will result in 
similar items grouped together

(please forgive me for making up silly names here)

HAS_HD
HAS_HD_AUDIO
HAS_HD_DISPLAY
HAS_HD_SUPPORT
HAS_HDMI
HAS_HDMI_PCON
HAS_HDR

But with the `sort` command it will be:

HAS_HD
HAS_HDMI
HAS_HDMI_PCON
HAS_HDR
HAS_HD_AUDIO
HAS_HD_DISPLAY
HAS_HD_SUPPORT

However, if majority of folks use editor's sort command it becomes 
simpler to have the ASCII ordering for everyone.


Regards,

Ankit


>
> --
> Gustavo Sousa
>
>> BR,
>> Jani.
>>
>>>   #define HAS_BIGJOINER(__display)        (DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
>>>   #define HAS_CDCLK_CRAWL(__display)        (DISPLAY_INFO(__display)->has_cdclk_crawl)
>>>   #define HAS_CDCLK_SQUASH(__display)        (DISPLAY_INFO(__display)->has_cdclk_squash)
>>> +#define HAS_CMRR(__display)                (DISPLAY_VER(__display) >= 20)
>>>   #define HAS_CMTG(__display)                (!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
>>>   #define HAS_CUR_FBC(__display)                (!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
>>>   #define HAS_D12_PLANE_MINIMIZATION(__display)        ((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
>>> @@ -189,8 +191,6 @@ struct intel_display_platforms {
>>>                                             ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
>>>                                            HAS_DSC(__display))
>>>   #define HAS_VRR(__display)                (DISPLAY_VER(__display) >= 11)
>>> -#define HAS_AS_SDP(__display)                (DISPLAY_VER(__display) >= 13)
>>> -#define HAS_CMRR(__display)                (DISPLAY_VER(__display) >= 20)
>>>   #define INTEL_NUM_PIPES(__display)        (hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
>>>   #define I915_HAS_HOTPLUG(__display)        (DISPLAY_INFO(__display)->has_hotplug)
>>>   #define OVERLAY_NEEDS_PHYSICAL(__display)        (DISPLAY_INFO(__display)->overlay_needs_physical)
>> -- 
>> Jani Nikula, Intel
