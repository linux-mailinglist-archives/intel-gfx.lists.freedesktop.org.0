Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5916791AF17
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2024 20:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9908710E132;
	Thu, 27 Jun 2024 18:30:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aaiyTPly";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84CA010E132;
 Thu, 27 Jun 2024 18:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719513051; x=1751049051;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=g6Ghkty2s2rHU+tKaX4+d+nAU+SizpwAIilUsCM9i+Q=;
 b=aaiyTPlyRgoHjqjs0RFW2EyUiwNizWWVZmvavz4O/ya3DSkEg70HPiim
 yprCD96HNhpDRA6SwVwYT9Zun210i3AKk8sGn6ZaXOVAw/5h/MCZNDZoH
 lNsQydlkcyhwV0JckgHgLCimi9i/Me60cq9H+5//WR9Zy/c7i3tf+vePO
 M7VxSdK5Fsp/OEDMSVfVCW+0/wH5Tur8JFtyNDMK+05TTGYq4jvCh0Pdj
 Qo9sbwEBp4t0fB/6Q+osI8g8iqKq37gq2s1tMjNTUxwEMud8+s51uYNnn
 0joVKKIwmlM8ivl9/vwr/s27zAo4WeDJdZ244VPYr+V0mjy7h5vpJJ3s9 A==;
X-CSE-ConnectionGUID: QkFuLfUVRdWSm8yug8b10A==
X-CSE-MsgGUID: nTc4DLykTfGm7Mvb6vzdNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="20546315"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="20546315"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 11:30:48 -0700
X-CSE-ConnectionGUID: EbafBetyQ3eof5JmFMkqkg==
X-CSE-MsgGUID: 1eMqwj3URP6YhIXFuQM/rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="49398752"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.189])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 11:30:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, mika.kahola@intel.com,
 matthew.d.roper@intel.com
Subject: Re: [PATCH 2/5] drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
In-Reply-To: <0d2f4cb3-c418-46c6-b0ca-8aa1650aeeff@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
 <20240626050056.3996349-3-ankit.k.nautiyal@intel.com>
 <87v81wc904.fsf@intel.com>
 <0d2f4cb3-c418-46c6-b0ca-8aa1650aeeff@intel.com>
Date: Thu, 27 Jun 2024 21:30:41 +0300
Message-ID: <87zfr6b5m6.fsf@intel.com>
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

On Thu, 27 Jun 2024, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 6/26/2024 3:37 PM, Jani Nikula wrote:
>> On Wed, 26 Jun 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> Try SNPS_PHY HDMI tables computed using the algorithm, before using
>>> consolidated tables.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_snps_phy.c | 20 ++++++++-----------
>>>   1 file changed, 8 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>>> index e6df1f92def5..10fe28af0d11 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>>> @@ -12,6 +12,7 @@
>>>   #include "intel_display_types.h"
>>>   #include "intel_snps_phy.h"
>>>   #include "intel_snps_phy_regs.h"
>>> +#include "intel_pll_algorithm.h"
>> Keep includes sorted.
> Noted. Thanks for pointing this out.
>>
>>>   
>>>   /**
>>>    * DOC: Synopsis PHY support
>>> @@ -1787,22 +1788,14 @@ intel_mpllb_tables_get(struct intel_crtc_state *crtc_state,
>>>   int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
>>>   			   struct intel_encoder *encoder)
>>>   {
>>> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>>   	const struct intel_mpllb_state * const *tables;
>>>   	int i;
>>>   
>>>   	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>>> -		if (intel_snps_phy_check_hdmi_link_rate(crtc_state->port_clock)
>>> -		    != MODE_OK) {
>>> -			/*
>>> -			 * FIXME: Can only support fixed HDMI frequencies
>>> -			 * until we have a proper algorithm under a valid
>>> -			 * license.
>>> -			 */
>>> -			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d\n",
>>> -				    crtc_state->port_clock);
>>> -			return -EINVAL;
>>> -		}
>>> +		/* try computed SNPS_PHY HDMI tables before using consolidated tables */
>> Computed tables vs. consolidated tables? Huh?
>>
>> Anyway, I think we have two choices here:
>>
>> - Always use computed values.
>>
>> - Prefer fixed tables, fall back to computed values.
>>
>> But we definitely should not try to compute first and fall back to fixed
>> tables.
>
> Hmm I was not sure if we need the fixed tables after this and whether we 
> should remove them altogether.
>
> But it makes more sense to use prefer the fixed tables and fall back to 
> computed values.
>
> I'll make the changes in the next version.
>
>
>>
>>> +		if (intel_snps_phy_compute_hdmi_tmds_pll(crtc_state->port_clock,
>>> +							 &crtc_state->dpll_hw_state.mpllb) == 0)
>>> +			return 0;
>>>   	}
>>>   
>>>   	tables = intel_mpllb_tables_get(crtc_state, encoder);
>>> @@ -1991,6 +1984,9 @@ int intel_snps_phy_check_hdmi_link_rate(int clock)
>>>   			return MODE_OK;
>>>   	}
>>>   
>>> +	if (clock >= 25175 && clock <= 594000)
>>> +		return MODE_OK;
>>> +
>> How's this related to the patch at hand?
>
> Currently we prune the modes if the clock does not match that given in 
> the table.
>
> Now that we support all clocks between 25175 and 594000 we need this, 
> but perhaps will add as a separate patch.
>
> Perhaps I can remove this function all together and put the condition in 
> hdmi_port_clock valid, in separate patch.

But we already have intel_hdmi_source_max_tmds_clock(), which also takes
into account platform specifics. For example the fact that 594000 is not
the max on all platforms.

BR,
Jani.





>
> Regards,
>
> Ankit
>
>
>>
>>>   	return MODE_CLOCK_RANGE;
>>>   }

-- 
Jani Nikula, Intel
