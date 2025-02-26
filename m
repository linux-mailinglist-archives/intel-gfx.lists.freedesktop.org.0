Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F17EA45BF8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 11:38:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D67B510E8B3;
	Wed, 26 Feb 2025 10:38:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LrN2aLNa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCFDD10E8B3;
 Wed, 26 Feb 2025 10:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740566327; x=1772102327;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dvUQiId0QPHA+aAI/uvneyWeLIumPfOtOAq+sBA70xc=;
 b=LrN2aLNaDGaRhI+AAuQoIj9QE2ccCNpa9B9iBklSE5xcQ8kNmD71GQn7
 HuC6Am9V/qbS53INtvBWBiV82lWmQm6AibuLX2qq07rZrn9lPkiZI2cwp
 YFUdZSg8rhtNPJKuqeeWOly02sGrih1cL0sIIqc6mmDYBLxeawDoy+vkW
 ug2/qpOWpn41ybEd2j7979M4zsu1OXGIYrAHrBqHdptwg0/UxrmTy5BAQ
 0tBS0OhqlkMXybIEPszxkHD/XCyN0X81Ih2NBia9+qEZqGVpH+XediYzS
 cSK9zGh6WzsfYVf628OukNwnBWm6MpZKYkls6UHsuRKMu0aHShTZlN2mi g==;
X-CSE-ConnectionGUID: 37SMsxWQQXeUa9BOuC3KbQ==
X-CSE-MsgGUID: Y4hpySTQTz2kRs8LyQwKxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="51614586"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="51614586"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:38:46 -0800
X-CSE-ConnectionGUID: zzb2bLibRY2p96b9elgFAw==
X-CSE-MsgGUID: Ad0IVgd2SRSaF7OuXQ8sAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="116858161"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.74])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:38:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 6/8] drm/i915/reset: move gt related stuff out of
 display reset
In-Reply-To: <20250225203512.GK4460@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1740481927.git.jani.nikula@intel.com>
 <3af6452fb882a17279018c1f1516545634136139.1740481927.git.jani.nikula@intel.com>
 <20250225203512.GK4460@mdroper-desk1.amr.corp.intel.com>
Date: Wed, 26 Feb 2025 12:38:40 +0200
Message-ID: <87seo13s9b.fsf@intel.com>
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

On Tue, 25 Feb 2025, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Tue, Feb 25, 2025 at 01:14:20PM +0200, Jani Nikula wrote:
>> Move the checks for whether display reset is needed as well as
>> I915_RESET_MODESET flag handling to gt side of things.
>> 
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_reset.c    | 15 --------------
>>  drivers/gpu/drm/i915/gt/intel_reset.c         | 20 +++++++++++++++++++
>>  2 files changed, 20 insertions(+), 15 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
>> index b7962f90c21c..362436cd280f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
>> @@ -37,15 +37,6 @@ void intel_display_reset_prepare(struct intel_display *display)
>>  	if (!HAS_DISPLAY(display))
>>  		return;
>>  
>> -	/* reset doesn't touch the display */
>> -	if (!intel_display_reset_test(display) &&
>> -	    !gpu_reset_clobbers_display(display))
>> -		return;
>> -
>> -	/* We have a modeset vs reset deadlock, defensively unbreak it. */
>
> Doesn't this comment more accurately apply to the 'if' condition below
> rather than to the flag updates and wakeup we do before that?  Assuming
> I'm understanding correctly, it seems like the comment should stay here
> and not move to the other file --- saying "We have a ... deadlock" is
> only true if we still have a pending pin after we've done that other
> stuff.  The unbreaking part (by wedging) is still located here too.

I'm... not sure.

Commit d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces instead
of i915_sw_fence") seems relevant. We no longer have anyone waiting on
I915_RESET_MODESET, and I think we could probably remove the bit from
reset flags altogether, and handle this locally in
intel_gt_reset_global(). Right?

BR,
Jani.

>
>> -	set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
>> -	smp_mb__after_atomic();
>> -	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
>>  	if (atomic_read(&display->restore.pending_fb_pin)) {
>>  		drm_dbg_kms(display->drm,
>>  			    "Modeset potentially stuck, unbreaking through wedging\n");
>> @@ -99,10 +90,6 @@ void intel_display_reset_finish(struct intel_display *display)
>>  	if (!HAS_DISPLAY(display))
>>  		return;
>>  
>> -	/* reset doesn't touch the display */
>> -	if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
>> -		return;
>> -
>>  	state = fetch_and_zero(&display->restore.modeset_state);
>>  	if (!state)
>>  		goto unlock;
>> @@ -140,6 +127,4 @@ void intel_display_reset_finish(struct intel_display *display)
>>  	drm_modeset_drop_locks(ctx);
>>  	drm_modeset_acquire_fini(ctx);
>>  	mutex_unlock(&display->drm->mode_config.mutex);
>> -
>> -	clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
>>  }
>> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
>> index d424ffb43aa7..62590ed91cf2 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>> @@ -1400,11 +1400,25 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
>>  	return err;
>>  }
>>  
>> +static bool gt_reset_clobbers_display(struct intel_gt *gt)
>> +{
>> +	return intel_gt_gpu_reset_clobbers_display(gt) && intel_has_gpu_reset(gt);
>> +}
>> +
>>  static void display_reset_prepare(struct intel_gt *gt)
>>  {
>>  	struct drm_i915_private *i915 = gt->i915;
>>  	struct intel_display *display = &i915->display;
>>  
>> +	/* reset doesn't touch the display */
>> +	if (!intel_display_reset_test(display) && !gt_reset_clobbers_display(gt))
>> +		return;
>> +
>> +	/* We have a modeset vs reset deadlock, defensively unbreak it. */
>
> As noted above, this seems inaccurate.  We're just doing the stuff
> necessary to check whether we have a deadlock here.
>
>
> Matt
>
>> +	set_bit(I915_RESET_MODESET, &gt->reset.flags);
>> +	smp_mb__after_atomic();
>> +	wake_up_bit(&gt->reset.flags, I915_RESET_MODESET);
>> +
>>  	intel_display_reset_prepare(display);
>>  }
>>  
>> @@ -1413,7 +1427,13 @@ static void display_reset_finish(struct intel_gt *gt)
>>  	struct drm_i915_private *i915 = gt->i915;
>>  	struct intel_display *display = &i915->display;
>>  
>> +	/* reset doesn't touch the display */
>> +	if (!test_bit(I915_RESET_MODESET, &gt->reset.flags))
>> +		return;
>> +
>>  	intel_display_reset_finish(display);
>> +
>> +	clear_bit_unlock(I915_RESET_MODESET, &gt->reset.flags);
>>  }
>>  
>>  static void intel_gt_reset_global(struct intel_gt *gt,
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
