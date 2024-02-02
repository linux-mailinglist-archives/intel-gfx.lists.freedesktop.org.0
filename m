Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E008473B5
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 16:52:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45FA310F089;
	Fri,  2 Feb 2024 15:52:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TsSH7/j+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 347 seconds by postgrey-1.36 at gabe;
 Fri, 02 Feb 2024 15:52:16 UTC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7517F10F089
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 15:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706889136; x=1738425136;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eWNOQA7mfYQmwIzowP6/gBXGktVGpJPq7cEjV0GP57E=;
 b=TsSH7/j+vUXPSASwI+WMzDw9IuMosZR2LPbKlWndllr86lmONNhsXPPa
 75CyCmi4xbUEhDwf/N4OTRjngeTel3+VkCCMSBqh8IKxyCt/X0LZH8me7
 rWP0sfiWyIKHviqepIpb+Q2Kj5bAAB0QiwfyIu14r0Tk5MXDy6Qw1nvfQ
 LNOfoLCdozUu6zzgHq1o0BiBEprVWS2x0/WBdcU5Ikr3JV0fKalzW69zU
 qVguNMZW7R7DsLUV+OfC2TneEX7jJGURdmG4ohfFuItg9f4JPbkFMFOaF
 fdh56LlpXan5O636NrqI8QgsqlHS0G0CXcjkA2ov7hTpt4IkqlpZz1ELz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="358359"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="358359"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 07:51:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823241934"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823241934"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 07:51:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Feb 2024 17:51:02 +0200
Date: Fri, 2 Feb 2024 17:51:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [RFC 2/4] drm/i915/dp: refactor DP MST detection and configuration
Message-ID: <Zb0PZldnyLe59Vb0@intel.com>
References: <cover.1706882590.git.jani.nikula@intel.com>
 <d789334e1f31ba6eff1c7e2913e6a03cea8227e7.1706882591.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d789334e1f31ba6eff1c7e2913e6a03cea8227e7.1706882591.git.jani.nikula@intel.com>
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

On Fri, Feb 02, 2024 at 04:05:32PM +0200, Jani Nikula wrote:
> Currently we've split MST capability detection in two places,
> intel_dp_can_mst() and intel_dp_configure_mst(). They check essentially
> the same things.
> 
> Move bulk of the work, including logging, to intel_dp_can_mst() and
> rename it intel_dp_mst_detect(). Set intel_dp->is_mst there to avoid
> duplicate work.

This seems confusing. is_mst is supposed to reflect the state
of the topology manager, nothing more.

> 
> Rename intel_dp_configure_mst() to intel_dp_mst_configure(), and only
> set the topology manager state there.
> 
> The main functional difference is that the DP_MSTM_CAP DPCD register is
> now only read once at detect, unconditionally, and the MST support is
> always logged. Everything else should remain the same.
> 
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
> Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 36 ++++++++++---------------
>  1 file changed, 14 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7af09f2c008d..e0b8ee6bde79 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4004,23 +4004,15 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
>  					   intel_dp->downstream_ports) == 0;
>  }
>  
> -static bool
> -intel_dp_can_mst(struct intel_dp *intel_dp)
> +static bool intel_dp_mst_detect(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd) == DP_MST_CAPABLE;
>  
> -	return i915->display.params.enable_dp_mst &&
> +	intel_dp->is_mst = i915->display.params.enable_dp_mst &&
>  		intel_dp_mst_source_support(intel_dp) &&
> -		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd) == DP_MST_CAPABLE;
> -}
> -
> -static void
> -intel_dp_configure_mst(struct intel_dp *intel_dp)
> -{
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> -	struct intel_encoder *encoder =
> -		&dp_to_dig_port(intel_dp)->base;
> -	bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd) == DP_MST_CAPABLE;
> +		sink_can_mst;
>  
>  	drm_dbg_kms(&i915->drm,
>  		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s\n",
> @@ -4029,14 +4021,14 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>  		    str_yes_no(sink_can_mst),
>  		    str_yes_no(i915->display.params.enable_dp_mst));
>  
> -	if (!intel_dp_mst_source_support(intel_dp))
> -		return;
> -
> -	intel_dp->is_mst = sink_can_mst &&
> -		i915->display.params.enable_dp_mst;
> +	return intel_dp->is_mst;
> +}
>  
> -	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
> -					intel_dp->is_mst);
> +static void intel_dp_mst_configure(struct intel_dp *intel_dp)
> +{
> +	if (intel_dp_mst_source_support(intel_dp))
> +		drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
> +						intel_dp->is_mst);
>  }
>  
>  static bool
> @@ -5387,7 +5379,7 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
>  		connector_status_connected : connector_status_disconnected;
>  	}
>  
> -	if (intel_dp_can_mst(intel_dp))
> +	if (intel_dp_mst_detect(intel_dp))
>  		return connector_status_connected;
>  
>  	/* If no HPD, poke DDC gently */
> @@ -5706,7 +5698,7 @@ intel_dp_detect(struct drm_connector *connector,
>  
>  	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
>  
> -	intel_dp_configure_mst(intel_dp);
> +	intel_dp_mst_configure(intel_dp);
>  
>  	/*
>  	 * TODO: Reset link params when switching to MST mode, until MST
> -- 
> 2.39.2

-- 
Ville Syrj�l�
Intel
