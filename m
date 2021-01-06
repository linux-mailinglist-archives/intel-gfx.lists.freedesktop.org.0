Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0DF2EB6BD
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 01:15:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BABB89D7F;
	Wed,  6 Jan 2021 00:15:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1288C89D7F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 00:15:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23512856-1500050 for multiple; Wed, 06 Jan 2021 00:15:07 +0000
MIME-Version: 1.0
In-Reply-To: <e5c91501-e164-0bb6-a92d-f38f2a618d20@intel.com>
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-6-daniele.ceraolospurio@intel.com>
 <160988988224.14894.10188123155348129183@build.alporthouse.com>
 <e5c91501-e164-0bb6-a92d-f38f2a618d20@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 06 Jan 2021 00:15:05 +0000
Message-ID: <160989210594.14894.9421268000220341017@build.alporthouse.com>
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

Quoting Daniele Ceraolo Spurio (2021-01-05 23:56:52)
> 
> 
> On 1/5/2021 3:38 PM, Chris Wilson wrote:
> > Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:47)
> >> In GuC submission mode the CS is owned by the GuC FW, so all CS status
> >> interrupts are handled by it. We only need the user interrupt as that
> >> signals request completion.
> >>
> >> Since we're now starting the engines directly in GuC submission mode
> >> when selected, we can stop switching back and forth between the
> >> execlists and the GuC programming and select directly the correct
> >> interrupt mask.
> >>
> >> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >> Cc: Matthew Brost <matthew.brost@intel.com>
> >> Cc: John Harrison <john.c.harrison@intel.com>
> >> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 18 ++++++-----
> >>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 31 -------------------
> >>   2 files changed, 11 insertions(+), 38 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> >> index 9830342aa6f4..7b2b8cb2d2be 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> >> @@ -237,14 +237,18 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
> >>   
> >>   void gen11_gt_irq_postinstall(struct intel_gt *gt)
> >>   {
> >> -       const u32 irqs =
> >> -               GT_CS_MASTER_ERROR_INTERRUPT |
> >> -               GT_RENDER_USER_INTERRUPT |
> >> -               GT_CONTEXT_SWITCH_INTERRUPT |
> >> -               GT_WAIT_SEMAPHORE_INTERRUPT;
> >>          struct intel_uncore *uncore = gt->uncore;
> >> -       const u32 dmask = irqs << 16 | irqs;
> >> -       const u32 smask = irqs << 16;
> >> +       u32 irqs = GT_RENDER_USER_INTERRUPT;
> >> +       u32 dmask;
> >> +       u32 smask;
> >> +
> >> +       if (!intel_uc_wants_guc_submission(&gt->uc))
> >> +               irqs |= GT_CS_MASTER_ERROR_INTERRUPT |
> >> +                       GT_CONTEXT_SWITCH_INTERRUPT |
> >> +                       GT_WAIT_SEMAPHORE_INTERRUPT;
> > Hmm, we should stop performing this by default then, and make the
> > execlists setup request the interrupt vector it desires.
> >
> > That's certainly a bit more fiddly to untangle the packed iir across
> > multiple gen. :|
> 
> I had considered that, but this is a gt-level setup while the execlists 
> submission code is currently all engine-based, so I couldn't find a good 
> place to move this to and I didn't want to add a new function just for 
> it. Any preference?

I think we should definitely strive to avoid having too many backend-
conditional paths in the common routines, and we can certainly adjust
the interrupts as we enable each engine (it certainly would help when
debugging by removing engines by removing spurious iir).

I guess we may end up with something like
gen8_gt_unmask_engine_irq(struct intel_gt *gt,
			  struct intel_engine_cs *engine,
			  u16 iir)
{
	if (INTEL_GEN(gt->i915) >= 11)
		__gen11...
	else
		__gen8...
}
[Not sure if gen8_gt or intel_gt; I chose gen8_gt for the iir definition]

Then that would fit reasonably into logical_ring_default_irqs().
Hindsight says that if we had done that earlier, we could have avoided
maintaining the same engine-iir in two different sites. So maybe worth
a bit of effort.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
