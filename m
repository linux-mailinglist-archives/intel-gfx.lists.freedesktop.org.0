Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3984305EC0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 15:55:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2A06E47E;
	Wed, 27 Jan 2021 14:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE1C6E47E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 14:55:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23715573-1500050 for multiple; Wed, 27 Jan 2021 14:55:00 +0000
MIME-Version: 1.0
In-Reply-To: <906c5a8d-256a-bdb9-a7c5-83d68c829e4d@linux.intel.com>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-19-chris@chris-wilson.co.uk>
 <41a8c76f-d3aa-539d-1742-faa32c05d397@linux.intel.com>
 <161175810370.2943.17339901262632285916@build.alporthouse.com>
 <906c5a8d-256a-bdb9-a7c5-83d68c829e4d@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 14:55:02 +0000
Message-ID: <161175930260.2943.16855410974272014785@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 19/41] drm/i915/gt: Show scheduler queues
 when dumping state
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
Cc: thomas.hellstrom@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-01-27 14:50:19)
> 
> On 27/01/2021 14:35, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2021-01-27 14:13:11)
> >>
> >> On 25/01/2021 14:01, Chris Wilson wrote:
> >>> Move the scheduler pretty printer from out of the execlists state to
> >>> match its more common location.
> >>>
> >>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >>> ---
> >>>    drivers/gpu/drm/i915/gt/intel_engine_cs.c | 34 +++++++++++++----------
> >>>    1 file changed, 19 insertions(+), 15 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> >>> index cdd07aeada05..2f9a8960144b 100644
> >>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> >>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> >>> @@ -1443,20 +1443,15 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
> >>>    
> >>>        if (intel_engine_in_guc_submission_mode(engine)) {
> >>>                /* nothing to print yet */
> >>> -     } else if (HAS_EXECLISTS(dev_priv)) {
> >>> -             struct i915_request * const *port, *rq;
> >>>                const u32 *hws =
> >>>                        &engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
> >>>                const u8 num_entries = execlists->csb_size;
> >>>                unsigned int idx;
> >>>                u8 read, write;
> >>>    
> >>> -             drm_printf(m, "\tExeclist tasklet queued? %s (%s), preempt? %s, timeslice? %s\n",
> >>> -                        yesno(test_bit(TASKLET_STATE_SCHED,
> >>> -                                       &engine->active.tasklet.state)),
> >>> -                        enableddisabled(!atomic_read(&engine->active.tasklet.count)),
> >>> -                        repr_timer(&engine->execlists.preempt),
> >>> -                        repr_timer(&engine->execlists.timer));
> >>> +             drm_printf(m, "\tExeclists preempt? %s, timeslice? %s\n",
> >>> +                        repr_timer(&execlists->preempt),
> >>> +                        repr_timer(&execlists->timer));
> >>>    
> >>>                read = execlists->csb_head;
> >>>                write = READ_ONCE(*execlists->csb_write);
> >>> @@ -1477,6 +1472,22 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
> >>>                        drm_printf(m, "\tExeclist CSB[%d]: 0x%08x, context: %d\n",
> >>>                                   idx, hws[idx * 2], hws[idx * 2 + 1]);
> >>>                }
> >>> +     } else if (INTEL_GEN(dev_priv) > 6) {
> >>> +             drm_printf(m, "\tPP_DIR_BASE: 0x%08x\n",
> >>> +                        ENGINE_READ(engine, RING_PP_DIR_BASE));
> >>> +             drm_printf(m, "\tPP_DIR_BASE_READ: 0x%08x\n",
> >>> +                        ENGINE_READ(engine, RING_PP_DIR_BASE_READ));
> >>> +             drm_printf(m, "\tPP_DIR_DCLV: 0x%08x\n",
> >>> +                        ENGINE_READ(engine, RING_PP_DIR_DCLV));
> >>> +     }
> >>> +
> >>> +     if (engine->active.tasklet.func) {
> >>> +             struct i915_request * const *port, *rq;
> >>> +
> >>> +             drm_printf(m, "\tTasklet queued? %s (%s)\n",
> >>> +                        yesno(test_bit(TASKLET_STATE_SCHED,
> >>> +                                       &engine->active.tasklet.state)),
> >>> +                        enableddisabled(!atomic_read(&engine->active.tasklet.count)));
> >>
> >> Or have i915_sched_print_state() exported? Again it will depend on how
> >> clean split will be possible.
> > 
> > Not quite, unfortunately this is not dumping generic state but the
> > backend bookkeeping for execlists/ringscheduler. Common for that pair,
> > not so common with the guc.
> > 
> > I guess I oversold it.
> 
> Okay I see it after a less superficial look. I guess it's okay. Too hard 
> to get perfect separation so I'll focus on the scheduling changes.

Inside intel_execlists_show_requests, we have the scheduler list pretty
printer. Maybe something to salvage here after all.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
