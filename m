Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6115F36DE32
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 19:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B1A96E150;
	Wed, 28 Apr 2021 17:24:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E681A6E0EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 17:24:48 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id zg3so14193144ejb.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 10:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eWSzRkZ/1lchQfFcSV8aaCCO4V2RQigtx2Jp3AJCl+A=;
 b=BUz8sa42evjD61PZ0/Jo8lbdcoZTr1syBIpRHhk1HX6lIXmEpO21OSPixI1PlD53vE
 6axoJbrzgJ7u8AssIjIqhcVYAzTBBO+cFMmcmJlhsG2lnUdR9nFiiACsjbKbi5CC0tAp
 yDqOOFhc7fkBc5dTO2qBWHr0RsMSxpkjRycsIgOA2YOiXe+r3x1b+UMvjubF1jI9mhWX
 ODq5EtOB3gWs54p6Q0+gAAvIafHwqwVUWdTak45srcKaC6toLqQXmSKP+kANZq7kY8RZ
 iP4b9dV9lvJvjE5SBqyWGSluv0ZM2Nas58ce5LBxUBBVxKKiap5YGdwzP37T95ki3/w/
 nLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eWSzRkZ/1lchQfFcSV8aaCCO4V2RQigtx2Jp3AJCl+A=;
 b=hqSw6QDGRVCUvDovBmwNK4r656Ti1aM/8di1k85pKxLJUuxCWBjc2OeQqhTY1/M9UN
 ifbdWFxd+xzmpO11geu2w7MetReF33SDyaC7bFraO6ah54Sx2+StjPvRS4Lg0bl9ULV0
 ixCVACvzMzjsbMA1217xqq/ZkPuvFYuckkB9G0jMvF99wasJI1pwnaPe5usMSJqF+hFD
 Zp4Ai2qOsl9SKvlO4QeuVFpVotu18US923ZJIqV05lEx0e2ej4Yl5xbE73SNVvHIavOK
 xjNYd7aXPSFKbj5HiAPbCrUTzUnfbISGm4EzkB4t11PyS7PSFIkREflGQM+iFdTd5z1h
 0cow==
X-Gm-Message-State: AOAM533IEWH+So7joPEzgC/XdP5bzyQ7ZzK6zJqkmaIcSPWudmVFodyr
 5P7wjcl79foJWHHMzcvS909XHZiboD67BKxCFMl32ZnZXh0=
X-Google-Smtp-Source: ABdhPJwy6he3+CrKROpesh1sXYxC+XwRw8sjcpLSS29FoluUnZrFGxyT8xqzD7bqii3h5KmBO8rgFSdPp7rrWcD21/4=
X-Received: by 2002:a17:906:5c52:: with SMTP id
 c18mr2383666ejr.354.1619630687477; 
 Wed, 28 Apr 2021 10:24:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-4-jason@jlekstrand.net>
 <417fe44a-61f9-c90a-c255-309db5bb48ab@linux.intel.com>
In-Reply-To: <417fe44a-61f9-c90a-c255-309db5bb48ab@linux.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 28 Apr 2021 12:24:35 -0500
Message-ID: <CAOFGe96jXtyx2-hiYBmZPFqSx1G32Ph7SGguJQ=ZD4im=ZPJ5A@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/21] drm/i915/gem: Set the watchdog
 timeout directly in intel_context_set_gem
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

