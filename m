Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE76917D4A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 12:07:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B75810E821;
	Wed, 26 Jun 2024 10:07:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WsH/om5L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B9810E821;
 Wed, 26 Jun 2024 10:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719396469; x=1750932469;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CAjuPvAGDkezDjYmLStjN5aZayzuoNwDSa3RssadSvU=;
 b=WsH/om5LzDFL3UH/aitRvr4OZTBQkdVtWrKj3/FgxDuWAEPvjo3TKU26
 mo6BO32r/uJeNk1KcYg2zKs1V6rmjngSc4n1LtkAPp10aLlv1iUJahQB7
 Bs75deTIKpvqPeGTKHfK/fQJ3GV9Iz3XXAD9aeeeJ23ouA6KgCPeJ0P/S
 or+hNbxTALJi9Mjt+QkgRvIQYV88mPoCt7M9Biql5cbsOs0bP/FwEBKRB
 DT+RiB+WX7sQCPLeM2rytoVUOY48yBzOKHLpPaJlj8/DT2RFo6o8/UwNi
 6Md7OUI7T3T5yjMN2RhBWg9NmGS+1hrKrR+HlrHUj9Ft3fmekL9FSVT/B w==;
X-CSE-ConnectionGUID: DOJh5uKUQtaC11pFMBFGVQ==
X-CSE-MsgGUID: BmUtZJo3RmO7e+1kdXCDbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="16587093"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="16587093"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:07:48 -0700
X-CSE-ConnectionGUID: Sck0OZ4DR224zR+DaY6snQ==
X-CSE-MsgGUID: c7vBSu4YSHyY2eCara4TMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="43768063"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.95])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:07:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, mika.kahola@intel.com,
 matthew.d.roper@intel.com
Subject: Re: [PATCH 2/5] drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
In-Reply-To: <20240626050056.3996349-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
 <20240626050056.3996349-3-ankit.k.nautiyal@intel.com>
Date: Wed, 26 Jun 2024 13:07:39 +0300
Message-ID: <87v81wc904.fsf@intel.com>
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

On Wed, 26 Jun 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Try SNPS_PHY HDMI tables computed using the algorithm, before using
> consolidated tables.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 20 ++++++++-----------
>  1 file changed, 8 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index e6df1f92def5..10fe28af0d11 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -12,6 +12,7 @@
>  #include "intel_display_types.h"
>  #include "intel_snps_phy.h"
>  #include "intel_snps_phy_regs.h"
> +#include "intel_pll_algorithm.h"

Keep includes sorted.

>  
>  /**
>   * DOC: Synopsis PHY support
> @@ -1787,22 +1788,14 @@ intel_mpllb_tables_get(struct intel_crtc_state *crtc_state,
>  int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
>  			   struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	const struct intel_mpllb_state * const *tables;
>  	int i;
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		if (intel_snps_phy_check_hdmi_link_rate(crtc_state->port_clock)
> -		    != MODE_OK) {
> -			/*
> -			 * FIXME: Can only support fixed HDMI frequencies
> -			 * until we have a proper algorithm under a valid
> -			 * license.
> -			 */
> -			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d\n",
> -				    crtc_state->port_clock);
> -			return -EINVAL;
> -		}
> +		/* try computed SNPS_PHY HDMI tables before using consolidated tables */

Computed tables vs. consolidated tables? Huh?

Anyway, I think we have two choices here:

- Always use computed values.

- Prefer fixed tables, fall back to computed values.

But we definitely should not try to compute first and fall back to fixed
tables.

> +		if (intel_snps_phy_compute_hdmi_tmds_pll(crtc_state->port_clock,
> +							 &crtc_state->dpll_hw_state.mpllb) == 0)
> +			return 0;
>  	}
>  
>  	tables = intel_mpllb_tables_get(crtc_state, encoder);
> @@ -1991,6 +1984,9 @@ int intel_snps_phy_check_hdmi_link_rate(int clock)
>  			return MODE_OK;
>  	}
>  
> +	if (clock >= 25175 && clock <= 594000)
> +		return MODE_OK;
> +

How's this related to the patch at hand?

>  	return MODE_CLOCK_RANGE;
>  }

-- 
Jani Nikula, Intel
