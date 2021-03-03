Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 728DD32BE5E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 23:52:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F45A6E1F3;
	Wed,  3 Mar 2021 22:52:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC53889CDD
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 22:52:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 24003953-1500050 for multiple; Wed, 03 Mar 2021 22:52:12 +0000
MIME-Version: 1.0
In-Reply-To: <20210301193200.1369-11-daniele.ceraolospurio@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
 <20210301193200.1369-11-daniele.ceraolospurio@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 03 Mar 2021 22:52:12 +0000
Message-ID: <161481193275.25897.16773565159222965375@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 10/16] drm/i915/pxp: Enable PXP power
 management
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

Quoting Daniele Ceraolo Spurio (2021-03-01 19:31:54)
> +int intel_pxp_runtime_resume(struct intel_pxp *pxp)
> +{
> +       struct intel_gt *gt = pxp_to_gt(pxp);
> +       int ret;
> +
> +       if (!intel_pxp_is_enabled(pxp))
> +               return 0;
> +
> +       intel_pxp_irq_enable(pxp);
> +       pxp->global_state_in_suspend = false;
> +
> +       /*
> +        * if the display loses power during runtime suspend it will cause the
> +        * session to become invalid, so to be safe we always re-create it. The
> +        * MEI module is still bound, so this is the same as a teardown event,
> +        * hence we can just pretend we received the irq.
> +        */
> +       intel_pxp_mark_termination_in_progress(pxp);
> +
> +       spin_lock_irq(&gt->irq_lock);
> +       intel_pxp_irq_handler(pxp, GEN12_DISPLAY_PXP_STATE_TERMINATED_INTERRUPT);
> +       spin_unlock_irq(&gt->irq_lock);
> +
> +       return ret;

return random() ?

> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> index 488006a0cf39..bb981d38c2fe 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> @@ -25,8 +25,14 @@ static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
>         intel_wakeref_t wakeref;
>         u32 sip = 0;
>  
> -       with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> -               sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
> +       /* if we're suspended the session is considered off */
> +       wakeref = intel_runtime_pm_get_if_in_use(gt->uncore->rpm);
> +       if (!wakeref)
> +               return false;
> +
> +       sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
> +
> +       intel_runtime_pm_put(gt->uncore->rpm, wakeref);

with_intel_runtime_pm_if_in_use(gt->uncore->rpm, wakeref)
	sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);

>  
>         return sip & BIT(id);
>  }
> @@ -43,12 +49,18 @@ static int pxp_wait_for_session_state(struct intel_pxp *pxp, u32 id, bool in_pla
>         u32 mask = BIT(id);
>         int ret;
>  
> -       with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> -               ret = intel_wait_for_register(gt->uncore,
> -                                             GEN12_KCR_SIP,
> -                                             mask,
> -                                             in_play ? mask : 0,
> -                                             100);
> +       /* if we're suspended the session is considered off */
> +       wakeref = intel_runtime_pm_get_if_in_use(gt->uncore->rpm);
> +       if (!wakeref)
> +               return in_play ? -ENODEV : 0;
> +
> +       ret = intel_wait_for_register(gt->uncore,
> +                                     GEN12_KCR_SIP,
> +                                     mask,
> +                                     in_play ? mask : 0,
> +                                     100);
> +
> +       intel_runtime_pm_put(gt->uncore->rpm, wakeref);

Ditto
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
