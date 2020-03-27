Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4A1195A87
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 17:01:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5A18928D;
	Fri, 27 Mar 2020 16:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 968E78928D
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 16:01:15 +0000 (UTC)
IronPort-SDR: 3Jy8kC90FioPa0sDSQ86ka3o9WYkQZpQrJf1U4msV1uwI96cMjKfFumagh6v+3MMLakDNtG02S
 AqqcocW4mANA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 09:01:13 -0700
IronPort-SDR: 9DYOFzZODqUpQeGwLqm/UaXRrU2n8xKP+h0Ii8ueharSJclX+EiFWRc1N4m6fmRHK2ueiaqpIp
 3KJha2M9shGA==
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="421145156"
Received: from kandasna-mobl.ger.corp.intel.com (HELO [10.249.36.47])
 ([10.249.36.47])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 09:01:09 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200326231810.16852-1-chris@chris-wilson.co.uk>
 <20200326231810.16852-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6fee50a9-975f-71e5-f221-5d7ba837e1fb@linux.intel.com>
Date: Fri, 27 Mar 2020 16:01:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200326231810.16852-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Explicitly reset
 both reg and context runtime
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


On 26/03/2020 23:18, Chris Wilson wrote:
> Upon a GPU reset, we copy the default context image over top of the
> guilty image. This will rollback the CTX_TIMESTAMP register to before
> our value of ce->runtime.last. Reset both back to 0 so that we do not
> encounter an underflow on the next schedule out after resume.
> 
> This should not be a huge issue in practice, as hangs should be rare in
> correct code.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 24 +++++++++++++-----------
>   1 file changed, 13 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 4edda15eba26..47cec545a069 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -238,6 +238,17 @@ __execlists_update_reg_state(const struct intel_context *ce,
>   			     const struct intel_engine_cs *engine,
>   			     u32 head);
>   
> +static u32 intel_context_get_runtime(const struct intel_context *ce)
> +{
> +	/*
> +	 * We can use either ppHWSP[16] which is recorded before the context
> +	 * switch (and so excludes the cost of context switches) or use the
> +	 * value from the context image itself, which is saved/restored earlier
> +	 * and so includes the cost of the save.
> +	 */
> +	return READ_ONCE(ce->lrc_reg_state[CTX_TIMESTAMP]);
> +}
> +
>   static void mark_eio(struct i915_request *rq)
>   {
>   	if (i915_request_completed(rq))
> @@ -1154,6 +1165,7 @@ static void restore_default_state(struct intel_context *ce,
>   		       engine->context_size - PAGE_SIZE);
>   
>   	execlists_init_reg_state(regs, ce, engine, ce->ring, false);
> +	ce->runtime.last = intel_context_get_runtime(ce);
>   }
>   
>   static void reset_active(struct i915_request *rq,
> @@ -1195,17 +1207,6 @@ static void reset_active(struct i915_request *rq,
>   	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
>   }
>   
> -static u32 intel_context_get_runtime(const struct intel_context *ce)
> -{
> -	/*
> -	 * We can use either ppHWSP[16] which is recorded before the context
> -	 * switch (and so excludes the cost of context switches) or use the
> -	 * value from the context image itself, which is saved/restored earlier
> -	 * and so includes the cost of the save.
> -	 */
> -	return READ_ONCE(ce->lrc_reg_state[CTX_TIMESTAMP]);
> -}
> -
>   static void st_update_runtime_underflow(struct intel_context *ce, s32 dt)
>   {
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> @@ -4581,6 +4582,7 @@ static void init_common_reg_state(u32 * const regs,
>   	regs[CTX_CONTEXT_CONTROL] = ctl;
>   
>   	regs[CTX_RING_CTL] = RING_CTL_SIZE(ring->size) | RING_VALID;
> +	regs[CTX_TIMESTAMP] = 0;
>   }
>   
>   static void init_wa_bb_reg_state(u32 * const regs,
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
