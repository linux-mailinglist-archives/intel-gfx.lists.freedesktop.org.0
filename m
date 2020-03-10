Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB0F17F439
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 10:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8325B6E12B;
	Tue, 10 Mar 2020 09:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F6E6E12B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 09:59:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 02:59:14 -0700
X-IronPort-AV: E=Sophos;i="5.70,536,1574150400"; d="scan'208";a="288982571"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 Mar 2020 02:59:14 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
 <20200306133852.3420322-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <aba6f3e3-bf69-5a4f-ad94-d20efc1ecacf@linux.intel.com>
Date: Tue, 10 Mar 2020 09:59:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200306133852.3420322-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/17] drm/i915: Improve the start alignment
 of bonded pairs
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


On 06/03/2020 13:38, Chris Wilson wrote:
> Always wait on the start of the signaler request to reduce the problem
> of dequeueing the bonded pair too early -- we want both payloads to
> start at the same time, with no latency, and yet still allow others to
> make full use of the slack in the system. This reduce the amount of time
> we spend waiting on the semaphore used to synchronise the start of the
> bonded payload.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 41 +++++++++++++++++++++++++----
>   1 file changed, 36 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 66efd16c4850..db11006b4ac9 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1128,14 +1128,45 @@ __i915_request_await_execution(struct i915_request *to,
>   					  &from->fence))
>   		return 0;
>   
> -	/* Ensure both start together [after all semaphores in signal] */
> -	if (intel_engine_has_semaphores(to->engine))
> -		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
> -	else
> -		err = i915_request_await_start(to, from);
> +	/*
> +	 * Wait until the start of this request.
> +	 *
> +	 * The execution cb fires when we submit the request to HW. But in
> +	 * many cases this may be long before the request itself is ready to
> +	 * run (consider that we submit 2 requests for the same context, where
> +	 * the request of interest is behind an indefinite spinner). So we hook
> +	 * up to both to reduce our queues and keep the execution lag minimised
> +	 * in the worst case, though we hope that the await_start is elided.
> +	 */
> +	err = i915_request_await_start(to, from);
>   	if (err < 0)
>   		return err;
>   
> +	/*
> +	 * Ensure both start together [after all semaphores in signal]
> +	 *
> +	 * Now that we are queued to the HW at roughly the same time (thanks
> +	 * to the execute cb) and are ready to run at roughly the same time
> +	 * (thanks to the await start), our signaler may still be indefinitely
> +	 * delayed by waiting on a semaphore from a remote engine. If our
> +	 * signaler depends on a semaphore, so indirectly do we, and we do not
> +	 * want to start our payload until our signaler also starts theirs.
> +	 * So we wait.
> +	 *
> +	 * However, there is also a second condition for which we need to wait
> +	 * for the precise start of the signaler. Consider that the signaler
> +	 * was submitted in a chain of requests following another context
> +	 * (with just an ordinary intra-engine fence dependency between the
> +	 * two). In this case the signaler is queued to HW, but not for
> +	 * immediate execution, and so we must wait until it reaches the
> +	 * active slot.
> +	 */
> +	if (intel_engine_has_semaphores(to->engine)) {
> +		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
> +		if (err < 0)
> +			return err;
> +	}
> +
>   	/* Couple the dependency tree for PI on this exposed to->fence */
>   	if (to->engine->schedule) {
>   		err = i915_sched_node_add_dependency(&to->sched, &from->sched);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
