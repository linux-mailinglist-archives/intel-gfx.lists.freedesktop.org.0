Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D49D8198500
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 21:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D1A26E0DF;
	Mon, 30 Mar 2020 19:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B21026E0DF
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 19:57:42 +0000 (UTC)
IronPort-SDR: MlinFc2xK9JM1CAiCQb5euFAcxbKmAKxmuPCl3FcHa4ji9B7CqcCjoQIR8A4wTDVDObiPQxXtL
 uXtDB6OGa2sQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 12:57:42 -0700
IronPort-SDR: UmuYsEoJHyl00AXNhyDN6FBROB331LAlXZb8IpttUvDTB2hxiosS+0hRxGnT78kIaMXl77Q30S
 kYcJVJUynoLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,325,1580803200"; d="scan'208";a="237455345"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 30 Mar 2020 12:57:40 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C22485C0C01; Mon, 30 Mar 2020 22:56:03 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200330125827.5804-1-chris@chris-wilson.co.uk>
References: <20200330125827.5804-1-chris@chris-wilson.co.uk>
Date: Mon, 30 Mar 2020 22:56:03 +0300
Message-ID: <87tv25pqgc.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Explicitly reset both
 reg and context runtime
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

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 24 +++++++++++++-----------
>  1 file changed, 13 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 9104796673dc..d53078b345be 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -238,6 +238,17 @@ __execlists_update_reg_state(const struct intel_context *ce,
>  			     const struct intel_engine_cs *engine,
>  			     u32 head);
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
>  static void mark_eio(struct i915_request *rq)
>  {
>  	if (i915_request_completed(rq))
> @@ -1154,6 +1165,7 @@ static void restore_default_state(struct intel_context *ce,
>  		       engine->context_size - PAGE_SIZE);
>  
>  	execlists_init_reg_state(regs, ce, engine, ce->ring, false);
> +	ce->runtime.last = intel_context_get_runtime(ce);
>  }
>  
>  static void reset_active(struct i915_request *rq,
> @@ -1195,17 +1207,6 @@ static void reset_active(struct i915_request *rq,
>  	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
>  }
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
>  static void st_update_runtime_underflow(struct intel_context *ce, s32 dt)
>  {
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> @@ -4601,6 +4602,7 @@ static void init_common_reg_state(u32 * const regs,
>  	regs[CTX_CONTEXT_CONTROL] = ctl;
>  
>  	regs[CTX_RING_CTL] = RING_CTL_SIZE(ring->size) | RING_VALID;
> +	regs[CTX_TIMESTAMP] = 0;
>  }
>  
>  static void init_wa_bb_reg_state(u32 * const regs,
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
