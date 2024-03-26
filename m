Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B12088BACE
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 07:56:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B8B010E2E1;
	Tue, 26 Mar 2024 06:56:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FzlvEey1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6550D10E2E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 06:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711436181; x=1742972181;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=13D1XZo5/c/b3S4Cm83ksPm0K/J4Ad7GwSudOtZMbYg=;
 b=FzlvEey1bYHZDBKOvB3F15R+/WGLM2pU9YP/DEg5ndOT1E3CLDHDcG68
 d2hWzd5BW8ZfEeaOdNsbcigh/uVwaoSZ04mwuQZVCoS0H8P1E++yBHuoz
 irUmjMo9392bN5ywtemUw96BR7ck6W/MdD0BRTjayMDiDcUFpWXjv4IUS
 qDYb8ONcF/xT3M544LU9lQoNfOM5PWvsaMKdAF6cYXkxWjAljfxhr2jkE
 vtB8tlnpBoTldelEU5GhQ4X0hUn9pFnleJvNcbH/qyh8UFgvN2htds+Tg
 5MtxeJyV9jWg/MnIqnocVlTz7qgALulN3ioyA5GJP+UUv710eg39IdGkp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="17614026"
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; d="scan'208";a="17614026"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 23:56:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; d="scan'208";a="20535649"
Received: from kmreisi-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.38.226])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 23:56:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/lspcon: Separate lspcon probe and lspcon init
In-Reply-To: <92326ddd-a55e-4bc7-a869-3a09bb32c889@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240322121832.4170061-1-ankit.k.nautiyal@intel.com>
 <20240322121832.4170061-3-ankit.k.nautiyal@intel.com>
 <878r26ibkw.fsf@intel.com>
 <92326ddd-a55e-4bc7-a869-3a09bb32c889@intel.com>
Date: Tue, 26 Mar 2024 08:56:07 +0200
Message-ID: <875xx9iirc.fsf@intel.com>
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

On Tue, 26 Mar 2024, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 3/25/2024 8:48 PM, Jani Nikula wrote:
>> On Fri, 22 Mar 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> Currently we probe for lspcon, inside lspcon init. Which does 2 things:
>>> probe the lspcon and set the expected LS/PCON mode.
>>>
>>> If there is no lspcon connected, the probe expectedly fails and
>>> results in error message. This inturn gets propogated to
>>> lspcon init and we get again error message for lspcon init
>>> failure.
>>>
>>> Separate the probe function and avoid displaying error if probe fails.
>>> If probe succeeds, only then start lspcon init and set the expected
>>> LS/PCON mode as first step.
>>>
>>> While at it move the drm_err message in lspcon init, instead of the
>>> caller.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c     |  3 +++
>>>   drivers/gpu/drm/i915/display/intel_lspcon.c | 27 +++++++++++----------
>>>   drivers/gpu/drm/i915/display/intel_lspcon.h |  1 +
>>>   3 files changed, 18 insertions(+), 13 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 94fa34f77cf0..ea8d3e70127e 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -5882,6 +5882,9 @@ intel_dp_connector_register(struct drm_connector *connector)
>>>   	 * ToDo: Clean this up to handle lspcon init and resume more
>>>   	 * efficiently and streamlined.
>>>   	 */
>>> +	if (!lspcon_probe(lspcon))
>>> +		return ret;
>>> +
>>>   	if (lspcon_init(dig_port)) {
>>>   		lspcon_detect_hdr_capability(lspcon);
>>>   		if (lspcon->hdr_supported)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
>>> index 62159d3ead56..570fde848d00 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
>>> @@ -266,7 +266,7 @@ static bool lspcon_set_expected_mode(struct intel_lspcon *lspcon)
>>>   	return true;
>>>   }
>>>   
>>> -static bool lspcon_probe(struct intel_lspcon *lspcon)
>>> +bool lspcon_probe(struct intel_lspcon *lspcon)
>>>   {
>>>   	int retry;
>>>   	enum drm_dp_dual_mode_type adaptor_type;
>>> @@ -676,30 +676,31 @@ bool lspcon_init(struct intel_digital_port *dig_port)
>>>   	lspcon->active = false;
>>>   	lspcon->mode = DRM_LSPCON_MODE_INVALID;
>>>   
>>> -	if (!lspcon_probe(lspcon)) {
>>> -		drm_err(&i915->drm, "Failed to probe lspcon\n");
>>> -		return false;
>>> -	}
>>> -
>>>   	if (!lspcon_set_expected_mode(lspcon)) {
>>>   		drm_err(&i915->drm, "LSPCON Set expected Mode failed\n");
>>> -		return false;
>>> +		goto lspcon_init_failed;
>>>   	}
>>>   
>>>   	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
>>>   		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
>>> -		return false;
>>> +		goto lspcon_init_failed;
>>>   	}
>>>   
>>>   	if (!lspcon_detect_vendor(lspcon)) {
>>>   		drm_err(&i915->drm, "LSPCON vendor detection failed\n");
>>> -		return false;
>>> +		goto lspcon_init_failed;
>>>   	}
>>>   
>>>   	connector->ycbcr_420_allowed = true;
>>>   	lspcon->active = true;
>>>   	drm_dbg_kms(&i915->drm, "Success: LSPCON init\n");
>>>   	return true;
>>> +
>>> +lspcon_init_failed:
>>> +	drm_err(&i915->drm, "LSPCON init failed on port %c\n",
>>> +		port_name(dig_port->base.port));
>> I guess the idea is to reduce dmesg errors, but in this function the
>> error messages are multiplied.
>
> Earlier we used to get the drm_error for init failure, even if the 
> LSPCON was not detected, which is printed as a debug print.
>
> Now we'll get the dmesg errors only if we detect lspcon and lspcon init 
> indeed fails.

I was referring to lspcon_probe() which now has drm_err() on each of the
branches which goto lspcon_init_failed, which has another
drm_err(). There's no need for the extra error message.

BR,
Jani.


>
> Regards,
>
> Ankit
>
>
>>
>> BR,
>> Jani.
>>
>>> +
>>> +	return false;
>>>   }
>>>   
>>>   u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
>>> @@ -721,11 +722,11 @@ void lspcon_resume(struct intel_digital_port *dig_port)
>>>   		return;
>>>   
>>>   	if (!lspcon->active) {
>>> -		if (!lspcon_init(dig_port)) {
>>> -			drm_err(&i915->drm, "LSPCON init failed on port %c\n",
>>> -				port_name(dig_port->base.port));
>>> +		if (!lspcon_probe(lspcon))
>>> +			return;
>>> +
>>> +		if (!lspcon_init(dig_port))
>>>   			return;
>>> -		}
>>>   	}
>>>   
>>>   	if (lspcon_wake_native_aux_ch(lspcon)) {
>>> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
>>> index e19e10492b05..b156cc6b3a23 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
>>> @@ -16,6 +16,7 @@ struct intel_encoder;
>>>   struct intel_lspcon;
>>>   
>>>   bool lspcon_init(struct intel_digital_port *dig_port);
>>> +bool lspcon_probe(struct intel_lspcon *lspcon);
>>>   void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
>>>   void lspcon_resume(struct intel_digital_port *dig_port);
>>>   void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);

-- 
Jani Nikula, Intel
