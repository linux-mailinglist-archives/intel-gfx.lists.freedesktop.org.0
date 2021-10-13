Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD19E42BF54
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 13:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EDA06EA31;
	Wed, 13 Oct 2021 11:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62986EA31
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 11:59:51 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id o20so7546227wro.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 04:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=3IUGSdWJ6vLHJQRdzYPGx8RtOylR2G7gzR1KKlt9a84=;
 b=G9pyQeh9ISQDJjza6hDSI10j+KKDHtX9C/zjxhgy92n9Rt+puCZDvAS3Dxx9ICeTNO
 J30nPRDXPTbevmgwPStGUqvKmSyMNUI/oefzS9xMgUmTeAGtvomVyYKb9oBJonh9PZKs
 YOas+1WQDaJPHhJpZ+Pm45Fbs0p47gqchHm84=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=3IUGSdWJ6vLHJQRdzYPGx8RtOylR2G7gzR1KKlt9a84=;
 b=ovK741CiAvEEs43s6mbGs5r92l46Yn4MZoeFoF3PUBj+p9B59P92icy1o5qpxTc/JI
 HrUEZpcIVpxgT+47QO/r2y6wfOjLvBAJ00NykGJxMD2mA5wjDBKvr7NlpyZNem9CzFb7
 6KwUv6wushA/KH0e74tnnIByPbI8elNQjv5GtEmyHoYo4h1ENAT/PynwwoUw9clJ3bLr
 o5NX9fj9uTtn1sv4K9DMZ+8M9FU2yL71YKdlgN/gdcmE3rDqBNCVDPEMiT9i3YBNMold
 ZU4WseQQWu98GumiGcbOyKtMx+ycZpkgqAszTXTtBLPajJCD//qQhJNYVzuz2TV0jZCF
 yzSg==
X-Gm-Message-State: AOAM531GReAAfnuIKv4tvKssit99dWIWMj2A+/siMSInIoz+F59pDoqk
 YYQ/b539ixU8/ILP5x0FUTXsfA==
X-Google-Smtp-Source: ABdhPJwzMG33cfkBfmlq580SuLouqXqAhhzMeDiY2KmFBB8XTLxuN9qeRBOvUQcJpsh79x4JfOfYmw==
X-Received: by 2002:a5d:64ee:: with SMTP id g14mr17007579wri.376.1634126390103; 
 Wed, 13 Oct 2021 04:59:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 36sm12993377wrc.92.2021.10.13.04.59.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 04:59:49 -0700 (PDT)
Date: Wed, 13 Oct 2021 13:59:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Sean Paul <seanpaul@chromium.org>,
 Fernando Ramos <greenfoo@u92.eu>
Message-ID: <YWbKM9Fo5OHGafAY@phenom.ffwll.local>
References: <20210715184954.7794-1-ville.syrjala@linux.intel.com>
 <20210715184954.7794-2-ville.syrjala@linux.intel.com>
 <YPbTUf9KfiZ5GnFz@phenom.ffwll.local> <YVriZxCeipBUgc8O@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YVriZxCeipBUgc8O@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/4] drm: Introduce
 drm_modeset_lock_ctx_retry()
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

