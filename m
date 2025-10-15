Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ECDBDD704
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 10:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDEB210E283;
	Wed, 15 Oct 2025 08:33:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jO3eb8jG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62F7710E283
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 08:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760517205; x=1792053205;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8zSTjneMyMWiSzH4Xf2M1F1qIKsXQXmDOYfHTK5OSoI=;
 b=jO3eb8jGVO0/j23YuYxnEhxesbNBKzPAYoMPTwTi0j1uE7D4Gno+sBie
 4m23DkZRgHJSrtGVrrWJWTTXs9sOFNt0+quwW4p79TH19cWbQFdGN+idG
 OYE3hy9pahnnIKhBgXz9ZR70r6eSt9r/mDF/Fp/R+hV0D/pypKObLjIE2
 6M5spcxzmQd6gii6w29QkQRIXRR618mQid37ztP0Qow3dzVYv1SmiV4p3
 A7BYUhE1zlZGIsncCEHoynPxSvfb0LclLmM2/UWIRjvhyFTtEGG99VTah
 AI8JqgCyLLtVv7h47mdGZ/xPpwFxZ36383i1bS7YO8Jwbzu6Nj22NGyfw A==;
X-CSE-ConnectionGUID: 791xTwtORE+BLgf2TV6wZg==
X-CSE-MsgGUID: k+yNTSFfSE2yENcGqdn/kA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62393070"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62393070"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:33:24 -0700
X-CSE-ConnectionGUID: h0ZC+IqZSeKPIyFDitakpw==
X-CSE-MsgGUID: Nq8wiHucQM+/POLgCm29ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="181906960"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.100])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:33:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: drop unused non-i915 IS_<PLATFORM> macros
In-Reply-To: <aOkGaTf2Sep7Z7nX@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251010080021.1087315-1-jani.nikula@intel.com>
 <aOkGaTf2Sep7Z7nX@intel.com>
Date: Wed, 15 Oct 2025 11:33:20 +0300
Message-ID: <f95bd5f4f90596bc75e5b3e532dac4a27837ba4f@intel.com>
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

On Fri, 10 Oct 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Fri, Oct 10, 2025 at 11:00:21AM +0300, Jani Nikula wrote:
>> The IS_LUNARLAKE(), IS_BATTLEMAGE(), and IS_PANTHERLAKE() macros were
>> added for compatibility with the xe driver, for display needs, even
>> though i915 does not support the platforms in question. Display has
>> since moved away from the macros, and they are no longer needed. Remove.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Pushed to din, thanks.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h | 10 ----------
>>  1 file changed, 10 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 6e159bb8ad2f..adadb7e7836f 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -488,16 +488,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  #define IS_ALDERLAKE_P(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_P)
>>  #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
>>  #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
>> -/*
>> - * Display code shared by i915 and Xe relies on macros like IS_LUNARLAKE,
>> - * so we need to define these even on platforms that the i915 base driver
>> - * doesn't support.  Ensure the parameter is used in the definition to
>> - * avoid 'unused variable' warnings when compiling the shared display code
>> - * for i915.
>> - */
>> -#define IS_LUNARLAKE(i915) (0 && i915)
>> -#define IS_BATTLEMAGE(i915)  (0 && i915)
>> -#define IS_PANTHERLAKE(i915) (0 && i915)
>>  
>>  #define IS_ARROWLAKE_H(i915) \
>>  	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_H)
>> -- 
>> 2.47.3
>> 

-- 
Jani Nikula, Intel
