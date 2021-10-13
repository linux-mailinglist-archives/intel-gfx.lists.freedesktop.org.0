Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D16E642BF8E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 14:13:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 148A96E057;
	Wed, 13 Oct 2021 12:13:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91AC46EA26;
 Wed, 13 Oct 2021 12:13:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="208210555"
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="208210555"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 05:13:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="480764105"
Received: from araghuw-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.208.234])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 05:12:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
In-Reply-To: <20211008215635.2026385-4-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211008215635.2026385-1-matthew.d.roper@intel.com>
 <20211008215635.2026385-4-matthew.d.roper@intel.com>
Date: Wed, 13 Oct 2021 15:12:55 +0300
Message-ID: <87ee8pxgvs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915: Restructure probe to handle
 multi-tile platforms
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

On Fri, 08 Oct 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> On a multi-tile platform, each tile has its own registers + GGTT space,
> and BAR 0 is extended to cover all of them.  Upcoming patches will start
> exposing the tiles as multiple GTs within a single PCI device.  In
> preparation for supporting such setups, restructure the driver's probe
> code a bit.
>
> Only the primary/root tile is initialized for now; the other tiles will
> be detected and plugged in by future patches once the necessary
> infrastructure is in place to handle them.
>
> Original-author: Abdiel Janulgue
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c       | 45 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt.h       |  3 ++
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c    |  9 ++++-
>  drivers/gpu/drm/i915/gt/intel_gt_types.h |  5 +++
>  drivers/gpu/drm/i915/i915_drv.c          | 20 +++++------
>  drivers/gpu/drm/i915/intel_uncore.c      | 12 +++----
>  drivers/gpu/drm/i915/intel_uncore.h      |  3 +-
>  7 files changed, 76 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 1cb1948ac959..f4bea1f1de77 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -900,6 +900,51 @@ u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg)
>  	return intel_uncore_read_fw(gt->uncore, reg);
>  }
>  
> +static int
> +tile_setup(struct intel_gt *gt, unsigned int id, phys_addr_t phys_addr)
> +{
> +	int ret;
> +
> +	intel_uncore_init_early(gt->uncore, gt->i915);
> +
> +	ret = intel_uncore_setup_mmio(gt->uncore, phys_addr);
> +	if (ret)
> +		return ret;
> +
> +	gt->phys_addr = phys_addr;
> +
> +	return 0;
> +}
> +
> +static void tile_cleanup(struct intel_gt *gt)
> +{
> +	intel_uncore_cleanup_mmio(gt->uncore);
> +}
> +
> +int intel_probe_gts(struct drm_i915_private *i915)
> +{
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	phys_addr_t phys_addr;
> +	unsigned int mmio_bar;
> +	int ret;
> +
> +	mmio_bar = GRAPHICS_VER(i915) == 2 ? 1 : 0;
> +	phys_addr = pci_resource_start(pdev, mmio_bar);
> +
> +	/* We always have at least one primary GT on any device */
> +	ret = tile_setup(&i915->gt, 0, phys_addr);
> +	if (ret)
> +		return ret;
> +
> +	/* TODO: add more tiles */
> +	return 0;
> +}
> +
> +void intel_gts_release(struct drm_i915_private *i915)
> +{
> +	tile_cleanup(&i915->gt);
> +}

Please call the functions intel_gt_*.

BR,
Jani.



