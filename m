Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B102497CB9C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 17:33:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E1F10E725;
	Thu, 19 Sep 2024 15:33:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HdtnRN8Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5027F10E060;
 Thu, 19 Sep 2024 15:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726760024; x=1758296024;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ae+zv97q1q3Lj35E3C7NBP6oDSkESbn9BNxUhL6m/rg=;
 b=HdtnRN8YDOZqbDfaKFVNqBWeS4EOciet4NSkTJRrG0MlCCYcSQRgNaVR
 nqWvkpNDc4+AR6U9OVchbzpgq+vQ3jfNu0P4YtK1VBnkGRYsntHz8FQs7
 Eb///FjOtAtsGTQwTNs/EZGhV8D5KJhsUzfyBbhM+AHGqRyFOj6A9TTNO
 phWlbypEqPhB1CMDHG3w6mS+m3UzSMfg8DfOFJgurz8nwsSjz05JSMxX8
 B4/hyVl5IXTpCogH6ad67CoqewGhANhZx4y6ye0K9n05WOWEbB2sPDhyK
 8v/hM066FoAhU3pmERgLlV5PkNOVJkdRajwmwR6rOvov764NDDnLfvlI0 Q==;
X-CSE-ConnectionGUID: 7swlzKm7QoujcEXUOBuRVQ==
X-CSE-MsgGUID: XDoFCfgQTcGxdRwyO1ZVzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="36863008"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="36863008"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 08:33:44 -0700
X-CSE-ConnectionGUID: RAvIiSAtT6u8dFx1JbsP5g==
X-CSE-MsgGUID: TrkbNsBCQoeZQnsIfdLyDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70094613"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 08:33:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 18:33:40 +0300
Date: Thu, 19 Sep 2024 18:33:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 10/15] drm/i915: Implement hw state readout and checks
 for ultrajoiner
