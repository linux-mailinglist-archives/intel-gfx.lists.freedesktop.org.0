Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F33F9C026C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 11:33:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEB6A10E7E5;
	Thu,  7 Nov 2024 10:33:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NC3AC8wG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86A3E10E03E;
 Thu,  7 Nov 2024 10:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730975580; x=1762511580;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=R899tQQqfjXcKnuXx+8mX2iNtw04kWb8gjEjR+DxHpo=;
 b=NC3AC8wGMVsy04jSGTAvxaHrfjFkqHNz8drhZ49kEja7ync1lJwtE0rA
 iS20IYRKdWsM/ddSXtV45tTRXbq+U/flgVK+4YK30Gez9kY1Pwo2C45K9
 ZMNANvT/ZtAFZEGdQYu4DYvDAMsf+yUpYzBy1Fwjd4ZzF7L4XJe5kHGPz
 7KLWCTc0r8n6NCuWI3NuTcIRUsFdMQ412tpdHTyuWRz/cTY06GEKAfM05
 HZX4iI/KN38NTsDkXiCVPYguTnImT48jMHBi0DsQzwYR/rlsX0oNymbJa
 OoHXPIAx/rxrgRZTy/u1ZRNbBr4ry/E4Vq1/A8svLFgLLU+dV4LjY/LFG g==;
X-CSE-ConnectionGUID: eky6WMnxR/etJNs0s6E5/g==
X-CSE-MsgGUID: neOXoABWSu2/EIIvEyIleA==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="33652765"
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="33652765"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 02:33:00 -0800
X-CSE-ConnectionGUID: ONviH6MmTnqqTW6mRSQsAw==
X-CSE-MsgGUID: FIZ6ljs0TDegFTQfWz8sYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="85210273"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 02:32:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 15/15] drm/i915/display: add mobile platform group
In-Reply-To: <Zyub_ECW7cCu5HPc@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1730740629.git.jani.nikula@intel.com>
 <e9277a5635fc02106ca69b9071928c2249323500.1730740629.git.jani.nikula@intel.com>
 <Zyub_ECW7cCu5HPc@intel.com>
Date: Thu, 07 Nov 2024 12:32:56 +0200
Message-ID: <87o72re3l3.fsf@intel.com>
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