> +
>  void intel_gt_info_print(const struct intel_gt_info *info,
>  			 struct drm_printer *p)
>  {
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 74e771871a9b..f4f35a70cbe4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -85,6 +85,9 @@ static inline bool intel_gt_needs_read_steering(struct intel_gt *gt,
>  
>  u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg);
>  
> +int intel_probe_gts(struct drm_i915_private *i915);
> +void intel_gts_release(struct drm_i915_private *i915);
> +
>  void intel_gt_info_print(const struct intel_gt_info *info,
>  			 struct drm_printer *p);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index 524eaf678790..76f498edb0d5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -126,7 +126,14 @@ static const struct intel_wakeref_ops wf_ops = {
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
> index 14216cc471b1..66143316d92e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -180,6 +180,11 @@ struct intel_gt {
>  
>  	const struct intel_mmio_range *steering_table[NUM_STEERING_TYPES];
>  
> +	/*
> +	 * Base of per-tile GTTMMADR where we can derive the MMIO and the GGTT.
> +	 */
> +	phys_addr_t phys_addr;
> +
>  	struct intel_gt_info {
>  		intel_engine_mask_t engine_mask;
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 7f96d26c012a..51234fd1349b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -312,8 +312,8 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  	intel_device_info_subplatform_init(dev_priv);
>  	intel_step_init(dev_priv);
>  
> +	/* All tiles share a single mmio_debug */
>  	intel_uncore_mmio_debug_init_early(&dev_priv->mmio_debug);
> -	intel_uncore_init_early(&dev_priv->uncore, dev_priv);
>  
>  	spin_lock_init(&dev_priv->irq_lock);
>  	spin_lock_init(&dev_priv->gpu_error.lock);
> @@ -415,13 +415,9 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
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
> @@ -439,9 +435,6 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
>  err_uncore:
>  	intel_teardown_mchbar(dev_priv);
>  	intel_uncore_fini_mmio(&dev_priv->uncore);
> -err_mmio:
> -	intel_uncore_cleanup_mmio(&dev_priv->uncore);
> -err_bridge:
>  	pci_dev_put(dev_priv->bridge_dev);
>  
>  	return ret;
> @@ -455,7 +448,6 @@ static void i915_driver_mmio_release(struct drm_i915_private *dev_priv)
>  {
>  	intel_teardown_mchbar(dev_priv);
>  	intel_uncore_fini_mmio(&dev_priv->uncore);
> -	intel_uncore_cleanup_mmio(&dev_priv->uncore);
>  	pci_dev_put(dev_priv->bridge_dev);
>  }
>  
> @@ -844,10 +836,14 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  	intel_vgpu_detect(i915);
>  
> -	ret = i915_driver_mmio_probe(i915);
> +	ret = intel_probe_gts(i915);
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
> @@ -904,6 +900,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	i915_ggtt_driver_late_release(i915);
>  out_cleanup_mmio:
>  	i915_driver_mmio_release(i915);
> +out_tiles_cleanup:
> +	intel_gts_release(i915);
>  out_runtime_pm_put:
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	i915_driver_late_release(i915);
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index a308e86c9d9f..8a0a0676d67a 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -2020,14 +2020,11 @@ static int i915_pmic_bus_access_notifier(struct notifier_block *nb,
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
> @@ -2044,7 +2041,7 @@ int intel_uncore_setup_mmio(struct intel_uncore *uncore)
>  	else
>  		mmio_size = 2 * 1024 * 1024;
>  
> -	uncore->regs = pci_iomap(pdev, mmio_bar, mmio_size);
> +	uncore->regs = ioremap(phys_addr, mmio_size);
>  	if (uncore->regs == NULL) {
>  		drm_err(&i915->drm, "failed to map registers\n");
>  		return -EIO;
> @@ -2055,9 +2052,8 @@ int intel_uncore_setup_mmio(struct intel_uncore *uncore)
>  
>  void intel_uncore_cleanup_mmio(struct intel_uncore *uncore)
>  {
> -	struct pci_dev *pdev = to_pci_dev(uncore->i915->drm.dev);
> -
> -	pci_iounmap(pdev, uncore->regs);
> +	if (uncore->regs)
> +		iounmap(uncore->regs);
>  }
>  
>  void intel_uncore_init_early(struct intel_uncore *uncore,
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index d1d17b04e29f..83a455aa8374 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -29,6 +29,7 @@
>  #include <linux/notifier.h>
>  #include <linux/hrtimer.h>
>  #include <linux/io-64-nonatomic-lo-hi.h>
> +#include <linux/types.h>
>  
>  #include "i915_reg.h"
>  
> @@ -218,7 +219,7 @@ void
>  intel_uncore_mmio_debug_init_early(struct intel_uncore_mmio_debug *mmio_debug);
>  void intel_uncore_init_early(struct intel_uncore *uncore,
>  			     struct drm_i915_private *i915);
> -int intel_uncore_setup_mmio(struct intel_uncore *uncore);
> +int intel_uncore_setup_mmio(struct intel_uncore *uncore, phys_addr_t phys_addr);
>  int intel_uncore_init_mmio(struct intel_uncore *uncore);
>  void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
>  					  struct intel_gt *gt);

-- 
Jani Nikula, Intel Open Source Graphics Center
