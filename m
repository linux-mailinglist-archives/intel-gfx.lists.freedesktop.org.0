Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DB939BF02
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 19:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D17556F87B;
	Fri,  4 Jun 2021 17:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94DD76F878;
 Fri,  4 Jun 2021 17:42:13 +0000 (UTC)
IronPort-SDR: l8h1dtm1z+TfQbnN1fQSR4iB5r0u5lbPTZB7R7tKzCOYysR77A98zZIZrRa6udHu5tomPHmOlU
 xXCYPTfC7oSQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="191447134"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="191447134"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:42:08 -0700
IronPort-SDR: O+9gnMzwkt8rG1XVLQ7Z5+u9+Gw8F/5Fvje4Kyl1lOi8eaQ6AmI0/9vT76NScRbvSMjNnaOvTn
 +Xr+YCexZVtw==
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="483992781"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:42:07 -0700
Date: Fri, 4 Jun 2021 10:35:08 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <20210604173508.GA20279@sdutt-i7>
References: <20210603212722.59719-1-matthew.brost@intel.com>
 <20210603212722.59719-2-matthew.brost@intel.com>
 <CAOFGe964fTFG7f04Z9ktvu4bahHaPMP_gdvKjUpfC3+kwDc_og@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOFGe964fTFG7f04Z9ktvu4bahHaPMP_gdvKjUpfC3+kwDc_og@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Move priolist to new
 i915_sched_engine object
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 04, 2021 at 12:38:22PM -0500, Jason Ekstrand wrote:
> On Thu, Jun 3, 2021 at 4:09 PM Matthew Brost <matthew.brost@intel.com> wrote:
> >
> > Introduce i915_sched_engine object which is lower level data structure
> > that i915_scheduler / generic code can operate on without touching
> > execlist specific structures. This allows additional submission backends
> > to be added without breaking the layering.
> >
> > This is a bit of detour to integrating the i915 with the DRM scheduler
> > but this object will still exist when the DRM scheduler lands in the
> > i915. It will however look a bit different. It will encapsulate the
> > drm_gpu_scheduler object plus and common variables (to the backends)
> > related to scheduling. Regardless this is a step in the right direction.
> >
> > This patch starts the aforementioned transition by moving the the
> > priolist into the i915_sched_engine object.
> >
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 14 +++-
> >  drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  4 +-
> >  drivers/gpu/drm/i915/gt/intel_engine_types.h  | 30 +------
> >  .../drm/i915/gt/intel_execlists_submission.c  | 81 +++++++++++--------
> >  drivers/gpu/drm/i915/gt/mock_engine.c         |  9 ++-
> >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 19 ++---
> >  drivers/gpu/drm/i915/i915_scheduler.c         | 51 +++++++++---
> >  drivers/gpu/drm/i915/i915_scheduler.h         | 18 +++++
> >  drivers/gpu/drm/i915/i915_scheduler_types.h   | 33 ++++++++
> >  9 files changed, 169 insertions(+), 90 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index 3f9a811eb02b..d0f3814440f6 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -583,9 +583,6 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine)
> >         memset(execlists->pending, 0, sizeof(execlists->pending));
> >         execlists->active =
> >                 memset(execlists->inflight, 0, sizeof(execlists->inflight));
> > -
> > -       execlists->queue_priority_hint = INT_MIN;
> > -       execlists->queue = RB_ROOT_CACHED;
> >  }
> >
> >  static void cleanup_status_page(struct intel_engine_cs *engine)
> > @@ -712,6 +709,12 @@ static int engine_setup_common(struct intel_engine_cs *engine)
> >                 goto err_status;
> >         }
> >
> > +       engine->sched_engine = i915_sched_engine_create(ENGINE_PHYSICAL);
> > +       if (!engine->sched_engine) {
> > +               err = -ENOMEM;
> > +               goto err_sched_engine;
> > +       }
> > +
> >         err = intel_engine_init_cmd_parser(engine);
> >         if (err)
> >                 goto err_cmd_parser;
> > @@ -735,6 +738,8 @@ static int engine_setup_common(struct intel_engine_cs *engine)
> >         return 0;
> >
> >  err_cmd_parser:
> > +       i915_sched_engine_put(engine->sched_engine);
> > +err_sched_engine:
> >         intel_breadcrumbs_free(engine->breadcrumbs);
> >  err_status:
> >         cleanup_status_page(engine);
> > @@ -958,6 +963,7 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
> >         GEM_BUG_ON(!list_empty(&engine->active.requests));
> >         tasklet_kill(&engine->execlists.tasklet); /* flush the callback */
> >
> > +       i915_sched_engine_put(engine->sched_engine);
> >         intel_breadcrumbs_free(engine->breadcrumbs);
> >
> >         intel_engine_fini_retire(engine);
> > @@ -1281,7 +1287,7 @@ bool intel_engine_is_idle(struct intel_engine_cs *engine)
> >         intel_engine_flush_submission(engine);
> >
> >         /* ELSP is empty, but there are ready requests? E.g. after reset */
> > -       if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root))
> > +       if (!RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root))
> >                 return false;
> >
> >         /* Ring stopped? */
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > index 47f4397095e5..b6a00dd72808 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > @@ -275,12 +275,12 @@ static int __engine_park(struct intel_wakeref *wf)
> >         intel_breadcrumbs_park(engine->breadcrumbs);
> >
> >         /* Must be reset upon idling, or we may miss the busy wakeup. */
> > -       GEM_BUG_ON(engine->execlists.queue_priority_hint != INT_MIN);
> > +       GEM_BUG_ON(engine->sched_engine->queue_priority_hint != INT_MIN);
> >
> >         if (engine->park)
> >                 engine->park(engine);
> >
> > -       engine->execlists.no_priolist = false;
> > +       engine->sched_engine->no_priolist = false;
> >
> >         /* While gt calls i915_vma_parked(), we have to break the lock cycle */
> >         intel_gt_pm_put_async(engine->gt);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index 9ef349cd5cea..86b41ddec373 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -59,6 +59,7 @@ struct drm_i915_reg_table;
> >  struct i915_gem_context;
> >  struct i915_request;
> >  struct i915_sched_attr;
> > +struct i915_sched_engine;
> >  struct intel_gt;
> >  struct intel_ring;
> >  struct intel_uncore;
> > @@ -152,11 +153,6 @@ struct intel_engine_execlists {
> >          */
> >         struct timer_list preempt;
> >
> > -       /**
> > -        * @default_priolist: priority list for I915_PRIORITY_NORMAL
> > -        */
> > -       struct i915_priolist default_priolist;
> > -
> >         /**
> >          * @ccid: identifier for contexts submitted to this engine
> >          */
> > @@ -191,11 +187,6 @@ struct intel_engine_execlists {
> >          */
> >         u32 reset_ccid;
> >
> > -       /**
> > -        * @no_priolist: priority lists disabled
> > -        */
> > -       bool no_priolist;
> > -
> >         /**
> >          * @submit_reg: gen-specific execlist submission register
> >          * set to the ExecList Submission Port (elsp) register pre-Gen11 and to
> > @@ -238,23 +229,8 @@ struct intel_engine_execlists {
> >         unsigned int port_mask;
> >
> >         /**
> > -        * @queue_priority_hint: Highest pending priority.
> > -        *
> > -        * When we add requests into the queue, or adjust the priority of
> > -        * executing requests, we compute the maximum priority of those
> > -        * pending requests. We can then use this value to determine if
> > -        * we need to preempt the executing requests to service the queue.
> > -        * However, since the we may have recorded the priority of an inflight
> > -        * request we wanted to preempt but since completed, at the time of
> > -        * dequeuing the priority hint may no longer may match the highest
> > -        * available request priority.
> > +        * @virtual: virtual of requests, in priority lists
> 
> Having trouble parsing this.  Did you mean "queue of virtual
> requests"?  Or maybe "virtual queue of requests"?
> 

Yep, this doesn't really make sense. How about:
'queue of requests on a virtual engine, in priority lists'

> >          */
> > -       int queue_priority_hint;
> > -
> > -       /**
> > -        * @queue: queue of requests, in priority lists
> > -        */
> > -       struct rb_root_cached queue;
> >         struct rb_root_cached virtual;
> >
> >         /**
> > @@ -332,6 +308,8 @@ struct intel_engine_cs {
> >                 struct list_head hold; /* ready requests, but on hold */
> >         } active;
> >
> > +       struct i915_sched_engine *sched_engine;
> > +
> >         /* keep a request in reserve for a [pm] barrier under oom */
> >         struct i915_request *request_pool;
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index 8db200422950..d1dc1db3e378 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -273,11 +273,11 @@ static int effective_prio(const struct i915_request *rq)
> >         return prio;
> >  }
> >
> > -static int queue_prio(const struct intel_engine_execlists *execlists)
> > +static int queue_prio(const struct i915_sched_engine *sched_engine)
> >  {
> >         struct rb_node *rb;
> >
> > -       rb = rb_first_cached(&execlists->queue);
> > +       rb = rb_first_cached(&sched_engine->queue);
> >         if (!rb)
> >                 return INT_MIN;
> >
> > @@ -318,7 +318,7 @@ static bool need_preempt(const struct intel_engine_cs *engine,
> >          * to preserve FIFO ordering of dependencies.
> >          */
> >         last_prio = max(effective_prio(rq), I915_PRIORITY_NORMAL - 1);
> > -       if (engine->execlists.queue_priority_hint <= last_prio)
> > +       if (engine->sched_engine->queue_priority_hint <= last_prio)
> >                 return false;
> >
> >         /*
> > @@ -340,7 +340,7 @@ static bool need_preempt(const struct intel_engine_cs *engine,
> >          * context, it's priority would not exceed ELSP[0] aka last_prio.
> >          */
> >         return max(virtual_prio(&engine->execlists),
> > -                  queue_prio(&engine->execlists)) > last_prio;
> > +                  queue_prio(engine->sched_engine)) > last_prio;
> >  }
> >
> >  __maybe_unused static bool
> > @@ -384,7 +384,7 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
> >                         prio = rq_prio(rq);
> >                         pl = i915_sched_lookup_priolist(engine, prio);
> >                 }
> > -               GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
> > +               GEM_BUG_ON(RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root));
> >
> >                 list_move(&rq->sched.link, pl);
> >                 set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> > @@ -1139,7 +1139,7 @@ static bool needs_timeslice(const struct intel_engine_cs *engine,
> >         }
> >
> >         /* Otherwise, ELSP[0] is by itself, but may be waiting in the queue */
> > -       if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root)) {
> > +       if (!RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root)) {
> >                 ENGINE_TRACE(engine, "timeslice required for queue\n");
> >                 return true;
> >         }
> > @@ -1236,6 +1236,7 @@ static bool completed(const struct i915_request *rq)
> >  static void execlists_dequeue(struct intel_engine_cs *engine)
> >  {
> >         struct intel_engine_execlists * const execlists = &engine->execlists;
> > +       struct i915_sched_engine * const sched_engine = engine->sched_engine;
> >         struct i915_request **port = execlists->pending;
> >         struct i915_request ** const last_port = port + execlists->port_mask;
> >         struct i915_request *last, * const *active;
> > @@ -1287,7 +1288,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >                                      last->fence.context,
> >                                      last->fence.seqno,
> >                                      last->sched.attr.priority,
> > -                                    execlists->queue_priority_hint);
> > +                                    sched_engine->queue_priority_hint);
> >                         record_preemption(execlists);
> >
> >                         /*
> > @@ -1313,7 +1314,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >                                      yesno(timer_expired(&execlists->timer)),
> >                                      last->fence.context, last->fence.seqno,
> >                                      rq_prio(last),
> > -                                    execlists->queue_priority_hint,
> > +                                    sched_engine->queue_priority_hint,
> >                                      yesno(timeslice_yield(execlists, last)));
> >
> >                         /*
> > @@ -1384,7 +1385,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >                 GEM_BUG_ON(rq->engine != &ve->base);
> >                 GEM_BUG_ON(rq->context != &ve->context);
> >
> > -               if (unlikely(rq_prio(rq) < queue_prio(execlists))) {
> > +               if (unlikely(rq_prio(rq) < queue_prio(sched_engine))) {
> >                         spin_unlock(&ve->base.active.lock);
> >                         break;
> >                 }
> > @@ -1405,7 +1406,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >                              yesno(engine != ve->siblings[0]));
> >
> >                 WRITE_ONCE(ve->request, NULL);
> > -               WRITE_ONCE(ve->base.execlists.queue_priority_hint, INT_MIN);
> > +               WRITE_ONCE(ve->base.sched_engine->queue_priority_hint, INT_MIN);
> >
> >                 rb = &ve->nodes[engine->id].rb;
> >                 rb_erase_cached(rb, &execlists->virtual);
> > @@ -1450,7 +1451,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >                         break;
> >         }
> >
> > -       while ((rb = rb_first_cached(&execlists->queue))) {
> > +       while ((rb = rb_first_cached(&sched_engine->queue))) {
> >                 struct i915_priolist *p = to_priolist(rb);
> >                 struct i915_request *rq, *rn;
> >
> > @@ -1529,7 +1530,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >                         }
> >                 }
> >
> > -               rb_erase_cached(&p->node, &execlists->queue);
> > +               rb_erase_cached(&p->node, &sched_engine->queue);
> >                 i915_priolist_free(p);
> >         }
> >  done:
> > @@ -1551,7 +1552,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >          * request triggering preemption on the next dequeue (or subsequent
> >          * interrupt for secondary ports).
> >          */
> > -       execlists->queue_priority_hint = queue_prio(execlists);
> > +       sched_engine->queue_priority_hint = queue_prio(sched_engine);
> >         spin_unlock(&engine->active.lock);
> >
> >         /*
> > @@ -2123,8 +2124,8 @@ static void execlists_unhold(struct intel_engine_cs *engine,
> >          */
> >         __execlists_unhold(rq);
> >
> > -       if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
> > -               engine->execlists.queue_priority_hint = rq_prio(rq);
> > +       if (rq_prio(rq) > engine->sched_engine->queue_priority_hint) {
> > +               engine->sched_engine->queue_priority_hint = rq_prio(rq);
> >                 tasklet_hi_schedule(&engine->execlists.tasklet);
> >         }
> >
> > @@ -2455,12 +2456,12 @@ static void queue_request(struct intel_engine_cs *engine,
> >  static bool submit_queue(struct intel_engine_cs *engine,
> >                          const struct i915_request *rq)
> >  {
> > -       struct intel_engine_execlists *execlists = &engine->execlists;
> > +       struct i915_sched_engine *sched_engine = engine->sched_engine;
> >
> > -       if (rq_prio(rq) <= execlists->queue_priority_hint)
> > +       if (rq_prio(rq) <= sched_engine->queue_priority_hint)
> >                 return false;
> >
> > -       execlists->queue_priority_hint = rq_prio(rq);
> > +       sched_engine->queue_priority_hint = rq_prio(rq);
> >         return true;
> >  }
> >
> > @@ -2486,7 +2487,7 @@ static void execlists_submit_request(struct i915_request *request)
> >         } else {
> >                 queue_request(engine, request);
> >
> > -               GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
> > +               GEM_BUG_ON(RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root));
> >                 GEM_BUG_ON(list_empty(&request->sched.link));
> >
> >                 if (submit_queue(engine, request))
> > @@ -2969,12 +2970,13 @@ static void nop_submission_tasklet(struct tasklet_struct *t)
> >                 from_tasklet(engine, t, execlists.tasklet);
> >
> >         /* The driver is wedged; don't process any more events. */
> > -       WRITE_ONCE(engine->execlists.queue_priority_hint, INT_MIN);
> > +       WRITE_ONCE(engine->sched_engine->queue_priority_hint, INT_MIN);
> >  }
> >
> >  static void execlists_reset_cancel(struct intel_engine_cs *engine)
> >  {
> >         struct intel_engine_execlists * const execlists = &engine->execlists;
> > +       struct i915_sched_engine * const sched_engine = engine->sched_engine;
> >         struct i915_request *rq, *rn;
> >         struct rb_node *rb;
> >         unsigned long flags;
> > @@ -3006,7 +3008,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
> >         intel_engine_signal_breadcrumbs(engine);
> >
> >         /* Flush the queued requests to the timeline list (for retiring). */
> > -       while ((rb = rb_first_cached(&execlists->queue))) {
> > +       while ((rb = rb_first_cached(&sched_engine->queue))) {
> >                 struct i915_priolist *p = to_priolist(rb);
> >
> >                 priolist_for_each_request_consume(rq, rn, p) {
> > @@ -3016,7 +3018,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
> >                         }
> >                 }
> >
> > -               rb_erase_cached(&p->node, &execlists->queue);
> > +               rb_erase_cached(&p->node, &sched_engine->queue);
> >                 i915_priolist_free(p);
> >         }
> >
> > @@ -3042,15 +3044,15 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
> >                         }
> >                         i915_request_put(rq);
> >
> > -                       ve->base.execlists.queue_priority_hint = INT_MIN;
> > +                       ve->base.sched_engine->queue_priority_hint = INT_MIN;
> >                 }
> >                 spin_unlock(&ve->base.active.lock);
> >         }
> >
> >         /* Remaining _unready_ requests will be nop'ed when submitted */
> >
> > -       execlists->queue_priority_hint = INT_MIN;
> > -       execlists->queue = RB_ROOT_CACHED;
> > +       sched_engine->queue_priority_hint = INT_MIN;
> > +       sched_engine->queue = RB_ROOT_CACHED;
> >
> >         GEM_BUG_ON(__tasklet_is_enabled(&execlists->tasklet));
> >         execlists->tasklet.callback = nop_submission_tasklet;
> > @@ -3286,7 +3288,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
> >
> >  static struct list_head *virtual_queue(struct virtual_engine *ve)
> >  {
> > -       return &ve->base.execlists.default_priolist.requests;
> > +       return &ve->base.sched_engine->default_priolist.requests;
> >  }
> >
> >  static void rcu_virtual_context_destroy(struct work_struct *wrk)
> > @@ -3344,7 +3346,10 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
> >         lrc_fini(&ve->context);
> >         intel_context_fini(&ve->context);
> >
> > -       intel_breadcrumbs_free(ve->base.breadcrumbs);
> > +       if (ve->base.breadcrumbs)
> > +               intel_breadcrumbs_free(ve->base.breadcrumbs);
> > +       if (ve->base.sched_engine)
> > +               i915_sched_engine_put(ve->base.sched_engine);
> 
> Will either of these ever actually be NULL?  The first line or two
> seems to indicate that breadcrumbs never is.
> 
> >         intel_engine_free_request_pool(&ve->base);
> >
> >         kfree(ve->bonds);
> > @@ -3475,7 +3480,7 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
> >
> >         ENGINE_TRACE(&ve->base, "rq=%llx:%lld, mask=%x, prio=%d\n",
> >                      rq->fence.context, rq->fence.seqno,
> > -                    mask, ve->base.execlists.queue_priority_hint);
> > +                    mask, ve->base.sched_engine->queue_priority_hint);
> >
> >         return mask;
> >  }
> > @@ -3484,7 +3489,7 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
> >  {
> >         struct virtual_engine * const ve =
> >                 from_tasklet(ve, t, base.execlists.tasklet);
> > -       const int prio = READ_ONCE(ve->base.execlists.queue_priority_hint);
> > +       const int prio = READ_ONCE(ve->base.sched_engine->queue_priority_hint);
> >         intel_engine_mask_t mask;
> >         unsigned int n;
> >
> > @@ -3552,7 +3557,7 @@ static void virtual_submission_tasklet(struct tasklet_struct *t)
> >  submit_engine:
> >                 GEM_BUG_ON(RB_EMPTY_NODE(&node->rb));
> >                 node->prio = prio;
> > -               if (first && prio > sibling->execlists.queue_priority_hint)
> > +               if (first && prio > sibling->sched_engine->queue_priority_hint)
> >                         tasklet_hi_schedule(&sibling->execlists.tasklet);
> >
> >  unlock_engine:
> > @@ -3588,7 +3593,7 @@ static void virtual_submit_request(struct i915_request *rq)
> >                 i915_request_put(ve->request);
> >         }
> >
> > -       ve->base.execlists.queue_priority_hint = rq_prio(rq);
> > +       ve->base.sched_engine->queue_priority_hint = rq_prio(rq);
> >         ve->request = i915_request_get(rq);
> >
> >         GEM_BUG_ON(!list_empty(virtual_queue(ve)));
> > @@ -3684,6 +3689,12 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
> >         intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);
> >         intel_engine_init_execlists(&ve->base);
> >
> > +       ve->base.sched_engine = i915_sched_engine_create(ENGINE_VIRTUAL);
> > +       if (!ve->base.sched_engine) {
> > +               err = -ENOMEM;
> > +               goto err_put;
> > +       }
> > +
> >         ve->base.cops = &virtual_context_ops;
> >         ve->base.request_alloc = execlists_request_alloc;
> >
> > @@ -3692,7 +3703,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
> >         ve->base.bond_execute = virtual_bond_execute;
> >
> >         INIT_LIST_HEAD(virtual_queue(ve));
> > -       ve->base.execlists.queue_priority_hint = INT_MIN;
> >         tasklet_setup(&ve->base.execlists.tasklet, virtual_submission_tasklet);
> >
> >         intel_context_init(&ve->context, &ve->base);
> > @@ -3849,6 +3859,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
> >                                    unsigned int max)
> >  {
> >         const struct intel_engine_execlists *execlists = &engine->execlists;
> > +       const struct i915_sched_engine *sched_engine = engine->sched_engine;
> >         struct i915_request *rq, *last;
> >         unsigned long flags;
> >         unsigned int count;
> > @@ -3873,13 +3884,13 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
> >                 show_request(m, last, "\t\t", 0);
> >         }
> >
> > -       if (execlists->queue_priority_hint != INT_MIN)
> > +       if (sched_engine->queue_priority_hint != INT_MIN)
> >                 drm_printf(m, "\t\tQueue priority hint: %d\n",
> > -                          READ_ONCE(execlists->queue_priority_hint));
> > +                          READ_ONCE(sched_engine->queue_priority_hint));
> >
> >         last = NULL;
> >         count = 0;
> > -       for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
> > +       for (rb = rb_first_cached(&sched_engine->queue); rb; rb = rb_next(rb)) {
> >                 struct i915_priolist *p = rb_entry(rb, typeof(*p), node);
> >
> >                 priolist_for_each_request(rq, p) {
> > diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
> > index 32589c6625e1..b1fdba13e900 100644
> > --- a/drivers/gpu/drm/i915/gt/mock_engine.c
> > +++ b/drivers/gpu/drm/i915/gt/mock_engine.c
> > @@ -283,6 +283,7 @@ static void mock_engine_release(struct intel_engine_cs *engine)
> >
> >         GEM_BUG_ON(timer_pending(&mock->hw_delay));
> >
> > +       i915_sched_engine_put(engine->sched_engine);
> >         intel_breadcrumbs_free(engine->breadcrumbs);
> >
> >         intel_context_unpin(engine->kernel_context);
> > @@ -345,6 +346,10 @@ int mock_engine_init(struct intel_engine_cs *engine)
> >  {
> >         struct intel_context *ce;
> >
> > +       engine->sched_engine = i915_sched_engine_create(ENGINE_MOCK);
> > +       if (!engine->sched_engine)
> > +               return -ENOMEM;
> > +
> >         intel_engine_init_active(engine, ENGINE_MOCK);
> >         intel_engine_init_execlists(engine);
> >         intel_engine_init__pm(engine);
> > @@ -352,7 +357,7 @@ int mock_engine_init(struct intel_engine_cs *engine)
> >
> >         engine->breadcrumbs = intel_breadcrumbs_create(NULL);
> >         if (!engine->breadcrumbs)
> > -               return -ENOMEM;
> > +               goto err_schedule;
> >
> >         ce = create_kernel_context(engine);
> >         if (IS_ERR(ce))
> > @@ -366,6 +371,8 @@ int mock_engine_init(struct intel_engine_cs *engine)
> >
> >  err_breadcrumbs:
> >         intel_breadcrumbs_free(engine->breadcrumbs);
> > +err_schedule:
> > +       i915_sched_engine_put(engine->sched_engine);
> >         return -ENOMEM;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 335719f17490..d42dea79ee64 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -182,6 +182,7 @@ static void schedule_out(struct i915_request *rq)
> >  static void __guc_dequeue(struct intel_engine_cs *engine)
> >  {
> >         struct intel_engine_execlists * const execlists = &engine->execlists;
> > +       struct i915_sched_engine * const sched_engine = engine->sched_engine;
> >         struct i915_request **first = execlists->inflight;
> >         struct i915_request ** const last_port = first + execlists->port_mask;
> >         struct i915_request *last = first[0];
> > @@ -204,7 +205,7 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
> >          * event.
> >          */
> >         port = first;
> > -       while ((rb = rb_first_cached(&execlists->queue))) {
> > +       while ((rb = rb_first_cached(&sched_engine->queue))) {
> >                 struct i915_priolist *p = to_priolist(rb);
> >                 struct i915_request *rq, *rn;
> >
> > @@ -224,11 +225,11 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
> >                         last = rq;
> >                 }
> >
> > -               rb_erase_cached(&p->node, &execlists->queue);
> > +               rb_erase_cached(&p->node, &sched_engine->queue);
> >                 i915_priolist_free(p);
> >         }
> >  done:
> > -       execlists->queue_priority_hint =
> > +       sched_engine->queue_priority_hint =
> >                 rb ? to_priolist(rb)->priority : INT_MIN;
> >         if (submit) {
> >                 *port = schedule_in(last, port - execlists->inflight);
> > @@ -338,7 +339,7 @@ static void guc_reset_rewind(struct intel_engine_cs *engine, bool stalled)
> >
> >  static void guc_reset_cancel(struct intel_engine_cs *engine)
> >  {
> > -       struct intel_engine_execlists * const execlists = &engine->execlists;
> > +       struct i915_sched_engine * const sched_engine = engine->sched_engine;
> >         struct i915_request *rq, *rn;
> >         struct rb_node *rb;
> >         unsigned long flags;
> > @@ -368,7 +369,7 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
> >         }
> >
> >         /* Flush the queued requests to the timeline list (for retiring). */
> > -       while ((rb = rb_first_cached(&execlists->queue))) {
> > +       while ((rb = rb_first_cached(&sched_engine->queue))) {
> >                 struct i915_priolist *p = to_priolist(rb);
> >
> >                 priolist_for_each_request_consume(rq, rn, p) {
> > @@ -378,14 +379,14 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
> >                         i915_request_mark_complete(rq);
> >                 }
> >
> > -               rb_erase_cached(&p->node, &execlists->queue);
> > +               rb_erase_cached(&p->node, &sched_engine->queue);
> >                 i915_priolist_free(p);
> >         }
> >
> >         /* Remaining _unready_ requests will be nop'ed when submitted */
> >
> > -       execlists->queue_priority_hint = INT_MIN;
> > -       execlists->queue = RB_ROOT_CACHED;
> > +       sched_engine->queue_priority_hint = INT_MIN;
> > +       sched_engine->queue = RB_ROOT_CACHED;
> >
> >         spin_unlock_irqrestore(&engine->active.lock, flags);
> >  }
> > @@ -540,7 +541,7 @@ static void guc_submit_request(struct i915_request *rq)
> >
> >         queue_request(engine, rq, rq_prio(rq));
> >
> > -       GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
> > +       GEM_BUG_ON(RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root));
> >         GEM_BUG_ON(list_empty(&rq->sched.link));
> >
> >         tasklet_hi_schedule(&engine->execlists.tasklet);
> > diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> > index efa638c3acc7..4953874a9ba6 100644
> > --- a/drivers/gpu/drm/i915/i915_scheduler.c
> > +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> > @@ -40,7 +40,7 @@ static inline struct i915_priolist *to_priolist(struct rb_node *rb)
> >         return rb_entry(rb, struct i915_priolist, node);
> >  }
> >
> > -static void assert_priolists(struct intel_engine_execlists * const execlists)
> > +static void assert_priolists(struct i915_sched_engine * const sched_engine)
> >  {
> >         struct rb_node *rb;
> >         long last_prio;
> > @@ -48,11 +48,11 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
> >         if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> >                 return;
> >
> > -       GEM_BUG_ON(rb_first_cached(&execlists->queue) !=
> > -                  rb_first(&execlists->queue.rb_root));
> > +       GEM_BUG_ON(rb_first_cached(&sched_engine->queue) !=
> > +                  rb_first(&sched_engine->queue.rb_root));
> >
> >         last_prio = INT_MAX;
> > -       for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
> > +       for (rb = rb_first_cached(&sched_engine->queue); rb; rb = rb_next(rb)) {
> >                 const struct i915_priolist *p = to_priolist(rb);
> >
> >                 GEM_BUG_ON(p->priority > last_prio);
> > @@ -63,21 +63,21 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
> >  struct list_head *
> >  i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
> >  {
> > -       struct intel_engine_execlists * const execlists = &engine->execlists;
> > +       struct i915_sched_engine * const sched_engine = engine->sched_engine;
> >         struct i915_priolist *p;
> >         struct rb_node **parent, *rb;
> >         bool first = true;
> >
> >         lockdep_assert_held(&engine->active.lock);
> > -       assert_priolists(execlists);
> > +       assert_priolists(sched_engine);
> >
> > -       if (unlikely(execlists->no_priolist))
> > +       if (unlikely(sched_engine->no_priolist))
> >                 prio = I915_PRIORITY_NORMAL;
> >
> >  find_priolist:
> >         /* most positive priority is scheduled first, equal priorities fifo */
> >         rb = NULL;
> > -       parent = &execlists->queue.rb_root.rb_node;
> > +       parent = &sched_engine->queue.rb_root.rb_node;
> >         while (*parent) {
> >                 rb = *parent;
> >                 p = to_priolist(rb);
> > @@ -92,7 +92,7 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
> >         }
> >
> >         if (prio == I915_PRIORITY_NORMAL) {
> > -               p = &execlists->default_priolist;
> > +               p = &sched_engine->default_priolist;
> >         } else {
> >                 p = kmem_cache_alloc(global.slab_priorities, GFP_ATOMIC);
> >                 /* Convert an allocation failure to a priority bump */
> > @@ -107,7 +107,7 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
> >                          * requests, so if userspace lied about their
> >                          * dependencies that reordering may be visible.
> >                          */
> > -                       execlists->no_priolist = true;
> > +                       sched_engine->no_priolist = true;
> >                         goto find_priolist;
> >                 }
> >         }
> > @@ -116,7 +116,7 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
> >         INIT_LIST_HEAD(&p->requests);
> >
> >         rb_link_node(&p->node, rb, parent);
> > -       rb_insert_color_cached(&p->node, &execlists->queue, first);
> > +       rb_insert_color_cached(&p->node, &sched_engine->queue, first);
> >
> >         return &p->requests;
> >  }
> > @@ -184,7 +184,7 @@ static void kick_submission(struct intel_engine_cs *engine,
> >          * We only need to kick the tasklet once for the high priority
> >          * new context we add into the queue.
> >          */
> > -       if (prio <= engine->execlists.queue_priority_hint)
> > +       if (prio <= engine->sched_engine->queue_priority_hint)
> >                 return;
> >
> >         rcu_read_lock();
> > @@ -208,7 +208,7 @@ static void kick_submission(struct intel_engine_cs *engine,
> >                      inflight->fence.context, inflight->fence.seqno,
> >                      inflight->sched.attr.priority);
> >
> > -       engine->execlists.queue_priority_hint = prio;
> > +       engine->sched_engine->queue_priority_hint = prio;
> >         if (need_preempt(prio, rq_prio(inflight)))
> >                 tasklet_hi_schedule(&engine->execlists.tasklet);
> >
> > @@ -489,6 +489,31 @@ void i915_request_show_with_schedule(struct drm_printer *m,
> >         rcu_read_unlock();
> >  }
> >
> > +void i915_sched_engine_free(struct kref *kref)
> > +{
> > +       struct i915_sched_engine *sched_engine =
> > +               container_of(kref, typeof(*sched_engine), ref);
> > +
> > +       kfree(sched_engine);
> > +}
> > +
> > +struct i915_sched_engine *
> > +i915_sched_engine_create(unsigned int subclass)
> > +{
> > +       struct i915_sched_engine *sched_engine;
> > +
> > +       sched_engine = kzalloc(sizeof(*sched_engine), GFP_KERNEL);
> > +       if (!sched_engine)
> > +               return NULL;
> > +
> > +       kref_init(&sched_engine->ref);
> > +
> > +       sched_engine->queue = RB_ROOT_CACHED;
> > +       sched_engine->queue_priority_hint = INT_MIN;
> > +
> > +       return sched_engine;
> > +}
> > +
> >  static void i915_global_scheduler_shrink(void)
> >  {
> >         kmem_cache_shrink(global.slab_dependencies);
> > diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
> > index 858a0938f47a..91a04e34cac5 100644
> > --- a/drivers/gpu/drm/i915/i915_scheduler.h
> > +++ b/drivers/gpu/drm/i915/i915_scheduler.h
> > @@ -48,6 +48,24 @@ static inline void i915_priolist_free(struct i915_priolist *p)
> >                 __i915_priolist_free(p);
> >  }
> >
> > +struct i915_sched_engine *
> > +i915_sched_engine_create(unsigned int subclass);
> > +
> > +void i915_sched_engine_free(struct kref *kref);
> > +
> > +static inline struct i915_sched_engine *
> > +i915_sched_engine_get(struct i915_sched_engine *sched_engine)
> > +{
> > +       kref_get(&sched_engine->ref);
> > +       return sched_engine;
> > +}
> > +
> > +static inline void
> > +i915_sched_engine_put(struct i915_sched_engine *sched_engine)
> > +{
> > +       kref_put(&sched_engine->ref, i915_sched_engine_free);
> > +}
> > +
> >  void i915_request_show_with_schedule(struct drm_printer *m,
> >                                      const struct i915_request *rq,
> >                                      const char *prefix,
> > diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> > index 343ed44d5ed4..16a054e67760 100644
> > --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> > +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> 
> Dumb question for which I'm not really in the position of having an
> opinion:  Should this go in its own file?
> 

I think this is in the right file.

Matt

> Patch seems mostly mechanically correct.  Not sure where this is going
> yet, though.  I'll keep reading. :-)
> 
> --Jason
> 
> 
> > @@ -91,4 +91,37 @@ struct i915_dependency {
> >                                 &(rq__)->sched.signalers_list, \
> >                                 signal_link)
> >
> > +struct i915_sched_engine {
> > +       struct kref ref;
> > +
> > +       /**
> > +        * @default_priolist: priority list for I915_PRIORITY_NORMAL
> > +        */
> > +       struct i915_priolist default_priolist;
> > +
> > +       /**
> > +        * @queue_priority_hint: Highest pending priority.
> > +        *
> > +        * When we add requests into the queue, or adjust the priority of
> > +        * executing requests, we compute the maximum priority of those
> > +        * pending requests. We can then use this value to determine if
> > +        * we need to preempt the executing requests to service the queue.
> > +        * However, since the we may have recorded the priority of an inflight
> > +        * request we wanted to preempt but since completed, at the time of
> > +        * dequeuing the priority hint may no longer may match the highest
> > +        * available request priority.
> > +        */
> > +       int queue_priority_hint;
> > +
> > +       /**
> > +        * @queue: queue of requests, in priority lists
> > +        */
> > +       struct rb_root_cached queue;
> > +
> > +       /**
> > +        * @no_priolist: priority lists disabled
> > +        */
> > +       bool no_priolist;
> > +};
> > +
> >  #endif /* _I915_SCHEDULER_TYPES_H_ */
> > --
> > 2.28.0
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
