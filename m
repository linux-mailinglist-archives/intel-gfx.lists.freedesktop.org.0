Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 079DF97C059
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 21:13:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E712510E295;
	Wed, 18 Sep 2024 19:13:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nkWwd+U8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F1C10E295;
 Wed, 18 Sep 2024 19:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726686818; x=1758222818;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eNBnYslySoOGoXOYuYo2s42wWDyOwKG5VmXAOIOY/60=;
 b=nkWwd+U829MTrO0LzT6GxvRy/NaXk6kvW+R86dcX1FDZBb+ZS5yTlvKa
 RydNHpOP8YsXvF091S5hMTPRwNRW/S3v1FdBhOT7xpqZIHVSLdxXPyKnX
 F0M+hM8vRdxdGWCxi4YlPbZ7PKAnD9fkXDEGJWIX+xLoWWVfTusNRdfvo
 WbMgGKiuuPqKSEmHTfrK9lSMmwwpSQwDY3dN8PSVu/MCUmtGb9bcayrYp
 H4oCfk3hdp1E4Q0Lbum626qhDXM00T+qK712iiE+exHJUHVnF7S9iX3IX
 TZOlC/NRAzmXSB+MXCrvnFfttWUp8NSracMpmfavf+uRXdHWCYq61A+kl w==;
X-CSE-ConnectionGUID: h9C8ZQhpS7SMT/cUXzKpnw==
X-CSE-MsgGUID: ncksOOFsRp+d9Ut88hUcsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25817713"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25817713"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 12:13:38 -0700
X-CSE-ConnectionGUID: hNdPKWzNRPelIkJF4KUB4Q==
X-CSE-MsgGUID: UmAadNHxT/6c3vY+VlyxGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69788121"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 12:13:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 22:13:35 +0300
Date: Wed, 18 Sep 2024 22:13:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 3/9] drm/i915/pps: only touch the vlv_ members on
 VLV/CHV
Message-ID: <ZusmX8cRJHIKRAx8@intel.com>
References: <cover.1726681620.git.jani.nikula@intel.com>
 <158c7b30e56d22aa3f9c9e51e87b9d89687d74d5.1726681620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <158c7b30e56d22aa3f9c9e51e87b9d89687d74d5.1726681620.git.jani.nikula@intel.com>
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

On Wed, Sep 18, 2024 at 08:47:43PM +0300, Jani Nikula wrote:
> While the struct intel_pps vlv_pps_pipe and vlv_active_pipe members are
> only relevant for VLV/CHV, we still initialize them on all platforms and
> check them on BXT/GLK. Wrap all access inside VLV/CHV checks for
> consistency.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  |  6 +++---
>  drivers/gpu/drm/i915/display/intel_pps.c | 11 ++++++-----
>  2 files changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9dd86523012f..9f908dbd45ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6867,8 +6867,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  		return false;
>  
>  	intel_dp->reset_link_params = true;
> -	intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
> -	intel_dp->pps.vlv_active_pipe = INVALID_PIPE;
>  
>  	/* Preserve the current hw state. */
>  	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
> @@ -6895,8 +6893,10 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  	intel_dp_set_default_sink_rates(intel_dp);
>  	intel_dp_set_default_max_sink_lane_count(intel_dp);
>  
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +		intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
>  		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
> +	}
>  
>  	intel_dp_aux_init(intel_dp);
>  	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 2d8d911988ab..649dc6ad2278 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -472,16 +472,17 @@ void intel_pps_reset_all(struct intel_display *display)
>  	for_each_intel_dp(display->drm, encoder) {
>  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  
> -		drm_WARN_ON(display->drm,
> -			    intel_dp->pps.vlv_active_pipe != INVALID_PIPE);
> +		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +			drm_WARN_ON(display->drm,
> +				    intel_dp->pps.vlv_active_pipe != INVALID_PIPE);

Might make sense to just split this whole function
into vlv/chv vs. bxt/glk versions. It's called from
platform specific code only so each caller knows
which one it wants.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  
>  		if (encoder->type != INTEL_OUTPUT_EDP)
>  			continue;
>  
> -		if (DISPLAY_VER(display) >= 9)
> -			intel_dp->pps.bxt_pps_reset = true;
> -		else
> +		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  			intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
> +		else
> +			intel_dp->pps.bxt_pps_reset = true;
>  	}
>  }
>  
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
