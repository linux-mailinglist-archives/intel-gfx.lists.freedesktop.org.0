Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 104132EB75B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 02:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8816D89C1C;
	Wed,  6 Jan 2021 01:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78DF189C1C
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 01:05:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23513038-1500050 for multiple; Wed, 06 Jan 2021 01:05:31 +0000
MIME-Version: 1.0
In-Reply-To: <20210105231947.31235-6-daniele.ceraolospurio@intel.com>
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-6-daniele.ceraolospurio@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 06 Jan 2021 01:05:29 +0000
Message-ID: <160989512970.14894.1105831112145716869@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/guc: enable only the user
 interrupt when using GuC submission
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

Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:47)
> In GuC submission mode the CS is owned by the GuC FW, so all CS status
> interrupts are handled by it. We only need the user interrupt as that
> signals request completion.
> 
> Since we're now starting the engines directly in GuC submission mode
> when selected, we can stop switching back and forth between the
> execlists and the GuC programming and select directly the correct
> interrupt mask.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: John Harrison <john.c.harrison@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 18 ++++++-----
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 31 -------------------
>  2 files changed, 11 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> index 9830342aa6f4..7b2b8cb2d2be 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -237,14 +237,18 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
>  
>  void gen11_gt_irq_postinstall(struct intel_gt *gt)
>  {
> -       const u32 irqs =
> -               GT_CS_MASTER_ERROR_INTERRUPT |
> -               GT_RENDER_USER_INTERRUPT |
> -               GT_CONTEXT_SWITCH_INTERRUPT |
> -               GT_WAIT_SEMAPHORE_INTERRUPT;
>         struct intel_uncore *uncore = gt->uncore;
> -       const u32 dmask = irqs << 16 | irqs;
> -       const u32 smask = irqs << 16;
> +       u32 irqs = GT_RENDER_USER_INTERRUPT;
> +       u32 dmask;
> +       u32 smask;
> +
> +       if (!intel_uc_wants_guc_submission(&gt->uc))
> +               irqs |= GT_CS_MASTER_ERROR_INTERRUPT |
> +                       GT_CONTEXT_SWITCH_INTERRUPT |
> +                       GT_WAIT_SEMAPHORE_INTERRUPT;

Since these are all inside the engine mask as well, we can set the GT
iir with minimal concern. Is there any advantage in having a patch with
	if (!intel_uc_wants_guc_submission(&gt->uc))
here at this point in time?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
