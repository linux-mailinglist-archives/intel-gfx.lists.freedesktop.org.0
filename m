Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF5D44DBA0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 19:31:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCFF089C6B;
	Thu, 11 Nov 2021 18:31:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE25189C6B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Nov 2021 18:31:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="230451160"
X-IronPort-AV: E=Sophos;i="5.87,226,1631602800"; d="scan'208";a="230451160"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 10:31:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,226,1631602800"; d="scan'208";a="470885726"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 11 Nov 2021 10:31:22 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 11 Nov 2021 10:31:21 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 11 Nov 2021 10:31:21 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 11 Nov 2021 10:31:21 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 11 Nov 2021 10:31:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BPRtmh1l6SJTSJpYUIqFjtEio2onh8c4fzz/M6wobzdUn0j5GOSRYe25wtH2V4UG/KXko2enGyTCKtqrRhHfTtWQaz1wKeuDCtSV3mQgTnFrsYyUeb/J8/xrrMRgoQjj3HzKCDb8NqdUToJWFjx3SKgIdODKczicaBnFbADMSmSt+XSEaHG+sXkAzehJf0QhF3GeTW8/JpNJvMQRxzzbJgy8xYgiQtkXwPu3GHxtVOvnDPs5cWVjGr5/jJwev+AoAYfs83oQmYGrn07kvybK8eBbYcRnlrsxElkCZU/WqikYCw8SsD/fmHPTgBkUjzeMKo46M3FE7wDoOUStBQeI7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XlLpdXj3ucHMxwH8IRpF+RmcVZUodpLMRwbwS/MonM0=;
 b=cfY5axtqQcSJqgV9KPf0FCZFsFfpWyLoTEZmzn6Gy9tp+n4FhiQjE+0RGZZdZCE226qZjjXPHK3bDU1OvYrNc3C3m0ytGoB0DZL7AlEs3dpFdsAsqjm5e/zTEsRXIselH4qAXTCDxez9N9gHccuqhzkl/R1IOYfg5rOvrqXdO0HsROD4C2PT8ygmRv8UY0DbXAEmvy6/yhOIYmtdWc7xoXq323Z78XNv+exZUPpUAjhII/v51/8ilBuOlYQwLNbEGyEdVR0W/FcTNiwyOPBNmA8hg0JadFM/aPmGr3JjJ/K+cgKZXZ2F1EWeKjO8HHgoc1UZIVssp3HTaKaoPs91rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XlLpdXj3ucHMxwH8IRpF+RmcVZUodpLMRwbwS/MonM0=;
 b=geIGisdEcYRbNpuZ7HdhWfHb9tuFCZz6a6xCI9vKXcomtoGkBelq90Q165b9L/wYXj778R88Gin2XGxgjKd7WoFv0+j2TjZNM36UVm+kwZGdQYMVa5RkoYqVjMl4mXGkFVgs+Y6WnDvDcK8Ky0rho6N/2MLlzMlXvAW7x79953Q=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:14b::23)
 by BN9PR11MB5546.namprd11.prod.outlook.com (2603:10b6:408:103::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.16; Thu, 11 Nov
 2021 18:31:19 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::a928:c569:3d52:cb2]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::a928:c569:3d52:cb2%4]) with mapi id 15.20.4669.016; Thu, 11 Nov 2021
 18:31:19 +0000
To: <intel-gfx@lists.freedesktop.org>
References: <20211102222511.534310-1-matthew.d.roper@intel.com>
 <20211102222511.534310-2-matthew.d.roper@intel.com>
From: Clint Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <6417c208-c5be-ec0f-f89d-28ec83794809@intel.com>
Date: Thu, 11 Nov 2021 10:31:15 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <20211102222511.534310-2-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: BY5PR17CA0006.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::19) To BN0PR11MB5711.namprd11.prod.outlook.com
 (2603:10b6:408:14b::23)
