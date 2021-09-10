Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2B0407176
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 20:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F6F6EA6B;
	Fri, 10 Sep 2021 18:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF81C6EA82;
 Fri, 10 Sep 2021 18:47:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10103"; a="306712637"
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="306712637"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 11:47:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="450595282"
Received: from bwparris-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.255.36.148])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 11:47:45 -0700
Date: Fri, 10 Sep 2021 14:47:43 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 "Huang, Sean Z" <sean.z.huang@intel.com>, Huang@freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YTuoT/yUOBmGUzs+@intel.com>
References: <20210910153627.1060858-1-daniele.ceraolospurio@intel.com>
 <20210910153627.1060858-6-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210910153627.1060858-6-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v9 05/17] drm/i915/pxp: Implement funcs to
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 10, 2021 at 08:36:15AM -0700, Daniele Ceraolo Spurio wrote:
> From: "Huang, Sean Z" <sean.z.huang@intel.com>
> 
> Implement the funcs to create the TEE channel, so kernel can
> send the TEE commands directly to TEE for creating the arbitrary
> (default) session.
> 
> v2: fix locking, don't pollute dev_priv (Chris)
> 
> v3: wait for mei PXP component to be bound.
> 
> v4: drop the wait, as the component might be bound after i915 load
> completes. We'll instead check when sending a tee message.
> 
> v5: fix an issue with mei_pxp module removal
> 
> v6: don't use fetch_and_zero in fini (Rodrigo)
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile              |  3 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp.c       | 13 ++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c   | 79 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.h   | 14 ++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h |  6 ++
>  5 files changed, 114 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 23f5bc268962..d39bd0cefc64 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -283,7 +283,8 @@ i915-y += i915_perf.o
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
> index 7b2053902146..400deaea2d8a 100644
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
> index 000000000000..f1d8de832653
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -0,0 +1,79 @@
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
> +	pxp->pxp_component_added = true;
> +
> +	return 0;
> +}
> +
> +void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
> +{
> +	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +
> +	if (!pxp->pxp_component_added)
> +		return;
> +
> +	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
> +	pxp->pxp_component_added = false;
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
> index bd12c520e60a..3a8e17e591bd 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -6,9 +6,15 @@
>  #ifndef __INTEL_PXP_TYPES_H__
>  #define __INTEL_PXP_TYPES_H__
>  
> +#include <linux/types.h>
> +
>  struct intel_context;
> +struct i915_pxp_component;
>  
>  struct intel_pxp {
> +	struct i915_pxp_component *pxp_component;
> +	bool pxp_component_added;
> +
>  	struct intel_context *ce;
>  };
>  
> -- 
> 2.25.1
> 
