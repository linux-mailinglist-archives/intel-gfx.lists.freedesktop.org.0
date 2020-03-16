Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BF2186560
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 08:03:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 943276E0D9;
	Mon, 16 Mar 2020 07:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E934E6E0D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 07:03:45 +0000 (UTC)
IronPort-SDR: sHykM7chiISvzgfD5kwQFi4ZJJCxPqxJpmEY+JFbHKQbRwF8pH0J/v0AcLvA+XbU9DIE2HhtDj
 7/PlN4nNOwKA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 00:03:45 -0700
IronPort-SDR: dGEsC1e7oUxab3Z5/2NbrnXjqEZkJgtZCq1BNlWa7MBEoGX9W6bNcfGSJPJ464UUCFOsUN4loB
 6D86NSTA+DTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,559,1574150400"; d="scan'208";a="417043681"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 16 Mar 2020 00:03:43 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 2A9955C1DD8; Mon, 16 Mar 2020 09:02:18 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200314122058.21472-1-chris@chris-wilson.co.uk>
References: <20200314122058.21472-1-chris@chris-wilson.co.uk>
Date: Mon, 16 Mar 2020 09:02:18 +0200
Message-ID: <87y2s0zssl.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Move GGTT fence registers
 under gt/
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

> Since the fence registers control HW detiling throught the GGTT
> aperture, make them a part of the intel_ggtt under gt/
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                 |  2 +-
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |  2 +-
>  .../intel_ggtt_fencing.c}                     | 27 +++++++------------
>  .../intel_ggtt_fencing.h}                     |  9 +++----
>  drivers/gpu/drm/i915/gt/intel_gtt.h           |  2 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
>  drivers/gpu/drm/i915/gvt/aperture_gm.c        |  2 +-
>  drivers/gpu/drm/i915/i915_drv.c               |  6 ++---
>  drivers/gpu/drm/i915/i915_drv.h               |  1 -
>  drivers/gpu/drm/i915/i915_gem.c               |  2 +-
>  drivers/gpu/drm/i915/i915_vma.h               |  1 -
>  drivers/gpu/drm/i915/selftests/i915_gem.c     |  2 +-
>  12 files changed, 24 insertions(+), 34 deletions(-)
>  rename drivers/gpu/drm/i915/{i915_gem_fence_reg.c => gt/intel_ggtt_fencing.c} (97%)
>  rename drivers/gpu/drm/i915/{i915_gem_fence_reg.h => gt/intel_ggtt_fencing.h} (92%)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 9f887a86e555..1b2ed963179c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -92,6 +92,7 @@ gt-y += \
>  	gt/intel_engine_pool.o \
>  	gt/intel_engine_user.o \
>  	gt/intel_ggtt.o \
> +	gt/intel_ggtt_fencing.o \
>  	gt/intel_gt.o \
>  	gt/intel_gt_irq.o \
>  	gt/intel_gt_pm.o \
> @@ -153,7 +154,6 @@ i915-y += \
>  	  i915_buddy.o \
>  	  i915_cmd_parser.o \
>  	  i915_gem_evict.o \
> -	  i915_gem_fence_reg.o \
>  	  i915_gem_gtt.o \
>  	  i915_gem.o \
>  	  i915_globals.o \
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index aed498a0d032..a7b72fa569a7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -65,7 +65,7 @@ static int ggtt_init_hw(struct i915_ggtt *ggtt)
>  					      ggtt->mappable_end);
>  	}
>  
> -	i915_ggtt_init_fences(ggtt);
> +	intel_ggtt_init_fences(ggtt);
>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_gem_fence_reg.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> similarity index 97%
> rename from drivers/gpu/drm/i915/i915_gem_fence_reg.c
> rename to drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> index d152b648c73c..94af75673a58 100644
> --- a/drivers/gpu/drm/i915/i915_gem_fence_reg.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -233,16 +233,9 @@ static int fence_update(struct i915_fence_reg *fence,
>  	int ret;
>  
>  	if (vma) {
> -		if (!i915_vma_is_map_and_fenceable(vma))
> -			return -EINVAL;
> -
> -		if (drm_WARN(&uncore->i915->drm,
> -			     !i915_gem_object_get_stride(vma->obj) ||
> -			     !i915_gem_object_get_tiling(vma->obj),
> -			     "bogus fence setup with stride: 0x%x, tiling mode: %i\n",
> -			     i915_gem_object_get_stride(vma->obj),
> -			     i915_gem_object_get_tiling(vma->obj)))
> -			return -EINVAL;
> +		GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
> +		GEM_BUG_ON(!i915_gem_object_get_stride(vma->obj) ||
> +			   !i915_gem_object_get_tiling(vma->obj));
>  
>  		ret = i915_vma_sync(vma);
>  		if (ret)
> @@ -276,7 +269,7 @@ static int fence_update(struct i915_fence_reg *fence,
>  	/*
>  	 * We only need to update the register itself if the device is awake.
>  	 * If the device is currently powered down, we will defer the write
> -	 * to the runtime resume, see i915_gem_restore_fences().
> +	 * to the runtime resume, see intel_ggtt_restore_fences().
>  	 *
>  	 * This only works for removing the fence register, on acquisition
>  	 * the caller must hold the rpm wakeref. The fence register must
> @@ -487,14 +480,14 @@ void i915_unreserve_fence(struct i915_fence_reg *fence)
>  }
>  
>  /**
> - * i915_gem_restore_fences - restore fence state
> + * intel_ggtt_restore_fences - restore fence state
>   * @ggtt: Global GTT
>   *
>   * Restore the hw fence state to match the software tracking again, to be called
>   * after a gpu reset and on resume. Note that on runtime suspend we only cancel
>   * the fences, to be reacquired by the user later.
>   */
> -void i915_gem_restore_fences(struct i915_ggtt *ggtt)
> +void intel_ggtt_restore_fences(struct i915_ggtt *ggtt)
>  {
>  	int i;
>  
> @@ -746,7 +739,7 @@ static void detect_bit_6_swizzle(struct i915_ggtt *ggtt)
>   * bit 17 of its physical address and therefore being interpreted differently
>   * by the GPU.
>   */
> -static void i915_gem_swizzle_page(struct page *page)
> +static void swizzle_page(struct page *page)
>  {
>  	char temp[64];
>  	char *vaddr;
> @@ -791,7 +784,7 @@ i915_gem_object_do_bit_17_swizzle(struct drm_i915_gem_object *obj,
>  	for_each_sgt_page(page, sgt_iter, pages) {
>  		char new_bit_17 = page_to_phys(page) >> 17;
>  		if ((new_bit_17 & 0x1) != (test_bit(i, obj->bit_17) != 0)) {
> -			i915_gem_swizzle_page(page);
> +			swizzle_page(page);
>  			set_page_dirty(page);
>  		}
>  		i++;
> @@ -836,7 +829,7 @@ i915_gem_object_save_bit_17_swizzle(struct drm_i915_gem_object *obj,
>  	}
>  }
>  
> -void i915_ggtt_init_fences(struct i915_ggtt *ggtt)
> +void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
>  {
>  	struct drm_i915_private *i915 = ggtt->vm.i915;
>  	struct intel_uncore *uncore = ggtt->vm.gt->uncore;
> @@ -875,7 +868,7 @@ void i915_ggtt_init_fences(struct i915_ggtt *ggtt)
>  	}
>  	ggtt->num_fences = num_fences;
>  
> -	i915_gem_restore_fences(ggtt);
> +	intel_ggtt_restore_fences(ggtt);
>  }
>  
>  void intel_gt_init_swizzling(struct intel_gt *gt)
> diff --git a/drivers/gpu/drm/i915/i915_gem_fence_reg.h b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> similarity index 92%
> rename from drivers/gpu/drm/i915/i915_gem_fence_reg.h
> rename to drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> index 7bd521cd7cd7..3b3eb5bf1b75 100644
> --- a/drivers/gpu/drm/i915/i915_gem_fence_reg.h
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> @@ -22,8 +22,8 @@
>   *
>   */
>  
> -#ifndef __I915_FENCE_REG_H__
> -#define __I915_FENCE_REG_H__
> +#ifndef __INTEL_GGTT_FENCING_H__
> +#define __INTEL_GGTT_FENCING_H__
>  
>  #include <linux/list.h>
>  #include <linux/types.h>
> @@ -53,18 +53,17 @@ struct i915_fence_reg {
>  	bool dirty;
>  };
>  
> -/* i915_gem_fence_reg.c */
>  struct i915_fence_reg *i915_reserve_fence(struct i915_ggtt *ggtt);
>  void i915_unreserve_fence(struct i915_fence_reg *fence);
>  
> -void i915_gem_restore_fences(struct i915_ggtt *ggtt);
> +void intel_ggtt_restore_fences(struct i915_ggtt *ggtt);
>  
>  void i915_gem_object_do_bit_17_swizzle(struct drm_i915_gem_object *obj,
>  				       struct sg_table *pages);
>  void i915_gem_object_save_bit_17_swizzle(struct drm_i915_gem_object *obj,
>  					 struct sg_table *pages);
>  
> -void i915_ggtt_init_fences(struct i915_ggtt *ggtt);
> +void intel_ggtt_init_fences(struct i915_ggtt *ggtt);
>  
>  void intel_gt_init_swizzling(struct intel_gt *gt);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index b3116fe8d180..ce6ff9d3a350 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -26,7 +26,7 @@
>  #include <drm/drm_mm.h>
>  
>  #include "gt/intel_reset.h"
> -#include "i915_gem_fence_reg.h"
> +#include "gt/intel_ggtt_fencing.h"
>  #include "i915_selftest.h"
>  #include "i915_vma_types.h"
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 8b170c1876b3..9a15bdf31c7f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -750,7 +750,7 @@ static int gt_reset(struct intel_gt *gt, intel_engine_mask_t stalled_mask)
>  	for_each_engine(engine, gt, id)
>  		__intel_engine_reset(engine, stalled_mask & engine->mask);
>  
> -	i915_gem_restore_fences(gt->ggtt);
> +	intel_ggtt_restore_fences(gt->ggtt);
>  
>  	return err;
>  }
> diff --git a/drivers/gpu/drm/i915/gvt/aperture_gm.c b/drivers/gpu/drm/i915/gvt/aperture_gm.c
> index 8b13f091cee2..0d6d59871308 100644
> --- a/drivers/gpu/drm/i915/gvt/aperture_gm.c
> +++ b/drivers/gpu/drm/i915/gvt/aperture_gm.c
> @@ -35,7 +35,7 @@
>   */
>  
>  #include "i915_drv.h"
> -#include "i915_gem_fence_reg.h"
> +#include "gt/intel_ggtt_fencing.h"
>  #include "gvt.h"
>  
>  static int alloc_gm(struct intel_vgpu *vgpu, bool high_gm)
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 82d9df15b22b..832140f4ea3d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1288,7 +1288,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  		drm_err(&dev_priv->drm, "failed to re-enable GGTT\n");
>  
>  	i915_ggtt_resume(&dev_priv->ggtt);
> -	i915_gem_restore_fences(&dev_priv->ggtt);
> +	intel_ggtt_restore_fences(&dev_priv->ggtt);
>  
>  	intel_csr_ucode_resume(dev_priv);
>  
> @@ -1606,7 +1606,7 @@ static int intel_runtime_suspend(struct device *kdev)
>  
>  		intel_gt_runtime_resume(&dev_priv->gt);
>  
> -		i915_gem_restore_fences(&dev_priv->ggtt);
> +		intel_ggtt_restore_fences(&dev_priv->ggtt);
>  
>  		enable_rpm_wakeref_asserts(rpm);
>  
> @@ -1687,7 +1687,7 @@ static int intel_runtime_resume(struct device *kdev)
>  	 * we can do is to hope that things will still work (and disable RPM).
>  	 */
>  	intel_gt_runtime_resume(&dev_priv->gt);
> -	i915_gem_restore_fences(&dev_priv->ggtt);
> +	intel_ggtt_restore_fences(&dev_priv->ggtt);
>  
>  	/*
>  	 * On VLV/CHV display interrupts are part of the display
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 1f5b9a584f71..ddd5b40cbbbc 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -92,7 +92,6 @@
>  #include "intel_wopcm.h"
>  
>  #include "i915_gem.h"
> -#include "i915_gem_fence_reg.h"
>  #include "i915_gem_gtt.h"
>  #include "i915_gpu_error.h"
>  #include "i915_perf_types.h"
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index ca5420012a22..2c53be0bd9fd 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1156,7 +1156,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
>  		/* Minimal basic recovery for KMS */
>  		ret = i915_ggtt_enable_hw(dev_priv);
>  		i915_ggtt_resume(&dev_priv->ggtt);
> -		i915_gem_restore_fences(&dev_priv->ggtt);
> +		intel_ggtt_restore_fences(&dev_priv->ggtt);
>  		intel_init_clock_gating(dev_priv);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index e1ced1df13e1..2764c277326f 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -33,7 +33,6 @@
>  #include "gem/i915_gem_object.h"
>  
>  #include "i915_gem_gtt.h"
> -#include "i915_gem_fence_reg.h"
>  
>  #include "i915_active.h"
>  #include "i915_request.h"
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
> index 623759b73bb4..7ea517a21e0b 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
> @@ -125,7 +125,7 @@ static void pm_resume(struct drm_i915_private *i915)
>  	 */
>  	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
>  		i915_ggtt_resume(&i915->ggtt);
> -		i915_gem_restore_fences(&i915->ggtt);
> +		intel_ggtt_restore_fences(&i915->ggtt);
>  
>  		i915_gem_resume(i915);
>  	}
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
