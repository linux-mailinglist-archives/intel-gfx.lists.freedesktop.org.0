Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBA342BA15
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 10:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 274DF6E083;
	Wed, 13 Oct 2021 08:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 325F46E083
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 08:20:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="227274468"
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="227274468"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 01:20:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="715488567"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 13 Oct 2021 01:20:18 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 01:20:17 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 01:20:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 13 Oct 2021 01:20:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 13 Oct 2021 01:20:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DX9p4Iy6hVnRxlglWx2z6byc9Ab+7Ex1De3EjPnsuGM7/boOdQM1qptisLzmz9pXXTDpRX6zSh00S6P3o1h3MMWF3wiZAbmKNb83NENzPI1bym7Re6OoAFnT5CPpQBU1dXHfjrVZkxHd8M8wxgE610W++8jdVAxzARj9NUVuZrPxXAeCrALeoQfD+OPx1q3APYkG5vJVtPPcfxAnOtEYMb52X5x+XifblPewjxanyMDJ+CbRXR56XwGybW6Pdn1Y61C62Y4kid63fXSy6+a/7XhkxQma5ydfBrm2k3D6fY6/dR3MaYeNbyRuzdb/yZ+I/lHTkl12faFYosyaSkkM7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0P5Yp7A33HxoJHjVobdI094wvLiV0lvvIAlBzYPfLuI=;
 b=oXqW9/6Th+7SFMVK5fLf5VDL4u9FY96frB8PH6wnyk2PLgLxmjuiyULUzN2rNaPUlZOKmr5Es4CkdVb/Z5KzNA1c+yGLhsCIxFdgNwHgL/tynAa+4CWjwoinZN8JIPaZQKZJntwg3s2oW7s2ntzkp+iMEDmZfdIkiraMgJRH50tUgD+QobCqxTSVcX3RGMWupmIyXAS04gVH/heLVTQCTL8bxw+YUn6zUqRem2GlUu5bsYOZHFq8PoODBvDzXZGgQzbSkKfhFZpoj92FqwhQFvRATAIrRBglYmbFX2qKKTz6H1G7jtKfR+TmnWO0LA9dxwIdgwCHWoELYwUc8cRAUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0P5Yp7A33HxoJHjVobdI094wvLiV0lvvIAlBzYPfLuI=;
 b=L92UvPBUFhoUt/F92TxenZG4iYKKCcStCpKCKeJ2AWMBMtD66Em+mOhNW7xWw/qhqVOdOP+xrTTh92pSngw3C+ZE4Fh1MP2pOhiU0rpaZugSAwjZ80HLeBnOB6eEYC6yNz1PKuDrY06WHRvO7+9zTaC6E/Y55FHaeqpighDzGrs=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from BL1PR11MB5365.namprd11.prod.outlook.com (2603:10b6:208:308::18)
 by BL0PR11MB3426.namprd11.prod.outlook.com (2603:10b6:208:32::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25; Wed, 13 Oct
 2021 08:20:16 +0000
Received: from BL1PR11MB5365.namprd11.prod.outlook.com
 ([fe80::7551:c756:c635:fecd]) by BL1PR11MB5365.namprd11.prod.outlook.com
 ([fe80::7551:c756:c635:fecd%6]) with mapi id 15.20.4608.016; Wed, 13 Oct 2021
 08:20:16 +0000
Message-ID: <530da228-de94-10d6-16a5-997470a3d638@intel.com>
Date: Wed, 13 Oct 2021 16:20:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.1.1
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>,
 =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
References: <20211013010046.91858-1-jose.souza@intel.com>
 <20211013025430.GB602200@mdroper-desk1.amr.corp.intel.com>
From: "Zhao, Yakui" <yakui.zhao@intel.com>
In-Reply-To: <20211013025430.GB602200@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: HK2P15301CA0018.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::28) To BL1PR11MB5365.namprd11.prod.outlook.com
 (2603:10b6:208:308::18)
MIME-Version: 1.0
Received: from [10.67.68.62] (192.198.143.10) by
 HK2P15301CA0018.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.1 via Frontend Transport; Wed, 13 Oct 2021 08:20:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b5d51d32-f43c-452c-7c67-08d98e224921
