Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E97C39BF1A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 19:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 901C06F882;
	Fri,  4 Jun 2021 17:50:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4416F883
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 17:50:57 +0000 (UTC)
Received: by mail-il1-x134.google.com with SMTP id b14so9314490ilq.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 10:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sAbrRQ0MeIQyy3HL/FbEKNL8NUeRANsNagkkdL/1w1w=;
 b=Ft9C84QOINoCJPISCFUMAXu4wbUoIYj4lhNP1fGwO/+MT+Sj/J+0oamxDYHwcgmirk
 6ivrJC3che3e2gWLp1Xbvm0SBoDpgSZmOYSevEHFY1q1O83UWoLT653NFPhE4TEmqPgn
 OIy4+qUmfTLCzORqNRTOow/QjVrhd8yTz6pN5EvjAaGYEHmdOFZzTzaTkWzbnnGGZqHm
 t9F/j5MEW0nwdNYGZ1m+LFvqmO/L1mme3zVzPJpL6fcknVrn37EzZQgG33kyy0zyT9pK
 tYkjS4lXWymqVb5fejH/ZMjlvv0IVrLbDozhHHpNkfdAcDy0C2kCoPZ5VcB622ue29pt
 HCxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sAbrRQ0MeIQyy3HL/FbEKNL8NUeRANsNagkkdL/1w1w=;
 b=A3JzkOywqFW/iXT5ktg3T2r8hAeiNo0MRnw3DNrNo0fP+iiW9+ZKrE2BzUa0mPMJlt
 bOWcHOFquVfap4nAUNSaT/m3z+fHlpHLrtR41lCZ6jZCjcF7vX90BQknJi5jZVlcOABs
 +fjbt0okebLnrWzcDQthj4H+WH4TSa2lg7LMvGTX55cqkaYamNWi4rSjDZqXY5OsyO+l
 /tFyBYqZ68MOJsCXVXD51VB8+EI/Wg6Z32+ObYwbyYC2I5koHVUREDbSShfn9sOv9nVv
 bPeNe8DtlZuZJITSjxYfOvMpPWrazvUOSadpsLu124uL8CJogDlPKmh/4hLjkv2SFIp8
 d9eA==
X-Gm-Message-State: AOAM5339IPPW/CDYSF5MR+BgXWWb8VMdsRQyGBAaCTCzZEYDGNfy0Ko4
 OhpsxM1xol3IkyKsGeAFHNSqKz9q/xBhngZQ3l2Bow==
X-Google-Smtp-Source: ABdhPJwQxHCRhH7yE0xkVL0hKXf86Pj7/qG22hiIzPyDwApxhKwoFI04mJMF3MbPPPoo3Nyeck076ClQAKEE92Sk5Mk=
X-Received: by 2002:a92:cc51:: with SMTP id t17mr4876896ilq.113.1622829056925; 
 Fri, 04 Jun 2021 10:50:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210603212722.59719-1-matthew.brost@intel.com>
 <20210603212722.59719-3-matthew.brost@intel.com>
In-Reply-To: <20210603212722.59719-3-matthew.brost@intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 4 Jun 2021 12:50:45 -0500
Message-ID: <CAOFGe955rLOYmM66DnEzmBER8RvpyrhLSuf0Web2mBqwL6aArw@mail.gmail.com>
To: Matthew Brost <matthew.brost@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: Add
 i915_sched_engine_is_empty function
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

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>

On Thu, Jun 3, 2021 at 4:09 PM Matthew Brost <matthew.brost@intel.com> wrote:
>
> Add wrapper function around RB tree to determine if i915_sched_engine is
> empty.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c            | 2 +-
>  drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 6 +++---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c    | 2 +-
>  drivers/gpu/drm/i915/i915_scheduler.h                | 6 ++++++
>  4 files changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index d0f3814440f6..85f2effe9dc6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1287,7 +1287,7 @@ bool intel_engine_is_idle(struct intel_engine_cs *engine)
>         intel_engine_flush_submission(engine);
>
>         /* ELSP is empty, but there are ready requests? E.g. after reset */
> -       if (!RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root))
> +       if (!i915_sched_engine_is_empty(engine->sched_engine))
>                 return false;
>
>         /* Ring stopped? */
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index d1dc1db3e378..2326a73af6d3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -384,7 +384,7 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
>                         prio = rq_prio(rq);
>                         pl = i915_sched_lookup_priolist(engine, prio);
>                 }
> -               GEM_BUG_ON(RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root));
> +               GEM_BUG_ON(i915_sched_engine_is_empty(engine->sched_engine));
>
>                 list_move(&rq->sched.link, pl);
>                 set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> @@ -1139,7 +1139,7 @@ static bool needs_timeslice(const struct intel_engine_cs *engine,
>         }
>
>         /* Otherwise, ELSP[0] is by itself, but may be waiting in the queue */
> -       if (!RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root)) {
> +       if (!i915_sched_engine_is_empty(engine->sched_engine)) {
>                 ENGINE_TRACE(engine, "timeslice required for queue\n");
>                 return true;
>         }
> @@ -2487,7 +2487,7 @@ static void execlists_submit_request(struct i915_request *request)
>         } else {
>                 queue_request(engine, request);
>
> -               GEM_BUG_ON(RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root));
> +               GEM_BUG_ON(i915_sched_engine_is_empty(engine->sched_engine));
>                 GEM_BUG_ON(list_empty(&request->sched.link));
>
>                 if (submit_queue(engine, request))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index d42dea79ee64..5d00f2e3c1de 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -541,7 +541,7 @@ static void guc_submit_request(struct i915_request *rq)
>
>         queue_request(engine, rq, rq_prio(rq));
>
> -       GEM_BUG_ON(RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root));
> +       GEM_BUG_ON(i915_sched_engine_is_empty(engine->sched_engine));
>         GEM_BUG_ON(list_empty(&rq->sched.link));
>
>         tasklet_hi_schedule(&engine->execlists.tasklet);
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
> index 91a04e34cac5..5bec7b3b8456 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler.h
> @@ -66,6 +66,12 @@ i915_sched_engine_put(struct i915_sched_engine *sched_engine)
>         kref_put(&sched_engine->ref, i915_sched_engine_free);
>  }
>
> +static inline bool
> +i915_sched_engine_is_empty(struct i915_sched_engine *sched_engine)
> +{
> +       return RB_EMPTY_ROOT(&sched_engine->queue.rb_root);
> +}
> +
>  void i915_request_show_with_schedule(struct drm_printer *m,
>                                      const struct i915_request *rq,
>                                      const char *prefix,
> --
> 2.28.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
