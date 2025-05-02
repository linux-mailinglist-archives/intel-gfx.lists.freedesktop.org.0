Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2660AA6DDF
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 11:18:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1237010E091;
	Fri,  2 May 2025 09:18:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b7E7ixBt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC34F10E00C;
 Fri,  2 May 2025 09:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746177525; x=1777713525;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=D2+gTl0prMQgvxfMmOTHPQwyTFq1HvivzboOFlUM1p4=;
 b=b7E7ixBt+uqwBk3GDsI1PdlmUJFy0PMFUygm80fZ6Bs2+6S7ApxcIcyJ
 7NRlI/nEZDhBh0otzymiuGezhqW+XJXfd/rugaOyeJBSj/o8YIEM1y8a4
 iV2iM2xsIeQP+V4lzX1x83dLN284s7nbGYObHgoRFZEgEbmyHkV/YxF0M
 lxedBLHChFXZyOZFNS9xvF5kZLAimk2P14MjlD6ANf36pc/UeON1IAA1D
 v/qCWMphC1coMBCXF4v1+H9UkZ0iq7jSxJUJdPj9FzZp5WQ5OTVKXeeI6
 LuSXBqfgRWfz+dTOJbU7OCEtY96md3ZUEyMCctGVBAbDr0FSmnKO7c/SU A==;
X-CSE-ConnectionGUID: s6BXVPdrSRuj23JjMZQRlg==
X-CSE-MsgGUID: VC3ld3v2RTWjwjNkMYx8fA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47945000"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47945000"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:18:44 -0700
X-CSE-ConnectionGUID: uFKYO88vQTeu5mR+WiHPFg==
X-CSE-MsgGUID: BGGLTi/SSueMt2VUZqbaRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="135562428"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.144])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:18:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com
Subject: Re: [PATCH] drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
In-Reply-To: <3a97d2ac-648a-453e-a6ff-b6645441ffab@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250429143055.130701-1-ankit.k.nautiyal@intel.com>
 <87msbxvps2.fsf@intel.com>
 <3a97d2ac-648a-453e-a6ff-b6645441ffab@intel.com>
Date: Fri, 02 May 2025 12:18:38 +0300
Message-ID: <87wmazwett.fsf@intel.com>
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

On Thu, 01 May 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 4/30/2025 5:12 PM, Jani Nikula wrote:
>> On Tue, 29 Apr 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> The register EMP_AS_SDP_TL (MTL) was introduced for configuring the
>>> double buffering point and transmission line for
>>> HDMI Video Timing Extended Metadata Packet (VTEMP) for VRR.
>>> This was also intended to be configured for DP to HDMI2.1 PCON to
>>> support VRR.
>>>
>>>  From BMG and LNL+ onwards, this register was extended to Display Port
>>> Adaptive Sync SDP to have a common register to configure double
>>> buffering point and transmission line for both HDMI and DP VRR related
>>> packets.
>>>
>>> Currently, we do not support VRR for either native HDMI or via PCON.
>>> However we need to configure this for DP SDP case. As per the spec,
>>> program the register to set Vsync start as the double buffering point
>>> for DP AS SDP.
>>>
>>> Bspec:70984, 71197
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_vrr.c      | 20 +++++++++++++++++++
>>>   drivers/gpu/drm/i915/display/intel_vrr_regs.h |  6 ++++++
>>>   2 files changed, 26 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index c6565baf815a..2447bdfde5af 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -576,6 +576,22 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>>>   	return false;
>>>   }
>>>   
>>> +static
>>> +void intel_vrr_set_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
>> How do you pronounce that function name?
>
> Haha, good point!. Now that you have pointed it out, this sounds very 
> silly and particularly difficult to read aloud. (^_^;)
>
> Perhaps intel_vrr_set_packet_transmission_line would be better.

Sounds good to me. I didn't check against what the function actually
does. But it sound better. ;D

BR,
Jani.



>
>
> Regards,
>
> Ankit
>
>>
>> BR,
>> Jani.
>>
>>> +{
>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> +
>>> +	/*
>>> +	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
>>> +	 * double buffering point and transmission line for Adaptive Sync SDP.
>>> +	 */
>>> +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
>>> +		intel_de_write(display,
>>> +			       EMP_AS_SDP_TL(display, cpu_transcoder),
>>> +			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>>> +}
>>> +
>>>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>>   {
>>>   	struct intel_display *display = to_intel_display(crtc_state);
>>> @@ -595,6 +611,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>>   		       TRANS_PUSH_EN);
>>>   
>>>   	if (!intel_vrr_always_use_vrr_tg(display)) {
>>> +		intel_vrr_set_emp_as_sdp_tl(crtc_state);
>>> +
>>>   		if (crtc_state->cmrr.enable) {
>>>   			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>   				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
>>> @@ -646,6 +664,8 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>>>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>>   		       TRANS_PUSH_EN);
>>>   
>>> +	intel_vrr_set_emp_as_sdp_tl(crtc_state);
>>> +
>>>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>   		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>>>   }
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>>> index 6ed0e0dc97e7..d2af1b6710bf 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>>> @@ -108,6 +108,12 @@
>>>   #define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
>>>   #define VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
>>>   
>>> +/* Common register for HDMI VTEMP and DP AS SDP */
>>> +#define _EMP_AS_SDP_TL_A			0x60204
>>> +#define EMP_AS_SDP_DB_TL_MASK			REG_GENMASK(12, 0)
>>> +#define EMP_AS_SDP_TL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _EMP_AS_SDP_TL_A)
>>> +#define EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))
>>> +
>>>   /*CMRR Registers*/
>>>   
>>>   #define _TRANS_CMRR_M_LO_A			0x604F0

-- 
Jani Nikula, Intel
