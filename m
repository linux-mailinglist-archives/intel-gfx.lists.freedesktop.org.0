Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D4D37932B
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 17:55:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC6A46E83E;
	Mon, 10 May 2021 15:55:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10B756E84F
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 15:55:40 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id s8so17172107wrw.10
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 08:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=bYmxrXjxEk1/psBpO1hDaM56kIgiEoZZsTmvYuIajDM=;
 b=d6ZKT6ZOEcsXlseibjUSh7tWSqby2T//snfUs+AuGrp0liaxZ6n1ZGpis7DwTT9Xkr
 XIr/yceFdH7nqzywIftrYEiHhNlns/0dl8uAy6YNl68zWYdpgDln0VkXoCDl7Dy4G/NF
 IWG6PoW1XKIIT5j/jm3ayBWapYuOnyh8uSnv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bYmxrXjxEk1/psBpO1hDaM56kIgiEoZZsTmvYuIajDM=;
 b=ctDpGsNBvH/QPDvH1NLk9KqMzUaKhEucIN34eGWWT2i6pUE3sFTuTt47SMVnWAb76N
 bjO4e1OgM3mBIyrA3fYvDRX7elr1qV9PjINkaaeeG8j7NYF+s1qUUSOQQRxOgi4wcgxI
 KcNeY3stivB45Kp4Q8en8MCJU4tYrRLWX1AeiW9nX6skbPAlkDACKqmI3Ld6QOmugPK2
 bSP7d0283bmXF0Xx+CwpcC+9AwacqA3JtibSAEC9B1JPhc4Unr+DDyiiSSnbroo7uJv1
 sIdmwZFvCYzUafMiA080KDuq6/TKrvd4vkp5lkC+qsRlIFiTofc3Vx0jbOE/1fPSZ2qs
 AJwg==
X-Gm-Message-State: AOAM532/k+JRyuyOHthd45s4lFsglWVuJ7iZE7fW5WOowayseB0OmgIc
 A4MTey6bPLG+epSTPVDFnjFP/w==
X-Google-Smtp-Source: ABdhPJx71LBQCMTZ5S0JQzSljSHNcMeT5Q2AjOS5NY9UDfAotqt6V1e9BmRP5pXjVsxyI6KqYq8nwA==
X-Received: by 2002:a5d:5052:: with SMTP id h18mr31163437wrt.365.1620662138605; 
 Mon, 10 May 2021 08:55:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z7sm23129329wrl.11.2021.05.10.08.55.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 May 2021 08:55:38 -0700 (PDT)
Date: Mon, 10 May 2021 17:55:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YJlXeMkMG7Xt0zlA@phenom.ffwll.local>
References: <20210507083521.2406201-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210507083521.2406201-1-tvrtko.ursulin@linux.intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop propagating fence errors by
 default
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Jason Ekstrand <jason.ekstrand@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 07, 2021 at 09:35:21AM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> This is an alternative proposed fix for the below references bug report
> where dma fence error propagation is causing undesirable change in
> behaviour post GPU hang/reset.
> 
> Approach in this patch is to simply stop propagating all dma fence errors
> by default since that seems to be the upstream ask.
> 
> To handle the case where i915 needs error propagation for security, I add
> a new dma fence flag DMA_FENCE_FLAG_PROPAGATE_ERROR and make use of it in
> the command parsing chain only.
> 
> It sounds a plausible argument that fence propagation could be useful in
> which case a core flag to enable opt-in should be universally useful.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Reported-by: Marcin Slusarz <marcin.slusarz@intel.com>
> Reported-by: Miroslav Bendik
> References: 9e31c1fe45d5 ("drm/i915: Propagate errors on awaiting already signaled fences")
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/3080
> Cc: Jason Ekstrand <jason.ekstrand@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 ++
>  drivers/gpu/drm/i915/i915_sw_fence.c           | 8 ++++----
>  drivers/gpu/drm/i915/i915_sw_fence.h           | 8 ++++++++
>  include/linux/dma-fence.h                      | 1 +

I still don't like this, least because we still introduce the concept of
error propagation to dma-fence (but hey only in i915 code, which is
exactly the kind of not-really-upstream approach we got a major chiding
for).

The only thing this does is make it explicitly opt-in instead opt-out,
like the first fix. The right approach is imo still to just throw it out,
and instead make the one error propagation we really need very, very
explicit. Instead of hiding it behind lots of magic.

