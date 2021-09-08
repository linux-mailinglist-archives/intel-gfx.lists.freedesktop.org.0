Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B601403E6A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 19:38:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 783C78961E;
	Wed,  8 Sep 2021 17:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 225748961E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 17:38:19 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id 9so2799807edx.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Sep 2021 10:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KUP4M6Wy9nRpLESvHAfp8aJLReDlu4q/VGO+SzwkJAE=;
 b=c56Hyv39I3/nQCJqUfbg1WI9Ks/Eiyf0QoOUiOH7MC8xg+rEDTUP8W3wx3QCISmJNi
 p2g/Kc0n13A/9DV2mxCXX08LkaoIoAlcOfxuF/xQi/RQcCvmF2UF+cu93mT65oYrBnVa
 0mtFg6VRWR+PnK0G+8Yz32i1CqZptGZke7nKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KUP4M6Wy9nRpLESvHAfp8aJLReDlu4q/VGO+SzwkJAE=;
 b=hryaMSh5XqImIEzwPT0MGJ9j9DBni/1eEN5RWFj+zaJUzxnhdirT2IvjCimkI9TeU+
 ZdceXZhJhtJ/SdIEKzUZuYSFixhTsItees1YVDLaM6ZmAm17pwWaahcm3aMWIvKadXJd
 ttxAINGbVJptt0mfQ0B8m1KQpBq55LjTnL84lp8pWM3XyypqbLBocmjbDWs0Bpz0IoEz
 WNPPKwcFlKBHcUeAHZaP0vvCXi7UHxZqpdoezCabSeVxFUGVd+bEbMIYyAa9rtU2N9tN
 3Sq6zT9pbVXMzrYsUhb8g2p3IPUfjOwMO4iKZ0IHSVspIvnzvn+EHKVljoT9YTzOymcY
 sscg==
X-Gm-Message-State: AOAM532bijbOYpls7Sz0/2JdBqvgTaVKO5wf6K2ipQE+FF+fgcekDP8m
 MQYmUDTG6fRZdcrdaAEFe1+bhA==
X-Google-Smtp-Source: ABdhPJyM3s6SCQF8QmIO0WSFNffiyS4HOnhvQ3NaeUkU1TmUWkZTcjUsu1WbYZJCtqHwfYYtA+LL9Q==
X-Received: by 2002:a05:6402:49a:: with SMTP id
 k26mr5095622edv.279.1631122697599; 
 Wed, 08 Sep 2021 10:38:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r8sm1593279eds.39.2021.09.08.10.38.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 10:38:17 -0700 (PDT)
Date: Wed, 8 Sep 2021 19:38:15 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Michael Mason <michael.w.mason@intel.com>, Daniel Vetter <daniel@ffwll.ch>
Message-ID: <YTj1B4BnLcSemOxq@phenom.ffwll.local>
References: <20210903112405.1794793-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210903112405.1794793-1-matthew.auld@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915/request: fix early tracepoints
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

On Fri, Sep 03, 2021 at 12:24:05PM +0100, Matthew Auld wrote:
> Currently we blow up in trace_dma_fence_init, when calling into
> get_driver_name or get_timeline_name, since both the engine and context
> might be NULL(or contain some garbage address) in the case of newly
> allocated slab objects via the request ctor. Note that we also use
> SLAB_TYPESAFE_BY_RCU here, which allows requests to be immediately
> freed, but delay freeing the underlying page by an RCU grace period.
> With this scheme requests can be re-allocated, at the same time as they
> are also being read by some lockless RCU lookup mechanism.
> 
> One possible fix, since we don't yet have a fully initialised request
> when in the ctor, is just setting the context/engine as NULL and adding
> some extra handling in get_driver_name etc. And since the ctor is only
> called for new slab objects(i.e allocate new page and call the ctor for
> each object) it's safe to reset the context/engine prior to calling into
> dma_fence_init, since we can be certain that no one is doing an RCU
> lookup which might depend on peeking at the engine/context, like in
> active_engine(), since the object can't yet be externally visible.
> 
> In the recycled case(which might also be externally visible) the request
> refcount always transitions from 0->1 after we set the context/engine
> etc, which should ensure it's valid to dereference the engine for
> example, when doing an RCU list-walk, so long as we can also increment
> the refcount first. If the refcount is already zero, then the request is
> considered complete/released.  If it's non-zero, then the request might
> be in the process of being re-allocated, or potentially still in flight,
> however after successfully incrementing the refcount, it's possible to
> carefully inspect the request state, to determine if the request is
> still what we were looking for. Note that all externally visible
> requests returned to the cache must have zero refcount.

