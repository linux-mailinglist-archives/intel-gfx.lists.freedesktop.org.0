Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B8936EEB2
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 19:16:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 116F46F3FC;
	Thu, 29 Apr 2021 17:16:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4311B6F3FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 17:16:41 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id h15so15440462wre.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 10:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yZg4I7GGuoymyvYn0QnJ2u8BIQYtSonX5/395f5LN1s=;
 b=lxPMXVCQ3w9GG8PZORQtq3/JkmnOHRTpVVrsMF4arKHt49oLDOlg8cpZMFeFINLO0G
 B63kOzPcl1U4jO2IVVxh12E6Lb61NZAlk84+0xOaD1lelxFnURa7/Jky6Dw5vgbIxqkx
 UtXeNTEZp2pwHWeW9zvrN9lDjGCAXmzVIJJr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yZg4I7GGuoymyvYn0QnJ2u8BIQYtSonX5/395f5LN1s=;
 b=HT4rc7Pg4YKce221b4uWyv2ulhCzZUskbqizSqYC/AWQu+3JLnwR8M1Cssm4fLFS5P
 Y3nq1s5iP5f0FVts5m+aQIBe0CxPsBY4zi+rIhwOrGHSAMUhIzb84/XA6GPfpPO3xqtu
 65D38daYGeU2g+DmnHW+hgOy5FMA0R5u82HXgB4eS+UbHJD32jTl6DQ2zi7xFtm+DDUE
 d4o97xczFvQ/Ipx6w7GIOox7hLm032rnnqg4Zs1UkkzpNo3pJg6zOnCkMqdAJMQny5Rp
 VaVWMhzZTl6eaOCRQ42DgLQwS8quWhUh9SDc5N96WmOmEIivorjuDisFN3Qn+DQtCSxk
 ogzg==
X-Gm-Message-State: AOAM530jx0lCNvVFBBRTQyg8nL/rth8OUIWROR/yC5LmcCTFB+ZhrFl9
 odPloESQS4wqOz3dOazgvTgD0A==
X-Google-Smtp-Source: ABdhPJyWBvxkjD/S34ShuBFduvAFP3WoxCqxegWISJu5gKlCS3SjUVhRnmfaw2qBmfDbPr3HdhHwqg==
X-Received: by 2002:a5d:4308:: with SMTP id h8mr873115wrq.371.1619716599931;
 Thu, 29 Apr 2021 10:16:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm5372310wrv.39.2021.04.29.10.16.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 10:16:39 -0700 (PDT)
Date: Thu, 29 Apr 2021 19:16:37 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YIrp9d3kLM7v6UGE@phenom.ffwll.local>
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-15-jason@jlekstrand.net>
 <YIq0QnVG5gn4cOOR@phenom.ffwll.local>
 <CAOFGe97MtMe3OnkYpy4oyLDCLugo5U=orQeONZCBNLiJmX-P5g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOFGe97MtMe3OnkYpy4oyLDCLugo5U=orQeONZCBNLiJmX-P5g@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
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

On Thu, Apr 29, 2021 at 10:29:51AM -0500, Jason Ekstrand wrote:
> On Thu, Apr 29, 2021 at 8:27 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Fri, Apr 23, 2021 at 05:31:24PM -0500, Jason Ekstrand wrote:
> > > We're about to start doing lazy context creation which means contexts
> > > get created in i915_gem_context_lookup and we may start having more
> > > errors than -ENOENT.
> > >
> > > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > > ---
> > >  drivers/gpu/drm/i915/gem/i915_gem_context.c    | 12 ++++++------
> > >  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c |  4 ++--
> > >  drivers/gpu/drm/i915/i915_drv.h                |  2 +-
> > >  drivers/gpu/drm/i915/i915_perf.c               |  4 ++--
> > >  4 files changed, 11 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > index 3e883daab93bf..7929d5a8be449 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > @@ -2105,8 +2105,8 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
> > >       int ret = 0;
> > >
> > >       ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
> > > -     if (!ctx)
> > > -             return -ENOENT;
> > > +     if (IS_ERR(ctx))
> > > +             return PTR_ERR(ctx);
> > >
> > >       switch (args->param) {
> > >       case I915_CONTEXT_PARAM_GTT_SIZE:
> > > @@ -2174,8 +2174,8 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
> > >       int ret;
> > >
> > >       ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
> > > -     if (!ctx)
> > > -             return -ENOENT;
> > > +     if (IS_ERR(ctx))
> > > +             return PTR_ERR(ctx);
> > >
> > >       ret = ctx_setparam(file_priv, ctx, args);
> > >
> > > @@ -2194,8 +2194,8 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
> > >               return -EINVAL;
> > >
> > >       ctx = i915_gem_context_lookup(file->driver_priv, args->ctx_id);
> > > -     if (!ctx)
> > > -             return -ENOENT;
> > > +     if (IS_ERR(ctx))
> > > +             return PTR_ERR(ctx);
> > >
> > >       /*
> > >        * We opt for unserialised reads here. This may result in tearing
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > index 7024adcd5cf15..de14b26f3b2d5 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > @@ -739,8 +739,8 @@ static int eb_select_context(struct i915_execbuffer *eb)
> > >       struct i915_gem_context *ctx;
> > >
> > >       ctx = i915_gem_context_lookup(eb->file->driver_priv, eb->args->rsvd1);
> > > -     if (unlikely(!ctx))
> > > -             return -ENOENT;
> > > +     if (unlikely(IS_ERR(ctx)))
> > > +             return PTR_ERR(ctx);
> > >
> > >       eb->gem_context = ctx;
> > >       if (rcu_access_pointer(ctx->vm))
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > index 8571c5c1509a7..004ed0e59c999 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> >
> > I just realized that I think __i915_gem_context_lookup_rcu doesn't have
> > users anymore. Please make sure it's deleted.
> 
> I deleted it in "drm/i915: Stop manually RCU banging in reset_stats_ioctl"

Indeed that's the case, so looks all fine. The benefits of reviewing
patches one-by-one :-/
-Daniel

> 
> 
> > > @@ -1851,7 +1851,7 @@ i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
> > >               ctx = NULL;
> > >       rcu_read_unlock();
> > >
> > > -     return ctx;
> > > +     return ctx ? ctx : ERR_PTR(-ENOENT);
> > >  }
> > >
> > >  /* i915_gem_evict.c */
> > > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> > > index 85ad62dbabfab..b86ed03f6a705 100644
> > > --- a/drivers/gpu/drm/i915/i915_perf.c
> > > +++ b/drivers/gpu/drm/i915/i915_perf.c
> > > @@ -3414,10 +3414,10 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
> > >               struct drm_i915_file_private *file_priv = file->driver_priv;
> > >
> > >               specific_ctx = i915_gem_context_lookup(file_priv, ctx_handle);
> > > -             if (!specific_ctx) {
> > > +             if (IS_ERR(specific_ctx)) {
> > >                       DRM_DEBUG("Failed to look up context with ID %u for opening perf stream\n",
> > >                                 ctx_handle);
> > > -                     ret = -ENOENT;
> > > +                     ret = PTR_ERR(specific_ctx);
> >
> > Yeah this looks like a nice place to integrate this.
> >
> > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> >
> > One thing we need to make sure in the next patch or thereabouts is that
> > lookup can only return ENOENT or ENOMEM, but never EINVAL. I'll drop some
> > bikesheds on that :-)
> 
> I believe that is the case.  All -EINVAL should be handled in the
> proto-context code.
> 
> --Jason
> 
> > -Daniel
> >
> > >                       goto err;
> > >               }
> > >       }
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
