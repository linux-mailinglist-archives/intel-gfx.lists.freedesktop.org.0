Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CC23FCA99
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 17:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CF5B6E0D1;
	Tue, 31 Aug 2021 15:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C1FF6E0D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Aug 2021 15:14:11 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id q14so28316302wrp.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Aug 2021 08:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=maeJVTsMDPI//36fefDuhcGFL1RKIhGDboYFHS7kW4Y=;
 b=h4xqpMpsp1AFkFzVLmbXCBnsUe5GtZqTASbDLTWjjgOmBpz4/uPhApRJoqu0b1/uOM
 eQ0EKo71IokKREHT4XhRVhWwZjb+Jk8PNpidYm43kvtad/UMkKnshj0vtOEw54miEjdc
 2JHbwUJ+ZrvmILfo+/0I4WORf4ivTe0Y559+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=maeJVTsMDPI//36fefDuhcGFL1RKIhGDboYFHS7kW4Y=;
 b=EEafgGaKfBVvNlWCq+AkpEddggD6sSJaH7E9pDAxFSluPSLcwn5prpY0d7p//QGb+S
 AYtt7w7g0b06DAgC0ZX1HJi6zP+3TUivy0xD0QtPjXRZRl6TYBdm4BroGvsKXZ7fkUOd
 2qTI16JV65Cg/4Np/fs5fAM71bQEAtpNGxWpCUWhEJSSG2ghIqPP6+Cam+Lpr3gDBvel
 wG4iLYzW9+FYzp4HJSO8l29x2YxpHVbJyF+s+8p1R18C4j7LdumxJJrmNn4ct7Kq+B6w
 k7dCElwTyKkUWa2B8aus7NdqyanV1CCAvlq+GnoqFcIt3Jt+urMysDjZkACnKDvSvAFa
 Z6hw==
X-Gm-Message-State: AOAM533JxMO1GQheYPJzwfgYH/NsTFfMj5USG35vzFk5PmYQ1Z+y2Q74
 dGja2FwwDjYmfzbkUa7pgrv5aA==
X-Google-Smtp-Source: ABdhPJzU9bRHVmQJKMFyO0NBFw1zmc9ywFdxN15096ZFU/7smlbsg/NjQ5wTKUtNtNnZZAwEcY6cJA==
X-Received: by 2002:adf:9f51:: with SMTP id f17mr30523835wrg.301.1630422849820; 
 Tue, 31 Aug 2021 08:14:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h11sm22230317wrx.9.2021.08.31.08.14.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 08:14:08 -0700 (PDT)
Date: Tue, 31 Aug 2021 17:14:06 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YS5HPvXAaynR0KWC@phenom.ffwll.local>
References: <20210813203033.3179400-1-daniel.vetter@ffwll.ch>
 <20210814104319.3226156-1-daniel.vetter@ffwll.ch>
 <b872283f-5d31-0a6e-7b02-83c665ec6981@linux.intel.com>
 <YS4duGerKwxk2dh5@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YS4duGerKwxk2dh5@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Release i915_gem_context from a
 worker
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

