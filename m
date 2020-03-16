Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 766701869F0
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 12:21:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 390A589DED;
	Mon, 16 Mar 2020 11:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA1BD89DED
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 11:21:32 +0000 (UTC)
IronPort-SDR: AMpE8/oEQmdtRIpzkRakZ7URdzY0KjdPwyaqhlK/7da4dmll44ISwlgCt3lsA8Ozq/kZj1Sqef
 XjjSu4VgV9Gw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 04:21:31 -0700
IronPort-SDR: 80YbYiLNtCkENqGqKKL3Calfpe7J4YrrevCVPj7a17WJTI1Xei4RX/nTb9+DDIMLAsJoNTu1Hn
 QcyWkt0xggMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="244108815"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 16 Mar 2020 04:21:30 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id CBAB95C1DD8; Mon, 16 Mar 2020 13:20:04 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200314122058.21472-4-chris@chris-wilson.co.uk>
References: <20200314122058.21472-1-chris@chris-wilson.co.uk>
 <20200314122058.21472-4-chris@chris-wilson.co.uk>
Date: Mon, 16 Mar 2020 13:20:04 +0200
Message-ID: <87k13kzguz.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/gt: Allocate i915_fence_reg
 array
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Since the number of fence regs can vary dramactically between platforms,
> allocate the array on demand so we don't waste as much space.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c         |  6 ++++--
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 10 ++++++++++
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h |  1 +
>  drivers/gpu/drm/i915/gt/intel_gtt.h          |  5 +++--
>  drivers/gpu/drm/i915/i915_vma.h              |  1 +
>  5 files changed, 19 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index bde4f64a41f7..8fcf14372d7a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -698,11 +698,13 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
>   */
>  void i915_ggtt_driver_release(struct drm_i915_private *i915)
>  {
> +	struct i915_ggtt *ggtt = &i915->ggtt;
>  	struct pagevec *pvec;
>  
> -	fini_aliasing_ppgtt(&i915->ggtt);
> +	fini_aliasing_ppgtt(ggtt);
>  
> -	ggtt_cleanup_hw(&i915->ggtt);
> +	intel_ggtt_fini_fences(ggtt);
> +	ggtt_cleanup_hw(ggtt);
>  
>  	pvec = &i915->mm.wc_stash.pvec;
>  	if (pvec->nr) {
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> index 94af75673a58..b6ba68c42546 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -857,6 +857,11 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
>  	if (intel_vgpu_active(i915))
>  		num_fences = intel_uncore_read(uncore,
>  					       vgtif_reg(avail_rs.fence_num));
> +	ggtt->fence_regs = kcalloc(num_fences,
> +				   sizeof(*ggtt->fence_regs),
> +				   GFP_KERNEL);
> +	if (!ggtt->fence_regs)
> +		num_fences = 0;
>  
>  	/* Initialize fence registers to zero */
>  	for (i = 0; i < num_fences; i++) {
> @@ -871,6 +876,11 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
>  	intel_ggtt_restore_fences(ggtt);
>  }
>  
> +void intel_ggtt_fini_fences(struct i915_ggtt *ggtt)
> +{
> +	kfree(ggtt->fence_regs);
> +}
> +
>  void intel_gt_init_swizzling(struct intel_gt *gt)
>  {
>  	struct drm_i915_private *i915 = gt->i915;
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> index 3b3eb5bf1b75..9850f6a85d2a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> @@ -64,6 +64,7 @@ void i915_gem_object_save_bit_17_swizzle(struct drm_i915_gem_object *obj,
>  					 struct sg_table *pages);
>  
>  void intel_ggtt_init_fences(struct i915_ggtt *ggtt);
> +void intel_ggtt_fini_fences(struct i915_ggtt *ggtt);
>  
>  void intel_gt_init_swizzling(struct intel_gt *gt);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index ce6ff9d3a350..d93ebdf3fa0e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -26,7 +26,6 @@
>  #include <drm/drm_mm.h>
>  
>  #include "gt/intel_reset.h"
> -#include "gt/intel_ggtt_fencing.h"
>  #include "i915_selftest.h"
>  #include "i915_vma_types.h"
>  
> @@ -135,6 +134,8 @@ typedef u64 gen8_pte_t;
>  #define GEN8_PDE_IPS_64K BIT(11)
>  #define GEN8_PDE_PS_2M   BIT(7)
>  
> +struct i915_fence_reg;
> +
>  #define for_each_sgt_daddr(__dp, __iter, __sgt) \
>  	__for_each_sgt_daddr(__dp, __iter, __sgt, I915_GTT_PAGE_SIZE)
>  
> @@ -333,7 +334,7 @@ struct i915_ggtt {
>  	u32 pin_bias;
>  
>  	unsigned int num_fences;
> -	struct i915_fence_reg fence_regs[I915_MAX_NUM_FENCES];
> +	struct i915_fence_reg *fence_regs;
>  	struct list_head fence_list;
>  
>  	/**
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index 2764c277326f..b958ad07f212 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -30,6 +30,7 @@
>  
>  #include <drm/drm_mm.h>
>  
> +#include "gt/intel_ggtt_fencing.h"
>  #include "gem/i915_gem_object.h"
>  
>  #include "i915_gem_gtt.h"
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
