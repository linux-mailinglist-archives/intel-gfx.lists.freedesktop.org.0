Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B759C6F408B
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 11:59:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E78A810E4E0;
	Tue,  2 May 2023 09:59:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67E5010E4E0
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 09:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683021575; x=1714557575;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BrTuaJ2PkzCR5u/FKPqXRhcJ12xLNrOvNBN6Valx2k0=;
 b=epUI+jRNlyVVPlEGc33bV6ZaJEtb84twQwd2XoOIQ2EMxmdnfPRqZsT6
 akSX9KksYAbxB7zvclyYjsCTkOFFiSdfXIUsQLb+h8pVl+2wO8PzNnJUQ
 tTDqfvvQQBPNVeh/WGSoBk/RsNiRN6zn2Tsa3urbX2bbZ8pIYUKuwUeIn
 wJedf87Glz+IVVChkiDMACSbKnnS9nY6dEhxwJ8CUIVUPWQ54k2RfA692
 PtvVkPGEX09NqgwDAJwUdc40lNlWZjFcaggwhGs/+xvw38MOjTL7X+2xB
 N9N/5AOtwtdhh8wlas8SmeO545dAhwZk0PVH2EjHC613AaOgauthR0x4s w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10697"; a="413797062"
X-IronPort-AV: E=Sophos;i="5.99,243,1677571200"; d="scan'208";a="413797062"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 02:59:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10697"; a="840229051"
X-IronPort-AV: E=Sophos;i="5.99,243,1677571200"; d="scan'208";a="840229051"
Received: from xinpan-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.163])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 02:59:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20230421145241.GJ4085390@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230421135948.2029121-1-jani.nikula@intel.com>
 <20230421145241.GJ4085390@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 02 May 2023 12:59:23 +0300
