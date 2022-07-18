Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D816578268
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 14:35:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907D411A9E6;
	Mon, 18 Jul 2022 12:35:35 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F8B0112D7D;
 Mon, 18 Jul 2022 12:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658147733; x=1689683733;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tstk/B37p6HZUVF+IjwkuUuuxjnl4mrmpiyEOfa3fp8=;
 b=YTDAUYLwNJiJPC0gx5Lx6DPCEeP/UPZc021qKtY+DVt1zs6XZAJRCWz0
 QM86NdfanQTPRnMNoj/CUAtBgEKdgsHZCYAH2iaeQn4fyLP0vL0p5mV77
 NFxlrsWkHkWpCHeQKgsDDLk312nvYBsE6cdLoMFtYOyYyhCNz6l85hYxd
 RPF8pWHwfYVuZMo0Vwx5RlzI+tzGSSoTgsbfrEw+cC1LQwvS8YbC/B4xA
 mNbnc2J1FWdEfppzKilltT/5g/4fPaOa0O7A69VrzqrMTVt1eNAHiMebT
 HYKIuSmYtvtlyegV9Sq7sQOZko7yk8UrqQYSWDmJApejSRr+Oc3/N+whL g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="265990564"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="265990564"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 05:35:32 -0700
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="723844204"
Received: from smyint-mobl1.amr.corp.intel.com (HELO [10.212.107.15])
 ([10.212.107.15])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 05:35:31 -0700
Message-ID: <3c8e8b71-1c74-c50d-7b29-29430a11eb10@linux.intel.com>
Date: Mon, 18 Jul 2022 13:35:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20220712233136.1044951-1-John.C.Harrison@Intel.com>
 <20220712233136.1044951-11-John.C.Harrison@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220712233136.1044951-11-John.C.Harrison@Intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915/guc: Support larger contexts
 on newer hardware
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/07/2022 00:31, John.C.Harrison@Intel.com wrote:
> From: Matthew Brost <matthew.brost@intel.com>
> 
> The GuC needs a copy of a golden context for implementing watchdog
> resets (aka media resets). This context is larger on newer platforms.
> So adjust the size being allocated/copied accordingly.

What were the consequences of this being too small? Media watchdog reset 
broken impacting userspace? Platforms? Do we have an IGT testcase? Do we 
need a Fixes: tag? Copy stable?

Regards,

Tvrtko

> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 10 +++++++---
>   1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index ba7541f3ca610..74cbe8eaf5318 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -464,7 +464,11 @@ static void fill_engine_enable_masks(struct intel_gt *gt,
>   }
>   
>   #define LR_HW_CONTEXT_SIZE (80 * sizeof(u32))
> -#define LRC_SKIP_SIZE (LRC_PPHWSP_SZ * PAGE_SIZE + LR_HW_CONTEXT_SIZE)
> +#define XEHP_LR_HW_CONTEXT_SIZE (96 * sizeof(u32))
> +#define LR_HW_CONTEXT_SZ(i915) (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50) ? \
> +				    XEHP_LR_HW_CONTEXT_SIZE : \
> +				    LR_HW_CONTEXT_SIZE)
> +#define LRC_SKIP_SIZE(i915) (LRC_PPHWSP_SZ * PAGE_SIZE + LR_HW_CONTEXT_SZ(i915))
>   static int guc_prep_golden_context(struct intel_guc *guc)
>   {
>   	struct intel_gt *gt = guc_to_gt(guc);
> @@ -525,7 +529,7 @@ static int guc_prep_golden_context(struct intel_guc *guc)
>   		 * on all engines).
>   		 */
>   		ads_blob_write(guc, ads.eng_state_size[guc_class],
> -			       real_size - LRC_SKIP_SIZE);
> +			       real_size - LRC_SKIP_SIZE(gt->i915));
>   		ads_blob_write(guc, ads.golden_context_lrca[guc_class],
>   			       addr_ggtt);
>   
> @@ -599,7 +603,7 @@ static void guc_init_golden_context(struct intel_guc *guc)
>   		}
>   
>   		GEM_BUG_ON(ads_blob_read(guc, ads.eng_state_size[guc_class]) !=
> -			   real_size - LRC_SKIP_SIZE);
> +			   real_size - LRC_SKIP_SIZE(gt->i915));
>   		GEM_BUG_ON(ads_blob_read(guc, ads.golden_context_lrca[guc_class]) != addr_ggtt);
>   
>   		addr_ggtt += alloc_size;
