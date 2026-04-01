Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEoKLDXtzGknYAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 12:02:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E7D378278
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 12:02:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6179D10E51B;
	Wed,  1 Apr 2026 10:02:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JHtYzMWs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7168A10E51B;
 Wed,  1 Apr 2026 10:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775037747; x=1806573747;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=aTIoQqT8t8nzJeWXByiXioHmBiQnxFbHyCZwQa4Lvcg=;
 b=JHtYzMWsvdioEOXGSI3zzrZZH4MysNUOCjONDU4PGDWq8OWsgI57h1UN
 OUnobhA1yxQgdGC2pXVPt8ptcdisWTTI/N+nHL0Nlavof7ER9cpliF1iP
 NzYVvNvqLwPHHmp6l3JDgx0fOFTQO7R8GCTxm7G+ludUAkB1wletLlZiA
 E+WCx5wtMhy8TIhpWnfdysHMdmV7zEqvG7iPGT4F4mGsR1ERwmS6ZnYI5
 VBCDLgsfPTBDT1C7lM2kWHaqYDtshqB4kVKlXB3ZG8lEocBVC6UCwhfre
 vP8+k7iyTy6fGFtkLjliunPPEjcm843QAk+a6lNHKtK4Gyg864yz7XZ+V Q==;
X-CSE-ConnectionGUID: sku56EQCT9mLbQBxPDteGQ==
X-CSE-MsgGUID: upSsrPd1Rg+Tfd17Y+lx+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76084243"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76084243"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 03:02:26 -0700
X-CSE-ConnectionGUID: qY35MH84QUSfX1Brr0NAaQ==
X-CSE-MsgGUID: H6Ri5C//SYC5m2QGXAhYFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="222266186"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 03:02:24 -0700
Date: Wed, 1 Apr 2026 12:02:22 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
cc: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH 3/9] drm/i915/casf: Move the casf state to better place
In-Reply-To: <e65216e2-461a-9286-644c-1653d12aad87@intel.com>
Message-ID: <e23a0dc1-832a-db15-0166-5ac29105fde5@intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
 <20260326223139.19116-4-ville.syrjala@linux.intel.com>
 <e45e984b-2087-2683-0cfb-33569562f1f1@intel.com> <acZcKlDoZBwZT9wD@intel.com>
 <e65216e2-461a-9286-644c-1653d12aad87@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-524334150-1775037745=:1776952"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 17E7D378278
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-524334150-1775037745=:1776952
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Sat, 28 Mar 2026, Michał Grzelak wrote:
> On Fri, 27 Mar 2026, Ville Syrjälä wrote:
>> On Fri, Mar 27, 2026 at 10:10:26AM +0100, Michał Grzelak wrote:
>>> On Thu, 26 Mar 2026, Ville Syrjala wrote:
>>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>> 
>>>> The casf state is placed inside the 'hw' state for some reason.
>>>> That is only really meant for things we have to duplicate from
>>>> the uapi state. The rest can live on its own in our actual state.
>>>> 
>>>> And since casf is just one aspect of the pfit/pipe scaler the
>>>> proper place for it seems to be under pch_pfit.
>>>> 
>>>> Cc: Nemesa Garg <nemesa.garg@intel.com>
>>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>> ---
>>>> drivers/gpu/drm/i915/display/intel_casf.c     | 40 +++++++++----------
>>>> .../drm/i915/display/intel_crtc_state_dump.c  |  6 +--
>>>> drivers/gpu/drm/i915/display/intel_display.c  | 12 +++---
>>>> .../drm/i915/display/intel_display_types.h    |  2 +-
>>>> drivers/gpu/drm/i915/display/skl_scaler.c     |  4 +-
>>>> 5 files changed, 32 insertions(+), 32 deletions(-)
>>>> 
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c 
>>>> b/drivers/gpu/drm/i915/display/intel_casf.c
>>>> index 4316d8214e80..5a8ffb40d30d 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_casf.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
>>>> @@ -82,7 +82,7 @@ void intel_casf_update_strength(struct intel_crtc_state 
>>>> *crtc_state)
>>>> 	int win_size;
>>>>
>>>> 	intel_de_rmw(display, SHARPNESS_CTL(crtc->pipe), 
>>>> FILTER_STRENGTH_MASK,
>>>> -		     FILTER_STRENGTH(crtc_state->hw.casf_params.strength));
>>>> +		     FILTER_STRENGTH(crtc_state->pch_pfit.casf.strength));
>>>>
>>>> 	win_size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, 1));
>>>> 
>>>> @@ -95,11 +95,11 @@ static void intel_casf_compute_win_size(struct 
>>>> intel_crtc_state *crtc_state)
>>>> 	u32 total_pixels = mode->hdisplay * mode->vdisplay;
>>>>
>>>> 	if (total_pixels <= MAX_PIXELS_FOR_3_TAP_FILTER)
>>>> -		crtc_state->hw.casf_params.win_size = 
>>>> SHARPNESS_FILTER_SIZE_3X3;
>>>> +		crtc_state->pch_pfit.casf.win_size = 
>>>> SHARPNESS_FILTER_SIZE_3X3;
>>>> 	else if (total_pixels <= MAX_PIXELS_FOR_5_TAP_FILTER)
>>>> -		crtc_state->hw.casf_params.win_size = 
>>>> SHARPNESS_FILTER_SIZE_5X5;
>>>> +		crtc_state->pch_pfit.casf.win_size = 
>>>> SHARPNESS_FILTER_SIZE_5X5;
>>>> 	else
>>>> -		crtc_state->hw.casf_params.win_size = 
>>>> SHARPNESS_FILTER_SIZE_7X7;
>>>> +		crtc_state->pch_pfit.casf.win_size = 
>>>> SHARPNESS_FILTER_SIZE_7X7;
>>>> }
>>>> 
>>>> int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
>>>> @@ -110,8 +110,8 @@ int intel_casf_compute_config(struct intel_crtc_state 
>>>> *crtc_state)
>>>> 		return 0;
>>>>
>>>> 	if (crtc_state->hw.sharpness_strength == 0) {
>>>> -		crtc_state->hw.casf_params.enable = false;
>>>> -		crtc_state->hw.casf_params.strength = 0;
>>>> +		crtc_state->pch_pfit.casf.enable = false;
>>>> +		crtc_state->pch_pfit.casf.strength = 0;
>>>> 		return 0;
>>>> 	}
>>>> 
>>>> @@ -121,7 +121,7 @@ int intel_casf_compute_config(struct intel_crtc_state 
>>>> *crtc_state)
>>>> 		return -EINVAL;
>>>> 	}
>>>> 
>>>> -	crtc_state->hw.casf_params.enable = true;
>>>> +	crtc_state->pch_pfit.casf.enable = true;
>>>>
>>>> 	/*
>>>> 	 * HW takes a value in form (1.0 + strength) in 4.4 fixed format.
>>>> @@ -131,7 +131,7 @@ int intel_casf_compute_config(struct intel_crtc_state 
>>>> *crtc_state)
>>>> 	 * 6.3125 in 4.4 format is b01100101 which is equal to 101.
>>>> 	 * Also 85 + 16 = 101.
>>>> 	 */
>>>> -	crtc_state->hw.casf_params.strength =
>>>> +	crtc_state->pch_pfit.casf.strength =
>>>> 		min(crtc_state->hw.sharpness_strength, 0xEF) + 0x10;
>>>>
>>>> 	intel_casf_compute_win_size(crtc_state);
>>>> @@ -151,19 +151,19 @@ void intel_casf_sharpness_get_config(struct 
>>>> intel_crtc_state *crtc_state)
>>>> 	if (sharp & FILTER_EN) {
>>>> 		if (drm_WARN_ON(display->drm,
>>>> 				REG_FIELD_GET(FILTER_STRENGTH_MASK, sharp) < 
>>>> 16))
>>>> -			crtc_state->hw.casf_params.strength = 0;
>>>> +			crtc_state->pch_pfit.casf.strength = 0;
>>>> 		else
>>>> -			crtc_state->hw.casf_params.strength =
>>>> +			crtc_state->pch_pfit.casf.strength =
>>>> 				REG_FIELD_GET(FILTER_STRENGTH_MASK, sharp);
>>>> -		crtc_state->hw.casf_params.enable = true;
>>>> -		crtc_state->hw.casf_params.win_size =
>>>> +		crtc_state->pch_pfit.casf.enable = true;
>>>> +		crtc_state->pch_pfit.casf.win_size =
>>>> 			REG_FIELD_GET(FILTER_SIZE_MASK, sharp);
>>>> 	}
>>>> }
>>>> 
>>>> bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state)
>>>> {
>>>> -	if (crtc_state->hw.casf_params.enable)
>>>> +	if (crtc_state->pch_pfit.casf.enable)
>>>> 		return true;
>>>>
>>>> 	return false;
>>>> @@ -179,7 +179,7 @@ static u32 casf_coeff(struct intel_crtc_state 
>>>> *crtc_state, int t)
>>>> 	struct scaler_filter_coeff value;
>>>> 	u32 coeff;
>>>> 
>>>> -	value = crtc_state->hw.casf_params.coeff[t];
>>>> +	value = crtc_state->pch_pfit.casf.coeff[t];
>>> 
>>> Unrelated topic: how you see such renaming?:
>>> 
>>> int t -> int tap
>> 
>> Probably a good idea. One character variable names aren't what
>> you'd call descriptive. This probably got copied from the
>> nearest neighbor filter code, so a rename should happen there too.
>> 
>> Or even better if someone gets rid of the duplicated code entirely
>> and consolidates all the filter coefficient code to one place.
>
> I'd give it a shot but I genuinely don't know where to search for
> nearest neighbor filter. I searched for possible declarations of int t,
> but it didn't show anything relevant. Can you point to where should I
> start looking?

Nevermind the question, apparently I crossed my eyes when looking at
cscope's search. *facepalm*.

BR,
Michał

>>>> 	value.sign = 0;
>>>>
>>>> 	coeff = value.sign << 15 | value.exp << 12 | value.mantissa << 3;
>>>> @@ -189,7 +189,7 @@ static u32 casf_coeff(struct intel_crtc_state 
>>>> *crtc_state, int t)
>>>> /*
>>>>  * 17 phase of 7 taps requires 119 coefficients in 60 dwords per set.
>>>>  * To enable casf:  program scaler coefficients with the coeffients
>>>> - * that are calculated and stored in hw.casf_params.coeff as per
>>>> + * that are calculated and stored in pch_pfit.casf.coeff as per
>>>>  * SCALER_COEFFICIENT_FORMAT
>>>>  */
>>>> static void intel_casf_write_coeff(struct intel_crtc_state *crtc_state)
>>>> @@ -247,9 +247,9 @@ void intel_casf_scaler_compute_config(struct 
>>>> intel_crtc_state *crtc_state)
>>>> 	u16 sumcoeff = 0;
>>> 
>>> Unrelated to the change: some variables have been named as sumcoeff and
>>> others as filter_*coeff{_1,_2,_3}*. How you see renaming:
>>> 
>>> u16 sumcoeff -> u16 sum_coeff
>>> 
>>> But I might be again missing common codestyle.
>> 
>> We generally use the underscore_style for things. So I wouldn't
>> mind the rename.
>
> In that case I should probably rename filtercoeff as well. But since
> filter_coeff is already used and global, I guess it would require more
> vigilance then the simple rename above. Do you have any hints on how to
> handle it without breaking everything?
>
> BR,
> Michał
>
>> 
>>> 
>>> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
>> 
>> Ta.
>> 
>>> 
>>> BR,
>>> Michał
>>>
>>>> 	int i;
>>>> 
>>>> -	if (crtc_state->hw.casf_params.win_size == 0)
>>>> +	if (crtc_state->pch_pfit.casf.win_size == 0)
>>>> 		filtercoeff = filtercoeff_1;
>>>> -	else if (crtc_state->hw.casf_params.win_size == 1)
>>>> +	else if (crtc_state->pch_pfit.casf.win_size == 1)
>>>> 		filtercoeff = filtercoeff_2;
>>>> 	else
>>>> 		filtercoeff = filtercoeff_3;
>>>> @@ -259,7 +259,7 @@ void intel_casf_scaler_compute_config(struct 
>>>> intel_crtc_state *crtc_state)
>>>>
>>>> 	for (i = 0; i < SCALER_FILTER_NUM_TAPS; i++) {
>>>> 		filter_coeff[i] = (*(filtercoeff + i) * 100 / sumcoeff);
>>>> - 
>>>> convert_sharpness_coef_binary(&crtc_state->hw.casf_params.coeff[i],
>>>> + 
>>>> convert_sharpness_coef_binary(&crtc_state->pch_pfit.casf.coeff[i],
>>>> 					      filter_coeff[i]);
>>>> 	}
>>>> }
>>>> @@ -274,9 +274,9 @@ void intel_casf_enable(struct intel_crtc_state 
>>>> *crtc_state)
>>>>
>>>> 	intel_casf_write_coeff(crtc_state);
>>>> 
>>>> -	sharpness_ctl = FILTER_EN | 
>>>> FILTER_STRENGTH(crtc_state->hw.casf_params.strength);
>>>> +	sharpness_ctl = FILTER_EN | 
>>>> FILTER_STRENGTH(crtc_state->pch_pfit.casf.strength);
>>>> 
>>>> -	sharpness_ctl |= crtc_state->hw.casf_params.win_size;
>>>> +	sharpness_ctl |= crtc_state->pch_pfit.casf.win_size;
>>>>
>>>> 	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), sharpness_ctl);
>>>> 
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c 
>>>> b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>>>> index 10a9b51337fa..95993f8e5d0d 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>>>> @@ -382,9 +382,9 @@ void intel_crtc_state_dump(const struct 
>>>> intel_crtc_state *pipe_config,
>>>> 	intel_vdsc_state_dump(&p, 0, pipe_config);
>>>>
>>>> 	drm_printf(&p, "sharpness strength: %d, sharpness tap size: %d, 
>>>> sharpness enable: %d\n",
>>>> -		   pipe_config->hw.casf_params.strength,
>>>> -		   pipe_config->hw.casf_params.win_size,
>>>> -		   pipe_config->hw.casf_params.enable);
>>>> +		   pipe_config->pch_pfit.casf.strength,
>>>> +		   pipe_config->pch_pfit.casf.win_size,
>>>> +		   pipe_config->pch_pfit.casf.enable);
>>>> 
>>>> dump_planes:
>>>> 	if (!state)
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index a02c58b5a34d..e02e69467871 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -994,7 +994,7 @@ static bool intel_casf_enabling(const struct 
>>>> intel_crtc_state *new_crtc_state,
>>>> 	if (!new_crtc_state->hw.active)
>>>> 		return false;
>>>> 
>>>> -	return is_enabling(hw.casf_params.enable, old_crtc_state, 
>>>> new_crtc_state);
>>>> +	return is_enabling(pch_pfit.casf.enable, old_crtc_state, 
>>>> new_crtc_state);
>>>> }
>>>> 
>>>> static bool intel_casf_disabling(const struct intel_crtc_state 
>>>> *old_crtc_state,
>>>> @@ -1003,7 +1003,7 @@ static bool intel_casf_disabling(const struct 
>>>> intel_crtc_state *old_crtc_state,
>>>> 	if (!new_crtc_state->hw.active)
>>>> 		return false;
>>>> 
>>>> -	return is_disabling(hw.casf_params.enable, old_crtc_state, 
>>>> new_crtc_state);
>>>> +	return is_disabling(pch_pfit.casf.enable, old_crtc_state, 
>>>> new_crtc_state);
>>>> }
>>>> 
>>>> static bool intel_crtc_lobf_enabling(const struct intel_crtc_state 
>>>> *old_crtc_state,
>>>> @@ -5370,12 +5370,12 @@ intel_pipe_config_compare(const struct 
>>>> intel_crtc_state *current_config,
>>>>
>>>> 		PIPE_CONF_CHECK_BOOL(pch_pfit.enabled);
>>>> 		PIPE_CONF_CHECK_RECT(pch_pfit.dst);
>>>> +		PIPE_CONF_CHECK_BOOL(pch_pfit.casf.enable);
>>>> +		PIPE_CONF_CHECK_I(pch_pfit.casf.win_size);
>>>> +		PIPE_CONF_CHECK_I(pch_pfit.casf.strength);
>>>>
>>>> 		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
>>>> 		PIPE_CONF_CHECK_I(pixel_rate);
>>>> -		PIPE_CONF_CHECK_BOOL(hw.casf_params.enable);
>>>> -		PIPE_CONF_CHECK_I(hw.casf_params.win_size);
>>>> -		PIPE_CONF_CHECK_I(hw.casf_params.strength);
>>>>
>>>> 		PIPE_CONF_CHECK_X(gamma_mode);
>>>> 		if (display->platform.cherryview)
>>>> @@ -6819,7 +6819,7 @@ static void intel_pre_update_crtc(struct 
>>>> intel_atomic_state *state,
>>>>
>>>> 	if (intel_casf_enabling(new_crtc_state, old_crtc_state))
>>>> 		intel_casf_enable(new_crtc_state);
>>>> -	else if (new_crtc_state->hw.casf_params.strength != 
>>>> old_crtc_state->hw.casf_params.strength)
>>>> +	else if (new_crtc_state->pch_pfit.casf.strength != 
>>>> old_crtc_state->pch_pfit.casf.strength)
>>>> 		intel_casf_update_strength(new_crtc_state);
>>>>
>>>> 	intel_fbc_update(state, crtc);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h 
>>>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> index af0d870de342..ca2581fb7bbd 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> @@ -1037,7 +1037,6 @@ struct intel_crtc_state {
>>>> 		struct drm_display_mode mode, pipe_mode, adjusted_mode;
>>>> 		enum drm_scaling_filter scaling_filter;
>>>> 		u8 sharpness_strength;
>>>> -		struct intel_casf casf_params;
>>>> 	} hw;
>>>>
>>>> 	/* actual state of LUTs */
>>>> @@ -1224,6 +1223,7 @@ struct intel_crtc_state {
>>>>
>>>> 	/* Panel fitter placement and size for Ironlake+ */
>>>> 	struct {
>>>> +		struct intel_casf casf;
>>>> 		struct drm_rect dst;
>>>> 		bool enabled;
>>>> 		bool force_thru;
>>>> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c 
>>>> b/drivers/gpu/drm/i915/display/skl_scaler.c
>>>> index cfa17ddb4018..e9fe5c0bf6ff 100644
>>>> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
>>>> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
>>>> @@ -986,13 +986,13 @@ void skl_scaler_get_config(struct intel_crtc_state 
>>>> *crtc_state)
>>>> 		if (HAS_CASF(display) && id == 1)
>>>> 			intel_casf_sharpness_get_config(crtc_state);
>>>> 
>>>> -		if (!crtc_state->hw.casf_params.enable)
>>>> +		if (!crtc_state->pch_pfit.casf.enable)
>>>> 			crtc_state->pch_pfit.enabled = true;
>>>>
>>>> 		pos = intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, i));
>>>> 		size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, i));
>>>> 
>>>> -		if (!crtc_state->hw.casf_params.enable)
>>>> +		if (!crtc_state->pch_pfit.casf.enable)
>>>> 			drm_rect_init(&crtc_state->pch_pfit.dst,
>>>> 				      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
>>>> 				      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
>>>> --
>>>> 2.52.0
>>>> 
>>>> 
>> 
>> 
>> -- 
>> Ville Syrjälä
>> Intel
>
--8323329-524334150-1775037745=:1776952--
