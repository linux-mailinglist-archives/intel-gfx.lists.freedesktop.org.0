Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F33471E675C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 18:25:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA156E5A4;
	Thu, 28 May 2020 16:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9213A6E16D
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 16:25:44 +0000 (UTC)
IronPort-SDR: 4ykE+tfzKtbuQJE68nYsp93VIr2u0aCL7gwoWsSF8VXyqU1E/b15ZxD0ridnMBU4ttWdvj7WJZ
 vAcbJY/dj3BA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 09:25:44 -0700
IronPort-SDR: 1mCnUWXJg/jBqqndhJ1HWSPWHmzgej8wTN3pQcy9tsWzzLSjgPLWCoxvjCPsqlhXGZa3RefYL1
 fc6dOTg9uSnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,445,1583222400"; d="scan'208";a="345956844"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 28 May 2020 09:25:43 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 987455C2C4C; Thu, 28 May 2020 19:23:18 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200528074324.5765-2-chris@chris-wilson.co.uk>
References: <20200528074324.5765-1-chris@chris-wilson.co.uk>
 <20200528074324.5765-2-chris@chris-wilson.co.uk>
Date: Thu, 28 May 2020 19:23:18 +0300
Message-ID: <871rn4jafd.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Don't declare hangs if
 engine is stalled
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

> If the ring submission is stalled on an external request, nothing can be
> submitted, not even the heartbeat in the kernel context. Since nothing
> is running, resetting the engine/device does not unblock the system and
> is pointless. We can see if the heartbeat is supposed to be running
> before declaring foul.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  .../gpu/drm/i915/gt/intel_engine_heartbeat.c  | 19 ++++++++++++++++---
>  1 file changed, 16 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> index 5136c8bf112d..f67ad937eefb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> @@ -48,8 +48,10 @@ static void show_heartbeat(const struct i915_request *rq,
>  	struct drm_printer p = drm_debug_printer("heartbeat");
>  
>  	intel_engine_dump(engine, &p,
> -			  "%s heartbeat {prio:%d} not ticking\n",
> +			  "%s heartbeat {seqno:%llx:%lld, prio:%d} not ticking\n",
>  			  engine->name,
> +			  rq->fence.context,
> +			  rq->fence.seqno,
>  			  rq->sched.attr.priority);
>  }
>  
> @@ -76,8 +78,19 @@ static void heartbeat(struct work_struct *wrk)
>  		goto out;
>  
>  	if (engine->heartbeat.systole) {
> -		if (engine->schedule &&
> -		    rq->sched.attr.priority < I915_PRIORITY_BARRIER) {
> +		if (!i915_sw_fence_signaled(&rq->submit)) {
> +			/*
> +			 * Not yet submitted, system is stalled.
> +			 *
> +			 * This more often happens for ring submission,
> +			 * where all contexts are funnelled into a common
> +			 * ringbuffer. If one context is blocked on an
> +			 * external fence, not only is it not submitted,
> +			 * but all other contexts, including the kernel
> +			 * context are stuck waiting for the signal.
> +			 */

The solution how to save the system evades me.
But piling the heartbeat on top does not help with it in
any case.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +		} else if (engine->schedule &&
> +			   rq->sched.attr.priority < I915_PRIORITY_BARRIER) {
>  			/*
>  			 * Gradually raise the priority of the heartbeat to
>  			 * give high priority work [which presumably desires
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
