Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5418339890D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 14:09:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4723F6EC6D;
	Wed,  2 Jun 2021 12:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D5986E3EE;
 Wed,  2 Jun 2021 12:09:12 +0000 (UTC)
IronPort-SDR: IMqWuTS4YkeWK98DA3obk14jnKVq9cFg7DRexD2kT/tuRMvbxLovauq0TVXwHlJ8QwlqXw3UcB
 2xw8ObJa5D/g==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="264952349"
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="264952349"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 05:09:09 -0700
IronPort-SDR: U07W7piHukoa5Z60+vZwWR3F+u77IvBXNdR5nznL7HortkeJprIKl4KAQHJL6MGRX0JWP5Crv3
 wBvSnmZNPyow==
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="447379681"
Received: from tstaplex-mobl1.ger.corp.intel.com (HELO [10.213.195.193])
 ([10.213.195.193])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 05:09:07 -0700
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <20210506191451.77768-61-matthew.brost@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d405fb3d-0c78-f56a-e60e-26583fce4ea0@linux.intel.com>
Date: Wed, 2 Jun 2021 13:09:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210506191451.77768-61-matthew.brost@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH 60/97] drm/i915: Track 'serial' counts
 for virtual engines
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 06/05/2021 20:14, Matthew Brost wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> The serial number tracking of engines happens at the backend of
> request submission and was expecting to only be given physical
> engines. However, in GuC submission mode, the decomposition of virtual
> to physical engines does not happen in i915. Instead, requests are
> submitted to their virtual engine mask all the way through to the
> hardware (i.e. to GuC). This would mean that the heart beat code
> thinks the physical engines are idle due to the serial number not
> incrementing.
> 
> This patch updates the tracking to decompose virtual engines into
> their physical constituents and tracks the request against each. This
> is not entirely accurate as the GuC will only be issuing the request
> to one physical engine. However, it is the best that i915 can do given
> that it has no knowledge of the GuC's scheduling decisions.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_types.h     |  2 ++
>   .../gpu/drm/i915/gt/intel_execlists_submission.c |  6 ++++++
>   drivers/gpu/drm/i915/gt/intel_ring_submission.c  |  6 ++++++
>   drivers/gpu/drm/i915/gt/mock_engine.c            |  6 ++++++
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c    | 16 ++++++++++++++++
>   drivers/gpu/drm/i915/i915_request.c              |  4 +++-
>   6 files changed, 39 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 86302e6d86b2..e2b5cda6dbc4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -389,6 +389,8 @@ struct intel_engine_cs {
>   	void		(*park)(struct intel_engine_cs *engine);
>   	void		(*unpark)(struct intel_engine_cs *engine);
>   
> +	void		(*bump_serial)(struct intel_engine_cs *engine);
> +
>   	void		(*set_default_submission)(struct intel_engine_cs *engine);
>   
>   	const struct intel_context_ops *cops;
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index ae12d7f19ecd..02880ea5d693 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -3199,6 +3199,11 @@ static void execlists_release(struct intel_engine_cs *engine)
>   	lrc_fini_wa_ctx(engine);
>   }
>   
> +static void execlist_bump_serial(struct intel_engine_cs *engine)
> +{
> +	engine->serial++;
> +}
> +
>   static void
>   logical_ring_default_vfuncs(struct intel_engine_cs *engine)
>   {
> @@ -3208,6 +3213,7 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
>   
>   	engine->cops = &execlists_context_ops;
>   	engine->request_alloc = execlists_request_alloc;
> +	engine->bump_serial = execlist_bump_serial;
>   
>   	engine->reset.prepare = execlists_reset_prepare;
>   	engine->reset.rewind = execlists_reset_rewind;
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 14aa31879a37..39dd7c4ed0a9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -1045,6 +1045,11 @@ static void setup_irq(struct intel_engine_cs *engine)
>   	}
>   }
>   
> +static void ring_bump_serial(struct intel_engine_cs *engine)
> +{
> +	engine->serial++;
> +}
> +
>   static void setup_common(struct intel_engine_cs *engine)
>   {
>   	struct drm_i915_private *i915 = engine->i915;
> @@ -1064,6 +1069,7 @@ static void setup_common(struct intel_engine_cs *engine)
>   
>   	engine->cops = &ring_context_ops;
>   	engine->request_alloc = ring_request_alloc;
> +	engine->bump_serial = ring_bump_serial;
>   
>   	/*
>   	 * Using a global execution timeline; the previous final breadcrumb is
> diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
> index bd005c1b6fd5..97b10fd60b55 100644
> --- a/drivers/gpu/drm/i915/gt/mock_engine.c
> +++ b/drivers/gpu/drm/i915/gt/mock_engine.c
> @@ -292,6 +292,11 @@ static void mock_engine_release(struct intel_engine_cs *engine)
>   	intel_engine_fini_retire(engine);
>   }
>   
> +static void mock_bump_serial(struct intel_engine_cs *engine)
> +{
> +	engine->serial++;
> +}
> +
>   struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
>   				    const char *name,
>   				    int id)
> @@ -318,6 +323,7 @@ struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
>   
>   	engine->base.cops = &mock_context_ops;
>   	engine->base.request_alloc = mock_request_alloc;
> +	engine->base.bump_serial = mock_bump_serial;
>   	engine->base.emit_flush = mock_emit_flush;
>   	engine->base.emit_fini_breadcrumb = mock_emit_breadcrumb;
>   	engine->base.submit_request = mock_submit_request;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index dc79d287c50a..f0e5731bcef6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1500,6 +1500,20 @@ static void guc_release(struct intel_engine_cs *engine)
>   	lrc_fini_wa_ctx(engine);
>   }
>   
> +static void guc_bump_serial(struct intel_engine_cs *engine)
> +{
> +	engine->serial++;
> +}
> +
> +static void virtual_guc_bump_serial(struct intel_engine_cs *engine)
> +{
> +	struct intel_engine_cs *e;
> +	intel_engine_mask_t tmp, mask = engine->mask;
> +
> +	for_each_engine_masked(e, engine->gt, mask, tmp)
> +		e->serial++;
> +}
> +
>   static void guc_default_vfuncs(struct intel_engine_cs *engine)
>   {
>   	/* Default vfuncs which can be overridden by each engine. */
> @@ -1508,6 +1522,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
>   
>   	engine->cops = &guc_context_ops;
>   	engine->request_alloc = guc_request_alloc;
> +	engine->bump_serial = guc_bump_serial;
>   
>   	engine->sched_engine->schedule = i915_schedule;
>   
> @@ -1843,6 +1858,7 @@ guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count)
>   
>   	ve->base.cops = &virtual_guc_context_ops;
>   	ve->base.request_alloc = guc_request_alloc;
> +	ve->base.bump_serial = virtual_guc_bump_serial;
>   
>   	ve->base.submit_request = guc_submit_request;
>   
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 9542a5baa45a..127d60b36422 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -692,7 +692,9 @@ bool __i915_request_submit(struct i915_request *request)
>   				     request->ring->vaddr + request->postfix);
>   
>   	trace_i915_request_execute(request);
> -	engine->serial++;
> +	if (engine->bump_serial)
> +		engine->bump_serial(engine);
> +

As long as you have to handle null vfunc, you could make the patch way 
smaller by doing:

   if (engine->bump_serial)
	engine->bump_serial(engine);
   else
	engine->serial++;

Added bonus you avoid a function call with execlists making the patch 
not introduce a double penalty. Or just make bump_serial always point to 
a valid/default function. No need for both a new branch *and* a function 
call I think. I'd prefer the code snippet as above though.

Regards,

Tvrtko

>   	result = true;
>   
>   	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags));
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
