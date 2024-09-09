Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE521971C5C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 16:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9230E10E5A4;
	Mon,  9 Sep 2024 14:21:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cx21z8pO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53FEE10E5A4;
 Mon,  9 Sep 2024 14:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725891679; x=1757427679;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DYNIT3ziLaCFLgt2ztRyDnaUA72Tl/ZoDHM+ndYicGw=;
 b=cx21z8pO9yDs95kp43KRkJSzs6SqVYsQ4yF7IrUyR3zk1+zMHltjWlYE
 l5aUV7wRvlqn29XfqdBr3vHFnafboRLPy9aP+0u1h9bfqG1k57qwtaMJU
 zkeCnai2cxkjP1Y+DjyOd7GAwvcC+n+xYyeDWQBCc/wnQOpUwbCEkrdpx
 OLjoS5HvxPgK75+2ovgU7kfEY9s+d+lQcv0FMdx0w+fZFsvCrtsoJF8kj
 sJBWJE4v6I20ui9tzaqecq1fKds89LQZ95ofQXxZZ3UJACFlTOeI4qKpL
 QNcu4D9hXEcnYilx9P5NPed0y3bzDJCsCpjSy3YaAYsOHIOeJdi/i0Oma Q==;
X-CSE-ConnectionGUID: RikjWsXUS1mtRdw4iVhutA==
X-CSE-MsgGUID: eZIY3AUBRPG5jF5t2vI6ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24741933"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="24741933"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 07:21:19 -0700
X-CSE-ConnectionGUID: 0w61ao62Qn6gzD//XipGPA==
X-CSE-MsgGUID: keAOrsjHQeaVCAPW/ZNpUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="66742822"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Sep 2024 07:21:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Sep 2024 17:21:14 +0300
Date: Mon, 9 Sep 2024 17:21:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/8] drm/i915/pps: only touch the vlv_ members on
 VLV/CHV
Message-ID: <Zt8EWvR4lkkNphHG@intel.com>
References: <cover.1725883885.git.jani.nikula@intel.com>
 <8e2c63ae4a69f7ea8ca33ef500818f4ca680b468.1725883885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8e2c63ae4a69f7ea8ca33ef500818f4ca680b468.1725883885.git.jani.nikula@intel.com>
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

On Mon, Sep 09, 2024 at 03:15:37PM +0300, Jani Nikula wrote:
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
> index bc1ec9440a4d..7e36a7820fec 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6843,8 +6843,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  		return false;
>  
>  	intel_dp->reset_link_params = true;
> -	intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
> -	intel_dp->pps.vlv_active_pipe = INVALID_PIPE;
>  
>  	/* Preserve the current hw state. */
>  	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
> @@ -6871,8 +6869,10 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
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
> index b7c73842ea16..2fb32ac1b7cf 100644
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
>  
>  		if (encoder->type != INTEL_OUTPUT_EDP)
>  			continue;
>  
> -		if (DISPLAY_VER(display) >= 9)
> -			intel_dp->pps.pps_reset = true;
> -		else
> +		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  			intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
> +		else
> +			intel_dp->pps.pps_reset = true;

You are now setting that for all pre-skl except vlv/chv.

>  	}
>  }
>  
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