On Wed, 06 Nov 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Nov 04, 2024 at 07:19:29PM +0200, Jani Nikula wrote:
>> Identify mobile platforms separately in display, using the platform
>> group mechanism. This enables dropping the dependency on i915_drv.h
>> IS_MOBILE() from display code.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_device.c   | 104 ++++++++++++------
>>  .../drm/i915/display/intel_display_device.h   |   1 +
>>  2 files changed, 70 insertions(+), 35 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>> index 8ba1b4652ca9..5689c5e5db0e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> @@ -253,6 +253,7 @@ static const struct intel_display_device_info no_display = {};
>>  
>>  static const struct platform_desc i830_desc = {
>>  	PLATFORM(i830),
>> +	PLATFORM_GROUP(mobile),
>>  	.info = &(const struct intel_display_device_info) {
>>  		I830_DISPLAY,
>>  
>> @@ -271,6 +272,7 @@ static const struct platform_desc i845_desc = {
>>  
>>  static const struct platform_desc i85x_desc = {
>>  	PLATFORM(i85x),
>> +	PLATFORM_GROUP(mobile),
>>  	.info = &(const struct intel_display_device_info) {
>>  		I830_DISPLAY,
>>  
>> @@ -313,6 +315,7 @@ static const struct platform_desc i915g_desc = {
>>  
>>  static const struct platform_desc i915gm_desc = {
>>  	PLATFORM(i915gm),
>> +	PLATFORM_GROUP(mobile),
>>  	.info = &(const struct intel_display_device_info) {
>>  		GEN3_DISPLAY,
>>  		I9XX_COLORS,
>> @@ -337,6 +340,7 @@ static const struct platform_desc i945g_desc = {
>>  
>>  static const struct platform_desc i945gm_desc = {
>>  	PLATFORM(i915gm),
>> +	PLATFORM_GROUP(mobile),
>>  	.info = &(const struct intel_display_device_info) {
>>  		GEN3_DISPLAY,
>>  		I9XX_COLORS,
>> @@ -358,13 +362,21 @@ static const struct platform_desc g33_desc = {
>>  	},
>>  };
>>  
>> -static const struct platform_desc pnv_desc = {
>> +static const struct intel_display_device_info pnv_display = {
>> +	GEN3_DISPLAY,
>> +	I9XX_COLORS,
>> +	.has_hotplug = 1,
>> +};
>> +
>> +static const struct platform_desc pnv_g_desc = {
>>  	PLATFORM(pineview),
>> -	.info = &(const struct intel_display_device_info) {
>> -		GEN3_DISPLAY,
>> -		I9XX_COLORS,
>> -		.has_hotplug = 1,
>> -	},
>> +	.info = &pnv_display,
>> +};
>> +
>> +static const struct platform_desc pnv_m_desc = {
>> +	PLATFORM(pineview),
>> +	PLATFORM_GROUP(mobile),
>> +	.info = &pnv_display,
>>  };
>>  
>>  #define GEN4_DISPLAY \
>> @@ -391,6 +403,7 @@ static const struct platform_desc i965g_desc = {
>>  
>>  static const struct platform_desc i965gm_desc = {
>>  	PLATFORM(i965gm),
>> +	PLATFORM_GROUP(mobile),
>>  	.info = &(const struct intel_display_device_info) {
>>  		GEN4_DISPLAY,
>>  		.has_overlay = 1,
>> @@ -414,6 +427,7 @@ static const struct platform_desc g45_desc = {
>>  static const struct platform_desc gm45_desc = {
>>  	PLATFORM(gm45),
>>  	PLATFORM_GROUP(g4x),
>> +	PLATFORM_GROUP(mobile),
>>  	.info = &(const struct intel_display_device_info) {
>>  		GEN4_DISPLAY,
>>  		.supports_tv = 1,
>> @@ -444,6 +458,7 @@ static const struct platform_desc ilk_d_desc = {
>>  
>>  static const struct platform_desc ilk_m_desc = {
>>  	PLATFORM(ironlake),
>> +	PLATFORM_GROUP(mobile),
>>  	.info = &(const struct intel_display_device_info) {
>>  		ILK_DISPLAY,
>>  
>> @@ -451,38 +466,54 @@ static const struct platform_desc ilk_m_desc = {
>>  	},
>>  };
>>  
>> -static const struct platform_desc snb_desc = {
>> +const struct intel_display_device_info snb_display = {
>
> get static back here as test robot already pointed out...
>
>> +	.has_hotplug = 1,
>> +	I9XX_PIPE_OFFSETS,
>> +	I9XX_CURSOR_OFFSETS,
>> +	ILK_COLORS,
>> +
>> +	.__runtime_defaults.ip.ver = 6,
>> +	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
>> +	.__runtime_defaults.cpu_transcoder_mask =
>> +	BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
>> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
>> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
>> +};
>> +
>> +static const struct platform_desc snb_d_desc = {
>>  	PLATFORM(sandybridge),
>> -	.info = &(const struct intel_display_device_info) {
>> -		.has_hotplug = 1,
>> -		I9XX_PIPE_OFFSETS,
>> -		I9XX_CURSOR_OFFSETS,
>> -		ILK_COLORS,
>> +	.info = &snb_display,
>> +};
>>  
>> -		.__runtime_defaults.ip.ver = 6,
>> -		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
>> -		.__runtime_defaults.cpu_transcoder_mask =
>> -		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
>> -		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
>> -		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
>> -	},
>> +static const struct platform_desc snb_m_desc = {
>> +	PLATFORM(sandybridge),
>> +	PLATFORM_GROUP(mobile),
>> +	.info = &snb_display,
>> +};
>> +
>> +static const struct intel_display_device_info ivb_display = {
>> +	.has_hotplug = 1,
>> +	IVB_PIPE_OFFSETS,
>> +	IVB_CURSOR_OFFSETS,
>> +	IVB_COLORS,
>> +
>> +	.__runtime_defaults.ip.ver = 7,
>> +	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
>> +	.__runtime_defaults.cpu_transcoder_mask =
>> +	BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
>> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
>> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
>>  };
>>  
>> -static const struct platform_desc ivb_desc = {
>> +static const struct platform_desc ivb_d_desc = {
>>  	PLATFORM(ivybridge),
>> -	.info = &(const struct intel_display_device_info) {
>> -		.has_hotplug = 1,
>> -		IVB_PIPE_OFFSETS,
>> -		IVB_CURSOR_OFFSETS,
>> -		IVB_COLORS,
>> +	.info = &ivb_display,
>
> now I'm wondering 2 things:
>
> 1. is info really the good name now?

Why not?

Desc is the platform description, unrelated to display, and info is the
display info. In some cases display info was (and still is) inline, but
when it's shared between multiple platforms it needs to be separate.

> 2. does it deserves a separate patch refactor other then this one focused
> on the mobile group?

Un-inlining the dispay info init could reasonably be a separate
patch. Question is, do we then want to do it for all platforms, or just
the ones that need the split here?


BR,
Jani.


>
>> +};
>>  
>> -		.__runtime_defaults.ip.ver = 7,
>> -		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
>> -		.__runtime_defaults.cpu_transcoder_mask =
>> -		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
>> -		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
>> -		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
>> -	},
>> +static const struct platform_desc ivb_m_desc = {
>> +	PLATFORM(ivybridge),
>> +	PLATFORM_GROUP(mobile),
>> +	.info = &ivb_display,
>>  };
>>  
>>  static const struct platform_desc vlv_desc = {
>> @@ -1385,11 +1416,14 @@ static const struct {
>>  	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_desc),
>>  	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_desc),
>>  	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_desc),
>> -	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_desc),
>> +	INTEL_PNV_G_IDS(INTEL_DISPLAY_DEVICE, &pnv_g_desc),
>> +	INTEL_PNV_M_IDS(INTEL_DISPLAY_DEVICE, &pnv_m_desc),
>>  	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_desc),
>>  	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_desc),
>> -	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_desc),
>> -	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_desc),
>> +	INTEL_SNB_D_IDS(INTEL_DISPLAY_DEVICE, &snb_d_desc),
>> +	INTEL_SNB_M_IDS(INTEL_DISPLAY_DEVICE, &snb_m_desc),
>> +	INTEL_IVB_D_IDS(INTEL_DISPLAY_DEVICE, &ivb_d_desc),
>> +	INTEL_IVB_M_IDS(INTEL_DISPLAY_DEVICE, &ivb_m_desc),
>>  	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_desc),
>>  	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_desc),
>>  	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_desc),
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index e1398689cda5..84378c787923 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -24,6 +24,7 @@ struct pci_dev;
>>  #define INTEL_DISPLAY_PLATFORMS(func) \
>>  	/* Platform group aliases */ \
>>  	func(g4x) /* g45 and gm45 */ \
>> +	func(mobile) /* mobile platforms */ \
>>  	func(dgfx) /* discrete graphics */ \
>>  	/* Display ver 2 */ \
>>  	func(i830) \
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
