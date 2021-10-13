Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAA442BF86
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 14:07:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4076E6EA35;
	Wed, 13 Oct 2021 12:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E9816EA35;
 Wed, 13 Oct 2021 12:06:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="208209725"
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="208209725"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 05:06:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="570809847"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 13 Oct 2021 05:06:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Oct 2021 15:06:53 +0300
Date: Wed, 13 Oct 2021 15:06:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, Fernando Ramos <greenfoo@u92.eu>
Message-ID: <YWbL3Z0UNZLMLC59@intel.com>
References: <20210715184954.7794-1-ville.syrjala@linux.intel.com>
 <20210715184954.7794-2-ville.syrjala@linux.intel.com>
 <YPbTUf9KfiZ5GnFz@phenom.ffwll.local> <YVriZxCeipBUgc8O@intel.com>
 <YWbKM9Fo5OHGafAY@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YWbKM9Fo5OHGafAY@phenom.ffwll.local>
X-Patchwork-Hint: comment
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

On Wed, Oct 13, 2021 at 01:59:47PM +0200, Daniel Vetter wrote:
> On Mon, Oct 04, 2021 at 02:15:51PM +0300, Ville Syrj�l� wrote:
> > On Tue, Jul 20, 2021 at 03:44:49PM +0200, Daniel Vetter wrote:
> > > On Thu, Jul 15, 2021 at 09:49:51PM +0300, Ville Syrjala wrote:
> > > > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > > 
> > > > Quite a few places are hand rolling the modeset lock backoff dance.
> > > > Let's suck that into a helper macro that is easier to use without
> > > > forgetting some steps.
> > > > 
> > > > The main downside is probably that the implementation of
> > > > drm_with_modeset_lock_ctx() is a bit harder to read than a hand
> > > > rolled version on account of being split across three functions,
> > > > but the actual code using it ends up being much simpler.
> > > > 
> > > > Cc: Sean Paul <seanpaul@chromium.org>
> > > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > > Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/drm_modeset_lock.c | 44 ++++++++++++++++++++++++++++++
> > > >  include/drm/drm_modeset_lock.h     | 20 ++++++++++++++
> > > >  2 files changed, 64 insertions(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/drm_modeset_lock.c b/drivers/gpu/drm/drm_modeset_lock.c
> > > > index fcfe1a03c4a1..083df96632e8 100644
> > > > --- a/drivers/gpu/drm/drm_modeset_lock.c
> > > > +++ b/drivers/gpu/drm/drm_modeset_lock.c
> > > > @@ -425,3 +425,47 @@ int drm_modeset_lock_all_ctx(struct drm_device *dev,
> > > >  	return 0;
> > > >  }
> > > >  EXPORT_SYMBOL(drm_modeset_lock_all_ctx);
> > > > +
> > > > +void _drm_modeset_lock_begin(struct drm_modeset_acquire_ctx *ctx,
> > > > +			     struct drm_atomic_state *state,
> > > > +			     unsigned int flags, int *ret)
> > > > +{
> > > > +	drm_modeset_acquire_init(ctx, flags);
> > > > +
> > > > +	if (state)
> > > > +		state->acquire_ctx = ctx;
> > > > +
> > > > +	*ret = -EDEADLK;
> > > > +}
> > > > +EXPORT_SYMBOL(_drm_modeset_lock_begin);
> > > > +
> > > > +bool _drm_modeset_lock_loop(int *ret)
> > > > +{
> > > > +	if (*ret == -EDEADLK) {
> > > > +		*ret = 0;
> > > > +		return true;
> > > > +	}
> > > > +
> > > > +	return false;
> > > > +}
> > > > +EXPORT_SYMBOL(_drm_modeset_lock_loop);
> > > > +
> > > > +void _drm_modeset_lock_end(struct drm_modeset_acquire_ctx *ctx,
> > > > +			   struct drm_atomic_state *state,
> > > > +			   int *ret)
> > > > +{
> > > > +	if (*ret == -EDEADLK) {
> > > > +		if (state)
> > > > +			drm_atomic_state_clear(state);
> > > > +
> > > > +		*ret = drm_modeset_backoff(ctx);
> > > > +		if (*ret == 0) {
> > > > +			*ret = -EDEADLK;
> > > > +			return;
> > > > +		}
> > > > +	}
> > > > +
> > > > +	drm_modeset_drop_locks(ctx);
> > > > +	drm_modeset_acquire_fini(ctx);
> > > > +}
> > > > +EXPORT_SYMBOL(_drm_modeset_lock_end);
> > > > diff --git a/include/drm/drm_modeset_lock.h b/include/drm/drm_modeset_lock.h
> > > > index aafd07388eb7..5eaad2533de5 100644
> > > > --- a/include/drm/drm_modeset_lock.h
> > > > +++ b/include/drm/drm_modeset_lock.h
> > > > @@ -26,6 +26,7 @@
> > > >  
> > > >  #include <linux/ww_mutex.h>
> > > >  
> > > > +struct drm_atomic_state;
> > > >  struct drm_modeset_lock;
> > > >  
> > > >  /**
> > > > @@ -203,4 +204,23 @@ modeset_lock_fail:							\
> > > >  	if (!drm_drv_uses_atomic_modeset(dev))				\
> > > >  		mutex_unlock(&dev->mode_config.mutex);
> > > >  
> > > > +void _drm_modeset_lock_begin(struct drm_modeset_acquire_ctx *ctx,
> > > > +			     struct drm_atomic_state *state,
> > > > +			     unsigned int flags,
> > > > +			     int *ret);
> > > > +bool _drm_modeset_lock_loop(int *ret);
> > > > +void _drm_modeset_lock_end(struct drm_modeset_acquire_ctx *ctx,
> > > > +			   struct drm_atomic_state *state,
> > > > +			   int *ret);
> > > > +
> > > > +/*
> > > > + * Note that one must always use "continue" rather than
> > > > + * "break" or "return" to handle errors within the
> > > > + * drm_modeset_lock_ctx_retry() block.
> > > 
> > > I'm not sold on loop macros with these kind of restrictions, C just isn't
> > > a great language for these. That's why e.g. drm_connector_iter doesn't
> > > give you a macro, but only the begin/next/end function calls explicitly.
> > 
> > We already use this pattern extensively in i915. Gem ww ctx has one,
> > power domains/pps/etc. use a similar things. It makes the code pretty nice,
> > with the slight caveat that an accidental 'break' can ruin your day. But
> > so can an accidental return with other constructs (and we even had that
> > happen a few times with the connector iterators), so not a dealbreaker
> > IMO.
> > 
> > So if we don't want this drm wide I guess I can propose this just for
> > i915 since it fits in perfectly there.
> 
> Well I don't like them for i915 either.

I think you're a bit alone in that. Most people seem pretty happy
with this style since it makes the code very readable.

> 
> And yes C is dangerous, but also C is verbose. I think one lesson from igt
> is that too many magic block constructs are bad, it's just not how C
> works. Definitely not in the kernel, where "oops I got it wrong because it
> was too clever" is bad.
> 
> > > Yes the macro we have is also not nice, but at least it's a screaming
> > > macro since it's all uppercase, so options are all a bit sucky. Which
> > > leads me to think we have a bit a https://xkcd.com/927/ situation going
> > > on.
> > > 
> > > I think minimally we should have one way to do this.
> > 
> > Well, there is no one way atm. All you can do is hand roll all the
> > boilerplate (and likely get it slightly wrong) if you don't want
> > lock_all.
> > 
> > The current macros only help with lock_all, and IMO the hidden gotos
> > are even uglier than a hidden for loop. Fernando already hit a case
> > where he couldn't use the macros twice due to conflicting goto
> > labels. With this for loop thing I think it would have just worked(tm).
> 
> I'm totally ok with repainting the shed, I just don't want some 80s
> multicolor flash show.

You have a better idea in mind?

-- 
Ville Syrj�l�
Intel
