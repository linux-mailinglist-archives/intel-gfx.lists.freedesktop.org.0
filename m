Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8310175773C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 10:59:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4051B10E076;
	Tue, 18 Jul 2023 08:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C94510E076
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 08:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689670766; x=1721206766;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=f9UlYEMei0zj8XzFhy6CSx0n8LthZst3Q2gKx5k/aNw=;
 b=MO140z+ccfQyD/KXR2vPEdlNVgFe89Afqqa8Om0NXP9KerZ9xdJn3G9f
 Wm3jweat04/FCtW5sFwZOfaOMgQmZLDXr9vcUjbPJN+9BP2nrZ0KXkO9O
 FrBLgQiQZqp5NdLCYWUJAHWFm13TGQt3uLyq9faDqL75WmhDcuqrRUVoV
 tG7WaYsGg0WE2McgMRwqU2fp7wra5IbkroPD60mRHZFvf91JLQlE2xm4X
 r1QydpZMgWy3qmJpnxKP7oozX/0TXwD+F4ujBnLE7gOX1VQVipmtNw7mh
 Y24ODL80efeHiPtzIIp2MkwlyiGDJeDFJQw9cTJbT7hJo7yTBRp+aHifa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="366194675"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="366194675"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:59:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="700824637"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="700824637"
Received: from maloneyj-mobl.ger.corp.intel.com (HELO [10.213.207.99])
 ([10.213.207.99])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:59:16 -0700
