Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B658871883
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 09:47:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF28112952;
	Tue,  5 Mar 2024 08:47:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H0JCLgqV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22233112952
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 08:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709628440; x=1741164440;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Hf1T3HUXN7kPM58ISu9CTBrtwclTTilWwDB48B47E08=;
 b=H0JCLgqVphR/uft3wMpobETaI16lRDrsVCv4g18BXSOnpCDv4jYq35Va
 O0RjatLCIBwkEvAqzApdIOCK8dg36eWvkQnbtWjhK3jBN6h2znWXZyK10
 XW2eSVKqK2tmvhTtl3XnOS/772FyyJz3XWhq4VEd5h6PrWx0GE02t8bMc
 /L+iPy3PWBzE2srhD5A3zj3QWvGzHgnOwIDzp234rfHMVhT6QQrJ1XYg4
 /QISVRzlxHLj7z4IBlUIrtj8nT2GenYNfurkj3+QePzR+Fjp/oyBj0gDU
 1dY/cFXE4Ai5yH6S4XsWkC8PwONvTKsK1OBc1BdDhVW1+8OzLH/OfwM4i w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7977893"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="7977893"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:47:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9205420"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:47:18 -0800
Date: Tue, 5 Mar 2024 10:47:15 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/8] drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
Message-ID: <ZebcE5hMqJczsa5C@intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
 <20240301143600.1334-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240301143600.1334-4-ville.syrjala@linux.intel.com>
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

On Fri, Mar 01, 2024 at 04:35:55PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Extract the "not-MST" stuff from intel_ddi_post_disable() so that
> the whole thing isn't so cluttered.
> 
> The bigjoiner slave handling was outside of the !MST check,
> but it really should have been inside it as its the counterpart
> to the master handling inside the check. So we pull that
> in as well. There is no functional change here as we don't
> currently support bigjoiner+MST anyway.

Had same idea. Was really wondering why we handle it that way here.
But I guess for MST case, we need to add similar handling then?

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 36 +++++++++++++++---------
>  1 file changed, 22 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 0e5834f8af6e..f3f8ecf1a87e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3095,28 +3095,26 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
>  	intel_dp_dual_mode_set_tmds_output(intel_hdmi, false);
>  }
>  
> -static void intel_ddi_post_disable(struct intel_atomic_state *state,
> -				   struct intel_encoder *encoder,
> -				   const struct intel_crtc_state *old_master_crtc_state,
> -				   const struct drm_connector_state *old_conn_state)
> +static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
> +					       struct intel_encoder *encoder,
> +					       const struct intel_crtc_state *old_master_crtc_state,
> +					       const struct drm_connector_state *old_conn_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_crtc *slave_crtc;
>  
> -	if (!intel_crtc_has_type(old_master_crtc_state, INTEL_OUTPUT_DP_MST)) {
> -		intel_crtc_vblank_off(old_master_crtc_state);
> +	intel_crtc_vblank_off(old_master_crtc_state);
>  
> -		intel_disable_transcoder(old_master_crtc_state);
> +	intel_disable_transcoder(old_master_crtc_state);
>  
> -		intel_ddi_disable_transcoder_func(old_master_crtc_state);
> +	intel_ddi_disable_transcoder_func(old_master_crtc_state);
>  
> -		intel_dsc_disable(old_master_crtc_state);
> +	intel_dsc_disable(old_master_crtc_state);
>  
> -		if (DISPLAY_VER(dev_priv) >= 9)
> -			skl_scaler_disable(old_master_crtc_state);
> -		else
> -			ilk_pfit_disable(old_master_crtc_state);
> -	}
> +	if (DISPLAY_VER(dev_priv) >= 9)
> +		skl_scaler_disable(old_master_crtc_state);
> +	else
> +		ilk_pfit_disable(old_master_crtc_state);
>  
>  	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
>  					 intel_crtc_bigjoiner_slave_pipes(old_master_crtc_state)) {
> @@ -3128,6 +3126,16 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>  		intel_dsc_disable(old_slave_crtc_state);
>  		skl_scaler_disable(old_slave_crtc_state);
>  	}
> +}
> +
> +static void intel_ddi_post_disable(struct intel_atomic_state *state,
> +				   struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *old_master_crtc_state,
> +				   const struct drm_connector_state *old_conn_state)
> +{
> +	if (!intel_crtc_has_type(old_master_crtc_state, INTEL_OUTPUT_DP_MST))
> +		intel_ddi_post_disable_hdmi_or_sst(state, encoder,
> +						   old_master_crtc_state, old_conn_state);
>  
>  	/*
>  	 * When called from DP MST code:
> -- 
> 2.43.0
> 
