Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E13892FEFCD
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 17:09:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EA806E09E;
	Thu, 21 Jan 2021 16:08:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C9436E093
 for <Intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 16:08:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23662533-1500050 for multiple; Thu, 21 Jan 2021 16:08:52 +0000
MIME-Version: 1.0
In-Reply-To: <20210119074320.28768-2-sean.z.huang@intel.com>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
 <20210119074320.28768-2-sean.z.huang@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jan 2021 16:08:52 +0000
Message-ID: <161124533227.3166.9812914686571768459@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC-v23 01/13] drm/i915/pxp: Introduce Intel PXP
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
Cc: kumar.gaurav@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Huang, Sean Z (2021-01-19 07:43:08)
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
> rev21:
>     - Remove the term "Mesa" from the help description of Kconfig
>     - Remove unnecessary "select INTEL_MEI_TXE" from DRM_I915_PXP
>       in Kconfig
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/Kconfig                 | 21 ++++++++++++++
>  drivers/gpu/drm/i915/Makefile                |  5 ++++
>  drivers/gpu/drm/i915/gt/intel_gt.c           |  5 ++++
>  drivers/gpu/drm/i915/gt/intel_gt_types.h     |  3 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         | 29 ++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h         | 25 +++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_context.c | 25 +++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_context.h | 15 ++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h   | 23 ++++++++++++++++
>  9 files changed, 151 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 1e1cb245fca7..f0a8c46126d8 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -130,6 +130,27 @@ config DRM_I915_GVT_KVMGT
>           Choose this option if you want to enable KVMGT support for
>           Intel GVT-g.
>  
> +config DRM_I915_PXP
> +       bool "Enable Intel PXP support for Intel Gen12+ platform"
> +       depends on DRM_I915
> +       select INTEL_MEI
> +       select INTEL_MEI_ME
> +       select INTEL_MEI_PXP
> +       default y

That's a bitter pill to swallow. Note that

	INTEL_MEI depends on x86 && PCI

so we really should only be

	depends on INTEL_MEI if X86 && PCI

> +       help
> +         This option selects INTEL_MEI_ME if it isn't already selected to
> +         enabled full PXP Services on Intel platforms.
> +
> +         PXP (Protected Xe Path) is an i915 componment, available on GEN12+,

GEN12+ GPUs

We have to be careful to distinguish GPU generation from processor
generation. Too easy for the reader to confuse.

> +         that helps to establish the hardware protected session and manage
> +         the status of the alive software session, as well as its life cycle.
> +

> +         This patch series is to allow the kernel space to create and
> +         manage a single hardware session (a.k.a default session or
> +         arbitrary session). So user space can allocate the protected buffer,
> +         which is encrypted with the leverage of the arbitrary hardware
> +         session.

Patch series in a user help message? This paragraph looks like it
doesn't belong here.

> +
>  menu "drm/i915 Debugging"
>  depends on DRM_I915
>  depends on EXPERT
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 006dec54408d..9d27e2d8decc 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -265,6 +265,11 @@ i915-y += \
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
> index d8e1ab412634..336ad7deae06 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -18,6 +18,7 @@
>  #include "intel_uncore.h"
>  #include "intel_pm.h"
>  #include "shmem_utils.h"
> +#include "pxp/intel_pxp.h"
>  
>  void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
>  {
> @@ -584,6 +585,8 @@ int intel_gt_init(struct intel_gt *gt)
>         if (err)
>                 goto err_gt;
>  
> +       intel_pxp_init(&gt->pxp);
> +
>         goto out_fw;
>  err_gt:
>         __intel_gt_disable(gt);
> @@ -607,6 +610,8 @@ void intel_gt_driver_remove(struct intel_gt *gt)
>  {
>         __intel_gt_disable(gt);
>  
> +       intel_pxp_fini(&gt->pxp);
> +
>         intel_uc_driver_remove(&gt->uc);
>  
>         intel_engines_release(gt);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index a83d3e18254d..c4760e2722fd 100644
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
> index 000000000000..9bc3c7e30654
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +#include "i915_drv.h"
> +#include "intel_pxp.h"
> +#include "intel_pxp_context.h"
> +
> +void intel_pxp_init(struct intel_pxp *pxp)
> +{
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> +
> +       if (INTEL_GEN(gt->i915) < 12)
> +               return;
> +
> +       intel_pxp_ctx_init(&pxp->ctx);
> +
> +       drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
> +}
> +
> +void intel_pxp_fini(struct intel_pxp *pxp)
> +{
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> +
> +       if (INTEL_GEN(gt->i915) < 12)
> +               return;
> +
> +       intel_pxp_ctx_fini(&pxp->ctx);
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> new file mode 100644
> index 000000000000..f47bc6bea34f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_H__
> +#define __INTEL_PXP_H__
> +
> +#include "intel_pxp_types.h"
> +
> +#ifdef CONFIG_DRM_I915_PXP
> +void intel_pxp_init(struct intel_pxp *pxp);
> +void intel_pxp_fini(struct intel_pxp *pxp);
> +#else
> +static inline void intel_pxp_init(struct intel_pxp *pxp)
> +{
> +       return 0;
> +}
> +
> +static inline void intel_pxp_fini(struct intel_pxp *pxp)
> +{
> +}
> +#endif
> +
> +#endif /* __INTEL_PXP_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> new file mode 100644
> index 000000000000..2be6bf2f0d0f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "intel_pxp_context.h"
> +
> +/**
> + * intel_pxp_ctx_init - To init a pxp context.
> + * @ctx: pointer to ctx structure.
> + */
> +void intel_pxp_ctx_init(struct pxp_context *ctx)
> +{
> +       mutex_init(&ctx->mutex);
> +       ctx->inited = true;
> +}
> +
> +/**
> + * intel_pxp_ctx_fini - To finish the pxp context.
> + * @ctx: pointer to ctx structure.
> + */
> +void intel_pxp_ctx_fini(struct pxp_context *ctx)
> +{
> +       ctx->inited = false;

Is something wrong with the setup code? What has access to PXP beyond
your control?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
