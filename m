Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC8BAD5A6F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 17:28:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC4310E6A0;
	Wed, 11 Jun 2025 15:28:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QOqtp5Bj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2484810E6AB;
 Wed, 11 Jun 2025 15:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749655728; x=1781191728;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KxdvxLlNCAsSGTFGXVOF3IKvpbDWDLYX69ZREtu1/2c=;
 b=QOqtp5BjKF4FfJhK+IKSEYaGYcfafYWg3gyQkQFx998vP/TdBJlUzRY8
 JWraTXOCZTHq9keEI76pXVDLZ8hUltDXhle1zPpopTMm5AunUMveEylS+
 EIp88ZvqW+1BLJwC1L4jyuQ8Tma+8nAjyrcsOcuCdrM3izIAobuJ/3q0Q
 f9X4Vh3LdbVTPLEMDxn02592cfgCUgFpUwOLuTDhunbjWtCq8e4WPZqpy
 ahHMy5i4bVw6KmLfscEY7P1au40Ca7NlX01lKEIIDs8G4quHZIqzMylfU
 Bt+jtVbp7ZUv0aXVowLMbFAMlWmwrZEk4ijY2dotJuiV8kONo883201RD A==;
X-CSE-ConnectionGUID: iav6dOY2Q7uio0YBVopHuQ==
X-CSE-MsgGUID: jQ4PXJPbQDCbTVJwWyl/rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="55599473"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="55599473"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:28:47 -0700
X-CSE-ConnectionGUID: q6b0Oor1TImDMCMCfDQRpA==
X-CSE-MsgGUID: TXyolTxrSsW7kz16zFGZBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="147117844"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.209])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:28:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH 2/2] drm/i915/dp: Add kernel param to limit eDP rate to
 HBR2"
In-Reply-To: <7997df81-b3ee-4aa0-b278-a5b7f9b88023@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250610100449.185927-1-ankit.k.nautiyal@intel.com>
 <20250610100449.185927-3-ankit.k.nautiyal@intel.com>
 <826e4afa3d3827e40628e69ccecfcb21201c2faa@intel.com>
 <7997df81-b3ee-4aa0-b278-a5b7f9b88023@intel.com>
Date: Wed, 11 Jun 2025 18:28:42 +0300
Message-ID: <1cd154a09823abf6d34221ae9e02f9cd342cc3a3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 10 Jun 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 6/10/2025 5:52 PM, Jani Nikula wrote:
>> On Tue, 10 Jun 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> Some ICL/TGL platforms with combo PHY ports can theoretically support HBR3,
>>> but in practice, signal integrity issues may prevent stable operation.
>>> While some systems include a Parade PS8461 mux chip to mitigate jitter and
>>> enable HBR3, there is no reliable way to detect its presence.
>>> Additionally, many systems have broken or missing VBT entries, making it
>>> unsafe to rely on VBT for link rate limits.
>>>
>>> To address this, introduce a new kernel parameter `limit_edp_hbr2`.
>>> When set, this parameter forces the eDP link rate to be capped at
>>> HBR2 (540000 kHz), overriding any higher advertised rates from the sink or
>>> DPCD. By default, the higher rates will be allowed, i.e. the parameter
>>> will be set to false.
>>>
>>> This provides a manual override for users and OEMs to limit the rate to
>>> HBR2, where output with HBR3 is unstable.
>> I'm afraid a module parameter is not an acceptable solution.
>>
>> Have I missed a discussion why a quirk is not possible?
>
> The problem I was facing was that the OUI details are available from the 
> logs in gitlab issue 5969 [1], but the DEVICE_ID field was blank so I 
> had used DEVICE_ID_ANY.
>
> +	/* Novatek panel */
> +	{ OUI(0x38, 0xEC, 0x11), DEVICE_ID_ANY, false, BIT(DP_DPCD_QUIRK_HBR3) },
>
> But with this, the HBR3 rate might get removed for many panels with same 
> OUI, as I had mentioned in [3].
>
> Also I feel the issue might not be specific to the panel but perhaps to 
> few skus with low voltage combo phy ports.
>
> But we cannot rely on the low voltage sku check as OEMs are expected to 
> limit the rate via VBTs. It seems VBTs are also sometimes not correct.
>
> You have briefly highlighted the problem in comments in gitlab issue 
> 5969 [2].
>
> So I was thinking if we can give a knob to limit the rate.

It has to work out of the box. Module parameters might be handy for us,
but not the users.

> Can we add a quirk for machine/model/vendor to limit the rate for 
> specific machines?

Yes, if that's the common denominator.


BR,
Jani.



