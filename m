Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C79C86453FC
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 07:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F4E10E0E2;
	Wed,  7 Dec 2022 06:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 168BA10E0E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 06:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670394507; x=1701930507;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q4XNv+nZWn1hkpUP/weY91Hw8KrBUyoAVZe5QRw1Tik=;
 b=hx7ncPB3gDyqu5mmP97CC3ZwLSwvhBQpnXWSaKOHzoeXieYRpWPRVHbU
 jZ0nmd1Iva6T8mufJp1vaf26J8CQnRTt/GOCtsY6OtD731GWdlU+xcjy0
 szF7divIUB4yIvO+9e2WNaYhHan/HQ+aWYqC6yk9KxjOWaATGf7+UTNho
 CjjIQGdv03kexyk3E4XRSfcm63LbOU0VFLMOCfDmh2UsU/H5BlXlyqRdt
 nP/j/6czUksIfmDRbPDW7/MeGmKoOhS0ZKMHvBIszSk0pZXPVuQz7xKUa
 zsMbjZEx/UENUHgkdBuk+DYlFzLGaq4gsg+BKAzeZ52hPl+GAafJXSBim Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="381109143"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="381109143"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 22:28:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="648605917"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="648605917"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 06 Dec 2022 22:28:26 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 22:28:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 22:28:25 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 22:28:25 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 22:28:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hv7OEexaVbxbuvRe/KZ8EGPbJUAtlr85C5fvjXaefq0gMtgn0vyjz/5K1lHeOAHuM1cXihH/8LE6LSjCjMhAOOXJiFPlZD/ZTTLetbsDyEy3Uj8Q4YyAfioI0yVXELArLRAbFWAN2pq8Vvevg0L8f5y9ZfQMrJc7gMr6t+wX9CmSraAkXz5MVXZlVxT4cDQzHhdNtHXSu1ClaT+SA4csWPhOJDndDz+f0ObgCNeSCn6cHjJunZZwLlwWB3RNwhI0aR82cJNsO30NsnIYPlJYb6QXkS1CEGYo8jgxGO67PQonbg6ETW0CfB1QSZG2EnoGu7UMumsCJvJQtP3Xyd9XQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hy1QKyLuFXHrCHADjI4/eibKyPAk8MHcsGJsZUp7YjU=;
 b=iuUmjH1SJf5IIFbN9uKu4shlRyyCrhfXwwwXXnw0xi/+yJLuxtw0O6KnPHTh9aKhI6c7c5w9X3OQDp4eiN5Cw9qxwY7Sm1S2HU2NTEWUZORfk6qKEx9FCf2NgBf4a/LYbG4SlGsO0MCR+clX7skS8/3bvbCiLDSGTtGEVb9E0tXrJZbt9rvaKlRRPrUhFLEq03sRtMZOhWfqc72bYtg9oT3GmrLfpxdI1Lozq/RI5WhCsKJAPL1EqAKs9vZFgeiyg+LnS31dkTHPEcDBxdNxS4JJ2ylER12R7kFK7ZoD+sZOnloBDrCx5FVhvrMq0779oPwwoCg0oe20RFoh+Y6ojg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5474.namprd11.prod.outlook.com (2603:10b6:610:d5::8)
 by CY8PR11MB7172.namprd11.prod.outlook.com (2603:10b6:930:93::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 06:28:23 +0000
Received: from CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::ef2e:ffc8:a4c7:7d64]) by CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::ef2e:ffc8:a4c7:7d64%9]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 06:28:23 +0000
Message-ID: <3902137c-bf9d-7367-ad59-932658fafc74@intel.com>
Date: Wed, 7 Dec 2022 11:58:14 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
 <5abb076e8a8f78bf1e13a08d8300d2f7cc043cac.1670311877.git.aravind.iddamsetty@intel.com>
 <Y4/HW8q1WdH/QBDG@mdroper-desk1.amr.corp.intel.com>
