Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A95399B47
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 09:09:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98FD36F404;
	Thu,  3 Jun 2021 07:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 119CF6F400
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 07:09:35 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id h9so5368557oih.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 00:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=36Pkx9zPWURHJepXV4iZ6QusrX9OKoQCAwX2iReFL/w=;
 b=d9wLMrI/C7lu8LItzVRv+W2FdYrBAVvvLGBedf9Dnja5WpewjdHqFKzGE+cdfnqwbM
 uq7RBoz/feyIlhmP0C+5UiieUMICWR65+NnZK+oWbz2Rc/E9TiA07yTIYv0ggTtJa7T6
 RhRbMW/eG3TjjqSUNtM0g7zhEAQTMLozJFipU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=36Pkx9zPWURHJepXV4iZ6QusrX9OKoQCAwX2iReFL/w=;
 b=IlwumIl1MOi15G3HqR9Ci7CRkYwjgeHU2eG+U5WX3Laa4dvCQMJzBl2vXJOuKR0Thx
 /35qb9w0bXPqs7SmZFCulz0cMy+I+dZy9D+3WeHG92hO0dWOXlCxuKR16VbvFqMwraTI
 dn8+v01ijr607UKUlZmJQIZmIDyZUN5A+07cqurId22HxzxresD5NXd88WPhkHZbwL3Y
 Bvd77jHqyv45Rpdupksdjuu51R4sei+vfqltIzPhnte0y3xwbPtjF9ib6Ed3Zd8jn1Sw
 yDRXbRNDrsDUvRT9If3a72l/UQ9L7ldxTOLZCfQlK5dXpQySPcG+8qxyZqBOti8G30Fn
 Uj4g==
X-Gm-Message-State: AOAM532En3USyBDtRUxmiEDsUzwYw7Xy3LmbNhypE+CDoHy6Bt6ptbwZ
 WG9hmTjg5FO2U4+oDhTQ+lCjVW4MEIltzfklM/O5Nw==
X-Google-Smtp-Source: ABdhPJzDgdquEUPF/dzQ81q4UlmNahbsujvD94qeWPi/0tPj2yJPU/fmzwpgNeDhjIXsP1+IKmn+nh4ciEDrte+/yNQ=
X-Received: by 2002:aca:5701:: with SMTP id l1mr8442813oib.128.1622704174284; 
 Thu, 03 Jun 2021 00:09:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210527162650.1182544-1-jason@jlekstrand.net>
 <20210527162650.1182544-17-jason@jlekstrand.net>
 <YLSimneuNgwaB31A@phenom.ffwll.local>
 <CAOFGe97E=JJjSHb=gy64oZYoV6hRpvPpGJ6joj8YnpQi9AtzrA@mail.gmail.com>
In-Reply-To: <CAOFGe97E=JJjSHb=gy64oZYoV6hRpvPpGJ6joj8YnpQi9AtzrA@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 3 Jun 2021 09:09:23 +0200
Message-ID: <CAKMK7uE-jB1v0QLVaLnzG0LMLn_KapnG48sj3tfaUZOTssXCLA@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Subject: Re: [Intel-gfx] [PATCH 16/29] drm/i915/gem: Add an intermediate
 proto_context struct
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 2, 2021 at 11:24 PM Jason Ekstrand <jason@jlekstrand.net> wrote:
>
> On Mon, May 31, 2021 at 3:47 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Thu, May 27, 2021 at 11:26:37AM -0500, Jason Ekstrand wrote:
> > > The current context uAPI allows for two methods of setting context
> > > parameters: SET_CONTEXT_PARAM and CONTEXT_CREATE_EXT_SETPARAM.  The
> > > former is allowed to be called at any time while the later happens as
> > > part of GEM_CONTEXT_CREATE.  Currently, everything settable via one is
> > > settable via the other.  While some params are fairly simple and setting
> > > them on a live context is harmless such the context priority, others are
> > > far trickier such as the VM or the set of engines.  In order to swap out
> > > the VM, for instance, we have to delay until all current in-flight work
> > > is complete, swap in the new VM, and then continue.  This leads to a
> > > plethora of potential race conditions we'd really rather avoid.
> > >
> > > Unfortunately, both methods of setting the VM and engine set are in
> >
> >                                                    ^the
> >
> > At least my English parser jumped there a bit and got confused :-)
>
> I believe what I wrote was correct but I'm happy to tweak it if it
> helps others' parsers.

