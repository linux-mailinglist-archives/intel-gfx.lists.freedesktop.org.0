Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EDF30F5A6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 15:59:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58E566EDBB;
	Thu,  4 Feb 2021 14:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 778DC6EDBB
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 14:59:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23787881-1500050 for multiple; Thu, 04 Feb 2021 14:59:27 +0000
MIME-Version: 1.0
In-Reply-To: <79b782ae-dbe5-2d3c-7093-c1f9364eba55@linux.intel.com>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-26-chris@chris-wilson.co.uk>
 <79b782ae-dbe5-2d3c-7093-c1f9364eba55@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 04 Feb 2021 14:59:26 +0000
Message-ID: <161245076627.3075.9732775786725541361@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 26/57] drm/i915: Move finding the current
 active request to the scheduler
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

Quoting Tvrtko Ursulin (2021-02-04 14:30:18)
> 
> On 01/02/2021 08:56, Chris Wilson wrote:
> > Since finding the currently active request starts by walking the
> > scheduler lists under the scheduler lock, move the routine to the
> > scheduler.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine.h        |  3 -
> >   drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 71 ++--------------
> >   .../drm/i915/gt/intel_execlists_submission.c  | 83 ++++++++++++++++++-
> >   drivers/gpu/drm/i915/i915_gpu_error.c         | 18 ++--
> >   drivers/gpu/drm/i915/i915_gpu_error.h         |  4 +-
> >   drivers/gpu/drm/i915/i915_request.c           | 71 +---------------
> >   drivers/gpu/drm/i915/i915_request.h           |  8 ++
> >   drivers/gpu/drm/i915/i915_scheduler.c         | 50 +++++++++++
> >   drivers/gpu/drm/i915/i915_scheduler_types.h   |  4 +
> >   9 files changed, 162 insertions(+), 150 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> > index 52bba16c62e8..c530839627bb 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> > @@ -230,9 +230,6 @@ void intel_engine_dump(struct intel_engine_cs *engine,
> >   ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine,
> >                                  ktime_t *now);
> >   
> > -struct i915_request *
> > -intel_engine_find_active_request(struct intel_engine_cs *engine);
> > -
> >   u32 intel_engine_context_size(struct intel_gt *gt, u8 class);
> >   
> >   void intel_engine_init_active(struct intel_engine_cs *engine,
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index b5b957283f2c..5751a529b2df 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -1277,7 +1277,7 @@ bool intel_engine_can_store_dword(struct intel_engine_cs *engine)
> >       }
> >   }
> >   
> > -static struct intel_timeline *get_timeline(struct i915_request *rq)
> > +static struct intel_timeline *get_timeline(const struct i915_request *rq)
> >   {
> >       struct intel_timeline *tl;
> >   
> > @@ -1505,7 +1505,8 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
> >       }
> >   }
> >   
> > -static void print_request_ring(struct drm_printer *m, struct i915_request *rq)
> > +static void
> > +print_request_ring(struct drm_printer *m, const struct i915_request *rq)
> >   {
> >       void *ring;
> >       int size;
> > @@ -1590,7 +1591,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
> >   {
> >       struct i915_gpu_error * const error = &engine->i915->gpu_error;
> >       struct i915_sched *se = intel_engine_get_scheduler(engine);
> > -     struct i915_request *rq;
> > +     const struct i915_request *rq;
> >       intel_wakeref_t wakeref;
> >       unsigned long flags;
> >       ktime_t dummy;
> > @@ -1631,8 +1632,9 @@ void intel_engine_dump(struct intel_engine_cs *engine,
> >   
> >       drm_printf(m, "\tRequests:\n");
> >   
> > +     rcu_read_lock();
> >       spin_lock_irqsave(&se->lock, flags);
> > -     rq = intel_engine_find_active_request(engine);
> > +     rq = se->active_request(se);
> 
> Wrap with i915_sched_find_active_request perhaps?

Ok.

> >       if (rq) {
> >               struct intel_timeline *tl = get_timeline(rq);
> >   
> > @@ -1664,6 +1666,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
> >       }
> >       drm_printf(m, "\tOn hold?: %lu\n", list_count(&se->hold));
> >       spin_unlock_irqrestore(&se->lock, flags);
> > +     rcu_read_unlock();
> >   
> >       drm_printf(m, "\tMMIO base:  0x%08x\n", engine->mmio_base);
> >       wakeref = intel_runtime_pm_get_if_in_use(engine->uncore->rpm);
> > @@ -1712,66 +1715,6 @@ ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine, ktime_t *now)
> >       return ktime_add(total, start);
> >   }
> >   
> > -static bool match_ring(struct i915_request *rq)
> > -{
> > -     u32 ring = ENGINE_READ(rq->engine, RING_START);
> > -
> > -     return ring == i915_ggtt_offset(rq->ring->vma);
> > -}
> > -
> > -struct i915_request *
> > -intel_engine_find_active_request(struct intel_engine_cs *engine)
> > -{
> > -     struct i915_sched *se = intel_engine_get_scheduler(engine);
> > -     struct i915_request *request, *active = NULL;
> > -
> > -     /*
> > -      * We are called by the error capture, reset and to dump engine
> > -      * state at random points in time. In particular, note that neither is
> > -      * crucially ordered with an interrupt. After a hang, the GPU is dead
> > -      * and we assume that no more writes can happen (we waited long enough
> > -      * for all writes that were in transaction to be flushed) - adding an
> > -      * extra delay for a recent interrupt is pointless. Hence, we do
> > -      * not need an engine->irq_seqno_barrier() before the seqno reads.
> > -      * At all other times, we must assume the GPU is still running, but
> > -      * we only care about the snapshot of this moment.
> > -      */
> > -     lockdep_assert_held(&se->lock);
> > -
> > -     rcu_read_lock();
> > -     request = execlists_active(&engine->execlists);
> > -     if (request) {
> > -             struct intel_timeline *tl = request->context->timeline;
> > -
> > -             list_for_each_entry_from_reverse(request, &tl->requests, link) {
> > -                     if (__i915_request_is_complete(request))
> > -                             break;
> > -
> > -                     active = request;
> > -             }
> > -     }
> > -     rcu_read_unlock();
> > -     if (active)
> > -             return active;
> > -
> > -     list_for_each_entry(request, &se->requests, sched.link) {
> > -             if (__i915_request_is_complete(request))
> > -                     continue;
> > -
> > -             if (!__i915_request_has_started(request))
> > -                     continue;
> > -
> > -             /* More than one preemptible request may match! */
> > -             if (!match_ring(request))
> > -                     continue;
> > -
> > -             active = request;
> > -             break;
> > -     }
> > -
> > -     return active;
> > -}
> > -
> >   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> >   #include "mock_engine.c"
> >   #include "selftest_engine.c"
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index 33c1a833df20..8b848adb65b7 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -2336,7 +2336,7 @@ static void sanitize_hwsp(struct intel_engine_cs *engine)
> >   
> >   static void execlists_sanitize(struct intel_engine_cs *engine)
> >   {
> > -     GEM_BUG_ON(execlists_active(&engine->execlists));
> > +     GEM_BUG_ON(*engine->execlists.active);
> >   
> >       /*
> >        * Poison residual state on resume, in case the suspend didn't!
> > @@ -2755,6 +2755,85 @@ static void execlists_park(struct intel_engine_cs *engine)
> >       cancel_timer(&engine->execlists.preempt);
> >   }
> >   
> > +static const struct i915_request *
> > +execlists_active_request(struct i915_sched *se)
> > +{
> > +     struct intel_engine_cs *engine =
> > +             container_of(se, typeof(*engine), sched);
> > +     struct i915_request *rq;
> > +
> > +     rq = execlists_active(&engine->execlists);
> > +     if (rq)
> > +             rq = active_request(rq->context->timeline, rq);
> 
> Now which active_request() is this?

execlists search function along the active context.

> The one local to 
> intel_execlist_submission.c and not the common part extracted to 
> i915_scheduler.c? What is the latter used for then?

For the ringbuffer. The guc does still try to use it, but it's not
accurate for the guc.

It ends up being called i915_sched_default_active_request().

> > +static inline bool i915_request_is_executing(const struct i915_request *rq)
> > +{
> > +     if (i915_request_is_active(rq))
> > +             return true;
> > +
> > +     return i915_request_get_scheduler(rq)->is_executing(rq);
> 
> Isn't active flag a superset of the "is executing" check in which case 
> how this makes sense? I could understand:
> 
> if !active
>         return false;
> 
> return ->is_executing

is_active() is not always accurate. When set, we know we have passed it
to HW and currently believe that is on HW. When not set, we may have
remove it from the HW queue, but the HW has not preempted away from it.

        /*
         * Even if we have unwound the request, it may still be on
         * the GPU (preempt-to-busy). If that request is inside an
         * unpreemptible critical section, it will not be removed. Some
         * GPU functions may even be stuck waiting for the paired request
         * (__await_execution) to be submitted and cannot be preempted
         * until the bond is executing.
         *
         * As we know that there are always preemption points between
         * requests, we know that only the currently executing request
         * may be still active even though we have cleared the flag.
         * However, we can't rely on our tracking of ELSP[0] to know
         * which request is currently active and so maybe stuck, as
         * the tracking maybe an event behind. Instead assume that
         * if the context is still inflight, then it is still active
         * even if the active flag has been cleared.
         *
         * To further complicate matters, if there a pending promotion, the HW
         * may either perform a context switch to the second inflight execlists,
         * or it may switch to the pending set of execlists. In the case of the
         * latter, it may send the ACK and we process the event copying the
         * pending[] over top of inflight[], _overwriting_ our *active. Since
         * this implies the HW is arbitrating and not struck in *active, we do
         * not worry about complete accuracy, but we do require no read/write
         * tearing of the pointer [the read of the pointer must be valid, even
         * as the array is being overwritten, for which we require the writes
         * to avoid tearing.]
         *
         * Note that the read of *execlists->active may race with the promotion
         * of execlists->pending[] to execlists->inflight[], overwriting
         * the value at *execlists->active. This is fine. The promotion implies
         * that we received an ACK from the HW, and so the context is not
         * stuck -- if we do not see ourselves in *active, the inflight status
         * is valid. If instead we see ourselves being copied into *active,
         * we are inflight and may signal the callback.
         */

That's the bit we moved to the backend and hid behind is_executing().

For the inline,

/* Double check with the backend in case the request is still on the HW */

Or something.

> >   #endif /* I915_REQUEST_H */
> > diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> > index 620db6430a10..cb27bcb7a1f6 100644
> > --- a/drivers/gpu/drm/i915/i915_scheduler.c
> > +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> > @@ -91,6 +91,54 @@ static void i915_sched_init_ipi(struct i915_sched_ipi *ipi)
> >       ipi->list = NULL;
> >   }
> >   
> > +static bool match_ring(struct i915_request *rq)
> > +{
> > +     const struct intel_engine_cs *engine = rq->engine;
> > +     const struct intel_ring *ring = rq->ring;
> > +
> > +     return ENGINE_READ(engine, RING_START) == i915_ggtt_offset(ring->vma);
> > +}
> 
> Ouchy ouch. I'll look the other way. :)

Yeah, good old legacy ringbuffer search function... As we still have no
better routine for the guc.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
