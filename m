Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D92B2976DDB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 17:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEEF610EBD4;
	Thu, 12 Sep 2024 15:36:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WEbotmpm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 592BC10EBD9
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 15:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726155398; x=1757691398;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cNFc+eIBBpx0snqVnL0lqC4c2Z5vaxw3kI1/Bx25t2k=;
 b=WEbotmpmMK7w+FIidMsmBsCvCzlrRFqLUdRRMIt2JMiypRTe67p+RHRo
 pu7QH4WTZV6FSWk16DYoa9AZWX8VqMLwJQJQNIHYYU54OAyRf5ChnUrMz
 4GWseWMVEaKYSG/xFBn2szcqqQjU2uhn/Lsng1fwFfDvPFumk9UQAF5eO
 +2jbKY11HiZrXa3ITX6jcugdXnUjEEEPcrRHJ3+YNtmZ2knEVo4Dayqdh
 WsBb0JYPuhmBf5qwxOdMmyAqPrvS/c/r3dOZ3w0qzuv5v4gq8S8OcG/y4
 zfPlw/+jDBxce/I0Vm1GCIka2pjJ8uzOlniLde1aa4TqUfqLu+mKpBGkr Q==;
X-CSE-ConnectionGUID: nHIYDlaLROWQl0LRC2xNjA==
X-CSE-MsgGUID: /ZwOJiAdQ+Om+g4vBPVKJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="50435863"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="50435863"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 08:36:38 -0700
X-CSE-ConnectionGUID: Yt43Iat6StCLCUN9h+bLWw==
X-CSE-MsgGUID: RKpyED/ET5Ky8p9B0IfBYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="98440486"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 08:36:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH] drm/i915/display: Check whether platform supports joiner
In-Reply-To: <87h6alf0w7.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240912132931.1320686-1-ankit.k.nautiyal@intel.com>
 <87h6alf0w7.fsf@intel.com>
Date: Thu, 12 Sep 2024 18:36:31 +0300
Message-ID: <875xr0g9z4.fsf@intel.com>
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

On Thu, 12 Sep 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 12 Sep 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Add macros to check if platform supports bigjoiner/uncompressed joiner.
>> Replace the existing DISPLAY_VER checks with these.
>> Additionally use it before readout for joiner stuff, where its missing.
>
> Please split this to two, adding the macros and then adding the new
> place.

On second thoughts, it's small enough. Just merge after you get CI
results.

>
> BR,
> Jani.
>
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c         | 9 ++++++---
>>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
>>  drivers/gpu/drm/i915/display/intel_display_device.h  | 2 ++
>>  drivers/gpu/drm/i915/display/intel_dp.c              | 2 +-
>>  4 files changed, 10 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index fdf244a32b24..d4a371edfcdd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1712,7 +1712,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>>  
>>  		intel_dsc_enable(pipe_crtc_state);
>>  
>> -		if (DISPLAY_VER(dev_priv) >= 13)
>> +		if (HAS_UNCOMPRESSED_JOINER(dev_priv))
>>  			intel_uncompressed_joiner_enable(pipe_crtc_state);
>>  
>>  		intel_set_pipe_src_size(pipe_crtc_state);
>> @@ -3546,6 +3546,9 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>>  	*primary_pipes = 0;
>>  	*secondary_pipes = 0;
>>  
>> +	if (!HAS_BIGJOINER(dev_priv))
>> +		return;
>> +
>>  	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
>>  					 joiner_pipes(dev_priv)) {
>>  		enum intel_display_power_domain power_domain;
>> @@ -3565,7 +3568,7 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>>  				*secondary_pipes |= BIT(pipe);
>>  		}
>>  
>> -		if (DISPLAY_VER(dev_priv) < 13)
>> +		if (!HAS_UNCOMPRESSED_JOINER(dev_priv))
>>  			continue;
>>  
>>  		power_domain = POWER_DOMAIN_PIPE(pipe);
>> @@ -7966,7 +7969,7 @@ static int max_dotclock(struct drm_i915_private *i915)
>>  	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
>>  
>>  	/* icl+ might use joiner */
>> -	if (DISPLAY_VER(i915) >= 11)
>> +	if (HAS_BIGJOINER(i915))
>>  		max_dotclock *= 2;
>>  
>>  	return max_dotclock;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index b75361e95e97..8caacdd624bd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -1550,7 +1550,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>>  				    connector, &i915_dsc_fractional_bpp_fops);
>>  	}
>>  
>> -	if (DISPLAY_VER(i915) >= 11 &&
>> +	if (HAS_BIGJOINER(i915) &&
>>  	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
>>  	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
>>  		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index dfb0c8bf5ca2..5306bbd13e59 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -118,6 +118,7 @@ enum intel_display_subplatform {
>>  
>>  #define HAS_4TILE(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
>>  #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
>> +#define HAS_BIGJOINER(i915)		(DISPLAY_VER(i915) >= 11)
>>  #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
>>  #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
>>  #define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
>> @@ -152,6 +153,7 @@ enum intel_display_subplatform {
>>  #define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))
>>  #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
>>  					  BIT(trans)) != 0)
>> +#define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
>>  #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
>>  #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
>>  #define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index cb0f6db5f8e7..c53eb8e165de 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2520,7 +2520,7 @@ bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)
>>  	 * limitation. DG2 onwards pipe joiner can be enabled without
>>  	 * compression.
>>  	 */
>> -	return DISPLAY_VER(i915) < 13 && use_joiner;
>> +	return !HAS_UNCOMPRESSED_JOINER(i915) && use_joiner;
>>  }
>>  
>>  static int

-- 
Jani Nikula, Intel
