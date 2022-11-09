Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC702622C99
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 14:42:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DC9410E0F4;
	Wed,  9 Nov 2022 13:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4427110E0F4;
 Wed,  9 Nov 2022 13:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668001341; x=1699537341;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=lSMjwgD+zMLXVaaRUP1Ry4foZwSX4L5bXaTPviFoGa0=;
 b=eKbL3Rx4RQysfVCbUHEM7rMdu85v9udl3yCt9MpMCOM+cBXGuNd+jJU1
 vnH5WinaoBSe8puRpMvYNrnwNp1h9n+SeS8B65h3Tid1JPRnoTQt5e8bK
 2wjHmcZUcoq+7Ews5s3QGvN9RW74GUNS0utAo3E7EEe5QCQeb2VaK3PtG
 4RK31+ncvS5/mkmgWzB52bUxIjFbcdTCD9L7nVJ+kgJplGMuadMjOSAx8
 JJDn3WQEiyj2y0WBB9iUoNIVysgiP7FAtWXOF1COXVHsxh9ACHU8X/O17
 hkiZpteyW1EUrhuzAepy3NAHyvVk4PoFyarBiKdMXQLFw0DdbaArJahoL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="312777128"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="312777128"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 05:42:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="742400743"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="742400743"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 05:42:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Aravind Iddamsetty <aravind.iddamsetty@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20221109134344.2124998-1-aravind.iddamsetty@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221109134344.2124998-1-aravind.iddamsetty@intel.com>
Date: Wed, 09 Nov 2022 15:42:15 +0200
Message-ID: <87fses6y88.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mtl: Media GT and Render GT
 share common GGTT
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

