Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B58BA358F73
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 23:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 864BC6E3F9;
	Thu,  8 Apr 2021 21:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B4716E3F9
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 21:50:26 +0000 (UTC)
IronPort-SDR: JeHyMPBHR3g0ELIjB9ow/u41kNUQAiNbmDCiYRmnPKYjBigrL3mUbjLcr0qNvI7bSqaVdDfo24
 29AXqm3KGwVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="181173944"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="181173944"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:50:25 -0700
IronPort-SDR: 9TY+RAI3G54Avu1v0s5MeoPvliScqRRN3XCySKblKP802Ukbb4/hRb8vBYFADzQX3LsBXnQpnK
 8lC5sYM/A/Ag==
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="415966931"
Received: from kmkerns-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.209.131.159])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:50:22 -0700
Date: Thu, 8 Apr 2021 17:50:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <YG96nABNbKsbjCLh@intel.com>
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
 <20210328225709.18541-6-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210328225709.18541-6-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 05/16] drm/i915/pxp: Implement funcs to
 create the TEE channel
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
Cc: Huang@freedesktop.org, intel-gfx@lists.freedesktop.org, "Huang,
 Sean Z" <sean.z.huang@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Mar 28, 2021 at 03:56:57PM -0700, Daniele Ceraolo Spurio wrote:
> From: "Huang, Sean Z" <sean.z.huang@intel.com>
> 
> Implement the funcs to create the TEE channel, so kernel can
> send the TEE commands directly to TEE for creating the arbitrary
> (default) session.
> 
> v2: fix locking, don't pollute dev_priv (Chris)
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/Makefile              |  3 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp.c       | 13 ++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c   | 77 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.h   | 14 ++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h |  3 +
>  5 files changed, 109 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index a797c6e5830c..14795f6a3c86 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -272,7 +272,8 @@ i915-y += i915_perf.o
>  
>  # Protected execution platform (PXP) support
>  i915-$(CONFIG_DRM_I915_PXP) += \
> -	pxp/intel_pxp.o
> +	pxp/intel_pxp.o \
> +	pxp/intel_pxp_tee.o
>  
>  # Post-mortem debug and GPU hang state capture
>  i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 7a4258c8f6a1..a0fc43f72cad 100644
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
> @@ -50,7 +51,16 @@ void intel_pxp_init(struct intel_pxp *pxp)
>  	if (ret)
>  		return;
>  
> +	ret = intel_pxp_tee_component_init(pxp);
> +	if (ret)
> +		goto out_context;
> +
>  	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
> +
> +	return;
> +
> +out_context:
> +	destroy_vcs_context(pxp);
>  }
>  
>  void intel_pxp_fini(struct intel_pxp *pxp)
> @@ -58,5 +68,8 @@ void intel_pxp_fini(struct intel_pxp *pxp)
>  	if (!intel_pxp_is_enabled(pxp))
>  		return;
>  
> +	intel_pxp_tee_component_fini(pxp);
> +
>  	destroy_vcs_context(pxp);
> +
>  }
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> new file mode 100644
> index 000000000000..21916ec0f6ff
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -0,0 +1,77 @@
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
> +static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
> +{
> +	return &kdev_to_i915(i915_kdev)->gt.pxp;
> +}
> +
> +/**
> + * i915_pxp_tee_component_bind - bind function to pass the function pointers to pxp_tee
> + * @i915_kdev: pointer to i915 kernel device
> + * @tee_kdev: pointer to tee kernel device
> + * @data: pointer to pxp_tee_master containing the function pointers
> + *
> + * This bind function is called during the system boot or resume from system sleep.
> + *
> + * Return: return 0 if successful.
> + */
> +static int i915_pxp_tee_component_bind(struct device *i915_kdev,
> +				       struct device *tee_kdev, void *data)
> +{
> +	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
> +
> +	pxp->pxp_component = data;
> +	pxp->pxp_component->tee_dev = tee_kdev;
> +
> +	return 0;
> +}
> +
> +static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
> +					  struct device *tee_kdev, void *data)
> +{
> +	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
> +
> +	pxp->pxp_component = NULL;
> +}
> +
> +static const struct component_ops i915_pxp_tee_component_ops = {
> +	.bind   = i915_pxp_tee_component_bind,
> +	.unbind = i915_pxp_tee_component_unbind,
> +};
> +
> +int intel_pxp_tee_component_init(struct intel_pxp *pxp)
> +{
> +	int ret;
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct drm_i915_private *i915 = gt->i915;
> +
> +	ret = component_add_typed(i915->drm.dev, &i915_pxp_tee_component_ops,
> +				  I915_COMPONENT_PXP);
> +	if (ret < 0) {
> +		drm_err(&i915->drm, "Failed to add PXP component (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
> +{
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct drm_i915_private *i915 = gt->i915;
> +
> +	if (!pxp->pxp_component)
> +		return;
> +
> +	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> new file mode 100644
> index 000000000000..23d050a5d3e7
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_TEE_H__
> +#define __INTEL_PXP_TEE_H__
> +
> +#include "intel_pxp.h"
> +
> +int intel_pxp_tee_component_init(struct intel_pxp *pxp);
> +void intel_pxp_tee_component_fini(struct intel_pxp *pxp);
> +
> +#endif /* __INTEL_PXP_TEE_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> index bd12c520e60a..3e95d21513e8 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -7,8 +7,11 @@
>  #define __INTEL_PXP_TYPES_H__
>  
>  struct intel_context;
> +struct i915_pxp_component;
>  
>  struct intel_pxp {
> +	struct i915_pxp_component *pxp_component;
> +
>  	struct intel_context *ce;
>  };


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>



>  
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