Message-ID: <ZuxEVG7M8uPufCCQ@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-11-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-11-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Sep 18, 2024 at 08:13:38PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Ultrajoiner mode has some new bits and states to be
> read out from the hw. Lets make changes accordingly.
> 
> v2: Fix checkpatch warnings. (Ankit)
> v3: Add separate functions for computing expected secondary_big/ultrajoiner
> pipes. (Ankit)
> v4:
> -Streamline the helpers for ultrajoiner. (Ville)
> -Add fixup to accommodate PIPED check for ultrajoiner. (Ville)
> -Add more Ultrajoiner drm_WARNs. (Ville)
> v5: Remove spurious newline. (Ville)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 81 +++++++++++++++++--
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    |  2 +
>  2 files changed, 78 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a17e89fb5eb9..1ce334f3a3ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3674,13 +3674,58 @@ static u8 expected_bigjoiner_secondary_pipes(u8 bigjoiner_primary_pipes)
>  	return expected_secondary_pipes(bigjoiner_primary_pipes, 2);
>  }
>  
> +static u8 expected_ultrajoiner_secondary_pipes(u8 ultrajoiner_primary_pipes)
> +{
> +	return expected_secondary_pipes(ultrajoiner_primary_pipes, 4);
> +}
> +
> +static u8 fixup_ultrajoiner_secondary_pipes(u8 ultrajoiner_primary_pipes,
> +					    u8 ultrajoiner_secondary_pipes)
> +{
> +	return ultrajoiner_secondary_pipes | ultrajoiner_primary_pipes << 3;
> +}
> +
> +static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
> +				      u8 *primary_pipes, u8 *secondary_pipes)
> +{
> +	struct intel_crtc *crtc;
> +
> +	*primary_pipes = 0;
> +	*secondary_pipes = 0;
> +
> +	if (!HAS_ULTRAJOINER(i915))
> +		return;
> +
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
> +					 joiner_pipes(i915)) {
> +		enum intel_display_power_domain power_domain;
> +		enum pipe pipe = crtc->pipe;
> +		intel_wakeref_t wakeref;
> +
> +		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
> +		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
> +			u32 tmp = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
> +
> +			if (!(tmp & ULTRA_JOINER_ENABLE))
> +				continue;
> +
> +			if (tmp & PRIMARY_ULTRA_JOINER_ENABLE)
> +				*primary_pipes |= BIT(pipe);
> +			else
> +				*secondary_pipes |= BIT(pipe);
> +		}
> +	}
> +}
> +
>  static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  				 u8 *primary_pipes, u8 *secondary_pipes)
>  {
>  	struct intel_display *display = to_intel_display(&dev_priv->drm);
>  	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
> +	u8 primary_ultrajoiner_pipes;
>  	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
> -	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
> +	u8 secondary_ultrajoiner_pipes;
> +	u8 uncompressed_joiner_pipes, bigjoiner_pipes, ultrajoiner_pipes;
>  
>  	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
>  					  &secondary_uncompressed_joiner_pipes);
> @@ -3694,13 +3739,33 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  	drm_WARN_ON(display->drm,
>  		    (primary_bigjoiner_pipes & secondary_bigjoiner_pipes) != 0);
>  
> +	enabled_ultrajoiner_pipes(dev_priv, &primary_ultrajoiner_pipes,
> +				  &secondary_ultrajoiner_pipes);
> +	/*
> +	 * For some strange reason the last pipe in the set of four
> +	 * shouldn't have ultrajoiner enable bit set in hardware.
> +	 * Set the bit anyway to make life easier.
> +	 */
> +	drm_WARN_ON(&dev_priv->drm,
> +		    expected_secondary_pipes(primary_ultrajoiner_pipes, 3) !=
> +		    secondary_ultrajoiner_pipes);
> +	secondary_ultrajoiner_pipes =
> +		fixup_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes,
> +						  secondary_ultrajoiner_pipes);
> +
> +	drm_WARN_ON(&dev_priv->drm, (primary_ultrajoiner_pipes & secondary_ultrajoiner_pipes) != 0);
> +
>  	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
>  				    secondary_uncompressed_joiner_pipes;
>  	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
> +	ultrajoiner_pipes = primary_ultrajoiner_pipes | secondary_ultrajoiner_pipes;
>  
>  	drm_WARN(display->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
>  		 "Uncomressed joiner pipes(%#x) and bigjoiner pipes(%#x) can't intersect\n",
>  		 uncompressed_joiner_pipes, bigjoiner_pipes);
> +	drm_WARN(display->drm, (ultrajoiner_pipes & bigjoiner_pipes) != ultrajoiner_pipes,
> +		 "Ultrajoiner pipes(%#x) should be bigjoiner pipes(%#x)\n",
> +		 ultrajoiner_pipes, bigjoiner_pipes);
>  	drm_WARN(display->drm, secondary_bigjoiner_pipes !=
>  		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
>  		 "Wrong secondary bigjoiner pipes(expected %#x, current %#x)\n",
> @@ -3711,10 +3776,16 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  		 "Wrong secondary uncompressed joiner pipes(expected %#x, current %#x)\n",
>  		 expected_uncompjoiner_secondary_pipes(primary_uncompressed_joiner_pipes),
>  		 secondary_uncompressed_joiner_pipes);
> -
> -	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
> -
> -	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
> +	drm_WARN(display->drm, secondary_ultrajoiner_pipes !=
> +		 expected_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes),
> +		 "Wrong secondary ultrajoiner pipes(expected %x, current %x)\n",
> +		 expected_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes),
> +		 secondary_ultrajoiner_pipes);
> +
> +	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes |
> +			 primary_ultrajoiner_pipes;
> +	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes |
> +			 secondary_ultrajoiner_pipes;
>  
>  	/* Joiner pipes should always be consecutive primary and secondary */
>  	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,

This stuff will now be wrong. I think we need to update the logic to
that constructs the final primary_pipes and secondary_pipes first.
Which I think is in the next patch, I'll comment there some more.

> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index f921ad67b587..bf32a3b46fb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -37,6 +37,8 @@
>  #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
>  #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
>  #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
> +#define  ULTRA_JOINER_ENABLE			REG_BIT(23)
> +#define  PRIMARY_ULTRA_JOINER_ENABLE		REG_BIT(22)
>  #define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
>  #define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
