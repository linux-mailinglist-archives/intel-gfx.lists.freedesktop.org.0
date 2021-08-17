Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B2E3EEABB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 12:15:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C9EE6E069;
	Tue, 17 Aug 2021 10:15:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14496E069
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 10:15:24 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 x2-20020a1c7c02000000b002e6f1f69a1eso1465346wmc.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 03:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ItJ6D7O6BRwRVxWaobxtLDn6jyaMXEWgopV6Xlxi280=;
 b=Vv8LJnaGN0uD9Mb8h8K5Z7HYK2n6ZLHiEUo+AP330c2QHG5ds/fRIQpl72ID3mzDw8
 p5yrLYeoGidzV5HFlBZIzMqs+j6vqXW7N/R8e/IZCW2w2vm1OoJ73SYXnJF5ahbJ1qJQ
 YxwkNLbQrx2gKKZTL0xvDPKLp5GvY1X1vfRkQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ItJ6D7O6BRwRVxWaobxtLDn6jyaMXEWgopV6Xlxi280=;
 b=T12Hq1+6EBSp8A1PVbp4urtUhii1z5L0OpAc2ZKcR9HigVzNFQWJ6OW4t2BEGvDBcB
 SMGsLjYX/loKUV/4nKUk+Pkflt3WgtKNYzJfdHZyA2nfqjIOoEgLJganw4nBU6qM22bJ
 pe40OKcjySItKtluQYqaQzU9lBS+Wcqk3c0mCJayCT1/TzQj38ClCVbINejITNGghEMA
 T7eytN7xmfDrrSPpCX/7Ohhr/p69tgc6raeHzGKutd4urJlHZVcF1FCM+GIO2H+LuYr+
 jYr3O0WVOpMvmnA8KOW6h5u65em4CC6CWH+Ui3D7xauSQIIc1juE6AqUzqmh2TXREm+a
 KXtA==
X-Gm-Message-State: AOAM530Gqa3m85au50Nn1DbmVDbP3txQSXnFCkVeiBNRxS2R8ybAeZyZ
 9r7HoDKZkRrVv6al94Jhl7rqxqZJpv7iTQ==
X-Google-Smtp-Source: ABdhPJyEYzslT/aKQm4vTC5Z8YmwGaPp14kM9WnozfrGC+ecL5TkC772QcETczh7AqZ1k2+YRwl2vA==
X-Received: by 2002:a05:600c:5103:: with SMTP id
 o3mr2510197wms.176.1629195323324; 
 Tue, 17 Aug 2021 03:15:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o14sm1520480wms.2.2021.08.17.03.15.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:15:22 -0700 (PDT)
Date: Tue, 17 Aug 2021 12:15:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniel.vetter@ffwll.ch
Message-ID: <YRuMOYoPsu/HRsI5@phenom.ffwll.local>
References: <20210816135139.10060-1-matthew.brost@intel.com>
 <20210816135139.10060-19-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210816135139.10060-19-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 18/22] drm/i915/guc: Rework and simplify
 locking
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

On Mon, Aug 16, 2021 at 06:51:35AM -0700, Matthew Brost wrote:
> Rework and simplify the locking with GuC subission. Drop
> sched_state_no_lock and move all fields under the guc_state.sched_state
> and protect all these fields with guc_state.lock . This requires
> changing the locking hierarchy from guc_state.lock -> sched_engine.lock
> to sched_engine.lock -> guc_state.lock.
> 
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Yeah this is definitely going in the right direction. Especially
sprinkling lockdep_assert_held around.

One comment below.

