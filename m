Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA41F3727A4
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 10:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F03206EAB1;
	Tue,  4 May 2021 08:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50EEF6EAB1
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 May 2021 08:56:11 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id b25so11977146eju.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 May 2021 01:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NJr0LX/26FC8zqaJ3w2NFopT2rTFOUSvE/xLXKAtnQY=;
 b=Q1b6A7T7bb0iE8JQuyYdcw7L0SXCoJhXBmZdHBKwgwNCY/KmmQxkTzW5MKbDLofLWg
 XO3YUmRMuymRi1zByia2c7uTXzM03PvTmDZ3ER2PKIqRqFIM+6q1so8yC6jXmp0emOhv
 FycaKP/qdbxyWYX0k9uS8aVG3xxiko1M6dq7c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NJr0LX/26FC8zqaJ3w2NFopT2rTFOUSvE/xLXKAtnQY=;
 b=ADTZlofBvXF+ufYVGJ/yfbOHHUHgOUHwQZqMwMhcval2kWEow0APsWPkGU+ywP2hg2
 vK5+GzUtpBLNvX4x627o55Aokou/cqFrp3v2XHi+TJqAmA1liv+1FzU36SmGyYG20gcW
 BveY3Rh4K4c7axrbc9/jPcXJJQXEiv+zfzAe8skfcUcnMUst2sXYmcag+a4I72IYOSzB
 w9jmiOzoAHjWyx3ny4j2yP4IeGgyD/oYB7UQY4qjpF4Ygotoq2b6x595+zmgRp6LxwuU
 BD3TH905jf5AzfqHQtr19kPADUvh8b8KOs8eaUSTEv1K26rhOyZ/rG4XmuPIf3hDcDX4
 rP3g==
X-Gm-Message-State: AOAM530dmL9oB80HGXXUzXZY4gIzlsicYIeatGEsefAB4YDJbxBT5Ujp
 ZBsz8AoAAvCKZu/Tn44SydD0G9ZIz/d3gw==
X-Google-Smtp-Source: ABdhPJxIVT2rDHRaDWlawA4CSIzn4rO5IoCDMadTQYonMxLRvPB43mBBckSEKiOlwpXuBuq2yuUIVA==
X-Received: by 2002:a17:906:cc5d:: with SMTP id
 mm29mr20442822ejb.362.1620118569986; 
 Tue, 04 May 2021 01:56:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q25sm13844944edt.51.2021.05.04.01.56.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 01:56:09 -0700 (PDT)
Date: Tue, 4 May 2021 10:56:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YJEMJ0TF6vLmPo5d@phenom.ffwll.local>
References: <20210503155748.1961781-1-jason@jlekstrand.net>
 <20210503155748.1961781-11-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210503155748.1961781-11-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 10/27] drm/i915/gem: Remove engine
 auto-magic with FENCE_SUBMIT
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 03, 2021 at 10:57:31AM -0500, Jason Ekstrand wrote:
> Even though FENCE_SUBMIT is only documented to wait until the request in
> the in-fence starts instead of waiting until it completes, it has a bit
> more magic than that.  If FENCE_SUBMIT is used to submit something to a
> balanced engine, we would wait to assign engines until the primary
> request was ready to start and then attempt to assign it to a different
> engine than the primary.  There is an IGT test which exercises this by
> submitting a primary batch to a specific VCS and then using FENCE_SUBMIT
> to submit a secondary which can run on any VCS and have i915 figure out
> which VCS to run it on such that they can run in parallel.
> 
> However, this functionality has never been used in the real world.  The
> media driver (the only user of FENCE_SUBMIT) always picks exactly two
> physical engines to bond and never asks us to pick which to use.

Maybe reference the specific igt you're break (and removing in the igt
series to match this) here. Just for the record and all that.
-Daniel

> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c  |  2 +-
>  drivers/gpu/drm/i915/gt/intel_engine_types.h    |  7 -------
>  .../drm/i915/gt/intel_execlists_submission.c    | 17 -----------------
>  3 files changed, 1 insertion(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index d640bba6ad9ab..efb2fa3522a42 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -3474,7 +3474,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>  		if (args->flags & I915_EXEC_FENCE_SUBMIT)
>  			err = i915_request_await_execution(eb.request,
>  							   in_fence,
> -							   eb.engine->bond_execute);
> +							   NULL);
>  		else
>  			err = i915_request_await_dma_fence(eb.request,
>  							   in_fence);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 883bafc449024..68cfe5080325c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -446,13 +446,6 @@ struct intel_engine_cs {
>  	 */
>  	void		(*submit_request)(struct i915_request *rq);
>  
> -	/*
> -	 * Called on signaling of a SUBMIT_FENCE, passing along the signaling
> -	 * request down to the bonded pairs.
> -	 */
> -	void            (*bond_execute)(struct i915_request *rq,
> -					struct dma_fence *signal);
> -
>  	/*
>  	 * Call when the priority on a request has changed and it and its
>  	 * dependencies may need rescheduling. Note the request itself may
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 14378b28169b7..635d6d2494d26 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -3547,22 +3547,6 @@ static void virtual_submit_request(struct i915_request *rq)
>  	spin_unlock_irqrestore(&ve->base.active.lock, flags);
>  }
>  
> -static void
> -virtual_bond_execute(struct i915_request *rq, struct dma_fence *signal)
> -{
> -	intel_engine_mask_t allowed, exec;
> -
> -	allowed = ~to_request(signal)->engine->mask;
> -
> -	/* Restrict the bonded request to run on only the available engines */
> -	exec = READ_ONCE(rq->execution_mask);
> -	while (!try_cmpxchg(&rq->execution_mask, &exec, exec & allowed))
> -		;
> -
> -	/* Prevent the master from being re-run on the bonded engines */
> -	to_request(signal)->execution_mask &= ~allowed;
> -}
> -
>  struct intel_context *
>  intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>  			       unsigned int count)
> @@ -3616,7 +3600,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>  
>  	ve->base.schedule = i915_schedule;
>  	ve->base.submit_request = virtual_submit_request;
> -	ve->base.bond_execute = virtual_bond_execute;
>  
>  	INIT_LIST_HEAD(virtual_queue(ve));
>  	ve->base.execlists.queue_priority_hint = INT_MIN;
> -- 
> 2.31.1
> 
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