Hm yeah I think that was just a fluke, leave it as-is.

> > > active use today so we can't simply disallow setting the VM or engine
> > > set vial SET_CONTEXT_PARAM.  In order to work around this wart, this
> > > commit adds a proto-context struct which contains all the context create
> > > parameters.
> > >
> > > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> >
> > I also looked at my review from the previous round and I think we have a
> > few opens there that haven't been addressed here. Would be nice to check
> > that out too and my reply there if you're disagreeing and want to paint
> > the shed differently :-)
>
> Ok, I'll try to dig it up.  I miss GitLab and it's "resolve
> discussion" button so much....
>
> > I've found a few other things needing polish below on top of the earlier
> > bits.
> > -Daniel
> >
> > > ---
> > >  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 145 ++++++++++++++----
> > >  .../gpu/drm/i915/gem/i915_gem_context_types.h |  22 +++
> > >  .../gpu/drm/i915/gem/selftests/mock_context.c |  16 +-
> > >  3 files changed, 153 insertions(+), 30 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > index fc471243aa769..10bff488444b6 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > @@ -191,6 +191,97 @@ static int validate_priority(struct drm_i915_private *i915,
> > >       return 0;
> > >  }
> > >
> > > +static void proto_context_close(struct i915_gem_proto_context *pc)
> > > +{
> > > +     if (pc->vm)
> > > +             i915_vm_put(pc->vm);
> > > +     kfree(pc);
> > > +}
> > > +
> > > +static int proto_context_set_persistence(struct drm_i915_private *i915,
> > > +                                      struct i915_gem_proto_context *pc,
> > > +                                      bool persist)
> > > +{
> > > +     if (persist) {
> > > +             /*
> > > +              * Only contexts that are short-lived [that will expire or be
> > > +              * reset] are allowed to survive past termination. We require
> > > +              * hangcheck to ensure that the persistent requests are healthy.
> > > +              */
> > > +             if (!i915->params.enable_hangcheck)
> > > +                     return -EINVAL;
> > > +
> > > +             __set_bit(UCONTEXT_PERSISTENCE, &pc->user_flags);
> > > +     } else {
> > > +             /* To cancel a context we use "preempt-to-idle" */
> > > +             if (!(i915->caps.scheduler & I915_SCHEDULER_CAP_PREEMPTION))
> > > +                     return -ENODEV;
> > > +
> > > +             /*
> > > +              * If the cancel fails, we then need to reset, cleanly!
> > > +              *
> > > +              * If the per-engine reset fails, all hope is lost! We resort
> > > +              * to a full GPU reset in that unlikely case, but realistically
> > > +              * if the engine could not reset, the full reset does not fare
> > > +              * much better. The damage has been done.
> > > +              *
> > > +              * However, if we cannot reset an engine by itself, we cannot
> > > +              * cleanup a hanging persistent context without causing
> > > +              * colateral damage, and we should not pretend we can by
> > > +              * exposing the interface.
> > > +              */
> > > +             if (!intel_has_reset_engine(&i915->gt))
> > > +                     return -ENODEV;
> > > +
> > > +             __clear_bit(UCONTEXT_PERSISTENCE, &pc->user_flags);
> > > +     }
> > > +
> > > +     return 0;
> > > +}
> > > +
> > > +static struct i915_gem_proto_context *
> > > +proto_context_create(struct drm_i915_private *i915, unsigned int flags)
> > > +{
> > > +     struct i915_gem_proto_context *pc, *err;
> > > +
> > > +     pc = kzalloc(sizeof(*pc), GFP_KERNEL);
> > > +     if (!pc)
> > > +             return ERR_PTR(-ENOMEM);
> > > +
> > > +     if (HAS_FULL_PPGTT(i915)) {
> > > +             struct i915_ppgtt *ppgtt;
> > > +
> > > +             ppgtt = i915_ppgtt_create(&i915->gt);
> > > +             if (IS_ERR(ppgtt)) {
> > > +                     drm_dbg(&i915->drm, "PPGTT setup failed (%ld)\n",
> > > +                             PTR_ERR(ppgtt));
> > > +                     err = ERR_CAST(ppgtt);
> > > +                     goto proto_close;
> > > +             }
> > > +             pc->vm = &ppgtt->vm;
> > > +     }
> > > +
> > > +     pc->user_flags = 0;
> > > +     __set_bit(UCONTEXT_BANNABLE, &pc->user_flags);
> > > +     __set_bit(UCONTEXT_RECOVERABLE, &pc->user_flags);
> > > +     proto_context_set_persistence(i915, pc, true);
> >
> > You've lost the error handling here.
>
> No, I've not.  This is where that helper is both wonderful and crazy
> annoying.  We could have a helper to check whether or not a particular
> persistence setting is allowed.  Instead (and this is what the old
> code does too), it's initialized to false by kzalloc and then we try
> to set it to true and ignore the failure.  This ensures that,
> regardless of which options are allowed, we'll end up with an allowed
> one.  Yeah, the more I type here the more I realize just how bad of an
> idea that is. :-)  If you'd like, we can refactor things to have a
> validation function persistence_setting_valid() or maybe a pair
> requires_persistence() and persistence_allowed().  I'm open to other
> suggestions too.

