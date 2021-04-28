Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2010636DEE8
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 20:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38546EC15;
	Wed, 28 Apr 2021 18:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DE756EC16
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 18:22:27 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id g10so7483615edb.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 11:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ho4IJBB4D5gfTcyzSiBn6FxbCuTNAxROiCIyCllL3nE=;
 b=LZR8pnMYAVd5S95Wy/heJlQ22SgvCf1YiGMa2zAZldyJNDsiFCdgvv5EpAmt83L2PW
 MNk48VO505SPn/VGa071MaI+T6m1oKfahJXkCsJWrhTsTbSKj/+QorB7SUA7dUdbqiN2
 36XC7l4daZJnrrA+TZ503fpzrwofFU21GZfzHQOYukBrdeI4W1HBj2ge55YQg4Q22o2X
 tq5TYpmkw1Q3XWKrqfzxgxs/+AdLNrw2HVy58KNKeNrqhQRrJPhIeHpemIpnzMMAbLHB
 kgcPHHGlDAD08pzXYOzN5xpQ0ePe7tT00oIA+L8wdGmhvIvyonqJEUPBoCIDgFse3HlK
 QfiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ho4IJBB4D5gfTcyzSiBn6FxbCuTNAxROiCIyCllL3nE=;
 b=G5PWj98GXxXyAwwMzNneIB0TWQS2wKpwUaMQyu33pD44uSiwzP95icZLDriGg5jGAi
 7+SO6lybvWxUBd24Mov5e3jS/Kt/1uA0NgV9H/2wEiHhtBset8CI7XVZYHpu+GU57jm4
 3UW+9erait4vbGxxRWGxnyWL3Fvya8P4CMteAFz33y99DPB2mlfHxZVNbOPB++t02DbT
 erhoDu/G+8oxnTkrXl442VzAK1Xtz74WquwXdUW2cGLnx/+b0Q8FgY0gnbG9ubTFkNjT
 Og8EO2Zju63dRtl0qu9bfZ9/aUPDD/vsAxtJWqVIl0r2LIeAo3NstuB+sxQ9CftSdiCX
 OJZg==
X-Gm-Message-State: AOAM530OnKphFCO09zqwymA7KpuvYuEfZup65RviWywgF9ls2D4bWz5v
 dP9+7vjWyCKpsO8AxqdmZsKP1UjynFQu9gNQ666JiKCcki99mA==
X-Google-Smtp-Source: ABdhPJyXeO/Z7dfD2tB/rw9MvyriA13/W5FApXn9He+6unZPcIc+5mjCF0wxS9ucaIb+aOc50mX8nhpYsEYnezGeWl4=
X-Received: by 2002:a05:6402:c8:: with SMTP id
 i8mr13460186edu.57.1619634145996; 
 Wed, 28 Apr 2021 11:22:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-12-jason@jlekstrand.net>
 <YIk4mcKOjRUKuHVB@phenom.ffwll.local>
In-Reply-To: <YIk4mcKOjRUKuHVB@phenom.ffwll.local>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 28 Apr 2021 13:22:14 -0500
Message-ID: <CAOFGe95NaBj+ag2Ez+zS-Tc3ociVpNcm99hvg+eYbQ2=N7pNQA@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 11/21] drm/i915: Stop manually RCU banging
 in reset_stats_ioctl
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

On Wed, Apr 28, 2021 at 5:27 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Fri, Apr 23, 2021 at 05:31:21PM -0500, Jason Ekstrand wrote:
> > As far as I can tell, the only real reason for this is to avoid taking a
> > reference to the i915_gem_context.  The cost of those two atomics
> > probably pales in comparison to the cost of the ioctl itself so we're
> > really not buying ourselves anything here.  We're about to make context
> > lookup a tiny bit more complicated, so let's get rid of the one hand-
> > rolled case.
>
> I think the historical reason here is that i965_brw checks this before
> every execbuf call, at least for arb_robustness contexts with the right
> flag. But we've fixed that hotpath problem by adding non-recoverable
> contexts. The kernel will tell you now automatically, for proper userspace
> at least (I checked iris and anv, assuming I got it correct), and
> reset_stats ioctl isn't a hot path worth micro-optimizing anymore.

I'm not sure I agree with that bit.  I don't think it was ever worth
micro-optimizing like this.  What does it gain us?  Two fewer atomics?
 It's not like the bad old days when it took a lock.

ANV still calls reset_stats before every set of execbuf (sometimes
more than one) but I've never once seen it show up on a perf trace.
execbuf, on the other hand, that does show up and pretty heavy
sometimes.

> With that bit of more context added to the commit message:

I'd like to agree on what to add before adding something

--Jason

> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>
> >
> > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_context.c | 13 ++++---------
> >  drivers/gpu/drm/i915/i915_drv.h             |  8 +-------
> >  2 files changed, 5 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index ecb3bf5369857..941fbf78267b4 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -2090,16 +2090,13 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
> >       struct drm_i915_private *i915 = to_i915(dev);
> >       struct drm_i915_reset_stats *args = data;
> >       struct i915_gem_context *ctx;
> > -     int ret;
> >
> >       if (args->flags || args->pad)
> >               return -EINVAL;
> >
> > -     ret = -ENOENT;
> > -     rcu_read_lock();
> > -     ctx = __i915_gem_context_lookup_rcu(file->driver_priv, args->ctx_id);
> > +     ctx = i915_gem_context_lookup(file->driver_priv, args->ctx_id);
> >       if (!ctx)
> > -             goto out;
> > +             return -ENOENT;
> >
> >       /*
> >        * We opt for unserialised reads here. This may result in tearing
> > @@ -2116,10 +2113,8 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
> >       args->batch_active = atomic_read(&ctx->guilty_count);
> >       args->batch_pending = atomic_read(&ctx->active_count);
> >
> > -     ret = 0;
> > -out:
> > -     rcu_read_unlock();
> > -     return ret;
> > +     i915_gem_context_put(ctx);
> > +     return 0;
> >  }
> >
> >  /* GEM context-engines iterator: for_each_gem_engine() */
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 0b44333eb7033..8571c5c1509a7 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1840,19 +1840,13 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
> >
> >  struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, int flags);
> >
> > -static inline struct i915_gem_context *
> > -__i915_gem_context_lookup_rcu(struct drm_i915_file_private *file_priv, u32 id)
> > -{
> > -     return xa_load(&file_priv->context_xa, id);
> > -}
> > -
> >  static inline struct i915_gem_context *
> >  i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
> >  {
> >       struct i915_gem_context *ctx;
> >
> >       rcu_read_lock();
> > -     ctx = __i915_gem_context_lookup_rcu(file_priv, id);
> > +     ctx = xa_load(&file_priv->context_xa, id);
> >       if (ctx && !kref_get_unless_zero(&ctx->ref))
> >               ctx = NULL;
> >       rcu_read_unlock();
> > --
> > 2.31.1
> >
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
