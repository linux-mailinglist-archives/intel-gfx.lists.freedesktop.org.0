Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0201D4DE7C4
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 13:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D60B10FC9C;
	Sat, 19 Mar 2022 12:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA7D10FC9A;
 Sat, 19 Mar 2022 12:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647691742; x=1679227742;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=YpsQR9lbHYVYYCz8OkbeiRm+tZ/O4Y6J6T/CvQjahSs=;
 b=OKt1qcqsCrhJVWqDONOq9F6ZiLUlmPvQA47H4/IuWxd2Z7iBYZsNX8Ei
 dA0PIDz6riMlfB3cYkwTar6ZpjsBxN8i2L9bfuor99V95pscmYrc4WHMv
 vdph+gaml1ApYaj0mti60Rg9hAmWddsF0iLL20QX5B+QDqRArWNjWyHop
 qSr2yXw/WZ7OyPw/QD1cjMHiWZHJj1DzPjcSIgIpwm+8wfIqoUPf2EP/n
 3Cp0FrLDDzLpSwMwWwIavaTmNip7xPSP7dPi1U0PiQiPZ8yf7HwpuKI9Q
 jMJTVOz42KWsQBYAKyb79HXQ4ZjRo9B+10YJrVI+uNzC2ZMEcy0oK1AFt A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="237240417"