The commit message here is a bit confusing, since you start out with
describing a solution that you're not actually implementing it. I usually
do this by putting alternate solutions at the bottom, starting with "An
alternate solution would be ..." or so.

And then closing with why we don't do that, here it would be that we do
no longer have a need for these partially set up i915_requests, and
therefore just reverting that complication is the simplest solution.

> An alternative fix then is to instead move the dma_fence_init out from
> the request ctor. Originally this was how it was done, but it was moved
> in:
> 
> commit 855e39e65cfc33a73724f1cc644ffc5754864a20
> Author: Chris Wilson <chris@chris-wilson.co.uk>
> Date:   Mon Feb 3 09:41:48 2020 +0000
> 
>     drm/i915: Initialise basic fence before acquiring seqno
> 
> where it looks like intel_timeline_get_seqno() relied on some of the
> rq->fence state, but that is no longer the case since:
> 
> commit 12ca695d2c1ed26b2dcbb528b42813bd0f216cfc
> Author: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Date:   Tue Mar 23 16:49:50 2021 +0100
> 
>     drm/i915: Do not share hwsp across contexts any more, v8.
> 
> intel_timeline_get_seqno() could also be cleaned up slightly by dropping
> the request argument.
> 
> Moving dma_fence_init back out of the ctor, should ensure we have enough
> of the request initialised in case of trace_dma_fence_init.
> Functionally this should be the same, and is effectively what we were
> already open coding before, except now we also assign the fence->lock
> and fence->ops, but since these are invariant for recycled
> requests(which might be externally visible), and will therefore already
> hold the same value, it shouldn't matter. We still leave the
> spin_lock_init() in the ctor, since we can't re-init the rq->lock in
> case it is already held.

Holding rq->lock without having a full reference to it sounds like really
bad taste. I think it would be good to have a (kerneldoc) comment next to
i915_request.lock about this, with a FIXME. But separate patch.

> Fixes: 855e39e65cfc ("drm/i915: Initialise basic fence before acquiring seqno")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Michael Mason <michael.w.mason@intel.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>

With the commit message restructured a bit, and assuming this one actually
works:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

But I'm really not confident :-(
-Daniel

> ---
>  drivers/gpu/drm/i915/i915_request.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index ce446716d092..79da5eca60af 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -829,8 +829,6 @@ static void __i915_request_ctor(void *arg)
>  	i915_sw_fence_init(&rq->submit, submit_notify);
>  	i915_sw_fence_init(&rq->semaphore, semaphore_notify);
>  
> -	dma_fence_init(&rq->fence, &i915_fence_ops, &rq->lock, 0, 0);
> -
>  	rq->capture_list = NULL;
>  
>  	init_llist_head(&rq->execute_cb);
> @@ -905,17 +903,12 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
>  	rq->ring = ce->ring;
>  	rq->execution_mask = ce->engine->mask;
>  
> -	kref_init(&rq->fence.refcount);
> -	rq->fence.flags = 0;
> -	rq->fence.error = 0;
> -	INIT_LIST_HEAD(&rq->fence.cb_list);
> -
>  	ret = intel_timeline_get_seqno(tl, rq, &seqno);
>  	if (ret)
>  		goto err_free;
>  
> -	rq->fence.context = tl->fence_context;
> -	rq->fence.seqno = seqno;
> +	dma_fence_init(&rq->fence, &i915_fence_ops, &rq->lock,
> +		       tl->fence_context, seqno);
>  
>  	RCU_INIT_POINTER(rq->timeline, tl);
>  	rq->hwsp_seqno = tl->hwsp_seqno;
> -- 
> 2.26.3
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
