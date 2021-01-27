Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5ED305E2E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 15:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719026E5C1;
	Wed, 27 Jan 2021 14:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AB1D6E5C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 14:24:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23715187-1500050 for multiple; Wed, 27 Jan 2021 14:24:35 +0000
MIME-Version: 1.0
In-Reply-To: <bab1b4e7-7487-a057-3514-c26e3afc9350@linux.intel.com>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-18-chris@chris-wilson.co.uk>
 <bab1b4e7-7487-a057-3514-c26e3afc9350@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 14:24:37 +0000
Message-ID: <161175747708.2943.12362944581195566531@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 18/41] drm/i915: Move tasklet from execlists
 to sched
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

Quoting Tvrtko Ursulin (2021-01-27 14:10:55)
> 
> + Matt to check on how this fits with GuC. This patch and a few before 
> it in this series.
> 
> The split between physical and scheduling engine (i915_sched_engine) 
> makes sense to me. Gut feeling says it should work for GuC as well, in 
> principle.
> 
> A small comment or two below:
> 
> On 25/01/2021 14:01, Chris Wilson wrote:
> > Move the scheduling tasklists out of the execlists backend into the
> > per-engine scheduling bookkeeping.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine.h        | 14 ----
> >   drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 11 ++--
> >   drivers/gpu/drm/i915/gt/intel_engine_types.h  |  5 --
> >   .../drm/i915/gt/intel_execlists_submission.c  | 65 +++++++++----------
> >   drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
> >   drivers/gpu/drm/i915/gt/selftest_execlists.c  | 16 ++---
> >   drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  2 +-
> >   drivers/gpu/drm/i915/gt/selftest_lrc.c        |  6 +-
> >   drivers/gpu/drm/i915/gt/selftest_reset.c      |  2 +-
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 18 ++---
> >   drivers/gpu/drm/i915/i915_scheduler.c         | 14 ++--
> >   drivers/gpu/drm/i915/i915_scheduler.h         | 20 ++++++
> >   drivers/gpu/drm/i915/i915_scheduler_types.h   |  6 ++
> >   .../gpu/drm/i915/selftests/i915_scheduler.c   | 16 ++---
> >   14 files changed, 99 insertions(+), 98 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> > index 20974415e7d8..801ae54cf60d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> > @@ -122,20 +122,6 @@ execlists_active(const struct intel_engine_execlists *execlists)
> >       return active;
> >   }
> >   
> > -static inline void
> > -execlists_active_lock_bh(struct intel_engine_execlists *execlists)
> > -{
> > -     local_bh_disable(); /* prevent local softirq and lock recursion */
> > -     tasklet_lock(&execlists->tasklet);
> > -}
> > -
> > -static inline void
> > -execlists_active_unlock_bh(struct intel_engine_execlists *execlists)
> > -{
> > -     tasklet_unlock(&execlists->tasklet);
> > -     local_bh_enable(); /* restore softirq, and kick ksoftirqd! */
> > -}
> > -
> >   static inline u32
> >   intel_read_status_page(const struct intel_engine_cs *engine, int reg)
> >   {
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index ef225da35399..cdd07aeada05 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -902,7 +902,6 @@ int intel_engines_init(struct intel_gt *gt)
> >   void intel_engine_cleanup_common(struct intel_engine_cs *engine)
> >   {
> >       i915_sched_fini_engine(&engine->active);
> > -     tasklet_kill(&engine->execlists.tasklet); /* flush the callback */
> >   
> >       intel_breadcrumbs_free(engine->breadcrumbs);
> >   
> > @@ -1187,7 +1186,7 @@ static bool ring_is_idle(struct intel_engine_cs *engine)
> >   
> >   void __intel_engine_flush_submission(struct intel_engine_cs *engine, bool sync)
> >   {
> > -     struct tasklet_struct *t = &engine->execlists.tasklet;
> > +     struct tasklet_struct *t = &engine->active.tasklet;
> >   
> >       if (!t->func)
> >               return;
> > @@ -1454,8 +1453,8 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
> >   
> >               drm_printf(m, "\tExeclist tasklet queued? %s (%s), preempt? %s, timeslice? %s\n",
> >                          yesno(test_bit(TASKLET_STATE_SCHED,
> > -                                       &engine->execlists.tasklet.state)),
> > -                        enableddisabled(!atomic_read(&engine->execlists.tasklet.count)),
> > +                                       &engine->active.tasklet.state)),
> > +                        enableddisabled(!atomic_read(&engine->active.tasklet.count)),
> >                          repr_timer(&engine->execlists.preempt),
> >                          repr_timer(&engine->execlists.timer));
> >   
> > @@ -1479,7 +1478,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
> >                                  idx, hws[idx * 2], hws[idx * 2 + 1]);
> >               }
> >   
> > -             execlists_active_lock_bh(execlists);
> > +             i915_sched_lock_bh(&engine->active);
> >               rcu_read_lock();
> >               for (port = execlists->active; (rq = *port); port++) {
> >                       char hdr[160];
> > @@ -1510,7 +1509,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
> >                       i915_request_show(m, rq, hdr, 0);
> >               }
> >               rcu_read_unlock();
> > -             execlists_active_unlock_bh(execlists);
> > +             i915_sched_unlock_bh(&engine->active);
> >       } else if (INTEL_GEN(dev_priv) > 6) {
> >               drm_printf(m, "\tPP_DIR_BASE: 0x%08x\n",
> >                          ENGINE_READ(engine, RING_PP_DIR_BASE));
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index c46d70b7e484..76d561c2c6aa 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -138,11 +138,6 @@ struct st_preempt_hang {
> >    * driver and the hardware state for execlist mode of submission.
> >    */
> >   struct intel_engine_execlists {
> > -     /**
> > -      * @tasklet: softirq tasklet for bottom handler
> > -      */
> > -     struct tasklet_struct tasklet;
> > -
> >       /**
> >        * @timer: kick the current context if its timeslice expires
> >        */
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index 756ac388a4a8..1103c8a00af1 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -513,7 +513,7 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
> >               resubmit_virtual_request(rq, ve);
> >   
> >       if (READ_ONCE(ve->request))
> > -             tasklet_hi_schedule(&ve->base.execlists.tasklet);
> > +             i915_sched_kick(&ve->base.active);
> 
> i915_sched_ or i915_sched_engine_ ?

struct i915_request *
__i915_sched_rewind_requests(struct i915_sched_engine *engine);
void __i915_sched_defer_request(struct i915_sched_engine *engine,
                                struct i915_request *request);

bool __i915_sched_suspend_request(struct i915_sched_engine *engine,
                                  struct i915_request *rq);
void __i915_sched_resume_request(struct i915_sched_engine *engine,
                                 struct i915_request *request);

bool i915_sched_suspend_request(struct i915_sched_engine *engine,
                                struct i915_request *request);
void i915_sched_resume_request(struct i915_sched_engine *engine,
                               struct i915_request *rq);

static inline bool i915_sched_is_idle(const struct i915_sched_engine *se)
{
        return i915_priolist_is_empty(&se->queue);
}

static inline bool
i915_sched_is_last_request(const struct i915_sched_engine *se,
                           const struct i915_request *rq)
{
        return list_is_last_rcu(&rq->sched.link, &se->requests);
}

and a few more. I know it should be object_action, but I wanted to avoid
all that typing. [I'm not even sure if i915_sched_engine is best name
for aligning with the guc's requirement of a single scheduling entity.
And then the drm_sched uses entity which roughly aligns with
i915_sched_engine.] Also I have a patch to replace rq->engine with
rq->sched.engine, and that looks like a good step forward (with a just
small caveat of we will have to move the breadcrumbs again, I think a
intel_context.breadcrumbs pointer).

Anyway, since this was the primary means I was interacting with the
scheduler from execlists/ringscheduler, I wanted conciseness that
avoided all the tautology of engines from within engines.

> >   }
> >   
> >   static void __execlists_schedule_out(struct i915_request * const rq,
> > @@ -679,10 +679,9 @@ trace_ports(const struct intel_engine_execlists *execlists,
> >                    dump_port(p1, sizeof(p1), ", ", ports[1]));
> >   }
> >   
> > -static bool
> > -reset_in_progress(const struct intel_engine_execlists *execlists)
> > +static bool reset_in_progress(const struct intel_engine_cs *engine)
> >   {
> > -     return unlikely(!__tasklet_is_enabled(&execlists->tasklet));
> > +     return unlikely(!__tasklet_is_enabled(&engine->active.tasklet));
> >   }
> >   
> >   static __maybe_unused noinline bool
> > @@ -699,7 +698,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
> >       trace_ports(execlists, msg, execlists->pending);
> >   
> >       /* We may be messing around with the lists during reset, lalala */
> > -     if (reset_in_progress(execlists))
> > +     if (reset_in_progress(engine))
> >               return true;
> >   
> >       if (!execlists->pending[0]) {
> > @@ -1084,7 +1083,7 @@ static void start_timeslice(struct intel_engine_cs *engine)
> >                        * its timeslice, so recheck.
> >                        */
> >                       if (!timer_pending(&el->timer))
> > -                             tasklet_hi_schedule(&el->tasklet);
> > +                             i915_sched_kick(&engine->active);
> >                       return;
> >               }
> >   
> > @@ -1664,8 +1663,8 @@ process_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
> >        * access. Either we are inside the tasklet, or the tasklet is disabled
> >        * and we assume that is only inside the reset paths and so serialised.
> >        */
> > -     GEM_BUG_ON(!tasklet_is_locked(&execlists->tasklet) &&
> > -                !reset_in_progress(execlists));
> > +     GEM_BUG_ON(!tasklet_is_locked(&engine->active.tasklet) &&
> > +                !reset_in_progress(engine));
> >       GEM_BUG_ON(!intel_engine_in_execlists_submission_mode(engine));
> >   
> >       /*
> > @@ -2077,13 +2076,13 @@ static noinline void execlists_reset(struct intel_engine_cs *engine)
> >       ENGINE_TRACE(engine, "reset for %s\n", msg);
> >   
> >       /* Mark this tasklet as disabled to avoid waiting for it to complete */
> > -     tasklet_disable_nosync(&engine->execlists.tasklet);
> > +     tasklet_disable_nosync(&engine->active.tasklet);
> >   
> >       ring_set_paused(engine, 1); /* Freeze the current request in place */
> >       execlists_capture(engine);
> >       intel_engine_reset(engine, msg);
> >   
> > -     tasklet_enable(&engine->execlists.tasklet);
> > +     tasklet_enable(&engine->active.tasklet);
> 
> Maybe all access to the tasklet from the backend should go via 
> i915_sched_ helpers to complete the separation?

This is running inside the tasklet, so could be excused for being tightly
coupled with the tasklet.

Since we now have the tasklet itself passed to the tasklet callback (new
tasklet API), a simple way to hide the coupling would be to pass that
local.

> And with some generic 
> naming in case we don't want to trumpet it is a tasklet but instead some 
> higher level concept. Like schedule_enable/disable I don't know.. 
> Depends also how this plugs in the GuC.

Which would suggest to me to avoid too generic naming, as the namespace
is already crowded as we start coupling in with guc actions.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
