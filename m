Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8895A2D0DAA
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 11:01:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE16889E69;
	Mon,  7 Dec 2020 10:01:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78F9E89E69
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 10:01:21 +0000 (UTC)
IronPort-SDR: szTkvOgBtPa8PQF3wFa6TXRTNxjOiGaJIlgYC5ezAv1XDGoNyia2YKPhpwaugGaDihZnPWYSMH
 lBx5/YkETIyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="152917558"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="152917558"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 02:01:20 -0800
IronPort-SDR: cb+EuPpuV1I9FOYTMsTNfB525PWnE7uwUuQ0SdhvgXlc2ZHH+usOqDbMn19kY/T9/cEPA9tdK1
 G6TQmjte3N5A==
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="407070476"
Received: from tcujba-mobl.ger.corp.intel.com (HELO localhost) ([10.252.9.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 02:01:19 -0800
MIME-Version: 1.0
In-Reply-To: <20201207002134.13731-2-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-2-sean.z.huang@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160733527668.9322.11627414165047259578@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 07 Dec 2020 12:01:16 +0200
Subject: Re: [Intel-gfx] [RFC-v1 01/16] drm/i915/pxp: Introduce Intel PXP
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

Quoting Huang, Sean Z (2020-12-07 02:21:19)
> PXP (Protected Xe Path) is an i915 componment, available on GEN12+,
> that helps user space to establish the hardware protected session
> and manage the status of each alive software session, as well as
> the life cycle of each session.
> 
> By design PXP will expose ioctl so allow user space to create, set,
> and destroy each session. It will also provide the communication
> chanel to TEE (Trusted Execution Environment) for the protected
> hardware session creation.

Description is no more true for single-session only.

<SNIP>

> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -130,6 +130,25 @@ config DRM_I915_GVT_KVMGT
>           Choose this option if you want to enable KVMGT support for
>           Intel GVT-g.
>  
> +config DRM_I915_PXP
> +       bool "Enable Intel PXP support for Intel Gen12+ platform"
> +       depends on DRM_I915
> +       select INTEL_MEI_PXP
> +       default n
> +       help
> +         This option selects INTEL_MEI_ME if it isn't already selected to
> +         enabled full PXP Services on Intel platforms.
> +
> +         PXP is an i915 componment, available on Gen12+, that helps user
> +         space to establish the hardware protected session and manage the
> +         status of each alive software session, as well as the life cycle
> +         of each session.
> +
> +         PXP expose ioctl so allow user space to create, set, and destroy
> +         each session. It will also provide the communication chanel to
> +         TEE (Trusted Execution Environment) for the protected hardware
> +         session creation.

Same here, needs updating.

> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -105,6 +105,8 @@
>  
>  #include "intel_region_lmem.h"
>  
> +#include "pxp/intel_pxp.h"

Repeating the same comment as on previous review, avoid including
anything in i915_drv.h and only include in the relevant files that
require to touch the internals of the structs.

> +
>  /* General customization:
>   */
>  
> @@ -1215,6 +1217,8 @@ struct drm_i915_private {
>         /* Mutex to protect the above hdcp component related values. */
>         struct mutex hdcp_comp_mutex;
>  
> +       struct intel_pxp pxp;

I think this should instead go as part of intel_gt, not here.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +
> +#include "i915_drv.h"
> +#include "intel_pxp.h"
> +
> +int intel_pxp_init(struct drm_i915_private *i915)

We should aim to only take struct intel_pxp as parameter for intel_pxp_*
functions.

> +{
> +       if (!i915)
> +               return -EINVAL;

This would be either a major kernel programmer error or the memory would
be seriously corrupt. No point leaving such checks to production code,
so GEM_BUG_ON(!i915) would be enough to run the checks in CI and debug
builds.

> +       /* PXP only available for GEN12+ */
> +       if (INTEL_GEN(i915) < 12)
> +               return 0;

I think -ENODEV would be more appropriate return value. Also, we should
look into returning this error value from inside the actual init code.
We want the user to be able to differentiate between kernel does not
support and hardware does not support status.

> +       drm_info(&i915->drm, "i915 PXP is inited with i915=[%p]\n", i915);

We shouldn't be printing the pointer values, especially not in INFO
level messages. INFO level messages should be useful for the end-user to
read. This is not very useful, we should instead consider something
along the lines of:

"Protected Xe Path (PXP) protected content support initialized"

Also, we have not really initialized anything so it's really premature
to print anything in this patch.

> +
> +       return 0;
> +}
> +
> +void intel_pxp_uninit(struct drm_i915_private *i915)

Same here, we really want to tighten the scope to intel_pxp and call
this from intel_gt_fini(), so signature should look like:

void intel_pxp_fini(struct intel_pxp *pxp)

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