X-IronPort-AV: E=Sophos;i="5.90,194,1643702400"; d="scan'208";a="237240417"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2022 05:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,194,1643702400"; d="scan'208";a="715870209"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga005.jf.intel.com with ESMTP; 19 Mar 2022 05:08:58 -0700
Received: from [10.249.134.188] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.134.188])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22JC8uda019548; Sat, 19 Mar 2022 12:08:56 GMT
Message-ID: <4d797b83-d7c5-6541-99fc-c9fc0998d358@intel.com>
Date: Sat, 19 Mar 2022 13:08:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.2
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
References: <20220318233938.149744-1-andi.shyti@linux.intel.com>
 <20220318233938.149744-4-andi.shyti@linux.intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20220318233938.149744-4-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v7 3/7] drm/i915: Prepare for multiple GTs
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 19.03.2022 00:39, Andi Shyti wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> On a multi-tile platform, each tile has its own registers + GGTT
> space, and BAR 0 is extended to cover all of them.
> 
> Up to four GTs are supported in i915->gt[], with slot zero
> shadowing the existing i915->gt0 to enable source compatibility
> with legacy driver paths. A for_each_gt macro is added to iterate
> over the GTs and will be used by upcoming patches that convert
> various parts of the driver to be multi-gt aware.
> 
> Only the primary/root tile is initialized for now; the other
> tiles will be detected and plugged in by future patches once the
> necessary infrastructure is in place to handle them.
> 
> Signed-off-by: Abdiel Janulgue <abdiel.janulgue@gmail.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c            | 133 ++++++++++++++++--
>  drivers/gpu/drm/i915/gt/intel_gt.h            |  17 ++-
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   9 +-
>  drivers/gpu/drm/i915/gt/intel_gt_types.h      |   7 +
>  drivers/gpu/drm/i915/i915_driver.c            |  28 ++--
>  drivers/gpu/drm/i915/i915_drv.h               |   6 +
>  drivers/gpu/drm/i915/intel_memory_region.h    |   3 +
>  drivers/gpu/drm/i915/intel_uncore.c           |  11 +-
>  drivers/gpu/drm/i915/intel_uncore.h           |   3 +-
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  13 +-
>  10 files changed, 184 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index ca875ba3e2a9d..cfac4a913642e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -29,7 +29,7 @@
>  #include "intel_uncore.h"
>  #include "shmem_utils.h"
>  
> -void __intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
> +static void __intel_gt_init_early(struct intel_gt *gt)
>  {
>  	spin_lock_init(&gt->irq_lock);
>  
> @@ -51,17 +51,23 @@ void __intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
>  	intel_rps_init_early(&gt->rps);
>  }
>  
> -void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
> +/* Preliminary initialization of Tile 0 */
> +void intel_root_gt_init_early(struct drm_i915_private *i915)
>  {
> +	struct intel_gt *gt = to_gt(i915);
> +
>  	gt->i915 = i915;
>  	gt->uncore = &i915->uncore;
> +
> +	__intel_gt_init_early(gt);
>  }
>  
> -int intel_gt_probe_lmem(struct intel_gt *gt)
> +static int intel_gt_probe_lmem(struct intel_gt *gt)
>  {
>  	struct drm_i915_private *i915 = gt->i915;
> +	unsigned int instance = gt->info.id;
> +	int id = INTEL_REGION_LMEM_0 + instance;
>  	struct intel_memory_region *mem;
> -	int id;
>  	int err;
>  
>  	mem = intel_gt_setup_lmem(gt);
> @@ -76,9 +82,8 @@ int intel_gt_probe_lmem(struct intel_gt *gt)
>  		return err;
>  	}
>  
> -	id = INTEL_REGION_LMEM_0;
> -
>  	mem->id = id;
> +	mem->instance = instance;
>  
>  	intel_memory_region_set_name(mem, "local%u", mem->instance);
>  
> @@ -807,16 +812,21 @@ void intel_gt_driver_release(struct intel_gt *gt)
>  	intel_gt_fini_hwconfig(gt);
>  }
>  
> -void intel_gt_driver_late_release(struct intel_gt *gt)
> +void intel_gt_driver_late_release_all(struct drm_i915_private *i915)
>  {
> +	struct intel_gt *gt;
> +	unsigned int id;
> +
>  	/* We need to wait for inflight RCU frees to release their grip */
>  	rcu_barrier();
>  
> -	intel_uc_driver_late_release(&gt->uc);
> -	intel_gt_fini_requests(gt);
> -	intel_gt_fini_reset(gt);
> -	intel_gt_fini_timelines(gt);
> -	intel_engines_free(gt);
> +	for_each_gt(gt, i915, id) {
> +		intel_uc_driver_late_release(&gt->uc);
> +		intel_gt_fini_requests(gt);
> +		intel_gt_fini_reset(gt);
> +		intel_gt_fini_timelines(gt);
> +		intel_engines_free(gt);
> +	}
>  }
>  
>  /**
> @@ -1013,6 +1023,105 @@ void intel_gt_report_steering(struct drm_printer *p, struct intel_gt *gt,
>  	}
>  }
>  
> +static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
> +{
> +	int ret;
> +
> +	if (!gt_is_root(gt)) {
> +		struct intel_uncore_mmio_debug *mmio_debug;
> +		struct intel_uncore *uncore;
> +
> +		uncore = kzalloc(sizeof(*uncore), GFP_KERNEL);
> +		if (!uncore)
> +			return -ENOMEM;
> +
> +		mmio_debug = kzalloc(sizeof(*mmio_debug), GFP_KERNEL);
> +		if (!mmio_debug) {
> +			kfree(uncore);
> +			return -ENOMEM;
> +		}
> +
> +		gt->uncore = uncore;
> +		gt->uncore->debug = mmio_debug;
> +
> +		__intel_gt_init_early(gt);
> +	}
> +
> +	intel_uncore_init_early(gt->uncore, gt);
> +
> +	ret = intel_uncore_setup_mmio(gt->uncore, phys_addr);
> +	if (ret)
> +		return ret;

(little guessing as in this patch we don't have non-root gt yet)

if the future, when we will be doing setup of non-root gt, if we return
here then likely we will leak both uncore/mmio_debug as gt will not be
added to i915->gts thus it will not be visible in for_each_gt loop used
to release/cleanup all gts.

since in above code you are doing cleanup in case of kzalloc failure,
same should be done in case of mmio setup failure.

Michal

> +
> +	gt->phys_addr = phys_addr;
> +
> +	return 0;
> +}
> +
> +static void
> +intel_gt_tile_cleanup(struct intel_gt *gt)
> +{
> +	intel_uncore_cleanup_mmio(gt->uncore);
> +
> +	if (!gt_is_root(gt)) {
> +		kfree(gt->uncore->debug);
> +		kfree(gt->uncore);
> +		kfree(gt);
> +	}
> +}
> +
> +int intel_gt_probe_all(struct drm_i915_private *i915)
> +{
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	struct intel_gt *gt = &i915->gt0;
> +	phys_addr_t phys_addr;
> +	unsigned int mmio_bar;
> +	int ret;
> +
> +	mmio_bar = GRAPHICS_VER(i915) == 2 ? 1 : 0;
> +	phys_addr = pci_resource_start(pdev, mmio_bar);
> +
> +	/*
> +	 * We always have at least one primary GT on any device
> +	 * and it has been already initialized early during probe
> +	 * in i915_driver_probe()
> +	 */
> +	ret = intel_gt_tile_setup(gt, phys_addr);
> +	if (ret)
> +		return ret;
> +
> +	i915->gt[0] = gt;
> +
> +	/* TODO: add more tiles */
> +	return 0;
> +}
> +
> +int intel_gt_tiles_init(struct drm_i915_private *i915)
> +{
> +	struct intel_gt *gt;
> +	unsigned int id;
> +	int ret;
> +
> +	for_each_gt(gt, i915, id) {
> +		ret = intel_gt_probe_lmem(gt);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +void intel_gt_release_all(struct drm_i915_private *i915)
> +{
> +	struct intel_gt *gt;
> +	unsigned int id;
> +
> +	for_each_gt(gt, i915, id) {
> +		intel_gt_tile_cleanup(gt);
> +		i915->gt[id] = NULL;
> +	}
> +}
> +
>  void intel_gt_info_print(const struct intel_gt_info *info,
>  			 struct drm_printer *p)
>  {
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index ce471aa5c83d7..e76168e10a21b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -39,10 +39,8 @@ static inline struct intel_gt *huc_to_gt(struct intel_huc *huc)
>  	return container_of(huc, struct intel_gt, uc.huc);
>  }
>  
> -void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915);
> -void __intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915);
> +void intel_root_gt_init_early(struct drm_i915_private *i915);
>  int intel_gt_assign_ggtt(struct intel_gt *gt);
> -int intel_gt_probe_lmem(struct intel_gt *gt);
>  int intel_gt_init_mmio(struct intel_gt *gt);
>  int __must_check intel_gt_init_hw(struct intel_gt *gt);
>  int intel_gt_init(struct intel_gt *gt);
> @@ -52,7 +50,7 @@ void intel_gt_driver_unregister(struct intel_gt *gt);
>  void intel_gt_driver_remove(struct intel_gt *gt);
>  void intel_gt_driver_release(struct intel_gt *gt);
>  
> -void intel_gt_driver_late_release(struct intel_gt *gt);
> +void intel_gt_driver_late_release_all(struct drm_i915_private *i915);
>  
>  int intel_gt_wait_for_idle(struct intel_gt *gt, long timeout);
>  
> @@ -97,6 +95,17 @@ u32 intel_gt_read_register(struct intel_gt *gt, i915_reg_t reg);
>  
>  void intel_gt_report_steering(struct drm_printer *p, struct intel_gt *gt,
>  			      bool dump_table);
> +
> +int intel_gt_probe_all(struct drm_i915_private *i915);
> +int intel_gt_tiles_init(struct drm_i915_private *i915);
> +void intel_gt_release_all(struct drm_i915_private *i915);
> +
> +#define for_each_gt(gt__, i915__, id__) \
> +	for ((id__) = 0; \
> +	     (id__) < I915_MAX_GT; \
> +	     (id__)++) \
> +		for_each_if(((gt__) = (i915__)->gt[(id__)]))
> +
>  void intel_gt_info_print(const struct intel_gt_info *info,
>  			 struct drm_printer *p);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index e4ecc17889d34..eeead40485fbc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -129,7 +129,14 @@ static const struct intel_wakeref_ops wf_ops = {
>  
>  void intel_gt_pm_init_early(struct intel_gt *gt)
>  {
> -	intel_wakeref_init(&gt->wakeref, gt->uncore->rpm, &wf_ops);
> +	/*
> +	 * We access the runtime_pm structure via gt->i915 here rather than
> +	 * gt->uncore as we do elsewhere in the file because gt->uncore is not
> +	 * yet initialized for all tiles at this point in the driver startup.
> +	 * runtime_pm is per-device rather than per-tile, so this is still the
> +	 * correct structure.
> +	 */
> +	intel_wakeref_init(&gt->wakeref, &gt->i915->runtime_pm, &wf_ops);
>  	seqcount_mutex_init(&gt->stats.lock, &gt->wakeref.mutex);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index bbba885d45bd5..937b2e1a305ed 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -188,7 +188,14 @@ struct intel_gt {
>  		u8 instanceid;
>  	} default_steering;
>  
> +	/*
> +	 * Base of per-tile GTTMMADR where we can derive the MMIO and the GGTT.
> +	 */
> +	phys_addr_t phys_addr;
> +
>  	struct intel_gt_info {
> +		unsigned int id;
> +
>  		intel_engine_mask_t engine_mask;
>  
>  		u32 l3bank_mask;
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 92a625a174e22..64e6f76861f95 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -321,9 +321,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  	intel_device_info_subplatform_init(dev_priv);
>  	intel_step_init(dev_priv);
>  
> -	intel_gt_init_early(to_gt(dev_priv), dev_priv);
>  	intel_uncore_mmio_debug_init_early(&dev_priv->mmio_debug);
> -	intel_uncore_init_early(&dev_priv->uncore, to_gt(dev_priv));
>  
>  	spin_lock_init(&dev_priv->irq_lock);
>  	spin_lock_init(&dev_priv->gpu_error.lock);
> @@ -354,7 +352,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  
>  	intel_wopcm_init_early(&dev_priv->wopcm);
>  
> -	__intel_gt_init_early(to_gt(dev_priv), dev_priv);
> +	intel_root_gt_init_early(dev_priv);
>  
>  	i915_gem_init_early(dev_priv);
>  
> @@ -375,7 +373,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  
>  err_gem:
>  	i915_gem_cleanup_early(dev_priv);
> -	intel_gt_driver_late_release(to_gt(dev_priv));
> +	intel_gt_driver_late_release_all(dev_priv);
>  	intel_region_ttm_device_fini(dev_priv);
>  err_ttm:
>  	vlv_suspend_cleanup(dev_priv);
> @@ -394,7 +392,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
>  	intel_irq_fini(dev_priv);
>  	intel_power_domains_cleanup(dev_priv);
>  	i915_gem_cleanup_early(dev_priv);
> -	intel_gt_driver_late_release(to_gt(dev_priv));
> +	intel_gt_driver_late_release_all(dev_priv);
>  	intel_region_ttm_device_fini(dev_priv);
>  	vlv_suspend_cleanup(dev_priv);
>  	i915_workqueues_cleanup(dev_priv);
> @@ -425,13 +423,9 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
>  	if (ret < 0)
>  		return ret;
>  
> -	ret = intel_uncore_setup_mmio(&dev_priv->uncore);
> -	if (ret < 0)
> -		goto err_bridge;
> -
>  	ret = intel_uncore_init_mmio(&dev_priv->uncore);
>  	if (ret)
> -		goto err_mmio;
> +		return ret;
>  
>  	/* Try to make sure MCHBAR is enabled before poking at it */
>  	intel_setup_mchbar(dev_priv);
> @@ -449,9 +443,6 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
>  err_uncore:
>  	intel_teardown_mchbar(dev_priv);
>  	intel_uncore_fini_mmio(&dev_priv->uncore);
> -err_mmio:
> -	intel_uncore_cleanup_mmio(&dev_priv->uncore);
> -err_bridge:
>  	pci_dev_put(dev_priv->bridge_dev);
>  
>  	return ret;
> @@ -465,7 +456,6 @@ static void i915_driver_mmio_release(struct drm_i915_private *dev_priv)
>  {
>  	intel_teardown_mchbar(dev_priv);
>  	intel_uncore_fini_mmio(&dev_priv->uncore);
> -	intel_uncore_cleanup_mmio(&dev_priv->uncore);
>  	pci_dev_put(dev_priv->bridge_dev);
>  }
>  
> @@ -598,7 +588,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  	if (ret)
>  		goto err_ggtt;
>  
> -	ret = intel_gt_probe_lmem(to_gt(dev_priv));
> +	ret = intel_gt_tiles_init(dev_priv);
>  	if (ret)
>  		goto err_mem_regions;
>  
> @@ -849,10 +839,14 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  	intel_vgpu_detect(i915);
>  
> -	ret = i915_driver_mmio_probe(i915);
> +	ret = intel_gt_probe_all(i915);
>  	if (ret < 0)
>  		goto out_runtime_pm_put;
>  
> +	ret = i915_driver_mmio_probe(i915);
> +	if (ret < 0)
> +		goto out_tiles_cleanup;
> +
>  	ret = i915_driver_hw_probe(i915);
>  	if (ret < 0)
>  		goto out_cleanup_mmio;
> @@ -909,6 +903,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	i915_ggtt_driver_late_release(i915);
>  out_cleanup_mmio:
>  	i915_driver_mmio_release(i915);
> +out_tiles_cleanup:
> +	intel_gt_release_all(i915);
>  out_runtime_pm_put:
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	i915_driver_late_release(i915);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 97622d3ccfc2a..8e4083d413592 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -777,6 +777,12 @@ struct drm_i915_private {
>  	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
>  	struct intel_gt gt0;
>  
> +	/*
> +	 * i915->gt[0] == &i915->gt0
> +	 */
> +#define I915_MAX_GT 4
> +	struct intel_gt *gt[I915_MAX_GT];
> +
>  	struct {
>  		struct i915_gem_contexts {
>  			spinlock_t lock; /* locks list */
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
> index cc7078bcbfbfc..3d8378c1b4478 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.h
> +++ b/drivers/gpu/drm/i915/intel_memory_region.h
> @@ -30,6 +30,9 @@ enum intel_memory_type {
>  enum intel_region_id {
>  	INTEL_REGION_SMEM = 0,
>  	INTEL_REGION_LMEM_0,
> +	INTEL_REGION_LMEM_1,
> +	INTEL_REGION_LMEM_2,
> +	INTEL_REGION_LMEM_3,
>  	INTEL_REGION_STOLEN_SMEM,
>  	INTEL_REGION_STOLEN_LMEM,
>  	INTEL_REGION_UNKNOWN, /* Should be last */
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index ef8ffc01ad19c..8b9caaaacc21f 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -2039,14 +2039,11 @@ static int i915_pmic_bus_access_notifier(struct notifier_block *nb,
>  	return NOTIFY_OK;
>  }
>  
> -int intel_uncore_setup_mmio(struct intel_uncore *uncore)
> +int intel_uncore_setup_mmio(struct intel_uncore *uncore, phys_addr_t phys_addr)
>  {
>  	struct drm_i915_private *i915 = uncore->i915;
> -	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> -	int mmio_bar;
>  	int mmio_size;
>  
> -	mmio_bar = GRAPHICS_VER(i915) == 2 ? 1 : 0;
>  	/*
>  	 * Before gen4, the registers and the GTT are behind different BARs.
>  	 * However, from gen4 onwards, the registers and the GTT are shared
> @@ -2063,7 +2060,7 @@ int intel_uncore_setup_mmio(struct intel_uncore *uncore)
>  	else
>  		mmio_size = 2 * 1024 * 1024;
>  
> -	uncore->regs = pci_iomap(pdev, mmio_bar, mmio_size);
> +	uncore->regs = ioremap(phys_addr, mmio_size);
>  	if (uncore->regs == NULL) {
>  		drm_err(&i915->drm, "failed to map registers\n");
>  		return -EIO;
> @@ -2074,9 +2071,7 @@ int intel_uncore_setup_mmio(struct intel_uncore *uncore)
>  
>  void intel_uncore_cleanup_mmio(struct intel_uncore *uncore)
>  {
> -	struct pci_dev *pdev = to_pci_dev(uncore->i915->drm.dev);
> -
> -	pci_iounmap(pdev, uncore->regs);
> +	iounmap(uncore->regs);
>  }
>  
>  void intel_uncore_init_early(struct intel_uncore *uncore,
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index 9a760952d46af..52fe3d89dd2b8 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -29,6 +29,7 @@
>  #include <linux/notifier.h>
>  #include <linux/hrtimer.h>
>  #include <linux/io-64-nonatomic-lo-hi.h>
> +#include <linux/types.h>
>  
>  #include "i915_reg_defs.h"
>  
> @@ -221,7 +222,7 @@ void
>  intel_uncore_mmio_debug_init_early(struct intel_uncore_mmio_debug *mmio_debug);
>  void intel_uncore_init_early(struct intel_uncore *uncore,
>  			     struct intel_gt *gt);
> -int intel_uncore_setup_mmio(struct intel_uncore *uncore);
> +int intel_uncore_setup_mmio(struct intel_uncore *uncore, phys_addr_t phys_addr);
>  int intel_uncore_init_mmio(struct intel_uncore *uncore);
>  void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
>  					  struct intel_gt *gt);
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index 573d9b2e1a4a3..9c31a16f83800 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -73,7 +73,7 @@ static void mock_device_release(struct drm_device *dev)
>  	destroy_workqueue(i915->wq);
>  
>  	intel_region_ttm_device_fini(i915);
> -	intel_gt_driver_late_release(to_gt(i915));
> +	intel_gt_driver_late_release_all(i915);
>  	intel_memory_regions_driver_release(i915);
>  
>  	drm_mode_config_cleanup(&i915->drm);
> @@ -112,6 +112,11 @@ static struct dev_pm_domain pm_domain = {
>  	},
>  };
>  
> +static void mock_gt_probe(struct drm_i915_private *i915)
> +{
> +	i915->gt[0] = &i915->gt0;
> +}
> +
>  struct drm_i915_private *mock_gem_device(void)
>  {
>  #if IS_ENABLED(CONFIG_IOMMU_API) && defined(CONFIG_INTEL_IOMMU)
> @@ -180,11 +185,11 @@ struct drm_i915_private *mock_gem_device(void)
>  	spin_lock_init(&i915->gpu_error.lock);
>  
>  	i915_gem_init__mm(i915);
> -	intel_gt_init_early(to_gt(i915), i915);
> -	__intel_gt_init_early(to_gt(i915), i915);
> +	intel_root_gt_init_early(i915);
>  	mock_uncore_init(&i915->uncore, i915);
>  	atomic_inc(&to_gt(i915)->wakeref.count); /* disable; no hw support */
>  	to_gt(i915)->awake = -ENODEV;
> +	mock_gt_probe(i915);
>  
>  	ret = intel_region_ttm_device_init(i915);
>  	if (ret)
> @@ -229,7 +234,7 @@ struct drm_i915_private *mock_gem_device(void)
>  err_drv:
>  	intel_region_ttm_device_fini(i915);
>  err_ttm:
> -	intel_gt_driver_late_release(to_gt(i915));
> +	intel_gt_driver_late_release_all(i915);
>  	intel_memory_regions_driver_release(i915);
>  	drm_mode_config_cleanup(&i915->drm);
>  	mock_destroy_device(i915);
