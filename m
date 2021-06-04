Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 967A639C033
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 21:10:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA3AF6E25A;
	Fri,  4 Jun 2021 19:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3428E6E2D8
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 19:09:58 +0000 (UTC)
Received: by mail-yb1-xb29.google.com with SMTP id q21so15087255ybg.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 12:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rpvm9l8Mrpq7UpujnHiPmMYRa3iebcTSMBcfa5HsMfk=;
 b=jvc2am3njz8SfnYRiPixrnEsVEvk22hvgpmOf2N+tFPXNeIj5VdGOdIree3oa9w1vw
 Va0/qhXWxP3qUL5yPwz7tOWgpXknugkaZAUhA+9kIhwZ3qv2m/qXV5SJoTqCl0NyG8I8
 4KZiiAJr5hyf+xne6YU539bcexERScLiVyWmKB7mmz4kQwtrbLVMLrEgkNzH+RdhOkRH
 ZY+OFd1NQo/L/w3r8zt7O5nIQrc56Lbu3jk4xqrQ+8KkrSYpBEdGjL0inhyoGAUbicX0
 QG+7u9Jap5SPy5ZeQ5atGwEscoa9CLqzyUq0zBZ8Um/Zd75e6uS1/07JzNVjaeBrGkrw
 XJrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rpvm9l8Mrpq7UpujnHiPmMYRa3iebcTSMBcfa5HsMfk=;
 b=ha1zno5pnX3kCPJ5GXdesBzqgPTaIqziQeBIrE0g48RYDMAm1hknyBe83fpJR7S+Qn
 e3rmPbjL+KRw2xNBngZMsooXcAoWxQtpiDskteYfNO0doaOSdkx3YlBmuyfIy/2XNVOw
 Wyrxqa9nPvjjIjURHeZsORnSPz5cxP8dHwOo1VCjIC8iSUEkMEYqty8VTRB38CIJyR1A
 aSEx0+kiHxqULTKsjqj0xfTF/cEveTJqufgKoyAcW1iZqUMAII7RvThI96HIabpOiCU7
 NSNE78L+AV1Nb0CIxMhMENoc8C+wCXXH2EMeUADekikmQf7G28jiK5VAjZ9Ky2zY74td
 9Txw==
X-Gm-Message-State: AOAM5332T81mLD4iALnpxvcWEvzMN4zPKpN6M6DR3P32OJlJJBD43u/l
 WcFsv8TKHvimB/FHFpQH+BhCvP0exkKkWM+sQ1FCCQ==
X-Google-Smtp-Source: ABdhPJysv1xh2sD67IB4tYrB97T85v4VnaZFqyX7dHLrz6t0ClY0E6K1aKZL+oqOItbGnLpNAiU4iJQFgi2h92fBgTs=
X-Received: by 2002:a25:a2c5:: with SMTP id c5mr4439913ybn.432.1622833797252; 
 Fri, 04 Jun 2021 12:09:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210603212722.59719-1-matthew.brost@intel.com>
 <20210603212722.59719-7-matthew.brost@intel.com>
In-Reply-To: <20210603212722.59719-7-matthew.brost@intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 4 Jun 2021 14:09:46 -0500
Message-ID: <CAOFGe95iV7_QTYCb4XW-ZmPh+o4O87Rq0tYkMNNTEX3Sw+ALsw@mail.gmail.com>
To: Matthew Brost <matthew.brost@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Add kick_backend function to
 i915_sched_engine
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

On Thu, Jun 3, 2021 at 4:09 PM Matthew Brost <matthew.brost@intel.com> wrote:
>
> Rather than touching execlist specific structures in the generic
> scheduling code, add a callback function in the backend.

Seems reasonable but why does the function that's there today do
nothing for the ringbuffer and current GuC back-ends?  I'm sure
there's some reason but it's not immediately obvious to me.

--Jason


> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  .../drm/i915/gt/intel_execlists_submission.c  | 52 ++++++++++++++++
>  drivers/gpu/drm/i915/i915_scheduler.c         | 62 +------------------
>  drivers/gpu/drm/i915/i915_scheduler_types.h   |  4 ++
>  3 files changed, 58 insertions(+), 60 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 23fd03815ad0..3fac17103837 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -3116,10 +3116,61 @@ static bool can_preempt(struct intel_engine_cs *engine)
>         return engine->class != RENDER_CLASS;
>  }
>
> +static void kick_execlists(const struct i915_request *rq, int prio)
> +{
> +       struct intel_engine_cs *engine = rq->engine;
> +       struct i915_sched_engine *sched_engine = engine->sched_engine;
> +       const struct i915_request *inflight;
> +
> +       /*
> +        * We only need to kick the tasklet once for the high priority
> +        * new context we add into the queue.
> +        */
> +       if (prio <= sched_engine->queue_priority_hint)
> +               return;
> +
> +       rcu_read_lock();
> +
> +       /* Nothing currently active? We're overdue for a submission! */
> +       inflight = execlists_active(&engine->execlists);
> +       if (!inflight)
> +               goto unlock;
> +
> +       /*
> +        * If we are already the currently executing context, don't
> +        * bother evaluating if we should preempt ourselves.
> +        */
> +       if (inflight->context == rq->context)
> +               goto unlock;
> +
> +       ENGINE_TRACE(engine,
> +                    "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
> +                    prio,
> +                    rq->fence.context, rq->fence.seqno,
> +                    inflight->fence.context, inflight->fence.seqno,
> +                    inflight->sched.attr.priority);
> +
> +       sched_engine->queue_priority_hint = prio;
> +
> +       /*
> +        * Allow preemption of low -> normal -> high, but we do
> +        * not allow low priority tasks to preempt other low priority
> +        * tasks under the impression that latency for low priority
> +        * tasks does not matter (as much as background throughput),
> +        * so kiss.
> +        */
> +       if (prio >= max(I915_PRIORITY_NORMAL, rq_prio(inflight)))
> +               tasklet_hi_schedule(&engine->execlists.tasklet);
> +
> +unlock:
> +       rcu_read_unlock();
> +}
> +
>  static void execlists_set_default_submission(struct intel_engine_cs *engine)
>  {
>         engine->submit_request = execlists_submit_request;
>         engine->sched_engine->schedule = i915_schedule;
> +       engine->sched_engine->kick_backend = kick_execlists;
>         engine->execlists.tasklet.callback = execlists_submission_tasklet;
>  }
>
> @@ -3702,6 +3753,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>         ve->base.request_alloc = execlists_request_alloc;
>
>         ve->base.sched_engine->schedule = i915_schedule;
> +       ve->base.sched_engine->kick_backend = kick_execlists;
>         ve->base.submit_request = virtual_submit_request;
>         ve->base.bond_execute = virtual_bond_execute;
>
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 4bc6969f6a97..035b88f2e4aa 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -157,65 +157,6 @@ sched_lock_engine(const struct i915_sched_node *node,
>         return locked;
>  }
>
> -static inline int rq_prio(const struct i915_request *rq)
> -{
> -       return rq->sched.attr.priority;
> -}
> -
> -static inline bool need_preempt(int prio, int active)
> -{
> -       /*
> -        * Allow preemption of low -> normal -> high, but we do
> -        * not allow low priority tasks to preempt other low priority
> -        * tasks under the impression that latency for low priority
> -        * tasks does not matter (as much as background throughput),
> -        * so kiss.
> -        */
> -       return prio >= max(I915_PRIORITY_NORMAL, active);
> -}
> -
> -static void kick_submission(struct intel_engine_cs *engine,
> -                           const struct i915_request *rq,
> -                           int prio)
> -{
> -       const struct i915_request *inflight;
> -
> -       /*
> -        * We only need to kick the tasklet once for the high priority
> -        * new context we add into the queue.
> -        */
> -       if (prio <= engine->sched_engine->queue_priority_hint)
> -               return;
> -
> -       rcu_read_lock();
> -
> -       /* Nothing currently active? We're overdue for a submission! */
> -       inflight = execlists_active(&engine->execlists);
> -       if (!inflight)
> -               goto unlock;
> -
> -       /*
> -        * If we are already the currently executing context, don't
> -        * bother evaluating if we should preempt ourselves.
> -        */
> -       if (inflight->context == rq->context)
> -               goto unlock;
> -
> -       ENGINE_TRACE(engine,
> -                    "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
> -                    prio,
> -                    rq->fence.context, rq->fence.seqno,
> -                    inflight->fence.context, inflight->fence.seqno,
> -                    inflight->sched.attr.priority);
> -
> -       engine->sched_engine->queue_priority_hint = prio;
> -       if (need_preempt(prio, rq_prio(inflight)))
> -               tasklet_hi_schedule(&engine->execlists.tasklet);
> -
> -unlock:
> -       rcu_read_unlock();
> -}
> -
>  static void __i915_schedule(struct i915_sched_node *node,
>                             const struct i915_sched_attr *attr)
>  {
> @@ -335,7 +276,8 @@ static void __i915_schedule(struct i915_sched_node *node,
>                 }
>
>                 /* Defer (tasklet) submission until after all of our updates. */
> -               kick_submission(engine, node_to_request(node), prio);
> +               if (engine->sched_engine->kick_backend)
> +                       engine->sched_engine->kick_backend(node_to_request(node), prio);
>         }
>
>         spin_unlock(&engine->sched_engine->lock);
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index 3f462f8b06f2..8b3af536e6cf 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -132,6 +132,10 @@ struct i915_sched_engine {
>          */
>         bool no_priolist;
>
> +       /* Kick backend */
> +       void    (*kick_backend)(const struct i915_request *rq,
> +                               int prio);
> +
>         /*
>          * Call when the priority on a request has changed and it and its
>          * dependencies may need rescheduling. Note the request itself may
> --
> 2.28.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
