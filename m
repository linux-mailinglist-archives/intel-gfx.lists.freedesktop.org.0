Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D015FD7CC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 12:31:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECB7B10E212;
	Thu, 13 Oct 2022 10:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 515F610E7E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 10:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665657055; x=1697193055;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vcEmQuQCNkJZZprt3Pma6PTbeJeuoNoVIpj4Bhfamac=;
 b=LOIAs67qSzZDjIHDl+0wuY6Dl5Qp91jOAH4giAm6L4SUrxYJW3qpTmYu
 nV7VCX5hC9lmhcwAoNOjglYvZAM+LfZVfXxA5s3Nb6HTDgjPI/vQlPd9j
 UDzvOas5z9m3jw1sh7OD4wijZajyUIKgxZEEYwQeKXg7WnSYDuWx15n9d
 4mz50gAeCGmUORg7nQAih3pNYy8CaJ4bQX2UStb2wptMeo9PExJRlT3w1
 rM+u0DuijyV2XV1EuNT8EGxYrk35TaI/F9/C1WxQWq4YGHZTAln9vsfAE
 0WnN1fWcZXCAHJD+VmYkM/Qxab/v+puyVoNA0Ez02j4YnNYBhZrlE3Z1o w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="303783071"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="303783071"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 03:30:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="658131135"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="658131135"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 13 Oct 2022 03:30:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Oct 2022 13:30:49 +0300
Date: Thu, 13 Oct 2022 13:30:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <Y0fo2VO+NUocRJtK@intel.com>
References: <20221013051124.1093410-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221013051124.1093410-1-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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
> platforms).

Yes we do. Specifically G4X/VLV/CHV do not support it,
everything else does.

> Pruning the interlaced modes for HDMI for Display >=12.
> Bspec: 50490

The tagging there seems borked. Only ADLS shows it as not supported.

> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
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

These are pointless if the connector doesn't declare interlace_allowed
anyway.

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

-- 
Ville Syrjälä
Intel
