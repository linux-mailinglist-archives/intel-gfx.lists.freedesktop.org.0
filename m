Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 468F21D7909
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 14:53:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DC7489CD5;
	Mon, 18 May 2020 12:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A7989CD5
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 12:53:33 +0000 (UTC)
IronPort-SDR: YqP8BqewfyI3McFyI+55ZEGXMvoqIGobT+XhYQKv8TCcfwOhcjbeeLQIv4pjkgHn2OEQTR/q+4
 zoOWFsVnl/NA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 05:53:33 -0700
IronPort-SDR: jV6kDh4q6xE5RU1JV/XTojMcKXZBUQVROSFA/yTX2tfTbCiWio33E9jrRFLMkjHtH2L9HpUhJW
 lblKa2HSWdBw==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="439206536"
Received: from coheno1-mobl.ger.corp.intel.com (HELO [10.214.214.153])
 ([10.214.214.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 05:53:31 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200518081440.17948-1-chris@chris-wilson.co.uk>
 <20200518081440.17948-7-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <adfc123c-7ae4-5d27-cd01-b3d050e3a25b@linux.intel.com>
Date: Mon, 18 May 2020 13:53:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518081440.17948-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/gt: Decouple inflight virtual
 engines
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


On 18/05/2020 09:14, Chris Wilson wrote:
> Once a virtual engine has been bound to a sibling, it will remain bound
> until we finally schedule out the last active request. We can not rebind
> the context to a new sibling while it is inflight as the context save
> will conflict, hence we wait. As we cannot then use any other sibliing
> while the context is inflight, only kick the bound sibling while it
> inflight and upon scheduling out the kick the rest (so that we can swap
> engines on timeslicing if the previously bound engine becomes
> oversubscribed).
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 30 +++++++++++++----------------
>   1 file changed, 13 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 7a5ac3375225..fe8f3518d6b8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1398,9 +1398,8 @@ execlists_schedule_in(struct i915_request *rq, int idx)
>   static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
>   {
>   	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
> -	struct i915_request *next = READ_ONCE(ve->request);
>   
> -	if (next == rq || (next && next->execution_mask & ~rq->execution_mask))
> +	if (READ_ONCE(ve->request))
>   		tasklet_hi_schedule(&ve->base.execlists.tasklet);
>   }
>   
> @@ -1821,18 +1820,14 @@ first_virtual_engine(struct intel_engine_cs *engine)
>   			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
>   		struct i915_request *rq = READ_ONCE(ve->request);
>   
> -		if (!rq) { /* lazily cleanup after another engine handled rq */
> +		/* lazily cleanup after another engine handled rq */
> +		if (!rq || !virtual_matches(ve, rq, engine)) {
>   			rb_erase_cached(rb, &el->virtual);
>   			RB_CLEAR_NODE(rb);
>   			rb = rb_first_cached(&el->virtual);
>   			continue;
>   		}
>   
> -		if (!virtual_matches(ve, rq, engine)) {
> -			rb = rb_next(rb);
> -			continue;
> -		}
> -
>   		return ve;
>   	}
>   
> @@ -5478,7 +5473,6 @@ static void virtual_submission_tasklet(unsigned long data)
>   	if (unlikely(!mask))
>   		return;
>   
> -	local_irq_disable();
>   	for (n = 0; n < ve->num_siblings; n++) {
>   		struct intel_engine_cs *sibling = READ_ONCE(ve->siblings[n]);
>   		struct ve_node * const node = &ve->nodes[sibling->id];
> @@ -5488,20 +5482,19 @@ static void virtual_submission_tasklet(unsigned long data)
>   		if (!READ_ONCE(ve->request))
>   			break; /* already handled by a sibling's tasklet */
>   
> +		spin_lock_irq(&sibling->active.lock);
> +
>   		if (unlikely(!(mask & sibling->mask))) {
>   			if (!RB_EMPTY_NODE(&node->rb)) {
> -				spin_lock(&sibling->active.lock);
>   				rb_erase_cached(&node->rb,
>   						&sibling->execlists.virtual);
>   				RB_CLEAR_NODE(&node->rb);
> -				spin_unlock(&sibling->active.lock);
>   			}
> -			continue;
> -		}
>   
> -		spin_lock(&sibling->active.lock);
> +			goto unlock_engine;
> +		}
>   
> -		if (!RB_EMPTY_NODE(&node->rb)) {
> +		if (unlikely(!RB_EMPTY_NODE(&node->rb))) {
>   			/*
>   			 * Cheat and avoid rebalancing the tree if we can
>   			 * reuse this node in situ.
> @@ -5541,9 +5534,12 @@ static void virtual_submission_tasklet(unsigned long data)
>   		if (first && prio >= sibling->execlists.queue_priority_hint)
>   			tasklet_hi_schedule(&sibling->execlists.tasklet);
>   
> -		spin_unlock(&sibling->active.lock);
> +unlock_engine:
> +		spin_unlock_irq(&sibling->active.lock);
> +
> +		if (intel_context_inflight(&ve->context))
> +			break;

So virtual request may not be added to all siblings any longer. Will it 
still be able to schedule it on any if time slicing kicks in under these 
conditions?

This is equivalent to the hunk in first_virtual_engine which also 
removes it from all other siblings.

I guess it's inline with what the commit messages says - that new 
sibling will be picked upon time slicing. I just don't quite see the 
path which would do it. Only path which shuffles the siblings array 
around is in dequeue, and dequeue on other that the engine which first 
picked it will not happen any more. I must be missing something..

Regards,

Tvrtko

>   	}
> -	local_irq_enable();
>   }
>   
>   static void virtual_submit_request(struct i915_request *rq)
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
