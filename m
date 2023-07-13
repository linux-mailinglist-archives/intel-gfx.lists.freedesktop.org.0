Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B49A0752089
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 13:56:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D8910E67A;
	Thu, 13 Jul 2023 11:56:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CCA310E67A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 11:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689249394; x=1720785394;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=3gJCs62pjsEaiPkZFxcaHNU/jKtCSMQHAJkITi0D12k=;
 b=bsd0+JlTTWjyz0E7FqLpWpilV9xx0NYIH0XO4nejXtTbVzthst0Ar4Nr
 G02CmKa5TKbYVm1wdDPQGYGNMkqC7kb5WkjcqBTW+O7tsl71NTOWc8AKe
 DClpDQZsCPHor1NJ1cOX6fM/5E7nAUrxKA08dbFmpW4z6LAcdbS+6SjYK
 /b1rLkozyUlli867VvkC4o4A783t4F/iFJGdIWkpPOGbtHMinKBbkg9GI
 yExddQVAQSzhT8mXtd90zh/QkCCdl6LQFnVzCl7K4cK+Z+/lSC9UFk6P6
 ovn3zDvdWVTZgrlNxUFEYiciOhPyDMysS5SalYrRmUbQmMMxSnUfsATXY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="350015423"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="350015423"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 04:56:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="1052587208"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="1052587208"
Received: from apaulaux-mobl.ger.corp.intel.com (HELO [10.213.206.56])
 ([10.213.206.56])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 04:56:23 -0700
Message-ID: <14a0d370-150b-f311-2a66-b8400163dd61@linux.intel.com>
Date: Thu, 13 Jul 2023 12:56:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>
References: <20230616114200.3228284-12-dnyaneshwar.bhadane@intel.com>
 <20230710105815.2056018-1-dnyaneshwar.bhadane@intel.com>
 <IA1PR11MB62660C3B6D48EA16DF2E7AFFE230A@IA1PR11MB6266.namprd11.prod.outlook.com>
 <de17473e-09fa-9346-daf4-96bf12fa580c@linux.intel.com>
 <871qhcgng8.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <871qhcgng8.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [v3] drm/i915/mtl: s/MTL/METEORLAKE for
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/07/2023 10:39, Jani Nikula wrote:
> On Thu, 13 Jul 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>> On 10/07/2023 14:44, Bhadane, Dnyaneshwar wrote:
>>>> -----Original Message-----
>>>> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
>>>> Sent: Monday, July 10, 2023 4:28 PM
>>>> To: intel-gfx@lists.freedesktop.org
>>>> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; jani.nikula@linux.intel.com;
>>>> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
>>>> <dnyaneshwar.bhadane@intel.com>
>>>> Subject: [v3] drm/i915/mtl: s/MTL/METEORLAKE for platform/subplatform
>>>> defines
>>>>
>>>> Follow consistent naming convention. Replace MTL with METEORLAKE. Added
>>>> defines that are replacing IS_MTL_GRAPHICS_STEP with
>>>> IS_METEORLAKE_P_GRAPHICS_STEP and IS_METEORLAKE_M_GRAPHICS_STEP.
>>>> Also replaced IS_METEORLAKE_MEDIA_STEP instead of IS_MTL_MEDIA_STEP
>>>> and IS_METEORLAKE_DISPLAY_STEP instead of IS_MTL_DISPLAY_STEP.
>>>>
>>> Hi Tvrtko,
>>> Could you please give the feedback on this ? or suggestion regarding the approach.
>>
>> It's a step in the right direction I just wish we could do all churning
>> in one go.
>>
>> Have you captured IS_CFL and IS_CML in the series? ICL? HSW? Any other I
>> am missing?
>>
>> What have we concluded on Jani's suggestion to split it all to
>> IS_<platform> && IS_<subsys>?
> 
> IS_<platform> && IS_<step> is what I was after.

Yeah I mistyped. I liked that to so would get my ack.

>> If you have a) captured all IS_<tla> and b) Jani acks the series too, I
>> guess go ahead.
>>
>> Hm.. what have we concluded to do with IS_JASPERLAKE_EHL?
> 
> For sure it can't be *that*. It's JSL *or* EHL. Not subplatform.

IS_ELKHARTLAKE would indeed work and platform/subplatform can be hidden 
implementation detail.

>> P.S.
>> I still think these suck though:
>>
>> 	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>> 	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> 
> I still find it appealing to a) go towards shorter acronyms instead of
> long names, and b) to separate platform and stepping checks because
> they're orthogonal. They're only bundled together for historical
> reasons, and to keep the conditions shorter.
> 
> The above could be:
> 
> 	if (IS_MTL(i915) && IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))

