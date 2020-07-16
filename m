Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB3B22271F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 17:37:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 178C86EC7B;
	Thu, 16 Jul 2020 15:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79FDE6EC7B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 15:37:29 +0000 (UTC)
IronPort-SDR: 8gYXenDO+E2P9POA3IQrRmYMBkmGS8zWmeTKMpwBnNj9EGsCEDuAP1koA3V7cpGzf+G7n6PRrF
 n9dpSsrtgg+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="136862644"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="136862644"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 08:37:29 -0700
IronPort-SDR: icTJpirVZsKPlcAZEIEaWeGNayl8BiOdSplIaM6hRh6/Eppbx5shX0OwQnMlqGJGW73ZA6QCK+
 K+MmBHrA2jfA==
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="460513712"
Received: from unknown (HELO [10.249.34.86]) ([10.249.34.86])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 08:37:27 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200716113357.7644-1-chris@chris-wilson.co.uk>
 <20200716113357.7644-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0c9acdb1-86ca-def4-fa94-bb6f0f79d1a9@linux.intel.com>
Date: Thu, 16 Jul 2020 16:37:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200716113357.7644-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/gt: Only transfer the virtual
 context to the new engine if active
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
Cc: "Nayana, Venkata Ramana" <venkata.ramana.nayana@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 16/07/2020 12:33, Chris Wilson wrote:
> One more complication of preempt-to-busy with respect to the virtual
> engine is that we may have retired the last request along the virtual
> engine at the same time as preparing to submit the completed request to
> a new engine. That submit will be shortcircuited, but not before we have
> updated the context with the new register offsets and marked the virtual
> engine as bound to the new engine (by calling swap on ve->siblings[]).
> As we may have just retired the completed request, we may also be in the
> middle of calling intel_context_exit() to turn off the power management

virtual_context_exit

> associated with the virtual engine, and that in turn walks the
> ve->siblings[]. If we happen to call swap() on the array as we walk, we
> will call intel_engine_pm_put() twice on the same engine.
> 
> In this patch, we prevent this by only updating the bound engine after a
> successful submission which weeds out the already completed requests.
> 
> Alternatively, we could walk a non-volatile array for the pm, such as
> using the engine->mask. The small advantage to performing the update
> after the submit is that we then only have to do a swap for active
> requests.
> 
> Fixes: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
> References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: "Nayana, Venkata Ramana" <venkata.ramana.nayana@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 65 ++++++++++++++++++-----------
>   1 file changed, 40 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 88a5c155154d..5e8278e8ac79 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1805,6 +1805,33 @@ static bool virtual_matches(const struct virtual_engine *ve,
>   	return true;
>   }
>   
> +static void virtual_xfer_context(struct virtual_engine *ve,
> +				 struct intel_engine_cs *engine)
> +{
> +	unsigned int n;
> +
> +	if (likely(engine == ve->siblings[0]))
> +		return;
> +
> +	GEM_BUG_ON(READ_ONCE(ve->context.inflight));
> +	if (!intel_engine_has_relative_mmio(engine))
> +		virtual_update_register_offsets(ve->context.lrc_reg_state,
> +						engine);
> +
> +	/*
> +	 * Move the bound engine to the top of the list for
> +	 * future execution. We then kick this tasklet first
> +	 * before checking others, so that we preferentially
> +	 * reuse this set of bound registers.
> +	 */
> +	for (n = 1; n < ve->num_siblings; n++) {
> +		if (ve->siblings[n] == engine) {
> +			swap(ve->siblings[n], ve->siblings[0]);
> +			break;
> +		}
> +	}
> +}
> +
>   #define for_each_waiter(p__, rq__) \
>   	list_for_each_entry_lockless(p__, \
>   				     &(rq__)->sched.waiters_list, \
> @@ -2253,35 +2280,23 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   			GEM_BUG_ON(!(rq->execution_mask & engine->mask));
>   			WRITE_ONCE(rq->engine, engine);
>   
> -			if (engine != ve->siblings[0]) {
> -				u32 *regs = ve->context.lrc_reg_state;
> -				unsigned int n;
> -
> -				GEM_BUG_ON(READ_ONCE(ve->context.inflight));
> -
> -				if (!intel_engine_has_relative_mmio(engine))
> -					virtual_update_register_offsets(regs,
> -									engine);
> -
> +			if (__i915_request_submit(rq)) {
>   				/*
> -				 * Move the bound engine to the top of the list
> -				 * for future execution. We then kick this
> -				 * tasklet first before checking others, so that
> -				 * we preferentially reuse this set of bound
> -				 * registers.
> +				 * Only after we confirm that we will submit
> +				 * this request (i.e. it has not already
> +				 * completed), do we want to update the context.
> +				 *
> +				 * This serves two purposes. It avoids
> +				 * unnecessary work if we are resubmitting an
> +				 * already completed request after timeslicing.
> +				 * But more importantly, it prevents us altering
> +				 * ve->siblings[] on an idle context, where
> +				 * we may be using ve->siblings[] in
> +				 * virtual_context_enter / virtual_context_exit.
>   				 */
> -				for (n = 1; n < ve->num_siblings; n++) {
> -					if (ve->siblings[n] == engine) {
> -						swap(ve->siblings[n],
> -						     ve->siblings[0]);
> -						break;
> -					}
> -				}
> -
> +				virtual_xfer_context(ve, engine);
>   				GEM_BUG_ON(ve->siblings[0] != engine);
> -			}
>   
> -			if (__i915_request_submit(rq)) {
>   				submit = true;
>   				last = rq;
>   			}
> 

This was nasty indeed. How did you manage to find this?

I think it is okay to do the update once we know submit is doing ahead, 
but in the light of this "gotcha" I think it would also be good to start 
using for_each_engine_masked in virtual_context_enter/exit.

Regardless:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
