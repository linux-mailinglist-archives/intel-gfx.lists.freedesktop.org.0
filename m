Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB22311D3B
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 13:55:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DF456E424;
	Sat,  6 Feb 2021 12:55:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C30AE6E424
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 12:55:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23807653-1500050 for multiple; Sat, 06 Feb 2021 12:55:32 +0000
MIME-Version: 1.0
In-Reply-To: <20210206020925.36729-8-daniele.ceraolospurio@intel.com>
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
 <20210206020925.36729-8-daniele.ceraolospurio@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Sat, 06 Feb 2021 12:55:31 +0000
Message-ID: <161261613143.12021.18398257822372406348@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC 07/14] drm/i915/pxp: Create the arbitrary
 session after boot
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

Quoting Daniele Ceraolo Spurio (2021-02-06 02:09:18)
> From: "Huang, Sean Z" <sean.z.huang@intel.com>
> 
> Create the arbitrary session, with the fixed session id 0xf, after
> system boot, for the case that application allocates the protected
> buffer without establishing any protection session. Because the
> hardware requires at least one alive session for protected buffer
> creation. This arbitrary session will need to be re-created after
> teardown or power event because hardware encryption key won't be
> valid after such cases.
> 
> The session ID is exposed as part of the uapi so it can be used as part
> of userspace commands.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                |   1 +
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         |   2 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  82 +++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_session.h |  16 +++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 104 +++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.h     |   3 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |   6 ++
>  include/uapi/drm/i915_drm.h                  |   4 +
>  8 files changed, 218 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index f0ba95a2e4fc..8519abcf6515 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -271,6 +271,7 @@ i915-y += i915_perf.o
>  # Protected execution platform (PXP) support
>  i915-$(CONFIG_DRM_I915_PXP) += \
>         pxp/intel_pxp.o \
> +       pxp/intel_pxp_session.o \
>         pxp/intel_pxp_tee.o
>  
>  # Post-mortem debug and GPU hang state capture
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 3f3eeadb7931..916187a0e566 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -62,6 +62,8 @@ void intel_pxp_init(struct intel_pxp *pxp)
>         if (!HAS_PXP(gt->i915))
>                 return;
>  
> +       mutex_init(&pxp->mutex);
> +
>         kcr_pxp_enable(gt);
>  
>         ret = create_vcs_context(pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> new file mode 100644
> index 000000000000..1ee608341b7a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> @@ -0,0 +1,82 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "drm/i915_drm.h"
> +#include "i915_drv.h"
> +
> +#include "intel_pxp.h"
> +#include "intel_pxp_session.h"
> +#include "intel_pxp_tee.h"
> +#include "intel_pxp_types.h"
> +
> +#define ARB_SESSION I915_PROTECTED_CONTENT_DEFAULT_SESSION /* shorter define */
> +
> +#define GEN12_KCR_SIP _MMIO(0x32260) /* KCR hwdrm session in play 0-31 */
> +
> +static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
> +{
> +       struct intel_gt *gt = pxp_to_gt(pxp);
> +       intel_wakeref_t wakeref;
> +       u32 sip = 0;
> +
> +       with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)

gt->uncore->rpm
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
