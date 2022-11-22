Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B49634913
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 22:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B39510E479;
	Tue, 22 Nov 2022 21:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6EFD10E479
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 21:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669152011; x=1700688011;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+89gCJgY5dImCUiroEi1Z2njK1+VTpIh90yvcRNdU04=;
 b=g7nvvcA5WQFW4oE/ZiK8REa+wXK0+rIxS+JvujOBVKW57nUEcJFVff+q
 F0Zo+d0cFrYjTzxlUum2em5znZJ3RLk7hn0sKwoToFMcIqpA3CTnA+BQX
 xTyGRmWdSOh0Z7F6FC3pae6EcIM580gMofBlqh/HkVg4yn1KYfRozsaEl
 zBn9YZQ1yfGyywbQbLR8FQs/qDIJdnGoeNqx7/IqQvMvKk7KV6EwuvpPP
 IjE6oc9Q03exeAtVJKZIQDlnjqvj9Gd/xrAxVcBDsLbzATbfYg+LRshKZ
 C/GO/z/0uZJoxMQNbZ1WPW/alOl9wXxKxL0oL7NwTj9JDy4vdTBauoNUn g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="312617760"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="312617760"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 13:20:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="674486577"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="674486577"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 22 Nov 2022 13:20:10 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 13:20:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 13:20:10 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 13:20:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hIfFzCqfsUxX964HaSFUV7s1WFnU6PqaOKAPfBMbmDJw35r8mG9u2A7T5B/yrYjrDMoWHCaHoY3k4BVhvRPBgI+vqY4scpAFkZjmqEhHZRSZgsrhGpJFKsDL+dg3ZJ77WhyhL86D9VZxscQMfRG7JPeNnrF0aEj0BJSRSVkCDG8YA+ZTjba0bGgteOjPPkDN2yKvidobIaI/mZQihq46raleoxUoYCXRjB0K2UVIpGQOFakHfXfDkiTSL5aAFxh5n118yXwWBtc/sYIhVXDugeFJjYfGeA/30+zlzLF1bVTzQPc/BtZQpF33ITr3brTu+W3g8q0dLHtkfHMBJPKR5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PdFUmZ3jMDVrTLQQ6791X+Zfw3ThH5qISeZKn9pgOqQ=;
 b=cCGyRdIgY1c/oYxYg8QLl++KyZlRtrxrDBJ1UND5gVDLXVwOhUZ102UPxrpvTa/alRDoSqm5jjYHd7vnKSKbH1ced+vN34Q/MyId27GP7TMl5PI7rcDlN3to/ZyVjgpoZPXMjYqO91O5+84spPDfRxAGXLsLTC5HzkvOKEAqPZ1h7ex5scndF5NLMGtsTHXNWqka/dYJ89RMT82L0xhE/Tu+6N0BrMyi+2+PbzPaEIAEsgBl9kRhIfSkBQHLt4CaCh+woLXy8Q0XRCf3q2JiTObLPcG1qneIkRDisMYjfUVF/WRVtUNRHOsUapWurNAVzWpmyHQJc/KH9oC68CYlCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SJ0PR11MB5070.namprd11.prod.outlook.com (2603:10b6:a03:2d5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 21:20:08 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 21:20:08 +0000
Date: Tue, 22 Nov 2022 13:20:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <Y309BiR9w27/8wlU@mdroper-desk1.amr.corp.intel.com>
References: <20221122183306.140921-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221122183306.140921-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR03CA0225.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::20) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SJ0PR11MB5070:EE_
X-MS-Office365-Filtering-Correlation-Id: 154ca507-ff7b-4379-a4bd-08dacccf550d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wTPT9rZ7OAF7utaKFh96P8Mpn9J078dn8vk2uj9RMPear6kSUjX/ZZXmmYdlN32OBmPsiMl42W7Ats4mjG0jNNiWkj6xIFqSJlcmXlAUGa1iHAzUovbemjr3BXTmMUApUl8n//Eai1om7drkTltH+Qx9JQ/jQhOswGND8YY0FGsEDHUqF+EiIdMZgUujGfSeqxUVTTldaHvGRzoupUlvL4A33vIC36CjJKqOYXTcf0TU8hEeQgf2OKbKIS5jpT5gmgvXziN7nAjVjfaPK5zgVCLwdxr90n2k+bd0TEcO7ozdmFnhIsOk9upYLNJBTZkHUZplLigGARaOzrWl75KXwo2RQDpTHlyPQvzUmuPHETRIbHJ8IGtZqBEqHjNA2+pG+SvbZVNZaW3/FU+A3xAuHnh8SY7VTLKmP32FYJQyBX+c1FIaSeYhnV8y0nwKQdIpoCDiuplEpmfqXd9AIjFrg+8MpdFVjuQVbfzmspzqNEmvtWWlBtWsUiK3MzNlsATRRMzbnbDg6dX2JZss27+TPhKRHpTgShTPan3RZMbkKx1WDw0HzazLczkzt5Psya5K7ekxHvE0py517BkR2zRrS2ZiyzKPgk96X/xYY1Vp89YjLcJteQdUQY2V0Y8fLJyCCsijb+FeSFVqjqgbgssZpQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(396003)(346002)(366004)(39860400002)(451199015)(82960400001)(38100700002)(86362001)(6506007)(8676002)(186003)(26005)(6512007)(5660300002)(316002)(6636002)(6486002)(66946007)(66476007)(478600001)(4326008)(83380400001)(8936002)(6862004)(66556008)(2906002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?G0p5LjuPSyybyA8ISKLTTImRT0z5hxQwb/UDFXARKa9doYpRAlolAHvJktH8?=
 =?us-ascii?Q?kfcUnzjuBx63ukLtYuhvkxtOTI+nRys5+9tWm1J5Lrl1gJD7ss4Nd0X+1myk?=
 =?us-ascii?Q?C8/+oO8tYzsStfK0CwFoEJRauYFbUDT3R6NtpfSohE9I5chxbE8GoFzGYz72?=
 =?us-ascii?Q?WH/kUf+ZZ1TrJRGot8SfOnluMCbaMv8QpzNclEGvqvQmYyYqwmWukCxVwD/l?=
 =?us-ascii?Q?u0rXTiKvvqS4nH8LYpQjrJDRpDChecVNwvXk6HzIBhHj/UwUXXCsrdg2GPsa?=
 =?us-ascii?Q?cCekJ9hutDiAAMLKokzbRafmEb0S/WwVLRwmTTwlDpf6YhF1pLLg7LFTci59?=
 =?us-ascii?Q?NgfM8XwBKY40mmYe8HUy8AyuG5XEfXTS7Wme8JnhlayuIliX2Il5q0w7pcxG?=
 =?us-ascii?Q?lrX/uxEfnnGc38G+AHuoHq91FszexFKVVYITdG5UyFyV+nPOPa0L8OMXZKg8?=
 =?us-ascii?Q?vcNcOQjrKvq0DqTyo3gwhPbokk7yOXI7InS3ZSXIXOZQfPMBojwv1U5OW//M?=
 =?us-ascii?Q?MP7txBDucwTaWQWUqRR55lHO3P6OiPZpms8ZPlz2Fr3XiDfyLmiSo/DzQXV4?=
 =?us-ascii?Q?8wcFNT4IyeZ8lopwkAYZPrwJmkJyukOG1GSrXPSqAjS4OazB3oom+k0RzvEc?=
 =?us-ascii?Q?hwyIjspbhuHfVp48bmif5g+XyuZI5vKeHOY263DGNIsyeMMkYVGc63nn/oVV?=
 =?us-ascii?Q?LEHxwQh0I/DHTypdA17LMFH3tvfAnn31ZV0XQCsAQk+xLd1YxfObHWE9Y8mz?=
 =?us-ascii?Q?5G1i0vwqYikVvV9sEzFOxlZN/tXSbsepPAgHNm5CaYLaVXN7H+CnM8egFeJf?=
 =?us-ascii?Q?WUM/4AY2llOU193ZQ3e/fUl9SofNKCiefBNq6WUATOEhryWo3sfJwI8x5yw6?=
 =?us-ascii?Q?prZTi1EtNpx4b6qIxIx14O8y4w4baWyeHSHxVBl1SrliOlfGPKCPk7XMzgYe?=
 =?us-ascii?Q?z2NPmo281SMKdAVKKpCKpf8sNJL4G6fO0isZBbY836+71P/Zs2Uo+eEzzW9p?=
 =?us-ascii?Q?8+SRuYfraeYF9EbZGDfJZ/+5QbFUjJxJqMYCHJpzeDelSLyKHOd59rJjZrHg?=
 =?us-ascii?Q?OpL7VKpzzBHGXPDn4reIW94CSoCdeZEcn493/E17IYghNNGX2x0cVsuAQiBT?=
 =?us-ascii?Q?XnsRrWoZGykcbjHdYTgNHoaJdDfFvfF2wo+F0ohq/5tzYyCifgbBEw+V1g+u?=
 =?us-ascii?Q?Yb70OZ5s9+4WJa0KbpCfW3TJHEpq4dsxpUexH1yTDY3YXFPdZL068gWa52hi?=
 =?us-ascii?Q?6jA07ea/nBGoJCkf8JKkJgGh9JWC9aWu8PM8vn1ISptPgTF06YveHyi4RKj/?=
 =?us-ascii?Q?WCCVF0IYSQqymEOitrQf+oD1bj8+uGI5jIC3+zx7LFl1kSl8Mg8dGT/8InaO?=
 =?us-ascii?Q?T4BJme3vT7Zu56I4/u76g80ORnmeFT2nfIn4rwff9/NfUwlAXbonpH6BM7aP?=
 =?us-ascii?Q?3TU6CRZW5hrKbfxfQLnN+v6ihTteMC6ZRTvAlXSfKVmyLqotSH+J1y1HKVpL?=
 =?us-ascii?Q?lFJaApb9x8pMjkdfO7iou8ALCdzdMka2uRh2Ub0iAWQsNy9yBSMQxedDVnJ2?=
 =?us-ascii?Q?2/HtksmWeEGlHeJh3OBJfIzE1neIPql+eI0G3tpY8KhETPzf/MwbNPVn1aY9?=
 =?us-ascii?Q?/Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 154ca507-ff7b-4379-a4bd-08dacccf550d
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 21:20:08.5006 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e7xV8BxPSZ117YdX2teOE8SWvXz6t/WcKF4cG0UANiOnh2aBuX3eF1thXB3T15DI1nyILIfB25CJnFKwXwwOdvALM03NdMBxmbAHKTNAFgg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5070
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/dg2: Introduce
 Wa_18018764978
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 22, 2022 at 10:33:05AM -0800, Matt Atwood wrote:
> Wa_18018764978 applies to specific steppings of DG2 (G10 C0+,
> G11 and G12 A0+). Clean up style in function at the same time.
> 
> Bspec: 66622
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++--
>  2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 80a979e6f6bec..74379d3c5a4de 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -457,6 +457,9 @@
>  #define GEN8_L3CNTLREG				_MMIO(0x7034)
>  #define   GEN8_ERRDETBCTRL			(1 << 9)
>  
> +#define PSS_MODE2				_MMIO(0x703c)
> +#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
> +
>  #define GEN7_SC_INSTDONE			_MMIO(0x7100)
>  #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
>  #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 2afb4f80a954d..ce2be9470c36c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -771,8 +771,13 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  
>  	/* Wa_14014947963:dg2 */
>  	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
> -		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> -		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
> +				 IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> +				 wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);

This new formatting is less correct than the original.  It should be:

	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);

And the new workaround below has the same mistake.


Matt

> +
> +	/* Wa_18018764978:dg2 */
> +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
> +				 IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> +				 wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
>  
>  	/* Wa_15010599737:dg2 */
>  	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> -- 
> 2.38.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
