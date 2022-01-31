Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2694A3F23
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 10:19:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2DEA1132E4;
	Mon, 31 Jan 2022 09:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5449A1132DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 09:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643620790; x=1675156790;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=E3AZHgBu7G1jZCJhK1vjUrZUApb54rwpdE3iYgWG5Yg=;
 b=CtSgkelvmePdxF91Fba51DoBDQDGOadNsX9Tkm4thVn+j8GY5R+/PpL4
 hYalF2MeY+AtnknauZZoP0ryuf5OSuqsbWWJxK/A0OOrySCM1FRnwBmQH
 OrrnQ730H95QPOr+keZi1wyU72jzXCp9KgRU1fo7iJxTAAnSVd9weu7dY
 yI6vljYMrm/7ZyEAZ65IP798eEFs+J7ZBuZHDk3wrNHJjGkHJ9Zfk+bHt
 8aNcIfvk8OibzmC/sSM68nUNqrpf6VPGd/0qgUHNFHRNSaudbnimB4Jiq
 wYzGlumiA45dfIBbMJV689GnNHd56oJfFPpqPik9qIyzQHALKNQTzYfhL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10243"; a="245020690"
X-IronPort-AV: E=Sophos;i="5.88,330,1635231600"; d="scan'208";a="245020690"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 01:19:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,330,1635231600"; d="scan'208";a="537100294"
Received: from tcallagh-mobl.ger.corp.intel.com (HELO [10.213.246.230])
 ([10.213.246.230])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 01:19:48 -0800
Message-ID: <80054c3e-97db-2173-b52f-4a190034a95c@linux.intel.com>
Date: Mon, 31 Jan 2022 09:19:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220128170125.4121819-1-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220128170125.4121819-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: s/engine->i915/i915/ for
 engine workarounds
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


On 28/01/2022 17:01, Matt Roper wrote:
> rcs_engine_wa_init() has a local 'i915' variable; we should use that
> rather than 'engine->i915' for consistency with how we handle other
> platforms.
> 
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 30 ++++++++++-----------
>   1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 065dc1c2bb71..3edb1ba6b5cf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2045,12 +2045,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   {
>   	struct drm_i915_private *i915 = engine->i915;
>   
> -	if (IS_DG2(engine->i915)) {
> +	if (IS_DG2(i915)) {
>   		/* Wa_14015227452:dg2 */
>   		wa_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
>   	}
>   
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0)) {
> +	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
>   		/* Wa_14013392000:dg2_g11 */
>   		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
>   
> @@ -2058,15 +2058,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
>   	}
>   
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_B0) ||
> -	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0)) {
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
> +	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
>   		/* Wa_14012419201:dg2 */
>   		wa_masked_en(wal, GEN9_ROW_CHICKEN4,
>   			     GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX);
>   	}
>   
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_C0) ||
> -	    IS_DG2_G11(engine->i915)) {
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> +	    IS_DG2_G11(i915)) {
>   		/*
>   		 * Wa_22012826095:dg2
>   		 * Wa_22013059131:dg2
> @@ -2081,14 +2081,14 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   	}
>   
>   	/* Wa_1308578152:dg2_g10 when first gslice is fused off */
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_C0) &&
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) &&
>   	    needs_wa_1308578152(engine)) {
>   		wa_masked_dis(wal, GEN12_CS_DEBUG_MODE1_CCCSUNIT_BE_COMMON,
>   			      GEN12_REPLAY_MODE_GRANULARITY);
>   	}
>   
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
> -	    IS_DG2_G11(engine->i915)) {
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> +	    IS_DG2_G11(i915)) {
>   		/* Wa_22013037850:dg2 */
>   		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
>   			    DISABLE_128B_EVICTION_COMMAND_UDW);
> @@ -2105,7 +2105,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   			      LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK);
>   	}
>   
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_B0)) {
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
>   		/*
>   		 * Wa_1608949956:dg2_g10
>   		 * Wa_14010198302:dg2_g10
> @@ -2124,7 +2124,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   		       0, false);
>   	}
>   
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_B0)) {
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
>   		/* Wa_22010430635:dg2 */
>   		wa_masked_en(wal,
>   			     GEN9_ROW_CHICKEN4,
> @@ -2134,8 +2134,8 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   		wa_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
>   	}
>   
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_C0) ||
> -	    IS_DG2_G11(engine->i915)) {
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_C0) ||
> +	    IS_DG2_G11(i915)) {
>   		/* Wa_22012654132:dg2 */
>   		wa_add(wal, GEN10_CACHE_MODE_SS, 0,
>   		       _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
> @@ -2144,8 +2144,8 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   	}
>   
>   	/* Wa_14013202645:dg2 */
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_C0) ||
> -	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0))
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> +	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0))
>   		wa_write_or(wal, RT_CTRL, DIS_NULL_QUERY);
>   
>   	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> 