X-MS-TrafficTypeDiagnostic: BL0PR11MB3426:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL0PR11MB342659B90B365068125AA41392B79@BL0PR11MB3426.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OrzDkxpHM+IHpK/zXWbiFfnVUKd2z6nDGOPi7ECuuHy/BJlqNmcyYDL6aIIWEJPKqZAi+M5MCbWWNqK/NlWpBa1idfxYRYL1nsZiOhMODVAw18qEfxDx9g4KeYlrPPS6MIe95oC+B5gyi0HQqgRSSbhdqQdO5Cm9d+BCcKjBoVN3opfCDijVzAPbbf5/9vLESv3piN/LWqD4qU1viJu5b9C+wDPuFKPTIE0hSiR0flxGZj9KFLfw/FAyn8bLuSJUylPGY9mrjjMbW2qf/BnpAVIb58g8ObQ6MI0ZDam4O4cTbto5JcKzwaE/R9BsFnEOYX3HFOmQKE1L/NuaJSC4xVardsGicdVsrT6/1mq/2qZEOQmkS+JpWgaAjOMdT8Iz35XyXy4gqbYwy/McaNR4YuYZBnjZaUuU7H+rQaBQSw7vwAVX6RezN1ZcrnUNKF9sXRofjI+e61FDvaZxakidDNqdtJ2zQNMJ1zvvk1K+he7y9CD4GBnSeIND14wROR/yWL/lBnsd2th4AJRVqpti4jHueZQO7bc7bN/yT01yvpFNAq7jeHzWYv7EvDvWurWI2iN2T5CHORxOP3Kb/VzNk/WkR17a1P4s57GxbF/+RWrACExgaFYxemLWOTK1b4+nhYiBD8ylEZkV7wsgjyPZdGugQKGy4sNhCGrIFiSSCOxiWoVUxcn59JP7CWZ+8QmZCgpZ/2hfW/iEY8tDjSdMttvsKMGhOZlE3TszCtUFgU8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5365.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(186003)(6636002)(316002)(2906002)(86362001)(31696002)(26005)(2616005)(5660300002)(38100700002)(31686004)(66476007)(956004)(66556008)(8676002)(8936002)(16576012)(110136005)(6666004)(36756003)(508600001)(83380400001)(66946007)(53546011)(6486002)(82960400001)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTY4RWQzT0VGRzFKQWZ3dGhxMlVpdnR0SDFCZXNVN0dSbkx2RGFsay93ZmdG?=
 =?utf-8?B?NmFZUzVMUE5iMXNpRk9FYmkwUFlqUnRsQkd3N1FKTi9QMzBwUzhMVmlLS01v?=
 =?utf-8?B?SDkweGxYcTZ5U1ZNd05zRGJndnk1Sm5HUVUzU252TC9qTFBwK0dlUTBoY1Bx?=
 =?utf-8?B?YmxyNllzY3czV2xtS3JpeVAwNFd4V1k0dTkrbFdqMXpkVTRCV2dSMDZvSzNo?=
 =?utf-8?B?TUhvMkR2SThhRjNQemxYTTR3ZzUva1BaQlMxMmV4TGNmcWhDdVJxcEZNbjR2?=
 =?utf-8?B?WDhrWk1pSE5aaElDNUdaaGptY3FyNmxwZ2tUSHFPUWcydGJUbXdtWTJqWXZ0?=
 =?utf-8?B?ZXRseGVYUVltWkp2ZU0zUjVoWU85Sm03ZWJSekFVS1V3RnRVc0ZRTE83K25W?=
 =?utf-8?B?RlFIL0s2c2o1bjVUM2FZZVhHTldhY0xCNlEweGZhdzZMYUc0Szhsa1RXekx5?=
 =?utf-8?B?MDErRHVWc1VxWVY0amNzQ2ZiZEJYSlRTQnNLZmdPR3ZuZWdOSVVIYnVCRzhI?=
 =?utf-8?B?WWNOQU1FN24yUVJvMlAvWHV2ViswcUdacTBkKzJKaEpkYm5mdmpYUjhUV1dU?=
 =?utf-8?B?Y0JjSExjSjFqRnRnR0RqSmJFTy9jQkxiMW5mdlZXNzh2b3V0VUNlVVdLUllw?=
 =?utf-8?B?aGxaQzh1SktoTHRRV2pacGhaYjNncGs2WmJQWHFDUTUzSndIWlNtSTRpSERx?=
 =?utf-8?B?NzhyRzNYMXdNRzh6MUo2RTkxbk5jZTMwWFZQdGM1R0ZMSTI0UXF1ZVk3WHNI?=
 =?utf-8?B?K1V4K09XQnJXaGJDWStPUm01SWxYMXQ5aHRDNFFGdFlkV21CMkZlMGlOWDF2?=
 =?utf-8?B?aFlUQ0JaTDNqZnlrUU9sazRRbVUvd2Q3RVhUR0JrN2JsUXU1c3ZMSVVmREI1?=
 =?utf-8?B?ZjcreDBYU25NS0g4MzJXSnVoU09BUC9wNlBUNnZKUVN5UU5aMWpsY2hzMzQ4?=
 =?utf-8?B?T0ErVjFHamlhanUvbEJYYkVoZGRhcUxBekIxSGZRZmQzbHU1QVdsZ1Zjby9u?=
 =?utf-8?B?a0dWcHVodTd0dXRxeTMxWjdnQmx2dXIwdXpCQXFhQWFRbFFocFRnR3k2Q1VP?=
 =?utf-8?B?M1BnWms5MDVOaDhvdVhmSkxEek1RVmdWVWkwS1ppVnV5RSsyR3VKeHFESkNr?=
 =?utf-8?B?UUhvZkozcDJvdWZGQzV2aFFDSEdRNWx6T2VWYzVFM2xuNU5lNFM5TGgrL1N0?=
 =?utf-8?B?bmQ3d1hXUDRLdldTdGVjY0NuaFVIdHprUDVlcmlQaDg1VHdiYmFuZnNSUUFO?=
 =?utf-8?B?dmU5SldLZ2EwVndvZ01jVUt6eWQvSEFpSGhEYVFmRGl2emY3a2k2TDZWZTJ3?=
 =?utf-8?B?UTl6cGlyU0Q4ZDVwVVN6WEJlaXFRbWlINnlTaU1kTFlwL2F1SEV3cmJrSE5K?=
 =?utf-8?B?Lzl1RGNMK3lNZ284Z2Z2dXVGUloydUp3NkE5NEx4RXcvdDN3UW9Pd0Z3SytL?=
 =?utf-8?B?Vzlkb3NIVDlTU3k3N21HT1NOOFFoMnplWEdya0FSMkpvc3BsS05XOUhFeUdi?=
 =?utf-8?B?ZjJJL3ZIN1VQdElXc1RDdk9ldWxyT3ZiMmRDMk9vaE0zT3hUaXRxVVlSN1dz?=
 =?utf-8?B?YmdzUHh1WTJHNEtBTFJTdFlkSHh0eTlTeU5SQUVsczkrZkh6UkNHVWlZTnhz?=
 =?utf-8?B?eWkycG9UcE5HUzZLZm0zZHFwZlhMVGxHUm9Yd0RQZzZTdnZCS2JiS2VXc3NV?=
 =?utf-8?B?emw5dEthVlZ5emJVK1J5Sm9GSzcwREdvb1VKWGRVeFY0dkp6d25WdDZDMEU3?=
 =?utf-8?Q?e3BoXA0La/BJ7bcwCw5rpm3R2DcijmgNZ6bS07g?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b5d51d32-f43c-452c-7c67-08d98e224921
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5365.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2021 08:20:15.9476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QFYeKGG1+ikA5w7uLvdCoBLn/NI4Cem7vC/kajPcaLsIhDW6y/XShxTp5HU74+P2abKlwV8UhU7s7NuzKeyGBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3426
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Remove memory frequency
 calculation
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



