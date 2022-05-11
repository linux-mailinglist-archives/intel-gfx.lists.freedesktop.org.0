Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D4752373D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 17:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E50710FB5D;
	Wed, 11 May 2022 15:26:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5D3510FB5D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 15:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652282811; x=1683818811;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Sq3zvmXWaSZLLQJM8Mq/EHgniSKw/0HMZL9QX5xMJtE=;
 b=Fi+2uS1tJhfP4AJ38W9Fv1Uul9hPljBSjkI0AbhGobuupzCjxg3PNYkb
 X0db7p+04Zt91Qq7g29RW7T+DS36WUUS9iSte4b9bvtWtupZUkE74iy46
 ycVMA7gvzgMh9yZPb5k1V7x2yBgvVZoSyQQs8t9YstQO9wNBewrxOCotv
 B4sA/0Tc7Bgk8xqZUFnFyzPdhB3Nz+3B+orKRyfiKoYTP/HIfMWi7OYV2
 kKww0E0SlFQRApXvfFeCC0fMPWyGIrYyG5i7FaTyWAj6lpUMUJX0NOKop
 NPaz6Bufh/yEzeNkg/JDs2y1ptbrxbXPHsOCF1MjSNty5yiy4cO9xP/Zs Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="269665602"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="269665602"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:26:50 -0700
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="520562076"
Received: from mmlucey-mobl1.ger.corp.intel.com (HELO [10.213.195.130])
 ([10.213.195.130])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:26:48 -0700
