Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF231865B8
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 08:31:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 073CB88FA4;
	Mon, 16 Mar 2020 07:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 077EB6E34B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 07:31:02 +0000 (UTC)
IronPort-SDR: BXJPTuFe57WHzAIzO8/fovTGEC0LMmdEaa+Xcni5PByhVkvXqOTuBHjtqbGcv8OYlf//J6Ui2N
 CtR2ZYN/p8ng==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 00:31:02 -0700
IronPort-SDR: g7PuCROcauYhV304D3i4MW6s2Cho2FHoW1+GaY8AtFY5Vp49RMAtg82D0N3VHbEtvMpcCGGrb+
 X0tnQoCFfmRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,559,1574150400"; d="scan'208";a="443227564"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 16 Mar 2020 00:31:01 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 088E85C1DD8; Mon, 16 Mar 2020 09:29:36 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200314122058.21472-4-chris@chris-wilson.co.uk>
References: <20200314122058.21472-1-chris@chris-wilson.co.uk>
 <20200314122058.21472-4-chris@chris-wilson.co.uk>
Date: Mon, 16 Mar 2020 09:29:36 +0200
Message-ID: <87pndczrj3.fsf@gaia.fi.intel.com>
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

So unlikely and easily shown in other debug flow that does
not warrant an err?

-Mika

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
