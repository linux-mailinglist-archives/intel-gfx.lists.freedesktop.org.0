Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 918295FD43B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 07:23:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DEB610E422;
	Thu, 13 Oct 2022 05:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC80610E422
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 05:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665638612; x=1697174612;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ooQbuxtXVLcLUpHjksRHS2+gZG8sVRLDfRWHSx+/zh8=;
 b=kfx+CcDUtjGNzA5IG9wMCrW0qAnyIbjD1hreOUAjkxvxkzEuw8o30flq
 zXjGs/50H2x/WtuJ9UK7UT3HSYdqZhrRVUUZNnq1Ov6xTHppRnRv3vSyn
 9Zjjn8V9Q6ecrVHjMbtTTFKj91aG2QYoVi4TRsotB48pp610aQkSqnYd5
 yZX3dicHXyrI2zWHa8aBM2tAgH8CkFn82UKMZ7ve4JlMNp66eAXXrIunx
 5IYCWk+9W11jfr5ylS9/b/2uo81KnKsCURaTJbX92ikBJ5F4qmlB8Vl7u
 hxBYaS+qiu07UP+4I+DegvzwjZfA0RGZ0iEyWWtcpu1kTkYcGM8vLwYEq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="303720083"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="303720083"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 22:23:32 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="629381942"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="629381942"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 22:23:31 -0700
Date: Wed, 12 Oct 2022 22:24:34 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <20221013052434.GA2013514@mdnavare-mobl1.jf.intel.com>
References: <20221013051124.1093410-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221013051124.1093410-1-ankit.k.nautiyal@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune Interlaced modes for
 Display >= 12
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 13, 2022 at 10:41:24AM +0530, Ankit Nautiyal wrote:
> Defeature Display Interlace support.
> Support for Interlace modes is removed from Gen 12 onwards.
> For DP we do not support interlace modes (except for very old
> platforms). Pruning the interlaced modes for HDMI for Display >=12.
> Bspec: 50490
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Looks good to me

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 93519fb23d9d..791bfb062c49 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1990,6 +1990,9 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>  	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return MODE_NO_DBLESCAN;
>  
> +	if (DISPLAY_VER(dev_priv) >= 12 && mode->flags & DRM_MODE_FLAG_INTERLACE)
> +		return MODE_NO_INTERLACE;
> +
>  	if ((mode->flags & DRM_MODE_FLAG_3D_MASK) == DRM_MODE_FLAG_3D_FRAME_PACKING)
>  		clock *= 2;
>  
> @@ -2247,6 +2250,10 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	if (DISPLAY_VER(dev_priv) >= 12 &&
> +	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> +		return -EINVAL;
> +
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_hdmi,
>  							 conn_state);
> @@ -2956,7 +2963,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>  				    ddc);
>  	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
>  
> -	connector->interlace_allowed = true;
> +	if (DISPLAY_VER(dev_priv) < 12)
> +		connector->interlace_allowed = true;
> +
>  	connector->stereo_allowed = true;
>  
>  	if (DISPLAY_VER(dev_priv) >= 10)
> -- 
> 2.25.1
> 
