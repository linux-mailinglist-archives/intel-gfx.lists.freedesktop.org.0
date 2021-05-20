Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F1938B1B4
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 16:28:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3B36E28A;
	Thu, 20 May 2021 14:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF3946E409
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 May 2021 14:28:18 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id n2so17977320wrm.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 May 2021 07:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eIlyYTN4kRo58gi8i3WMYMo51I+pxhyta5aue9ua29Y=;
 b=gPpl3qzX19z8ZObfHWUNfUjfesAEnjZHReEAAisldnE8XUSzPRyjzr/43D8qtyOrWB
 QL8/qpiEXCcJJwd8kTT6u7i2/csllcfwKU78RSO+88ZqvLm5DR1piZjiRG5IPQzKfVSc
 /XjvvRShmy0r50VlzZdFdusFI2UXdRYUFHAgA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eIlyYTN4kRo58gi8i3WMYMo51I+pxhyta5aue9ua29Y=;
 b=JRcwEaWkf4LI3R9goY54/JA+EF4pefMBpAe54Lh0blUAay5XCGcJnjKLQR+JgC5/LF
 RVU761mFF+UM/2kMwDj2fFdiur+94ryyL07zLQzd9V/uTHiRnaD+uGc86NhZ8ysh0hWv
 Lf9jmSlfHbRl+fvDmAaFNdCj8p8s7fScJWY7ZqcXd9S3x6ElnwToMEFq+ra17lZvjRdT
 cEOGCXwj/uANcv+/nc9U+B13mc6914Ut+oZC/IZfv+sKGuQ85kcwHDqhrHgU2eR0q8Ky
 S9PJePYkAVn2LnSgcoI+eATxDMez/e/XqQEVUxtTvbDBEfsEhPtTIGxiLbBKgD4Pm7iC
 FCnQ==
X-Gm-Message-State: AOAM531IG1PziGijaEKS0k+RlvBYxGgiH3MNzb2RRogP9SjwPjC22eI8
 jdSiAQl7Ml4B3ewmdFbn8wU/t7gQnBJTWA==
X-Google-Smtp-Source: ABdhPJwV56diwH7VyvqJ363uDM0K2Kf1bqSL9GKrXsnxHmoyiQfp8ssLVm6K6tiWqYA9WxMM3+Qm8w==
X-Received: by 2002:a5d:4946:: with SMTP id r6mr4616781wrs.123.1621520895677; 
 Thu, 20 May 2021 07:28:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l18sm3260755wrt.97.2021.05.20.07.28.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 07:28:15 -0700 (PDT)
Date: Thu, 20 May 2021 16:28:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YKZx/U05aRaxKw44@phenom.ffwll.local>
References: <20210520073514.314893-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210520073514.314893-1-matthew.auld@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use DRIVER_NAME for tracing
 unattached requests
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Chintan M Patel <chintan.m.patel@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 20, 2021 at 08:35:14AM +0100, Matthew Auld wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> The first tracepoint for a request is trace_dma_fence_init called before
> we have associated the request with a device. The tracepoint uses
> fence->ops->get_driver_name() as a pretty name, and as we try to report
> the device name this oopses as it is then NULL. Support the early
> tracepoint by reporting the DRIVER_NAME instead of the actual device
> name.
> 
> Note that rq->engine remains during the course of request recycling
> (SLAB_TYPESAFE_BY_RCU). For the physical engines, the pointer remains
> valid, however a virtual engine may be destroyed after the request is
> retired. If we process a preempt-to-busy completed request along the
> virtual engine, we should make sure we mark the request as no longer
> belonging to the virtual engine to remove the dangling pointers from the
> tracepoint.

Why can't we assign the request beforehand? The idea behind these
tracepoints is that they actually match up, if trace_dma_fence_init is
different, then we're breaking that.
-Daniel

> 
> Fixes: 855e39e65cfc ("drm/i915: Initialise basic fence before acquiring seqno")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Chintan M Patel <chintan.m.patel@intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: <stable@vger.kernel.org> # v5.7+
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  .../drm/i915/gt/intel_execlists_submission.c  | 20 ++++++++++++++-----
>  drivers/gpu/drm/i915/i915_request.c           |  7 ++++++-
>  2 files changed, 21 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index de124870af44..75604e927d34 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -3249,6 +3249,18 @@ static struct list_head *virtual_queue(struct virtual_engine *ve)
>  	return &ve->base.execlists.default_priolist.requests;
>  }
>  
> +static void
> +virtual_submit_completed(struct virtual_engine *ve, struct i915_request *rq)
> +{
> +	GEM_BUG_ON(!__i915_request_is_complete(rq));
> +	GEM_BUG_ON(rq->engine != &ve->base);
> +
> +	__i915_request_submit(rq);
> +
> +	/* Remove the dangling pointer to the stale virtual engine */
> +	WRITE_ONCE(rq->engine, ve->siblings[0]);
> +}
> +
>  static void rcu_virtual_context_destroy(struct work_struct *wrk)
>  {
>  	struct virtual_engine *ve =
> @@ -3265,8 +3277,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
>  
>  		old = fetch_and_zero(&ve->request);
>  		if (old) {
> -			GEM_BUG_ON(!__i915_request_is_complete(old));
> -			__i915_request_submit(old);
> +			virtual_submit_completed(ve, old);
>  			i915_request_put(old);
>  		}
>  
> @@ -3538,13 +3549,12 @@ static void virtual_submit_request(struct i915_request *rq)
>  
>  	/* By the time we resubmit a request, it may be completed */
>  	if (__i915_request_is_complete(rq)) {
> -		__i915_request_submit(rq);
> +		virtual_submit_completed(ve, rq);
>  		goto unlock;
>  	}
>  
>  	if (ve->request) { /* background completion from preempt-to-busy */
> -		GEM_BUG_ON(!__i915_request_is_complete(ve->request));
> -		__i915_request_submit(ve->request);
> +		virtual_submit_completed(ve, ve->request);
>  		i915_request_put(ve->request);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 970d8f4986bb..aa124adb1051 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -61,7 +61,12 @@ static struct i915_global_request {
>  
>  static const char *i915_fence_get_driver_name(struct dma_fence *fence)
>  {
> -	return dev_name(to_request(fence)->engine->i915->drm.dev);
> +	struct i915_request *rq = to_request(fence);
> +
> +	if (unlikely(!rq->engine)) /* not yet attached to any device */
> +		return DRIVER_NAME;
> +
> +	return dev_name(rq->engine->i915->drm.dev);
>  }
>  
>  static const char *i915_fence_get_timeline_name(struct dma_fence *fence)
> -- 
> 2.26.3
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
