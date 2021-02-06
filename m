Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E918311D33
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 13:52:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8588A6E3D0;
	Sat,  6 Feb 2021 12:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECD9A6E3D0
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 12:52:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23807632-1500050 for multiple; Sat, 06 Feb 2021 12:52:52 +0000
MIME-Version: 1.0
In-Reply-To: <20210206020925.36729-7-daniele.ceraolospurio@intel.com>
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
 <20210206020925.36729-7-daniele.ceraolospurio@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Sat, 06 Feb 2021 12:52:51 +0000
Message-ID: <161261597177.12021.15644054945552543429@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC 06/14] drm/i915/pxp: Implement funcs to create
 the TEE channel
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
Cc: Huang@freedesktop.org, "Huang, Sean Z" <sean.z.huang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Daniele Ceraolo Spurio (2021-02-06 02:09:17)
> From: "Huang, Sean Z" <sean.z.huang@intel.com>
> 
> Implement the funcs to create the TEE channel, so kernel can
> send the TEE commands directly to TEE for creating the arbitrary
> (default) session.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile            |  3 +-
>  drivers/gpu/drm/i915/i915_drv.c          |  1 +
>  drivers/gpu/drm/i915/i915_drv.h          |  6 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp.c     | 10 +++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 86 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.h | 14 ++++
>  6 files changed, 119 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index e2677e8c03e8..f0ba95a2e4fc 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -270,7 +270,8 @@ i915-y += i915_perf.o
>  
>  # Protected execution platform (PXP) support
>  i915-$(CONFIG_DRM_I915_PXP) += \
> -       pxp/intel_pxp.o
> +       pxp/intel_pxp.o \
> +       pxp/intel_pxp_tee.o
>  
>  # Post-mortem debug and GPU hang state capture
>  i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 41eea02a9285..d1344eb6c849 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -325,6 +325,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>         mutex_init(&dev_priv->wm.wm_mutex);
>         mutex_init(&dev_priv->pps_mutex);
>         mutex_init(&dev_priv->hdcp_comp_mutex);
> +       mutex_init(&dev_priv->pxp_tee_comp_mutex);
>  
>         i915_memcpy_init_early(dev_priv);
>         intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index fe1ff025f961..779eb38add40 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1205,6 +1205,12 @@ struct drm_i915_private {
>         /* Mutex to protect the above hdcp component related values. */
>         struct mutex hdcp_comp_mutex;
>  
> +       struct i915_pxp_comp_master *pxp_tee_master;
> +       bool pxp_tee_comp_added;
> +
> +       /* Mutex to protect the above pxp_tee component related values. */
> +       struct mutex pxp_tee_comp_mutex;
> +
>         I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
>  
>         /*
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 950daee5b907..3f3eeadb7931 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -3,6 +3,7 @@
>   * Copyright(c) 2020 Intel Corporation.
>   */
>  #include "intel_pxp.h"
> +#include "intel_pxp_tee.h"
>  #include "gt/intel_context.h"
>  #include "i915_drv.h"
>  
> @@ -67,10 +68,16 @@ void intel_pxp_init(struct intel_pxp *pxp)
>         if (ret)
>                 goto out_kcr;
>  
> +       ret = intel_pxp_tee_component_init(pxp);
> +       if (ret)
> +               goto out_context;
> +
>         drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
>  
>         return;
>  
> +out_context:
> +       destroy_vcs_context(pxp);
>  out_kcr:
>         kcr_pxp_disable(gt);
>  }
> @@ -82,7 +89,10 @@ void intel_pxp_fini(struct intel_pxp *pxp)
>         if (!intel_pxp_is_enabled(pxp))
>                 return;
>  
> +       intel_pxp_tee_component_fini(pxp);
> +
>         destroy_vcs_context(pxp);
>  
>         kcr_pxp_disable(gt);
> +
>  }
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> new file mode 100644
> index 000000000000..1d2b8c346161
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -0,0 +1,86 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +
> +#include <linux/component.h>
> +#include "drm/i915_pxp_tee_interface.h"
> +#include "drm/i915_component.h"
> +#include "i915_drv.h"
> +#include "intel_pxp.h"
> +#include "intel_pxp_tee.h"
> +
> +/**
> + * i915_pxp_tee_component_bind - bind funciton to pass the function pointers to pxp_tee
> + * @i915_kdev: pointer to i915 kernel device
> + * @tee_kdev: pointer to tee kernel device
> + * @data: pointer to pxp_tee_master containing the function pointers
> + *
> + * This bind function is called during the system boot or resume from system sleep.
> + *
> + * Return: return 0 if successful.
> + */
> +static int i915_pxp_tee_component_bind(struct device *i915_kdev,
> +                                      struct device *tee_kdev, void *data)
> +{
> +       struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
> +
> +       mutex_lock(&i915->pxp_tee_comp_mutex);
> +       i915->pxp_tee_master = (struct i915_pxp_comp_master *)data;
> +       i915->pxp_tee_master->tee_dev = tee_kdev;
> +       mutex_unlock(&i915->pxp_tee_comp_mutex);
> +
> +       return 0;
> +}
> +
> +static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
> +                                         struct device *tee_kdev, void *data)
> +{
> +       struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
> +
> +       mutex_lock(&i915->pxp_tee_comp_mutex);
> +       i915->pxp_tee_master = NULL;
> +       mutex_unlock(&i915->pxp_tee_comp_mutex);
> +}
> +
> +static const struct component_ops i915_pxp_tee_component_ops = {
> +       .bind   = i915_pxp_tee_component_bind,
> +       .unbind = i915_pxp_tee_component_unbind,
> +};
> +
> +int intel_pxp_tee_component_init(struct intel_pxp *pxp)
> +{
> +       int ret;
> +       struct intel_gt *gt = pxp_to_gt(pxp);
> +       struct drm_i915_private *i915 = gt->i915;
> +
> +       ret = component_add_typed(i915->drm.dev, &i915_pxp_tee_component_ops,
> +                                 I915_COMPONENT_PXP);
> +       if (ret < 0) {
> +               drm_err(&i915->drm, "Failed to add PXP component (%d)\n", ret);
> +               return ret;
> +       }
> +
> +       mutex_lock(&i915->pxp_tee_comp_mutex);
> +       i915->pxp_tee_comp_added = true;
> +       mutex_unlock(&i915->pxp_tee_comp_mutex);

i915->pxp_tee_comp_added is used for no other reason than for
uncertainty in the init/fini flow. There is no uncertainty.
There is no reason to pollute drm_i915_private, for if there was a
second pxp device within one i915, it would not work as is.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