On 2021/10/13 10:54, Matt Roper wrote:
> On Tue, Oct 12, 2021 at 06:00:46PM -0700, José Roberto de Souza wrote:
>> This memory frequency calculated is only used to check if it is zero,
>> what is not useful as it will never actually be zero.
>>
>> Also the calculation is wrong, we should be checking other bit to
>> select the appropriate frequency multiplier while this code is stuck
>> with a fixed multiplier.
>>
>> So here dropping it as whole.
>>
>> v2:
>> - Also remove memory frequency calculation for gen9 LP platforms
>>
>> Cc: Yakui Zhao <yakui.zhao@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Fixes: f8112cb9574b ("drm/i915/gen11+: Only load DRAM information from pcode")
>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

After removing the check of memory frequency, the EHL SBL can work as 
expected. Otherwise it will fail some checks in intel_dram_detect 
because of incorrect memory frequency calculation.

Add: Tested-by: Zhao Yakui <yakui.zhao@intel.com>
> 
>> ---
>>   drivers/gpu/drm/i915/i915_reg.h   |  8 --------
>>   drivers/gpu/drm/i915/intel_dram.c | 30 ++----------------------------
>>   2 files changed, 2 insertions(+), 36 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index a897f4abea0c3..8825f7ac477b6 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -11109,12 +11109,6 @@ enum skl_power_gate {
>>   #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
>>   #define  DC_STATE_DEBUG_MASK_MEMORY_UP	(1 << 1)
>>   
>> -#define BXT_P_CR_MC_BIOS_REQ_0_0_0	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x7114)
>> -#define  BXT_REQ_DATA_MASK			0x3F
>> -#define  BXT_DRAM_CHANNEL_ACTIVE_SHIFT		12
>> -#define  BXT_DRAM_CHANNEL_ACTIVE_MASK		(0xF << 12)
>> -#define  BXT_MEMORY_FREQ_MULTIPLIER_HZ		133333333
>> -
>>   #define BXT_D_CR_DRP0_DUNIT8			0x1000
>>   #define BXT_D_CR_DRP0_DUNIT9			0x1200
>>   #define  BXT_D_CR_DRP0_DUNIT_START		8
>> @@ -11145,9 +11139,7 @@ enum skl_power_gate {
>>   #define  BXT_DRAM_TYPE_LPDDR4			(0x2 << 22)
>>   #define  BXT_DRAM_TYPE_DDR4			(0x4 << 22)
>>   
>> -#define SKL_MEMORY_FREQ_MULTIPLIER_HZ		266666666
>>   #define SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5E04)
>> -#define  SKL_REQ_DATA_MASK			(0xF << 0)
>>   #define  DG1_GEAR_TYPE				REG_BIT(16)
>>   
>>   #define SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5000)
>> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
>> index 30a0cab5eff46..0adadfd9528aa 100644
>> --- a/drivers/gpu/drm/i915/intel_dram.c
>> +++ b/drivers/gpu/drm/i915/intel_dram.c
>> @@ -244,7 +244,6 @@ static int
>>   skl_get_dram_info(struct drm_i915_private *i915)
>>   {
>>   	struct dram_info *dram_info = &i915->dram_info;
>> -	u32 mem_freq_khz, val;
>>   	int ret;
>>   
>>   	dram_info->type = skl_get_dram_type(i915);
>> @@ -255,17 +254,6 @@ skl_get_dram_info(struct drm_i915_private *i915)
>>   	if (ret)
>>   		return ret;
>>   
>> -	val = intel_uncore_read(&i915->uncore,
>> -				SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
>> -	mem_freq_khz = DIV_ROUND_UP((val & SKL_REQ_DATA_MASK) *
>> -				    SKL_MEMORY_FREQ_MULTIPLIER_HZ, 1000);
>> -
>> -	if (dram_info->num_channels * mem_freq_khz == 0) {
>> -		drm_info(&i915->drm,
>> -			 "Couldn't get system memory bandwidth\n");
>> -		return -EINVAL;
>> -	}
>> -
>>   	return 0;
>>   }
>>   
>> @@ -350,24 +338,10 @@ static void bxt_get_dimm_info(struct dram_dimm_info *dimm, u32 val)
>>   static int bxt_get_dram_info(struct drm_i915_private *i915)
>>   {
>>   	struct dram_info *dram_info = &i915->dram_info;
>> -	u32 dram_channels;
>> -	u32 mem_freq_khz, val;
>> -	u8 num_active_channels, valid_ranks = 0;
>> +	u32 val;
>> +	u8 valid_ranks = 0;
>>   	int i;
>>   
>> -	val = intel_uncore_read(&i915->uncore, BXT_P_CR_MC_BIOS_REQ_0_0_0);
>> -	mem_freq_khz = DIV_ROUND_UP((val & BXT_REQ_DATA_MASK) *
>> -				    BXT_MEMORY_FREQ_MULTIPLIER_HZ, 1000);
>> -
>> -	dram_channels = val & BXT_DRAM_CHANNEL_ACTIVE_MASK;
>> -	num_active_channels = hweight32(dram_channels);
>> -
>> -	if (mem_freq_khz * num_active_channels == 0) {
>> -		drm_info(&i915->drm,
>> -			 "Couldn't get system memory bandwidth\n");
>> -		return -EINVAL;
>> -	}
>> -
>>   	/*
>>   	 * Now read each DUNIT8/9/10/11 to check the rank of each dimms.
>>   	 */
>> -- 
>> 2.33.0
>>
> 
