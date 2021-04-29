Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E287036EE9E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 19:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E1A6F3F3;
	Thu, 29 Apr 2021 17:12:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AEC16F3F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 17:12:09 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id m9so54938590wrx.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 10:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vhltQkdHHsN02bdBhJknOpAwmWxcENseY/NRc4kn9XU=;
 b=S1Ti/vM3Dz4Pc6ZQ4WRoFj8lfF4Q0zGDLxs8Pfpn8i4tejIqi185sfhLgqsjxh3HKL
 Ut7KtzUZqMiEtcscIBwJhUE2dPhhSr538ymuH/9TApc6ak389I9oZXopuIlYLnOlAsMS
 zKaBAcj5TDnmNUIZTwvP+yC2/fB8Dbyc0WZqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vhltQkdHHsN02bdBhJknOpAwmWxcENseY/NRc4kn9XU=;
 b=FR6JTXRR59NN8j2DyTj0ZhWIowRH7C4bT7JsC/QCG36Hb0na55NgC9nyc6tkDqMiyC
 XirSgu682csz29rRjYfboNzKzW9yzsdif1gYY2WJCu7+b/9SV8m0LHgbc+3DBewLdlyK
 4dVy/Bqr07Prxoo24Z3h4pmfEFIgzewKVbJF1AW65PcIqFcxjLpb95JuB6SRHOjkA14A
 2vWvLbEL11uZbu+uF+XVSti3IlYKOAtPtGasdh11SXS/ckU9lGz1rp7IB4NIE3EYP5lK
 gnWZ1Mxf/oQrhKi0zukSJ+s0dyFW6i1K81y2cj+plm8RCVgpaE0uj8ASdWLqElkrJu1m
 uF6Q==
X-Gm-Message-State: AOAM530Nj+/MbbcHaswejCAUZgORkIxD/UmV/93IEoPOcgaNmG7t3TBv
 6xcgbq7ektLJ5Xz3J+c2po9RihXuCXzWHA==
X-Google-Smtp-Source: ABdhPJxaZEA9KyTcgb7HC9KAiEl0g7df7fIy7UICHzazTavw7L36ZQHiLz3MsBvo3uF3iUfy/scEtg==
X-Received: by 2002:adf:f74e:: with SMTP id z14mr917092wrp.320.1619716327964; 
 Thu, 29 Apr 2021 10:12:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 61sm6374862wrm.52.2021.04.29.10.12.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 10:12:07 -0700 (PDT)
Date: Thu, 29 Apr 2021 19:12:05 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YIro5QLQQcf0CI4v@phenom.ffwll.local>
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-4-jason@jlekstrand.net>
 <417fe44a-61f9-c90a-c255-309db5bb48ab@linux.intel.com>
 <CAOFGe96jXtyx2-hiYBmZPFqSx1G32Ph7SGguJQ=ZD4im=ZPJ5A@mail.gmail.com>
 <19ee110c-f251-20b1-5ca8-d280b724ccbf@linux.intel.com>
 <CAOFGe95D81vvT1AQPF_sbqWQMZAJeZmr92xgd2m=GZY4TxGYUw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOFGe95D81vvT1AQPF_sbqWQMZAJeZmr92xgd2m=GZY4TxGYUw@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
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

