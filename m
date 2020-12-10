Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 902732D58C1
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 12:02:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D2966E40F;
	Thu, 10 Dec 2020 11:02:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C76CE6E40F
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 11:02:55 +0000 (UTC)
IronPort-SDR: 6lo1jlnSxGgIAu2U0neyYETTgkW0fdpsEv+wCiA1TTjYft700k0LvY02QcAgnyiqXXAfDZjVAX
 jGZpgoo3cN5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="161995056"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="161995056"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 03:02:55 -0800
IronPort-SDR: YuF73Hhwtu7iH1c43sp2pu7f3bJKTSRouSmea2bj7B50Jn/VEyeVRFuf2q3fvCKAt5xVWe9ivR
 GekbG4gyeApw==
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="364575415"
Received: from ggiordax-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.87.181])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 03:02:53 -0800
MIME-Version: 1.0
In-Reply-To: <20201209070307.2304-7-sean.z.huang@intel.com>
References: <20201209070307.2304-1-sean.z.huang@intel.com>
 <20201209070307.2304-7-sean.z.huang@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160759817025.5062.9850146367170662117@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 10 Dec 2020 13:02:50 +0200
Subject: Re: [Intel-gfx] [RFC-v3 06/13] drm/i915/pxp: Enable PXP irq worker
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

Quoting Huang, Sean Z (2020-12-09 09:03:00)
> Create the irq worker that serves as callback handler, those
> callback stubs should be called while the hardware key teardown
> occurs.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

<SNIP>

> +static int intel_pxp_global_terminate_complete_callback(struct intel_pxp *pxp)
> +{
> +       int ret = 0;
> +       struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
> +
> +       mutex_lock(&pxp->ctx.mutex);
> +
> +       if (pxp->ctx.global_state_attacked) {
> +               pxp->ctx.global_state_attacked = false;

This software tracking should not be needed.

> +
> +               /* Re-create the arb session after teardown handle complete */
> +               ret = intel_pxp_arb_create_session(pxp);
> +               if (ret) {
> +                       drm_err(&gt->i915->drm, "Failed to create arb session\n");
> +                       goto end;
> +               }
> +       }
> +end:
> +       mutex_unlock(&pxp->ctx.mutex);
> +       return ret;
> +}
> +
> +static void intel_pxp_irq_work(struct work_struct *work)
> +{
> +       struct intel_pxp *pxp = container_of(work, typeof(*pxp), irq_work);
> +       struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
> +       u32 events = 0;
> +
> +       spin_lock_irq(&gt->irq_lock);
> +       events = fetch_and_zero(&pxp->current_events);

"current_events" is not a great name for variable to be handled by
irq_work function.

> +       spin_unlock_irq(&gt->irq_lock);
> +
> +       if (events & PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED ||
> +           events & PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ)
> +               intel_pxp_teardown_required_callback(pxp);

On this path we should go and invalidate all contexts and buffer objects
that are created with PROTECTED_CONTENT flag.

We should only track the lack of the single session, and hold off from
submitting any newly created contexts until the next event.

> +
> +       if (events & PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE)
> +               intel_pxp_global_terminate_complete_callback(pxp);

After this, we should be able to proceed with creation/usage of
PROTECTED_CONTENT flagged items as the session is available.

I only see the session being created and other software tracking I'm not
following exactly.

So the only boolean state we should track is if the arb_session is valid
or is "in play" as the terminology seems to be.

Regards, Joonas

> +
> +       spin_lock_irq(&gt->irq_lock);
> +       intel_pxp_write_irq_mask_reg(gt, 0);
> +       spin_unlock_irq(&gt->irq_lock);
> +}

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