Oh right, _that_ story. That's even the story I brought up in the
previous round, analyzed there correctly, but totally forgot the
conclusion :-/
-Daniel

>
> > > +     pc->sched.priority = I915_PRIORITY_NORMAL;
> > > +
> > > +     if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE) {
> > > +             if (!HAS_EXECLISTS(i915)) {
> > > +                     err = ERR_PTR(-EINVAL);
> > > +                     goto proto_close;
> > > +             }
> > > +             pc->single_timeline = true;
> > > +     }
> > > +
> > > +     return pc;
> > > +
> > > +proto_close:
> > > +     proto_context_close(pc);
> > > +     return err;
> > > +}
> > > +
> > >  static struct i915_address_space *
> > >  context_get_vm_rcu(struct i915_gem_context *ctx)
> > >  {
> > > @@ -660,7 +751,8 @@ static int __context_set_persistence(struct i915_gem_context *ctx, bool state)
> > >  }
> > >
> > >  static struct i915_gem_context *
> > > -__create_context(struct drm_i915_private *i915)
> > > +__create_context(struct drm_i915_private *i915,
> > > +              const struct i915_gem_proto_context *pc)
> > >  {
> > >       struct i915_gem_context *ctx;
> > >       struct i915_gem_engines *e;
> > > @@ -673,7 +765,7 @@ __create_context(struct drm_i915_private *i915)
> > >
> > >       kref_init(&ctx->ref);
> > >       ctx->i915 = i915;
> > > -     ctx->sched.priority = I915_PRIORITY_NORMAL;
> > > +     ctx->sched = pc->sched;
> > >       mutex_init(&ctx->mutex);
> > >       INIT_LIST_HEAD(&ctx->link);
> > >
> > > @@ -696,9 +788,7 @@ __create_context(struct drm_i915_private *i915)
> > >        * is no remap info, it will be a NOP. */
> > >       ctx->remap_slice = ALL_L3_SLICES(i915);
> > >
> > > -     i915_gem_context_set_bannable(ctx);
> > > -     i915_gem_context_set_recoverable(ctx);
> > > -     __context_set_persistence(ctx, true /* cgroup hook? */);
> > > +     ctx->user_flags = pc->user_flags;
> > >
> > >       for (i = 0; i < ARRAY_SIZE(ctx->hang_timestamp); i++)
> > >               ctx->hang_timestamp[i] = jiffies - CONTEXT_FAST_HANG_JIFFIES;
> > > @@ -786,38 +876,23 @@ static void __assign_ppgtt(struct i915_gem_context *ctx,
> > >  }
> > >
> > >  static struct i915_gem_context *
> > > -i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
> > > +i915_gem_create_context(struct drm_i915_private *i915,
> > > +                     const struct i915_gem_proto_context *pc)
> > >  {
> > >       struct i915_gem_context *ctx;
> > >       int ret;
> > >
> > > -     if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE &&
> > > -         !HAS_EXECLISTS(i915))
> > > -             return ERR_PTR(-EINVAL);
> > > -
> > > -     ctx = __create_context(i915);
> > > +     ctx = __create_context(i915, pc);
> > >       if (IS_ERR(ctx))
> > >               return ctx;
> > >
> > > -     if (HAS_FULL_PPGTT(i915)) {
> > > -             struct i915_ppgtt *ppgtt;
> > > -
> > > -             ppgtt = i915_ppgtt_create(&i915->gt);
> > > -             if (IS_ERR(ppgtt)) {
> > > -                     drm_dbg(&i915->drm, "PPGTT setup failed (%ld)\n",
> > > -                             PTR_ERR(ppgtt));
> > > -                     context_close(ctx);
> > > -                     return ERR_CAST(ppgtt);
> > > -             }
> > > -
> > > +     if (pc->vm) {
> > >               mutex_lock(&ctx->mutex);
> > > -             __assign_ppgtt(ctx, &ppgtt->vm);
> > > +             __assign_ppgtt(ctx, pc->vm);
> > >               mutex_unlock(&ctx->mutex);
> > > -
> > > -             i915_vm_put(&ppgtt->vm);
> > >       }
> > >
> > > -     if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE) {
> > > +     if (pc->single_timeline) {
> > >               ret = drm_syncobj_create(&ctx->syncobj,
> > >                                        DRM_SYNCOBJ_CREATE_SIGNALED,
> > >                                        NULL);
> > > @@ -883,6 +958,7 @@ int i915_gem_context_open(struct drm_i915_private *i915,
> > >                         struct drm_file *file)
> > >  {
> > >       struct drm_i915_file_private *file_priv = file->driver_priv;
> > > +     struct i915_gem_proto_context *pc;
> > >       struct i915_gem_context *ctx;
> > >       int err;
> > >       u32 id;
> > > @@ -892,7 +968,14 @@ int i915_gem_context_open(struct drm_i915_private *i915,
> > >       /* 0 reserved for invalid/unassigned ppgtt */
> > >       xa_init_flags(&file_priv->vm_xa, XA_FLAGS_ALLOC1);
> > >
> > > -     ctx = i915_gem_create_context(i915, 0);
> > > +     pc = proto_context_create(i915, 0);
> > > +     if (IS_ERR(pc)) {
> > > +             err = PTR_ERR(pc);
> > > +             goto err;
> > > +     }
> > > +
> > > +     ctx = i915_gem_create_context(i915, pc);
> > > +     proto_context_close(pc);
> > >       if (IS_ERR(ctx)) {
> > >               err = PTR_ERR(ctx);
> > >               goto err;
> > > @@ -1884,6 +1967,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
> > >  {
> > >       struct drm_i915_private *i915 = to_i915(dev);
> > >       struct drm_i915_gem_context_create_ext *args = data;
> > > +     struct i915_gem_proto_context *pc;
> > >       struct create_ext ext_data;
> > >       int ret;
> > >       u32 id;
> > > @@ -1906,7 +1990,12 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
> > >               return -EIO;
> > >       }
> > >
> > > -     ext_data.ctx = i915_gem_create_context(i915, args->flags);
> > > +     pc = proto_context_create(i915, args->flags);
> > > +     if (IS_ERR(pc))
> > > +             return PTR_ERR(pc);
> > > +
> > > +     ext_data.ctx = i915_gem_create_context(i915, pc);
> > > +     proto_context_close(pc);
> > >       if (IS_ERR(ext_data.ctx))
> > >               return PTR_ERR(ext_data.ctx);
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > > index 5f0673a2129f9..0bf337b6d89ac 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > > @@ -66,6 +66,28 @@ struct i915_gem_engines_iter {
> > >       const struct i915_gem_engines *engines;
> > >  };
> > >
> > > +/**
> > > + * struct i915_gem_proto_context - prototype context
> > > + *
> > > + * The struct i915_gem_proto_context represents the creation parameters for
> > > + * an i915_gem_context.  This is used to gather parameters provided either
> >
> > a struct i915_gem_context
>
> Done.
>
> > With that you get an automatic neat hyperlink. See
> >
> > https://dri.freedesktop.org/docs/drm/doc-guide/kernel-doc.html#highlights-and-cross-references
> >
> > for what it all recognizes automatically.
> >
> > > + * through creation flags or via SET_CONTEXT_PARAM so that, when we create
> > > + * the final i915_gem_context, those parameters can be immutable.
> > > + */
> > > +struct i915_gem_proto_context {
> > > +     /** @vm: See i915_gem_context::vm */
> >
> > Hyperlinks need &i915_gem_context.vm in kerneldoc. Same for the others
> > below.
>
> Fixed.
>
> I'll try to dig through your previous one now.  I thought I'd gotten
> everything but clearly you found something I hadn't.
>
> --Jason
>
> > > +     struct i915_address_space *vm;
> > > +
> > > +     /** @user_flags: See i915_gem_context::user_flags */
> > > +     unsigned long user_flags;
> > > +
> > > +     /** @sched: See i915_gem_context::sched */
> > > +     struct i915_sched_attr sched;
> > > +
> > > +     /** @single_timeline: See See i915_gem_context::syncobj */
> > > +     bool single_timeline;
> > > +};
> > > +
> > >  /**
> > >   * struct i915_gem_context - client state
> > >   *
> > > diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> > > index 51b5a3421b400..e0f512ef7f3c6 100644
> > > --- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> > > +++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> > > @@ -80,11 +80,17 @@ void mock_init_contexts(struct drm_i915_private *i915)
> > >  struct i915_gem_context *
> > >  live_context(struct drm_i915_private *i915, struct file *file)
> > >  {
> > > +     struct i915_gem_proto_context *pc;
> > >       struct i915_gem_context *ctx;
> > >       int err;
> > >       u32 id;
> > >
> > > -     ctx = i915_gem_create_context(i915, 0);
> > > +     pc = proto_context_create(i915, 0);
> > > +     if (IS_ERR(pc))
> > > +             return ERR_CAST(pc);
> > > +
> > > +     ctx = i915_gem_create_context(i915, pc);
> > > +     proto_context_close(pc);
> > >       if (IS_ERR(ctx))
> > >               return ctx;
> > >
> > > @@ -142,8 +148,14 @@ struct i915_gem_context *
> > >  kernel_context(struct drm_i915_private *i915)
> > >  {
> > >       struct i915_gem_context *ctx;
> > > +     struct i915_gem_proto_context *pc;
> > > +
> > > +     pc = proto_context_create(i915, 0);
> > > +     if (IS_ERR(pc))
> > > +             return ERR_CAST(pc);
> > >
> > > -     ctx = i915_gem_create_context(i915, 0);
> > > +     ctx = i915_gem_create_context(i915, pc);
> > > +     proto_context_close(pc);
> > >       if (IS_ERR(ctx))
> > >               return ctx;
> > >
> > > --
> > > 2.31.1
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
