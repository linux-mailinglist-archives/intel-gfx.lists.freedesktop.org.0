Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 937322FE828
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 11:55:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9921E6E081;
	Thu, 21 Jan 2021 10:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 967886E081
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 10:55:53 +0000 (UTC)
IronPort-SDR: 0yDia835GkS/o292J5Bez16/r1w0j8V3X0iuvootIZUAJ817Dhh3CAZAR+HSEE+NMtfJsmU2yE
 Ut50YkJ5RZGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="179336009"
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="179336009"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 02:55:52 -0800
IronPort-SDR: Z3BAo5msbZhl1HMmOYSa1Tlwu6Dy2CTEYVXOg7GBE/DAuaH8ohm9wuTAnsl+42+unIFgQ64F/q
 X/+wIgz0FwOg==
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="356420853"
Received: from pscheper-mobl1.ger.corp.intel.com (HELO [10.252.50.106])
 ([10.252.50.106])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 02:55:51 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210121003253.27225-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4c24b53a-2db5-39c5-c735-a0f732b7245d@linux.intel.com>
Date: Thu, 21 Jan 2021 10:55:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210121003253.27225-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Move execlists_reset() out of
 line
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


On 21/01/2021 00:32, Chris Wilson wrote:
> Reduce the bulk of execlists_submission_tasklet by moving the unlikely
> reset function out of line.
> 
> add/remove: 1/0 grow/shrink: 0/1 up/down: 960/-935 (25)
> Function                                     old     new   delta
> execlists_reset                                -     960    +960
> execlists_submission_tasklet                6629    5694    -935
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../drm/i915/gt/intel_execlists_submission.c  | 36 +++++++++----------
>   1 file changed, 17 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 740ff05fd692..43cc85241886 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2299,10 +2299,13 @@ static void execlists_capture(struct intel_engine_cs *engine)
>   	kfree(cap);
>   }
>   
> -static void execlists_reset(struct intel_engine_cs *engine, const char *msg)
> +static noinline void execlists_reset(struct intel_engine_cs *engine)
>   {
> +	struct intel_engine_execlists *el = &engine->execlists;
>   	const unsigned int bit = I915_RESET_ENGINE + engine->id;
>   	unsigned long *lock = &engine->gt->reset.flags;
> +	unsigned long eir = fetch_and_zero(&el->error_interrupt);

We got the locking wrong for this one. Irq handler side is under 
gt->irq_lock, but there are unlocked rmw cycles in the tasklet. Not 
counting this fetch_and_zero which is also unlocked.

If we nest gt->irq_lock under the engine->active.lock here, or the 
opposite from the irq_handler, plus short locked sections in the tasklet 
and csb handling. I *think* both options could be fine from locking order.

Regards,

Tvrtko

> +	const char *msg;
>   
>   	if (!intel_has_reset_engine(engine->gt))
>   		return;
> @@ -2310,16 +2313,25 @@ static void execlists_reset(struct intel_engine_cs *engine, const char *msg)
>   	if (test_and_set_bit(bit, lock))
>   		return;
>   
> +	/* Generate the error message in priority wrt to the user! */
> +	if (eir & GENMASK(15, 0))
> +		msg = "CS error"; /* thrown by a user payload */
> +	else if (eir & ERROR_CSB)
> +		msg = "invalid CSB event";
> +	else if (eir & ERROR_PREEMPT)
> +		msg = "preemption time out";
> +	else
> +		msg = "internal error";
>   	ENGINE_TRACE(engine, "reset for %s\n", msg);
>   
>   	/* Mark this tasklet as disabled to avoid waiting for it to complete */
> -	tasklet_disable_nosync(&engine->execlists.tasklet);
> +	tasklet_disable_nosync(&el->tasklet);
>   
>   	ring_set_paused(engine, 1); /* Freeze the current request in place */
>   	execlists_capture(engine);
>   	intel_engine_reset(engine, msg);
>   
> -	tasklet_enable(&engine->execlists.tasklet);
> +	tasklet_enable(&el->tasklet);
>   	clear_and_wake_up_bit(bit, lock);
>   }
>   
> @@ -2355,22 +2367,8 @@ static void execlists_submission_tasklet(unsigned long data)
>   		engine->execlists.error_interrupt |= ERROR_PREEMPT;
>   	}
>   
> -	if (unlikely(READ_ONCE(engine->execlists.error_interrupt))) {
> -		const char *msg;
> -
> -		/* Generate the error message in priority wrt to the user! */
> -		if (engine->execlists.error_interrupt & GENMASK(15, 0))
> -			msg = "CS error"; /* thrown by a user payload */
> -		else if (engine->execlists.error_interrupt & ERROR_CSB)
> -			msg = "invalid CSB event";
> -		else if (engine->execlists.error_interrupt & ERROR_PREEMPT)
> -			msg = "preemption time out";
> -		else
> -			msg = "internal error";
> -
> -		engine->execlists.error_interrupt = 0;
> -		execlists_reset(engine, msg);
> -	}
> +	if (unlikely(READ_ONCE(engine->execlists.error_interrupt)))
> +		execlists_reset(engine);
>   
>   	if (!engine->execlists.pending[0]) {
>   		execlists_dequeue_irq(engine);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
