Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0C1358F6D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 23:47:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA7ED6E3F0;
	Thu,  8 Apr 2021 21:47:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 074326E3F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 21:47:02 +0000 (UTC)
IronPort-SDR: Ab4XC/k3zG4nBKCB1Zxh1EblqaLr3TqhXrsZo7mXK+MssCookiiiE2mQffTDToOMWQbjoaZEX4
 ZZ9xnHeItQDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="254972936"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="254972936"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:47:02 -0700
IronPort-SDR: K2gzd8dJKKntFk3bICjV76Lk1KnkN8XtemQyvDElfjrQzcJhNHwJdfh8WUlzDkYDGoe6b0ioZp
 tlww9OA/Ic7Q==
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="415965727"
Received: from kmkerns-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.209.131.159])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:47:01 -0700
Date: Thu, 8 Apr 2021 17:47:00 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <YG951J5llFxZ+BXQ@intel.com>
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
 <20210328225709.18541-5-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210328225709.18541-5-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 04/16] drm/i915/pxp: allocate a vcs
 context for pxp usage
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Mar 28, 2021 at 03:56:56PM -0700, Daniele Ceraolo Spurio wrote:
> The context is required to send the session termination commands to the
> VCS, which will be implemented in a follow-up patch. We can also use the
> presence of the context as a check of pxp initialization completion.
> 
> v2: use perma-pinned context (Chris)

this makes sense...

> v3: rename pinned_context functions (Chris)

this is a good idea...

> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/Makefile              |  4 ++
>  drivers/gpu/drm/i915/gt/intel_engine.h     | 12 +++++
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c  | 32 +++++++----
>  drivers/gpu/drm/i915/gt/intel_gt.c         |  5 ++
>  drivers/gpu/drm/i915/gt/intel_gt_types.h   |  3 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp.c       | 62 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h       | 35 ++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h | 15 ++++++
>  8 files changed, 159 insertions(+), 9 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 14f1ab399ad0..a797c6e5830c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -270,6 +270,10 @@ i915-y += \
>  
>  i915-y += i915_perf.o
>  
> +# Protected execution platform (PXP) support
> +i915-$(CONFIG_DRM_I915_PXP) += \
> +	pxp/intel_pxp.o
> +
>  # Post-mortem debug and GPU hang state capture
>  i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
>  i915-$(CONFIG_DRM_I915_SELFTEST) += \
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 47ee8578e511..ff53cdb847f2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -19,6 +19,7 @@
>  
>  struct drm_printer;
>  struct intel_gt;
> +struct lock_class_key;
>  
>  /* Early gen2 devices have a cacheline of just 32 bytes, using 64 is overkill,
>   * but keeps the logic simple. Indeed, the whole purpose of this macro is just
> @@ -185,6 +186,8 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
>  #define I915_GEM_HWS_PREEMPT_ADDR	(I915_GEM_HWS_PREEMPT * sizeof(u32))
>  #define I915_GEM_HWS_SEQNO		0x40
>  #define I915_GEM_HWS_SEQNO_ADDR		(I915_GEM_HWS_SEQNO * sizeof(u32))
> +#define I915_GEM_HWS_PXP		0x60
> +#define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP * sizeof(u32))
>  #define I915_GEM_HWS_SCRATCH		0x80
>  
>  #define I915_HWS_CSB_BUF0_INDEX		0x10
> @@ -256,6 +259,15 @@ intel_engine_find_active_request(struct intel_engine_cs *engine);
>  
>  u32 intel_engine_context_size(struct intel_gt *gt, u8 class);
>  
> +struct intel_context *
> +intel_engine_create_pinned_context(struct intel_engine_cs *engine,
> +				   unsigned int hwsp,
> +				   u64 ring_size,
> +				   struct i915_address_space *vm,
> +				   struct lock_class_key *key,
> +				   const char *name);
> +void intel_engine_destroy_pinned_context(struct intel_context *ce);
> +
>  void intel_engine_init_active(struct intel_engine_cs *engine,
>  			      unsigned int subclass);
>  #define ENGINE_PHYSICAL	0
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index efe935f80c1a..a8e7468b9261 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -801,11 +801,13 @@ intel_engine_init_active(struct intel_engine_cs *engine, unsigned int subclass)
>  #endif
>  }
>  
> -static struct intel_context *
> -create_pinned_context(struct intel_engine_cs *engine,
> -		      unsigned int hwsp,
> -		      struct lock_class_key *key,
> -		      const char *name)
> +struct intel_context *
> +intel_engine_create_pinned_context(struct intel_engine_cs *engine,
> +				   unsigned int hwsp,
> +				   u64 ring_size,
> +				   struct i915_address_space *vm,
> +				   struct lock_class_key *key,
> +				   const char *name)
>  {
>  	struct intel_context *ce;
>  	int err;
> @@ -817,6 +819,14 @@ create_pinned_context(struct intel_engine_cs *engine,
>  	__set_bit(CONTEXT_BARRIER_BIT, &ce->flags);
>  	ce->timeline = page_pack_bits(NULL, hwsp);
>  
> +	if (ring_size)
> +		ce->ring = __intel_context_ring_size(ring_size);

... but I'm afraid I couldn't understand why you are doing this...

> +
> +	if (vm) {
> +		i915_vm_put(ce->vm);
> +		ce->vm = i915_vm_get(vm);
> +	}

nor this...

So I believe that a separated patch for this and the rename is more appropriated...

> +
>  	err = intel_context_pin(ce); /* perma-pin so it is always available */
>  	if (err) {
>  		intel_context_put(ce);
> @@ -834,7 +844,7 @@ create_pinned_context(struct intel_engine_cs *engine,
>  	return ce;
>  }
>  
> -static void destroy_pinned_context(struct intel_context *ce)
> +void intel_engine_destroy_pinned_context(struct intel_context *ce)
>  {
>  	struct intel_engine_cs *engine = ce->engine;
>  	struct i915_vma *hwsp = engine->status_page.vma;
> @@ -854,8 +864,12 @@ create_kernel_context(struct intel_engine_cs *engine)
>  {
>  	static struct lock_class_key kernel;
>  
> -	return create_pinned_context(engine, I915_GEM_HWS_SEQNO_ADDR,
> -				     &kernel, "kernel_context");
> +	return intel_engine_create_pinned_context(engine,
> +						  I915_GEM_HWS_SEQNO_ADDR,
> +						  SZ_4K,
> +						  NULL,
> +						  &kernel,
> +						  "kernel_context");
>  }
>  
>  /**
> @@ -956,7 +970,7 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
>  		fput(engine->default_state);
>  
>  	if (engine->kernel_context)
> -		destroy_pinned_context(engine->kernel_context);
> +		intel_engine_destroy_pinned_context(engine->kernel_context);
>  
>  	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
>  	cleanup_status_page(engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 8d77dcbad059..68f42fabc151 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -20,6 +20,7 @@
>  #include "intel_uncore.h"
>  #include "intel_pm.h"
>  #include "shmem_utils.h"
> +#include "pxp/intel_pxp.h"
>  
>  void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
>  {
> @@ -627,6 +628,8 @@ int intel_gt_init(struct intel_gt *gt)
>  	if (err)
>  		goto err_gt;
>  
> +	intel_pxp_init(&gt->pxp);
> +
>  	goto out_fw;
>  err_gt:
>  	__intel_gt_disable(gt);
> @@ -661,6 +664,8 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
>  
>  	intel_rps_driver_unregister(&gt->rps);
>  
> +	intel_pxp_fini(&gt->pxp);
> +
>  	/*
>  	 * Upon unregistering the device to prevent any new users, cancel
>  	 * all in-flight requests so that we can quickly unbind the active
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 0caf6ca0a784..53f44fd4a974 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -25,6 +25,7 @@
>  #include "intel_rc6_types.h"
>  #include "intel_rps_types.h"
>  #include "intel_wakeref.h"
> +#include "pxp/intel_pxp_types.h"
>  
>  struct drm_i915_private;
>  struct i915_ggtt;
> @@ -148,6 +149,8 @@ struct intel_gt {
>  		/* Slice/subslice/EU info */
>  		struct sseu_dev_info sseu;
>  	} info;
> +
> +	struct intel_pxp pxp;
>  };
>  
>  enum intel_gt_scratch_field {
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> new file mode 100644
> index 000000000000..7a4258c8f6a1
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -0,0 +1,62 @@
> +// SPDX-License-Identifier: MIT

oh! this reminded me that on the first patch we need to change to use //
instead of /**/

> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +#include "intel_pxp.h"
> +#include "gt/intel_context.h"
> +#include "i915_drv.h"
> +
> +static int create_vcs_context(struct intel_pxp *pxp)
> +{
> +	static struct lock_class_key pxp_lock;
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_engine_cs *engine;
> +	struct intel_context *ce;
> +
> +	/*
> +	 * Find the first VCS engine present. We're guaranteed there is one
> +	 * if we're in this function due to the check in has_pxp
> +	 */
> +	for (engine = gt->engine_class[VIDEO_DECODE_CLASS][0]; !engine; engine++);
> +	GEM_BUG_ON(!engine || engine->class != VIDEO_DECODE_CLASS);
> +
> +	ce = intel_engine_create_pinned_context(engine, I915_GEM_HWS_PXP_ADDR,
> +						SZ_4K, NULL, &pxp_lock,
> +						"pxp_context");
> +	if (IS_ERR(ce)) {
> +		drm_err(&gt->i915->drm, "failed to create VCS ctx for PXP\n");
> +		return PTR_ERR(ce);
> +	}
> +
> +	pxp->ce = ce;
> +
> +	return 0;
> +}
> +
> +static void destroy_vcs_context(struct intel_pxp *pxp)
> +{
> +	intel_engine_destroy_pinned_context(fetch_and_zero(&pxp->ce));
> +}
> +
> +void intel_pxp_init(struct intel_pxp *pxp)
> +{
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +	int ret;
> +
> +	if (!HAS_PXP(gt->i915))
> +		return;
> +
> +	ret = create_vcs_context(pxp);
> +	if (ret)
> +		return;
> +
> +	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
> +}
> +
> +void intel_pxp_fini(struct intel_pxp *pxp)
> +{
> +	if (!intel_pxp_is_enabled(pxp))
> +		return;
> +
> +	destroy_vcs_context(pxp);
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> new file mode 100644
> index 000000000000..e87550fb9821
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -0,0 +1,35 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_H__
> +#define __INTEL_PXP_H__
> +
> +#include "gt/intel_gt_types.h"
> +#include "intel_pxp_types.h"
> +
> +static inline struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
> +{
> +	return container_of(pxp, struct intel_gt, pxp);
> +}
> +
> +static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
> +{
> +	return pxp->ce;
> +}
> +
> +#ifdef CONFIG_DRM_I915_PXP
> +void intel_pxp_init(struct intel_pxp *pxp);
> +void intel_pxp_fini(struct intel_pxp *pxp);
> +#else
> +static inline void intel_pxp_init(struct intel_pxp *pxp)
> +{
> +}
> +
> +static inline void intel_pxp_fini(struct intel_pxp *pxp)
> +{
> +}
> +#endif
> +
> +#endif /* __INTEL_PXP_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> new file mode 100644
> index 000000000000..bd12c520e60a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_TYPES_H__
> +#define __INTEL_PXP_TYPES_H__
> +
> +struct intel_context;
> +
> +struct intel_pxp {
> +	struct intel_context *ce;
> +};
> +
> +#endif /* __INTEL_PXP_TYPES_H__ */

everything else looks good to me here...

> -- 
> 2.29.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
