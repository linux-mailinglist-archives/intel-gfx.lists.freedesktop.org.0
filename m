Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6B936ED6B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 17:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE7BB6F380;
	Thu, 29 Apr 2021 15:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 038D46F380
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 15:30:03 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id n25so6973935edr.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 08:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6myubVssAw7lXkBZnLQFsXUBp/1Vkzd2EgxiGxWvdnQ=;
 b=SRj8V17ilWzWaK3nNaggXmUCxyGYY1kIc6QJ2uaf6e9YycUXjWbMmyY1WrBsdLS5Kk
 XBt8M5nxe6cf1aSSmZpYhg5dQOQ0Qu/4vLsYNhnbXK2ZqErDiU4XByXmLxuEsYDODep8
 P/KaDynAq42UI3JE4AppFdR/sxSzR04/OJzHSEX/5m+RPbB4KngJQOjF1BHewa5I3Dx6
 vdpS1GW5KywHlIqTvYynUbtrD5tRud64IgBzzPf2jTHbWEeCTKc5Gek5jgPFUOKjqb8d
 aweGU+mlbLM2hKEqUKk+zNyDTIb9d1oc2RsBMqoDI8ul+JFatT98Gy2Ci1uI05FGOCzq
 lI/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6myubVssAw7lXkBZnLQFsXUBp/1Vkzd2EgxiGxWvdnQ=;
 b=Cr7ryIIwD7yaZw14K3nAFvMEPmayDBkbaZ9WxfWyzDeOQj7sHVgcW8NXasCxJ+WjGU
 uD4QIdyTublll/pHv1nMbDegyr/tcI7gX1PR9IFSZGRx6ymKqyCzutM2UiOcTHO/DQwv
 nW9U3QC0yGXDgVQY/HPPd2VV6SDYs1o9Rf7itbnL7BKaf6/REIhYtP9nNwxQi1IcS4yS
 IEnge4s4bcC5qx53qQn3gWIYNStptKKhqiwaGdNkNAYdZoJcRKi6A4PMAuZEfBZYwoX/
 kfeQAnUElbV/vDrG8YFe7y17LWUiZ+lrx64G2YlNRiZAbOEqkn2N2h3NjTAhrtrcjnaW
 MC+A==
X-Gm-Message-State: AOAM531BEEXI/O4Rcpi9ehib3rVnry3KkmiiRYIYVi+Y3MVcbmPI043G
 YFmnf+gHwRsV+sRBhJgW98jVbJdxbTt/BlA58uRrrwxkTZai7Q==
X-Google-Smtp-Source: ABdhPJwf28p8ZByF94cnscZwNdYiaOLHujI4rhp01F66ZlTvb9hfp1zAOQpARIr02aNQ3uTSbnXRw6Ly4QFHEnTZiHs=
X-Received: by 2002:a05:6402:1013:: with SMTP id
 c19mr95156edu.213.1619710202457; 
 Thu, 29 Apr 2021 08:30:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-15-jason@jlekstrand.net>
 <YIq0QnVG5gn4cOOR@phenom.ffwll.local>
In-Reply-To: <YIq0QnVG5gn4cOOR@phenom.ffwll.local>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 29 Apr 2021 10:29:51 -0500
Message-ID: <CAOFGe97MtMe3OnkYpy4oyLDCLugo5U=orQeONZCBNLiJmX-P5g@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 14/21] drm/i915/gem: Return an error ptr
 from context_lookup
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

On Thu, Apr 29, 2021 at 8:27 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Fri, Apr 23, 2021 at 05:31:24PM -0500, Jason Ekstrand wrote:
> > We're about to start doing lazy context creation which means contexts
> > get created in i915_gem_context_lookup and we may start having more
> > errors than -ENOENT.
> >
> > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_context.c    | 12 ++++++------
> >  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c |  4 ++--
> >  drivers/gpu/drm/i915/i915_drv.h                |  2 +-
> >  drivers/gpu/drm/i915/i915_perf.c               |  4 ++--
> >  4 files changed, 11 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index 3e883daab93bf..7929d5a8be449 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -2105,8 +2105,8 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
> >       int ret = 0;
> >
> >       ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
> > -     if (!ctx)
> > -             return -ENOENT;
> > +     if (IS_ERR(ctx))
> > +             return PTR_ERR(ctx);
> >
> >       switch (args->param) {
> >       case I915_CONTEXT_PARAM_GTT_SIZE:
> > @@ -2174,8 +2174,8 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
> >       int ret;
> >
> >       ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
> > -     if (!ctx)
> > -             return -ENOENT;
> > +     if (IS_ERR(ctx))
> > +             return PTR_ERR(ctx);
> >
> >       ret = ctx_setparam(file_priv, ctx, args);
> >
> > @@ -2194,8 +2194,8 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
> >               return -EINVAL;
> >
> >       ctx = i915_gem_context_lookup(file->driver_priv, args->ctx_id);
> > -     if (!ctx)
> > -             return -ENOENT;
> > +     if (IS_ERR(ctx))
> > +             return PTR_ERR(ctx);
> >
> >       /*
> >        * We opt for unserialised reads here. This may result in tearing
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index 7024adcd5cf15..de14b26f3b2d5 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -739,8 +739,8 @@ static int eb_select_context(struct i915_execbuffer *eb)
> >       struct i915_gem_context *ctx;
> >
> >       ctx = i915_gem_context_lookup(eb->file->driver_priv, eb->args->rsvd1);
> > -     if (unlikely(!ctx))
> > -             return -ENOENT;
> > +     if (unlikely(IS_ERR(ctx)))
> > +             return PTR_ERR(ctx);
> >
> >       eb->gem_context = ctx;
> >       if (rcu_access_pointer(ctx->vm))
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 8571c5c1509a7..004ed0e59c999 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
>
> I just realized that I think __i915_gem_context_lookup_rcu doesn't have
> users anymore. Please make sure it's deleted.

I deleted it in "drm/i915: Stop manually RCU banging in reset_stats_ioctl"


> > @@ -1851,7 +1851,7 @@ i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
> >               ctx = NULL;
> >       rcu_read_unlock();
> >
> > -     return ctx;
> > +     return ctx ? ctx : ERR_PTR(-ENOENT);
> >  }
> >
> >  /* i915_gem_evict.c */
> > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> > index 85ad62dbabfab..b86ed03f6a705 100644
> > --- a/drivers/gpu/drm/i915/i915_perf.c
> > +++ b/drivers/gpu/drm/i915/i915_perf.c
> > @@ -3414,10 +3414,10 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
> >               struct drm_i915_file_private *file_priv = file->driver_priv;
> >
> >               specific_ctx = i915_gem_context_lookup(file_priv, ctx_handle);
> > -             if (!specific_ctx) {
> > +             if (IS_ERR(specific_ctx)) {
> >                       DRM_DEBUG("Failed to look up context with ID %u for opening perf stream\n",
> >                                 ctx_handle);
> > -                     ret = -ENOENT;
> > +                     ret = PTR_ERR(specific_ctx);
>
> Yeah this looks like a nice place to integrate this.
>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>
> One thing we need to make sure in the next patch or thereabouts is that
> lookup can only return ENOENT or ENOMEM, but never EINVAL. I'll drop some
> bikesheds on that :-)

I believe that is the case.  All -EINVAL should be handled in the
proto-context code.

--Jason

> -Daniel
>
> >                       goto err;
> >               }
> >       }
> > --
> > 2.31.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
