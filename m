Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CECE93E46BE
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 15:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0E3289B66;
	Mon,  9 Aug 2021 13:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7420389B84
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Aug 2021 13:35:30 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id z4so21495150wrv.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Aug 2021 06:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+0sxNpY/K7UyqNpJvek/IxO49u/aQ+FK/4qrP06M2Kk=;
 b=T+xdWMJdh7ZaMBTZlWCpEehY6OGDHUS6n4tg75qhmvr0wS4T5Rlt5E67haMSEfvA6t
 mlNXxPhQW/NZP4N2mEKTSDOedJZZV9PBvdkHawBUzOGQtw4vMQVPOHJaq88Nced6VPpt
 UImY6gjWWXGTdMFnW3l5dhE4mK1OH3rUB0JQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+0sxNpY/K7UyqNpJvek/IxO49u/aQ+FK/4qrP06M2Kk=;
 b=sqDwf1DwgL81y87a3qbpeYg6kcShZ0DR/lcM50joF15zjUcnnODTygzWRdyy7I2Kzb
 i5jJDlVxXTpui9xb5+dRJATfxezY+y3YxVK92dAhHFQcwhrGa5Ym5Z88Xb0R92xr2N0k
 7c25mWl9llCkOxYFLb1rHFJr6cu5baGLJHiHO2rkV6sXTdI08OilzxwYGhZ4aSLUQW6w
 N7+lWgv5KH2O/7vcq+bYQcfpnO0aC2n3wVKfBGV4hsU1i/XDVhni3Fdc3qxZZDRSJdde
 PjvYpzbh9xG9TEdgNdEf2hKDUJtHD+YUHaiE3wYZ/ZdD/X/kwbqHwnhaDjA2ueBgCnry
 NSdg==
X-Gm-Message-State: AOAM530Nug1TOrsn67A//Mxt8rDAkfaEVMIk9/QIic6e6lAmYkGOX04U
 QDwqj1qejqNx/1/GaFWXb/o/JA==
X-Google-Smtp-Source: ABdhPJx5pvN2wz6/bQZztes5ujHsZIJiugvXiksjjTGxWD7zYoR4PBy6RuASBW96GLu3+FLztXd7kw==
X-Received: by 2002:a5d:4cc6:: with SMTP id c6mr24509617wrt.383.1628516128771; 
 Mon, 09 Aug 2021 06:35:28 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h2sm8305957wmm.33.2021.08.09.06.35.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 06:35:28 -0700 (PDT)
Date: Mon, 9 Aug 2021 15:35:26 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <YREvHrUa/m8H97Io@phenom.ffwll.local>
References: <20210808180757.81440-1-matthew.brost@intel.com>
 <20210808180757.81440-2-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210808180757.81440-2-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/guc: Fix several issues
 related to resets / request cancelation
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

On Sun, Aug 08, 2021 at 11:07:55AM -0700, Matthew Brost wrote:
> Resets are notoriously hard to get fully working and notoriously racey,
> especially with selftests / IGTs that do all sorts of wild things that
> would be near impossible to hit during normal use cases. Even though
> likely impossible to hit, anything selftests / IGTs uncover needs to be
> fixed. This patch addresses 7 such issues.
> 
> 1. A small race that could result in incorrect accounting of the number
> of outstanding G2H. Basically prior to this patch we did not increment
> the number of outstanding G2H if we encoutered a GT reset while sending
> a H2G. This was incorrect as the context state had already been updated
> to anticipate a G2H response thus the counter should be incremented.
> 
> 2. When unwinding requests on a reset context, if other requests in the
> context are in the priority list the requests could be resubmitted out
> of seqno order. Traverse the list of active requests in reserve and
> append to the head of the priority list to fix this.
> 
> 3. Don't drop ce->guc_active.lock when unwinding a context after reset.
> At one point we had to drop this because of a lock inversion but that is
> no longer the case. It is much safer to hold the lock so let's do that.
> 
> 4. Prior to this patch the blocked context counter was cleared on
> init_sched_state (used during registering a context & resets) which is
> incorrect. This state needs to be persistent or the counter can read the
> incorrect value.
> 
> 5. Flush the work queue for GuC generated G2H messages during a GT reset.
> 
> 6. Do not clear enable during a context reset if a schedule enable is in
> flight.
> 
> 7. When unblocking a context, do not enable scheduling if the context is
> banned.

I think each of the above should be a separate patch. I think it would
also be good if each fix references the commits that introduced/changed
something.

Most of this stuff is extremely hard to get right, and unfortunately our
current code is way too fond of lockless trickery (which really isn't a
great idea in the reset code). We need to apply as much care as possible
here.

Also expect me to ask a lot of annoying questions about all the atomic_t
you touch :-)
-Daniel


