Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 402AD46F7BB
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 00:55:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E414610E149;
	Thu,  9 Dec 2021 23:55:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C7D610E13C;
 Thu,  9 Dec 2021 23:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639094151; x=1670630151;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gh5eF15iO+Qa0ndpNz1JP68+2/bzYveCtyRtosqol+8=;
 b=CNBmHBvqmZxxv5wagNSnepaZxwNK2LVbrZDQIrNfwcsA/RCNnqR3vap9
 WNdI4R6biX7XLvPnPb+n7ebw0rkpphQqMaSh2/x1laeDPYX9tooaI3CQ/
 b2ZYMwFQDVvGTotO/ffUICJTJ2x4MVFzDgDfhMzDkkRUcBHSJfSSzEwTi
 8xpwYkCPg71yzJ/wYhap3MRICkQxrmEa+OwegwkllmbcBr2P3CqI2i3ao
 oNsh3kM/IvGsMmpAfHaNvie9KBkXZYDXupGa61XQeNSXtQgLLRoDwWfnR
 88bGUnIH0WzVEgWgsg1kUHQbKZUKz0jo23pqbnQ479O4PNQj8JXQuVT5/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="301614317"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="301614317"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 15:55:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="680540415"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 15:55:50 -0800
Date: Thu, 9 Dec 2021 15:55:49 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <20211209235549.GU2219399@mdroper-desk1.amr.corp.intel.com>
References: <20211209132512.47241-1-andi.shyti@linux.intel.com>
 <20211209132512.47241-8-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211209132512.47241-8-andi.shyti@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 07/11] drm/i915/selftests: Use to_gt()
 helper
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
Cc: =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 09, 2021 at 03:25:08PM +0200, Andi Shyti wrote:
> Use to_gt() helper consistently throughout the codebase.
> Pure mechanical s/i915->gt/to_gt(i915). No functional changes.
> 
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Michał Winiarski <michal.winiarski@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/selftests/i915_active.c  |  2 +-
>  drivers/gpu/drm/i915/selftests/i915_gem.c     |  2 +-
>  .../gpu/drm/i915/selftests/i915_gem_evict.c   |  6 ++--
>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  4 +--
>  drivers/gpu/drm/i915/selftests/i915_perf.c    |  2 +-
>  drivers/gpu/drm/i915/selftests/i915_request.c | 10 +++----
>  .../gpu/drm/i915/selftests/i915_selftest.c    |  4 +--
>  .../gpu/drm/i915/selftests/igt_flush_test.c   |  2 +-
>  .../gpu/drm/i915/selftests/igt_live_test.c    |  4 +--
>  .../drm/i915/selftests/intel_memory_region.c  |  4 +--
>  drivers/gpu/drm/i915/selftests/intel_uncore.c |  2 +-
>  .../gpu/drm/i915/selftests/mock_gem_device.c  | 30 +++++++++----------
>  drivers/gpu/drm/i915/selftests/mock_gtt.c     |  6 ++--
>  drivers/gpu/drm/i915/selftests/mock_uncore.c  |  2 +-
>  14 files changed, 40 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
> index 61bf4560d8af..2dac9be1de58 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_active.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_active.c
> @@ -254,7 +254,7 @@ int i915_active_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(live_active_barrier),
>  	};
>  
> -	if (intel_gt_is_wedged(&i915->gt))
> +	if (intel_gt_is_wedged(to_gt(i915)))
>  		return 0;
>  
>  	return i915_subtests(tests, i915);
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
> index 152d9ab135b1..b5576888cd78 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
> @@ -248,7 +248,7 @@ int i915_gem_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(igt_gem_ww_ctx),
>  	};
>  
> -	if (intel_gt_is_wedged(&i915->gt))
> +	if (intel_gt_is_wedged(to_gt(i915)))
>  		return 0;
>  
>  	return i915_live_subtests(tests, i915);
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> index 7e0658a77659..75b709c26dd3 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
> @@ -545,7 +545,7 @@ int i915_gem_evict_mock_selftests(void)
>  		return -ENOMEM;
>  
>  	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> -		err = i915_subtests(tests, &i915->gt);
> +		err = i915_subtests(tests, to_gt(i915));
>  
>  	mock_destroy_device(i915);
>  	return err;
> @@ -557,8 +557,8 @@ int i915_gem_evict_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(igt_evict_contexts),
>  	};
>  
> -	if (intel_gt_is_wedged(&i915->gt))
> +	if (intel_gt_is_wedged(to_gt(i915)))
>  		return 0;
>  
> -	return intel_gt_live_subtests(tests, &i915->gt);
> +	return intel_gt_live_subtests(tests, to_gt(i915));
>  }
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index 46f4236039a9..48123c3e1ff0 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -155,7 +155,7 @@ static int igt_ppgtt_alloc(void *arg)
>  	if (!HAS_PPGTT(dev_priv))
>  		return 0;
>  
> -	ppgtt = i915_ppgtt_create(&dev_priv->gt, 0);
> +	ppgtt = i915_ppgtt_create(to_gt(dev_priv), 0);
>  	if (IS_ERR(ppgtt))
>  		return PTR_ERR(ppgtt);
>  
> @@ -1053,7 +1053,7 @@ static int exercise_ppgtt(struct drm_i915_private *dev_priv,
>  	if (IS_ERR(file))
>  		return PTR_ERR(file);
>  
> -	ppgtt = i915_ppgtt_create(&dev_priv->gt, 0);
> +	ppgtt = i915_ppgtt_create(to_gt(dev_priv), 0);
>  	if (IS_ERR(ppgtt)) {
>  		err = PTR_ERR(ppgtt);
>  		goto out_free;
> diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
> index 9e9a6cb1d9e5..88db2e3d81d0 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_perf.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
> @@ -424,7 +424,7 @@ int i915_perf_live_selftests(struct drm_i915_private *i915)
>  	if (!perf->metrics_kobj || !perf->ops.enable_metric_set)
>  		return 0;
>  
> -	if (intel_gt_is_wedged(&i915->gt))
> +	if (intel_gt_is_wedged(to_gt(i915)))
>  		return 0;
>  
>  	err = alloc_empty_config(&i915->perf);
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index 9979ef9197cd..92a859b34190 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -841,7 +841,7 @@ static struct i915_vma *empty_batch(struct drm_i915_private *i915)
>  	__i915_gem_object_flush_map(obj, 0, 64);
>  	i915_gem_object_unpin_map(obj);
>  
> -	intel_gt_chipset_flush(&i915->gt);
> +	intel_gt_chipset_flush(to_gt(i915));
>  
>  	vma = i915_vma_instance(obj, &i915->ggtt.vm, NULL);
>  	if (IS_ERR(vma)) {
> @@ -982,7 +982,7 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
>  	if (IS_ERR(obj))
>  		return ERR_CAST(obj);
>  
> -	vma = i915_vma_instance(obj, i915->gt.vm, NULL);
> +	vma = i915_vma_instance(obj, to_gt(i915)->vm, NULL);
>  	if (IS_ERR(vma)) {
>  		err = PTR_ERR(vma);
>  		goto err;
> @@ -1014,7 +1014,7 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
>  	__i915_gem_object_flush_map(obj, 0, 64);
>  	i915_gem_object_unpin_map(obj);
>  
> -	intel_gt_chipset_flush(&i915->gt);
> +	intel_gt_chipset_flush(to_gt(i915));
>  
>  	return vma;
>  
> @@ -1700,7 +1700,7 @@ int i915_request_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(live_breadcrumbs_smoketest),
>  	};
>  
> -	if (intel_gt_is_wedged(&i915->gt))
> +	if (intel_gt_is_wedged(to_gt(i915)))
>  		return 0;
>  
>  	return i915_subtests(tests, i915);
> @@ -3091,7 +3091,7 @@ int i915_request_perf_selftests(struct drm_i915_private *i915)
>  		SUBTEST(perf_parallel_engines),
>  	};
>  
> -	if (intel_gt_is_wedged(&i915->gt))
> +	if (intel_gt_is_wedged(to_gt(i915)))
>  		return 0;
>  
>  	return i915_subtests(tests, i915);
> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> index 484759c9409c..2d6d7bd13c3c 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> @@ -298,10 +298,10 @@ int __i915_live_setup(void *data)
>  	struct drm_i915_private *i915 = data;
>  
>  	/* The selftests expect an idle system */
> -	if (intel_gt_pm_wait_for_idle(&i915->gt))
> +	if (intel_gt_pm_wait_for_idle(to_gt(i915)))
>  		return -EIO;
>  
> -	return intel_gt_terminally_wedged(&i915->gt);
> +	return intel_gt_terminally_wedged(to_gt(i915));
>  }
>  
>  int __i915_live_teardown(int err, void *data)
> diff --git a/drivers/gpu/drm/i915/selftests/igt_flush_test.c b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
> index a6c71fca61aa..b84594601d30 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_flush_test.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
> @@ -14,7 +14,7 @@
>  
>  int igt_flush_test(struct drm_i915_private *i915)
>  {
> -	struct intel_gt *gt = &i915->gt;
> +	struct intel_gt *gt = to_gt(i915);
>  	int ret = intel_gt_is_wedged(gt) ? -EIO : 0;
>  
>  	cond_resched();
> diff --git a/drivers/gpu/drm/i915/selftests/igt_live_test.c b/drivers/gpu/drm/i915/selftests/igt_live_test.c
> index 1c721542e277..72b58b66692a 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_live_test.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_live_test.c
> @@ -16,7 +16,7 @@ int igt_live_test_begin(struct igt_live_test *t,
>  			const char *func,
>  			const char *name)
>  {
> -	struct intel_gt *gt = &i915->gt;
> +	struct intel_gt *gt = to_gt(i915);
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
>  	int err;
> @@ -57,7 +57,7 @@ int igt_live_test_end(struct igt_live_test *t)
>  		return -EIO;
>  	}
>  
> -	for_each_engine(engine, &i915->gt, id) {
> +	for_each_engine(engine, to_gt(i915), id) {
>  		if (t->reset_engine[id] ==
>  		    i915_reset_engine_count(&i915->gpu_error, engine))
>  			continue;
> diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> index 0d5df0dc7212..8255561ff853 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> @@ -1217,7 +1217,7 @@ int intel_memory_region_live_selftests(struct drm_i915_private *i915)
>  		return 0;
>  	}
>  
> -	if (intel_gt_is_wedged(&i915->gt))
> +	if (intel_gt_is_wedged(to_gt(i915)))
>  		return 0;
>  
>  	return i915_live_subtests(tests, i915);
> @@ -1229,7 +1229,7 @@ int intel_memory_region_perf_selftests(struct drm_i915_private *i915)
>  		SUBTEST(perf_memcpy),
>  	};
>  
> -	if (intel_gt_is_wedged(&i915->gt))
> +	if (intel_gt_is_wedged(to_gt(i915)))
>  		return 0;
>  
>  	return i915_live_subtests(tests, i915);
> diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> index bc8128170a99..cdd196783535 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> @@ -344,5 +344,5 @@ int intel_uncore_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(live_forcewake_domains),
>  	};
>  
> -	return intel_gt_live_subtests(tests, &i915->gt);
> +	return intel_gt_live_subtests(tests, to_gt(i915));
>  }
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index eeb632aac4a7..8aa7b1d33865 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -45,7 +45,7 @@
>  
>  void mock_device_flush(struct drm_i915_private *i915)
>  {
> -	struct intel_gt *gt = &i915->gt;
> +	struct intel_gt *gt = to_gt(i915);
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
>  
> @@ -64,7 +64,7 @@ static void mock_device_release(struct drm_device *dev)
>  		goto out;
>  
>  	mock_device_flush(i915);
> -	intel_gt_driver_remove(&i915->gt);
> +	intel_gt_driver_remove(to_gt(i915));
>  
>  	i915_gem_drain_workqueue(i915);
>  	i915_gem_drain_freed_objects(i915);
> @@ -73,7 +73,7 @@ static void mock_device_release(struct drm_device *dev)
>  	destroy_workqueue(i915->wq);
>  
>  	intel_region_ttm_device_fini(i915);
> -	intel_gt_driver_late_release(&i915->gt);
> +	intel_gt_driver_late_release(to_gt(i915));
>  	intel_memory_regions_driver_release(i915);
>  
>  	drm_mode_config_cleanup(&i915->drm);
> @@ -178,11 +178,11 @@ struct drm_i915_private *mock_gem_device(void)
>  	spin_lock_init(&i915->gpu_error.lock);
>  
>  	i915_gem_init__mm(i915);
> -	intel_gt_init_early(&i915->gt, i915);
> -	__intel_gt_init_early(&i915->gt, i915);
> +	intel_gt_init_early(to_gt(i915), i915);
> +	__intel_gt_init_early(to_gt(i915), i915);
>  	mock_uncore_init(&i915->uncore, i915);
> -	atomic_inc(&i915->gt.wakeref.count); /* disable; no hw support */
> -	i915->gt.awake = -ENODEV;
> +	atomic_inc(&to_gt(i915)->wakeref.count); /* disable; no hw support */
> +	to_gt(i915)->awake = -ENODEV;
>  
>  	ret = intel_region_ttm_device_init(i915);
>  	if (ret)
> @@ -195,19 +195,19 @@ struct drm_i915_private *mock_gem_device(void)
>  	mock_init_contexts(i915);
>  
>  	mock_init_ggtt(i915, &i915->ggtt);
> -	i915->gt.vm = i915_vm_get(&i915->ggtt.vm);
> +	to_gt(i915)->vm = i915_vm_get(&i915->ggtt.vm);
>  
>  	mkwrite_device_info(i915)->platform_engine_mask = BIT(0);
> -	i915->gt.info.engine_mask = BIT(0);
> +	to_gt(i915)->info.engine_mask = BIT(0);
>  
> -	i915->gt.engine[RCS0] = mock_engine(i915, "mock", RCS0);
> -	if (!i915->gt.engine[RCS0])
> +	to_gt(i915)->engine[RCS0] = mock_engine(i915, "mock", RCS0);
> +	if (!to_gt(i915)->engine[RCS0])
>  		goto err_unlock;
>  
> -	if (mock_engine_init(i915->gt.engine[RCS0]))
> +	if (mock_engine_init(to_gt(i915)->engine[RCS0]))
>  		goto err_context;
>  
> -	__clear_bit(I915_WEDGED, &i915->gt.reset.flags);
> +	__clear_bit(I915_WEDGED, &to_gt(i915)->reset.flags);
>  	intel_engines_driver_register(i915);
>  
>  	i915->do_release = true;
> @@ -216,13 +216,13 @@ struct drm_i915_private *mock_gem_device(void)
>  	return i915;
>  
>  err_context:
> -	intel_gt_driver_remove(&i915->gt);
> +	intel_gt_driver_remove(to_gt(i915));
>  err_unlock:
>  	destroy_workqueue(i915->wq);
>  err_drv:
>  	intel_region_ttm_device_fini(i915);
>  err_ttm:
> -	intel_gt_driver_late_release(&i915->gt);
> +	intel_gt_driver_late_release(to_gt(i915));
>  	intel_memory_regions_driver_release(i915);
>  	drm_mode_config_cleanup(&i915->drm);
>  	mock_destroy_device(i915);
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
> index cc047ec594f9..f0b87de0aca3 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
> @@ -70,7 +70,7 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
>  	if (!ppgtt)
>  		return NULL;
>  
> -	ppgtt->vm.gt = &i915->gt;
> +	ppgtt->vm.gt = to_gt(i915);
>  	ppgtt->vm.i915 = i915;
>  	ppgtt->vm.total = round_down(U64_MAX, PAGE_SIZE);
>  	ppgtt->vm.dma = i915->drm.dev;
> @@ -109,7 +109,7 @@ void mock_init_ggtt(struct drm_i915_private *i915, struct i915_ggtt *ggtt)
>  {
>  	memset(ggtt, 0, sizeof(*ggtt));
>  
> -	ggtt->vm.gt = &i915->gt;
> +	ggtt->vm.gt = to_gt(i915);
>  	ggtt->vm.i915 = i915;
>  	ggtt->vm.is_ggtt = true;
>  
> @@ -130,7 +130,7 @@ void mock_init_ggtt(struct drm_i915_private *i915, struct i915_ggtt *ggtt)
>  	ggtt->vm.vma_ops.clear_pages = clear_pages;
>  
>  	i915_address_space_init(&ggtt->vm, VM_CLASS_GGTT);
> -	i915->gt.ggtt = ggtt;
> +	to_gt(i915)->ggtt = ggtt;
>  }
>  
>  void mock_fini_ggtt(struct i915_ggtt *ggtt)
> diff --git a/drivers/gpu/drm/i915/selftests/mock_uncore.c b/drivers/gpu/drm/i915/selftests/mock_uncore.c
> index b3790ef137e4..f2d6be5e1230 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_uncore.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_uncore.c
> @@ -42,7 +42,7 @@ __nop_read(64)
>  void mock_uncore_init(struct intel_uncore *uncore,
>  		      struct drm_i915_private *i915)
>  {
> -	intel_uncore_init_early(uncore, &i915->gt);
> +	intel_uncore_init_early(uncore, to_gt(i915));
>  
>  	ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, nop);
>  	ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, nop);
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
