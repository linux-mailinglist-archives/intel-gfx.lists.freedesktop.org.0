Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D403E9AC9D3
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 14:15:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7135210E7BE;
	Wed, 23 Oct 2024 12:15:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gGidbimk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7825310E7BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 12:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729685742; x=1761221742;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9u3W/eDDhqJ2JtBAxP49ncnAUo5TX1lQnCnnioaEMoI=;
 b=gGidbimk+WvrMdMB7fUgqVlx7eMZ1OEMIU8C7oX45zRbYfdi6CZdBFyF
 JOaQMe5KWyDIByVSmamXHne1W5IJX2jUoMbxqywqagxjVqLTKQxCyeI5U
 fqbWwNvqmQmSzowdhqQ55pUoOCw9VY+FuTzsmdfTuMFwq/hTWrMgXl6Gv
 jAjhZrTcFwHlxTkewp0mwm3+TQqtB4gwdoEGJ+wVhuT+xvXJQAZr6nrTN
 W+piF9p5yoxnlZ30SHtiOJBF/LsixOK/c7UCeshYznGyuJFOOSDR8RAre
 d9RbifLOAPPxSuTVoqOh4TaaRsVHeNFrrzUoZBAoVG/tlfyqD9kAXkZro w==;
X-CSE-ConnectionGUID: e9gK9jcoTgKE/oNKyWIfjQ==
X-CSE-MsgGUID: OONSN00gQyKoMMf2+31BPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="39844049"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="39844049"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 05:15:42 -0700
X-CSE-ConnectionGUID: v86dOg+gRRWfdAYCaAvsKA==
X-CSE-MsgGUID: 3rPX2dNISC2TKFDEiGv8xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80253383"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Oct 2024 05:15:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Oct 2024 15:15:39 +0300
Date: Wed, 23 Oct 2024 15:15:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 5/8] drm/i915/dp: Reuse intel_dp_detect_dsc_caps() for
 eDP
Message-ID: <Zxjo60lPuU4Z8yR3@intel.com>
References: <20241016132405.2231744-1-imre.deak@intel.com>
 <20241016132405.2231744-6-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241016132405.2231744-6-imre.deak@intel.com>
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

On Wed, Oct 16, 2024 at 04:24:02PM +0300, Imre Deak wrote:
> Reuse intel_dp_detect_dsc_caps() which already checks for the source's
> DSC cap and retrieves the DPCD version from the DPRX caps.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 38 ++++++++++++-------------
>  1 file changed, 18 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9ed4e5f8d798a..e2c37680caa91 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4018,6 +4018,23 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
>  	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
>  }
>  
> +static void
> +intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *connector)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +
> +	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> +	if (!HAS_DSC(i915))
> +		return;
> +
> +	if (intel_dp_is_edp(intel_dp))
> +		intel_edp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
> +					   connector);
> +	else
> +		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
> +					  connector);
> +}
> +
>  static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
>  				     struct drm_display_mode *mode)
>  {
> @@ -4193,9 +4210,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>  	intel_dp_set_max_sink_lane_count(intel_dp);
>  
>  	/* Read the eDP DSC DPCD registers */
> -	if (HAS_DSC(dev_priv))
> -		intel_edp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
> -					   connector);
> +	intel_dp_detect_dsc_caps(intel_dp, connector);
>  
>  	/*
>  	 * If needed, program our source OUI so we can make various Intel-specific AUX services
> @@ -5583,23 +5598,6 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
>  					       false);
>  }
>  
> -static void
> -intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *connector)
> -{
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> -
> -	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> -	if (!HAS_DSC(i915))
> -		return;
> -
> -	if (intel_dp_is_edp(intel_dp))
> -		intel_edp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
> -					   connector);
> -	else
> -		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
> -					  connector);
> -}
> -
>  static void
>  intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>  {
> -- 
> 2.44.2

-- 
Ville Syrjälä
Intel