On Wed, 09 Nov 2022, Aravind Iddamsetty <aravind.iddamsetty@intel.com> wrote:
> On XE_LPM+ platforms the media engines are carved out into a separate
> GT but have a common GGTMMADR address range which essentially makes
> the GGTT address space to be shared between media and render GT. As a
> result any updates in GGTT shall invalidate TLB of GTs sharing it and
> similarly any operation on GGTT requiring an action on a GT will have to
> involve all GTs sharing it. setup_private_pat was being done on a per
> GGTT based as that doesn't touch any GGTT structures moved it to per GT
> based.
>
> BSPEC: 63834
>
> v2:
> 1. Add details to commit msg
> 2. includes fix for failure to add item to ggtt->gt_list, as suggested
> by Lucas
> 3. as ggtt_flush() is used only for ggtt drop i915_is_ggtt check within
> it.
> 4. setup_private_pat moved out of intel_gt_tiles_init
>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c      | 47 ++++++++++++++-------
>  drivers/gpu/drm/i915/gt/intel_gt.c        | 13 +++++-
>  drivers/gpu/drm/i915/gt/intel_gt_types.h  |  3 ++
>  drivers/gpu/drm/i915/gt/intel_gtt.h       |  4 ++
>  drivers/gpu/drm/i915/i915_driver.c        | 22 +++++++---
>  drivers/gpu/drm/i915/i915_gem_evict.c     | 51 +++++++++++++++++------
>  drivers/gpu/drm/i915/i915_vma.c           |  5 ++-
>  drivers/gpu/drm/i915/selftests/i915_gem.c |  2 +
>  8 files changed, 112 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 2518cebbf931..6ba7e9e8e2ca 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -8,6 +8,7 @@
>  #include <linux/types.h>
>  #include <linux/stop_machine.h>
>  
> +#include <drm/drm_managed.h>
>  #include <drm/i915_drm.h>
>  #include <drm/intel-gtt.h>
>  
> @@ -196,10 +197,13 @@ void i915_ggtt_suspend_vm(struct i915_address_space *vm)
>  
>  void i915_ggtt_suspend(struct i915_ggtt *ggtt)
>  {
> +	struct intel_gt *gt;
> +
>  	i915_ggtt_suspend_vm(&ggtt->vm);
>  	ggtt->invalidate(ggtt);
>  
> -	intel_gt_check_and_clear_faults(ggtt->vm.gt);
> +	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
> +		intel_gt_check_and_clear_faults(gt);
>  }
>  
>  void gen6_ggtt_invalidate(struct i915_ggtt *ggtt)
> @@ -225,16 +229,21 @@ static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>  
>  static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>  {
> -	struct intel_uncore *uncore = ggtt->vm.gt->uncore;
>  	struct drm_i915_private *i915 = ggtt->vm.i915;
>  
>  	gen8_ggtt_invalidate(ggtt);
>  
> -	if (GRAPHICS_VER(i915) >= 12)
> -		intel_uncore_write_fw(uncore, GEN12_GUC_TLB_INV_CR,
> -				      GEN12_GUC_TLB_INV_CR_INVALIDATE);
> -	else
> -		intel_uncore_write_fw(uncore, GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +	if (GRAPHICS_VER(i915) >= 12) {
> +		struct intel_gt *gt;
> +
> +		list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
> +			intel_uncore_write_fw(gt->uncore,
> +					      GEN12_GUC_TLB_INV_CR,
> +					      GEN12_GUC_TLB_INV_CR_INVALIDATE);
> +	} else {
> +		intel_uncore_write_fw(ggtt->vm.gt->uncore,
> +				      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +	}
>  }
>  
>  u64 gen8_ggtt_pte_encode(dma_addr_t addr,
> @@ -986,8 +995,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>  
>  	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>  
> -	setup_private_pat(ggtt->vm.gt);
> -
>  	return ggtt_probe_common(ggtt, size);
>  }
>  
> @@ -1186,7 +1193,7 @@ static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
>  		(u64)ggtt->mappable_end >> 20);
>  	drm_dbg(&i915->drm, "DSM size = %lluM\n",
>  		(u64)resource_size(&intel_graphics_stolen_res) >> 20);
> -
> +	INIT_LIST_HEAD(&ggtt->gt_list);
>  	return 0;
>  }
>  
> @@ -1208,6 +1215,19 @@ int i915_ggtt_probe_hw(struct drm_i915_private *i915)
>  	return 0;
>  }
>  
> +struct i915_ggtt *i915_ggtt_create(struct drm_i915_private *i915)
> +{
> +	struct i915_ggtt *ggtt;
> +
> +	ggtt = drmm_kzalloc(&i915->drm, sizeof(*ggtt), GFP_KERNEL);
> +	if (!ggtt)
> +		return ERR_PTR(-ENOMEM);
> +
> +	INIT_LIST_HEAD(&ggtt->gt_list);
> +
> +	return ggtt;
> +}
> +
>  int i915_ggtt_enable_hw(struct drm_i915_private *i915)
>  {
>  	if (GRAPHICS_VER(i915) < 6)
> @@ -1296,9 +1316,11 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm)
>  
>  void i915_ggtt_resume(struct i915_ggtt *ggtt)
>  {
> +	struct intel_gt *gt;
>  	bool flush;
>  
> -	intel_gt_check_and_clear_faults(ggtt->vm.gt);
> +	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
> +		intel_gt_check_and_clear_faults(gt);
>  
>  	flush = i915_ggtt_resume_vm(&ggtt->vm);
>  
> @@ -1307,9 +1329,6 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
>  	if (flush)
>  		wbinvd_on_all_cpus();
>  
> -	if (GRAPHICS_VER(ggtt->vm.i915) >= 8)
> -		setup_private_pat(ggtt->vm.gt);
> -
>  	intel_ggtt_restore_fences(ggtt);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 8e914c4066ed..d57b10a0e5c8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -108,9 +108,18 @@ static int intel_gt_probe_lmem(struct intel_gt *gt)
>  
>  int intel_gt_assign_ggtt(struct intel_gt *gt)
>  {
> -	gt->ggtt = drmm_kzalloc(&gt->i915->drm, sizeof(*gt->ggtt), GFP_KERNEL);
> +	/* Media GT shares primary GT's GGTT */
> +	if (gt->type == GT_MEDIA) {
> +		gt->ggtt = to_gt(gt->i915)->ggtt;
> +	} else {
> +		gt->ggtt = i915_ggtt_create(gt->i915);
> +		if (IS_ERR(gt->ggtt))
> +			return PTR_ERR(gt->ggtt);
> +	}
>  
> -	return gt->ggtt ? 0 : -ENOMEM;
> +	list_add_tail(&gt->ggtt_link, &gt->ggtt->gt_list);
> +
> +	return 0;
>  }
>  
>  int intel_gt_init_mmio(struct intel_gt *gt)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index a0cc73b401ef..40120a138f32 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -275,6 +275,9 @@ struct intel_gt {
>  	struct kobject *sysfs_defaults;
>  
>  	struct i915_perf_gt perf;
> +
> +	/** link: &ggtt.gt_list */
> +	struct list_head ggtt_link;
>  };
>  
>  struct intel_gt_definition {
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 4d75ba4bb41d..d1900fec6cd1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -390,6 +390,9 @@ struct i915_ggtt {
>  	struct mutex error_mutex;
>  	struct drm_mm_node error_capture;
>  	struct drm_mm_node uc_fw;
> +
> +	/** List of GTs mapping this GGTT */
> +	struct list_head gt_list;
>  };
>  
>  struct i915_ppgtt {
> @@ -584,6 +587,7 @@ void i915_ggtt_disable_guc(struct i915_ggtt *ggtt);
>  int i915_init_ggtt(struct drm_i915_private *i915);
>  void i915_ggtt_driver_release(struct drm_i915_private *i915);
>  void i915_ggtt_driver_late_release(struct drm_i915_private *i915);
> +struct i915_ggtt *i915_ggtt_create(struct drm_i915_private *i915);
>  
>  static inline bool i915_ggtt_has_aperture(const struct i915_ggtt *ggtt)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index c3d43f9b1e45..0c01110f1630 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -577,7 +577,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  {
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	struct pci_dev *root_pdev;
> -	int ret;
> +	struct intel_gt *gt;
> +	int ret, i;
>  
>  	if (i915_inject_probe_failure(dev_priv))
>  		return -ENODEV;
> @@ -614,9 +615,14 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  
>  	i915_perf_init(dev_priv);
>  
> -	ret = intel_gt_assign_ggtt(to_gt(dev_priv));
> -	if (ret)
> -		goto err_perf;
> +	for_each_gt(gt, dev_priv, i) {
> +		ret = intel_gt_assign_ggtt(gt);
> +		if (ret)
> +			goto err_perf;
> +
> +		if (GRAPHICS_VER(dev_priv) >= 8)
> +			setup_private_pat(gt);
> +	}

Drive-by note, I think the for_each_gt() loops don't belong in
i915_driver.c. This is higher level code than that.

BR,
Jani.

>  
>  	ret = i915_ggtt_probe_hw(dev_priv);
>  	if (ret)
> @@ -1318,7 +1324,8 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
>  static int i915_drm_resume(struct drm_device *dev)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> -	int ret;
> +	struct intel_gt *gt;
> +	int ret, i;
>  
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
> @@ -1333,6 +1340,11 @@ static int i915_drm_resume(struct drm_device *dev)
>  		drm_err(&dev_priv->drm, "failed to re-enable GGTT\n");
>  
>  	i915_ggtt_resume(to_gt(dev_priv)->ggtt);
> +
> +	for_each_gt(gt, dev_priv, i)
> +		if (GRAPHICS_VER(gt->i915) >= 8)
> +			setup_private_pat(gt);
> +
>  	/* Must be called after GGTT is resumed. */
>  	intel_dpt_resume(dev_priv);
>  
> diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
> index f025ee4fa526..99319ef92f47 100644
> --- a/drivers/gpu/drm/i915/i915_gem_evict.c
> +++ b/drivers/gpu/drm/i915/i915_gem_evict.c
> @@ -43,16 +43,25 @@ static bool dying_vma(struct i915_vma *vma)
>  	return !kref_read(&vma->obj->base.refcount);
>  }
>  
> -static int ggtt_flush(struct intel_gt *gt)
> +static int ggtt_flush(struct i915_address_space *vm)
>  {
> -	/*
> -	 * Not everything in the GGTT is tracked via vma (otherwise we
> -	 * could evict as required with minimal stalling) so we are forced
> -	 * to idle the GPU and explicitly retire outstanding requests in
> -	 * the hopes that we can then remove contexts and the like only
> -	 * bound by their active reference.
> -	 */
> -	return intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> +	struct intel_gt *gt;
> +	int ret = 0;
> +
> +	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
> +		/*
> +		 * Not everything in the GGTT is tracked via vma (otherwise we
> +		 * could evict as required with minimal stalling) so we are forced
> +		 * to idle the GPU and explicitly retire outstanding requests in
> +		 * the hopes that we can then remove contexts and the like only
> +		 * bound by their active reference.
> +		 */
> +		ret = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
> +		if (ret)
> +			return ret;
> +	}
> +	return ret;
>  }
>  
>  static bool grab_vma(struct i915_vma *vma, struct i915_gem_ww_ctx *ww)
> @@ -149,6 +158,7 @@ i915_gem_evict_something(struct i915_address_space *vm,
>  	struct drm_mm_node *node;
>  	enum drm_mm_insert_mode mode;
>  	struct i915_vma *active;
> +	struct intel_gt *gt;
>  	int ret;
>  
>  	lockdep_assert_held(&vm->mutex);
> @@ -174,7 +184,14 @@ i915_gem_evict_something(struct i915_address_space *vm,
>  				    min_size, alignment, color,
>  				    start, end, mode);
>  
> -	intel_gt_retire_requests(vm->gt);
> +	if (i915_is_ggtt(vm)) {
> +		struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> +
> +		list_for_each_entry_rcu(gt, &ggtt->gt_list, ggtt_link)
> +			intel_gt_retire_requests(gt);
> +	} else {
> +		intel_gt_retire_requests(vm->gt);
> +	}
>  
>  search_again:
>  	active = NULL;
> @@ -246,7 +263,7 @@ i915_gem_evict_something(struct i915_address_space *vm,
>  	if (I915_SELFTEST_ONLY(igt_evict_ctl.fail_if_busy))
>  		return -EBUSY;
>  
> -	ret = ggtt_flush(vm->gt);
> +	ret = ggtt_flush(vm);
>  	if (ret)
>  		return ret;
>  
> @@ -332,7 +349,15 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
>  	 * a stray pin (preventing eviction) that can only be resolved by
>  	 * retiring.
>  	 */
> -	intel_gt_retire_requests(vm->gt);
> +	if (i915_is_ggtt(vm)) {
> +		struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> +		struct intel_gt *gt;
> +
> +		list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
> +			intel_gt_retire_requests(gt);
> +	} else {
> +		intel_gt_retire_requests(vm->gt);
> +	}
>  
>  	if (i915_vm_has_cache_coloring(vm)) {
>  		/* Expand search to cover neighbouring guard pages (or lack!) */
> @@ -438,7 +463,7 @@ int i915_gem_evict_vm(struct i915_address_space *vm, struct i915_gem_ww_ctx *ww)
>  	 * switch otherwise is ineffective.
>  	 */
>  	if (i915_is_ggtt(vm)) {
> -		ret = ggtt_flush(vm->gt);
> +		ret = ggtt_flush(vm);
>  		if (ret)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index c39488eb9eeb..24cbee3c1ce5 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1542,6 +1542,8 @@ static int __i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>  			   u32 align, unsigned int flags)
>  {
>  	struct i915_address_space *vm = vma->vm;
> +	struct intel_gt *gt;
> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>  	int err;
>  
>  	do {
> @@ -1557,7 +1559,8 @@ static int __i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>  		}
>  
>  		/* Unlike i915_vma_pin, we don't take no for an answer! */
> -		flush_idle_contexts(vm->gt);
> +		list_for_each_entry_rcu(gt, &ggtt->gt_list, ggtt_link)
> +			flush_idle_contexts(gt);
>  		if (mutex_lock_interruptible(&vm->mutex) == 0) {
>  			/*
>  			 * We pass NULL ww here, as we don't want to unbind
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
> index e5dd82e7e480..2535b9684bd1 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
> @@ -127,6 +127,8 @@ static void igt_pm_resume(struct drm_i915_private *i915)
>  	 */
>  	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
>  		i915_ggtt_resume(to_gt(i915)->ggtt);
> +		if (GRAPHICS_VER(i915) >= 8)
> +			setup_private_pat(to_gt(i915));
>  		i915_gem_resume(i915);
>  	}
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
