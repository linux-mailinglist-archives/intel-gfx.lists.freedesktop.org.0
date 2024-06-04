Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7578FB15D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 13:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C0E310E2DC;
	Tue,  4 Jun 2024 11:46:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l3aavDl7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 372A310E2DC;
 Tue,  4 Jun 2024 11:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717501589; x=1749037589;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=B6mGfkHk/ONVHEvv+VUBgDOYuJrU5FPKHTHcBVWJUUM=;
 b=l3aavDl7oZedUAEMAziIVNhAuoqJZim6q1r1aSYFRSA8vjuK5nNoyDv6
 9lQ0o1JGq30MvsKUOTjK7WsDNvZBlex62wOXK1/07QuceKFtF9kSNIsbu
 ZhPA5I44h/vfd2r+hsQS2zmpOqSESg0fKlbQuZqD4v3xwrAQ7qN9jnnQp
 //moFPCRJWyU2Qxs9OCJ72RBe5R5lixAkAjU5IHpOh/YqqTDmt9szQ7ha
 Y/xjouEMFLkm6Uy0NTm3hDubholDiMj7O5HbRR8OuCt4PtpnE5uqIUHle
 E2beOmEq/tCZjiNxuLl/aZSE8pZ3PTvgRlaQnAfxSqHfQqZ4ZF/SXJGrV Q==;
X-CSE-ConnectionGUID: 0LVOQeHUSE+4XIYSESadRg==
X-CSE-MsgGUID: X+WDZq8ARmeyL1+WRPvp6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13921071"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="13921071"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 04:46:29 -0700
X-CSE-ConnectionGUID: IAYD4eeWS6qNJEHAk5ZsVQ==
X-CSE-MsgGUID: +Q7SFRAKRmenykonZ0UGiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37270719"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 04:46:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 07/12] drm/i915: extend the fsb_freq initialization to
 more platforms
In-Reply-To: <87cyp3ixek.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1716906179.git.jani.nikula@intel.com>
 <31252aa5da27d111b9156904ab4f97325431303d.1716906179.git.jani.nikula@intel.com>
 <20240529213955.GV4990@mdroper-desk1.amr.corp.intel.com>
 <87cyp3ixek.fsf@intel.com>
Date: Tue, 04 Jun 2024 14:46:18 +0300
Message-ID: <87ed9dc4mt.fsf@intel.com>
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

On Thu, 30 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Wed, 29 May 2024, Matt Roper <matthew.d.roper@intel.com> wrote:
>> On Tue, May 28, 2024 at 05:24:56PM +0300, Jani Nikula wrote:
>>> Initialize fsb frequency for more platforms to be able to use it for GT
>>> clock and rawclk frequency initialization.
>>> 
>>> Note: There's a discrepancy between existing pnv_fsb_freq() and
>>> i9xx_hrawclk() regarding CLKCFG interpretation. Presume all PNV is
>>> mobile.
>>
>> Do you just mean we assume PNV always treats CLKCFG the same way mobile
>> platforms do?  Because we have both mobile and non-mobile platforms
>> defined in the driver (pnv_m_info vs pnv_g_info) and that matches
>> https://ark.intel.com/content/www/us/en/ark/products/codename/32201/products-formerly-pineview.html
>> that lists both desktop and mobile.
>
> Yeah. The problem is, current code in intel_dram.c and intel_cdclk.c
> interpret the CLKCFG register differently for desktop PNV. At least one
> of them is wrong. Basically I just picked one, and secretly hoped Ville
> would tell me. ;)

Ville, do you have any idea about CLKCFG?

BR,
Jani.


>
> BR,
> Jani.
>
>
>>
>>
>> Matt
>>
>>> 
>>> FIXME: What should the default or failure mode be when the value is
>>> unknown?
>>> 
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/soc/intel_dram.c | 54 ++++++++++++++++++++-------
>>>  1 file changed, 40 insertions(+), 14 deletions(-)
>>> 
>>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
>>> index ace9372244a4..74b5b70e91f9 100644
>>> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
>>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>>> @@ -142,24 +142,50 @@ static void detect_mem_freq(struct drm_i915_private *i915)
>>>  		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
>>>  }
>>>  
>>> -static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
>>> +static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
>>>  {
>>>  	u32 fsb;
>>>  
>>>  	fsb = intel_uncore_read(&i915->uncore, CLKCFG) & CLKCFG_FSB_MASK;
>>>  
>>> -	switch (fsb) {
>>> -	case CLKCFG_FSB_400:
>>> -		return 400000;
>>> -	case CLKCFG_FSB_533:
>>> -		return 533333;
>>> -	case CLKCFG_FSB_667:
>>> -		return 666667;
>>> -	case CLKCFG_FSB_800:
>>> -		return 800000;
>>> +	if (IS_PINEVIEW(i915) || IS_MOBILE(i915)) {
>>> +		switch (fsb) {
>>> +		case CLKCFG_FSB_400:
>>> +			return 400000;
>>> +		case CLKCFG_FSB_533:
>>> +			return 533333;
>>> +		case CLKCFG_FSB_667:
>>> +			return 666667;
>>> +		case CLKCFG_FSB_800:
>>> +			return 800000;
>>> +		case CLKCFG_FSB_1067:
>>> +			return 1066667;
>>> +		case CLKCFG_FSB_1333:
>>> +			return 1333333;
>>> +		default:
>>> +			MISSING_CASE(fsb);
>>> +			return 1333333;
>>> +		}
>>> +	} else {
>>> +		switch (fsb) {
>>> +		case CLKCFG_FSB_400_ALT:
>>> +			return 400000;
>>> +		case CLKCFG_FSB_533:
>>> +			return 533333;
>>> +		case CLKCFG_FSB_667:
>>> +			return 666667;
>>> +		case CLKCFG_FSB_800:
>>> +			return 800000;
>>> +		case CLKCFG_FSB_1067_ALT:
>>> +			return 1066667;
>>> +		case CLKCFG_FSB_1333_ALT:
>>> +			return 1333333;
>>> +		case CLKCFG_FSB_1600_ALT:
>>> +			return 1600000;
>>> +		default:
>>> +			return 533333;
>>> +		}
>>>  	}
>>> -
>>> -	return 0;
>>>  }
>>>  
>>>  static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
>>> @@ -193,8 +219,8 @@ static void detect_fsb_freq(struct drm_i915_private *i915)
>>>  {
>>>  	if (GRAPHICS_VER(i915) == 5)
>>>  		i915->fsb_freq = ilk_fsb_freq(i915);
>>> -	else if (IS_PINEVIEW(i915))
>>> -		i915->fsb_freq = pnv_fsb_freq(i915);
>>> +	else if (GRAPHICS_VER(i915) == 3 || GRAPHICS_VER(i915) == 4)
>>> +		i915->fsb_freq = i9xx_fsb_freq(i915);
>>>  
>>>  	if (i915->fsb_freq)
>>>  		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
>>> -- 
>>> 2.39.2
>>> 

-- 
Jani Nikula, Intel