MIME-Version: 1.0
Received: from [10.254.19.152] (192.55.52.200) by
 BY5PR17CA0006.namprd17.prod.outlook.com (2603:10b6:a03:1b8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.16 via Frontend
 Transport; Thu, 11 Nov 2021 18:31:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cdb5db1d-0784-412d-4ec3-08d9a541743c
X-MS-TrafficTypeDiagnostic: BN9PR11MB5546:
X-Microsoft-Antispam-PRVS: <BN9PR11MB5546C044C5DE4DBA52D56957CE949@BN9PR11MB5546.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2KudgQGwAhDb+Ao7jvVEj1a3/j1cBg3wrawSBU4Q4+dgwNpMjjKhZ12bY4GM6BtXqltTng9mtG1mqMB7G60tZoPLNI2ZWlSsRsmOXve5HjZGp9jE8P+jGPz8BUZoulnZO9JhocPcVv/4JMEYpoa0EhoNE6khNHc6wpgcGgceqPknsTW/B/fYhG1WQsdI3yEGDDOjolRvvjl2Iap9nyjcXUX/5G/QZu8SRJQCKyG7wxr1VSadSCAaA2VCKgs0wvtJ52yh7FjHE39ZHOymzyU805bYBsB57aXLBvNmd8cwZhR9PPXbirMlDtPYttCT1yYEkhxicwTroLBh7J5fKe8nCDnWwfg1ff6qEvnb48wSSe3TwpC8hch/nSOFkBhYXbL3dDfYJjrLMw4jFkbk+vxUsDCHysXDV8HEcCQTEuPId3tUkopL2Kn8/03UelOpeZYq/XZfrQINHYKP8NYo7ZknuFwNpuUVvNkYRnvOP+gWQJcBLyxcbdKP+Zw/vqgZXSfGYa7siRNCOX1agUfJvRgLDYYkMW84VMFS33/BRymECD+4ilHpENIlBna6k3Cl0NomTobi7bHwpXT68id2lumbMc7HtAwqFCih++3uqnv6YHdozKRK3smKydberexXIJjIlHaQwxQpcELgesm1VSXzqLJvxybU1uxRtxV6MiMFDUNCH979gFXexYvzCebjJn2CJdvsswAYYcmKj7npDqBM3hXPPeFYE6g93XcPuYzeGZc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(26005)(31696002)(16576012)(186003)(6666004)(5660300002)(6916009)(82960400001)(86362001)(31686004)(36756003)(316002)(83380400001)(2906002)(8676002)(6486002)(66556008)(8936002)(66476007)(66946007)(956004)(30864003)(2616005)(38100700002)(19627235002)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?czRxOENTNmpBTFNWSHhSUDJEcFloTXhCYmdrWGF0a214bUZDRXNWRFl2MGFV?=
 =?utf-8?B?S0d3dC9laFRST0o2aU1pdlhkZGI5VWprOVlTZi9xdUpJUjJCVW9oUWtwalpq?=
 =?utf-8?B?c1VGNUpLZjVGUlJXYTdrMHlsVmptZDdtSXViWkxDc3VERDY4b2ZrOWFkQVVU?=
 =?utf-8?B?ZVlHSEdmS3NkeWo0SmRTWDJwcnlXWkt4RVFFdkwwQndZQnhGSlBuRytXNG9B?=
 =?utf-8?B?MGptS25PSzgwNmk4Y25EQmNORkRwNmFSWDR1RGVpcXFTc2VYSFN4a0l6VmJM?=
 =?utf-8?B?WGFYckM2SHZBT1owa0ZNN2hwdmt4ZzE1NGVSck1pbk1GWGU2cmJaSFJnTVVv?=
 =?utf-8?B?MmF4UTZ5YUs3N2RicmQzaGlWTXZJcnlac3FxQ2xhMzZJQkI2ZElCc3NwNm43?=
 =?utf-8?B?K09oVjQ4WjJ2ZGdTRHErZldOWFZGekFnZW1OTncrbTNEOS96L2F6UU4wTTJ2?=
 =?utf-8?B?NE1uaEVpSTJrV0k5dlQzM21YMU5DVjVjajMvYXU3enJleSt2d1ZEbHNQQ2Jp?=
 =?utf-8?B?TjlTTXVKMkYyUGxmSW5rcG9kOFFIL2FKUU00SXJVTzVzUEViT0crM1NOWlVG?=
 =?utf-8?B?UWkzUUd1a2hWaFVYQ0xYeTBiMjVMZGRSSkp6TGJlRFpsQis3WDZpVm91T3JK?=
 =?utf-8?B?a29Sc1BRWVU5SElaSUk5RTg0N1crd28xbGU1dTNZN0E4UU0zM08ralRPcnhw?=
 =?utf-8?B?QjJEdnFyTnl3c2xVNDR1cFloS3gyVWovb1AvWTVUNkNmcHMwMjdmMnI2WnNG?=
 =?utf-8?B?NWd4N0ljVFIzMkpWaW5SOGh5Zk5yYldEcGNuanN5a1pZVysyWk5wUEpOcTFV?=
 =?utf-8?B?eTVTdWpNb080RzZJMmpuNzh6eWgyWksyd1lIVW1JMDRhalZMU1FFMmI0ZXV5?=
 =?utf-8?B?SXJnei9WOE1nSUdrM2xSeTR5WlcwK2dTTG51TWRPUEFwUnFYTFM4TUFkbnJ2?=
 =?utf-8?B?d0dtaWFMV3YwbGxkMlQxVjZlMldMU2dwbkRRaWhZRUdBUzBnSXdTajc1a1hp?=
 =?utf-8?B?Y3VoeUk2UnNJSXBGSkgwSGZhWTY1ZU9WS3R0Ymg4eHRaVThUaFlNU05QbGFP?=
 =?utf-8?B?RlZya0doYms0bEY5ejJENmlpNTNLazR2QUZDNUN3OWpKeWRlbUJ2OEJpdUdt?=
 =?utf-8?B?OFdvcVg1dUZkU1lXNzdURXl0bGw4Y2JUQk9TK3NHd3AzeEpOV2Q4VkliUTRY?=
 =?utf-8?B?UGpMeDNxVnBUbXluWHd0WEtyVjJQVnN5eWM0ZHdxWTZ2T0ZlSm8zWG5Pa1ZB?=
 =?utf-8?B?T0N4R08zYkpENFkyZnNUdmdPczduZ1RlZEFIMzB5aEtuU1FaVEg1M3RYQXR0?=
 =?utf-8?B?Mm9OYktnbVJpZFNoaHoyYm5scVk3ZDlyejg1cDRvTmtSQ1J2cHFKeUROR1Z4?=
 =?utf-8?B?MUhHYUpXcURBK1FiUkZrdFZYZFhKd0FyaFczTHhCRG5yNXU0ZGw0QW1UMkNQ?=
 =?utf-8?B?eUhodG9NRkl0UnN5SUNIZWNQZVQ4bGxPNWwySk5YTlN2VVp4dnQ4eVlGYStn?=
 =?utf-8?B?U0E3TEVBRjJoKytaWjNnWTFiVGpGa1c2UUtKYlhOUjJjTW1CTzJPZ25SVnFo?=
 =?utf-8?B?M2xjNVdOQXJZUW00N3R0VnFnZURIUXlLRStTSURmaTFxM0VyN2pyek5VRW9t?=
 =?utf-8?B?dnFhZENybFd1alhpYWkvd2V4aWlaRkJQRDV4bmZRKytheWVOZldFSWIwd2Yr?=
 =?utf-8?B?YUdLdzhoMks2NmdvdWVkMDRsVmc2aFE1Nk9Tdng0QzJFaXduTStlczZScDQ3?=
 =?utf-8?B?TUhXcHdPOGJ5U3FFYVN3SUcyMTBaQzVnS29BT0VTMVNkV01tYTExSG9XblZ3?=
 =?utf-8?B?aEVFUC9pd0thVkF4RnU3ejBXTkMvTjUwTHhWNkJ3Vnp2djRQYzJ2SGtkQlNs?=
 =?utf-8?B?N3FFS1RKRzh3RDlSenIrRTNBU29paEZZNHh2TW5VajB0QzRRSVRjNDQ3bmNr?=
 =?utf-8?B?aFoxbjc0RGJTZkdKSm8yMnFOK0NpaGtiTzFNRG9xYWVlTHR0MjFSaFk4cGFN?=
 =?utf-8?B?RWlUc2JUcHpMZGQ5aTlMVFhRaVdnb1VuMnFHSzFJd2M1U2xCTlVEZTJtR0Ez?=
 =?utf-8?B?Mkp3RnpObGV6YjZiVEc2Q3NFUnU4dWJDaU51V2xDZXl3QUVWMks1V2Z3RUpP?=
 =?utf-8?B?eU1ZWG1pVE9xVUZ6WHN1Q0JvNGtUY2RWNzVFclRYYmtRYVRwWFlBZGVpa1d0?=
 =?utf-8?B?bVNtUC9WdnBvL1JDS3VqNlA0VHJ5cy9FRFl0aU1HY0NoZnNmWjdGdFhJVC9L?=
 =?utf-8?B?UkwwMUFwait6RFBGQ0xMcnVLNXJ3PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdb5db1d-0784-412d-4ec3-08d9a541743c
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2021 18:31:19.4856 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NQRRSKj3m+EBLKpccm9orshi1yQs/BgWv9cWfWGej86OKG5ReYzUXj3GTGJ7nQ9u5uwOGWPT+MNPeUA8uW5YeGvgKd3uUEVM480m8s/CUP0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5546
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/xehpsdv: Add initial
 workarounds
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

Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>

-Clint


On 11/2/21 3:25 PM, Matt Roper wrote:
> From: Stuart Summers <stuart.summers@intel.com>
>
> Add the initial set of workarounds for Xe_HP SDV.
>
> There are some additional workarounds specific to the compute engines
> that we're holding back for now.  Those will be added later, after
> general compute engine support lands.
>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 94 ++++++++++++++++++---
>   drivers/gpu/drm/i915/i915_reg.h             | 53 ++++++++++++
>   drivers/gpu/drm/i915/intel_pm.c             | 12 ++-
>   3 files changed, 146 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 45936f624a1e..4aaa210fc003 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -730,7 +730,9 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>   	if (engine->class != RENDER_CLASS)
>   		goto done;
>   
> -	if (IS_DG1(i915))
> +	if (IS_XEHPSDV(i915))
> +		; /* noop; none at this time */
> +	else if (IS_DG1(i915))
>   		dg1_ctx_workarounds_init(engine, wal);
>   	else if (GRAPHICS_VER(i915) == 12)
>   		gen12_ctx_workarounds_init(engine, wal);
> @@ -1277,7 +1279,68 @@ dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   static void
>   xehpsdv_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   {
> +	struct drm_i915_private *i915 = gt->i915;
> +
>   	xehp_init_mcr(gt, wal);
> +
> +	/* Wa_1409757795:xehpsdv */
> +	wa_write_or(wal, SCCGCTL94DC, CG3DDISURB);
> +
> +	/* Wa_18011725039:xehpsdv */
> +	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A1, STEP_B0)) {
> +		wa_masked_dis(wal, MLTICTXCTL, TDONRENDER);
> +		wa_write_or(wal, L3SQCREG1_CCS0, FLUSHALLNONCOH);
> +	}
> +
> +	/* Wa_16011155590:xehpsdv */
> +	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> +		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
> +			    TSGUNIT_CLKGATE_DIS);
> +
> +	/* Wa_14011780169:xehpsdv */
> +	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER)) {
> +		wa_write_or(wal, UNSLCGCTL9440, GAMTLBOACS_CLKGATE_DIS |
> +			    GAMTLBVDBOX7_CLKGATE_DIS |
> +			    GAMTLBVDBOX6_CLKGATE_DIS |
> +			    GAMTLBVDBOX5_CLKGATE_DIS |
> +			    GAMTLBVDBOX4_CLKGATE_DIS |
> +			    GAMTLBVDBOX3_CLKGATE_DIS |
> +			    GAMTLBVDBOX2_CLKGATE_DIS |
> +			    GAMTLBVDBOX1_CLKGATE_DIS |
> +			    GAMTLBVDBOX0_CLKGATE_DIS |
> +			    GAMTLBKCR_CLKGATE_DIS |
> +			    GAMTLBGUC_CLKGATE_DIS |
> +			    GAMTLBBLT_CLKGATE_DIS);
> +		wa_write_or(wal, UNSLCGCTL9444, GAMTLBGFXA0_CLKGATE_DIS |
> +			    GAMTLBGFXA1_CLKGATE_DIS |
> +			    GAMTLBCOMPA0_CLKGATE_DIS |
> +			    GAMTLBCOMPA1_CLKGATE_DIS |
> +			    GAMTLBCOMPB0_CLKGATE_DIS |
> +			    GAMTLBCOMPB1_CLKGATE_DIS |
> +			    GAMTLBCOMPC0_CLKGATE_DIS |
> +			    GAMTLBCOMPC1_CLKGATE_DIS |
> +			    GAMTLBCOMPD0_CLKGATE_DIS |
> +			    GAMTLBCOMPD1_CLKGATE_DIS |
> +			    GAMTLBMERT_CLKGATE_DIS   |
> +			    GAMTLBVEBOX3_CLKGATE_DIS |
> +			    GAMTLBVEBOX2_CLKGATE_DIS |
> +			    GAMTLBVEBOX1_CLKGATE_DIS |
> +			    GAMTLBVEBOX0_CLKGATE_DIS);
> +	}
> +
> +	/* Wa_14012362059:xehpsdv */
> +	wa_write_or(wal, GEN12_MERT_MOD_CTRL, FORCE_MISS_FTLB);
> +
> +	/* Wa_16012725990:xehpsdv */
> +	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A1, STEP_FOREVER))
> +		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE, VFUNIT_CLKGATE_DIS);
> +
> +	/* Wa_14011060649:xehpsdv */
> +	wa_14011060649(gt, wal);
> +
> +	/* Wa_14014368820:xehpsdv */
> +	wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
> +		    GLOBAL_INVALIDATION_MODE);
>   }
>   
>   static void
> @@ -1559,7 +1622,7 @@ static void cfl_whitelist_build(struct intel_engine_cs *engine)
>   			  RING_FORCE_TO_NONPRIV_RANGE_4);
>   }
>   
> -static void cml_whitelist_build(struct intel_engine_cs *engine)
> +static void allow_read_ctx_timestamp(struct intel_engine_cs *engine)
>   {
>   	struct i915_wa_list *w = &engine->whitelist;
>   
> @@ -1567,6 +1630,11 @@ static void cml_whitelist_build(struct intel_engine_cs *engine)
>   		whitelist_reg_ext(w,
>   				  RING_CTX_TIMESTAMP(engine->mmio_base),
>   				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
> +}
> +
> +static void cml_whitelist_build(struct intel_engine_cs *engine)
> +{
> +	allow_read_ctx_timestamp(engine);
>   
>   	cfl_whitelist_build(engine);
>   }
> @@ -1575,6 +1643,8 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
>   {
>   	struct i915_wa_list *w = &engine->whitelist;
>   
> +	allow_read_ctx_timestamp(engine);
> +
>   	switch (engine->class) {
>   	case RENDER_CLASS:
>   		/* WaAllowUMDToModifyHalfSliceChicken7:icl */
> @@ -1610,15 +1680,9 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
>   		/* hucStatus2RegOffset */
>   		whitelist_reg_ext(w, _MMIO(0x23B0 + engine->mmio_base),
>   				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
> -		whitelist_reg_ext(w,
> -				  RING_CTX_TIMESTAMP(engine->mmio_base),
> -				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
>   		break;
>   
>   	default:
> -		whitelist_reg_ext(w,
> -				  RING_CTX_TIMESTAMP(engine->mmio_base),
> -				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
>   		break;
>   	}
>   }
> @@ -1627,6 +1691,8 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
>   {
>   	struct i915_wa_list *w = &engine->whitelist;
>   
> +	allow_read_ctx_timestamp(engine);
> +
>   	switch (engine->class) {
>   	case RENDER_CLASS:
>   		/*
> @@ -1650,9 +1716,6 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
>   		whitelist_reg(w, HIZ_CHICKEN);
>   		break;
>   	default:
> -		whitelist_reg_ext(w,
> -				  RING_CTX_TIMESTAMP(engine->mmio_base),
> -				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
>   		break;
>   	}
>   }
> @@ -1671,6 +1734,11 @@ static void dg1_whitelist_build(struct intel_engine_cs *engine)
>   				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
>   }
>   
> +static void xehpsdv_whitelist_build(struct intel_engine_cs *engine)
> +{
> +	allow_read_ctx_timestamp(engine);
> +}
> +
>   void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>   {
>   	struct drm_i915_private *i915 = engine->i915;
> @@ -1678,7 +1746,9 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>   
>   	wa_init_start(w, "whitelist", engine->name);
>   
> -	if (IS_DG1(i915))
> +	if (IS_XEHPSDV(i915))
> +		xehpsdv_whitelist_build(engine);
> +	else if (IS_DG1(i915))
>   		dg1_whitelist_build(engine);
>   	else if (GRAPHICS_VER(i915) == 12)
>   		tgl_whitelist_build(engine);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b456920555b7..b806ad4bdeca 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -498,6 +498,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define   ECOBITS_PPGTT_CACHE64B	(3 << 8)
>   #define   ECOBITS_PPGTT_CACHE4B		(0 << 8)
>   
> +#define GEN12_GAMCNTRL_CTRL			_MMIO(0xcf54)
> +#define   INVALIDATION_BROADCAST_MODE_DIS	REG_BIT(12)
> +#define   GLOBAL_INVALIDATION_MODE		REG_BIT(2)
> +
> +#define GEN12_MERT_MOD_CTRL		_MMIO(0xcf28)
> +#define   FORCE_MISS_FTLB		REG_BIT(3)
> +
>   #define GAB_CTL				_MMIO(0x24000)
>   #define   GAB_CTL_CONT_AFTER_PAGEFAULT	(1 << 8)
>   
> @@ -2872,6 +2879,15 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE (1 << 2)
>   #define   GEN11_ENABLE_32_PLANE_MODE (1 << 7)
>   
> +#define SCCGCTL94DC		_MMIO(0x94dc)
> +#define   CG3DDISURB		REG_BIT(14)
> +
> +#define MLTICTXCTL		_MMIO(0xb170)
> +#define   TDONRENDER		REG_BIT(2)
> +
> +#define L3SQCREG1_CCS0		_MMIO(0xb200)
> +#define   FLUSHALLNONCOH	REG_BIT(5)
> +
>   /* WaClearTdlStateAckDirtyBits */
>   #define GEN8_STATE_ACK		_MMIO(0x20F0)
>   #define GEN9_STATE_ACK_SLICE1	_MMIO(0x20F8)
> @@ -4280,6 +4296,39 @@ enum {
>   /*
>    * GEN10 clock gating regs
>    */
> +
> +#define UNSLCGCTL9440			_MMIO(0x9440)
> +#define   GAMTLBOACS_CLKGATE_DIS	REG_BIT(28)
> +#define   GAMTLBVDBOX5_CLKGATE_DIS	REG_BIT(27)
> +#define   GAMTLBVDBOX6_CLKGATE_DIS	REG_BIT(26)
> +#define   GAMTLBVDBOX3_CLKGATE_DIS	REG_BIT(24)
> +#define   GAMTLBVDBOX4_CLKGATE_DIS	REG_BIT(23)
> +#define   GAMTLBVDBOX7_CLKGATE_DIS	REG_BIT(22)
> +#define   GAMTLBVDBOX2_CLKGATE_DIS	REG_BIT(21)
> +#define   GAMTLBVDBOX0_CLKGATE_DIS	REG_BIT(17)
> +#define   GAMTLBKCR_CLKGATE_DIS		REG_BIT(16)
> +#define   GAMTLBGUC_CLKGATE_DIS		REG_BIT(15)
> +#define   GAMTLBBLT_CLKGATE_DIS		REG_BIT(14)
> +#define   GAMTLBVDBOX1_CLKGATE_DIS	REG_BIT(6)
> +
> +#define UNSLCGCTL9444			_MMIO(0x9444)
> +#define   GAMTLBGFXA0_CLKGATE_DIS	REG_BIT(30)
> +#define   GAMTLBGFXA1_CLKGATE_DIS	REG_BIT(29)
> +#define   GAMTLBCOMPA0_CLKGATE_DIS	REG_BIT(28)
> +#define   GAMTLBCOMPA1_CLKGATE_DIS	REG_BIT(27)
> +#define   GAMTLBCOMPB0_CLKGATE_DIS	REG_BIT(26)
> +#define   GAMTLBCOMPB1_CLKGATE_DIS	REG_BIT(25)
> +#define   GAMTLBCOMPC0_CLKGATE_DIS	REG_BIT(24)
> +#define   GAMTLBCOMPC1_CLKGATE_DIS	REG_BIT(23)
> +#define   GAMTLBCOMPD0_CLKGATE_DIS	REG_BIT(22)
> +#define   GAMTLBCOMPD1_CLKGATE_DIS	REG_BIT(21)
> +#define   GAMTLBMERT_CLKGATE_DIS	REG_BIT(20)
> +#define   GAMTLBVEBOX3_CLKGATE_DIS	REG_BIT(19)
> +#define   GAMTLBVEBOX2_CLKGATE_DIS	REG_BIT(18)
> +#define   GAMTLBVEBOX1_CLKGATE_DIS	REG_BIT(17)
> +#define   GAMTLBVEBOX0_CLKGATE_DIS	REG_BIT(16)
> +#define   LTCDD_CLKGATE_DIS		REG_BIT(10)
> +
>   #define SLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x94d4)
>   #define  SARBUNIT_CLKGATE_DIS		(1 << 5)
>   #define  RCCUNIT_CLKGATE_DIS		(1 << 7)
> @@ -4295,6 +4344,7 @@ enum {
>   
>   #define UNSLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x9434)
>   #define   VFUNIT_CLKGATE_DIS		REG_BIT(20)
> +#define   TSGUNIT_CLKGATE_DIS		REG_BIT(17)
>   #define   HSUNIT_CLKGATE_DIS		REG_BIT(8)
>   #define   VSUNIT_CLKGATE_DIS		REG_BIT(3)
>   
> @@ -12474,6 +12524,9 @@ enum skl_power_gate {
>   #define GEN12_GSMBASE			_MMIO(0x108100)
>   #define GEN12_DSMBASE			_MMIO(0x1080C0)
>   
> +#define XEHP_CLOCK_GATE_DIS		_MMIO(0x101014)
> +#define   SGR_DIS			REG_BIT(13)
> +
>   /* gamt regs */
>   #define GEN8_L3_LRA_1_GPGPU _MMIO(0x4dd4)
>   #define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW  0x67F1427F /* max/min for LRA1/2 */
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 59adf0ce6719..16fa3306d83d 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7479,6 +7479,13 @@ static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
>   			   DPT_GATING_DIS);
>   }
>   
> +static void xehpsdv_init_clock_gating(struct drm_i915_private *dev_priv)
> +{
> +	/* Wa_22010146351:xehpsdv */
> +	if (IS_XEHPSDV_GRAPHICS_STEP(dev_priv, STEP_A0, STEP_B0))
> +		intel_uncore_rmw(&dev_priv->uncore, XEHP_CLOCK_GATE_DIS, 0, SGR_DIS);
> +}
> +
>   static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
>   {
>   	if (!HAS_PCH_CNP(dev_priv))
> @@ -7889,6 +7896,7 @@ static const struct drm_i915_clock_gating_funcs platform##_clock_gating_funcs =
>   	.init_clock_gating = platform##_init_clock_gating,		\
>   }
>   
> +CG_FUNCS(xehpsdv);
>   CG_FUNCS(adlp);
>   CG_FUNCS(dg1);
>   CG_FUNCS(gen12lp);
> @@ -7925,7 +7933,9 @@ CG_FUNCS(nop);
>    */
>   void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
>   {
> -	if (IS_ALDERLAKE_P(dev_priv))
> +	if (IS_XEHPSDV(dev_priv))
> +		dev_priv->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
> +	else if (IS_ALDERLAKE_P(dev_priv))
>   		dev_priv->clock_gating_funcs = &adlp_clock_gating_funcs;
>   	else if (IS_DG1(dev_priv))
>   		dev_priv->clock_gating_funcs = &dg1_clock_gating_funcs;