Message-ID: <f237df37-ab14-b49a-c731-4319b7b600a7@linux.intel.com>
Date: Wed, 11 May 2022 16:26:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220510221439.448756-1-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220510221439.448756-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/reset: Add additional steps for
 Wa_22011802037 for execlist backend
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/05/2022 23:14, Nerlige Ramappa, Umesh wrote:
> From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> 
> For execlists backend, current implementation of Wa_22011802037 is to
> stop the CS before doing a reset of the engine. This WA was further
> extended to wait for any pending MI FORCE WAKEUPs before issuing a
> reset. Add the extended steps in the execlist path of reset.
> 
> In addition, extend the WA to gen11.
> 
> v2: (Tvrtko)
> - Clarify comments, commit message, fix typos
> - Use IS_GRAPHICS_VER for gen 11/12 checks
> 
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Fixes: f6aa0d713c88 ("drm/i915: Add Wa_22011802037 force cs halt")
> ---
>   drivers/gpu/drm/i915/gt/intel_engine.h        |  2 +
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 85 ++++++++++++++++++-
>   .../drm/i915/gt/intel_execlists_submission.c  |  7 ++
>   .../gpu/drm/i915/gt/intel_ring_submission.c   |  7 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 81 ++----------------
>   6 files changed, 107 insertions(+), 79 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 1431f1e9dbee..04e435bce79b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -201,6 +201,8 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine);
>   int intel_engine_stop_cs(struct intel_engine_cs *engine);
>   void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine);
>   
> +void intel_engine_wait_for_pending_mi_fw(struct intel_engine_cs *engine);
> +
>   void intel_engine_set_hwsp_writemask(struct intel_engine_cs *engine, u32 mask);
>   
>   u64 intel_engine_get_active_head(const struct intel_engine_cs *engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 14c6ddbbfde8..9943cf9655b2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1282,10 +1282,10 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
>   	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
>   
>   	/*
> -	 * Wa_22011802037 : gen12, Prior to doing a reset, ensure CS is
> +	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS is
>   	 * stopped, set ring stop bit and prefetch disable bit to halt CS
>   	 */
> -	if (GRAPHICS_VER(engine->i915) == 12)
> +	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
>   		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
>   				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
>   
> @@ -1308,6 +1308,18 @@ int intel_engine_stop_cs(struct intel_engine_cs *engine)
>   		return -ENODEV;
>   
>   	ENGINE_TRACE(engine, "\n");
> +	/*
> +	 * TODO: Find out why occasionally stopping the CS times out. Seen
> +	 * especially with gem_eio tests.
> +	 *
> +	 * Occasionally trying to stop the cs times out, but does not adversely
> +	 * affect functionality. The timeout is set as a config parameter that
> +	 * defaults to 100ms. In most cases the follow up operation is to wait
> +	 * for pending MI_FORCE_WAKES. The assumption is that this timeout is
> +	 * sufficient for any pending MI_FORCEWAKEs to complete. Once root
> +	 * caused, the caller must check and handle the return from this
> +	 * function.
> +	 */
>   	if (__intel_engine_stop_cs(engine, 1000, stop_timeout(engine))) {
>   		ENGINE_TRACE(engine,
>   			     "timed out on STOP_RING -> IDLE; HEAD:%04x, TAIL:%04x\n",
> @@ -1334,6 +1346,75 @@ void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine)
>   	ENGINE_WRITE_FW(engine, RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
>   }
>   
> +static u32 __cs_pending_mi_force_wakes(struct intel_engine_cs *engine)
> +{
> +	static const i915_reg_t _reg[I915_NUM_ENGINES] = {
> +		[RCS0] = MSG_IDLE_CS,
> +		[BCS0] = MSG_IDLE_BCS,
> +		[VCS0] = MSG_IDLE_VCS0,
> +		[VCS1] = MSG_IDLE_VCS1,
> +		[VCS2] = MSG_IDLE_VCS2,
> +		[VCS3] = MSG_IDLE_VCS3,
> +		[VCS4] = MSG_IDLE_VCS4,
> +		[VCS5] = MSG_IDLE_VCS5,
> +		[VCS6] = MSG_IDLE_VCS6,
> +		[VCS7] = MSG_IDLE_VCS7,
> +		[VECS0] = MSG_IDLE_VECS0,
> +		[VECS1] = MSG_IDLE_VECS1,
> +		[VECS2] = MSG_IDLE_VECS2,
> +		[VECS3] = MSG_IDLE_VECS3,
> +		[CCS0] = MSG_IDLE_CS,
> +		[CCS1] = MSG_IDLE_CS,
> +		[CCS2] = MSG_IDLE_CS,
> +		[CCS3] = MSG_IDLE_CS,
> +	};
> +	u32 val;
> +
> +	if (!_reg[engine->id].reg)
> +		return 0;

Should this actually be a GEM_WARN_ON condition, to catch failures to 
update for new platforms?

> +
> +	val = intel_uncore_read(engine->uncore, _reg[engine->id]);
> +
> +	/* bits[29:25] & bits[13:9] >> shift */
> +	return (val & (val >> 16) & MSG_IDLE_FW_MASK) >> MSG_IDLE_FW_SHIFT;
> +}
> +
> +static void __gpm_wait_for_fw_complete(struct intel_gt *gt, u32 fw_mask)
> +{
> +	int ret;
> +
> +	/* Ensure GPM receives fw up/down after CS is stopped */
> +	udelay(1);
> +
> +	/* Wait for forcewake request to complete in GPM */
> +	ret =  __intel_wait_for_register_fw(gt->uncore,
> +					    GEN9_PWRGT_DOMAIN_STATUS,
> +					    fw_mask, fw_mask, 5000, 0, NULL);

No fast-slow split as discussed but okay, it's not making anything worse 
that it already is.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> +
> +	/* Ensure CS receives fw ack from GPM */
> +	udelay(1);
> +
> +	if (ret)
> +		GT_TRACE(gt, "Failed to complete pending forcewake %d\n", ret);
> +}
> +
> +/*
> + * Wa_22011802037:gen12: In addition to stopping the cs, we need to wait for any
> + * pending MI_FORCE_WAKEUP requests that the CS has initiated to complete. The
> + * pending status is indicated by bits[13:9] (masked by bits[29:25]) in the
> + * MSG_IDLE register. There's one MSG_IDLE register per reset domain. Since we
> + * are concerned only with the gt reset here, we use a logical OR of pending
> + * forcewakeups from all reset domains and then wait for them to complete by
> + * querying PWRGT_DOMAIN_STATUS.
> + */
> +void intel_engine_wait_for_pending_mi_fw(struct intel_engine_cs *engine)
> +{
> +	u32 fw_pending = __cs_pending_mi_force_wakes(engine);
> +
> +	if (fw_pending)
> +		__gpm_wait_for_fw_complete(engine->gt, fw_pending);
> +}
> +
>   static u32
>   read_subslice_reg(const struct intel_engine_cs *engine,
>   		  int slice, int subslice, i915_reg_t reg)
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 86f7a9ac1c39..2caa1af77064 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2958,6 +2958,13 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
>   	ring_set_paused(engine, 1);
>   	intel_engine_stop_cs(engine);
>   
> +	/*
> +	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> +	 * to wait for any pending mi force wakeups
> +	 */
> +	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> +		intel_engine_wait_for_pending_mi_fw(engine);
> +
>   	engine->execlists.reset_ccid = active_ccid(engine);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 5423bfd301ad..a7808eff33c5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -323,6 +323,13 @@ static void reset_prepare(struct intel_engine_cs *engine)
>   	ENGINE_TRACE(engine, "\n");
>   	intel_engine_stop_cs(engine);
>   
> +	/*
> +	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> +	 * to wait for any pending mi force wakeups
> +	 */
> +	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> +		intel_engine_wait_for_pending_mi_fw(engine);
> +
>   	if (!stop_ring(engine)) {
>   		/* G45 ring initialization often fails to reset head to zero */
>   		ENGINE_TRACE(engine,
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 2c4ad4a65089..8c6885f43d1a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -310,8 +310,8 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   	if (IS_DG2(gt->i915))
>   		flags |= GUC_WA_DUAL_QUEUE;
>   
> -	/* Wa_22011802037: graphics version 12 */
> -	if (GRAPHICS_VER(gt->i915) == 12)
> +	/* Wa_22011802037: graphics version 11/12 */
> +	if (IS_GRAPHICS_VER(gt->i915, 11, 12))
>   		flags |= GUC_WA_PRE_PARSER;
>   
>   	/* Wa_16011777198:dg2 */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 75291e9846c5..9b21c7345ffd 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1527,87 +1527,18 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
>   	lrc_update_regs(ce, engine, head);
>   }
>   
> -static u32 __cs_pending_mi_force_wakes(struct intel_engine_cs *engine)
> -{
> -	static const i915_reg_t _reg[I915_NUM_ENGINES] = {
> -		[RCS0] = MSG_IDLE_CS,
> -		[BCS0] = MSG_IDLE_BCS,
> -		[VCS0] = MSG_IDLE_VCS0,
> -		[VCS1] = MSG_IDLE_VCS1,
> -		[VCS2] = MSG_IDLE_VCS2,
> -		[VCS3] = MSG_IDLE_VCS3,
> -		[VCS4] = MSG_IDLE_VCS4,
> -		[VCS5] = MSG_IDLE_VCS5,
> -		[VCS6] = MSG_IDLE_VCS6,
> -		[VCS7] = MSG_IDLE_VCS7,
> -		[VECS0] = MSG_IDLE_VECS0,
> -		[VECS1] = MSG_IDLE_VECS1,
> -		[VECS2] = MSG_IDLE_VECS2,
> -		[VECS3] = MSG_IDLE_VECS3,
> -		[CCS0] = MSG_IDLE_CS,
> -		[CCS1] = MSG_IDLE_CS,
> -		[CCS2] = MSG_IDLE_CS,
> -		[CCS3] = MSG_IDLE_CS,
> -	};
> -	u32 val;
> -
> -	if (!_reg[engine->id].reg)
> -		return 0;
> -
> -	val = intel_uncore_read(engine->uncore, _reg[engine->id]);
> -
> -	/* bits[29:25] & bits[13:9] >> shift */
> -	return (val & (val >> 16) & MSG_IDLE_FW_MASK) >> MSG_IDLE_FW_SHIFT;
> -}
> -
> -static void __gpm_wait_for_fw_complete(struct intel_gt *gt, u32 fw_mask)
> -{
> -	int ret;
> -
> -	/* Ensure GPM receives fw up/down after CS is stopped */
> -	udelay(1);
> -
> -	/* Wait for forcewake request to complete in GPM */
> -	ret =  __intel_wait_for_register_fw(gt->uncore,
> -					    GEN9_PWRGT_DOMAIN_STATUS,
> -					    fw_mask, fw_mask, 5000, 0, NULL);
> -
> -	/* Ensure CS receives fw ack from GPM */
> -	udelay(1);
> -
> -	if (ret)
> -		GT_TRACE(gt, "Failed to complete pending forcewake %d\n", ret);
> -}
> -
> -/*
> - * Wa_22011802037:gen12: In addition to stopping the cs, we need to wait for any
> - * pending MI_FORCE_WAKEUP requests that the CS has initiated to complete. The
> - * pending status is indicated by bits[13:9] (masked by bits[ 29:25]) in the
> - * MSG_IDLE register. There's one MSG_IDLE register per reset domain. Since we
> - * are concerned only with the gt reset here, we use a logical OR of pending
> - * forcewakeups from all reset domains and then wait for them to complete by
> - * querying PWRGT_DOMAIN_STATUS.
> - */
>   static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
>   {
> -	u32 fw_pending;
> -
> -	if (GRAPHICS_VER(engine->i915) != 12)
> +	if (!IS_GRAPHICS_VER(engine->i915, 11, 12))
>   		return;
>   
> -	/*
> -	 * Wa_22011802037
> -	 * TODO: Occasionally trying to stop the cs times out, but does not
> -	 * adversely affect functionality. The timeout is set as a config
> -	 * parameter that defaults to 100ms. Assuming that this timeout is
> -	 * sufficient for any pending MI_FORCEWAKEs to complete, ignore the
> -	 * timeout returned here until it is root caused.
> -	 */
>   	intel_engine_stop_cs(engine);
>   
> -	fw_pending = __cs_pending_mi_force_wakes(engine);
> -	if (fw_pending)
> -		__gpm_wait_for_fw_complete(engine->gt, fw_pending);
> +	/*
> +	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> +	 * to wait for any pending mi force wakeups
> +	 */
> +	intel_engine_wait_for_pending_mi_fw(engine);
>   }
>   
>   static void guc_reset_nop(struct intel_engine_cs *engine)
