Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB6C87E6EB
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 11:13:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 385AF10F3F4;
	Mon, 18 Mar 2024 10:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j2LACVw0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94B5B10EF02
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 10:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710756808; x=1742292808;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YuBokLpt2t+vNks6qSZcV6BYmfskihW1wCZc6NHW73I=;
 b=j2LACVw0e52EsPQvtFKCQ0gp6uckxtX81CuV+mqAI55Nm+tyhhKOiK0e
 98S7fViVG6DfHMQMmQEtUlj+Vp/pIeYv+++C9lvDbCG8BTd+zOvEMkTC2
 1gPHEL3FOOFDOnP2aqPsH9UhwHHHm9frUjePAm1aKX7WNnEMiWz+sdtNS
 K0lqXh+gA/tKKqnyq5E29Rk9UEw2+q6S+f/fChdQmzlj7tQCGDa37aotN
 EW9kdYyme4z9Rfl7yrokHdP/ie5yVa0bj7vQ2LyXolZL6FwXPZjP1kllz
 nA+QQ6mBvuWqdd640VrCNM4vnum2rntfOKsLELS3ZRD1/XrOgUO98cBa+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="16281769"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="16281769"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 03:13:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="17911351"
Received: from ahmedess-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.133])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 03:13:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathon Hall <jonathon.hall@puri.sm>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net
Cc: Jonathon Hall <jonathon.hall@puri.sm>, stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915: Do not match JSL in
 ehl_combo_pll_div_frac_wa_needed()
In-Reply-To: <8734surppt.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240313135424.3731410-1-jonathon.hall@puri.sm>
 <8734surppt.fsf@intel.com>
Date: Mon, 18 Mar 2024 12:13:22 +0200
Message-ID: <87zfuvq24d.fsf@intel.com>
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

On Wed, 13 Mar 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 13 Mar 2024, Jonathon Hall <jonathon.hall@puri.sm> wrote:
>> Since commit 0c65dc062611 ("drm/i915/jsl: s/JSL/JASPERLAKE for
>> platform/subplatform defines"), boot freezes on a Jasper Lake tablet
>> (Librem 11), usually with graphical corruption on the eDP display,
>> but sometimes just a black screen.  This commit was included in 6.6 and
>> later.
>>
>> That commit was intended to refactor EHL and JSL macros, but the change
>> to ehl_combo_pll_div_frac_wa_needed() started matching JSL incorrectly
>> when it was only intended to match EHL.
>>
>> It replaced:
>> 	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
>> 		 IS_JSL_EHL_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
>> with:
>> 	return (((IS_ELKHARTLAKE(i915) || IS_JASPERLAKE(i915)) &&
>> 		 IS_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
>>
>> Remove IS_JASPERLAKE() to fix the regression.
>>
>> Signed-off-by: Jonathon Hall <jonathon.hall@puri.sm>
>> Cc: stable@vger.kernel.org
>
> Thanks for the patch!
>
> Fixes: 0c65dc062611 ("drm/i915/jsl: s/JSL/JASPERLAKE for platform/subplatform defines")
> Cc: <stable@vger.kernel.org> # v6.6+
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

And pushed to drm-intel-next.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> index ef57dad1a9cb..57a97880dcb3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> @@ -2509,7 +2509,7 @@ static void icl_wrpll_params_populate(struct skl_wrpll_params *params,
>>  static bool
>>  ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
>>  {
>> -	return (((IS_ELKHARTLAKE(i915) || IS_JASPERLAKE(i915)) &&
>> +	return ((IS_ELKHARTLAKE(i915) &&
>>  		 IS_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
>>  		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) &&
>>  		 i915->display.dpll.ref_clks.nssc == 38400;

-- 
Jani Nikula, Intel
