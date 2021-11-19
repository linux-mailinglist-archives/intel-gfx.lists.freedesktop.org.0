Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 459C9457253
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 17:04:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51C806EB49;
	Fri, 19 Nov 2021 16:04:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F74E6EB49
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 16:04:04 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id r11so44580112edd.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 08:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1czKFgZmEu5MxAq5f99wvzI6RfQjWy4GdTeRL5Ns2P8=;
 b=e347UeS2flt/HHbdOWfKGVgmVCq7nxRP+pa1bpDta9W1WJiHx/SvfNX4DDr9Xg66+v
 0NF91KPTXYiqhfm3fuMc+NuIwryPBYACsE5aYnyUYJGgis70X+EOK+BL+57IZ5H0WWHn
 mdSlr6YtRSWS7mceEDLe9hn3u8jym+C+hTK3Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1czKFgZmEu5MxAq5f99wvzI6RfQjWy4GdTeRL5Ns2P8=;
 b=J16BaXoYfrUPaZUoRFcDEAAFeIR6RS7rObs5uNBrzC2YHejZNKJkibb2i9ECUZBpVI
 jTqkKSJsUxlBueXnWVti7B/EI/6s1E1OoONbSWCMNTC5dhAo+B6tLN6xWUs9u5PHZdXz
 qWdGU9QGbdcdnnDOfVT8kzNiQub+LEoLtu6yZ8nnK9vENvUVBZ+JfLVrDYP56NrZVKw9
 Kgr7zjwq31vi/Z3UM+aP4Bs7J3v40jbjmrhdeuHDlIeio6oXtbxVJCXo0sXQdxOzfkzf
 sfi1rAuTI9eZRnIc0rOPyODnEf7c1J5MDHkMnMh6vVKeKR7tUAH/lCJnHXgGHNgll6YJ
 aU/g==
X-Gm-Message-State: AOAM530o5Tk8yFuhcqwmWlbex+G3VSxHUwEtvY0iCJ6qHNgR9Q+2se2C
 jWU83IHIi8fm4dGdN6aSwHuVMQ==
X-Google-Smtp-Source: ABdhPJy2I4JEv6acgaKMVwUTQzHRkYD+mi7SU90zZFp94hxL+JtOUjjprX2IOe46GLIS6sg3u//cKQ==
X-Received: by 2002:a17:906:fca3:: with SMTP id
 qw3mr9350834ejb.285.1637337842342; 
 Fri, 19 Nov 2021 08:04:02 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h10sm132175edj.1.2021.11.19.08.04.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Nov 2021 08:04:01 -0800 (PST)
Date: Fri, 19 Nov 2021 17:04:00 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Message-ID: <YZfK8LDcGzQEchel@phenom.ffwll.local>
References: <20211118165914.pckik75emivsilek@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211118165914.pckik75emivsilek@linutronix.de>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't disable interrupts and
 pretend a lock as been acquired in __timeline_mark_lock().
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Peter Zijlstra <peterz@infradead.org>, dri-devel@lists.freedesktop.org,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 18, 2021 at 05:59:14PM +0100, Sebastian Andrzej Siewior wrote:
> This is a revert of commits
>    d67739268cf0e ("drm/i915/gt: Mark up the nested engine-pm timeline lock as irqsafe")
>    6c69a45445af9 ("drm/i915/gt: Mark context->active_count as protected by timeline->mutex")
> 
> The existing code leads to a different behaviour depending on whether
> lockdep is enabled or not. Any following lock that is acquired without
> disabling interrupts (but needs to) will not be noticed by lockdep.
> 
> This it not just a lockdep annotation but is used but an actual mutex_t
> that is properly used as a lock but in case of __timeline_mark_lock()
> lockdep is only told that it is acquired but no lock has been acquired.
> 
> It appears that its purpose is just satisfy the lockdep_assert_held()
> check in intel_context_mark_active(). The other problem with disabling
> interrupts is that on PREEMPT_RT interrupts are also disabled which
> leads to problems for instance later during memory allocation.
> 
> Add a CONTEXT_IS_PARKED bit to intel_engine_cs and set_bit/clear_bit it
> instead of mutex_acquire/mutex_release. Use test_bit in the two
> identified spots which relied on the lockdep annotation.
> 
> Cc: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Yeah if we can simplify this with reverts then I'm all for this.

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I've asked drm/i915 maintainers to check&merge.
-Daniel