>
>
> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
>
> [2] 
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969#note_2309988
>
> [3] https://patchwork.freedesktop.org/patch/654704/?series=149227&rev=1
>
>
> Regards,
>
> Ankit
>
>>
>>
>> BR,
>> Jani.
>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   .../drm/i915/display/intel_display_params.c   |  2 +
>>>   .../drm/i915/display/intel_display_params.h   |  1 +
>>>   drivers/gpu/drm/i915/display/intel_dp.c       | 50 ++++++++++++++++---
>>>   3 files changed, 46 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
>>> index c4f1ab43fc0c..84f36104f5ca 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>>> @@ -133,6 +133,8 @@ intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
>>>   	"(-1=use per-chip default, 0=disabled, 1=enabled, 2=match any register, 3=always locked) "
>>>   	"Default: -1");
>>>   
>>> +intel_display_param_named(limit_edp_hbr2, bool, 0400, "Limit EDP link rate to HBR2 (default: false)");
>>> +
>>>   __maybe_unused
>>>   static void _param_print_bool(struct drm_printer *p, const char *driver_name,
>>>   			      const char *name, bool val)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
>>> index 5317138e6044..f7ba9805f97f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
>>> @@ -48,6 +48,7 @@ struct drm_printer;
>>>   	param(bool, psr_safest_params, false, 0400) \
>>>   	param(bool, enable_psr2_sel_fetch, true, 0400) \
>>>   	param(int, enable_dmc_wl, -1, 0400) \
>>> +	param(bool, limit_edp_hbr2, false, 0400) \
>>>   
>>>   #define MEMBER(T, member, ...) T member;
>>>   struct intel_display_params {
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 2a0b76ae33cd..85022e5e64f4 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -174,10 +174,29 @@ int intel_dp_link_symbol_clock(int rate)
>>>   
>>>   static int max_dprx_rate(struct intel_dp *intel_dp)
>>>   {
>>> +	struct intel_display *display = to_intel_display(intel_dp);
>>> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>>> +	int max_rate;
>>> +
>>>   	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
>>> -		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>>> +		max_rate = drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>>> +	else
>>> +		max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>>>   
>>> -	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>>> +	/*
>>> +	 * Some platforms with combo PHY ports may not reliably support HBR3
>>> +	 * due to signal integrity limitations, despite advertising it.
>>> +	 * If the kernel parameter `limit_edp_hbr2` is set, cap the link
>>> +	 * rate to HBR2 to avoid unstable configurations.
>>> +	 */
>>> +	if (max_rate >= 810000 && display->params.limit_edp_hbr2) {
>>> +		drm_dbg_kms(display->drm,
>>> +			    "[ENCODER:%d:%s] Forcing max link rate to HBR2 due to limit_edp_hbr2 set\n",
>>> +			    encoder->base.base.id, encoder->base.name);
>>> +		max_rate = 540000;
>>> +	}
>>> +
>>> +	return max_rate;
>>>   }
>>>   
>>>   static int max_dprx_lane_count(struct intel_dp *intel_dp)
>>> @@ -4253,6 +4272,9 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>>>   static void
>>>   intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>>   {
>>> +	struct intel_display *display = to_intel_display(intel_dp);
>>> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>>> +
>>>   	intel_dp->num_sink_rates = 0;
>>>   
>>>   	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
>>> @@ -4263,10 +4285,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>>   				 sink_rates, sizeof(sink_rates));
>>>   
>>>   		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
>>> -			int val = le16_to_cpu(sink_rates[i]);
>>> -
>>> -			if (val == 0)
>>> -				break;
>>> +			int rate;
>>>   
>>>   			/* Value read multiplied by 200kHz gives the per-lane
>>>   			 * link rate in kHz. The source rates are, however,
>>> @@ -4274,7 +4293,24 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>>   			 * back to symbols is
>>>   			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
>>>   			 */
>>> -			intel_dp->sink_rates[i] = (val * 200) / 10;
>>> +			rate = le16_to_cpu(sink_rates[i]) * 200 / 10;
>>> +
>>> +			if (rate == 0)
>>> +				break;
>>> +
>>> +			/*
>>> +			 * Some platforms cannot reliably drive HBR3 rates due to PHY limitations,
>>> +			 * even if the sink advertises support. If kernel parameter `limit_edp_hbr2`
>>> +			 * is set, reject any sink rates above HBR2 to ensure stable operation.
>>> +			 */
>>> +			if (rate >= 810000 && display->params.limit_edp_hbr2) {
>>> +				drm_dbg_kms(display->drm,
>>> +					    "[ENCODER:%d:%s] Limit the rate to HBR2 due to limit_edp_hbr2 param\n",
>>> +					    encoder->base.base.id, encoder->base.name);
>>> +				break;
>>> +			}
>>> +
>>> +			intel_dp->sink_rates[i] = rate;
>>>   		}
>>>   		intel_dp->num_sink_rates = i;
>>>   	}

-- 
Jani Nikula, Intel