Message-ID: <87v8hb12bo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rc6: throw out set() wrapper
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 21 Apr 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Fri, Apr 21, 2023 at 04:59:48PM +0300, Jani Nikula wrote:
>> Remove useless indirection that's just misdirection for the readers.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks for the reviews, pushed to drm-intel-gt-next.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_rc6.c | 157 ++++++++++++++--------------
>>  1 file changed, 76 insertions(+), 81 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> index 8f3cd68d14f8..908a3d0f2343 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> @@ -53,11 +53,6 @@ static struct drm_i915_private *rc6_to_i915(struct intel_rc6 *rc)
>>  	return rc6_to_gt(rc)->i915;
>>  }
>>  
>> -static void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
>> -{
>> -	intel_uncore_write_fw(uncore, reg, val);
>> -}
>> -
>>  static void gen11_rc6_enable(struct intel_rc6 *rc6)
>>  {
>>  	struct intel_gt *gt = rc6_to_gt(rc6);
>> @@ -72,19 +67,19 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>>  	 */
>>  	if (!intel_uc_uses_guc_rc(&gt->uc)) {
>>  		/* 2b: Program RC6 thresholds.*/
>> -		set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
>> -		set(uncore, GEN10_MEDIA_WAKE_RATE_LIMIT, 150);
>> +		intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
>> +		intel_uncore_write_fw(uncore, GEN10_MEDIA_WAKE_RATE_LIMIT, 150);
>>  
>> -		set(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
>> -		set(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
>> +		intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
>> +		intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
>>  		for_each_engine(engine, rc6_to_gt(rc6), id)
>> -			set(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>> +			intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>>  
>> -		set(uncore, GUC_MAX_IDLE_COUNT, 0xA);
>> +		intel_uncore_write_fw(uncore, GUC_MAX_IDLE_COUNT, 0xA);
>>  
>> -		set(uncore, GEN6_RC_SLEEP, 0);
>> +		intel_uncore_write_fw(uncore, GEN6_RC_SLEEP, 0);
>>  
>> -		set(uncore, GEN6_RC6_THRESHOLD, 50000); /* 50/125ms per EI */
>> +		intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 50000); /* 50/125ms per EI */
>>  	}
>>  
>>  	/*
>> @@ -105,8 +100,8 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>>  	 * Broadwell+, To be conservative, we want to factor in a context
>>  	 * switch on top (due to ksoftirqd).
>>  	 */
>> -	set(uncore, GEN9_MEDIA_PG_IDLE_HYSTERESIS, 60);
>> -	set(uncore, GEN9_RENDER_PG_IDLE_HYSTERESIS, 60);
>> +	intel_uncore_write_fw(uncore, GEN9_MEDIA_PG_IDLE_HYSTERESIS, 60);
>> +	intel_uncore_write_fw(uncore, GEN9_RENDER_PG_IDLE_HYSTERESIS, 60);
>>  
>>  	/* 3a: Enable RC6
>>  	 *
>> @@ -141,7 +136,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>>  					      VDN_MFX_POWERGATE_ENABLE(i));
>>  	}
>>  
>> -	set(uncore, GEN9_PG_ENABLE, pg_enable);
>> +	intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, pg_enable);
>>  }
>>  
>>  static void gen9_rc6_enable(struct intel_rc6 *rc6)
>> @@ -152,26 +147,26 @@ static void gen9_rc6_enable(struct intel_rc6 *rc6)
>>  
>>  	/* 2b: Program RC6 thresholds.*/
>>  	if (GRAPHICS_VER(rc6_to_i915(rc6)) >= 11) {
>> -		set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
>> -		set(uncore, GEN10_MEDIA_WAKE_RATE_LIMIT, 150);
>> +		intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
>> +		intel_uncore_write_fw(uncore, GEN10_MEDIA_WAKE_RATE_LIMIT, 150);
>>  	} else if (IS_SKYLAKE(rc6_to_i915(rc6))) {
>>  		/*
>>  		 * WaRsDoubleRc6WrlWithCoarsePowerGating:skl Doubling WRL only
>>  		 * when CPG is enabled
>>  		 */
>> -		set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 108 << 16);
>> +		intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 108 << 16);
>>  	} else {
>> -		set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16);
>> +		intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16);
>>  	}
>>  
>> -	set(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
>> -	set(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
>> +	intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
>> +	intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
>>  	for_each_engine(engine, rc6_to_gt(rc6), id)
>> -		set(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>> +		intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>>  
>> -	set(uncore, GUC_MAX_IDLE_COUNT, 0xA);
>> +	intel_uncore_write_fw(uncore, GUC_MAX_IDLE_COUNT, 0xA);
>>  
>> -	set(uncore, GEN6_RC_SLEEP, 0);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_SLEEP, 0);
>>  
>>  	/*
>>  	 * 2c: Program Coarse Power Gating Policies.
>> @@ -194,11 +189,11 @@ static void gen9_rc6_enable(struct intel_rc6 *rc6)
>>  	 * conservative, we have to factor in a context switch on top (due
>>  	 * to ksoftirqd).
>>  	 */
>> -	set(uncore, GEN9_MEDIA_PG_IDLE_HYSTERESIS, 250);
>> -	set(uncore, GEN9_RENDER_PG_IDLE_HYSTERESIS, 250);
>> +	intel_uncore_write_fw(uncore, GEN9_MEDIA_PG_IDLE_HYSTERESIS, 250);
>> +	intel_uncore_write_fw(uncore, GEN9_RENDER_PG_IDLE_HYSTERESIS, 250);
>>  
>>  	/* 3a: Enable RC6 */
>> -	set(uncore, GEN6_RC6_THRESHOLD, 37500); /* 37.5/125ms per EI */
>> +	intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 37500); /* 37.5/125ms per EI */
>>  
>>  	rc6->ctl_enable =
>>  		GEN6_RC_CTL_HW_ENABLE |
>> @@ -210,8 +205,8 @@ static void gen9_rc6_enable(struct intel_rc6 *rc6)
>>  	 *   - Render/Media PG need to be disabled with RC6.
>>  	 */
>>  	if (!NEEDS_WaRsDisableCoarsePowerGating(rc6_to_i915(rc6)))
>> -		set(uncore, GEN9_PG_ENABLE,
>> -		    GEN9_RENDER_PG_ENABLE | GEN9_MEDIA_PG_ENABLE);
>> +		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE,
>> +				      GEN9_RENDER_PG_ENABLE | GEN9_MEDIA_PG_ENABLE);
>>  }
>>  
>>  static void gen8_rc6_enable(struct intel_rc6 *rc6)
>> @@ -221,13 +216,13 @@ static void gen8_rc6_enable(struct intel_rc6 *rc6)
>>  	enum intel_engine_id id;
>>  
>>  	/* 2b: Program RC6 thresholds.*/
>> -	set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 40 << 16);
>> -	set(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
>> -	set(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
>> +	intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 40 << 16);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
>> +	intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
>>  	for_each_engine(engine, rc6_to_gt(rc6), id)
>> -		set(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>> -	set(uncore, GEN6_RC_SLEEP, 0);
>> -	set(uncore, GEN6_RC6_THRESHOLD, 625); /* 800us/1.28 for TO */
>> +		intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_SLEEP, 0);
>> +	intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 625); /* 800us/1.28 for TO */
>>  
>>  	/* 3: Enable RC6 */
>>  	rc6->ctl_enable =
>> @@ -245,20 +240,20 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
>>  	u32 rc6vids, rc6_mask;
>>  	int ret;
>>  
>> -	set(uncore, GEN6_RC1_WAKE_RATE_LIMIT, 1000 << 16);
>> -	set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 40 << 16 | 30);
>> -	set(uncore, GEN6_RC6pp_WAKE_RATE_LIMIT, 30);
>> -	set(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000);
>> -	set(uncore, GEN6_RC_IDLE_HYSTERSIS, 25);
>> +	intel_uncore_write_fw(uncore, GEN6_RC1_WAKE_RATE_LIMIT, 1000 << 16);
>> +	intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 40 << 16 | 30);
>> +	intel_uncore_write_fw(uncore, GEN6_RC6pp_WAKE_RATE_LIMIT, 30);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25);
>>  
>>  	for_each_engine(engine, rc6_to_gt(rc6), id)
>> -		set(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>> +		intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>>  
>> -	set(uncore, GEN6_RC_SLEEP, 0);
>> -	set(uncore, GEN6_RC1e_THRESHOLD, 1000);
>> -	set(uncore, GEN6_RC6_THRESHOLD, 50000);
>> -	set(uncore, GEN6_RC6p_THRESHOLD, 150000);
>> -	set(uncore, GEN6_RC6pp_THRESHOLD, 64000); /* unused */
>> +	intel_uncore_write_fw(uncore, GEN6_RC_SLEEP, 0);
>> +	intel_uncore_write_fw(uncore, GEN6_RC1e_THRESHOLD, 1000);
>> +	intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 50000);
>> +	intel_uncore_write_fw(uncore, GEN6_RC6p_THRESHOLD, 150000);
>> +	intel_uncore_write_fw(uncore, GEN6_RC6pp_THRESHOLD, 64000); /* unused */
>>  
>>  	/* We don't use those on Haswell */
>>  	rc6_mask = GEN6_RC_CTL_RC6_ENABLE;
>> @@ -372,22 +367,22 @@ static void chv_rc6_enable(struct intel_rc6 *rc6)
>>  	enum intel_engine_id id;
>>  
>>  	/* 2a: Program RC6 thresholds.*/
>> -	set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 40 << 16);
>> -	set(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
>> -	set(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
>> +	intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 40 << 16);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
>> +	intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
>>  
>>  	for_each_engine(engine, rc6_to_gt(rc6), id)
>> -		set(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>> -	set(uncore, GEN6_RC_SLEEP, 0);
>> +		intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_SLEEP, 0);
>>  
>>  	/* TO threshold set to 500 us (0x186 * 1.28 us) */
>> -	set(uncore, GEN6_RC6_THRESHOLD, 0x186);
>> +	intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 0x186);
>>  
>>  	/* Allows RC6 residency counter to work */
>> -	set(uncore, VLV_COUNTER_CONTROL,
>> -	    _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH |
>> -			       VLV_MEDIA_RC6_COUNT_EN |
>> -			       VLV_RENDER_RC6_COUNT_EN));
>> +	intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
>> +			      _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH |
>> +						 VLV_MEDIA_RC6_COUNT_EN |
>> +						 VLV_RENDER_RC6_COUNT_EN));
>>  
>>  	/* 3: Enable RC6 */
>>  	rc6->ctl_enable = GEN7_RC_CTL_TO_MODE;
>> @@ -399,22 +394,22 @@ static void vlv_rc6_enable(struct intel_rc6 *rc6)
>>  	struct intel_engine_cs *engine;
>>  	enum intel_engine_id id;
>>  
>> -	set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 0x00280000);
>> -	set(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000);
>> -	set(uncore, GEN6_RC_IDLE_HYSTERSIS, 25);
>> +	intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 0x00280000);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25);
>>  
>>  	for_each_engine(engine, rc6_to_gt(rc6), id)
>> -		set(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>> +		intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>>  
>> -	set(uncore, GEN6_RC6_THRESHOLD, 0x557);
>> +	intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 0x557);
>>  
>>  	/* Allows RC6 residency counter to work */
>> -	set(uncore, VLV_COUNTER_CONTROL,
>> -	    _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH |
>> -			       VLV_MEDIA_RC0_COUNT_EN |
>> -			       VLV_RENDER_RC0_COUNT_EN |
>> -			       VLV_MEDIA_RC6_COUNT_EN |
>> -			       VLV_RENDER_RC6_COUNT_EN));
>> +	intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
>> +			      _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH |
>> +						 VLV_MEDIA_RC0_COUNT_EN |
>> +						 VLV_RENDER_RC0_COUNT_EN |
>> +						 VLV_MEDIA_RC6_COUNT_EN |
>> +						 VLV_RENDER_RC6_COUNT_EN));
>>  
>>  	rc6->ctl_enable =
>>  	    GEN7_RC_CTL_TO_MODE | VLV_RC_CTL_CTX_RST_PARALLEL;
>> @@ -575,9 +570,9 @@ static void __intel_rc6_disable(struct intel_rc6 *rc6)
>>  
>>  	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>>  	if (GRAPHICS_VER(i915) >= 9)
>> -		set(uncore, GEN9_PG_ENABLE, 0);
>> -	set(uncore, GEN6_RC_CONTROL, 0);
>> -	set(uncore, GEN6_RC_STATE, 0);
>> +		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, 0);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, 0);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_STATE, 0);
>>  	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
>>  }
>>  
>> @@ -684,7 +679,7 @@ void intel_rc6_unpark(struct intel_rc6 *rc6)
>>  		return;
>>  
>>  	/* Restore HW timers for automatic RC6 entry while busy */
>> -	set(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
>>  }
>>  
>>  void intel_rc6_park(struct intel_rc6 *rc6)
>> @@ -704,7 +699,7 @@ void intel_rc6_park(struct intel_rc6 *rc6)
>>  		return;
>>  
>>  	/* Turn off the HW timers and go directly to rc6 */
>> -	set(uncore, GEN6_RC_CONTROL, GEN6_RC_CTL_RC6_ENABLE);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, GEN6_RC_CTL_RC6_ENABLE);
>>  
>>  	if (HAS_RC6pp(rc6_to_i915(rc6)))
>>  		target = 0x6; /* deepest rc6 */
>> @@ -712,7 +707,7 @@ void intel_rc6_park(struct intel_rc6 *rc6)
>>  		target = 0x5; /* deep rc6 */
>>  	else
>>  		target = 0x4; /* normal rc6 */
>> -	set(uncore, GEN6_RC_STATE, target << RC_SW_TARGET_STATE_SHIFT);
>> +	intel_uncore_write_fw(uncore, GEN6_RC_STATE, target << RC_SW_TARGET_STATE_SHIFT);
>>  }
>>  
>>  void intel_rc6_disable(struct intel_rc6 *rc6)
>> @@ -735,7 +730,7 @@ void intel_rc6_fini(struct intel_rc6 *rc6)
>>  
>>  	/* We want the BIOS C6 state preserved across loads for MTL */
>>  	if (IS_METEORLAKE(rc6_to_i915(rc6)) && rc6->bios_state_captured)
>> -		set(uncore, GEN6_RC_STATE, rc6->bios_rc_state);
>> +		intel_uncore_write_fw(uncore, GEN6_RC_STATE, rc6->bios_rc_state);
>>  
>>  	pctx = fetch_and_zero(&rc6->pctx);
>>  	if (pctx)
>> @@ -766,18 +761,18 @@ static u64 vlv_residency_raw(struct intel_uncore *uncore, const i915_reg_t reg)
>>  	 * before we have set the default VLV_COUNTER_CONTROL value. So always
>>  	 * set the high bit to be safe.
>>  	 */
>> -	set(uncore, VLV_COUNTER_CONTROL,
>> -	    _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH));
>> +	intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
>> +			      _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH));
>>  	upper = intel_uncore_read_fw(uncore, reg);
>>  	do {
>>  		tmp = upper;
>>  
>> -		set(uncore, VLV_COUNTER_CONTROL,
>> -		    _MASKED_BIT_DISABLE(VLV_COUNT_RANGE_HIGH));
>> +		intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
>> +				      _MASKED_BIT_DISABLE(VLV_COUNT_RANGE_HIGH));
>>  		lower = intel_uncore_read_fw(uncore, reg);
>>  
>> -		set(uncore, VLV_COUNTER_CONTROL,
>> -		    _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH));
>> +		intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
>> +				      _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH));
>>  		upper = intel_uncore_read_fw(uncore, reg);
>>  	} while (upper != tmp && --loop);
>>  
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
