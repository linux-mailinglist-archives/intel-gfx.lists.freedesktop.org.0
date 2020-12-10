Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3BF2D5590
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 09:41:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 930DF6E182;
	Thu, 10 Dec 2020 08:41:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 517996E182
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 08:40:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23276302-1500050 for multiple; Thu, 10 Dec 2020 08:40:55 +0000
MIME-Version: 1.0
In-Reply-To: <20201210072435.24066-2-sean.z.huang@intel.com>
References: <20201210072435.24066-1-sean.z.huang@intel.com>
 <20201210072435.24066-2-sean.z.huang@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 08:40:55 +0000
Message-ID: <160758965509.595.13478281628499615817@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC-v4 01/21] drm/i915/pxp: Introduce Intel PXP
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

Quoting Huang, Sean Z (2020-12-10 07:24:15)
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
> ---
>  drivers/gpu/drm/i915/Kconfig                 | 19 +++++++++++++
>  drivers/gpu/drm/i915/Makefile                |  5 ++++
>  drivers/gpu/drm/i915/gt/intel_gt.c           |  7 +++++
>  drivers/gpu/drm/i915/gt/intel_gt_types.h     |  3 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         | 27 ++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h         | 29 ++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_context.c | 27 ++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_context.h | 22 +++++++++++++++
>  8 files changed, 139 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 1e1cb245fca7..a42b9b031455 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -130,6 +130,25 @@ config DRM_I915_GVT_KVMGT
>           Choose this option if you want to enable KVMGT support for
>           Intel GVT-g.
>  
> +config DRM_I915_PXP
> +       bool "Enable Intel PXP support for Intel Gen12+ platform"
> +       depends on DRM_I915
> +       select INTEL_MEI_PXP

Doesn't exist.

Kconfig dependency resolution is not recursive; you probably will need a
depends on INTEL_MEI

> +       default n

So this is dead code then?
If the recommendation is not to enable it, and you don't even add it to
CI for testing, what's it for?

> +       help
> +         This option selects INTEL_MEI_ME if it isn't already selected to
> +         enabled full PXP Services on Intel platforms.
> +
> +         PXP (Protected Xe Path) is an i915 componment, available on GEN12+,
> +         that helps to establish the hardware protected session and manage
> +         the status of the alive software session, as well as its life cycle.
> +
> +         This patch series is to allow the kernel space to create and
> +         manage a single hardware session (a.k.a default session or
> +         arbitrary session). So Mesa can allocate the protected buffer,
> +         which is encrypted with the leverage of the arbitrary hardware
> +         session.

Mesa is but one user; the first but not last.

> +
>  menu "drm/i915 Debugging"
>  depends on DRM_I915
>  depends on EXPERT
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index e5574e506a5c..99efac469cc2 100644
> --- a/drivers/gpu/drm/i915/Makefile
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

Just call it.

> +               err = intel_pxp_init(&gt->pxp);
> +               if (err)

Not an error; the system can survive without, and userspace can detect
the feature.

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

How often have we used uninit?

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

Only include the types from a types.h

Includes from other layers in their own section.
>  
>  struct drm_i915_private;
>  struct i915_ggtt;
> @@ -120,6 +121,8 @@ struct intel_gt {
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
> index 000000000000..ba43b2c923c7
> --- /dev/null
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

You are not inside gt/, wise not to bake in such embedded assumptions.
i.e. all the container_of(pxp)->i915->pxp will be far less fragile with
a pxp->global = &gt->i915->pxp.

> +       /* PXP only available for GEN12+ */
> +       if (INTEL_GEN(gt->i915) < 12)
> +               return -ENODEV;
> +
> +       intel_pxp_ctx_init(&pxp->ctx);
> +
> +       drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");

Reconsider; this should only be at most once per device.

> +       return 0;
> +}
> +
> +void intel_pxp_uninit(struct intel_pxp *pxp)
> +{
> +       intel_pxp_ctx_fini(&pxp->ctx);
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> new file mode 100644
> index 000000000000..7c3d49a6a3ab
> --- /dev/null
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
> +
> +struct intel_pxp {
> +       struct pxp_context ctx;
> +};
> +
> +#ifdef CONFIG_DRM_I915_PXP
> +int intel_pxp_init(struct intel_pxp *pxp);
> +void intel_pxp_uninit(struct intel_pxp *pxp);
> +#else
> +static inline int intel_pxp_init(struct intel_pxp *pxp)
> +{
> +       return 0;
> +}
> +
> +static inline void intel_pxp_uninit(struct intel_pxp *pxp)
> +{
> +}
> +#endif
> +
> +#endif /* __INTEL_PXP_PM_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> new file mode 100644
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

System includes first.

> +
> +/**
> + * intel_pxp_ctx_init - To init a pxp context.
> + * @ctx: pointer to ctx structure.
> + */
> +void intel_pxp_ctx_init(struct pxp_context *ctx)
> +{
> +       get_random_bytes(&ctx->id, sizeof(ctx->id));

As already stated, this randomisation does not add any security; and
does not mean you can safely have multiple contexts without collision.

What you had in mind was an ida.

> +
> +       mutex_init(&ctx->mutex);
> +}
> +
> +/**
> + * intel_pxp_ctx_fini - To finish the pxp context.
> + * @ctx: pointer to ctx structure.
> + */
> +void intel_pxp_ctx_fini(struct pxp_context *ctx)
> +{
> +       ctx->id = 0;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> new file mode 100644
> index 000000000000..953a2e700931
> --- /dev/null
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
> +
> +void intel_pxp_ctx_init(struct pxp_context *ctx);
> +void intel_pxp_ctx_fini(struct pxp_context *ctx);
> +
> +#endif /* __INTEL_PXP_CONTEXT_H__ */
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
