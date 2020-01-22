Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B73851455E6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 14:28:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C1A6E4FE;
	Wed, 22 Jan 2020 13:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC076E4FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 13:28:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 05:28:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="229333603"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO [10.252.10.247])
 ([10.252.10.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Jan 2020 05:28:31 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200122112905.482044-1-chris@chris-wilson.co.uk>
 <20200122113421.482427-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <36b7befe-a03d-070c-fa8e-adc5c99400f3@linux.intel.com>
Date: Wed, 22 Jan 2020 13:28:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200122113421.482427-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/execlists: Take a reference
 while capturing the guilty request
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/01/2020 11:34, Chris Wilson wrote:
> Thanks to preempt-to-busy, we leave the request on the HW as we submit
> the preemption request. This means that the request may complete at any
> moment as we process HW events, and in particular the request may be
> retired as we are planning to capture it for a preemption timeout.
> 
> Be more careful while obtaining the request to capture after a
> preemption timeout, and check to see if it completed before we were able
> to put it on the on-hold list. If we do see it did complete just before
> we capture the request, proclaim the preemption-timeout a false positive
> and pardon the reset as we should hit an arbitration point momentarily
> and so be able to process the preemption.
> 
> Note that even after we move the request to be on hold it may be retired
> (as the reset to stop the HW comes after), so we do require to hold our
> own reference as we work on the request for capture (and all of the
> peeking at state within the request needs to be carefully protected).
> 
> Fixes: 32ff621fd744 ("drm/i915/gt: Allow temporary suspension of inflight requests")
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/997
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 39 +++++++++++++++++++++++------
>   1 file changed, 31 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 3a30767ff0c4..c4826d49571f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2393,11 +2393,16 @@ static void __execlists_hold(struct i915_request *rq)
>   	} while (rq);
>   }
>   
> -static void execlists_hold(struct intel_engine_cs *engine,
> +static bool execlists_hold(struct intel_engine_cs *engine,
>   			   struct i915_request *rq)
>   {
>   	spin_lock_irq(&engine->active.lock);
>   
> +	if (!i915_request_completed(rq)) { /* too late! */
> +		rq = NULL;
> +		goto unlock;
> +	}
> +
>   	/*
>   	 * Transfer this request onto the hold queue to prevent it
>   	 * being resumbitted to HW (and potentially completed) before we have
> @@ -2408,7 +2413,9 @@ static void execlists_hold(struct intel_engine_cs *engine,
>   	GEM_BUG_ON(rq->engine != engine);
>   	__execlists_hold(rq);
>   
> +unlock:
>   	spin_unlock_irq(&engine->active.lock);
> +	return rq;
>   }
>   
>   static bool hold_request(const struct i915_request *rq)
> @@ -2524,6 +2531,7 @@ static void execlists_capture_work(struct work_struct *work)
>   
>   	/* Return this request and all that depend upon it for signaling */
>   	execlists_unhold(engine, cap->rq);
> +	i915_request_put(cap->rq);
>   
>   	kfree(cap);
>   }
> @@ -2560,12 +2568,12 @@ static struct execlists_capture *capture_regs(struct intel_engine_cs *engine)
>   	return NULL;
>   }
>   
> -static void execlists_capture(struct intel_engine_cs *engine)
> +static bool execlists_capture(struct intel_engine_cs *engine)
>   {
>   	struct execlists_capture *cap;
>   
>   	if (!IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR))
> -		return;
> +		return true;
>   
>   	/*
>   	 * We need to _quickly_ capture the engine state before we reset.
> @@ -2574,13 +2582,17 @@ static void execlists_capture(struct intel_engine_cs *engine)
>   	 */
>   	cap = capture_regs(engine);
>   	if (!cap)
> -		return;
> +		return true;
>   
>   	cap->rq = execlists_active(&engine->execlists);
>   	GEM_BUG_ON(!cap->rq);
>   
> +	rcu_read_lock();
>   	cap->rq = active_request(cap->rq->context->timeline, cap->rq);
> -	GEM_BUG_ON(!cap->rq);
> +	cap->rq = i915_request_get_rcu(cap->rq);
> +	rcu_read_unlock();
> +	if (!cap->rq)
> +		goto err_free;
>   
>   	/*
>   	 * Remove the request from the execlists queue, and take ownership
> @@ -2602,10 +2614,19 @@ static void execlists_capture(struct intel_engine_cs *engine)
>   	 * simply hold that request accountable for being non-preemptible
>   	 * long enough to force the reset.
>   	 */
> -	execlists_hold(engine, cap->rq);
> +	if (!execlists_hold(engine, cap->rq))
> +		goto err_rq;
>   
>   	INIT_WORK(&cap->work, execlists_capture_work);
>   	schedule_work(&cap->work);
> +	return true;
> +
> +err_rq:
> +	i915_request_put(cap->rq);
> +err_free:
> +	i915_gpu_coredump_put(cap->error);
> +	kfree(cap);
> +	return false;
>   }
>   
>   static noinline void preempt_reset(struct intel_engine_cs *engine)
> @@ -2627,8 +2648,10 @@ static noinline void preempt_reset(struct intel_engine_cs *engine)
>   		     jiffies_to_msecs(jiffies - engine->execlists.preempt.expires));
>   
>   	ring_set_paused(engine, 1); /* Freeze the current request in place */
> -	execlists_capture(engine);
> -	intel_engine_reset(engine, "preemption time out");
> +	if (execlists_capture(engine))
> +		intel_engine_reset(engine, "preemption time out");
> +	else
> +		ring_set_paused(engine, 0);
>   
>   	tasklet_enable(&engine->execlists.tasklet);
>   	clear_and_wake_up_bit(bit, lock);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
