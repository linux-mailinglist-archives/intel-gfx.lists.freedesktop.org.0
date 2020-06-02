Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A3E1EB7EE
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 11:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E8389916;
	Tue,  2 Jun 2020 09:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C68389916
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 09:08:12 +0000 (UTC)
IronPort-SDR: hviBoI87/ylhv34ncvMUfmYJCF87UkFWG7LMKJC46WBjmNhacbZ0PGfeNR8ffre11fK/GfR8SY
 hHSuZMbpenYA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 02:08:11 -0700
IronPort-SDR: u8+P14YRNMVcg3hEHrtEvPnK7lP4HO3pmnIo236ZBreo41tL0akoWyLAChl0Ut0Y0Ttj7aEIGM
 llh/J5+YzR9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,463,1583222400"; d="scan'208";a="268636571"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 02 Jun 2020 02:08:10 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 97BD15C2C64; Tue,  2 Jun 2020 12:05:42 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200601072446.19548-3-chris@chris-wilson.co.uk>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
 <20200601072446.19548-3-chris@chris-wilson.co.uk>
Date: Tue, 02 Jun 2020 12:05:42 +0300
Message-ID: <874krtj0rd.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/36] drm/i915/gt: Move legacy context wa
 to intel_workarounds
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

> Use the central mechanism for recording and verifying that we restore
> the w/a for the older devices as well.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  .../gpu/drm/i915/gt/intel_ring_submission.c   | 28 -----------------
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 31 +++++++++++++++++++
>  2 files changed, 31 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 96881cd8b17b..d9c1701061b9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -429,32 +429,6 @@ static void reset_finish(struct intel_engine_cs *engine)
>  {
>  }
>  
> -static int rcs_resume(struct intel_engine_cs *engine)
> -{
> -	struct drm_i915_private *i915 = engine->i915;
> -	struct intel_uncore *uncore = engine->uncore;
> -
> -	/*
> -	 * Disable CONSTANT_BUFFER before it is loaded from the context
> -	 * image. For as it is loaded, it is executed and the stored
> -	 * address may no longer be valid, leading to a GPU hang.
> -	 *
> -	 * This imposes the requirement that userspace reload their
> -	 * CONSTANT_BUFFER on every batch, fortunately a requirement
> -	 * they are already accustomed to from before contexts were
> -	 * enabled.
> -	 */
> -	if (IS_GEN(i915, 4))
> -		intel_uncore_write(uncore, ECOSKPD,
> -			   _MASKED_BIT_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE));
> -
> -	if (IS_GEN_RANGE(i915, 6, 7))
> -		intel_uncore_write(uncore, INSTPM,
> -				   _MASKED_BIT_ENABLE(INSTPM_FORCE_ORDERING));
> -
> -	return xcs_resume(engine);
> -}
> -
>  static void reset_cancel(struct intel_engine_cs *engine)
>  {
>  	struct i915_request *request;
> @@ -1139,8 +1113,6 @@ static void setup_rcs(struct intel_engine_cs *engine)
>  
>  	if (IS_HASWELL(i915))
>  		engine->emit_bb_start = hsw_emit_bb_start;
> -
> -	engine->resume = rcs_resume;
>  }
>  
>  static void setup_vcs(struct intel_engine_cs *engine)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index fa1e15657663..94d66a9d760d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -199,6 +199,18 @@ wa_masked_dis(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
>  #define WA_SET_FIELD_MASKED(addr, mask, value) \
>  	wa_write_masked_or(wal, (addr), 0, _MASKED_FIELD((mask), (value)))
>  
> +static void gen6_ctx_workarounds_init(struct intel_engine_cs *engine,
> +				      struct i915_wa_list *wal)
> +{
> +	WA_SET_BIT_MASKED(INSTPM, INSTPM_FORCE_ORDERING);
> +}
> +
> +static void gen7_ctx_workarounds_init(struct intel_engine_cs *engine,
> +				      struct i915_wa_list *wal)
> +{
> +	WA_SET_BIT_MASKED(INSTPM, INSTPM_FORCE_ORDERING);
> +}
> +
>  static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
>  				      struct i915_wa_list *wal)
>  {
> @@ -638,6 +650,10 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>  		chv_ctx_workarounds_init(engine, wal);
>  	else if (IS_BROADWELL(i915))
>  		bdw_ctx_workarounds_init(engine, wal);
> +	else if (IS_GEN(i915, 7))
> +		gen7_ctx_workarounds_init(engine, wal);
> +	else if (IS_GEN(i915, 6))
> +		gen6_ctx_workarounds_init(engine, wal);
>  	else if (INTEL_GEN(i915) < 8)
>  		return;
>  	else
> @@ -1583,6 +1599,21 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		       0, _MASKED_BIT_ENABLE(VS_TIMER_DISPATCH),
>  		       /* XXX bit doesn't stick on Broadwater */
>  		       IS_I965G(i915) ? 0 : VS_TIMER_DISPATCH);
> +
> +	if (IS_GEN(i915, 4))
> +		/*
> +		 * Disable CONSTANT_BUFFER before it is loaded from the context
> +		 * image. For as it is loaded, it is executed and the stored
> +		 * address may no longer be valid, leading to a GPU hang.
> +		 *
> +		 * This imposes the requirement that userspace reload their
> +		 * CONSTANT_BUFFER on every batch, fortunately a requirement
> +		 * they are already accustomed to from before contexts were
> +		 * enabled.
> +		 */
> +		wa_add(wal, ECOSKPD,
> +		       0, _MASKED_BIT_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE),
> +		       0 /* XXX bit doesn't stick on Broadwater */);
>  }
>  
>  static void
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
