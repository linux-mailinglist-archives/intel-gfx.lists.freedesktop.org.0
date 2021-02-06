Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3DC311D2E
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 13:49:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 129BF6E428;
	Sat,  6 Feb 2021 12:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB5A6E428
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 12:49:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23807615-1500050 for multiple; Sat, 06 Feb 2021 12:49:09 +0000
MIME-Version: 1.0
In-Reply-To: <20210206020925.36729-5-daniele.ceraolospurio@intel.com>
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
 <20210206020925.36729-5-daniele.ceraolospurio@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Sat, 06 Feb 2021 12:49:08 +0000
Message-ID: <161261574883.12021.14204541939246584332@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC 04/14] drm/i915/pxp: allocate a vcs context
 for pxp usage
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

Quoting Daniele Ceraolo Spurio (2021-02-06 02:09:15)
> The context is required to send the session termination commands to the
> VCS, which will be implemented in a follow-up patch. We can also use the
> presence of the context as a check of pxp initialization completion.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile              |  4 ++
>  drivers/gpu/drm/i915/gt/intel_gt.c         |  5 ++
>  drivers/gpu/drm/i915/gt/intel_gt_types.h   |  3 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp.c       | 61 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h       | 35 +++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h | 15 ++++++
>  6 files changed, 123 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index ce01634d4ea7..e2677e8c03e8 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -268,6 +268,10 @@ i915-y += \
>  
>  i915-y += i915_perf.o
>  
> +# Protected execution platform (PXP) support
> +i915-$(CONFIG_DRM_I915_PXP) += \
> +       pxp/intel_pxp.o
> +
>  # Post-mortem debug and GPU hang state capture
>  i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
>  i915-$(CONFIG_DRM_I915_SELFTEST) += \
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index ca76f93bc03d..daf61db620d6 100644
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
> @@ -624,6 +625,8 @@ int intel_gt_init(struct intel_gt *gt)
>         if (err)
>                 goto err_gt;
>  
> +       intel_pxp_init(&gt->pxp);
> +
>         goto out_fw;
>  err_gt:
>         __intel_gt_disable(gt);
> @@ -658,6 +661,8 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
>  
>         intel_rps_driver_unregister(&gt->rps);
>  
> +       intel_pxp_fini(&gt->pxp);
> +
>         /*
>          * Upon unregistering the device to prevent any new users, cancel
>          * all in-flight requests so that we can quickly unbind the active
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 626af37c7790..324d267eee15 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -23,6 +23,7 @@
>  #include "intel_rc6_types.h"
>  #include "intel_rps_types.h"
>  #include "intel_wakeref.h"
> +#include "pxp/intel_pxp_types.h"
>  
>  struct drm_i915_private;
>  struct i915_ggtt;
> @@ -145,6 +146,8 @@ struct intel_gt {
>                 /* Slice/subslice/EU info */
>                 struct sseu_dev_info sseu;
>         } info;
> +
> +       struct intel_pxp pxp;
>  };
>  
>  enum intel_gt_scratch_field {
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> new file mode 100644
> index 000000000000..4ddc8a71a3e7
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -0,0 +1,61 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +#include "intel_pxp.h"
> +#include "gt/intel_context.h"
> +#include "i915_drv.h"
> +
> +static int create_vcs_context(struct intel_pxp *pxp)
> +{
> +       struct intel_gt *gt = pxp_to_gt(pxp);
> +       struct intel_context *ce = NULL;
> +       int i;
> +
> +       /*
> +        * Find the first VCS engine present. We're guaranteed there is one
> +        * if we're in this function due to the check in has_pxp
> +        */
> +       for (i = 0; i < I915_MAX_VCS && !ce; i++)
> +               if (HAS_ENGINE(gt, _VCS(i)))
> +                       ce = intel_context_create(gt->engine[_VCS(i)]);

Just wondering if

struct intel_engine_cs **vcs_engines = gt->engine_class[CLASS_VIDEO_DECODE];

for (i = 0; i < ARRAY_SIZE(gt->engine_class[CLASS_VIDEO_DECODE]); i++) {
	if (!vcs_engines[i])
		continue;

	ce = intel_context_create(vcs_engines[i]);
	break;
}

is a better iterator as it only checks one place of truth about whether
or not the engine exists.

for_each_engine_class(engine, gt, class, i)

A couple of places could use that.

> +       if (IS_ERR(ce)) {
> +               drm_err(&gt->i915->drm, "failed to create VCS ctx for PXP\n");
> +               return PTR_ERR(ce);

Is the lack of this feature enough to prevent module loading? Surely
userspace will notice and report the lack of the feature?

> +       }
> +
> +       pxp->ce = ce;

Is protected context then implicitly tried to one engine? i.e.
userspace has to use the same engine as we control invalidation?
Otherwise, everytime we use pxp->ce we must impose barriers across all
gt->vcs.

> +
> +       return 0;
> +}
> +
> +static void destroy_vcs_context(struct intel_pxp *pxp)
> +{
> +       intel_context_put(fetch_and_zero(&pxp->ce));
> +}
> +
> +void intel_pxp_init(struct intel_pxp *pxp)
> +{
> +       struct intel_gt *gt = pxp_to_gt(pxp);
> +       int ret;
> +
> +       if (!HAS_PXP(gt->i915))
> +               return;
> +
> +       ret = create_vcs_context(pxp);
> +       if (ret)
> +               return;
> +
> +       drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
> +
> +       return;
> +}
> +
> +void intel_pxp_fini(struct intel_pxp *pxp)
> +{
> +       if (!intel_pxp_is_enabled(pxp))
> +               return;
> +
> +       destroy_vcs_context(pxp);
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> new file mode 100644
> index 000000000000..e2acd06402cd
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
> +static inline struct intel_gt *pxp_to_gt(struct intel_pxp *pxp)
> +{
> +       return container_of(pxp, struct intel_gt, pxp);
> +}
> +
> +static inline bool intel_pxp_is_enabled(struct intel_pxp *pxp)

const struct intel_pxp *pxp
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