I'd be super pleased with that.

Regards,

Tvrtko

> 
> 
> BR,
> Jani.
> 
> 
>>
>> I am not convinced we get anything (apart more source code and more
>> binary) by having duplicated conditions. I guess I will have to send
>> that cleanup later.
>>
>>>> v2:
>>>> - Replace IS_MTL_GRAPHICS_STEP with
>>>> IS_METEROLAKE_(P/M)_GRAPHICS_STEP (Tvrtko).
>>>> - Changed subject prefix mtl instead of MTL (Anusha)
>>>> v3:
>>>> - Updated the commit message. (Anusha)
>>>>
>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>>> Cc: Anusha Srivatsa <Anusha.Srivatsa@intel.com>
>>>> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>>>>    drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
>>>>    drivers/gpu/drm/i915/display/intel_psr.c      | 10 ++---
>>>>    .../drm/i915/display/skl_universal_plane.c    |  4 +-
>>>>    drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  8 ++--
>>>>    drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
>>>>    .../drm/i915/gt/intel_execlists_submission.c  |  2 +-
>>>>    drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
>>>>    drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
>>>>    drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
>>>>    drivers/gpu/drm/i915/gt/intel_workarounds.c   | 44 +++++++++----------
>>>>    drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
>>>>    .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
>>>>    drivers/gpu/drm/i915/i915_drv.h               | 15 +++++--
>>>>    drivers/gpu/drm/i915/i915_perf.c              |  4 +-
>>>>    15 files changed, 60 insertions(+), 51 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
>>>> b/drivers/gpu/drm/i915/display/intel_fbc.c
>>>> index 7f8b2d7713c7..6358a8b26172 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>>>> @@ -1093,7 +1093,7 @@ static int intel_fbc_check_plane(struct
>>>> intel_atomic_state *state,
>>>>
>>>>    	/* Wa_14016291713 */
>>>>    	if ((IS_DISPLAY_VER(i915, 12, 13) ||
>>>> -	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
>>>> +	     IS_METEORLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
>>>>    	    crtc_state->has_psr) {
>>>>    		plane_state->no_fbc_reason = "PSR1 enabled
>>>> (Wa_14016291713)";
>>>>    		return 0;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>>>> b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>>>> index f7608d363634..8c3158b188ef 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>>>> @@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
>>>>    				     &pmdemand_state->base,
>>>>    				     &intel_pmdemand_funcs);
>>>>
>>>> -	if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>>>> +	if (IS_METEORLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>>>>    		/* Wa_14016740474 */
>>>>    		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0,
>>>> DMD_RSP_TIMEOUT_DISABLE);
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>>>> b/drivers/gpu/drm/i915/display/intel_psr.c
>>>> index 62151abe4748..ecd4e36119b2 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>>> @@ -1247,7 +1247,7 @@ static void wm_optimization_wa(struct intel_dp
>>>> *intel_dp,
>>>>    	bool set_wa_bit = false;
>>>>
>>>>    	/* Wa_14015648006 */
>>>> -	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>>>> +	if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>>>>    	    IS_DISPLAY_VER(dev_priv, 11, 13))
>>>>    		set_wa_bit |= crtc_state->wm_level_disabled;
>>>>
>>>> @@ -1320,7 +1320,7 @@ static void intel_psr_enable_source(struct intel_dp
>>>> *intel_dp,
>>>>    		 * All supported adlp panels have 1-based X granularity, this may
>>>>    		 * cause issues if non-supported panels are used.
>>>>    		 */
>>>> -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>>>> +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0,
>>>> STEP_B0))
>>>>    			intel_de_rmw(dev_priv,
>>>> MTL_CHICKEN_TRANS(cpu_transcoder), 0,
>>>>    				     ADLP_1_BASED_X_GRANULARITY);
>>>>    		else if (IS_ALDERLAKE_P(dev_priv))
>>>> @@ -1328,7 +1328,7 @@ static void intel_psr_enable_source(struct intel_dp
>>>> *intel_dp,
>>>>    				     ADLP_1_BASED_X_GRANULARITY);
>>>>
>>>>    		/* Wa_16012604467:adlp,mtl[a0,b0] */
>>>> -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>>>> +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0,
>>>> STEP_B0))
>>>>    			intel_de_rmw(dev_priv,
>>>>    				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
>>>> 0,
>>>>
>>>> MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
>>>> @@ -1489,7 +1489,7 @@ static void intel_psr_disable_locked(struct intel_dp
>>>> *intel_dp)
>>>>
>>>>    	if (intel_dp->psr.psr2_enabled) {
>>>>    		/* Wa_16012604467:adlp,mtl[a0,b0] */
>>>> -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>>>> +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0,
>>>> STEP_B0))
>>>>    			intel_de_rmw(dev_priv,
>>>>    				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
>>>>
>>>> MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0); @@ -1963,7 +1963,7 @@
>>>> int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>>>    		goto skip_sel_fetch_set_loop;
>>>>
>>>>    	/* Wa_14014971492 */
>>>> -	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>>>> +	if ((IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>>>>    	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
>>>>    	    crtc_state->splitter.enable)
>>>>    		pipe_clip.y1 = 0;
>>>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>> index 636a88827a8f..cf1bcc6bff08 100644
>>>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>> @@ -2169,8 +2169,8 @@ static bool skl_plane_has_rc_ccs(struct
>>>> drm_i915_private *i915,
>>>>    				 enum pipe pipe, enum plane_id plane_id)  {
>>>>    	/* Wa_14017240301 */
>>>> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>>>>    		return false;
>>>>
>>>>    	/* Wa_22011186057 */
>>>> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>>> b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>>> index 3173e811463d..26656d4be61e 100644
>>>> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>>> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>>> @@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32
>>>> *cs, const i915_reg_t inv  static int mtl_dummy_pipe_control(struct
>>>> i915_request *rq)  {
>>>>    	/* Wa_14016712196 */
>>>> -	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(rq->engine->i915, STEP_A0,
>>>> STEP_B0) ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(rq->engine->i915, STEP_A0,
>>>> STEP_B0))
>>>> +{
>>>>    		u32 *cs;
>>>>
>>>>    		/* dummy PIPE_CONTROL + depth flush */ @@ -765,8 +765,8
>>>> @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>>>>    		     PIPE_CONTROL_FLUSH_ENABLE);
>>>>
>>>>    	/* Wa_14016712196 */
>>>> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>>>>    		/* dummy PIPE_CONTROL + depth flush */
>>>>    		cs = gen12_emit_pipe_control(cs, 0,
>>>>
>>>> PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0); diff --git
>>>> a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>>> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>>> index 0aff5bb13c53..df4883764ad4 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>>> @@ -1616,7 +1616,7 @@ static int __intel_engine_stop_cs(struct
>>>> intel_engine_cs *engine,
>>>>    	 * Wa_22011802037: Prior to doing a reset, ensure CS is
>>>>    	 * stopped, set ring stop bit and prefetch disable bit to halt CS
>>>>    	 */
>>>> -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0,
>>>> STEP_B0) ||
>>>>    	    (GRAPHICS_VER(engine->i915) >= 11 &&
>>>>    	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>>>>    		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine-
>>>>> mmio_base),
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>>> b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>>> index 2ebd937f3b4c..802b31ad982e 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>>> @@ -3001,7 +3001,7 @@ static void execlists_reset_prepare(struct
>>>> intel_engine_cs *engine)
>>>>    	 * Wa_22011802037: In addition to stopping the cs, we need
>>>>    	 * to wait for any pending mi force wakeups
>>>>    	 */
>>>> -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0,
>>>> STEP_B0) ||
>>>>    	    (GRAPHICS_VER(engine->i915) >= 11 &&
>>>>    	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>>>>    		intel_engine_wait_for_pending_mi_fw(engine);
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>>> b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>>> index 0b414eae1683..e30b56be0cb8 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>>> @@ -166,8 +166,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
>>>>    		gt->steering_table[OADDRM] =
>>>> xelpmp_oaddrm_steering_table;
>>>>    	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
>>>>    		/* Wa_14016747170 */
>>>> -		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>> -		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>>>> +		if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0,
>>>> STEP_B0) ||
>>>> +		    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0,
>>>> STEP_B0))
>>>>    			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
>>>>    					     intel_uncore_read(gt->uncore,
>>>>
>>>> MTL_GT_ACTIVITY_FACTOR)); diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c
>>>> b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>>> index a4ec20aaafe2..80608090fb1e 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>>> @@ -1370,8 +1370,8 @@ gen12_emit_indirect_ctx_rcs(const struct
>>>> intel_context *ce, u32 *cs)
>>>>    					      cs, GEN12_GFX_CCS_AUX_NV);
>>>>
>>>>    	/* Wa_16014892111 */
>>>> -	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(ce->engine->i915, STEP_A0,
>>>> STEP_B0) ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(ce->engine->i915, STEP_A0,
>>>> STEP_B0)
>>>> +||
>>>>    	    IS_DG2(ce->engine->i915))
>>>>    		cs = dg2_emit_draw_watermark_setting(cs);
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c
>>>> b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>>> index 58bb1c55294c..cc8b09b8a7fa 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>>> @@ -526,7 +526,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
>>>>    		return false;
>>>>    	}
>>>>
>>>> -	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
>>>> +	if (IS_METEORLAKE_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
>>>>    	    gt->type == GT_MEDIA) {
>>>>    		drm_notice(&i915->drm,
>>>>    			   "Media RC6 disabled on A step\n"); diff --git
>>>> a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>> index bb948ffc95ca..f840376f107f 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>> @@ -819,8 +819,8 @@ static void mtl_ctx_gt_tuning_init(struct intel_engine_cs
>>>> *engine,
>>>>
>>>>    	dg2_ctx_gt_tuning_init(engine, wal);
>>>>
>>>> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER)
>>>> ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER))
>>>>    		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0,
>>>> false);  }
>>>>
>>>> @@ -831,8 +831,8 @@ static void mtl_ctx_workarounds_init(struct
>>>> intel_engine_cs *engine,
>>>>
>>>>    	mtl_ctx_gt_tuning_init(engine, wal);
>>>>
>>>> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
>>>>    		/* Wa_14014947963 */
>>>>    		wa_masked_field_set(wal, VF_PREEMPTION,
>>>>    				    PREEMPTION_VERTEX_COUNT, 0x4000);
>>>> @@ -1716,8 +1716,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct
>>>> i915_wa_list *wal)
>>>>    	/* Wa_22016670082 */
>>>>    	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
>>>>
>>>> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0) ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0)) {
>>>>    		/* Wa_14014830051 */
>>>>    		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>>>>
>>>> @@ -2413,15 +2413,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,
>>>> struct i915_wa_list *wal)  {
>>>>    	struct drm_i915_private *i915 = engine->i915;
>>>>
>>>> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
>>>>    		/* Wa_22014600077 */
>>>>    		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>>>>    				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
>>>>    	}
>>>>
>>>> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>>    	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>>>>    	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>>>>    		/* Wa_1509727124 */
>>>> @@ -2431,7 +2431,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,
>>>> struct i915_wa_list *wal)
>>>>
>>>>    	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>>>>    	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
>>>> +	    IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
>>>>    		/* Wa_22012856258 */
>>>>    		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
>>>>    				 GEN12_DISABLE_READ_SUPPRESSION);
>>>> @@ -3016,13 +3016,13 @@ general_render_compute_wa_init(struct
>>>> intel_engine_cs *engine, struct i915_wa_li
>>>>
>>>> GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
>>>>    	}
>>>>
>>>> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER)
>>>> ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_B0, STEP_FOREVER))
>>>>    		/* Wa_14017856879 */
>>>>    		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3,
>>>> MTL_DISABLE_FIX_FOR_EOT_FLUSH);
>>>>
>>>> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>>>>    		/*
>>>>    		 * Wa_14017066071
>>>>    		 * Wa_14017654203
>>>> @@ -3030,13 +3030,13 @@ general_render_compute_wa_init(struct
>>>> intel_engine_cs *engine, struct i915_wa_li
>>>>    		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>>>>    				 MTL_DISABLE_SAMPLER_SC_OOO);
>>>>
>>>> -	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>>>> +	if (IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>>>>    		/* Wa_22015279794 */
>>>>    		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>>>>    				 DISABLE_PREFETCH_INTO_IC);
>>>>
>>>> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>>    	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>>>>    	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>>>>    		/* Wa_22013037850 */
>>>> @@ -3044,16 +3044,16 @@ general_render_compute_wa_init(struct
>>>> intel_engine_cs *engine, struct i915_wa_li
>>>>    				DISABLE_128B_EVICTION_COMMAND_UDW);
>>>>    	}
>>>>
>>>> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>>    	    IS_PONTEVECCHIO(i915) ||
>>>>    	    IS_DG2(i915)) {
>>>>    		/* Wa_22014226127 */
>>>>    		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
>>>> DISABLE_D8_D16_COASLESCE);
>>>>    	}
>>>>
>>>> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>> +	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>>>    	    IS_DG2(i915)) {
>>>>    		/* Wa_18017747507 */
>>>>    		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN,
>>>> POLYGON_TRIFAN_LINELOOP_DISABLE); diff --git
>>>> a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>>> index 2eb891b270ae..c8e2a110b833 100644
>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>>> @@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>>>>    		flags |= GUC_WA_GAM_CREDITS;
>>>>
>>>>    	/* Wa_14014475959 */
>>>> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0) ||
>>>>    	    IS_DG2(gt->i915))
>>>>    		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
>>>>
>>>> @@ -292,7 +292,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>>>>    		flags |= GUC_WA_DUAL_QUEUE;
>>>>
>>>>    	/* Wa_22011802037: graphics version 11/12 */
>>>> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_B0) ||
>>>>    	    (GRAPHICS_VER(gt->i915) >= 11 &&
>>>>    	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
>>>>    		flags |= GUC_WA_PRE_PARSER;
>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> index a0e3ef1c65d2..6f0e07c4488e 100644
>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> @@ -1658,7 +1658,7 @@ static void guc_engine_reset_prepare(struct
>>>> intel_engine_cs *engine)
>>>>    	 * Wa_22011802037: In addition to stopping the cs, we need
>>>>    	 * to wait for any pending mi force wakeups
>>>>    	 */
>>>> -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>>>> +	if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915, STEP_A0,
>>>> STEP_B0) ||
>>>>    	    (GRAPHICS_VER(engine->i915) >= 11 &&
>>>>    	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
>>>>    		intel_engine_stop_cs(engine);
>>>> @@ -4267,7 +4267,7 @@ static void guc_default_vfuncs(struct intel_engine_cs
>>>> *engine)
>>>>
>>>>    	/* Wa_14014475959:dg2 */
>>>>    	if (engine->class == COMPUTE_CLASS)
>>>> -		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0,
>>>> STEP_B0) ||
>>>> +		if (IS_METEORLAKE_M_GRAPHICS_STEP(engine->i915,
>>>> STEP_A0, STEP_B0) ||
>>>>    		    IS_DG2(engine->i915))
>>>>    			engine->flags |=
>>>> I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>>> index deb5b9064621..8b4cc3f4df1f 100644
>>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>>> @@ -688,15 +688,24 @@ IS_SUBPLATFORM(const struct drm_i915_private
>>>> *i915,  #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
>>>>    	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
>>>>
>>>> -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
>>>> +#define IS_METEORLAKE_GRAPHICS_STEP(__i915, variant, since, until) \
>>>>    	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE,
>>>> INTEL_SUBPLATFORM_##variant) && \
>>>>    	 IS_GRAPHICS_STEP(__i915, since, until))
>>>>
>>>> -#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
>>>> +#define IS_METEORLAKE_P_GRAPHICS_STEP(__i915, since, until) \
>>>> +	(IS_METEORLAKE_P(__i915) && \
>>>> +	 IS_GRAPHICS_STEP(__i915, since, until))
>>>> +
>>>> +#define IS_METEORLAKE_M_GRAPHICS_STEP(__i915, since, until) \
>>>> +	(IS_METEORLAKE_M(__i915) && \
>>>> +	 IS_GRAPHICS_STEP(__i915, since, until))
>>>> +
>>>> +
>>>> +#define IS_METEORLAKE_DISPLAY_STEP(__i915, since, until) \
>>>>    	(IS_METEORLAKE(__i915) && \
>>>>    	 IS_DISPLAY_STEP(__i915, since, until))
>>>>
>>>> -#define IS_MTL_MEDIA_STEP(__i915, since, until) \
>>>> +#define IS_METEORLAKE_MEDIA_STEP(__i915, since, until) \
>>>>    	(IS_METEORLAKE(__i915) && \
>>>>    	 IS_MEDIA_STEP(__i915, since, until))
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_perf.c
>>>> b/drivers/gpu/drm/i915/i915_perf.c
>>>> index 0a111b281578..e943ffbaecbc 100644
>>>> --- a/drivers/gpu/drm/i915/i915_perf.c
>>>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>>>> @@ -4214,7 +4214,7 @@ static int read_properties_unlocked(struct i915_perf
>>>> *perf,
>>>>    	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where
>>>> OAM
>>>>    	 * does not work as expected.
>>>>    	 */
>>>> -	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
>>>> +	if (IS_METEORLAKE_MEDIA_STEP(props->engine->i915, STEP_A0,
>>>> STEP_C0) &&
>>>>    	    props->engine->oa_group->type == TYPE_OAM &&
>>>>    	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
>>>>    		drm_dbg(&perf->i915->drm,
>>>> @@ -5322,7 +5322,7 @@ int i915_perf_ioctl_version(struct drm_i915_private
>>>> *i915)
>>>>    	 * C6 disable in BIOS. If Media C6 is enabled in BIOS, return version 6
>>>>    	 * to indicate that OA media is not supported.
>>>>    	 */
>>>> -	if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
>>>> +	if (IS_METEORLAKE_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
>>>>    		struct intel_gt *gt;
>>>>    		int i;
>>>>
>>>> --
>>>> 2.34.1
>>>
> 
