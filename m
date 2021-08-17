Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FA83EEAF2
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 12:27:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE0C6E057;
	Tue, 17 Aug 2021 10:27:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE4C6E057
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 10:27:32 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id z9so27735175wrh.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 03:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SHA4IdDcGpRI6MemrnsG5ArP2VBeKDd0hz3pF6SDi1s=;
 b=kNGU7a0uVjGaz/cKV/olkGRArLP1fYZAXRZ4jo8PgSb8KP3a+IG/sZsrvWkT2Nze8D
 1DpQwmb/prv7/9+XZ5TOfoGKRS8coON4rv/Xqli7sqh6vB/MGTpQlwaT1dl4XEeLAJvm
 OK5mxpWi5yhtsnS0l5IVQAcF8avwJNrdeGsDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SHA4IdDcGpRI6MemrnsG5ArP2VBeKDd0hz3pF6SDi1s=;
 b=M0a8OYRYP1vEs2qy7yJtHLGgnqggM8NrKfgJDpreC3DEfFSS17/KchIo6KsBJXjEoq
 U1E+FOC3V58t73teXA8Wr0KejfyvGpLlzFfshRH3c9uACf/raFU3erVrX+OaLbbTaomC
 YN8/FJkkulO8WC2Vu/9Pg1GiMkHkZyGlzG2/8k/mEF9xzoEipPqBYTubyJW4EJqch4Km
 WzrCB9qdzRxfjsFq7M+ozbT4Bw9XwYSBUltq2G4kJ9z9HYF7HYugoNpAWaB7gKHRMp69
 PNyjWPZ0bCtFWgpqoM/WMFTdrAAyFI2VbsX38EAouFleETvmy7q1CS97C5zWyabemEPj
 QjCA==
X-Gm-Message-State: AOAM533IkIPBacRLcVBWcSaTNFNZB3VhUhGmnUPjTl1tF8pd2bBDh1Yh
 IC5l2OEnhz4ueIMOW/nnVqkHcllX9jT1IQ==
X-Google-Smtp-Source: ABdhPJzZvS7NjUE4sdqhavcNhbjwgcp65ogD6ExpfkocCbFUVDO5MGAEdewko8izBLElY8VCcZ1TTw==
X-Received: by 2002:adf:d0c6:: with SMTP id z6mr3220038wrh.382.1629196051269; 
 Tue, 17 Aug 2021 03:27:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n3sm1518382wms.2.2021.08.17.03.27.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:27:30 -0700 (PDT)
Date: Tue, 17 Aug 2021 12:27:29 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniel.vetter@ffwll.ch
Message-ID: <YRuPEeq2e8qdKBc2@phenom.ffwll.local>
References: <20210816135139.10060-1-matthew.brost@intel.com>
 <20210816135139.10060-20-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210816135139.10060-20-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 19/22] drm/i915/guc: Proper xarray usage for
 contexts_lookup
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

