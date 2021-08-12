Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 770173EA798
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 17:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D889C6E426;
	Thu, 12 Aug 2021 15:30:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com
 [IPv6:2607:f8b0:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 192A56E426
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 15:30:53 +0000 (UTC)
Received: by mail-ot1-x330.google.com with SMTP id
 c23-20020a0568301af7b029050cd611fb72so8213251otd.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 08:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pd3nlUI/4ybQKkVCffiGl79iQ7W3K9kweLfvYld3zIQ=;
 b=CWnb1or8rjYN8BnkDTTdrClywXA52eX7YKQcM+T4gKMVMNqslvMG7YXD7qF24LSOps
 Srkz3YYV7I+Q1Lwiv/2pimLclizQperVSDIk7i45WbIWBBLVRyxxpBNefTMaj2KJjhLR
 MHuA9eky16w3FBXqfwMIMyc7uWxYatgAGhzG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pd3nlUI/4ybQKkVCffiGl79iQ7W3K9kweLfvYld3zIQ=;
 b=itE4MgZ2zlU8N0PklMnd4N25u2yG4kEMnMELpN1E4RNY4G8tjvtoC5tLcU5Va9QCU2
 rhFGEETR3XYg056zygM1sbxTgJnk/7F/Wm7l7nbUSCLInf8yPYfcSwK4WH1rkx7R9yu1
 40nMtdGlYK/U7sMucOrievfDcGhEIrcipfjIdbB8LkGM4oGooG4G59D5kE/UxAONxkfn
 hd06oHJx87z//ONQ9W/XI7QyEP6mcVBhizYCwPtq/OfH7x1L1+RRAVqdX3f52tRSqs+6
 SLqUA7H8pCohSTzcQ1f3YgrOraUgLULEDGTV8K1oBSP7MjFpYb3s3PzEpo8F4Wv1GAfv
 SUVA==
X-Gm-Message-State: AOAM533MoldW3o5CP0lTa9OJZ/tYMJP0zAk03yxiBXlvQO9n9laJKnqE
 iU5niO1ACdb+LCz8WRmTELMMFJbp9ualSQw8JiZFCw==
X-Google-Smtp-Source: ABdhPJzz2PobnEMLBo8GEG7RgsSmCHSFW4SNg9C0XzBSsUh+5B9UxjbvB/HB3KfAxxSF5C5r8WXKa5KSOgBne7aHU0c=
X-Received: by 2002:a9d:6b85:: with SMTP id b5mr3815315otq.303.1628782252179; 
 Thu, 12 Aug 2021 08:30:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210810130523.1972031-1-daniel.vetter@ffwll.ch>
 <CAOFGe94PcMq5ZvF6E=Sc0ukv7SOo48EiKaLSYF=rPqCgjiargg@mail.gmail.com>
In-Reply-To: <CAOFGe94PcMq5ZvF6E=Sc0ukv7SOo48EiKaLSYF=rPqCgjiargg@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 12 Aug 2021 17:30:41 +0200
Message-ID: <CAKMK7uEeeQv84gXL=oMzM0m4VX_7FY2pTspA5Ag6j0XxP9WKvQ@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, 
 Chris Wilson <chris@chris-wilson.co.uk>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use locked access to ctx->engines
 in set_priority
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

On Thu, Aug 12, 2021 at 5:10 PM Jason Ekstrand <jason@jlekstrand.net> wrote:
> On Tue, Aug 10, 2021 at 8:05 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> >
> > This essentially reverts
> >
> > commit 89ff76bf9b3b0b86e6bbe344bd6378d8661303fc
> > Author: Chris Wilson <chris@chris-wilson.co.uk>
> > Date:   Thu Apr 2 13:42:18 2020 +0100
> >
> >     drm/i915/gem: Utilize rcu iteration of context engines
> >
> > Note that the other use of __context_engines_await have disappeard in
> > the following commits:
> >
> > ccbc1b97948a ("drm/i915/gem: Don't allow changing the VM on running contexts (v4)")
> > c7a71fc8ee04 ("drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES")
> > 4a766ae40ec8 ("drm/i915: Drop the CONTEXT_CLONE API (v2)")
> >
> > None of these have any business to optimize their engine lookup with
> > rcu, unless extremely convincing benchmark data and a solid analysis
> > why we can't make that workload (whatever it is that does) faster with
> > a proper design fix.
> >
> > Also since there's only one caller of context_apply_all left and it's
> > really just a loop, inline it and then inline the lopp body too. This
> > is how all other callers that take the engine lock loop over engines,
> > it's much simpler.
> >
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: Jason Ekstrand <jason@jlekstrand.net>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Matthew Brost <matthew.brost@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_context.c | 72 ++++-----------------
> >  1 file changed, 14 insertions(+), 58 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index dbaeb924a437..fd169cf2f75a 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -1284,49 +1284,6 @@ static int __context_set_persistence(struct i915_gem_context *ctx, bool state)
> >         return 0;
> >  }
> >
> > -static inline struct i915_gem_engines *
> > -__context_engines_await(const struct i915_gem_context *ctx,
> > -                       bool *user_engines)
> > -{
> > -       struct i915_gem_engines *engines;
> > -
> > -       rcu_read_lock();
> > -       do {
> > -               engines = rcu_dereference(ctx->engines);
> > -               GEM_BUG_ON(!engines);
> > -
> > -               if (user_engines)
> > -                       *user_engines = i915_gem_context_user_engines(ctx);
> > -
> > -               /* successful await => strong mb */
> > -               if (unlikely(!i915_sw_fence_await(&engines->fence)))
>
> Ugh... The first time I looked at this I thought the SW fence meant it
> was actually waiting on something.  But, no, it's just making sure the
> engines object still exists.  *sigh*  Burn it!

... why did you force me to page this in again, I already forgot.

> Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>

Merged to drm-intel-gt-next, thanks for the review.
-Daniel

>
> > -                       continue;
> > -
> > -               if (likely(engines == rcu_access_pointer(ctx->engines)))
> > -                       break;
> > -
> > -               i915_sw_fence_complete(&engines->fence);
> > -       } while (1);
> > -       rcu_read_unlock();
> > -
> > -       return engines;
> > -}
> > -
> > -static void
> > -context_apply_all(struct i915_gem_context *ctx,
> > -                 void (*fn)(struct intel_context *ce, void *data),
> > -                 void *data)
> > -{
> > -       struct i915_gem_engines_iter it;
> > -       struct i915_gem_engines *e;
> > -       struct intel_context *ce;
> > -
> > -       e = __context_engines_await(ctx, NULL);
> > -       for_each_gem_engine(ce, e, it)
> > -               fn(ce, data);
> > -       i915_sw_fence_complete(&e->fence);
> > -}
> > -
> >  static struct i915_gem_context *
> >  i915_gem_create_context(struct drm_i915_private *i915,
> >                         const struct i915_gem_proto_context *pc)
> > @@ -1776,23 +1733,11 @@ set_persistence(struct i915_gem_context *ctx,
> >         return __context_set_persistence(ctx, args->value);
> >  }
> >
> > -static void __apply_priority(struct intel_context *ce, void *arg)
> > -{
> > -       struct i915_gem_context *ctx = arg;
> > -
> > -       if (!intel_engine_has_timeslices(ce->engine))
> > -               return;
> > -
> > -       if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
> > -           intel_engine_has_semaphores(ce->engine))
> > -               intel_context_set_use_semaphores(ce);
> > -       else
> > -               intel_context_clear_use_semaphores(ce);
> > -}
> > -
> >  static int set_priority(struct i915_gem_context *ctx,
> >                         const struct drm_i915_gem_context_param *args)
> >  {
> > +       struct i915_gem_engines_iter it;
> > +       struct intel_context *ce;
> >         int err;
> >
> >         err = validate_priority(ctx->i915, args);
> > @@ -1800,7 +1745,18 @@ static int set_priority(struct i915_gem_context *ctx,
> >                 return err;
> >
> >         ctx->sched.priority = args->value;
> > -       context_apply_all(ctx, __apply_priority, ctx);
> > +
> > +       for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
> > +               if (!intel_engine_has_timeslices(ce->engine))
> > +                       continue;
> > +
> > +               if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
> > +                   intel_engine_has_semaphores(ce->engine))
> > +                       intel_context_set_use_semaphores(ce);
> > +               else
> > +                       intel_context_clear_use_semaphores(ce);
> > +       }
> > +       i915_gem_context_unlock_engines(ctx);
> >
> >         return 0;
> >  }
> > --
> > 2.32.0
> >



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
