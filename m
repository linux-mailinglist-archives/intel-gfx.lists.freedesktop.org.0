Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C633D1D9800
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 15:41:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04BE6E347;
	Tue, 19 May 2020 13:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AA826E347
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 13:41:07 +0000 (UTC)
IronPort-SDR: uVFxOfMKWyxrwp/4a4KQmicLc8qDRE5fMwFgqkSop426PKbzF7Ru5g3w7uty7nUl8WWP8gOksb
 ZGZbAX11P7SA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 06:41:07 -0700
IronPort-SDR: IPvwtixgTULPQpyg+zHm1JYzGvIc6/SEfUutY/H7Xo0XEUj0m/E/QTBgrIrM8w558Q4I+TnYVX
 EPFyOxT+UI4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="282323785"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 19 May 2020 06:41:06 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 51E575C03F7; Tue, 19 May 2020 16:38:49 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200519063123.20673-1-chris@chris-wilson.co.uk>
References: <20200519063123.20673-1-chris@chris-wilson.co.uk>
Date: Tue, 19 May 2020 16:38:49 +0300
Message-ID: <87pnb059jq.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Don't set queue-priority
 hint when supressing the reschedule
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

s/supressing/suppressing

> We recorded the execlists->queue_priority_hint update for the inflight
> request without kicking the tasklet. The next submitted request then
> failed to be scheduled as it had a lower priority than the hint, leaving
> the HW runnning with only the inflight request.

s/nnn/nn

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>
> Fixes: 6cebcf746f3f ("drm/i915: Tweak scheduler's kick_submission()")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_scheduler.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index f4ea318781f0..cbb880b10c65 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -209,14 +209,6 @@ static void kick_submission(struct intel_engine_cs *engine,
>  	if (!inflight)
>  		goto unlock;
>  
> -	ENGINE_TRACE(engine,
> -		     "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
> -		     prio,
> -		     rq->fence.context, rq->fence.seqno,
> -		     inflight->fence.context, inflight->fence.seqno,
> -		     inflight->sched.attr.priority);
> -	engine->execlists.queue_priority_hint = prio;
> -
>  	/*
>  	 * If we are already the currently executing context, don't
>  	 * bother evaluating if we should preempt ourselves.
> @@ -224,6 +216,14 @@ static void kick_submission(struct intel_engine_cs *engine,
>  	if (inflight->context == rq->context)
>  		goto unlock;
>  
> +	ENGINE_TRACE(engine,
> +		     "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
> +		     prio,
> +		     rq->fence.context, rq->fence.seqno,
> +		     inflight->fence.context, inflight->fence.seqno,
> +		     inflight->sched.attr.priority);
> +
> +	engine->execlists.queue_priority_hint = prio;
>  	if (need_preempt(prio, rq_prio(inflight)))
>  		tasklet_hi_schedule(&engine->execlists.tasklet);
>  
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
