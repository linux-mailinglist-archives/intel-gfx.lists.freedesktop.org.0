Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D952D574F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 10:36:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DBF589CF7;
	Thu, 10 Dec 2020 09:36:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A518489CF7
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 09:36:49 +0000 (UTC)
IronPort-SDR: 3yeEgRTEzLcJXfeiiRe7IiJBTutQwZoHrTgtJOWN2RH73he62KRSSEin6/YZr+GdweQ8196MW9
 zO3fnNQrRoxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="258942729"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="258942729"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 01:36:49 -0800
IronPort-SDR: 05J2HlXJiycKjBDmfMayVMXT+5s2XH1V0jU4nzPfcCrSqzbkfh8RW8cdDNKW9U4tY50Jr4ITPp
 f2yovxQN+ahg==
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="364553575"
Received: from ggiordax-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.87.181])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 01:36:47 -0800
MIME-Version: 1.0
In-Reply-To: <20201209070307.2304-2-sean.z.huang@intel.com>
References: <20201209070307.2304-1-sean.z.huang@intel.com>
 <20201209070307.2304-2-sean.z.huang@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160759300414.5062.14848965878731236058@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 10 Dec 2020 11:36:44 +0200
Subject: Re: [Intel-gfx] [RFC-v3 01/13] drm/i915/pxp: Introduce Intel PXP
 component
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

Quoting Huang, Sean Z (2020-12-09 09:02:55)
> PXP (Protected Xe Path) is an i915 componment, available on GEN12+,
> that helps to establish the hardware protected session and manage
> the status of the alive software session, as well as its life cycle.
> 
> This patch series is to allow the kernel space to create and
> manage a single hardware session (a.k.a default session or
> arbitrary session). So Mesa can allocate the protected buffer,
> which is encrypted with the leverage of the arbitrary hardware
> session.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

<SNIP>

> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -254,6 +254,11 @@ i915-y += \
>  
>  i915-y += i915_perf.o
>  
> +# Protected execution platform (PXP) support
> +i915-$(CONFIG_DRM_I915_PXP) += \
> +       pxp/intel_pxp.o \
> +       pxp/intel_pxp_context.o
> +
>  # Post-mortem debug and GPU hang state capture
>  i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
>  i915-$(CONFIG_DRM_I915_SELFTEST) += \
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 44f1d51e5ae5..d8e20ede7326 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -584,6 +584,12 @@ int intel_gt_init(struct intel_gt *gt)
>         if (err)
>                 goto err_gt;
>  
> +       if (INTEL_GEN(gt->i915) >= 12) {

This check should be moved into intel_pxp_init() to avoid cluttering the
top level init flow.

Inside init, we should record the pxp initialization status and fail
the attempted use of PXP from uAPI or from MEI driver with -ENODEV.

> +               err = intel_pxp_init(&gt->pxp);
> +               if (err)
> +                       goto err_gt;
> +       }
> +
>         goto out_fw;
>  err_gt:
>         __intel_gt_disable(gt);
> @@ -638,6 +644,7 @@ void intel_gt_driver_release(struct intel_gt *gt)
>         if (vm) /* FIXME being called twice on error paths :( */
>                 i915_vm_put(vm);
>  
> +       intel_pxp_uninit(&gt->pxp);

intel_pxp_fini()

>         intel_gt_pm_fini(gt);
>         intel_gt_fini_scratch(gt);
>         intel_gt_fini_buffer_pool(gt);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 6d39a4a11bf3..05255632c2c0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -23,6 +23,7 @@
>  #include "intel_rc6_types.h"
>  #include "intel_rps_types.h"
>  #include "intel_wakeref.h"
> +#include "pxp/intel_pxp.h"

This should include just intel_pxp_types.h.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +#include "i915_drv.h"
> +#include "intel_pxp.h"
> +#include "intel_pxp_context.h"
> +
> +int intel_pxp_init(struct intel_pxp *pxp)
> +{
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> +
> +       /* PXP only available for GEN12+ */

Comment is spurious, just describes what the next line of code reads, so can
be dropped.

> +       if (INTEL_GEN(gt->i915) < 12)

We probably better introduce HAS_PXP() macro (I think it was previously
suggested, too).

> +               return -ENODEV;

This is top-level initialization function, we should record the
initialization status somewhere at the end of successful init sequence.
Then in whatever entrypoints we have to the code from userspace we want
to differentiate between failure to initialize and not supported by HW.

Based on what I'm reading here, this could be made into void function as
I don't see anything that would potentially fail.

So above would look like

	if (!HAS_PXP(i915))
		return;

As the top level intel_gt init sequence is not impacted by the lack of
PXP or even the init failure.

> +       intel_pxp_ctx_init(&pxp->ctx);

I think we could use the pxp->ctx.id being nonzero as a check for successful
initialization in the entrypoints to code.

> +       drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
> +
> +       return 0;
> +}
> +
> +void intel_pxp_uninit(struct intel_pxp *pxp)

intel_pxp_fini()

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -0,0 +1,29 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_H__
> +#define __INTEL_PXP_H__
> +
> +#include "intel_pxp_context.h"

This should only include intel_pxp_context_types.h file.

> +
> +struct intel_pxp {
> +       struct pxp_context ctx;
> +};

These should too go into separate intel_pxp_types.h file.

> +#ifdef CONFIG_DRM_I915_PXP
> +int intel_pxp_init(struct intel_pxp *pxp);
> +void intel_pxp_uninit(struct intel_pxp *pxp);

intel_pxp_fini()

> +#else
> +static inline int intel_pxp_init(struct intel_pxp *pxp)

This could become void.

> +{
> +       return 0;
> +}
> +
> +static inline void intel_pxp_uninit(struct intel_pxp *pxp)

intel_pxp_fini()

> index 000000000000..5ffaf55dc7df
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "intel_pxp_context.h"
> +#include <linux/random.h>
> +
> +/**
> + * intel_pxp_ctx_init - To init a pxp context.
> + * @ctx: pointer to ctx structure.
> + */
> +void intel_pxp_ctx_init(struct pxp_context *ctx)
> +{
> +       get_random_bytes(&ctx->id, sizeof(ctx->id));

Agreeing with Rodrigo. We should be fine just using the arbitary
session id here, too.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_CONTEXT_H__
> +#define __INTEL_PXP_CONTEXT_H__
> +
> +#include <linux/mutex.h>
> +
> +/* struct pxp_context - Represents combined view of driver and logical HW states. */
> +struct pxp_context {
> +       /** @mutex: mutex to protect the pxp context */
> +       struct mutex mutex;
> +
> +       int id;
> +};

Again, a split into _types.h file as described above.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
