Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3D228DC65
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 11:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7128F6EA2D;
	Wed, 14 Oct 2020 09:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E15EF6EA2C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 09:09:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22710266-1500050 for multiple; Wed, 14 Oct 2020 10:09:45 +0100
MIME-Version: 1.0
In-Reply-To: <f2794841-c430-0ea7-f55b-7de3ff30b6db@linux.intel.com>
References: <20201013153506.4215-1-chris@chris-wilson.co.uk>
 <475985b5-8e4d-81f3-5f00-58eecbbdf865@linux.intel.com>
 <160266499092.7159.8106976190790917919@build.alporthouse.com>
 <f2794841-c430-0ea7-f55b-7de3ff30b6db@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 10:09:43 +0100
Message-ID: <160266658388.7159.9238806468281352754@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Confirm the context survives
 execution
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

Quoting Tvrtko Ursulin (2020-10-14 10:06:11)
> 
> On 14/10/2020 09:43, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-10-14 09:36:08)
> >>
> >> On 13/10/2020 16:35, Chris Wilson wrote:
> >>> Repeat our sanitychecks from before execution to after execution. One
> >>> expects that if we were to see these, the gpu would already be on fire,
> >>> but the timing may be informative.
> >>>
> >>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >>> ---
> >>>    drivers/gpu/drm/i915/gt/intel_lrc.c | 10 +++++++---
> >>>    1 file changed, 7 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> index 287537089c77..3dbdd5d0cb60 100644
> >>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> @@ -1216,7 +1216,8 @@ static void intel_engine_context_out(struct intel_engine_cs *engine)
> >>>    
> >>>    static void
> >>>    execlists_check_context(const struct intel_context *ce,
> >>> -                     const struct intel_engine_cs *engine)
> >>> +                     const struct intel_engine_cs *engine,
> >>> +                     const char *when)
> >>>    {
> >>>        const struct intel_ring *ring = ce->ring;
> >>>        u32 *regs = ce->lrc_reg_state;
> >>> @@ -1251,7 +1252,7 @@ execlists_check_context(const struct intel_context *ce,
> >>>                valid = false;
> >>>        }
> >>>    
> >>> -     WARN_ONCE(!valid, "Invalid lrc state found before submission\n");
> >>> +     WARN_ONCE(!valid, "Invalid lrc state found %s submission\n", when);
> >>>    }
> >>>    
> >>>    static void restore_default_state(struct intel_context *ce,
> >>> @@ -1347,7 +1348,7 @@ __execlists_schedule_in(struct i915_request *rq)
> >>>                reset_active(rq, engine);
> >>>    
> >>>        if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> >>> -             execlists_check_context(ce, engine);
> >>> +             execlists_check_context(ce, engine, "before");
> >>>    
> >>>        if (ce->tag) {
> >>>                /* Use a fixed tag for OA and friends */
> >>> @@ -1418,6 +1419,9 @@ __execlists_schedule_out(struct i915_request *rq,
> >>>         * refrain from doing non-trivial work here.
> >>>         */
> >>>    
> >>> +     if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> >>> +             execlists_check_context(ce, engine, "after");
> >>> +
> >>
> >> CI failures here are either something super scary or a simple mistake
> >> which I cannot see. Or is engine retire, possible queued up before,
> >> racing with current schedule_out?
> > 
> > It's the unpark while the process_csb is not yet flushed, so we scrub
> > the kernel_context before it is scheduled-out. It could in theory be a
> > real problem with our scrubbing to simulate an issue causing an issue,
> > but the timing is quite slim.
> 
> Unpark with unflushed process_csb? I thought maybe you meant park, but 
> poisoning is indeed in unpark. Put pending process_csb means engine is 
> supposed to be unparked already. Or you are saying it went through the 
> parked-unparked cycle all with pending process_csb?

Yes. A pending CSB has a GT wakeref (for the interrupt) not an engine
wakeref, which boils down to that we use the engine parking to force the
context switch with one last submission.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