On Mon, Oct 04, 2021 at 02:15:51PM +0300, Ville Syrjälä wrote:
> On Tue, Jul 20, 2021 at 03:44:49PM +0200, Daniel Vetter wrote:
> > On Thu, Jul 15, 2021 at 09:49:51PM +0300, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Quite a few places are hand rolling the modeset lock backoff dance.
> > > Let's suck that into a helper macro that is easier to use without
> > > forgetting some steps.
> > > 
> > > The main downside is probably that the implementation of
> > > drm_with_modeset_lock_ctx() is a bit harder to read than a hand
> > > rolled version on account of being split across three functions,
> > > but the actual code using it ends up being much simpler.
> > > 
> > > Cc: Sean Paul <seanpaul@chromium.org>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/drm_modeset_lock.c | 44 ++++++++++++++++++++++++++++++
> > >  include/drm/drm_modeset_lock.h     | 20 ++++++++++++++
> > >  2 files changed, 64 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/drm_modeset_lock.c b/drivers/gpu/drm/drm_modeset_lock.c
> > > index fcfe1a03c4a1..083df96632e8 100644
> > > --- a/drivers/gpu/drm/drm_modeset_lock.c
> > > +++ b/drivers/gpu/drm/drm_modeset_lock.c
> > > @@ -425,3 +425,47 @@ int drm_modeset_lock_all_ctx(struct drm_device *dev,
> > >  	return 0;
> > >  }
> > >  EXPORT_SYMBOL(drm_modeset_lock_all_ctx);
> > > +
> > > +void _drm_modeset_lock_begin(struct drm_modeset_acquire_ctx *ctx,
> > > +			     struct drm_atomic_state *state,
> > > +			     unsigned int flags, int *ret)
> > > +{
> > > +	drm_modeset_acquire_init(ctx, flags);
> > > +
> > > +	if (state)
> > > +		state->acquire_ctx = ctx;
> > > +
> > > +	*ret = -EDEADLK;
> > > +}
> > > +EXPORT_SYMBOL(_drm_modeset_lock_begin);
> > > +
> > > +bool _drm_modeset_lock_loop(int *ret)
> > > +{
> > > +	if (*ret == -EDEADLK) {
> > > +		*ret = 0;
> > > +		return true;
> > > +	}
> > > +
> > > +	return false;
> > > +}
> > > +EXPORT_SYMBOL(_drm_modeset_lock_loop);
> > > +
> > > +void _drm_modeset_lock_end(struct drm_modeset_acquire_ctx *ctx,
> > > +			   struct drm_atomic_state *state,
> > > +			   int *ret)
> > > +{
> > > +	if (*ret == -EDEADLK) {
> > > +		if (state)
> > > +			drm_atomic_state_clear(state);
> > > +
> > > +		*ret = drm_modeset_backoff(ctx);
> > > +		if (*ret == 0) {
> > > +			*ret = -EDEADLK;
> > > +			return;
> > > +		}
> > > +	}
> > > +
> > > +	drm_modeset_drop_locks(ctx);
> > > +	drm_modeset_acquire_fini(ctx);
> > > +}
> > > +EXPORT_SYMBOL(_drm_modeset_lock_end);
> > > diff --git a/include/drm/drm_modeset_lock.h b/include/drm/drm_modeset_lock.h
> > > index aafd07388eb7..5eaad2533de5 100644
> > > --- a/include/drm/drm_modeset_lock.h
> > > +++ b/include/drm/drm_modeset_lock.h
> > > @@ -26,6 +26,7 @@
> > >  
> > >  #include <linux/ww_mutex.h>
> > >  
> > > +struct drm_atomic_state;
> > >  struct drm_modeset_lock;
> > >  
> > >  /**
> > > @@ -203,4 +204,23 @@ modeset_lock_fail:							\
> > >  	if (!drm_drv_uses_atomic_modeset(dev))				\
> > >  		mutex_unlock(&dev->mode_config.mutex);
> > >  
> > > +void _drm_modeset_lock_begin(struct drm_modeset_acquire_ctx *ctx,
> > > +			     struct drm_atomic_state *state,
> > > +			     unsigned int flags,
> > > +			     int *ret);
> > > +bool _drm_modeset_lock_loop(int *ret);
> > > +void _drm_modeset_lock_end(struct drm_modeset_acquire_ctx *ctx,
> > > +			   struct drm_atomic_state *state,
> > > +			   int *ret);
> > > +
> > > +/*
> > > + * Note that one must always use "continue" rather than
> > > + * "break" or "return" to handle errors within the
> > > + * drm_modeset_lock_ctx_retry() block.
> > 
> > I'm not sold on loop macros with these kind of restrictions, C just isn't
> > a great language for these. That's why e.g. drm_connector_iter doesn't
> > give you a macro, but only the begin/next/end function calls explicitly.
> 
> We already use this pattern extensively in i915. Gem ww ctx has one,
> power domains/pps/etc. use a similar things. It makes the code pretty nice,
> with the slight caveat that an accidental 'break' can ruin your day. But
> so can an accidental return with other constructs (and we even had that
> happen a few times with the connector iterators), so not a dealbreaker
> IMO.
> 
> So if we don't want this drm wide I guess I can propose this just for
> i915 since it fits in perfectly there.

Well I don't like them for i915 either.

And yes C is dangerous, but also C is verbose. I think one lesson from igt
is that too many magic block constructs are bad, it's just not how C
works. Definitely not in the kernel, where "oops I got it wrong because it
was too clever" is bad.

> > Yes the macro we have is also not nice, but at least it's a screaming
> > macro since it's all uppercase, so options are all a bit sucky. Which
> > leads me to think we have a bit a https://xkcd.com/927/ situation going
> > on.
> > 
> > I think minimally we should have one way to do this.
> 
> Well, there is no one way atm. All you can do is hand roll all the
> boilerplate (and likely get it slightly wrong) if you don't want
> lock_all.
> 
> The current macros only help with lock_all, and IMO the hidden gotos
> are even uglier than a hidden for loop. Fernando already hit a case
> where he couldn't use the macros twice due to conflicting goto
> labels. With this for loop thing I think it would have just worked(tm).

I'm totally ok with repainting the shed, I just don't want some 80s
multicolor flash show.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