> ---
>  drivers/gpu/drm/i915/gt/intel_context_types.h |   5 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 186 ++++++++----------
>  drivers/gpu/drm/i915/i915_trace.h             |   6 +-
>  3 files changed, 89 insertions(+), 108 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index c06171ee8792..d5d643b04d54 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -161,7 +161,7 @@ struct intel_context {
>  		 * sched_state: scheduling state of this context using GuC
>  		 * submission
>  		 */
> -		u16 sched_state;
> +		u32 sched_state;
>  		/*
>  		 * fences: maintains of list of requests that have a submit
>  		 * fence related to GuC submission
> @@ -178,9 +178,6 @@ struct intel_context {
>  		struct list_head requests;
>  	} guc_active;
>  
> -	/* GuC scheduling state flags that do not require a lock. */
> -	atomic_t guc_sched_state_no_lock;
> -
>  	/* GuC LRC descriptor ID */
>  	u16 guc_id;
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 7aa16371908a..ba19b99173fc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -72,86 +72,23 @@ guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count);
>  
>  #define GUC_REQUEST_SIZE 64 /* bytes */
>  
> -/*
> - * Below is a set of functions which control the GuC scheduling state which do
> - * not require a lock as all state transitions are mutually exclusive. i.e. It
> - * is not possible for the context pinning code and submission, for the same
> - * context, to be executing simultaneously. We still need an atomic as it is
> - * possible for some of the bits to changing at the same time though.
> - */
> -#define SCHED_STATE_NO_LOCK_ENABLED			BIT(0)
> -#define SCHED_STATE_NO_LOCK_PENDING_ENABLE		BIT(1)
> -#define SCHED_STATE_NO_LOCK_REGISTERED			BIT(2)
> -static inline bool context_enabled(struct intel_context *ce)
> -{
> -	return (atomic_read(&ce->guc_sched_state_no_lock) &
> -		SCHED_STATE_NO_LOCK_ENABLED);
> -}
> -
> -static inline void set_context_enabled(struct intel_context *ce)
> -{
> -	atomic_or(SCHED_STATE_NO_LOCK_ENABLED, &ce->guc_sched_state_no_lock);
> -}
> -
> -static inline void clr_context_enabled(struct intel_context *ce)
> -{
> -	atomic_and((u32)~SCHED_STATE_NO_LOCK_ENABLED,
> -		   &ce->guc_sched_state_no_lock);
> -}
> -
> -static inline bool context_pending_enable(struct intel_context *ce)
> -{
> -	return (atomic_read(&ce->guc_sched_state_no_lock) &
> -		SCHED_STATE_NO_LOCK_PENDING_ENABLE);
> -}
> -
> -static inline void set_context_pending_enable(struct intel_context *ce)
> -{
> -	atomic_or(SCHED_STATE_NO_LOCK_PENDING_ENABLE,
> -		  &ce->guc_sched_state_no_lock);
> -}
> -
> -static inline void clr_context_pending_enable(struct intel_context *ce)
> -{
> -	atomic_and((u32)~SCHED_STATE_NO_LOCK_PENDING_ENABLE,
> -		   &ce->guc_sched_state_no_lock);
> -}
> -
> -static inline bool context_registered(struct intel_context *ce)
> -{
> -	return (atomic_read(&ce->guc_sched_state_no_lock) &
> -		SCHED_STATE_NO_LOCK_REGISTERED);
> -}
> -
> -static inline void set_context_registered(struct intel_context *ce)
> -{
> -	atomic_or(SCHED_STATE_NO_LOCK_REGISTERED,
> -		  &ce->guc_sched_state_no_lock);
> -}
> -
> -static inline void clr_context_registered(struct intel_context *ce)
> -{
> -	atomic_and((u32)~SCHED_STATE_NO_LOCK_REGISTERED,
> -		   &ce->guc_sched_state_no_lock);
> -}
> -
>  /*
>   * Below is a set of functions which control the GuC scheduling state which
> - * require a lock, aside from the special case where the functions are called
> - * from guc_lrc_desc_pin(). In that case it isn't possible for any other code
> - * path to be executing on the context.
> + * require a lock.
>   */
>  #define SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER	BIT(0)
>  #define SCHED_STATE_DESTROYED				BIT(1)
>  #define SCHED_STATE_PENDING_DISABLE			BIT(2)
>  #define SCHED_STATE_BANNED				BIT(3)
> -#define SCHED_STATE_BLOCKED_SHIFT			4
> +#define SCHED_STATE_ENABLED				BIT(4)
> +#define SCHED_STATE_PENDING_ENABLE			BIT(5)
> +#define SCHED_STATE_REGISTERED				BIT(6)
> +#define SCHED_STATE_BLOCKED_SHIFT			7
>  #define SCHED_STATE_BLOCKED		BIT(SCHED_STATE_BLOCKED_SHIFT)
>  #define SCHED_STATE_BLOCKED_MASK	(0xfff << SCHED_STATE_BLOCKED_SHIFT)
>  static inline void init_sched_state(struct intel_context *ce)
>  {
>  	lockdep_assert_held(&ce->guc_state.lock);
> -	atomic_set(&ce->guc_sched_state_no_lock, 0);
>  	ce->guc_state.sched_state &= SCHED_STATE_BLOCKED_MASK;
>  }
>  
> @@ -161,9 +98,8 @@ static inline bool sched_state_is_init(struct intel_context *ce)
>  	 * XXX: Kernel contexts can have SCHED_STATE_NO_LOCK_REGISTERED after
>  	 * suspend.
>  	 */
> -	return !(atomic_read(&ce->guc_sched_state_no_lock) &
> -		 ~SCHED_STATE_NO_LOCK_REGISTERED) &&
> -		!(ce->guc_state.sched_state &= ~SCHED_STATE_BLOCKED_MASK);
> +	return !(ce->guc_state.sched_state &=
> +		 ~(SCHED_STATE_BLOCKED_MASK | SCHED_STATE_REGISTERED));
>  }
>  
>  static inline bool
> @@ -236,6 +172,57 @@ static inline void clr_context_banned(struct intel_context *ce)
>  	ce->guc_state.sched_state &= ~SCHED_STATE_BANNED;
>  }
>  
> +static inline bool context_enabled(struct intel_context *ce)

