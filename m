Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AF6AF6A2E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 08:19:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CBB110E0FB;
	Thu,  3 Jul 2025 06:19:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OKU8uA5W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E600D10E0FB;
 Thu,  3 Jul 2025 06:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751523559; x=1783059559;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JBInN5+kKhb7Z38KoIlWX1qhbOqUZ6dUtiCi8KkmnBA=;
 b=OKU8uA5W4dIrUutKUrViXPnRaGVfdRclToP2bjAD5KvyCSZWXQZJTvea
 OKqklDIkV45WgKfkloHbctlx4V5K9Rskq/ttlOmr2MGSveN2O4dnNndPc
 Rw1JhsqdJbdtluJi+Oysn0BZ6/4WXIuQqltKKuLSBqpjBboY6nkFuZWe+
 yk+qkQCoYCDBifMQgdjaM+YQpVytmIwDEj6FBe2PaDgiNt8FPzVTE8/lf
 X5r1sDHvKt3XCmGa8+8vDVDhawoMnSHE5P9ue5jWwVuMAkKw/6ntr53jw
 zu+RuHeG0PDS3swagWTwJLpipAahT8BV3L1a7FpR5CzAToFqxi0tRHXZU Q==;
X-CSE-ConnectionGUID: YLtwzW4uSKuMDoFx9ucIWw==
X-CSE-MsgGUID: ti0UxvsCQPa+S8WbTv1huQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="53948860"
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; d="scan'208";a="53948860"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 23:19:19 -0700
X-CSE-ConnectionGUID: BTaWki3iQy2PkaOlvv/nIw==
X-CSE-MsgGUID: nHRvoOtUThW6aMec2U+FnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; d="scan'208";a="158557573"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 23:19:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 23:19:17 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 23:19:17 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.42) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 23:19:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PJeQBKUVa3G2x2Xa13eKvFl7GmHxkYU5CXEzGEzJVtqPloH5znp/5/MsEu8M83HDmG0K3UXfDaLxPxX1+yDB3diwriGARbaBnq2RWQ1BEpqwan1tJmvGy2L81kqOOIJoZsAzDTZkJcijUPiMNdWhtbF9/QrjKaqmo+DwfoBzT5VelnsmXE/HBBIz0Zp9+p/e37N957YtpYQ5PWL2uXkpluDRng6grHU2NLbZThG51dkPNJ+U464N0bTRQv7j7RVZWQQTrgbpYorWBiRq0c874XAzDrZbIcPFHqXaRTd81yVAXhj2LhRd7DC3Y3gZhHPOB8Jbglk1sAd8hRPbgMHqJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2SHHlRbdK6CUuPuCrDtt/uhNxOsaPPJDjLeffAtLhVM=;
 b=cRWgnuQsbBHFR85Lor1ImNQigRl3b532pS2Aq9tkOGBXaFlXVHjpqgLJEJP26/sRwmsXwcO6nIqoVH5ZikTvuYYgwA/C8fw7nX9vHPkKGiBNHforxdM3TS3Sux2kal5nWHI9enCPVwQyMWv8Z0oS/eAA2g4hrN50UsfBWHf40zFl1oUBO3W8FYcoTrO0Jg4QdMhdzRQ09qN1xeOhezyw+oWJUKLdvPxZn7vWO9dhMadh5haf1xDhuQVLAbqXRmmBlSUvxEtWzSYIUwqV1MtgUbsm0CeUkRbsWWEPwAYQi7CAjhnWf8fjyLZN6zCAbqLo6BZt0wSQ75yIV1YkOnZijg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB7967.namprd11.prod.outlook.com (2603:10b6:510:25e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.32; Thu, 3 Jul
 2025 06:19:10 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8880.030; Thu, 3 Jul 2025
 06:19:09 +0000
Message-ID: <2e1eb138-88ec-4e8b-b5bb-fd29984823bc@intel.com>
Date: Thu, 3 Jul 2025 11:49:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
To: Jani Nikula <jani.nikula@linux.intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
 <175146302838.3748.9114348489206219151@intel.com>
 <45e9d0aa40e0f9bf9dac03054e7a46c52623ba84@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <45e9d0aa40e0f9bf9dac03054e7a46c52623ba84@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0058.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB7967:EE_
X-MS-Office365-Filtering-Correlation-Id: 71a866c2-4b27-4890-75d9-08ddb9f98598
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WG5aaUs0cmtTR2pKNEhQMU1pdW9qd3ZucUZxdmptd0FNMHFGSmduaFQxd3Bo?=
 =?utf-8?B?Zm50S09rNWNxVjZpZGlPVGpKSytoaTdHVHZkNTk1Z3dJUmF3YTdoN01lQTRO?=
 =?utf-8?B?Qkw1MmVkSkFWTWtNRWhrajFUeW80U3hUZHBzcU0xRTEwQ1lNYWJ3QmhwMTJ2?=
 =?utf-8?B?bVFyNi9qbXV2ZHZtUE00VWVrUTZtc2tFYktmVWovYTBpOFE5YUZlb000UWw5?=
 =?utf-8?B?TWpJSHBRUXRCQ01KWDI0UGZyZHNpRXFuY2hKeXcwZU8rU3N6bkxWUElKa3RP?=
 =?utf-8?B?cWpvS2RtWjJoUDJKdE02SWdOMGJRcFNQM2VJRFFsWFRDY1lObXdVZ0Q1bDZ5?=
 =?utf-8?B?RE90R0wrdGo4Z1RsbHJ3eGY5Vlk5VHhVbE8wdTZqemp2dG1xaTR6QVQ4eWt2?=
 =?utf-8?B?WmNGRUtFQzF3OUwzNGxpOFB2ZVhNUlBZV2cvRXFidWZrczBNcENQZnZ4Ukdp?=
 =?utf-8?B?aEJ1K2RITmh1K24wTnUrdEFHWGZIRmNRbUJMRFZ1VHFYM0ZMY3RuTXZjK3Jl?=
 =?utf-8?B?NDgvRnVDeGdzOUNCeWlrMHd6eU5DaElUMEUyclBhcEpoa3h1M09SZDB6ZTZs?=
 =?utf-8?B?NWp6K21teDBET2JXbHNpZDJsWEhzb0poM1hlUmYwTFJtM0FMYVVFTDVmc0kw?=
 =?utf-8?B?UDgvcHBKRE5LQ1NtUk9nZU1abFpxV0Q1OHNxK3lHRTZxRFFneGpUZDY5c2lw?=
 =?utf-8?B?Z2hLRU8zT1RuSU9PYkRydXM2RHpRZThYMWFSRk5CQzh4RkRlSUI3TEhZMWRo?=
 =?utf-8?B?R3NRRUttSDM2YzlMSlNrMXlOS3BqZ2czM1ZZZS9pQnl0RDQvaTYrY2IwR3N4?=
 =?utf-8?B?Mkw0UGVHT05PQ1dtL2JXekNSK21CYS9qRHdVOVdUTFcvakxwV0VCMzZaQm43?=
 =?utf-8?B?MEhlU3ppYmhrd2RKR2MzNDB6QmJuNHlvcGxoOXNocnhaM0lPODNEYms3YW1P?=
 =?utf-8?B?bTFQK25CN3phSFE5N2ozRTArMmUxTWxXUk4zeXYrVVZvQ2ZlL1lqU3JzSmZx?=
 =?utf-8?B?OVZrZ3ZYcnZyMlY3bTdCNkkxUFhqRkd2YU1XQUEzZlRmcGdreHBWTTNGRnRo?=
 =?utf-8?B?bG5TRXJCeTN0bFFzK3lOeFV0VUhockgxTnhSZyt2aU9jQzhyUEUvVjVXR3h2?=
 =?utf-8?B?Y0ttKzJkVkZ1M1c4bEU5YWJYV3hKcTN1UmszN0ZHZkgzaWp3b1czaXVCbWhC?=
 =?utf-8?B?bitTMXNHY3lNSklvRlNTQUJhUHdrb0JpaGhjc1FNcE83a1pFM3ltcWlLL2py?=
 =?utf-8?B?ak9TdXgxS3NjdHlTenhaRkdaL2lPOXdDeDlnQlE4aDg2N2lkQUJrOG5ISWo4?=
 =?utf-8?B?YmJabmVqK0NYL2lvMkRqZC8yNGNRd25jVGFoejdpdzFzZC9vUldVU0lCNUlF?=
 =?utf-8?B?cWxtb3lBUlM2NVE5ZWwxUmJSSEdkd1lGMzNYNDcza0h1YmlQQTZqVzkySmta?=
 =?utf-8?B?eU9zTjdsRjVCdEoyL3daNkF2Nnh5aGppUnU4NTkzY0FMUzRnUUh0bFl1NUhq?=
 =?utf-8?B?UWRKczloeTZqNVlRQXJURGdlTFZad3FzRllpVWh3cTE1T3hEbmlSbmc2NzY2?=
 =?utf-8?B?TWJORHIzSGxUOFhGcFlVQkxVdXZzYWVTdmJac1FuVXo4aUpidC9sSm5OOG44?=
 =?utf-8?B?ekZCcmlXVDZWREdrMEZ2dit6ZDg2L0dteEsyczZGbmNZNDZLSXhVeUZkNFBo?=
 =?utf-8?B?NElLeWkyckVZdzZZRVdqdm5VVzhVOUMyLzJHaCtldGtnZDJwd3dJd1pjd1d5?=
 =?utf-8?B?bmFZR1BJV3QzS3ltZ3B5aCtxTWI3MjNwLzloMEIrdCswYk1yWGNBOUNud0tT?=
 =?utf-8?B?MFBEd29uNi96OFc4bW1ueDFIL0ZvcERnT2J0T3VucUVhY05iZjZ3RitVVmdK?=
 =?utf-8?B?Q0JISzU3MDhKS2NWckJNMFdjczJ0MXRRbFpub2pSME92SXc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVM4b0NxelpLUmdVV3dBeDlvVU1nSzhnK2NoL1FyMWFpUzNMRWZaWnZkeTZm?=
 =?utf-8?B?TTR5L2R0VzlLMi9lSmFYcDBwcUJsODBQd3hNZFE1cnVaVVRxY0RmZHZjWUkr?=
 =?utf-8?B?Ylc2cHpacG9OZUZHdVVCSEhOTzFXOXhNTTlXZEY1Tnc4OFUreDBJTHd2VERN?=
 =?utf-8?B?VDBVVnBNdnlDRGxjRW0wc3I5SU05cjZReU9BcGk2RmNXSm1rVkJRZzBnd2JE?=
 =?utf-8?B?NEJFVlo1MlUvc044KzFzdzJ5YzJtRlBYUkdHMFAwYWpQd0JoWDJSU0w1OUZu?=
 =?utf-8?B?SmwzYWg4S2M1OTNaZkhyRnM1MWozTjJEbDh2ZjVFRWorb04wNEtyaUdWVzRO?=
 =?utf-8?B?TjE5Q2dvYko1MDFKRytiRTBtRmNxV0RReGJpUWFSdjl6b29yekoveG9wYi9T?=
 =?utf-8?B?OWhMNTkwNllJL1BjOXhaTWFXL3FGaTVIbE5QTkZSdWZkZmRHb1VCTFVpQTRU?=
 =?utf-8?B?M1V4dHc1a0V1K3hEUVVCRUtBNkNoMkdCeUhycllPay9mdkZlQ1RWY0xCQkJN?=
 =?utf-8?B?allTVUw0YzhaY3Y5amFsQks3RElGWkxXY0lRWUZyZUVvbWIxQkJjZUhNZGJs?=
 =?utf-8?B?ZzVaT1VtK1NrakhQQ1JHVjdxR3hmdXJyVS8ya3RpZnJ6Q2UrUm0velFWdWJn?=
 =?utf-8?B?blcrbU43ZC9RMXVPM1IzV3FxQ1hBcEdNeU11ZndMMXFSZEhGRGREdUdNSnhH?=
 =?utf-8?B?TThJR0UxQjZSRXhnWXN3YjVDclZKRmFYSm1Oa0luMzNUOElSek9RdDI0UEJk?=
 =?utf-8?B?NlJZNXUxRE5abEExOGhwbnpVN1lwMko1amUrKzRycnl2R2hEa0FOaG9USjI3?=
 =?utf-8?B?NWZxQ2pjSVkvM24yZDFJY0xrbHk3V3Z5U0kzNko1bk5hYTBSSkZwWDlGSG1V?=
 =?utf-8?B?MHpvSXhKd2c2YU8xRmtEc2tQR3J2Z0lrTmM5M1ZtZHVUaXZnTzF0UmJUS21P?=
 =?utf-8?B?bWppOVp0OFpUbzZPWUpKVTBNcFBYYk1idEowZ1pOWklGWW5KbXZURG1NNGo4?=
 =?utf-8?B?VXY2b1RBQ29KM3g5dS9yTk1qUHNoNmZCbStOeTN6Y2k3ZHNYV2RUMkg1QUhw?=
 =?utf-8?B?K2VxVUZQWnZFVThabkx4bS82RGJGZXkwV3NvVmhWVEM5L3NmMHNKYW5ROUt3?=
 =?utf-8?B?ajhDV3RpUHBveGtFVW85VWwyb3NTZXhMczQzcDhhMlZ2Q1RFV256WW9nVkdn?=
 =?utf-8?B?TUk3ZmhwNnJpeVBrMmFHVVVPWlZpVkJtWmRPRm5NNHRDUWhsYzJCdUVoVGZl?=
 =?utf-8?B?MU5FcTZnQVlHSGZzclQ3cElpczN0UHlHY2syRjE1VlZyT0RVdnIvS3RVNG1Q?=
 =?utf-8?B?ZFRsVnlMQkg1UTVhOHQvNGNZUlUwaFZQL3pUSDJWT1FtdDh4aFFpaFhjU2Vk?=
 =?utf-8?B?bFhjSk1JcUVkampSaUN5dzhtNnl0bXQrblgra2M1UnN3TTB1aEx4QjUwY0tS?=
 =?utf-8?B?U2hoejBkQTVkSmY4YzRyTkQwbmVSY1ZXam5aOUtyNTVkSmVjT1ZsTFJMUU1M?=
 =?utf-8?B?YldxMDhlb2RsUXRBQlRDS1JKa3BHSnRqSVJkNzlxYkM0ajNMaUdpL0RUeEg3?=
 =?utf-8?B?QmhSTFcxMEFXVEZRMC9tQ3Y4a3dQdXBSOUN5QW0yRE1yZVZJc1h3ejlUWUUv?=
 =?utf-8?B?UUZSTEJUblkwM0h3cGdRL1R5aXFvZU4vZFR3dDF6bEhsejFPU2UwTm4rQWMz?=
 =?utf-8?B?bDhvbmpQckY2OGhjc25XU0RRZ1JyRUovbzhFeXE2MUtBcDdVc3dybXRzM05a?=
 =?utf-8?B?ZWtCb3F0bnRLZWEycWRvaDhua0tWZENnQUo1dXJyN25PTkJ3TXJ5WFM2RjVM?=
 =?utf-8?B?YWNQOTVHbTVGNERGRDNtNTJpa2h4VHJZN2c3bEhsSGsrdzRHZSt4K1Y2Snpx?=
 =?utf-8?B?eWd4ckRQWWdFYXFPbzdHdEYrVFdMb3pxcXZNTElGeXdSNnFlWXFid2dpVGM5?=
 =?utf-8?B?Q05RbzlWMGRpMVlYVmI0b3pLYUpBUEd3dmFlVC9OWFd4bUw5UW5US2lEazR0?=
 =?utf-8?B?dGFRQWphdDBhNjBYdUdMcWMzUTJYdU43NWhtZEM4TFQ4dWdLSjJ3ZWUxZWQy?=
 =?utf-8?B?Z3Zwa251NTRTaW9TQi9vN2w3VjFkR2RNOVcrNmRPZDdFRU1YK002RjVJT3pP?=
 =?utf-8?B?SkNEUVpNZHdBbkJIU29QOElBcm9qbGk4QjFybkpNNVFvMXJBMEJ2eEROb0lW?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 71a866c2-4b27-4890-75d9-08ddb9f98598
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 06:19:09.8977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YFgb8K7RRO2JfO2DSqg45fiSCAYz0NQgoyY4KQCzshmUzqkCp+lKoeknQotNr1QxoaH4lFseXtmESprD2yXiL51LSgkgLyW/B3U/rhE4Gbo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7967
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


On 7/2/2025 7:42 PM, Jani Nikula wrote:
> On Wed, 02 Jul 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Ankit Nautiyal (2025-07-02 05:46:18-03:00)
>>> Introduce a generic helper to check display workarounds using an enum.
>>>
>>> Convert Wa_16023588340 to use the new interface, simplifying WA checks
>>> and making future additions easier.
>>>
>>> v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
>>> macro. (Jani)
>>>
>>> Suggested-by: Jani Nikula <jani.nikula@intel.com>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>> drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
>>> drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>>> drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>>> 3 files changed, 25 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>> index f57280e9d041..f5e8d58d9a68 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>> @@ -3,6 +3,8 @@
>>>   * Copyright © 2023 Intel Corporation
>>>   */
>>>
>>> +#include "drm/drm_print.h"
>>> +
>>> #include "i915_reg.h"
>>> #include "intel_de.h"
>>> #include "intel_display_core.h"
>>> @@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *display)
>>>          else if (DISPLAY_VER(display) == 11)
>>>                  gen11_display_wa_apply(display);
>>> }
>>> +
>>> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa)
>>> +{
>>> +        switch (wa) {
>>> +        case INTEL_DISPLAY_WA_16023588340:
>>> +                return intel_display_needs_wa_16023588340(display);
>>> +        default:
>>> +                drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
>> Hm... I wonder how useful the message would be if we just show the enum
>> value. For example, if the next workaround that we added was
>> INTEL_DISPLAY_WA_99999999999 and we had it missing here, I think we
>> would get the following warning message:
>>
>>      "Missing Wa number: 1"
>>
>> Perhaps the enum identifier could be found in the callstack that is
>> presented with the warning, but I'm wondering if we could do better
>> here.
>>
>> Not sure there is a good solution without requiring extra memory to map
>> each enum member to its corresponding the workaround number.
> The solution would be to make the function:
>
> bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
>
> and the macro:
>
> #define intel_display_wa(__display, __wa) \
> 	__intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa, __stringify(__wa))
>
> and then you could debug log the name.
>
> Worth it? Not sure.

Hmm... there might be some value to have some mechanism to print the WA 
name.

While it might not add much value in this particular case, but it could 
be helpful in other failure scenario,

where identifying the exact WA name might give clue while debugging.

Regards,

Ankit

>
>
> BR,
> Jani.
>
>
>> --
>> Gustavo Sousa
>>
>>> +                break;
>>> +        }
>>> +
>>> +        return false;
>>> +}
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>> index babd9d16603d..146ee70d66f7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>> @@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
>>> bool intel_display_needs_wa_16023588340(struct intel_display *display);
>>> #endif
>>>
>>> +enum intel_display_wa {
>>> +        INTEL_DISPLAY_WA_16023588340,
>>> +};
>>> +
>>> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa);
>>> +
>>> +#define intel_display_wa(__display, __wa) \
>>> +        __intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa)
>>> +
>>> #endif
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>>> index 6e26cb4c5724..e2e03af520b2 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>>> @@ -1464,7 +1464,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>>>                  return 0;
>>>          }
>>>
>>> -        if (intel_display_needs_wa_16023588340(display)) {
>>> +        if (intel_display_wa(display, 16023588340)) {
>>>                  plane_state->no_fbc_reason = "Wa_16023588340";
>>>                  return 0;
>>>          }
>>> -- 
>>> 2.45.2
>>>
