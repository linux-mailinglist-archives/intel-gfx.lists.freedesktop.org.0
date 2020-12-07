Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B46E2D0DE3
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 11:21:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92BF66E566;
	Mon,  7 Dec 2020 10:21:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C8F89E2B
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 10:21:04 +0000 (UTC)
IronPort-SDR: dUVdfuLV3nJnE8zQXRBsq2RRDK8StfyVzrC0hB1ar5IdEYTqyhMxM0XO9eg9qMAVfhigKXfH9T
 gau0HF2YMwOA==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="173828388"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="173828388"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 02:21:03 -0800
IronPort-SDR: jFD14WtXLNdghTiowMiAO86ISwnu8ce9gbHXi8WGC4nzOa6DkBhY7Iah5kRThrJPiDnLfPiyQA
 5RKSG7Av7Tcw==
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="363083096"
Received: from tcujba-mobl.ger.corp.intel.com (HELO localhost) ([10.252.9.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 02:21:02 -0800
MIME-Version: 1.0
In-Reply-To: <20201207002134.13731-3-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-3-sean.z.huang@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160733646002.9322.17986069886877489765@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 07 Dec 2020 12:21:00 +0200
Subject: Re: [Intel-gfx] [RFC-v1 02/16] drm/i915/pxp: Enable PXP irq worker
 and callback stub
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

Quoting Huang, Sean Z (2020-12-07 02:21:20)
> Create the irq worker that serves as callback handler, those
> callback stubs should be called while the hardware key teardown
> occurs.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

<SNIP>

> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -13,6 +13,7 @@
>  #include "intel_gt_irq.h"
>  #include "intel_uncore.h"
>  #include "intel_rps.h"
> +#include "pxp/intel_pxp.h"
>  
>  static void guc_irq_handler(struct intel_guc *guc, u16 iir)
>  {
> @@ -106,6 +107,9 @@ gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
>         if (instance == OTHER_GTPM_INSTANCE)
>                 return gen11_rps_irq_handler(&gt->rps, iir);
>  
> +       if (instance == OTHER_KCR_INSTANCE)
> +               return intel_pxp_irq_handler(gt, iir);

We should take &gt->pxp as the first parameter and keep a tight scope.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -6,6 +6,58 @@
>  #include "i915_drv.h"
>  #include "intel_pxp.h"
>  
> +static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)

Again, we should be taking intel_pxp as parameter to tighten the scope.

> +{
> +       /* crypto mask is in bit31-16 (Engine1 Interrupt Mask) */
> +       intel_uncore_write(&i915->uncore, GEN11_CRYPTO_RSVD_INTR_MASK, mask << 16);

Instead of writing to register that is indicated to be "reserved"
(RSVD), we should properly document the register in i915_reg.h and the
comment should not be needed.

> +static void intel_pxp_irq_work(struct work_struct *work)
> +{
> +       struct intel_pxp *pxp_ptr = container_of(work, typeof(*pxp_ptr), irq_work);

_ptr is a tautology, we can already see it's apointer.

> +       struct drm_i915_private *i915 = container_of(pxp_ptr, typeof(*i915), pxp);

We should go from intel_pxp to intel_gt to i915 here, once the struct
intel_pxp member is moved inside intel_gt

> +       u32 events = 0;
> +
> +       spin_lock_irq(&i915->gt.irq_lock);
> +       events = fetch_and_zero(&pxp_ptr->current_events);
> +       spin_unlock_irq(&i915->gt.irq_lock);
> +
> +       if (events & PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED ||
> +           events & PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ)
> +               intel_pxp_teardown_required_callback(i915);
> +
> +       if (events & PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE)
> +               intel_pxp_global_terminate_complete_callback(i915);

The mapping between the callbacks and the hardware events are unclear.
These all seem like display related events, so we probably need a split
between the GT and display PXP code.

It's hard to review as this only adds stubs and no actual flow. I think
teardown interrupt handling should come later in the series after init
and other code has been added.

> @@ -17,9 +69,45 @@ int intel_pxp_init(struct drm_i915_private *i915)
>  
>         drm_info(&i915->drm, "i915 PXP is inited with i915=[%p]\n", i915);

This INFO message is wrongly placed, either it should say "initializing"
and be at the beginning or "initialized" and be at the end. Also see
previous patch for more comments.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -8,18 +8,54 @@
>  
>  #include <drm/drm_file.h>
>  
> +#define PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED BIT(1)
> +#define PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ BIT(2)
> +#define PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE BIT(3)
> +
> +enum pxp_sm_session_req {
> +       /* Request KMD to allocate session id and move it to IN INIT */
> +       PXP_SM_REQ_SESSION_ID_INIT = 0x0,
> +       /* Inform KMD that UMD has completed the initialization */
> +       PXP_SM_REQ_SESSION_IN_PLAY,
> +       /* Request KMD to terminate the session */
> +       PXP_SM_REQ_SESSION_TERMINATE
> +};

This enum here feels like a misplaced hunk. We should be adding the
enums and structs only when they are used in the patch. Reviewing the
logic and looking for dead code is much harder when structs are
introduced way earlier than they are used.

We should be adding the base structs at most and extending them as we
add more functionality as we go.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
