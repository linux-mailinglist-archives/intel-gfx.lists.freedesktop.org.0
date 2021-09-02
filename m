Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A393FF482
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 22:02:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707106E804;
	Thu,  2 Sep 2021 20:02:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com
 [IPv6:2607:f8b0:4864:20::233])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E25676E804
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 20:02:27 +0000 (UTC)
Received: by mail-oi1-x233.google.com with SMTP id w144so3557021oie.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Sep 2021 13:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PAmijj2bv28j6Nn5YgjyWipf5aEWXjUJk3LCjEISZWs=;
 b=OTlzq7RBP/qZKn4TMJTfwsK7AyFXiYaYezB48y7ta2+9J3kz4aOMfB1JU06J4RqXUT
 M4rMFXTzBQ+cr/rj8Q+eVOajdQZjJlnudc2qPw8viNCqJ3sc250LgzxmNszND0M2vU7F
 yDnUM68xayaqPjIhCafqTkBeXva8qHnhWh91E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PAmijj2bv28j6Nn5YgjyWipf5aEWXjUJk3LCjEISZWs=;
 b=j4U65LcU52ms4vf1lHZxAHLZYXpQ1fv0qs7og/ewsI0r/bEIMRIBmB3g8THt/793Oh
 j9XXN88eAUjmuGjSxSHuJcKQE1tW7MLiQZYpPKSaBz+ge1T/jua5JcGu0Ki8cmxU0yyw
 DMOTqbGR22ImLu1VSi5U9+qU8oWwM53vNNwnnuYtWSkmZQRZtHPyt6KSWVs2hDsHSKbs
 1zGAyK3/2Jzf+8ra+GeA2wyap769D3HqZFkoMUB8IYp3GIa9KR0S25uY83gvu1OQS1nz
 HqSEYy+gA9A5bjY40PKkfcC/KewYq+/Kj/vXZNrcbS1NIG7DEHHFfp1PwT3198bYKvkD
 GxTA==
X-Gm-Message-State: AOAM532PX8LSx/cZn73soQwgm9fxL3gccZXrqwydqylOLPsi23r3SH4q
 7R8PKHFOc9h1/UP3sYYS14v1X3UfXbDvur4L42cfXg==
X-Google-Smtp-Source: ABdhPJxSkHIDU7sFysgm6XfM/siPoFVum5O/AgbdtdtdFujg4QV1BCnkdPmsr3chEEyMHEYvv42eTcTOKllxeqJMZVE=
X-Received: by 2002:a05:6808:1449:: with SMTP id
 x9mr3581284oiv.14.1630612947133; 
 Thu, 02 Sep 2021 13:02:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210813203033.3179400-1-daniel.vetter@ffwll.ch>
 <9d8cba62-e1e1-a62c-1482-89d2db49d5af@linux.intel.com>
 <CAKMK7uG4F9ooosoovjUP3XFVPjpU_wV2Me2hxjyit3b1FGbSWQ@mail.gmail.com>
 <fb541075-622c-331c-d055-62f656f88acb@linux.intel.com>
In-Reply-To: <fb541075-622c-331c-d055-62f656f88acb@linux.intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 2 Sep 2021 22:02:16 +0200
Message-ID: <CAKMK7uFY-DBBATyG9UkZNwMJaN8y8kCSfYWfbbBkggMV0p6hUA@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: DRI Development <dri-devel@lists.freedesktop.org>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, 
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>, 
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915: Release i915_gem_context
 from a worker
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 2, 2021 at 6:20 PM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
> On 02/09/2021 16:05, Daniel Vetter wrote:
> > On Thu, Sep 2, 2021 at 2:42 PM Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> >>
> >>
> >> On 13/08/2021 21:30, Daniel Vetter wrote:
> >>> The only reason for this really is the i915_gem_engines->fence
> >>> callback engines_notify(), which exists purely as a fairly funky
> >>> reference counting scheme for that. Otherwise all other callers are
> >>> from process context, and generally fairly benign locking context.
> >>
> >> There is reset which definitely isn't process context.
> >
> > gpu reset runs in process context. The tasklet context is the
> > engines_notify I'm talking about above.
>
> I haven't looked very deeply but please double check the path from
> execlists_submission_tasklet -> execlists_reset -> intel_engine_reset ->
> __intel_engine_reset -> execlists_reset_rewind -> execlists_reset_csb ->
> execlists_reset_active -> __i915_request_reset -> mark_guilty ->
> i915_gem_context_put.

Thanks for pointing this out, I'll add it to the commit message.

More stuff to fix, yay.

