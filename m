Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6876918B968
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 15:31:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF5006E051;
	Thu, 19 Mar 2020 14:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11C756E051
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 14:31:42 +0000 (UTC)
IronPort-SDR: V6IYCbGUcPA+LloH/J3AzKXyPJ98miModhIcfQYzAifDykO/RiqarlaAPL+0f1rd/Dw5Xrmm15
 bdgG7eIB0axg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 07:31:42 -0700
IronPort-SDR: V6m6vWjFeo3Kl2nNph2MVLesqOeF1ZD7Wv9h4JHJZ6JCvF0eXFwqCora7SxKvrrywkntgdk6Xy
 TlIkVQ8Uq1Aw==
X-IronPort-AV: E=Sophos;i="5.70,571,1574150400"; d="scan'208";a="245175940"
Received: from amgotede-mobl.ger.corp.intel.com (HELO [10.254.158.140])
 ([10.254.158.140])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 07:31:40 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200319091943.7815-1-chris@chris-wilson.co.uk>
 <20200319091943.7815-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c80cf573-f328-39ac-993d-8a7259ca4152@linux.intel.com>
Date: Thu, 19 Mar 2020 14:31:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200319091943.7815-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/execlists: Force single
 submission for sentinels
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 19/03/2020 09:19, Chris Wilson wrote:
> Currently, we only combine a sentinel request with a max-priority
> barrier such that a sentinel request is always in ELSP[0] with nothing
> following it. However, we will want to create similar ELSP[] submissions
> providing a full-barrier in the submission queue, but without forcing
> maximum priority. As such I915_FENCE_FLAG_SENTINEL takes on the
> single-submission property and so we can remove the gvt special casing.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.h       | 24 +++++++-------
>   drivers/gpu/drm/i915/gt/intel_context_types.h |  4 +--
>   drivers/gpu/drm/i915/gt/intel_lrc.c           | 33 +++++--------------
>   drivers/gpu/drm/i915/gvt/scheduler.c          |  7 ++--
>   4 files changed, 26 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> index 18efad255124..ee5d47165c12 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> @@ -198,18 +198,6 @@ static inline bool intel_context_set_banned(struct intel_context *ce)
>   	return test_and_set_bit(CONTEXT_BANNED, &ce->flags);
>   }
>   
> -static inline bool
> -intel_context_force_single_submission(const struct intel_context *ce)
> -{
> -	return test_bit(CONTEXT_FORCE_SINGLE_SUBMISSION, &ce->flags);
> -}
> -
> -static inline void
> -intel_context_set_single_submission(struct intel_context *ce)
> -{
> -	__set_bit(CONTEXT_FORCE_SINGLE_SUBMISSION, &ce->flags);
> -}
> -
>   static inline bool
>   intel_context_nopreempt(const struct intel_context *ce)
>   {
> @@ -228,6 +216,18 @@ intel_context_clear_nopreempt(struct intel_context *ce)
>   	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
>   }
>   
> +static inline bool
> +intel_context_is_gvt(const struct intel_context *ce)
> +{
> +	return test_bit(CONTEXT_GVT, &ce->flags);
> +}
> +
> +static inline void
> +intel_context_set_gvt(struct intel_context *ce)
> +{
> +	set_bit(CONTEXT_GVT, &ce->flags);
> +}
> +
>   static inline u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>   {
>   	const u32 period =
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 0f3b68b95c56..fd2703efc10c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -64,8 +64,8 @@ struct intel_context {
>   #define CONTEXT_VALID_BIT		2
>   #define CONTEXT_USE_SEMAPHORES		3
>   #define CONTEXT_BANNED			4
> -#define CONTEXT_FORCE_SINGLE_SUBMISSION	5
> -#define CONTEXT_NOPREEMPT		6
> +#define CONTEXT_NOPREEMPT		5
> +#define CONTEXT_GVT			6
>   
>   	u32 *lrc_reg_state;
>   	u64 lrc_desc;
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 112531b29f59..f0c4084c5b9a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1579,22 +1579,10 @@ static void execlists_submit_ports(struct intel_engine_cs *engine)
>   		writel(EL_CTRL_LOAD, execlists->ctrl_reg);
>   }
>   
> -static bool ctx_single_port_submission(const struct intel_context *ce)
> -{
> -	return (IS_ENABLED(CONFIG_DRM_I915_GVT) &&
> -		intel_context_force_single_submission(ce));
> -}
> -
>   static bool can_merge_ctx(const struct intel_context *prev,
>   			  const struct intel_context *next)
>   {
> -	if (prev != next)
> -		return false;
> -
> -	if (ctx_single_port_submission(prev))
> -		return false;
> -
> -	return true;
> +	return prev == next;
>   }
>   
>   static unsigned long i915_request_flags(const struct i915_request *rq)
> @@ -1844,6 +1832,12 @@ static inline void clear_ports(struct i915_request **ports, int count)
>   	memset_p((void **)ports, NULL, count);
>   }
>   
> +static bool has_sentinel(struct i915_request *prev, struct i915_request *next)
> +{
> +	return (i915_request_flags(prev) | i915_request_flags(next)) &
> +		BIT(I915_FENCE_FLAG_SENTINEL);
> +}
> +
>   static void execlists_dequeue(struct intel_engine_cs *engine)
>   {
>   	struct intel_engine_execlists * const execlists = &engine->execlists;
> @@ -2125,18 +2119,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   				if (last->context == rq->context)
>   					goto done;
>   
> -				if (i915_request_has_sentinel(last))
> -					goto done;
> -
> -				/*
> -				 * If GVT overrides us we only ever submit
> -				 * port[0], leaving port[1] empty. Note that we
> -				 * also have to be careful that we don't queue
> -				 * the same context (even though a different
> -				 * request) to the second port.
> -				 */
> -				if (ctx_single_port_submission(last->context) ||
> -				    ctx_single_port_submission(rq->context))
> +				if (has_sentinel(last, rq))
>   					goto done;

I am only confused by can_merge_rq saying two sentinel requests can be
merged together:

	if (unlikely((i915_request_flags(prev) ^ i915_request_flags(next)) &
		     (BIT(I915_FENCE_FLAG_NOPREEMPT) |
		      BIT(I915_FENCE_FLAG_SENTINEL))))
		return false;

What am I missing?

Regards,

Tvrtko

>   
>   				merge = false;
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
> index 1c95bf8cbed0..4fccf4b194b0 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -204,9 +204,9 @@ static int populate_shadow_context(struct intel_vgpu_workload *workload)
>   	return 0;
>   }
>   
> -static inline bool is_gvt_request(struct i915_request *rq)
> +static inline bool is_gvt_request(const struct i915_request *rq)
>   {
> -	return intel_context_force_single_submission(rq->context);
> +	return intel_context_is_gvt(rq->context);
>   }
>   
>   static void save_ring_hw_state(struct intel_vgpu *vgpu,
> @@ -401,6 +401,7 @@ intel_gvt_workload_req_alloc(struct intel_vgpu_workload *workload)
>   		return PTR_ERR(rq);
>   	}
>   
> +	__set_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags);
>   	workload->req = i915_request_get(rq);
>   	return 0;
>   }
> @@ -1226,7 +1227,7 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
>   
>   		i915_vm_put(ce->vm);
>   		ce->vm = i915_vm_get(&ppgtt->vm);
> -		intel_context_set_single_submission(ce);
> +		intel_context_set_gvt(ce);
>   
>   		/* Max ring buffer size */
>   		if (!intel_uc_wants_guc_submission(&engine->gt->uc)) {
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
