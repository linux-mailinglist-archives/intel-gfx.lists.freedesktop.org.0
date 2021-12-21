Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAAD47C41B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 17:48:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C31110F59A;
	Tue, 21 Dec 2021 16:47:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15CFE10EE64;
 Tue, 21 Dec 2021 16:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640105274; x=1671641274;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8EjpFkxFbJyAllDuMYfSQf1Z2oXWhaQE+O4Ln3rn49g=;
 b=cKGcNuU3r5nvi/U1bjVRJoeGHQy/xTT0myCVOuCDFiCR66K0xlNtxk8n
 OtPco7+MSe23f5xrVwAqioxecmxA7rD69aiTUcT/t3dk0T7aMNCTPiXD5
 SDex6vQWQeKeZxuHWmGB7SnmV5tcgx11VNhsXzYbrKYB3EEPmrUZ5XdxJ
 /nAK3C2WK6RZ7GDIytK8bd1lbyVsLpiXm9lS+Wc/v1K+CxMQ3bPeNM54k
 tJKjcjLH4Tu0P6dNs2T1cvya9ALSoZXFJMIJfZLqaub0jfonCdGm+GQ4v
 kmBBATa1MbFjilT4d2LmZaOqwEksC+PWKzohMqwEB+ib/fvUNZCeTJvZc w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="240238050"
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="240238050"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 08:47:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="548155376"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 08:47:51 -0800
Date: Tue, 21 Dec 2021 08:47:50 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <YcIEwK4jzyyCdsAi@mdroper-desk1.amr.corp.intel.com>
References: <20211219212500.61432-1-andi.shyti@linux.intel.com>
 <20211219212500.61432-2-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211219212500.61432-2-andi.shyti@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v9 1/6] drm/i915/gt: Use to_gt() helper for
 GGTT accesses
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Dec 19, 2021 at 11:24:55PM +0200, Andi Shyti wrote:
> From: Michał Winiarski <michal.winiarski@intel.com>
> 
> GGTT is currently available both through i915->ggtt and gt->ggtt, and we
> eventually want to get rid of the i915->ggtt one.
> Use to_gt() for all i915->ggtt accesses to help with the future
> refactoring.
> 
> Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c         | 14 +++++++-------
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c |  6 +++---
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c  |  4 ++--
>  drivers/gpu/drm/i915/gt/selftest_reset.c     |  2 +-
>  drivers/gpu/drm/i915/i915_driver.c           |  4 ++--
>  5 files changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 971e737b37b2..ec3b998392ff 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -89,7 +89,7 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915)
>  	 * beyond the end of the batch buffer, across the page boundary,
>  	 * and beyond the end of the GTT if we do not provide a guard.
>  	 */
> -	ret = ggtt_init_hw(&i915->ggtt);
> +	ret = ggtt_init_hw(to_gt(i915)->ggtt);
>  	if (ret)
>  		return ret;
>  
> @@ -725,14 +725,14 @@ int i915_init_ggtt(struct drm_i915_private *i915)
>  {
>  	int ret;
>  
> -	ret = init_ggtt(&i915->ggtt);
> +	ret = init_ggtt(to_gt(i915)->ggtt);
>  	if (ret)
>  		return ret;
>  
>  	if (INTEL_PPGTT(i915) == INTEL_PPGTT_ALIASING) {
> -		ret = init_aliasing_ppgtt(&i915->ggtt);
> +		ret = init_aliasing_ppgtt(to_gt(i915)->ggtt);
>  		if (ret)
> -			cleanup_init_ggtt(&i915->ggtt);
> +			cleanup_init_ggtt(to_gt(i915)->ggtt);
>  	}
>  
>  	return 0;
> @@ -775,7 +775,7 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
>   */
>  void i915_ggtt_driver_release(struct drm_i915_private *i915)
>  {
> -	struct i915_ggtt *ggtt = &i915->ggtt;
> +	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
>  
>  	fini_aliasing_ppgtt(ggtt);
>  
> @@ -790,7 +790,7 @@ void i915_ggtt_driver_release(struct drm_i915_private *i915)
>   */
>  void i915_ggtt_driver_late_release(struct drm_i915_private *i915)
>  {
> -	struct i915_ggtt *ggtt = &i915->ggtt;
> +	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
>  
>  	GEM_WARN_ON(kref_read(&ggtt->vm.resv_ref) != 1);
>  	dma_resv_fini(&ggtt->vm._resv);
> @@ -1232,7 +1232,7 @@ int i915_ggtt_probe_hw(struct drm_i915_private *i915)
>  {
>  	int ret;
>  
> -	ret = ggtt_probe_hw(&i915->ggtt, to_gt(i915));
> +	ret = ggtt_probe_hw(to_gt(i915)->ggtt, to_gt(i915));
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> index f8948de72036..beabf3bc9b75 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -728,8 +728,8 @@ static void detect_bit_6_swizzle(struct i915_ggtt *ggtt)
>  		swizzle_y = I915_BIT_6_SWIZZLE_NONE;
>  	}
>  
> -	i915->ggtt.bit_6_swizzle_x = swizzle_x;
> -	i915->ggtt.bit_6_swizzle_y = swizzle_y;
> +	to_gt(i915)->ggtt->bit_6_swizzle_x = swizzle_x;
> +	to_gt(i915)->ggtt->bit_6_swizzle_y = swizzle_y;
>  }
>  
>  /*
> @@ -896,7 +896,7 @@ void intel_gt_init_swizzling(struct intel_gt *gt)
>  	struct intel_uncore *uncore = gt->uncore;
>  
>  	if (GRAPHICS_VER(i915) < 5 ||
> -	    i915->ggtt.bit_6_swizzle_x == I915_BIT_6_SWIZZLE_NONE)
> +	    to_gt(i915)->ggtt->bit_6_swizzle_x == I915_BIT_6_SWIZZLE_NONE)
>  		return;
>  
>  	intel_uncore_rmw(uncore, DISP_ARB_CTL, 0, DISP_TILE_SURFACE_SWIZZLING);
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index fde2dcb59809..21215a080088 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -15,7 +15,7 @@
>  static int init_fake_lmem_bar(struct intel_memory_region *mem)
>  {
>  	struct drm_i915_private *i915 = mem->i915;
> -	struct i915_ggtt *ggtt = &i915->ggtt;
> +	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
>  	unsigned long n;
>  	int ret;
>  
> @@ -131,7 +131,7 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
>  	if (!i915->params.fake_lmem_start)
>  		return ERR_PTR(-ENODEV);
>  
> -	GEM_BUG_ON(i915_ggtt_has_aperture(&i915->ggtt));
> +	GEM_BUG_ON(i915_ggtt_has_aperture(to_gt(i915)->ggtt));
>  
>  	/* Your mappable aperture belongs to me now! */
>  	mappable_end = pci_resource_len(pdev, 2);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
> index 8a873f6bda7f..37c38bdd5f47 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_reset.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
> @@ -19,7 +19,7 @@ __igt_reset_stolen(struct intel_gt *gt,
>  		   intel_engine_mask_t mask,
>  		   const char *msg)
>  {
> -	struct i915_ggtt *ggtt = &gt->i915->ggtt;
> +	struct i915_ggtt *ggtt = gt->ggtt;
>  	const struct resource *dsm = &gt->i915->dsm;
>  	resource_size_t num_pages, page;
>  	struct intel_engine_cs *engine;
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 95174938b160..60f8cbf24de7 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -571,6 +571,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  
>  	i915_perf_init(dev_priv);
>  
> +	intel_gt_init_hw_early(to_gt(dev_priv), &dev_priv->ggtt);
> +

Now that this function call has moved to this patch, you'll probably
want to mention/explain it in the commit message since it's different
from the rest of the changes in this patch.


Matt


>  	ret = i915_ggtt_probe_hw(dev_priv);
>  	if (ret)
>  		goto err_perf;
> @@ -587,8 +589,6 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  	if (ret)
>  		goto err_ggtt;
>  
> -	intel_gt_init_hw_early(to_gt(dev_priv), &dev_priv->ggtt);
> -
>  	ret = intel_gt_probe_lmem(to_gt(dev_priv));
>  	if (ret)
>  		goto err_mem_regions;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