On Tue, Aug 31, 2021 at 02:16:56PM +0200, Daniel Vetter wrote:
> On Tue, Aug 31, 2021 at 11:38:27AM +0200, Maarten Lankhorst wrote:
> > Op 14-08-2021 om 12:43 schreef Daniel Vetter:
> > > The only reason for this really is the i915_gem_engines->fence
> > > callback engines_notify(), which exists purely as a fairly funky
> > > reference counting scheme for that. Otherwise all other callers are
> > > from process context, and generally fairly benign locking context.
> > >
> > > Unfortunately untangling that requires some major surgery, and we have
> > > a few i915_gem_context reference counting bugs that need fixing, and
> > > they blow in the current hardirq calling context, so we need a
> > > stop-gap measure.
> > >
> > > Put a FIXME comment in when this should be removable again.
> > >
> > > v2: Fix mock_context(), noticed by intel-gfx-ci.
> > >
> > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > > Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
> > > Cc: Matthew Auld <matthew.auld@intel.com>
> > > Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > > Cc: Dave Airlie <airlied@redhat.com>
> > > Cc: Jason Ekstrand <jason@jlekstrand.net>
> > > ---
> > >  drivers/gpu/drm/i915/gem/i915_gem_context.c       | 13 +++++++++++--
> > >  drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 12 ++++++++++++
> > >  drivers/gpu/drm/i915/gem/selftests/mock_context.c |  1 +
> > >  3 files changed, 24 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > index fd169cf2f75a..051bc357ff65 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > > @@ -986,9 +986,10 @@ static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
> > >  	return err;
> > >  }
> > >  
> > > -void i915_gem_context_release(struct kref *ref)
> > > +static void i915_gem_context_release_work(struct work_struct *work)
> > >  {
> > > -	struct i915_gem_context *ctx = container_of(ref, typeof(*ctx), ref);
> > > +	struct i915_gem_context *ctx = container_of(work, typeof(*ctx),
> > > +						    release_work);
> > >  
> > >  	trace_i915_context_free(ctx);
> > >  	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
> > > @@ -1002,6 +1003,13 @@ void i915_gem_context_release(struct kref *ref)
> > >  	kfree_rcu(ctx, rcu);
> > >  }
> > >  
> > > +void i915_gem_context_release(struct kref *ref)
> > > +{
> > > +	struct i915_gem_context *ctx = container_of(ref, typeof(*ctx), ref);
> > > +
> > > +	queue_work(ctx->i915->wq, &ctx->release_work);
> > > +}
> > > +
> > >  static inline struct i915_gem_engines *
> > >  __context_engines_static(const struct i915_gem_context *ctx)
> > >  {
> > > @@ -1303,6 +1311,7 @@ i915_gem_create_context(struct drm_i915_private *i915,
> > >  	ctx->sched = pc->sched;
> > >  	mutex_init(&ctx->mutex);
> > >  	INIT_LIST_HEAD(&ctx->link);
> > > +	INIT_WORK(&ctx->release_work, i915_gem_context_release_work);
> > >  
> > >  	spin_lock_init(&ctx->stale.lock);
> > >  	INIT_LIST_HEAD(&ctx->stale.engines);
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > > index 94c03a97cb77..0c38789bd4a8 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > > @@ -288,6 +288,18 @@ struct i915_gem_context {
> > >  	 */
> > >  	struct kref ref;
> > >  
> > > +	/**
> > > +	 * @release_work:
> > > +	 *
> > > +	 * Work item for deferred cleanup, since i915_gem_context_put() tends to
> > > +	 * be called from hardirq context.
> > > +	 *
> > > +	 * FIXME: The only real reason for this is &i915_gem_engines.fence, all
> > > +	 * other callers are from process context and need at most some mild
> > > +	 * shuffling to pull the i915_gem_context_put() call out of a spinlock.
> > > +	 */
> > > +	struct work_struct release_work;
> > > +
> > >  	/**
> > >  	 * @rcu: rcu_head for deferred freeing.
> > >  	 */
> > > diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> > > index fee070df1c97..067d68a6fe4c 100644
> > > --- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> > > +++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> > > @@ -23,6 +23,7 @@ mock_context(struct drm_i915_private *i915,
> > >  	kref_init(&ctx->ref);
> > >  	INIT_LIST_HEAD(&ctx->link);
> > >  	ctx->i915 = i915;
> > > +	INIT_WORK(&ctx->release_work, i915_gem_context_release_work);
> > >  
> > >  	mutex_init(&ctx->mutex);
> > >  
> > 
> > ----
> > Is the workqueue really needed? I'm not sure you could still race in
> > drm_syncobj_free when refcount is zero, so in that case removing locking
> > from _release would work as well as a workqueue.
> > 
> > Something like below would keep the drm_sync_obj_put hardirq safe.
> > 
> > I assume when freeing, the  cb list is supposed to be empty, so I added a WARN_ON just to be sure, otherwise we should just tear down the list without locking too.
> > 
> > This should be a better alternative for patch 1.
> 
> This isn't enough, because the problem isn't just the syncobj put. It's
> also the i915_vm_put, and if we dercuify the intel_context stuff too, then
> there will be more intel_context_put on top.
> 
> So we really need the worker here I think. Trying to make every _unpin() and
> _put() work from hardirq context with clever locking tricks is why the
> current code is so incomprehensible.
> 
> Also vms are rare enough that we really don't care about some
> overhead/delay here.

Other reason is the one I explained in the commit message: Aside from the
engines i915_active there's no reason why anyone should call
i915_gem_context_put outside of process context. And I plan to fix that as
the next step. Or at least I'll try to untangle the context/engine
lifetime rules a bit.
-Daniel

> -Daniel
> 
> > ----8<-------
> > diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
> > index c9a9d74f338c..9d561decd97e 100644
> > --- a/drivers/gpu/drm/drm_syncobj.c
> > +++ b/drivers/gpu/drm/drm_syncobj.c
> > @@ -462,7 +462,13 @@ void drm_syncobj_free(struct kref *kref)
> >  	struct drm_syncobj *syncobj = container_of(kref,
> >  						   struct drm_syncobj,
> >  						   refcount);
> > -	drm_syncobj_replace_fence(syncobj, NULL);
> > +	struct dma_fence *old_fence;
> > +
> > +	old_fence = rcu_dereference_protected(syncobj->fence, !kref_read(&syncobj->refcount));
> > +	dma_fence_put(old_fence);
> > +
> > +	WARN_ON(!list_empty(&syncobj->cb_list));
> > +
> >  	kfree(syncobj);
> >  }
> >  EXPORT_SYMBOL(drm_syncobj_free);
> > 
> > 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
