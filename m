Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 970E5971C82
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 16:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4010A10E0A5;
	Mon,  9 Sep 2024 14:28:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EWg7fEuH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C132A10E0A5;
 Mon,  9 Sep 2024 14:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725892099; x=1757428099;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cl6CidzYDscG4gBTl6dlkFZo/FJboto+uOZIB8bLZbw=;
 b=EWg7fEuHWZmccPVPuXKdO1m+OG//w1J/NYEC55qACfaC3VTQ8Wr87fux
 VTJNN2Iu0M9mu+iMu85OOEXbmbZPF01cfY3H3ZM2gam//EBVG00wW6qex
 FN6W32HVYZp+ZvFSiW+oYb8/GUIsHuGSu7bd9o8pEXWz+b10ysqtk+7rO
 h+GuFnfovBSl1ap+Cevpdrw4OHmY0BH4p4nwB5irpAasf8AFo2swxLYUo
 xFUtW6Bx5oTfxTYH0dbsMUSWxdFRGDvi5jBPMcliiB+tDyC/YbaWIxTF4
 3SOzCFUF/J1cKtr7rNIj189PTmFutk4AlrnvGrzvXq50Jj2/7tniHASEa Q==;
X-CSE-ConnectionGUID: w51OLoV7TVWy7e49PYy+Yw==
X-CSE-MsgGUID: CrKGkZZzSvOePKDJCL/YrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24742765"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="24742765"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 07:27:47 -0700
X-CSE-ConnectionGUID: /B9cWlkuSIK5vsmUYIFqCQ==
X-CSE-MsgGUID: Zn1kXiQWTEKdyK/lRYop/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="66743586"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Sep 2024 07:27:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Sep 2024 17:27:44 +0300
Date: Mon, 9 Sep 2024 17:27:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 6/8] drm/i915/pps: rename vlv_pps_init() to
 vlv_pps_port_enable()
Message-ID: <Zt8F4D_exqURrQXS@intel.com>
References: <cover.1725883885.git.jani.nikula@intel.com>
 <6123d8aa71f352cfe58cf2285c0bb19d58d999e0.1725883885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6123d8aa71f352cfe58cf2285c0bb19d58d999e0.1725883885.git.jani.nikula@intel.com>
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

On Mon, Sep 09, 2024 at 03:15:41PM +0300, Jani Nikula wrote:
> Follow the naming for vlv_pps_port_disable(), as these are counterparts.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_pps.c | 5 +++--
>  drivers/gpu/drm/i915/display/intel_pps.h | 4 ++--
>  3 files changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index e3db1cba11c9..796ec2244a4d 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -690,7 +690,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
>  
>  	with_intel_pps_lock(intel_dp, wakeref) {
>  		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -			vlv_pps_init(encoder, pipe_config);
> +			vlv_pps_port_enable(encoder, pipe_config);

The disable counterpart has the lock on the inside, so this could
do with an _unlocked() suffix to make the situation a bit clearer.

>  
>  		intel_dp_enable_port(intel_dp, pipe_config);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 33fae565588a..c91d14face20 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1227,8 +1227,9 @@ void vlv_pps_pipe_reset(struct intel_dp *intel_dp)
>  		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
>  }
>  
> -void vlv_pps_init(struct intel_encoder *encoder,
> -		  const struct intel_crtc_state *crtc_state)
> +/* Call on all DP, not just eDP */
> +void vlv_pps_port_enable(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index 58df4cd3addd..b57a0c448e6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -48,8 +48,8 @@ void intel_pps_reset_all(struct intel_display *display);
>  
>  void vlv_pps_pipe_init(struct intel_dp *intel_dp);
>  void vlv_pps_pipe_reset(struct intel_dp *intel_dp);
> -void vlv_pps_init(struct intel_encoder *encoder,
> -		  const struct intel_crtc_state *crtc_state);
> +void vlv_pps_port_enable(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state);
>  void vlv_pps_port_disable(struct intel_encoder *encoder,
>  			  const struct intel_crtc_state *crtc_state);
>  
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