> 
> Fixes: f4eb1f3fe946 ("drm/i915/guc: Ensure G2H response has space in buffer")
> Fixes: 62eaf0ae217d ("drm/i915/guc: Support request cancellation")
> Fixes: eb5e7da736f3 ("drm/i915/guc: Reset implementation for new GuC interface")
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Cc: <stable@vger.kernel.org>
> ---
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 43 ++++++++++++-------
>  1 file changed, 27 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 87d8dc8f51b9..cd8df078ca87 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -152,7 +152,7 @@ static inline void init_sched_state(struct intel_context *ce)
>  {
>  	/* Only should be called from guc_lrc_desc_pin() */
>  	atomic_set(&ce->guc_sched_state_no_lock, 0);
> -	ce->guc_state.sched_state = 0;
> +	ce->guc_state.sched_state &= SCHED_STATE_BLOCKED_MASK;
>  }
>  
>  static inline bool
> @@ -360,11 +360,13 @@ static int guc_submission_send_busy_loop(struct intel_guc *guc,
>  {
>  	int err;
>  
> -	err = intel_guc_send_busy_loop(guc, action, len, g2h_len_dw, loop);
> -
> -	if (!err && g2h_len_dw)
> +	if (g2h_len_dw)
>  		atomic_inc(&guc->outstanding_submission_g2h);
>  
> +	err = intel_guc_send_busy_loop(guc, action, len, g2h_len_dw, loop);
> +	if (err == -EBUSY && g2h_len_dw)
> +		atomic_dec(&guc->outstanding_submission_g2h);
> +
>  	return err;
>  }
>  
> @@ -725,6 +727,11 @@ void intel_guc_submission_reset_prepare(struct intel_guc *guc)
>  			wait_for_reset(guc, &guc->outstanding_submission_g2h);
>  		} while (!list_empty(&guc->ct.requests.incoming));
>  	}
> +
> +	/* Flush any GuC generated G2H */
> +	while (!list_empty(&guc->ct.requests.incoming))
> +		msleep(1);
> +
>  	scrub_guc_desc_for_outstanding_g2h(guc);
>  }
>  
> @@ -797,14 +804,13 @@ __unwind_incomplete_requests(struct intel_context *ce)
>  
>  	spin_lock_irqsave(&sched_engine->lock, flags);
>  	spin_lock(&ce->guc_active.lock);
> -	list_for_each_entry_safe(rq, rn,
> -				 &ce->guc_active.requests,
> -				 sched.link) {
> +	list_for_each_entry_safe_reverse(rq, rn,
> +					 &ce->guc_active.requests,
> +					 sched.link) {
>  		if (i915_request_completed(rq))
>  			continue;
>  
>  		list_del_init(&rq->sched.link);
> -		spin_unlock(&ce->guc_active.lock);
>  
>  		__i915_request_unsubmit(rq);
>  
> @@ -816,10 +822,8 @@ __unwind_incomplete_requests(struct intel_context *ce)
>  		}
>  		GEM_BUG_ON(i915_sched_engine_is_empty(sched_engine));
>  
> -		list_add_tail(&rq->sched.link, pl);
> +		list_add(&rq->sched.link, pl);
>  		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> -
> -		spin_lock(&ce->guc_active.lock);
>  	}
>  	spin_unlock(&ce->guc_active.lock);
>  	spin_unlock_irqrestore(&sched_engine->lock, flags);
> @@ -828,17 +832,23 @@ __unwind_incomplete_requests(struct intel_context *ce)
>  static void __guc_reset_context(struct intel_context *ce, bool stalled)
>  {
>  	struct i915_request *rq;
> +	unsigned long flags;
>  	u32 head;
>  
>  	intel_context_get(ce);
>  
>  	/*
> -	 * GuC will implicitly mark the context as non-schedulable
> -	 * when it sends the reset notification. Make sure our state
> -	 * reflects this change. The context will be marked enabled
> -	 * on resubmission.
> +	 * GuC will implicitly mark the context as non-schedulable when it sends
> +	 * the reset notification. Make sure our state reflects this change. The
> +	 * context will be marked enabled on resubmission. A small window exists
> +	 * where the context could be block & unblocked (scheduling enable) while
> +	 * this reset was inflight. If a scheduling enable is already is in
> +	 * flight do not clear the enable.
>  	 */
> -	clr_context_enabled(ce);
> +	spin_lock_irqsave(&ce->guc_state.lock, flags);
> +	if (!context_pending_enable(ce))
> +		clr_context_enabled(ce);
> +	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>  
>  	rq = intel_context_find_active_request(ce);
>  	if (!rq) {
> @@ -1562,6 +1572,7 @@ static void guc_context_unblock(struct intel_context *ce)
>  	spin_lock_irqsave(&ce->guc_state.lock, flags);
>  
>  	if (unlikely(submission_disabled(guc) ||
> +		     intel_context_is_banned(ce) ||
>  		     !intel_context_is_pinned(ce) ||
>  		     context_pending_disable(ce) ||
>  		     context_blocked(ce) > 1)) {
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