> ---
>  drivers/gpu/drm/i915/gt/intel_context.h       |    3 +-
>  drivers/gpu/drm/i915/gt/intel_context_types.h |    1 
>  drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   38 +-------------------------
>  drivers/gpu/drm/i915/i915_request.h           |    3 +-
>  4 files changed, 7 insertions(+), 38 deletions(-)
> 
> --- a/drivers/gpu/drm/i915/gt/intel_context.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> @@ -211,7 +211,8 @@ static inline void intel_context_enter(s
>  
>  static inline void intel_context_mark_active(struct intel_context *ce)
>  {
> -	lockdep_assert_held(&ce->timeline->mutex);
> +	lockdep_assert(lockdep_is_held(&ce->timeline->mutex) ||
> +		       test_bit(CONTEXT_IS_PARKED, &ce->flags));
>  	++ce->active_count;
>  }
>  
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -118,6 +118,7 @@ struct intel_context {
>  #define CONTEXT_LRCA_DIRTY		9
>  #define CONTEXT_GUC_INIT		10
>  #define CONTEXT_PERMA_PIN		11
> +#define CONTEXT_IS_PARKED		12
>  
>  	struct {
>  		u64 timeout_us;
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -80,39 +80,6 @@ static int __engine_unpark(struct intel_
>  	return 0;
>  }
>  
> -#if IS_ENABLED(CONFIG_LOCKDEP)
> -
> -static unsigned long __timeline_mark_lock(struct intel_context *ce)
> -{
> -	unsigned long flags;
> -
> -	local_irq_save(flags);
> -	mutex_acquire(&ce->timeline->mutex.dep_map, 2, 0, _THIS_IP_);
> -
> -	return flags;
> -}
> -
> -static void __timeline_mark_unlock(struct intel_context *ce,
> -				   unsigned long flags)
> -{
> -	mutex_release(&ce->timeline->mutex.dep_map, _THIS_IP_);
> -	local_irq_restore(flags);
> -}
> -
> -#else
> -
> -static unsigned long __timeline_mark_lock(struct intel_context *ce)
> -{
> -	return 0;
> -}
> -
> -static void __timeline_mark_unlock(struct intel_context *ce,
> -				   unsigned long flags)
> -{
> -}
> -
> -#endif /* !IS_ENABLED(CONFIG_LOCKDEP) */
> -
>  static void duration(struct dma_fence *fence, struct dma_fence_cb *cb)
>  {
>  	struct i915_request *rq = to_request(fence);
> @@ -159,7 +126,6 @@ static bool switch_to_kernel_context(str
>  {
>  	struct intel_context *ce = engine->kernel_context;
>  	struct i915_request *rq;
> -	unsigned long flags;
>  	bool result = true;
>  
>  	/*
> @@ -214,7 +180,7 @@ static bool switch_to_kernel_context(str
>  	 * engine->wakeref.count, we may see the request completion and retire
>  	 * it causing an underflow of the engine->wakeref.
>  	 */
> -	flags = __timeline_mark_lock(ce);
> +	set_bit(CONTEXT_IS_PARKED, &ce->flags);
>  	GEM_BUG_ON(atomic_read(&ce->timeline->active_count) < 0);
>  
>  	rq = __i915_request_create(ce, GFP_NOWAIT);
> @@ -246,7 +212,7 @@ static bool switch_to_kernel_context(str
>  
>  	result = false;
>  out_unlock:
> -	__timeline_mark_unlock(ce, flags);
> +	clear_bit(CONTEXT_IS_PARKED, &ce->flags);
>  	return result;
>  }
>  
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -642,7 +642,8 @@ i915_request_timeline(const struct i915_
>  {
>  	/* Valid only while the request is being constructed (or retired). */
>  	return rcu_dereference_protected(rq->timeline,
> -					 lockdep_is_held(&rcu_access_pointer(rq->timeline)->mutex));
> +					 lockdep_is_held(&rcu_access_pointer(rq->timeline)->mutex) ||
> +					 test_bit(CONTEXT_IS_PARKED, &rq->context->flags));
>  }
>  
>  static inline struct i915_gem_context *

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