Message-ID: <d3acabea-ac90-dc6b-f046-ee2f2ff2aeed@linux.intel.com>
Date: Tue, 18 Jul 2023 09:59:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
 <20230718081115.166212-16-dnyaneshwar.bhadane@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230718081115.166212-16-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [v4 15/15] drm/i915/mtl: s/MTL/METEORLAKE for
 platform/subplatform defines
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/07/2023 09:11, Dnyaneshwar Bhadane wrote:
> Follow consistent naming convention. Replace MTL with
> METEORLAKE. Added defines that are replacing IS_MTL_GRAPHICS_STEP with
> IS_METEORLAKE_P_GRAPHICS_STEP and IS_METEORLAKE_M_GRAPHICS_STEP.
> Also replaced IS_METEORLAKE_MEDIA_STEP instead of IS_MTL_MEDIA_STEP and
> IS_METEORLAKE_DISPLAY_STEP instead of IS_MTL_DISPLAY_STEP.
> 
> v2:
> - Replace IS_MTL_GRAPHICS_STEP with IS_METEROLAKE_(P/M)_GRAPHICS_STEP (Tvrtko).
> - Changed subject prefix mtl instead of MTL (Anusha)
> 
> v3:
> - Updated the commit message. (Anusha)
> 
> v4:
> - Unrolled wrapper IS_MTL_GRAPHICS_STEP(P/M) and Replace
> with (IS_METEORLAKE_M || IS_METEORLAKE_P) && IS_GRAPHICS_STEP(Steping) (Jani/Tvrtko).
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>   drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
>   drivers/gpu/drm/i915/display/intel_psr.c      | 11 +++--
>   .../drm/i915/display/skl_universal_plane.c    |  4 +-
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  8 ++--
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  3 +-
>   .../drm/i915/gt/intel_execlists_submission.c  |  3 +-
>   drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
>   drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
>   drivers/gpu/drm/i915/gt/intel_rc6.c           |  3 +-
>   drivers/gpu/drm/i915/gt/intel_workarounds.c   | 47 ++++++++++---------
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  7 ++-
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  6 ++-
>   drivers/gpu/drm/i915/i915_drv.h               | 15 ++++--
>   drivers/gpu/drm/i915/i915_perf.c              |  6 ++-
>   15 files changed, 73 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 7f8b2d7713c7..6b3ea8f7263a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1093,7 +1093,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>   
>   	/* Wa_14016291713 */
>   	if ((IS_DISPLAY_VER(i915, 12, 13) ||
> -	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> +	     (IS_METEORLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_C0))) &&
>   	    crtc_state->has_psr) {
>   		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
>   		return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> index f7608d363634..c68d9c68b39f 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
>   				     &pmdemand_state->base,
>   				     &intel_pmdemand_funcs);
>   
> -	if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
> +	if ((IS_METEORLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_C0)))
>   		/* Wa_14016740474 */
>   		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index bf80029c8a5d..a3f32b95de58 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1247,7 +1247,7 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
>   	bool set_wa_bit = false;
>   
>   	/* Wa_14015648006 */
> -	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +	if ((IS_METEORLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) ||
>   	    IS_DISPLAY_VER(dev_priv, 11, 13))
>   		set_wa_bit |= crtc_state->wm_level_disabled;
>   
> @@ -1320,7 +1320,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>   		 * All supported adlp panels have 1-based X granularity, this may
>   		 * cause issues if non-supported panels are used.
>   		 */
> -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +		if ((IS_METEORLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)))
>   			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
>   				     ADLP_1_BASED_X_GRANULARITY);
>   		else if (IS_ALDERLAKE_P(dev_priv))
> @@ -1328,7 +1328,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>   				     ADLP_1_BASED_X_GRANULARITY);
>   
>   		/* Wa_16012604467:adlp,mtl[a0,b0] */
> -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +		if ((IS_METEORLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)))
>   			intel_de_rmw(dev_priv,
>   				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
>   				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
> @@ -1489,7 +1489,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>   
>   	if (intel_dp->psr.psr2_enabled) {
>   		/* Wa_16012604467:adlp,mtl[a0,b0] */
> -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +		if ((IS_METEORLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)))
>   			intel_de_rmw(dev_priv,
>   				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
>   				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
> @@ -1963,7 +1963,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   		goto skip_sel_fetch_set_loop;
>   
>   	/* Wa_14014971492 */
> -	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +	if (((IS_METEORLAKE(dev_priv) &&
> +		 IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) ||
>   	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
>   	    crtc_state->splitter.enable)
>   		pipe_clip.y1 = 0;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index ffc15d278a39..747270b5c8cc 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2169,8 +2169,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
>   				 enum pipe pipe, enum plane_id plane_id)
>   {
>   	/* Wa_14017240301 */
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if ((IS_METEORLAKE_M(i915) || IS_METEORLAKE_P(i915)) &&
> +		IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>   		return false;
>   
>   	/* Wa_22011186057 */
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 971cddb6d760..74e41892f55e 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
>   static int mtl_dummy_pipe_control(struct i915_request *rq)
>   {
>   	/* Wa_14016712196 */
> -	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> +	if ((IS_METEORLAKE_M(rq->engine->i915) || IS_METEORLAKE_P(rq->engine->i915)) &&
> +		IS_GRAPHICS_STEP(rq->engine->i915, STEP_A0, STEP_B0)) {
>   		u32 *cs;
>   
>   		/* dummy PIPE_CONTROL + depth flush */
> @@ -765,8 +765,8 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>   		     PIPE_CONTROL_FLUSH_ENABLE);
>   
>   	/* Wa_14016712196 */
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if ((IS_METEORLAKE_M(i915) || IS_METEORLAKE_P(i915)) &&
> +		IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>   		/* dummy PIPE_CONTROL + depth flush */
>   		cs = gen12_emit_pipe_control(cs, 0,
>   					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 0aff5bb13c53..fbdeb2e33385 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1616,7 +1616,8 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
>   	 * Wa_22011802037: Prior to doing a reset, ensure CS is
>   	 * stopped, set ring stop bit and prefetch disable bit to halt CS
>   	 */
> -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	if ((IS_METEORLAKE_M(engine->i915) &&
> +		IS_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0)) ||
>   	    (GRAPHICS_VER(engine->i915) >= 11 &&
>   	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>   		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 2ebd937f3b4c..9775a3696668 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -3001,7 +3001,8 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
>   	 * Wa_22011802037: In addition to stopping the cs, we need
>   	 * to wait for any pending mi force wakeups
>   	 */
> -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	if ((IS_METEORLAKE_M(engine->i915) &&
> +		IS_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0)) ||
>   	    (GRAPHICS_VER(engine->i915) >= 11 &&
>   	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>   		intel_engine_wait_for_pending_mi_fw(engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index 0b414eae1683..8b3cd9fbb35c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -166,8 +166,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
>   		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
>   	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
>   		/* Wa_14016747170 */
> -		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +		if (((IS_METEORLAKE_M(i915) && IS_METEORLAKE_P(i915)) &&
> +			IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)))
>   			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
>   					     intel_uncore_read(gt->uncore,
>   							       MTL_GT_ACTIVITY_FACTOR));
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index a4ec20aaafe2..c33d8b51d0a3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1370,8 +1370,8 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>   					      cs, GEN12_GFX_CCS_AUX_NV);
>   
>   	/* Wa_16014892111 */
> -	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
> +	if (((IS_METEORLAKE_M(ce->engine->i915) || IS_METEORLAKE_P(ce->engine->i915)) &&
> +		IS_GRAPHICS_STEP(ce->engine->i915, STEP_A0, STEP_B0)) ||
>   	    IS_DG2(ce->engine->i915))
>   		cs = dg2_emit_draw_watermark_setting(cs);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 58bb1c55294c..f9208eff70f3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -526,7 +526,8 @@ static bool rc6_supported(struct intel_rc6 *rc6)
>   		return false;
>   	}
>   
> -	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
> +	if ((IS_METEORLAKE(gt->i915) &&
> +		IS_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0)) &&
>   	    gt->type == GT_MEDIA) {
>   		drm_notice(&i915->drm,
>   			   "Media RC6 disabled on A step\n");
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 29e76604dcd0..07d137906f28 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -819,8 +819,8 @@ static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>   
>   	dg2_ctx_gt_tuning_init(engine, wal);
>   
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> +	if ((IS_METEORLAKE_P(i915) || IS_METEORLAKE_P(i915)) &&
> +		IS_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER))
>   		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
>   }
>   
> @@ -831,8 +831,8 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
>   
>   	mtl_ctx_gt_tuning_init(engine, wal);
>   
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> +	if ((IS_METEORLAKE_M(i915) || IS_METEORLAKE_P(i915)) &&
> +		IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
>   		/* Wa_14014947963 */
>   		wa_masked_field_set(wal, VF_PREEMPTION,
>   				    PREEMPTION_VERTEX_COUNT, 0x4000);
> @@ -1717,8 +1717,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   	/* Wa_22016670082 */
>   	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
>   
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> +	if ((IS_METEORLAKE_M(gt->i915) || IS_METEORLAKE_P(gt->i915)) &&
> +		IS_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0)) {
>   		/* Wa_14014830051 */
>   		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>   
> @@ -2414,15 +2414,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   {
>   	struct drm_i915_private *i915 = engine->i915;
>   
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> +	if ((IS_METEORLAKE_M(i915) || IS_METEORLAKE_P(i915)) &&
> +		IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
>   		/* Wa_22014600077 */
>   		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>   				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
>   	}
>   
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	if (((IS_METEORLAKE_M(i915) || IS_METEORLAKE_P(i915)) &&
> +		IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) ||
>   	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>   	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>   		/* Wa_1509727124 */
> @@ -2432,7 +2432,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   
>   	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>   	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> +		(IS_METEORLAKE_M(i915) && IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))){
>   		/* Wa_22012856258 */
>   		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
>   				 GEN12_DISABLE_READ_SUPPRESSION);
> @@ -3017,13 +3017,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>   				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
>   	}
>   
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> +	if ((IS_METEORLAKE_M(i915) || IS_METEORLAKE_P(i915)) &&
> +		IS_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER))
>   		/* Wa_14017856879 */
>   		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
>   
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if ((IS_METEORLAKE_M(i915) || IS_METEORLAKE_P(i915)) &&
> +		IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>   		/*
>   		 * Wa_14017066071
>   		 * Wa_14017654203
> @@ -3031,13 +3031,14 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>   		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>   				 MTL_DISABLE_SAMPLER_SC_OOO);
>   
> -	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if (IS_METEORLAKE_P(i915) &&
> +		IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>   		/* Wa_22015279794 */
>   		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>   				 DISABLE_PREFETCH_INTO_IC);
>   
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	if (((IS_METEORLAKE_M(i915) || IS_METEORLAKE_P(i915)) &&
> +		IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) ||
>   	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>   	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>   		/* Wa_22013037850 */
> @@ -3045,17 +3046,17 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>   				DISABLE_128B_EVICTION_COMMAND_UDW);
>   	}
>   
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	if (((IS_METEORLAKE_M(i915) || IS_METEORLAKE_P(i915)) &&
> +		IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) ||

Please check if compiler can now fold M || P into one. If it can I will 
be less unhappy, but would still head scratch a lot why not just fold 
into a single IS_METEORLAKE in the source.

>   	    IS_PONTEVECCHIO(i915) ||
>   	    IS_DG2(i915)) {
>   		/* Wa_22014226127 */
>   		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
>   	}
>   
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> -	    IS_DG2(i915)) {
> +	if (((IS_METEORLAKE_M(i915) || IS_METEORLAKE_P(i915)) &&
> +		IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) ||
> +		IS_DG2(i915)) {
>   		/* Wa_18017747507 */
>   		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
>   	}
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 2eb891b270ae..96fd854a0374 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -277,7 +277,8 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   		flags |= GUC_WA_GAM_CREDITS;
>   
>   	/* Wa_14014475959 */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	if ((IS_METEORLAKE_M(gt->i915) &&
> +		IS_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0)) ||
>   	    IS_DG2(gt->i915))
>   		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
>   
> @@ -292,7 +293,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   		flags |= GUC_WA_DUAL_QUEUE;
>   
>   	/* Wa_22011802037: graphics version 11/12 */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	
> +	if ((IS_METEORLAKE_M(gt->i915) &&
> +		IS_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0)) ||
>   	    (GRAPHICS_VER(gt->i915) >= 11 &&
>   	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
>   		flags |= GUC_WA_PRE_PARSER;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index a0e3ef1c65d2..4ab4ef535315 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1658,7 +1658,8 @@ static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
>   	 * Wa_22011802037: In addition to stopping the cs, we need
>   	 * to wait for any pending mi force wakeups
>   	 */
> -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	if ((IS_METEORLAKE_M(engine->i915) &&
> +		IS_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0)) ||
>   	    (GRAPHICS_VER(engine->i915) >= 11 &&
>   	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
>   		intel_engine_stop_cs(engine);
> @@ -4267,7 +4268,8 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
>   
>   	/* Wa_14014475959:dg2 */
>   	if (engine->class == COMPUTE_CLASS)
> -		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +		if ((IS_METEORLAKE_M(engine->i915) &&
> +			IS_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0)) ||
>   		    IS_DG2(engine->i915))
>   			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
>   
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index e15471bbad5a..dbcb21601121 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -683,15 +683,24 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
>   	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
>   
> -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> +#define IS_METEORLAKE_GRAPHICS_STEP(__i915, variant, since, until) \

Unused?

>   	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
>   	 IS_GRAPHICS_STEP(__i915, since, until))
>   
> -#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> +#define IS_METEORLAKE_P_GRAPHICS_STEP(__i915, since, until) \

Ditto.

> +	(IS_METEORLAKE_P(__i915) && \
> +	 IS_GRAPHICS_STEP(__i915, since, until))
> +
> +#define IS_METEORLAKE_M_GRAPHICS_STEP(__i915, since, until) \

Same.

> +	(IS_METEORLAKE_M(__i915) && \
> +	 IS_GRAPHICS_STEP(__i915, since, until))
> +
> +
> +#define IS_METEORLAKE_DISPLAY_STEP(__i915, since, until) \

More.

>   	(IS_METEORLAKE(__i915) && \
>   	 IS_DISPLAY_STEP(__i915, since, until))
>   
> -#define IS_MTL_MEDIA_STEP(__i915, since, until) \
> +#define IS_METEORLAKE_MEDIA_STEP(__i915, since, until) \

Last one. :)

So idea was to not need these spelled out helpers since but 
IS_METEORLAKE() && IS_GRAPHICS_STEP() etc.

Please check in this patch and elsewhere in the series that all such 
unused macros are removed.

Regards,

Tvrtko

>   	(IS_METEORLAKE(__i915) && \
>   	 IS_MEDIA_STEP(__i915, since, until))
>   
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 0a111b281578..2be34d7ba44d 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -4214,7 +4214,9 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where OAM
>   	 * does not work as expected.
>   	 */
> -	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
> +	
> +	if ((IS_METEORLAKE(props->engine->i915) &&
> +		IS_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0)) &&
>   	    props->engine->oa_group->type == TYPE_OAM &&
>   	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
>   		drm_dbg(&perf->i915->drm,
> @@ -5322,7 +5324,7 @@ int i915_perf_ioctl_version(struct drm_i915_private *i915)
>   	 * C6 disable in BIOS. If Media C6 is enabled in BIOS, return version 6
>   	 * to indicate that OA media is not supported.
>   	 */
> -	if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
> +	if ((IS_METEORLAKE(i915) && IS_MEDIA_STEP(i915, STEP_A0, STEP_C0))) {
>   		struct intel_gt *gt;
>   		int i;
>   
