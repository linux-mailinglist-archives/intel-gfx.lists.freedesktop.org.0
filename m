Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C18A9DE8E5
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 15:46:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3481010E4DF;
	Fri, 29 Nov 2024 14:46:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b/WvJbBw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25ED510E4DB;
 Fri, 29 Nov 2024 14:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732891616; x=1764427616;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fB1xlsAE3XRui4xeZBJ67jrEqpCfHBG32DsR7Aq8OPI=;
 b=b/WvJbBwyOAs43jSMeyjQeshRSlkYcMEdGbKUtFqfKpreAMUJjJUbQG2
 nWU0TcW28kVGREIvDOQph1c8kFCrsItXiiumky0oC/iSjbLV/27aP+Tua
 wAeFhsDqTLRV9JYL00Fka18jZwp2MeUPfp7PFbrWlGcC6jLkcz+vbcaD6
 sBe6Jhw/0JYLFVGpqpRzR7hZuSysaC5EWPd4UvXo8ChpJG8XO2LSkG3Lj
 YgnfL5nhgKsg3BNB8nvd9+2tu5XKke2q2M1/uNwht2IC6j47/UpRPMAUl
 u+fuleYn9j/Dtdasevijjvn7PQ7rAdvFzEP/PXEegchey41czfAILAB/Z Q==;
X-CSE-ConnectionGUID: x7R2yOOEQUO8XUKBnGXI5w==
X-CSE-MsgGUID: Xf/9VUN5Scu0vYUXDhqypw==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="58535431"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="58535431"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 06:46:55 -0800
X-CSE-ConnectionGUID: zXst7OpnROav6K3Pq2O3NA==
X-CSE-MsgGUID: dVtDqvZARcG0cA/zSMVDZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="92611213"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.241])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 06:46:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 4/6] drm/i915/display: convert power domain code
 internally to struct intel_display
In-Reply-To: <Z0nNBKLObDJbnQdt@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1732808222.git.jani.nikula@intel.com>
 <d3284b30b53dd2fec786775ccb8992939360d774.1732808222.git.jani.nikula@intel.com>
 <Z0nNBKLObDJbnQdt@ideak-desk.fi.intel.com>
Date: Fri, 29 Nov 2024 16:46:47 +0200
Message-ID: <877c8m6qso.fsf@intel.com>
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

On Fri, 29 Nov 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Nov 28, 2024 at 05:38:22PM +0200, Jani Nikula wrote:
>> Going forward, struct intel_display is the main device data structure
>> for display. Convert intel_display_power.c internally first, leaving
>> external interfaces for follow-up.
>> 
>> v2: Rebase, checkpatch fixes
>> 
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_power.c    | 806 +++++++++---------
>>  1 file changed, 414 insertions(+), 392 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index ade7192c0461..4043d6971c3e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>>  
>> [...]
>>
>> -static void hsw_disable_pc8(struct drm_i915_private *dev_priv)
>> +static void hsw_disable_pc8(struct intel_display *display)
>>  {
>> -	drm_dbg_kms(&dev_priv->drm, "Disabling package C8+\n");
>> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>> +
>> +	drm_dbg_kms(display->drm, "Disabling package C8+\n");
>>  
>> -	hsw_restore_lcpll(dev_priv);
>> +	hsw_restore_lcpll(display);
>>  	intel_init_pch_refclk(dev_priv);
>>  
>>  	/* Many display registers don't survive PC8+ */
>> +#ifdef I915 /* FIXME */
>>  	intel_clock_gating_init(dev_priv);
>> +#endif
>
> So before the call of hsw_disable_pc8() was optimized out, but now it's
> not. For now ok, but imo this could've been in a separate patch.

Yeah, stuck it in to fix the build, but forgot about it.

>
>>  }
>>  

-- 
Jani Nikula, Intel