On Thu, Apr 29, 2021 at 09:54:15AM -0500, Jason Ekstrand wrote:
> On Thu, Apr 29, 2021 at 3:04 AM Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
> >
> >
> > On 28/04/2021 18:24, Jason Ekstrand wrote:
> > > On Wed, Apr 28, 2021 at 10:55 AM Tvrtko Ursulin
> > > <tvrtko.ursulin@linux.intel.com> wrote:
> > >> On 23/04/2021 23:31, Jason Ekstrand wrote:
> > >>> Instead of handling it like a context param, unconditionally set it when
> > >>> intel_contexts are created.  This doesn't fix anything but does simplify
> > >>> the code a bit.
> > >>>
> > >>> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > >>> ---
> > >>>    drivers/gpu/drm/i915/gem/i915_gem_context.c   | 43 +++----------------
> > >>>    .../gpu/drm/i915/gem/i915_gem_context_types.h |  4 --
> > >>>    drivers/gpu/drm/i915/gt/intel_context_param.h |  3 +-
> > >>>    3 files changed, 6 insertions(+), 44 deletions(-)
> > >>>
> > >>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > >>> index 35bcdeddfbf3f..1091cc04a242a 100644
> > >>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > >>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > >>> @@ -233,7 +233,11 @@ static void intel_context_set_gem(struct intel_context *ce,
> > >>>            intel_engine_has_timeslices(ce->engine))
> > >>>                __set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
> > >>>
> > >>> -     intel_context_set_watchdog_us(ce, ctx->watchdog.timeout_us);
> > >>> +     if (IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT) &&
> > >>> +         ctx->i915->params.request_timeout_ms) {
> > >>> +             unsigned int timeout_ms = ctx->i915->params.request_timeout_ms;
> > >>> +             intel_context_set_watchdog_us(ce, (u64)timeout_ms * 1000);
> > >>
> > >> Blank line between declarations and code please, or just lose the local.
> > >>
> > >> Otherwise looks okay. Slight change that same GEM context can now have a
> > >> mix of different request expirations isn't interesting I think. At least
> > >> the change goes away by the end of the series.
> > >
> > > In order for that to happen, I think you'd have to have a race between
> > > CREATE_CONTEXT and someone smashing the request_timeout_ms param via
> > > sysfs.  Or am I missing something?  Given that timeouts are really
> > > per-engine anyway, I don't think we need to care too much about that.
> >
> > We don't care, no.
> >
> > For completeness only - by the end of the series it is what you say. But
> > at _this_ point in the series though it is if modparam changes at any
> > point between context create and replacing engines. Which is a change
> > compared to before this patch, since modparam was cached in the GEM
> > context so far. So one GEM context was a single request_timeout_ms.
> 
> I've added the following to the commit message:
> 
> It also means that sync files exported from different engines on a
> SINGLE_TIMELINE context will have different fence contexts.  This is
> visible to userspace if it looks at the obj_name field of
> sync_fence_info.
> 
> How's that sound?

If you add "Which media-driver as the sole user of this doesn't do" then I
think it's perfect.
-Daniel

> 
> --Jason
> 
> > Regards,
> >
> > Tvrtko
> >
> > > --Jason
> > >
> > >> Regards,
> > >>
> > >> Tvrtko
> > >>
> > >>> +     }
> > >>>    }
> > >>>
> > >>>    static void __free_engines(struct i915_gem_engines *e, unsigned int count)
> > >>> @@ -792,41 +796,6 @@ static void __assign_timeline(struct i915_gem_context *ctx,
> > >>>        context_apply_all(ctx, __apply_timeline, timeline);
> > >>>    }
> > >>>
> > >>> -static int __apply_watchdog(struct intel_context *ce, void *timeout_us)
> > >>> -{
> > >>> -     return intel_context_set_watchdog_us(ce, (uintptr_t)timeout_us);
> > >>> -}
> > >>> -
> > >>> -static int
> > >>> -__set_watchdog(struct i915_gem_context *ctx, unsigned long timeout_us)
> > >>> -{
> > >>> -     int ret;
> > >>> -
> > >>> -     ret = context_apply_all(ctx, __apply_watchdog,
> > >>> -                             (void *)(uintptr_t)timeout_us);
> > >>> -     if (!ret)
> > >>> -             ctx->watchdog.timeout_us = timeout_us;
> > >>> -
> > >>> -     return ret;
> > >>> -}
> > >>> -
> > >>> -static void __set_default_fence_expiry(struct i915_gem_context *ctx)
> > >>> -{
> > >>> -     struct drm_i915_private *i915 = ctx->i915;
> > >>> -     int ret;
> > >>> -
> > >>> -     if (!IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT) ||
> > >>> -         !i915->params.request_timeout_ms)
> > >>> -             return;
> > >>> -
> > >>> -     /* Default expiry for user fences. */
> > >>> -     ret = __set_watchdog(ctx, i915->params.request_timeout_ms * 1000);
> > >>> -     if (ret)
> > >>> -             drm_notice(&i915->drm,
> > >>> -                        "Failed to configure default fence expiry! (%d)",
> > >>> -                        ret);
> > >>> -}
> > >>> -
> > >>>    static struct i915_gem_context *
> > >>>    i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
> > >>>    {
> > >>> @@ -871,8 +840,6 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
> > >>>                intel_timeline_put(timeline);
> > >>>        }
> > >>>
> > >>> -     __set_default_fence_expiry(ctx);
> > >>> -
> > >>>        trace_i915_context_create(ctx);
> > >>>
> > >>>        return ctx;
> > >>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > >>> index 5ae71ec936f7c..676592e27e7d2 100644
> > >>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > >>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > >>> @@ -153,10 +153,6 @@ struct i915_gem_context {
> > >>>         */
> > >>>        atomic_t active_count;
> > >>>
> > >>> -     struct {
> > >>> -             u64 timeout_us;
> > >>> -     } watchdog;
> > >>> -
> > >>>        /**
> > >>>         * @hang_timestamp: The last time(s) this context caused a GPU hang
> > >>>         */
> > >>> diff --git a/drivers/gpu/drm/i915/gt/intel_context_param.h b/drivers/gpu/drm/i915/gt/intel_context_param.h
> > >>> index dffedd983693d..0c69cb42d075c 100644
> > >>> --- a/drivers/gpu/drm/i915/gt/intel_context_param.h
> > >>> +++ b/drivers/gpu/drm/i915/gt/intel_context_param.h
> > >>> @@ -10,11 +10,10 @@
> > >>>
> > >>>    #include "intel_context.h"
> > >>>
> > >>> -static inline int
> > >>> +static inline void
> > >>>    intel_context_set_watchdog_us(struct intel_context *ce, u64 timeout_us)
> > >>>    {
> > >>>        ce->watchdog.timeout_us = timeout_us;
> > >>> -     return 0;
> > >>>    }
> > >>>
> > >>>    #endif /* INTEL_CONTEXT_PARAM_H */
> > >>>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
