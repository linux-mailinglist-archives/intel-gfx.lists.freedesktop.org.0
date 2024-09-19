Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 518CD97CB87
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 17:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D3510E71B;
	Thu, 19 Sep 2024 15:18:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NKr+jkuB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB72210E71B;
 Thu, 19 Sep 2024 15:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726759101; x=1758295101;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jo5ZU7DojPcjG0zzzIGtNzqMHu8nMnGcSWBtEz0U9Xw=;
 b=NKr+jkuBa/OqsD9rWHY4WE2Iu1OaGYNQo6/PUfY4m6vldxToS/gbMFe4
 mniO28k8rOYqs7kkRXoz8bzlfTK0DUq1T+7cQLO//33RLs3lJNqJSeq4i
 gIYLvzKBYjKnH70JoUC5yqVwutJQ2G5Tik0hVekC4WKJGG1vZrLRk1Acq
 IOVYkUnovbNnwSPRjuoQkda8h6gYgu2pjOoYm2V6vyQqRdlakzdhWPr7y
 FtSO0vmrhOOnFONab55SNd10TvK/T2iYOWqFafFEWV68VQsIqlZd1ZMuh
 MXGbk+olCO8EWvvut9FRp8Kb8iuEBkx1Q5oURERgD4DL/ZN33pvz5d3/I A==;
X-CSE-ConnectionGUID: LxmwMI0MSj2Oer6y7QfYmA==
X-CSE-MsgGUID: Y/G5dTUKQqOuFrFjl8vu7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25874668"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25874668"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 08:18:20 -0700
X-CSE-ConnectionGUID: QfpptyQ5Rs6Rn1ffXsHSiQ==
X-CSE-MsgGUID: dSd8RzItQ3+scL+1pKDQtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70093083"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 08:18:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 18:18:17 +0300
Date: Thu, 19 Sep 2024 18:18:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 07/15] drm/i915: Split current joiner hw state readout
Message-ID: <ZuxAufMczyfSMX6B@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-8-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 18, 2024 at 08:13:35PM +0530, Ankit Nautiyal wrote:
> We need to add a new sanity checks and also do
> some preparations for adding ultrajoiner hw state readout.
> Lets first split reading of the uncompressed joiner and bigjoiner
> bit masks into separate functions.
> 
> v2: Fixed checkpatch warnings (Ankit)
> v3: Use struct intel_display in the new functions. (Ankit)
> v4: Use check for bigjoiner before reading the regs. (Ville)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 74 +++++++++++++++-----
>  1 file changed, 55 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7cdc12188df9..28447d4c8934 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3591,26 +3591,57 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
>  	return tmp & TRANS_DDI_FUNC_ENABLE;
>  }
>  
> -static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> -				 u8 *primary_pipes, u8 *secondary_pipes)
> +static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
> +					      u8 *primary_pipes, u8 *secondary_pipes)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_crtc *crtc;
>  
>  	*primary_pipes = 0;
>  	*secondary_pipes = 0;
>  
> -	if (!HAS_BIGJOINER(dev_priv))
> +	if (!HAS_UNCOMPRESSED_JOINER(display))
>  		return;
>  
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
> -					 joiner_pipes(dev_priv)) {
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
> +					 joiner_pipes(i915)) {
>  		enum intel_display_power_domain power_domain;
>  		enum pipe pipe = crtc->pipe;
>  		intel_wakeref_t wakeref;
>  
> -		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
> -		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
> -			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
> +		power_domain = POWER_DOMAIN_PIPE(pipe);
> +		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
> +			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
> +
> +			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
> +				*primary_pipes |= BIT(pipe);
> +			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
> +				*secondary_pipes |= BIT(pipe);
> +		}
> +	}
> +}
> +
> +static void enabled_bigjoiner_pipes(struct intel_display *display,
> +				    u8 *primary_pipes, u8 *secondary_pipes)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	struct intel_crtc *crtc;
> +
> +	*primary_pipes = 0;
> +	*secondary_pipes = 0;
> +
> +	if (!HAS_BIGJOINER(display))
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
> +			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
>  
>  			if (!(tmp & BIG_JOINER_ENABLE))
>  				continue;
> @@ -3620,20 +3651,25 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  			else
>  				*secondary_pipes |= BIT(pipe);
>  		}
> +	}
> +}
>  
> -		if (!HAS_UNCOMPRESSED_JOINER(dev_priv))
> -			continue;
> +static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> +				 u8 *primary_pipes, u8 *secondary_pipes)
> +{
> +	struct intel_display *display = to_intel_display(&dev_priv->drm);
> +	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
> +	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
>  
> -		power_domain = POWER_DOMAIN_PIPE(pipe);
> -		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
> -			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
> +	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
> +					  &secondary_uncompressed_joiner_pipes);
>  
> -			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
> -				*primary_pipes |= BIT(pipe);
> -			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
> -				*secondary_pipes |= BIT(pipe);
> -		}
> -	}
> +	enabled_bigjoiner_pipes(display, &primary_bigjoiner_pipes,
> +				&secondary_bigjoiner_pipes);
> +
> +	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
> +
> +	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
>  
>  	/* Joiner pipes should always be consecutive primary and secondary */
>  	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