> >> Otherwise I did not really get from the commit message is this patch
> >> fixing an existing problem or preparing something for the future. If t=
he
> >> former then as I wrote above - I am pretty sure there are call sites
> >> from the tasklet already.
> >>
> >> Regards,
> >>
> >> Tvrtko
> >>
> >>> Unfortunately untangling that requires some major surgery, and we hav=
e
> >>> a few i915_gem_context reference counting bugs that need fixing, and
> >>> they blow in the current hardirq calling context, so we need a
> >>> stop-gap measure.
> >
> > I guess this para wasn't clear, but subsequent patches fix the
> > refcount bugs and need this prep patch here.
>
> So up to where in the series are those fixes and where other stuff
> follows? Worth spliting and having cover letters perhaps? Is the fixing
> part applicable to the existing code or only comes to play with the
> syncobj single timeline changes?

There's Fixes: lines. One is timeline syncobj, the other is 2 years old.
-Daniel

>
> Regards,
>
> Tvrtko
>
> > -Daniel
> >
> >>>
> >>> Put a FIXME comment in when this should be removable again.
> >>>
> >>> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> >>> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> >>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> >>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> >>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> >>> Cc: "Thomas Hellstr=C3=B6m" <thomas.hellstrom@linux.intel.com>
> >>> Cc: Matthew Auld <matthew.auld@intel.com>
> >>> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> >>> Cc: Dave Airlie <airlied@redhat.com>
> >>> Cc: Jason Ekstrand <jason@jlekstrand.net>
> >>> ---
> >>>    drivers/gpu/drm/i915/gem/i915_gem_context.c       | 13 +++++++++++=
--
> >>>    drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 12 +++++++++++=
+
> >>>    2 files changed, 23 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gp=
u/drm/i915/gem/i915_gem_context.c
> >>> index fd169cf2f75a..051bc357ff65 100644
> >>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> >>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> >>> @@ -986,9 +986,10 @@ static struct i915_gem_engines *user_engines(str=
uct i915_gem_context *ctx,
> >>>        return err;
> >>>    }
> >>>
> >>> -void i915_gem_context_release(struct kref *ref)
> >>> +static void i915_gem_context_release_work(struct work_struct *work)
> >>>    {
> >>> -     struct i915_gem_context *ctx =3D container_of(ref, typeof(*ctx)=
, ref);
> >>> +     struct i915_gem_context *ctx =3D container_of(work, typeof(*ctx=
),
> >>> +                                                 release_work);
> >>>
> >>>        trace_i915_context_free(ctx);
> >>>        GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
> >>> @@ -1002,6 +1003,13 @@ void i915_gem_context_release(struct kref *ref=
)
> >>>        kfree_rcu(ctx, rcu);
> >>>    }
> >>>
> >>> +void i915_gem_context_release(struct kref *ref)
> >>> +{
> >>> +     struct i915_gem_context *ctx =3D container_of(ref, typeof(*ctx)=
, ref);
> >>> +
> >>> +     queue_work(ctx->i915->wq, &ctx->release_work);
> >>> +}
> >>> +
> >>>    static inline struct i915_gem_engines *
> >>>    __context_engines_static(const struct i915_gem_context *ctx)
> >>>    {
> >>> @@ -1303,6 +1311,7 @@ i915_gem_create_context(struct drm_i915_private=
 *i915,
> >>>        ctx->sched =3D pc->sched;
> >>>        mutex_init(&ctx->mutex);
> >>>        INIT_LIST_HEAD(&ctx->link);
> >>> +     INIT_WORK(&ctx->release_work, i915_gem_context_release_work);
> >>>
> >>>        spin_lock_init(&ctx->stale.lock);
> >>>        INIT_LIST_HEAD(&ctx->stale.engines);
> >>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/driv=
ers/gpu/drm/i915/gem/i915_gem_context_types.h
> >>> index 94c03a97cb77..0c38789bd4a8 100644
> >>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> >>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> >>> @@ -288,6 +288,18 @@ struct i915_gem_context {
> >>>         */
> >>>        struct kref ref;
> >>>
> >>> +     /**
> >>> +      * @release_work:
> >>> +      *
> >>> +      * Work item for deferred cleanup, since i915_gem_context_put()=
 tends to
> >>> +      * be called from hardirq context.
> >>> +      *
> >>> +      * FIXME: The only real reason for this is &i915_gem_engines.fe=
nce, all
> >>> +      * other callers are from process context and need at most some=
 mild
> >>> +      * shuffling to pull the i915_gem_context_put() call out of a s=
pinlock.
> >>> +      */
> >>> +     struct work_struct release_work;
> >>> +
> >>>        /**
> >>>         * @rcu: rcu_head for deferred freeing.
> >>>         */
> >>>
> >
> >
> >



--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