On Mon, Aug 16, 2021 at 06:51:36AM -0700, Matthew Brost wrote:
> Lock the xarray and take ref to the context if needed.
> 
> v2:
>  (Checkpatch)
>   - Add new line after declaration
> 
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 84 ++++++++++++++++---
>  1 file changed, 73 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index ba19b99173fc..2ecb2f002bed 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -599,8 +599,18 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
>  	unsigned long index, flags;
>  	bool pending_disable, pending_enable, deregister, destroyed, banned;
>  
> +	xa_lock_irqsave(&guc->context_lookup, flags);
>  	xa_for_each(&guc->context_lookup, index, ce) {
> -		spin_lock_irqsave(&ce->guc_state.lock, flags);
> +		/*
> +		 * Corner case where the ref count on the object is zero but and
> +		 * deregister G2H was lost. In this case we don't touch the ref
> +		 * count and finish the destroy of the context.
> +		 */
> +		bool do_put = kref_get_unless_zero(&ce->ref);

This looks really scary, because in another loop below you have an
unconditional refcount increase. This means sometimes guc->context_lookup
xarray guarantees we hold a full reference on the context, sometimes we
don't. So we're right back in "protect the code" O(N^2) review complexity
instead of invariant rules about the datastructure, which is linear.

Essentially anytime you feel like you have to add a comment to explain
what's going on about concurrent stuff you're racing with, you're
protecting code, not data.

Since guc can't do a hole lot without the guc_id registered and all that,
I kinda expected you'd always have a full reference here. If there's
intermediate stages (e.g. around unregister) where this is currently not
always the case, then those should make sure a full reference is held.

Another option would be to threa ->context_lookup as a weak reference that
we lazily clean up when the context is finalized. That works too, but
probably not with a spinlock (since you most likely have to wait for all
pending guc transations to complete), but it's another option.

Either way I think standard process is needed here for locking design,
i.e.
1. come up with the right invariants ("we always have a full reference
when a context is ont he guc->context_lookup xarray")
2. come up with the locks. From the guc side the xa_lock is maybe good
enough, but from the context side this doesn't protect against a
re-registering racing against a deregistering. So probably needs more
rules on top, and then you have a nice lock inversion in a few places like
here.
3. document it and roll it out.

The other thing is that this is a very tricky iterator, and there's a few
copies of it. That is, if this is the right solution. As-is this should be
abstracted away into guc_context_iter_begin/next_end() helpers, e.g. like
we have for drm_connector_list_iter_begin/end_next as an example.

Cheers, Daniel

> +
> +		xa_unlock(&guc->context_lookup);
> +
> +		spin_lock(&ce->guc_state.lock);
>  
>  		/*
>  		 * Once we are at this point submission_disabled() is guaranteed
> @@ -616,7 +626,9 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
>  		banned = context_banned(ce);
>  		init_sched_state(ce);
>  
> -		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +		spin_unlock(&ce->guc_state.lock);
> +
> +		GEM_BUG_ON(!do_put && !destroyed);
>  
>  		if (pending_enable || destroyed || deregister) {
>  			atomic_dec(&guc->outstanding_submission_g2h);
> @@ -645,7 +657,12 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
>  
>  			intel_context_put(ce);
>  		}
> +
> +		if (do_put)
> +			intel_context_put(ce);
> +		xa_lock(&guc->context_lookup);
>  	}
> +	xa_unlock_irqrestore(&guc->context_lookup, flags);
>  }
>  
>  static inline bool
> @@ -866,16 +883,26 @@ void intel_guc_submission_reset(struct intel_guc *guc, bool stalled)
>  {
>  	struct intel_context *ce;
>  	unsigned long index;
> +	unsigned long flags;
>  
>  	if (unlikely(!guc_submission_initialized(guc))) {
>  		/* Reset called during driver load? GuC not yet initialised! */
>  		return;
>  	}
>  
> -	xa_for_each(&guc->context_lookup, index, ce)
> +	xa_lock_irqsave(&guc->context_lookup, flags);
> +	xa_for_each(&guc->context_lookup, index, ce) {
> +		intel_context_get(ce);
> +		xa_unlock(&guc->context_lookup);
> +
>  		if (intel_context_is_pinned(ce))
>  			__guc_reset_context(ce, stalled);
>  
> +		intel_context_put(ce);
> +		xa_lock(&guc->context_lookup);
> +	}
> +	xa_unlock_irqrestore(&guc->context_lookup, flags);
> +
>  	/* GuC is blown away, drop all references to contexts */
>  	xa_destroy(&guc->context_lookup);
>  }
> @@ -950,11 +977,21 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
>  {
>  	struct intel_context *ce;
>  	unsigned long index;
> +	unsigned long flags;
> +
> +	xa_lock_irqsave(&guc->context_lookup, flags);
> +	xa_for_each(&guc->context_lookup, index, ce) {
> +		intel_context_get(ce);
> +		xa_unlock(&guc->context_lookup);
>  
> -	xa_for_each(&guc->context_lookup, index, ce)
>  		if (intel_context_is_pinned(ce))
>  			guc_cancel_context_requests(ce);
>  
> +		intel_context_put(ce);
> +		xa_lock(&guc->context_lookup);
> +	}
> +	xa_unlock_irqrestore(&guc->context_lookup, flags);
> +
>  	guc_cancel_sched_engine_requests(guc->sched_engine);
>  
>  	/* GuC is blown away, drop all references to contexts */
> @@ -2848,21 +2885,26 @@ void intel_guc_find_hung_context(struct intel_engine_cs *engine)
>  	struct intel_context *ce;
>  	struct i915_request *rq;
>  	unsigned long index;
> +	unsigned long flags;
>  
>  	/* Reset called during driver load? GuC not yet initialised! */
>  	if (unlikely(!guc_submission_initialized(guc)))
>  		return;
>  
> +	xa_lock_irqsave(&guc->context_lookup, flags);
>  	xa_for_each(&guc->context_lookup, index, ce) {
> +		intel_context_get(ce);
> +		xa_unlock(&guc->context_lookup);
> +
>  		if (!intel_context_is_pinned(ce))
> -			continue;
> +			goto next;
>  
>  		if (intel_engine_is_virtual(ce->engine)) {
>  			if (!(ce->engine->mask & engine->mask))
> -				continue;
> +				goto next;
>  		} else {
>  			if (ce->engine != engine)
> -				continue;
> +				goto next;
>  		}
>  
>  		list_for_each_entry(rq, &ce->guc_active.requests, sched.link) {
> @@ -2872,9 +2914,17 @@ void intel_guc_find_hung_context(struct intel_engine_cs *engine)
>  			intel_engine_set_hung_context(engine, ce);
>  
>  			/* Can only cope with one hang at a time... */
> -			return;
> +			intel_context_put(ce);
> +			xa_lock(&guc->context_lookup);
> +			goto done;
>  		}
> +next:
> +		intel_context_put(ce);
> +		xa_lock(&guc->context_lookup);
> +
>  	}
> +done:
> +	xa_unlock_irqrestore(&guc->context_lookup, flags);
>  }
>  
>  void intel_guc_dump_active_requests(struct intel_engine_cs *engine,
> @@ -2890,23 +2940,32 @@ void intel_guc_dump_active_requests(struct intel_engine_cs *engine,
>  	if (unlikely(!guc_submission_initialized(guc)))
>  		return;
>  
> +	xa_lock_irqsave(&guc->context_lookup, flags);
>  	xa_for_each(&guc->context_lookup, index, ce) {
> +		intel_context_get(ce);
> +		xa_unlock(&guc->context_lookup);
> +
>  		if (!intel_context_is_pinned(ce))
> -			continue;
> +			goto next;
>  
>  		if (intel_engine_is_virtual(ce->engine)) {
>  			if (!(ce->engine->mask & engine->mask))
> -				continue;
> +				goto next;
>  		} else {
>  			if (ce->engine != engine)
> -				continue;
> +				goto next;
>  		}
>  
>  		spin_lock_irqsave(&ce->guc_active.lock, flags);
>  		intel_engine_dump_active_requests(&ce->guc_active.requests,
>  						  hung_rq, m);
>  		spin_unlock_irqrestore(&ce->guc_active.lock, flags);
> +
> +next:
> +		intel_context_put(ce);
> +		xa_lock(&guc->context_lookup);
>  	}
> +	xa_unlock_irqrestore(&guc->context_lookup, flags);
>  }
>  
>  void intel_guc_submission_print_info(struct intel_guc *guc,
> @@ -2960,7 +3019,9 @@ void intel_guc_submission_print_context_info(struct intel_guc *guc,
>  {
>  	struct intel_context *ce;
>  	unsigned long index;
> +	unsigned long flags;
>  
> +	xa_lock_irqsave(&guc->context_lookup, flags);
>  	xa_for_each(&guc->context_lookup, index, ce) {
>  		drm_printf(p, "GuC lrc descriptor %u:\n", ce->guc_id);
>  		drm_printf(p, "\tHW Context Desc: 0x%08x\n", ce->lrc.lrca);
> @@ -2979,6 +3040,7 @@ void intel_guc_submission_print_context_info(struct intel_guc *guc,
>  
>  		guc_log_context_priority(p, ce);
>  	}
> +	xa_unlock_irqrestore(&guc->context_lookup, flags);
>  }
>  
>  static struct intel_context *
> -- 
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