From: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
In-Reply-To: <Y4/HW8q1WdH/QBDG@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0090.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::9) To CH0PR11MB5474.namprd11.prod.outlook.com
 (2603:10b6:610:d5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5474:EE_|CY8PR11MB7172:EE_
X-MS-Office365-Filtering-Correlation-Id: c8a2849d-7473-4248-d402-08dad81c3d97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2Qye/YF8quoW3RFuzW82/PDDKZoWdjXS+SxRJTe+fH0kTRTnfNvr+AEm1bdBBzVkU0CqQG+QISAT+Wx571n9PxQtnCOAXgPG4y+3lroHTtyV6bMJdHIG43iuYJcULASY70WGYgojO6LkzYEWg3Ipe8GScxKgLLqtWnwPQV5rcW/3AhuVWfPsHPjKC+jEuwe0aOT2g6U+07wDl/AvlPtjz0hc7Xflxf9uBvfR4W9aukzgDEySbrzypre5n0isvJEZPKk83BjOs9pMWpyIpTYidVHqZJH5mxUmg+EYWO3U/nWGi93SYNwQS3RniHOlVpTLshu68EqECzaY5n5KUUiC1YYs29teTgoX81adFtXElxJ4pyoXShD4DAaVmKlJRHWMR19XtoMdU8vLFPih1atrXXy8+SBJVsprDSxxC3XvVL81mh2xyy3tImNPgg7GGF5GewlZTLKXed1xNJH4ims7y5xYT3UyrW8KBncy3zkRkST6uV9FwWSgcQpjjQccMdWuYXG0K4b1LuzC3EF56+tQvXCB/1RiA5YU+io83FE/Rx+xOguanWHowhUf6A8+MjimS4bT46694Ob6mdUFYe+63I2yDDDmlAnIRrWms6GplIHwPTLQHwY43blSR/LMrmlzjobuglsdPSWZeHG4qAKWD5Ka1BOIhxIDEU8XkZdK/3C4SpbJ97ebUaW8/NKpSE01kneXIyOwID8nN0CT5k1Z9Cw/K9E3xsyrIMQhpVaAFTU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5474.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(136003)(346002)(376002)(451199015)(38100700002)(82960400001)(31686004)(37006003)(36756003)(6636002)(31696002)(478600001)(316002)(107886003)(41300700001)(4326008)(6666004)(8676002)(66946007)(66476007)(66556008)(53546011)(6506007)(6486002)(8936002)(6862004)(5660300002)(6512007)(2616005)(86362001)(186003)(26005)(2906002)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWZ2Y2xVZ09mRHFqSE5sR09xQTBXUDZTZFd1RExVeElFQ3drWVl0SkNPWkN6?=
 =?utf-8?B?OXVDZGNnL3B3YnRmNHN1TEJ1ajllQy9zVDdnc2wzenNpdlduL1psbmNuMi9a?=
 =?utf-8?B?a0VEU20zcGFrSGtZTm40Mk5JZFhrT2prQXVXa2VoeTBMRmM5UTVYR2NqZS93?=
 =?utf-8?B?VWV1YUlrT1N0N2k2K0M3TjBkSHdOTDBXdFpQWTZhdDRDL1hEalpGV08vczQ0?=
 =?utf-8?B?Sm8xVjEvV2t1dlh5Wmdzd0Q2ZFdEM05nbEdsTTNQeEZZZGFYYUM5NHdqQWds?=
 =?utf-8?B?SFBrSnRneEI2RjlZcUNmNjJrNEtzSTB0M3hRNDMvaVAwZWt5L09pV3NSODlG?=
 =?utf-8?B?RzdpM09JVnlTWVVTRS9McHBqeGF3V2VldVhHclQ2R0ZPU3NKM0p2c3ZqQ1Mx?=
 =?utf-8?B?NjJ0OTRhd0NYZWpCQSs5TVlzbm0xM1gweEVEZ0k3R0JNRGZrMmdmZWljdWJa?=
 =?utf-8?B?cnFSTXZvOEZGT05lNk8wbEJ2c2VOdFF1alRzSFNqNUp0NGNOMlFFVnMzOEJD?=
 =?utf-8?B?SEw0bnU4OTVQNlhOTTQ1TGN6KzN3aWJWVGUxT1BIaGhrbWl1YVBKQnczcjhK?=
 =?utf-8?B?aE9xM1JxclFoNWpFNGxKKzJCdm03ckVjS1RIcVp0M1RiV0JZdUsvZlBLZ3N0?=
 =?utf-8?B?WnNQWWxiRG9wa3ArdUtub3E0UE9oUWh1THVMR2VZTEw1ZGpqNGs4ZmE4MFZ2?=
 =?utf-8?B?ak1uYWswU3FzNGM3ODRSRkxzdjBlN2xmbWVrdlU2SldPNjYremkzNUdDdzJ0?=
 =?utf-8?B?UVY5SENsUVBCL3VFczRxTHFnYWlWWmlnbXhhMFZ3Y0g5NlZXWThLNnpvWGYr?=
 =?utf-8?B?aWErRzFIYTdyU0xYTWFaRWc2bVBQVVRNWmRYSGM5MUQ1aUtuV3pMTXdrdzlm?=
 =?utf-8?B?cUlUUXlSVXluaEJxdlBhd0ZXVUZJdWVUbjF2N3dtWm52UlY5bnY0aERTVFYy?=
 =?utf-8?B?NmhVenZReWRhbkQyUGRrclEwb3l5cFlMMndRQlZSVDFIeloybDN0Ymg4Mncx?=
 =?utf-8?B?ZW1IVHlwU215b3hHcy9WalM3TnFPL3dkL2I2d0dVS05TNVdzZEViTnAwdEhI?=
 =?utf-8?B?ZlUvOEgwa3R5UU5sa1ZMZGhOQ2lZbWY1aTB2Snc0YXhSZDFBYUpXanZWY2I0?=
 =?utf-8?B?c2p3ajZvajBBOWl2UFRDbDNxaW1OSjdDandUcm5qaUdhUGRBdXRwRmxCVm1i?=
 =?utf-8?B?UE4xRXpPRURlOTJ1NU0yZldoeEU5Y0hlaGs2WG1uQ1VmSEZIMnNwc2JQVmY2?=
 =?utf-8?B?RVlQeC85ZVZIY0psM3Z3RTJEeHE0b3U4cStjZ2djZG10WnJlUm1BS25XaXZi?=
 =?utf-8?B?VlNSazE3dFBRRG9xU3hHTWd6bmc3UW4xMlc4elFwdm1Kb3lxSlB6ZGtCZ0pu?=
 =?utf-8?B?TXRabTdKU0l4MnR6QjR6dGFCN0tMUFJ3SDFGTmRnM09DMkhyd2hGa1FBUnNp?=
 =?utf-8?B?alVQYTVTallSWVlhQktOODZmcUd0eFdDSDhtZXBFZ0YyYTJnRm9TQ2xidWdv?=
 =?utf-8?B?dTF6NEpzcFJFYkFRSkRyYm4vOXZITE1ZTnNlSlBpTkZkQjFoeFplQkJZUGNE?=
 =?utf-8?B?VzlaaVlRb3J6V2kvQ3JUWkpkeUNiaHZ0c0xjZEFtMEhlZ3kreXVFU2hXNmNM?=
 =?utf-8?B?UGV0Q1JMaXk0cytsNEhadis0YUVQMHp6MGQram9PVXQ5ajJ0NXBoK1RwMGha?=
 =?utf-8?B?UStxYWZJVGVQeTRldktaRkZ5MGZXbHhnVDREZmxkTEo5bFI3NlVCVmJNOFJJ?=
 =?utf-8?B?VXQ3b0t3VUxvNkRtTnoxMW9mcnZ2bzg3bXJKenM3Q2d3OFhqamJNV2pZUk5t?=
 =?utf-8?B?UzJiMUo5UXErbTd5NDNCWUQ3aGtqYlZzWXNsbm1SNFE1Qmd3VGM2b2dPcVpM?=
 =?utf-8?B?SVZsRm02RFFqdmtWWkxMMkMzVml0SHJNVjFuYkdnWGdWK3VMYUdseXlzcDJv?=
 =?utf-8?B?T3FXNysvZnBpdEtZTGRFWWRqVk9IMENSd25scDdQb0RuNENoalNQZkJvSTNk?=
 =?utf-8?B?TW9tVGJrVWlYQ3F1Mk8rMnVnbGJUUmhkYWdaM2JWVE9jR0o2bmdqQ1ozdFR5?=
 =?utf-8?B?ZUJua253QXBSbTFUQk56Skc1UzFPMTZIR0c2c3RGbFpCaFFPRVRhRFhpRXZj?=
 =?utf-8?B?RWs3TUhZRmUxQktPZWtCb2RxN0hDZTY0aDZseXgvR1QyZG1mWjdNOVFIMVV2?=
 =?utf-8?Q?GD4uH32K8R7czGjFN/UJ4Ss=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8a2849d-7473-4248-d402-08dad81c3d97
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5474.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2022 06:28:23.4308 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3w6g7Royy+ve1bBI+M4Q7PKoruXsA7KzIdKdLGZncsaXfu1G7cPyb+7rZTBnaJWPzTFcJsH8ES7pfSZ09cywuWPup3ouBQL/9ODF/fnFIVE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7172
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Reference pte_encode through
 vm pointer
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 07-12-2022 04:21, Matt Roper wrote:
> On Tue, Dec 06, 2022 at 01:07:27PM +0530, Aravind Iddamsetty wrote:
>> New platforms will use different encode functions.
> 
> You may want to elaborate slightly.  E.g., something like
> 
> "Future patches will introduce new platform-specific page table entry
> encoding functions.  Existing PTE encoding calls should call the
> appropriate function through the VM's function pointer instead of
> hardcoding calls to the 'gen8' variants."
> 
> With a tweaked commit message
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Thank You.

Regards,
Aravind.
> 
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dpt.c |  2 +-
>>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c     | 10 +++++-----
>>  drivers/gpu/drm/i915/gt/intel_ggtt.c     |  4 ++--
>>  3 files changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
>> index ad1a37b515fb..cb8ed9bfb240 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>> @@ -298,7 +298,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
>>  	vm->vma_ops.bind_vma    = dpt_bind_vma;
>>  	vm->vma_ops.unbind_vma  = dpt_unbind_vma;
>>  
>> -	vm->pte_encode = gen8_ggtt_pte_encode;
>> +	vm->pte_encode = vm->gt->ggtt->vm.pte_encode;
>>  
>>  	dpt->obj = dpt_obj;
>>  
>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> index 4daaa6f55668..31e838eee2ef 100644
>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> @@ -427,7 +427,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
>>  		      u32 flags)
>>  {
>>  	struct i915_page_directory *pd;
>> -	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
>> +	const gen8_pte_t pte_encode = ppgtt->vm.pte_encode(0, cache_level, flags);
>>  	gen8_pte_t *vaddr;
>>  
>>  	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
>> @@ -580,7 +580,7 @@ static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
>>  				   enum i915_cache_level cache_level,
>>  				   u32 flags)
>>  {
>> -	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
>> +	const gen8_pte_t pte_encode = vm->pte_encode(0, cache_level, flags);
>>  	unsigned int rem = sg_dma_len(iter->sg);
>>  	u64 start = vma_res->start;
>>  
>> @@ -743,7 +743,7 @@ static void gen8_ppgtt_insert_entry(struct i915_address_space *vm,
>>  	GEM_BUG_ON(pt->is_compact);
>>  
>>  	vaddr = px_vaddr(pt);
>> -	vaddr[gen8_pd_index(idx, 0)] = gen8_pte_encode(addr, level, flags);
>> +	vaddr[gen8_pd_index(idx, 0)] = vm->pte_encode(addr, level, flags);
>>  	drm_clflush_virt_range(&vaddr[gen8_pd_index(idx, 0)], sizeof(*vaddr));
>>  }
>>  
>> @@ -773,7 +773,7 @@ static void __xehpsdv_ppgtt_insert_entry_lm(struct i915_address_space *vm,
>>  	}
>>  
>>  	vaddr = px_vaddr(pt);
>> -	vaddr[gen8_pd_index(idx, 0) / 16] = gen8_pte_encode(addr, level, flags);
>> +	vaddr[gen8_pd_index(idx, 0) / 16] = vm->pte_encode(addr, level, flags);
>>  }
>>  
>>  static void xehpsdv_ppgtt_insert_entry(struct i915_address_space *vm,
>> @@ -820,7 +820,7 @@ static int gen8_init_scratch(struct i915_address_space *vm)
>>  		pte_flags |= PTE_LM;
>>  
>>  	vm->scratch[0]->encode =
>> -		gen8_pte_encode(px_dma(vm->scratch[0]),
>> +		vm->pte_encode(px_dma(vm->scratch[0]),
>>  				I915_CACHE_NONE, pte_flags);
>>  
>>  	for (i = 1; i <= vm->top; i++) {
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 7644738b9cdb..82203ad85b0e 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -273,7 +273,7 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
>>  	gen8_pte_t __iomem *pte =
>>  		(gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>>  
>> -	gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
>> +	gen8_set_pte(pte, ggtt->vm.pte_encode(addr, level, flags));
>>  
>>  	ggtt->invalidate(ggtt);
>>  }
>> @@ -283,8 +283,8 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>>  				     enum i915_cache_level level,
>>  				     u32 flags)
>>  {
>> -	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, flags);
>>  	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +	const gen8_pte_t pte_encode = ggtt->vm.pte_encode(0, level, flags);
>>  	gen8_pte_t __iomem *gte;
>>  	gen8_pte_t __iomem *end;
>>  	struct sgt_iter iter;
>> -- 
>> 2.25.1
>>
> 
