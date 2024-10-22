Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEB69A9B9F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 09:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D972E10E5FF;
	Tue, 22 Oct 2024 07:58:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FLxSrb4f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4644C10E5FC;
 Tue, 22 Oct 2024 07:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729583906; x=1761119906;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=hBwyZd8ba1h+s7LQuhb+Vh98mohnImhPrwGBRnlQSvk=;
 b=FLxSrb4fGp0bbYXPuGqjxmFs1yCEYbs1Y7dq1rSt8HfDbCI/E2BY8ZN1
 tHTL98oPD4YbfIYKxOdEVA1FD4ctzupkhaor78UAranglA0mHfXNlHSuk
 BfNPzkWp7vCyGPNQAeq7FTVHx2a9rJkwAre3P6aLW5bwby4ilur/magHD
 bVDqBEQDcViHh7a0zasNZ1nWsJOWDYQEfes1dGh6SLCOCpIEl7w7N2LE7
 bHopCYPefclyZOA4rx+3ENoSRfhYZF/IF83ayqhYyA9ON5/BwvxzqN5BH
 Q0P5MCuw6ZLnQyz4sXlzxBh1TB12hMT/Jv/vZkBg/a+ox2gNqYjmELAWD g==;
X-CSE-ConnectionGUID: 9DQaiY6dQUeMJNeovt1BAg==
X-CSE-MsgGUID: Xgx7GN6bSpyMyVxKzaze7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="40479691"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="40479691"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 00:51:33 -0700
X-CSE-ConnectionGUID: Y++zVitcRNKY7r05gRTBkg==
X-CSE-MsgGUID: oGTO9Z4yQPm+NDPIpO+etA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79416130"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 00:51:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com
Subject: Re: [PATCH 02/16] drm/i915/display: Prepare for dsc 3 stream splitter
In-Reply-To: <b51c1a22-304e-4b9d-aeff-666c2956838b@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
 <20241021123414.3993899-3-ankit.k.nautiyal@intel.com>
 <87wmi1y66a.fsf@intel.com>
 <b51c1a22-304e-4b9d-aeff-666c2956838b@intel.com>
Date: Tue, 22 Oct 2024 10:51:28 +0300
Message-ID: <874j54y3r3.fsf@intel.com>
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

On Tue, 22 Oct 2024, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 10/21/2024 6:16 PM, Jani Nikula wrote:
>> On Mon, 21 Oct 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> At the moment dsc_split represents that dsc splitter is used or not.
>>> With 3 DSC engines, the splitter can split into two streams or three
>>> streams. Make the member dsc_split as int and set that to 2 when dsc
>>> splitter splits to 2 stream.
>> Maybe also name it accordingly? "dsc split" sounds like a boolean, not
>> like an int.
>>
>> Moreover, when you change the meaning of a member, it's often good code
>> hygiene to rename the member to catch any incorrect uses and to ensure
>> you changed them all.
>
> Noted. Will change the name accordingly.
>
>>
>>> v2: Avoid new enum for dsc split. (Suraj)
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>>>   .../drm/i915/display/intel_display_types.h    |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_vdsc.c     | 20 ++++++++++++++-----
>>>   5 files changed, 19 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> index 87a27d91d15d..553e75cf118c 100644
>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> @@ -1595,7 +1595,7 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
>>>   
>>>   	/* FIXME: split only when necessary */
>>>   	if (crtc_state->dsc.slice_count > 1)
>>> -		crtc_state->dsc.dsc_split = true;
>>> +		crtc_state->dsc.dsc_split = 2;
>>>   
>>>   	/* FIXME: initialize from VBT */
>>>   	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index ef1436146325..9e2f0fd0558f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -5741,7 +5741,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>>   	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
>>>   
>>>   	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
>>> -	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
>>> +	PIPE_CONF_CHECK_I(dsc.dsc_split);
>>>   	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
>>>   
>>>   	PIPE_CONF_CHECK_BOOL(splitter.enable);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> index 2bb1fa64da2f..58f510909f4d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> @@ -1235,7 +1235,7 @@ struct intel_crtc_state {
>>>   	/* Display Stream compression state */
>>>   	struct {
>>>   		bool compression_enable;
>>> -		bool dsc_split;
>>> +		int dsc_split;
>>>   		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
>>>   		u16 compressed_bpp_x16;
>>>   		u8 slice_count;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 286b272aa98c..c1867c883b73 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -2409,7 +2409,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>>   	 * then we need to use 2 VDSC instances.
>>>   	 */
>>>   	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
>>> -		pipe_config->dsc.dsc_split = true;
>>> +		pipe_config->dsc.dsc_split = 2;
>>>   
>>>   	ret = intel_dp_dsc_compute_params(connector, pipe_config);
>>>   	if (ret < 0) {
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> index 40525f5c4c42..3bce13c21756 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> @@ -379,7 +379,14 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>>>   
>>>   static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
>>>   {
>>> -	return crtc_state->dsc.dsc_split ? 2 : 1;
>>> +	switch (crtc_state->dsc.dsc_split) {
>>> +	case 2:
>>> +		return 2;
>>> +	case 0:
>>> +	default:
>>> +		break;
>>> +	}
>>> +	return 1;
>> Seems overly complicated.
>>
>>>   }
>>>   
>>>   int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>>> @@ -976,8 +983,11 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>>>   	if (!crtc_state->dsc.compression_enable)
>>>   		goto out;
>>>   
>>> -	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
>>> -		(dss_ctl1 & JOINER_ENABLE);
>>> +	if ((dss_ctl1 & JOINER_ENABLE) &&
>>> +	    (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE))
>> The extra parens are unnecessary.
>>
>>> +		crtc_state->dsc.dsc_split = 2;
>>> +	else
>>> +		crtc_state->dsc.dsc_split = 0;
>>>   
>>>   	intel_dsc_get_pps_config(crtc_state);
>>>   out:
>>> @@ -988,10 +998,10 @@ static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
>>>   				  const struct intel_crtc_state *crtc_state)
>>>   {
>>>   	drm_printf_indent(p, indent,
>>> -			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, split: %s\n",
>>> +			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, split: %d\n",
>> So what does the reader think when they see "split: 1" in the logs?
>> Split enabled?
>
> I was meaning to capture the DSC split state as originally intended, and 
> extend it to have splitting to 3, 2, or None.
>
> With that we can never have split: 1, but can have either 3, 2, or 0.
>
> I realize, split:0 is a bit ambiguous, so I am thinking about:
>
> -change the dsc_split to dsc_streams: to capture number of DSC streams 
> per pipe, instead of DSC splitter operation.
>
> -dsc_streams can be 1, 2 and extended to 3.
>
> -Splitter state will then be implicit, 1 DSC Stream => No Splitter, 2 
> DSC Streams => Splitter used to split 2 DSC streams and so on.
>
> With that, deriving number of DSC engine will also be straight forward 
> (avoiding the switch case above).

Maybe be even more explicit, and call it num_streams or stream_count or
something like that.

Also, the crtc_state->dsc.dsc_something is a tautology, the dsc_ prefix
is unnecessary when it's already in a dsc substruct.

BR,
Jani.

>
>
> Thanks & Regards,
>
> Ankit
>
>
>
>>
>>>   			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
>>>   			  crtc_state->dsc.slice_count,
>>> -			  str_yes_no(crtc_state->dsc.dsc_split));
>>> +			  crtc_state->dsc.dsc_split);
>>>   }
>>>   
>>>   void intel_vdsc_state_dump(struct drm_printer *p, int indent,

-- 
Jani Nikula, Intel
