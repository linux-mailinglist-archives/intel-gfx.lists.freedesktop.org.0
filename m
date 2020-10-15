Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE36D28F5E5
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 17:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FA2189834;
	Thu, 15 Oct 2020 15:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D770A89834
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 15:32:53 +0000 (UTC)
IronPort-SDR: szZBTKardWumygWbD6qCGJBuWMcNghJPOpigPpe3hhschubw2yN0FVCfqH9WX6m3nBjEL3qWBb
 i0w+ezKemikw==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="153312379"
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; d="scan'208";a="153312379"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 08:32:53 -0700
IronPort-SDR: o54b+pvyR9j8GfttZiKlK7gY5pIgUp4QtRj8RYySGpCAZe+mZtaUX0UdaW5OybeGlxayROg4tV
 n2lOFAT8YTdw==
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; d="scan'208";a="464337848"
Received: from smdhoble-mobl.gar.corp.intel.com (HELO [10.251.165.220])
 ([10.251.165.220])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 08:32:52 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201013153506.4215-1-chris@chris-wilson.co.uk>
 <20201014084342.18296-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8a6d0936-03ea-9eee-0a3a-0b42ed2d5d05@linux.intel.com>
Date: Thu, 15 Oct 2020 16:32:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201014084342.18296-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Confirm the context survives
 execution
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


On 14/10/2020 09:43, Chris Wilson wrote:
> Repeat our sanitychecks from before execution to after execution. One
> expects that if we were to see these, the gpu would already be on fire,
> but the timing may be informative.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_pm.c | 37 +++++++++++++++--------
>   drivers/gpu/drm/i915/gt/intel_lrc.c       | 12 ++++++--
>   2 files changed, 34 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> index f7b2e07e2229..c5376790a6b9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -17,6 +17,25 @@
>   #include "intel_ring.h"
>   #include "shmem_utils.h"
>   
> +static void dbg_poison_ce(struct intel_context *ce)
> +{
> +	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> +		return;
> +
> +	if (ce->state) {
> +		struct drm_i915_gem_object *obj = ce->state->obj;
> +		int type = i915_coherent_map_type(ce->engine->i915);
> +		void *map;
> +
> +		map = i915_gem_object_pin_map(obj, type);
> +		if (!IS_ERR(map)) {
> +			memset(map, CONTEXT_REDZONE, obj->base.size);
> +			i915_gem_object_flush_map(obj);
> +			i915_gem_object_unpin_map(obj);
> +		}
> +	}
> +}
> +
>   static int __engine_unpark(struct intel_wakeref *wf)
>   {
>   	struct intel_engine_cs *engine =
> @@ -32,20 +51,14 @@ static int __engine_unpark(struct intel_wakeref *wf)
>   	if (ce) {
>   		GEM_BUG_ON(test_bit(CONTEXT_VALID_BIT, &ce->flags));
>   
> +		/* Flush all pending HW writes before we touch the context */
> +		while (unlikely(intel_context_inflight(ce)))
> +			intel_engine_flush_submission(ce->engine);
s/ce->engine/engine/, insert small value of improvement here >.< :)

Regards,

Tvrtko

> +
>   		/* First poison the image to verify we never fully trust it */
> -		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM) && ce->state) {
> -			struct drm_i915_gem_object *obj = ce->state->obj;
> -			int type = i915_coherent_map_type(engine->i915);
> -			void *map;
> -
> -			map = i915_gem_object_pin_map(obj, type);
> -			if (!IS_ERR(map)) {
> -				memset(map, CONTEXT_REDZONE, obj->base.size);
> -				i915_gem_object_flush_map(obj);
> -				i915_gem_object_unpin_map(obj);
> -			}
> -		}
> +		dbg_poison_ce(ce);
>   
> +		/* Scrub the context image after our loss of control */
>   		ce->ops->reset(ce);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 287537089c77..6170f6874f52 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1216,7 +1216,8 @@ static void intel_engine_context_out(struct intel_engine_cs *engine)
>   
>   static void
>   execlists_check_context(const struct intel_context *ce,
> -			const struct intel_engine_cs *engine)
> +			const struct intel_engine_cs *engine,
> +			const char *when)
>   {
>   	const struct intel_ring *ring = ce->ring;
>   	u32 *regs = ce->lrc_reg_state;
> @@ -1251,7 +1252,7 @@ execlists_check_context(const struct intel_context *ce,
>   		valid = false;
>   	}
>   
> -	WARN_ONCE(!valid, "Invalid lrc state found before submission\n");
> +	WARN_ONCE(!valid, "Invalid lrc state found %s submission\n", when);
>   }
>   
>   static void restore_default_state(struct intel_context *ce,
> @@ -1347,7 +1348,7 @@ __execlists_schedule_in(struct i915_request *rq)
>   		reset_active(rq, engine);
>   
>   	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> -		execlists_check_context(ce, engine);
> +		execlists_check_context(ce, engine, "before");
>   
>   	if (ce->tag) {
>   		/* Use a fixed tag for OA and friends */
> @@ -1418,6 +1419,9 @@ __execlists_schedule_out(struct i915_request *rq,
>   	 * refrain from doing non-trivial work here.
>   	 */
>   
> +	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> +		execlists_check_context(ce, engine, "after");
> +
>   	/*
>   	 * If we have just completed this context, the engine may now be
>   	 * idle and we want to re-enter powersaving.
> @@ -4078,6 +4082,8 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
>   
>   static void execlists_sanitize(struct intel_engine_cs *engine)
>   {
> +	GEM_BUG_ON(execlists_active(&engine->execlists));
> +
>   	/*
>   	 * Poison residual state on resume, in case the suspend didn't!
>   	 *
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