No statice inline in .c files. The compiler is better at this than you
are. Especially once you add stuff like asserts and everything, it's just
not worth the cognitive effort to have to reevaluate these.

One-line helpers in headers are the only exception where static inline is
ok.
-Daniel

> +{
> +	return ce->guc_state.sched_state & SCHED_STATE_ENABLED;
> +}
> +
> +static inline void set_context_enabled(struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_state.lock);
> +	ce->guc_state.sched_state |= SCHED_STATE_ENABLED;
> +}
> +
> +static inline void clr_context_enabled(struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_state.lock);
> +	ce->guc_state.sched_state &= ~SCHED_STATE_ENABLED;
> +}
> +
> +static inline bool context_pending_enable(struct intel_context *ce)
> +{
> +	return ce->guc_state.sched_state & SCHED_STATE_PENDING_ENABLE;
> +}
> +
> +static inline void set_context_pending_enable(struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_state.lock);
> +	ce->guc_state.sched_state |= SCHED_STATE_PENDING_ENABLE;
> +}
> +
> +static inline void clr_context_pending_enable(struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_state.lock);
> +	ce->guc_state.sched_state &= ~SCHED_STATE_PENDING_ENABLE;
> +}
> +
> +static inline bool context_registered(struct intel_context *ce)
> +{
> +	return ce->guc_state.sched_state & SCHED_STATE_REGISTERED;
> +}
> +
> +static inline void set_context_registered(struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_state.lock);
> +	ce->guc_state.sched_state |= SCHED_STATE_REGISTERED;
> +}
> +
> +static inline void clr_context_registered(struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_state.lock);
> +	ce->guc_state.sched_state &= ~SCHED_STATE_REGISTERED;
> +}
> +
>  static inline u32 context_blocked(struct intel_context *ce)
>  {
>  	return (ce->guc_state.sched_state & SCHED_STATE_BLOCKED_MASK) >>
> @@ -244,7 +231,6 @@ static inline u32 context_blocked(struct intel_context *ce)
>  
>  static inline void incr_context_blocked(struct intel_context *ce)
>  {
> -	lockdep_assert_held(&ce->engine->sched_engine->lock);
>  	lockdep_assert_held(&ce->guc_state.lock);
>  
>  	ce->guc_state.sched_state += SCHED_STATE_BLOCKED;
> @@ -254,7 +240,6 @@ static inline void incr_context_blocked(struct intel_context *ce)
>  
>  static inline void decr_context_blocked(struct intel_context *ce)
>  {
> -	lockdep_assert_held(&ce->engine->sched_engine->lock);
>  	lockdep_assert_held(&ce->guc_state.lock);
>  
>  	GEM_BUG_ON(!context_blocked(ce));	/* Underflow check */
> @@ -443,6 +428,8 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
>  	u32 g2h_len_dw = 0;
>  	bool enabled;
>  
> +	lockdep_assert_held(&rq->engine->sched_engine->lock);
> +
>  	/*
>  	 * Corner case where requests were sitting in the priority list or a
>  	 * request resubmitted after the context was banned.
> @@ -450,7 +437,7 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
>  	if (unlikely(intel_context_is_banned(ce))) {
>  		i915_request_put(i915_request_mark_eio(rq));
>  		intel_engine_signal_breadcrumbs(ce->engine);
> -		goto out;
> +		return 0;
>  	}
>  
>  	GEM_BUG_ON(!atomic_read(&ce->guc_id_ref));
> @@ -463,9 +450,11 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
>  	if (unlikely(!lrc_desc_registered(guc, ce->guc_id))) {
>  		err = guc_lrc_desc_pin(ce, false);
>  		if (unlikely(err))
> -			goto out;
> +			return err;
>  	}
>  
> +	spin_lock(&ce->guc_state.lock);
> +
>  	/*
>  	 * The request / context will be run on the hardware when scheduling
>  	 * gets enabled in the unblock.
> @@ -500,6 +489,7 @@ static int guc_add_request(struct intel_guc *guc, struct i915_request *rq)
>  		trace_i915_request_guc_submit(rq);
>  
>  out:
> +	spin_unlock(&ce->guc_state.lock);
>  	return err;
>  }
>  
> @@ -720,8 +710,6 @@ void intel_guc_submission_reset_prepare(struct intel_guc *guc)
>  	spin_lock_irq(&guc_to_gt(guc)->irq_lock);
>  	spin_unlock_irq(&guc_to_gt(guc)->irq_lock);
>  
> -	guc_flush_submissions(guc);
> -
>  	flush_work(&guc->ct.requests.worker);
>  
>  	scrub_guc_desc_for_outstanding_g2h(guc);
> @@ -1125,7 +1113,11 @@ static int steal_guc_id(struct intel_guc *guc)
>  
>  		list_del_init(&ce->guc_id_link);
>  		guc_id = ce->guc_id;
> +
> +		spin_lock(&ce->guc_state.lock);
>  		clr_context_registered(ce);
> +		spin_unlock(&ce->guc_state.lock);
> +
>  		set_context_guc_id_invalid(ce);
>  		return guc_id;
>  	} else {
> @@ -1161,6 +1153,8 @@ static int pin_guc_id(struct intel_guc *guc, struct intel_context *ce)
>  try_again:
>  	spin_lock_irqsave(&guc->contexts_lock, flags);
>  
> +	might_lock(&ce->guc_state.lock);
> +
>  	if (context_guc_id_invalid(ce)) {
>  		ret = assign_guc_id(guc, &ce->guc_id);
>  		if (ret)
> @@ -1240,8 +1234,13 @@ static int register_context(struct intel_context *ce, bool loop)
>  	trace_intel_context_register(ce);
>  
>  	ret = __guc_action_register_context(guc, ce->guc_id, offset, loop);
> -	if (likely(!ret))
> +	if (likely(!ret)) {
> +		unsigned long flags;
> +
> +		spin_lock_irqsave(&ce->guc_state.lock, flags);
>  		set_context_registered(ce);
> +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +	}
>  
>  	return ret;
>  }
> @@ -1517,7 +1516,6 @@ static u16 prep_context_pending_disable(struct intel_context *ce)
>  static struct i915_sw_fence *guc_context_block(struct intel_context *ce)
>  {
>  	struct intel_guc *guc = ce_to_guc(ce);
> -	struct i915_sched_engine *sched_engine = ce->engine->sched_engine;
>  	unsigned long flags;
>  	struct intel_runtime_pm *runtime_pm = ce->engine->uncore->rpm;
>  	intel_wakeref_t wakeref;
> @@ -1526,13 +1524,7 @@ static struct i915_sw_fence *guc_context_block(struct intel_context *ce)
>  
>  	spin_lock_irqsave(&ce->guc_state.lock, flags);
>  
> -	/*
> -	 * Sync with submission path, increment before below changes to context
> -	 * state.
> -	 */
> -	spin_lock(&sched_engine->lock);
>  	incr_context_blocked(ce);
> -	spin_unlock(&sched_engine->lock);
>  
>  	enabled = context_enabled(ce);
>  	if (unlikely(!enabled || submission_disabled(guc))) {
> @@ -1561,7 +1553,6 @@ static struct i915_sw_fence *guc_context_block(struct intel_context *ce)
>  static void guc_context_unblock(struct intel_context *ce)
>  {
>  	struct intel_guc *guc = ce_to_guc(ce);
> -	struct i915_sched_engine *sched_engine = ce->engine->sched_engine;
>  	unsigned long flags;
>  	struct intel_runtime_pm *runtime_pm = ce->engine->uncore->rpm;
>  	intel_wakeref_t wakeref;
> @@ -1586,13 +1577,7 @@ static void guc_context_unblock(struct intel_context *ce)
>  		intel_context_get(ce);
>  	}
>  
> -	/*
> -	 * Sync with submission path, decrement after above changes to context
> -	 * state.
> -	 */
> -	spin_lock(&sched_engine->lock);
>  	decr_context_blocked(ce);
> -	spin_unlock(&sched_engine->lock);
>  
>  	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>  
> @@ -1702,7 +1687,9 @@ static void guc_context_sched_disable(struct intel_context *ce)
>  
>  	if (submission_disabled(guc) || context_guc_id_invalid(ce) ||
>  	    !lrc_desc_registered(guc, ce->guc_id)) {
> +		spin_lock_irqsave(&ce->guc_state.lock, flags);
>  		clr_context_enabled(ce);
> +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>  		goto unpin;
>  	}
>  
> @@ -1752,7 +1739,6 @@ static inline void guc_lrc_desc_unpin(struct intel_context *ce)
>  	GEM_BUG_ON(ce != __get_context(guc, ce->guc_id));
>  	GEM_BUG_ON(context_enabled(ce));
>  
> -	clr_context_registered(ce);
>  	deregister_context(ce, ce->guc_id, true);
>  }
>  
> @@ -1825,8 +1811,10 @@ static void guc_context_destroy(struct kref *kref)
>  	/* Seal race with Reset */
>  	spin_lock_irqsave(&ce->guc_state.lock, flags);
>  	disabled = submission_disabled(guc);
> -	if (likely(!disabled))
> +	if (likely(!disabled)) {
>  		set_context_destroyed(ce);
> +		clr_context_registered(ce);
> +	}
>  	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>  	if (unlikely(disabled)) {
>  		release_guc_id(guc, ce);
> @@ -2695,8 +2683,7 @@ int intel_guc_sched_done_process_msg(struct intel_guc *guc,
>  		     (!context_pending_enable(ce) &&
>  		     !context_pending_disable(ce)))) {
>  		drm_err(&guc_to_gt(guc)->i915->drm,
> -			"Bad context sched_state 0x%x, 0x%x, desc_idx %u",
> -			atomic_read(&ce->guc_sched_state_no_lock),
> +			"Bad context sched_state 0x%x, desc_idx %u",
>  			ce->guc_state.sched_state, desc_idx);
>  		return -EPROTO;
>  	}
> @@ -2711,7 +2698,9 @@ int intel_guc_sched_done_process_msg(struct intel_guc *guc,
>  		}
>  #endif
>  
> +		spin_lock_irqsave(&ce->guc_state.lock, flags);
>  		clr_context_pending_enable(ce);
> +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>  	} else if (context_pending_disable(ce)) {
>  		bool banned;
>  
> @@ -2985,9 +2974,8 @@ void intel_guc_submission_print_context_info(struct intel_guc *guc,
>  			   atomic_read(&ce->pin_count));
>  		drm_printf(p, "\t\tGuC ID Ref Count: %u\n",
>  			   atomic_read(&ce->guc_id_ref));
> -		drm_printf(p, "\t\tSchedule State: 0x%x, 0x%x\n\n",
> -			   ce->guc_state.sched_state,
> -			   atomic_read(&ce->guc_sched_state_no_lock));
> +		drm_printf(p, "\t\tSchedule State: 0x%x\n\n",
> +			   ce->guc_state.sched_state);
>  
>  		guc_log_context_priority(p, ce);
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
> index 806ad688274b..0a77eb2944b5 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -903,7 +903,6 @@ DECLARE_EVENT_CLASS(intel_context,
>  			     __field(u32, guc_id)
>  			     __field(int, pin_count)
>  			     __field(u32, sched_state)
> -			     __field(u32, guc_sched_state_no_lock)
>  			     __field(u8, guc_prio)
>  			     ),
>  
> @@ -911,15 +910,12 @@ DECLARE_EVENT_CLASS(intel_context,
>  			   __entry->guc_id = ce->guc_id;
>  			   __entry->pin_count = atomic_read(&ce->pin_count);
>  			   __entry->sched_state = ce->guc_state.sched_state;
> -			   __entry->guc_sched_state_no_lock =
> -			   atomic_read(&ce->guc_sched_state_no_lock);
>  			   __entry->guc_prio = ce->guc_prio;
>  			   ),
>  
> -		    TP_printk("guc_id=%d, pin_count=%d sched_state=0x%x,0x%x, guc_prio=%u",
> +		    TP_printk("guc_id=%d, pin_count=%d sched_state=0x%x, guc_prio=%u",
>  			      __entry->guc_id, __entry->pin_count,
>  			      __entry->sched_state,
> -			      __entry->guc_sched_state_no_lock,
>  			      __entry->guc_prio)
>  );
>  
> -- 
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
