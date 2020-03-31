Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3AF1996FD
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 15:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2306E6E117;
	Tue, 31 Mar 2020 13:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9B266E117
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 13:08:21 +0000 (UTC)
IronPort-SDR: ZtPG7K8dMQNAkgBkskzncXuZJnWtGv+FybjkLGw+ui1Uu4ba1c6wd8bwErgCEe8kWxGoJRoYuH
 smxbdAfr8f7g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 06:08:21 -0700
IronPort-SDR: r2nSJNTZjyImP4LRQkytP03YTuC6Uqz8JV97Rts/FJ6f8RB2TaV69JJe7ASOZHrZgWAJnSPKU/
 aF04VIZ2FP+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="448672180"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 31 Mar 2020 06:08:19 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id DF3035C0D7B; Tue, 31 Mar 2020 16:06:41 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200331120502.14713-1-chris@chris-wilson.co.uk>
References: <20200331120502.14713-1-chris@chris-wilson.co.uk>
Date: Tue, 31 Mar 2020 16:06:41 +0300
Message-ID: <87lfngptb2.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Include a few tracek for
 timeslicing
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Add a few telltales to see when timeslicing is being enabled.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c   | 20 +++++++++++++++++---
>  drivers/gpu/drm/i915/i915_scheduler.c |  6 ++++++
>  2 files changed, 23 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 744737e57d1d..55bf3cdf3b38 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1814,16 +1814,25 @@ active_timeslice(const struct intel_engine_cs *engine)
>  
>  static void set_timeslice(struct intel_engine_cs *engine)
>  {
> +	unsigned long duration;
> +
>  	if (!intel_engine_has_timeslices(engine))
>  		return;
>  
> -	set_timer_ms(&engine->execlists.timer, active_timeslice(engine));
> +	duration = active_timeslice(engine);
> +	ENGINE_TRACE(engine, "bump timeslicing, interval:%lu", duration);
> +
> +	set_timer_ms(&engine->execlists.timer, duration);
>  }
>  
>  static void start_timeslice(struct intel_engine_cs *engine)
>  {
>  	struct intel_engine_execlists *execlists = &engine->execlists;
> -	int prio = queue_prio(execlists);
> +	const int prio = queue_prio(execlists);
> +	unsigned long duration;
> +
> +	if (!intel_engine_has_timeslices(engine))
> +		return;
>  
>  	WRITE_ONCE(execlists->switch_priority_hint, prio);
>  	if (prio == INT_MIN)
> @@ -1832,7 +1841,12 @@ static void start_timeslice(struct intel_engine_cs *engine)
>  	if (timer_pending(&execlists->timer))
>  		return;
>  
> -	set_timer_ms(&execlists->timer, timeslice(engine));
> +	duration = timeslice(engine);
> +	ENGINE_TRACE(engine,
> +		     "start timeslicing, prio:%d, interval:%lu",
> +		     prio, duration);
> +
> +	set_timer_ms(&execlists->timer, duration);
>  }
>  
>  static void record_preemption(struct intel_engine_execlists *execlists)
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 68b06a7ba667..065176cb0258 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -209,6 +209,12 @@ static void kick_submission(struct intel_engine_cs *engine,
>  	if (!inflight)
>  		goto unlock;
>  
> +	ENGINE_TRACE(engine,
> +		     "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
> +		     prio,
> +		     rq->fence.context, rq->fence.seqno,
> +		     inflight->fence.context, inflight->fence.seqno,
> +		     inflight->sched.attr.priority);
>  	engine->execlists.queue_priority_hint = prio;
>  
>  	/*
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