The one error propagation we need is when the cmd parser work fails, it
must cancel it's corresponding request to make sure the batchbuffer
doesn't run. This should require about 2 lines in total:

- one line to store the request so that the cmd parser work can access it.
  No refcounting needed, because the the request cannot even start (much
  less get freed) before the cmd parser has singalled its fence

- one line to kill the request if the parsing fails. Maybe 2 if you
  include the if condition. I have no idea how that's done since I'm
  honestly lost how the i915 scheduler decides whether to run a batch or
  not. I'm guessing we have a version of this for the ringbuffer and the
  execlist backend (if not maybe gen7 cmdparser is broken?)

I don't see any need for magic behind-the-scenes propagation of such a
security critical error. Especially when that error propagation thing
caused security bugs of its own, is an i915-only feature, and not
motivated by any userspace/uapi requirements at all.

Thanks, Daniel

>  4 files changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 297143511f99..6a516d1261d0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2522,6 +2522,8 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
>  	}
>  
>  	dma_fence_work_init(&pw->base, &eb_parse_ops);
> +	/* Propagate errors for security. */
> +	__set_bit(DMA_FENCE_FLAG_PROPAGATE_ERROR, &pw->base.dma.flags);
>  
>  	pw->engine = eb->engine;
>  	pw->batch = eb->batch->vma;
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
> index 2744558f3050..2ee917932ccf 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.c
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
> @@ -449,7 +449,7 @@ static void dma_i915_sw_fence_wake_timer(struct dma_fence *dma,
>  
>  	fence = xchg(&cb->base.fence, NULL);
>  	if (fence) {
> -		i915_sw_fence_set_error_once(fence, dma->error);
> +		i915_sw_fence_propagate_dma_fence_error(fence, dma);
>  		i915_sw_fence_complete(fence);
>  	}
>  
> @@ -480,7 +480,7 @@ int i915_sw_fence_await_dma_fence(struct i915_sw_fence *fence,
>  	might_sleep_if(gfpflags_allow_blocking(gfp));
>  
>  	if (dma_fence_is_signaled(dma)) {
> -		i915_sw_fence_set_error_once(fence, dma->error);
> +		i915_sw_fence_propagate_dma_fence_error(fence, dma);
>  		return 0;
>  	}
>  
> @@ -496,7 +496,7 @@ int i915_sw_fence_await_dma_fence(struct i915_sw_fence *fence,
>  		if (ret)
>  			return ret;
>  
> -		i915_sw_fence_set_error_once(fence, dma->error);
> +		i915_sw_fence_propagate_dma_fence_error(fence, dma);
>  		return 0;
>  	}
>  
> @@ -548,7 +548,7 @@ int __i915_sw_fence_await_dma_fence(struct i915_sw_fence *fence,
>  	debug_fence_assert(fence);
>  
>  	if (dma_fence_is_signaled(dma)) {
> -		i915_sw_fence_set_error_once(fence, dma->error);
> +		i915_sw_fence_propagate_dma_fence_error(fence, dma);
>  		return 0;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.h b/drivers/gpu/drm/i915/i915_sw_fence.h
> index 30a863353ee6..872ef80ebd10 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.h
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.h
> @@ -116,4 +116,12 @@ i915_sw_fence_set_error_once(struct i915_sw_fence *fence, int error)
>  		cmpxchg(&fence->error, 0, error);
>  }
>  
> +static inline void
> +i915_sw_fence_propagate_dma_fence_error(struct i915_sw_fence *fence,
> +					struct dma_fence *dma)
> +{
> +	if (unlikely(test_bit(DMA_FENCE_FLAG_PROPAGATE_ERROR, &dma->flags)))
> +		i915_sw_fence_set_error_once(fence, dma->error);
> +}
> +
>  #endif /* _I915_SW_FENCE_H_ */
> diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
> index 6ffb4b2c6371..8dabe1650f11 100644
> --- a/include/linux/dma-fence.h
> +++ b/include/linux/dma-fence.h
> @@ -99,6 +99,7 @@ enum dma_fence_flag_bits {
>  	DMA_FENCE_FLAG_SIGNALED_BIT,
>  	DMA_FENCE_FLAG_TIMESTAMP_BIT,
>  	DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
> +	DMA_FENCE_FLAG_PROPAGATE_ERROR,
>  	DMA_FENCE_FLAG_USER_BITS, /* must always be last member */
>  };
>  
> -- 
> 2.30.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
