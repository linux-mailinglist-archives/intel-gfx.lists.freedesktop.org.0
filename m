Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E035C01E6
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 17:43:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18BEE10E3E2;
	Wed, 21 Sep 2022 15:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3E6110E3E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 15:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663774996; x=1695310996;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yQoaXbVBL1heR2IDd/Dw1lpLSPjnk1Hs4Lb4/P+HbZI=;
 b=inLAdseu+5TV+K4JwWf+iHTOQ0ikiVkE1VDX0fzffUiZlCUIw/U5XrP2
 t1JfS6V0eyGdWezvjMcqAK1K5GoRCyWPAJHkPSGORsTYA3XnN5IdKKqCN
 rNvkeN1Q7sQo2PJmttOYZPkRg0L6OJ4VlIX8Gix10BO0tyuzm2kr40eQR
 NrM/nHYDmDdJZMx5iQ9VXOiqRLfFd+7etOW1303skLOW/l6HcKOt1+rae
 yTIk1wf3/ktRLDx43IS5y27jfj+04OpRYtL3FvJGjELKwabCZauvlZ8cl
 P4Fqls1+zf8kfFkWSW65juIslR/utPYUjbFkS3nn9xOQIE9bF8fb2eabb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="301441926"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="301441926"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:43:16 -0700
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="681824910"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.180.68])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:43:12 -0700
Date: Wed, 21 Sep 2022 17:43:10 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <YysxDrwznmEhMjgf@ashyti-mobl2.lan>
References: <20220921135258.1714873-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220921135258.1714873-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Restrict forced preemption to
 the active context
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej and Chris,

On Wed, Sep 21, 2022 at 03:52:58PM +0200, Andrzej Hajda wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> When we submit a new pair of contexts to ELSP for execution, we start a
> timer by which point we expect the HW to have switched execution to the
> pending contexts. If the promotion to the new pair of contexts has not
> occurred, we declare the executing context to have hung and force the
> preemption to take place by resetting the engine and resubmitting the
> new contexts.
> 
> This can lead to an unfair situation where almost all of the preemption
> timeout is consumed by the first context which just switches into the
> second context immediately prior to the timer firing and triggering the
> preemption reset (assuming that the timer interrupts before we process
> the CS events for the context switch). The second context hasn't yet had
> a chance to yield to the incoming ELSP (and send the ACk for the
> promotion) and so ends up being blamed for the reset.
> 
> If we see that a context switch has occurred since setting the
> preemption timeout, but have not yet received the ACK for the ELSP
> promotion, rearm the preemption timer and check again. This is
> especially significant if the first context was not schedulable and so
> we used the shortest timer possible, greatly increasing the chance of
> accidentally blaming the second innocent context.
> 
> Fixes: 3a7a92aba8fb ("drm/i915/execlists: Force preemption")
> Fixes: d12acee84ffb ("drm/i915/execlists: Cancel banned contexts on schedule-out")
> Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Tested-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: <stable@vger.kernel.org> # v5.5+
> ---
> Hi,
> 
> This patch is upstreamed from internal branch. So I have removed
> R-B by Andi. Andi let me know if your R-B still apply.

yes, I know this patch and my r-b holds:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Anyway, thanks Chris for the comments and the clear explanation
both in the commit log and in between the code.

Andi

> Regards
> Andrzej
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_types.h  | 15 +++++++++++++
>  .../drm/i915/gt/intel_execlists_submission.c  | 21 ++++++++++++++++++-
>  2 files changed, 35 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 633a7e5dba3b4b..6b5d4ea22b673b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -165,6 +165,21 @@ struct intel_engine_execlists {
>  	 */
>  	struct timer_list preempt;
>  
> +	/**
> +	 * @preempt_target: active request at the time of the preemption request
> +	 *
> +	 * We force a preemption to occur if the pending contexts have not
> +	 * been promoted to active upon receipt of the CS ack event within
> +	 * the timeout. This timeout maybe chosen based on the target,
> +	 * using a very short timeout if the context is no longer schedulable.
> +	 * That short timeout may not be applicable to other contexts, so
> +	 * if a context switch should happen within before the preemption
> +	 * timeout, we may shoot early at an innocent context. To prevent this,
> +	 * we record which context was active at the time of the preemption
> +	 * request and only reset that context upon the timeout.
> +	 */
> +	const struct i915_request *preempt_target;
> +
>  	/**
>  	 * @ccid: identifier for contexts submitted to this engine
>  	 */
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 4b909cb88cdfb7..c718e6dc40b515 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1241,6 +1241,9 @@ static unsigned long active_preempt_timeout(struct intel_engine_cs *engine,
>  	if (!rq)
>  		return 0;
>  
> +	/* Only allow ourselves to force reset the currently active context */
> +	engine->execlists.preempt_target = rq;
> +
>  	/* Force a fast reset for terminated contexts (ignoring sysfs!) */
>  	if (unlikely(intel_context_is_banned(rq->context) || bad_request(rq)))
>  		return INTEL_CONTEXT_BANNED_PREEMPT_TIMEOUT_MS;
> @@ -2427,8 +2430,24 @@ static void execlists_submission_tasklet(struct tasklet_struct *t)
>  	GEM_BUG_ON(inactive - post > ARRAY_SIZE(post));
>  
>  	if (unlikely(preempt_timeout(engine))) {
> +		const struct i915_request *rq = *engine->execlists.active;
> +
> +		/*
> +		 * If after the preempt-timeout expired, we are still on the
> +		 * same active request/context as before we initiated the
> +		 * preemption, reset the engine.
> +		 *
> +		 * However, if we have processed a CS event to switch contexts,
> +		 * but not yet processed the CS event for the pending
> +		 * preemption, reset the timer allowing the new context to
> +		 * gracefully exit.
> +		 */
>  		cancel_timer(&engine->execlists.preempt);
> -		engine->execlists.error_interrupt |= ERROR_PREEMPT;
> +		if (rq == engine->execlists.preempt_target)
> +			engine->execlists.error_interrupt |= ERROR_PREEMPT;
> +		else
> +			set_timer_ms(&engine->execlists.preempt,
> +				     active_preempt_timeout(engine, rq));
>  	}
>  
>  	if (unlikely(READ_ONCE(engine->execlists.error_interrupt))) {
> -- 
> 2.34.1