On Wed, Apr 28, 2021 at 10:55 AM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
> On 23/04/2021 23:31, Jason Ekstrand wrote:
> > Instead of handling it like a context param, unconditionally set it when
> > intel_contexts are created.  This doesn't fix anything but does simplify
> > the code a bit.
> >
> > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_context.c   | 43 +++----------------
> >   .../gpu/drm/i915/gem/i915_gem_context_types.h |  4 --
> >   drivers/gpu/drm/i915/gt/intel_context_param.h |  3 +-
> >   3 files changed, 6 insertions(+), 44 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index 35bcdeddfbf3f..1091cc04a242a 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -233,7 +233,11 @@ static void intel_context_set_gem(struct intel_context *ce,
> >           intel_engine_has_timeslices(ce->engine))
> >               __set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
> >
> > -     intel_context_set_watchdog_us(ce, ctx->watchdog.timeout_us);
> > +     if (IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT) &&
> > +         ctx->i915->params.request_timeout_ms) {
> > +             unsigned int timeout_ms = ctx->i915->params.request_timeout_ms;
> > +             intel_context_set_watchdog_us(ce, (u64)timeout_ms * 1000);
>
> Blank line between declarations and code please, or just lose the local.
>
> Otherwise looks okay. Slight change that same GEM context can now have a
> mix of different request expirations isn't interesting I think. At least
> the change goes away by the end of the series.

In order for that to happen, I think you'd have to have a race between
CREATE_CONTEXT and someone smashing the request_timeout_ms param via
sysfs.  Or am I missing something?  Given that timeouts are really
per-engine anyway, I don't think we need to care too much about that.

--Jason

> Regards,
>
> Tvrtko
>
> > +     }
> >   }
> >
> >   static void __free_engines(struct i915_gem_engines *e, unsigned int count)
> > @@ -792,41 +796,6 @@ static void __assign_timeline(struct i915_gem_context *ctx,
> >       context_apply_all(ctx, __apply_timeline, timeline);
> >   }
> >
> > -static int __apply_watchdog(struct intel_context *ce, void *timeout_us)
> > -{
> > -     return intel_context_set_watchdog_us(ce, (uintptr_t)timeout_us);
> > -}
> > -
> > -static int
> > -__set_watchdog(struct i915_gem_context *ctx, unsigned long timeout_us)
> > -{
> > -     int ret;
> > -
> > -     ret = context_apply_all(ctx, __apply_watchdog,
> > -                             (void *)(uintptr_t)timeout_us);
> > -     if (!ret)
> > -             ctx->watchdog.timeout_us = timeout_us;
> > -
> > -     return ret;
> > -}
> > -
> > -static void __set_default_fence_expiry(struct i915_gem_context *ctx)
> > -{
> > -     struct drm_i915_private *i915 = ctx->i915;
> > -     int ret;
> > -
> > -     if (!IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT) ||
> > -         !i915->params.request_timeout_ms)
> > -             return;
> > -
> > -     /* Default expiry for user fences. */
> > -     ret = __set_watchdog(ctx, i915->params.request_timeout_ms * 1000);
> > -     if (ret)
> > -             drm_notice(&i915->drm,
> > -                        "Failed to configure default fence expiry! (%d)",
> > -                        ret);
> > -}
> > -
> >   static struct i915_gem_context *
> >   i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
> >   {
> > @@ -871,8 +840,6 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
> >               intel_timeline_put(timeline);
> >       }
> >
> > -     __set_default_fence_expiry(ctx);
> > -
> >       trace_i915_context_create(ctx);
> >
> >       return ctx;
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > index 5ae71ec936f7c..676592e27e7d2 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > @@ -153,10 +153,6 @@ struct i915_gem_context {
> >        */
> >       atomic_t active_count;
> >
> > -     struct {
> > -             u64 timeout_us;
> > -     } watchdog;
> > -
> >       /**
> >        * @hang_timestamp: The last time(s) this context caused a GPU hang
> >        */
> > diff --git a/drivers/gpu/drm/i915/gt/intel_context_param.h b/drivers/gpu/drm/i915/gt/intel_context_param.h
> > index dffedd983693d..0c69cb42d075c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_context_param.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_context_param.h
> > @@ -10,11 +10,10 @@
> >
> >   #include "intel_context.h"
> >
> > -static inline int
> > +static inline void
> >   intel_context_set_watchdog_us(struct intel_context *ce, u64 timeout_us)
> >   {
> >       ce->watchdog.timeout_us = timeout_us;
> > -     return 0;
> >   }
> >
> >   #endif /* INTEL_CONTEXT_PARAM_H */
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
