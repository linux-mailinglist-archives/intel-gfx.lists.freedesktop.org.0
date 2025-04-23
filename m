Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6621CA98736
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 12:22:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 458A510E26A;
	Wed, 23 Apr 2025 10:22:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NcU3cJ6d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED3510E1F6;
 Wed, 23 Apr 2025 10:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745403722; x=1776939722;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AODP+ePOi6E48kPCfAKcJy4LPVPbq8wlWT+ql5k6/zY=;
 b=NcU3cJ6dW6ZvVbrEStiQKKWU7lIuHv8VKGCdEDJzR9GsVoJIjlmjZat+
 YBCByDXZ3sukG132IzokwtuTOKEEwNtLXSJ9mXd39dqyS/WlZIoMdAKOr
 7C8UVM/1NiRxE2NVHJmwp5iv7AqqELYdE1lzvf65XbIUCxF/xVc2azJ2m
 rcE5p9mIIWs04HBED1SIfisc/BVtjQfX/yO0e4e3fZAU213ykfkpHk6gv
 x1MgNdxHa+aZeN2/qiu8sDC0fZsQJE7Fhi/mzGtB2iboQjjQyJ/fTSGOL
 cvAEN5lIggaVzG8rjeul4+Sn59YU1um79jHIA+sgjQTslsY/h4ARCw3++ w==;
X-CSE-ConnectionGUID: M5fu9szISTaVnp+5CFZTtw==
X-CSE-MsgGUID: 0iw2pfX0RuOLxd2qyUGqZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="69479157"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="69479157"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:21:54 -0700
X-CSE-ConnectionGUID: knNKY4poS4a9EnBKJsbGog==
X-CSE-MsgGUID: EYN+FjdsS0+z7ElaweWwXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132266784"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.175])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:21:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2 11/13] drm/i915/vrr: Add state checker for dc balance
 params
In-Reply-To: <e66ce2ea-f0d4-422d-a3d6-08b95565e188@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-12-mitulkumar.ajitkumar.golani@intel.com>
 <e66ce2ea-f0d4-422d-a3d6-08b95565e188@intel.com>
Date: Wed, 23 Apr 2025 13:21:48 +0300
Message-ID: <8734dz18lf.fsf@intel.com>
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

On Wed, 23 Apr 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 4/21/2025 9:18 PM, Mitul Golani wrote:
>> Add state checker for dc balance params. Also add macro to
>> check source support.
>>
>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c |  7 +++++++
>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 20 +++++++++++++++++++-
>>   2 files changed, 26 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 274d01552ccf..4a21acb88aa7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5402,6 +5402,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>>   		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
> Add check for vrr.dc_balance.enable?

They should match regardless, no? Something's wrong if they differ.

>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.slope);
>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_increase);
>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_decrease);
>> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vblank_target);
>>   	}
>>   
>>   	if (!fastset || intel_vrr_always_use_vrr_tg(display)) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index fb96d03bbf03..e8802348e5fa 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -740,7 +740,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> -	u32 trans_vrr_ctl, trans_vrr_vsync;
>> +	u32 trans_vrr_ctl, trans_vrr_vsync, dcb_ctl;
>>   	bool vrr_enable;
>>   
>>   	trans_vrr_ctl = intel_de_read(display,
>> @@ -802,6 +802,24 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   	else
>>   		crtc_state->vrr.enable = vrr_enable;
>>   
>> +	if (HAS_DC_BALANCE(display)) {
>> +		dcb_ctl = intel_de_read(display, PIPEDMC_DCB_CTL(display, cpu_transcoder));
>
> dsb_ctl is not used. Need to use it for vrr.dc_balance.enable.
>
>
> IMO we can introduce the new members (which is done in Patch#4), readout 
> and state checker in one patch.
>
> Regards,
>
> Ankit
>
>
>> +		crtc_state->vrr.dc_balance.vmin =
>> +			intel_de_read(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder)) + 1;
>> +		crtc_state->vrr.dc_balance.vmax =
>> +			intel_de_read(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder)) + 1;
>> +		crtc_state->vrr.dc_balance.guardband =
>> +			intel_de_read(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder));
>> +		crtc_state->vrr.dc_balance.max_increase =
>> +			intel_de_read(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder));
>> +		crtc_state->vrr.dc_balance.max_decrease =
>> +			intel_de_read(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder));
>> +		crtc_state->vrr.dc_balance.slope =
>> +			intel_de_read(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder));
>> +		crtc_state->vrr.dc_balance.vblank_target =
>> +			intel_de_read(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder));
>> +	}
>> +
>>   	/*
>>   	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
>>   	 * Since CMRR is currently disabled, set this flag for VRR for now.

-- 
Jani Nikula, Intel
