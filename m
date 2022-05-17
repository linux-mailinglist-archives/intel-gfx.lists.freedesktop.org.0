Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7573952ACA9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 22:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 086E410E84F;
	Tue, 17 May 2022 20:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1566F10E84F
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 May 2022 20:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652818998; x=1684354998;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VynXiraHFeq10m6f+7Zs6/sh6+HLIv+vY4FN4o8Yv0w=;
 b=PEhQFM+JgNRzWnEMnvJipi+28/LtYkYBqS3RvlGRH7UWEDr+AMRhRTIO
 ssN/jbPUxaIRL0KN3YBsCmJHsASvnjbf6oqgBHr1L1qA5crfR+8VcRq+1
 4hYbAiCS5QVeH/bp8I4Lr8xVK6vBCJxH1CrLj0khAdL8cM8WVLqINm9OA
 NZroEYbZn809hnt7RK/lH11QMYS62d378Qx2BMt2a3pM/8+IVUHPxZtbG
 iVJbmercMBnSh17YLQyB6azcAB38eFU14gjt5Dez8FI6NKJCYKNLoVXKO
 kZh2DFyuo9hq+M4/UqnotZ6FVErJqV7/Hssmxe5KGpHFQjtLy+nfLbR2P A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="331934708"
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="331934708"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 13:23:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="523135391"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 13:23:17 -0700
Date: Tue, 17 May 2022 13:23:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Message-ID: <YoQENOLlKcNmkuSG@mdroper-desk1.amr.corp.intel.com>
References: <20220517180201.4096-1-swathi.dhanavanthri@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220517180201.4096-1-swathi.dhanavanthri@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add workaround 22014600077
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

On Tue, May 17, 2022 at 11:02:01AM -0700, Swathi Dhanavanthri wrote:
> Bspec: 45810,54077,68173
> 
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 98ede9c93f00..2063c8758934 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1068,6 +1068,7 @@
>  #define   GEN9_ENABLE_GPGPU_PREEMPTION		REG_BIT(2)
>  
>  #define GEN10_CACHE_MODE_SS			_MMIO(0xe420)
> +#define   ENABLE_EU_COUNT_FOR_TDL_FLUSH	        REG_BIT(10)

I think this line has some spaces before REG_BIT().  We should only be
using tabs between the variable name and the 'REG_BIT.'

>  #define   ENABLE_PREFETCH_INTO_IC		REG_BIT(3)
>  #define   FLOAT_BLEND_OPTIMIZATION_ENABLE	REG_BIT(4)
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 756807c4b405..c647a9e48389 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2178,6 +2178,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		wa_write_or(wal, GEN12_MERT_MOD_CTRL, FORCE_MISS_FTLB);
>  	}
>  
> +	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_B0, STEP_FOREVER) ||
> +	    IS_DG2_G10(i915)) {
> +		/* Wa_22014600077:dg2 */
> +		wa_add(wal, GEN10_CACHE_MODE_SS, 0,
> +		       _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLUSH),
> +		       0 /* write-only, so skip validation */,

The fact that this register is WO is itself a different workaround, so
you may want to reference that in the comment.  E.g.,

        0 /* Wa_14012342262: write-only reg, skip verification */


Matt

> +		       true);
> +	}
> +
>  	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>  	    IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
>  		/*
> -- 
> 2.20.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
