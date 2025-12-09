Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B887FCB008F
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 14:16:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2713C10E556;
	Tue,  9 Dec 2025 13:16:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dlyeb/+y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47AC110E54F;
 Tue,  9 Dec 2025 13:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765286176; x=1796822176;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=8TeXaBCq10nB2swLTHMn5KUI7ShjndOvIZ6hnkEQ9lc=;
 b=Dlyeb/+yq7Iouuffbrl0crLqthhHKOnSv7YhhlSmAuaVg/PmLemwbeYX
 zBq2T+Z6QMnhcDue31RB6IG6m/Gy4zMeF5QY5WOAkuvw8UfwGh5fWxWvX
 yTNvLjrSzZ0eDkaN3VKKPPH7EmNJ5EnNzcC42H6VheNrFftWnce96W0lj
 6phJrxA3O09DQWrLblXW1AWs8Bp7upY1L6arihRhDYz3y13XuZnoEmdYY
 LzsDXU67geUrgy6uMuEOTcIJJN79dEGmZ8uMKPC2G/y+ysSqDyN/9/tV7
 nKIHQnufanw4AR5eogIDsnqT1gAxJMc6twBqJFgL7Nmfnf0ZSdAgxOcIZ A==;
X-CSE-ConnectionGUID: eekp54z2Rt6OvWkWQi3b8Q==
X-CSE-MsgGUID: Rul4X14FT2S+NxSdELUW1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="66963001"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="66963001"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 05:16:16 -0800
X-CSE-ConnectionGUID: 8IQIoBP1Qj2ckDpZW9vgTQ==
X-CSE-MsgGUID: VYAsh0aORXqgZabd4nM29g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="195290067"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 05:16:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/crtc: move crtc initialization loop to
 intel_crtc.c
In-Reply-To: <c60163ac-bd8f-40a9-815c-80730801511d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251204143235.3138973-1-jani.nikula@intel.com>
 <c60163ac-bd8f-40a9-815c-80730801511d@intel.com>
Date: Tue, 09 Dec 2025 15:16:11 +0200
Message-ID: <4aa27ad02210b1771a195b826213ff0d361ef91e@intel.com>
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

On Tue, 09 Dec 2025, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> On 12/4/2025 8:02 PM, Jani Nikula wrote:
>> intel_display_driver_probe_nogem() is too high of an abstraction level
>> to be looping and initializing individual CRTCs. Move this to
>> intel_crtc.c and repurpose intel_crtc_init() to initialize all
>> CRTCs. Make the original a static __intel_crtc_init() for ininitializing
>> a single CRTC.
>> 
>
> typo: s/ininitializing/initializing
>
> Other than that, LGTM
>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks, fixed the typo while pushing.

BR,
Jani.

>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> 
>> ---
>> 
>> This is prep for doing [1] in a nicer way, without divulging the details
>> at the high level.
>> 
>> [1] https://lore.kernel.org/r/20251119153321.2640969-1-jani.nikula@intel.com
>> ---
>>   drivers/gpu/drm/i915/display/intel_crtc.c     | 19 ++++++++++++++++++-
>>   drivers/gpu/drm/i915/display/intel_crtc.h     |  2 +-
>>   .../drm/i915/display/intel_display_driver.c   | 13 +++----------
>>   3 files changed, 22 insertions(+), 12 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
>> index 5e1e02c8d9d4..778ebc5095c3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>> @@ -308,7 +308,7 @@ static const struct drm_crtc_funcs i8xx_crtc_funcs = {
>>   	.get_vblank_timestamp = intel_crtc_get_vblank_timestamp,
>>   };
>>   
>> -int intel_crtc_init(struct intel_display *display, enum pipe pipe)
>> +static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
>>   {
>>   	struct intel_plane *primary, *cursor;
>>   	const struct drm_crtc_funcs *funcs;
>> @@ -406,6 +406,23 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
>>   	return ret;
>>   }
>>   
>> +int intel_crtc_init(struct intel_display *display)
>> +{
>> +	enum pipe pipe;
>> +	int ret;
>> +
>> +	drm_dbg_kms(display->drm, "%d display pipe%s available.\n",
>> +		    INTEL_NUM_PIPES(display), str_plural(INTEL_NUM_PIPES(display)));
>> +
>> +	for_each_pipe(display, pipe) {
>> +		ret = __intel_crtc_init(display, pipe);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>   int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
>>   					   struct drm_file *file)
>>   {
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
>> index 07917e8a9ae3..12507b51ee77 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
>> @@ -37,7 +37,7 @@ void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state);
>>   void intel_crtc_prepare_vblank_event(struct intel_crtc_state *crtc_state,
>>   				     struct drm_pending_vblank_event **event);
>>   u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
>> -int intel_crtc_init(struct intel_display *display, enum pipe pipe);
>> +int intel_crtc_init(struct intel_display *display);
>>   int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
>>   					   struct drm_file *file_priv);
>>   struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> index 7e000ba3e08b..e282b533d5b6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> @@ -452,7 +452,6 @@ bool intel_display_driver_check_access(struct intel_display *display)
>>   /* part #2: call after irq install, but before gem init */
>>   int intel_display_driver_probe_nogem(struct intel_display *display)
>>   {
>> -	enum pipe pipe;
>>   	int ret;
>>   
>>   	if (!HAS_DISPLAY(display))
>> @@ -466,15 +465,9 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
>>   
>>   	intel_gmbus_setup(display);
>>   
>> -	drm_dbg_kms(display->drm, "%d display pipe%s available.\n",
>> -		    INTEL_NUM_PIPES(display),
>> -		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
>> -
>> -	for_each_pipe(display, pipe) {
>> -		ret = intel_crtc_init(display, pipe);
>> -		if (ret)
>> -			goto err_mode_config;
>> -	}
>> +	ret = intel_crtc_init(display);
>> +	if (ret)
>> +		goto err_mode_config;
>>   
>>   	intel_plane_possible_crtcs_init(display);
>>   	intel_dpll_init(display);
>

-- 
Jani Nikula, Intel
