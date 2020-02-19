Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E875164E50
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 20:03:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF5C76EC7B;
	Wed, 19 Feb 2020 19:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A097E6EC7A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 19:03:03 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id a2so1029247vso.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 11:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CdnEOGQizBGtBeoA93LyU661N7BqNs/Cg7zRsbfvIXw=;
 b=hGDfOHFBWxnOv7alYH0/vO04TheBqqSu2/YR2t6E+EQGr/scG/R2iGqlY6bN0lqVMz
 Ow/WK92PtDvbZeNOEHyNcIBAohU4rLxCnZKfGCCrVLIZ8qRMi2a4g6SZvWAWLQbwWLs5
 eA0LIN/LYd/riGDJ3l+yCODJTnXfqrA7Yy/ey7slyyRPwLdirAY9wSh7ohqRVCwb5XKF
 YlO7FfoJw4b4p8T0Pf2JIpAshogtoqh8yyozbn6hIt5hiI+oYOip0Z0GuS8Yofd9GpNv
 6zyluKY/fO3zMDLe9edYYR9FrhP6kqVooFD1PYcwvuuNZKOCJqYVhW+ck74xBoWZme18
 +SRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CdnEOGQizBGtBeoA93LyU661N7BqNs/Cg7zRsbfvIXw=;
 b=YmFYTk05yRJ0Qj9czS6jtUj+Iw1eAg2Nbp5NA0qPmKexNgrkdumDg5LdHr8amWXOeF
 bDab5+z6Xu6C59jIld8nojrgEDhOQ9p5MgfEGBOgAzemZbsMywGrFxiBfAxsEg35k18G
 pfaGnx2d78TybKRefNDI+cYTCQUlXlbpHPPQUpbuK8R/fRNkYIEpeOlUY0/enzAErdlJ
 aZnSaVaxUYr1DSu3lTnIcVSg4vK+xINftx/Bf+7uJ7e77ukLZBQ4JKjL+CN3UTmsv/wa
 0O6MzJFQznkSvP5459hYW+xfT00tj+PnwG3QxlFrjwSvkPdKrYSFP4zD38KP9uSTD/Nj
 SXoA==
X-Gm-Message-State: APjAAAWhFFqPkouBAWR4VjATDC3OCKDl5zrwm+jiaJXrBQTvXMQJFyNd
 pmCtsCIJteYSBEb+TwpWSRNifbthGVbvc2fy1KhUIDR/
X-Google-Smtp-Source: APXvYqzEhie/H/yZ/zSbsqw2NMNKUGwJreo1v8S/KU890CU3DeUpTG2a+y9LezjIFQVr54OOGyVYJxjpWMwjO8KQ4PU=
X-Received: by 2002:a05:6102:303a:: with SMTP id
 v26mr15497447vsa.119.1582138982715; 
 Wed, 19 Feb 2020 11:03:02 -0800 (PST)
MIME-Version: 1.0
References: <20200218202302.1326399-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200218202302.1326399-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 19 Feb 2020 19:02:36 +0000
Message-ID: <CAM0jSHOnfmVZCQhQ23Hh70Wh0yRVstt7hLBAAODaJQaw91NfMQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Protect signaler walk with RCU
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 18 Feb 2020 at 20:23, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> While we know that the waiters cannot disappear as we walk our list
> (only that they might be added), the same cannot be said for our
> signalers as they may be completed by the HW and retired as we process
> this request. Ergo we need to use rcu to protect the list iteration and
> remember to mark up the list_del_rcu.
>
> Fixes: 793c22617367 ("drm/i915/gt: Protect execlists_hold/unhold from new waiters")
> Fixes: 32ff621fd744 ("drm/i915/gt: Allow temporary suspension of inflight requests")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c   | 16 ++++++++++------
>  drivers/gpu/drm/i915/i915_scheduler.c |  4 ++--
>  2 files changed, 12 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index ba31cbe8c68e..47561dc29304 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1668,9 +1668,9 @@ last_active(const struct intel_engine_execlists *execlists)
>                                      wait_link)
>
>  #define for_each_signaler(p__, rq__) \
> -       list_for_each_entry_lockless(p__, \
> -                                    &(rq__)->sched.signalers_list, \
> -                                    signal_link)
> +       list_for_each_entry_rcu(p__, \
> +                               &(rq__)->sched.signalers_list, \
> +                               signal_link)
>
>  static void defer_request(struct i915_request *rq, struct list_head * const pl)
>  {
> @@ -2533,11 +2533,13 @@ static bool execlists_hold(struct intel_engine_cs *engine,
>  static bool hold_request(const struct i915_request *rq)
>  {
>         struct i915_dependency *p;
> +       bool result = false;
>
>         /*
>          * If one of our ancestors is on hold, we must also be on hold,
>          * otherwise we will bypass it and execute before it.
>          */
> +       rcu_read_lock();
>         for_each_signaler(p, rq) {
>                 const struct i915_request *s =
>                         container_of(p->signaler, typeof(*s), sched);
> @@ -2545,11 +2547,13 @@ static bool hold_request(const struct i915_request *rq)
>                 if (s->engine != rq->engine)
>                         continue;
>
> -               if (i915_request_on_hold(s))
> -                       return true;
> +               result = i915_request_on_hold(s);
> +               if (result)
> +                       break;
>         }
> +       rcu_read_unlock();
>
> -       return false;
> +       return result;
>  }
>
>  static void __execlists_unhold(struct i915_request *rq)
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index e19a37a83397..4e48757e9de6 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -486,7 +486,7 @@ void i915_sched_node_fini(struct i915_sched_node *node)
>         list_for_each_entry_safe(dep, tmp, &node->signalers_list, signal_link) {
>                 GEM_BUG_ON(!list_empty(&dep->dfs_link));
>
> -               list_del(&dep->wait_link);
> +               list_del_rcu(&dep->wait_link);
>                 if (dep->flags & I915_DEPENDENCY_ALLOC)
>                         i915_dependency_free(dep);
>         }
> @@ -497,7 +497,7 @@ void i915_sched_node_fini(struct i915_sched_node *node)
>                 GEM_BUG_ON(dep->signaler != node);
>                 GEM_BUG_ON(!list_empty(&dep->dfs_link));
>
> -               list_del(&dep->signal_link);
> +               list_del_rcu(&dep->signal_link);
>                 if (dep->flags & I915_DEPENDENCY_ALLOC)
>                         i915_dependency_free(dep);

Is this not a potential uaf? Do we not have to wait for the grace
period before doing the free, or what?

>         }
> --
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
