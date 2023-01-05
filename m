Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 329CA65EA1B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 12:44:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5DDA10E6F2;
	Thu,  5 Jan 2023 11:44:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8237210E6FA
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 11:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672919048; x=1704455048;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=W7kUp7nShNL0/CIs02hRoUHbw0VI7doOt2H+KLZqVyg=;
 b=iifWMYl7BoCYDuhjmCaRdvzTlT6GFcydkFU/htHJ4tvp8ywa548/UqX7
 9yowEG66rCATNHnMDqFWAKOu1g0KYG0YuiZD4lMvd3sQG9mfuCAcKdHlP
 m3pXZ3oQEQsCgvWyQk9eue4a/hcMAEB1HkwcJGLVk7U9cOwJNxjWyNqB6
 4LOjo/BnVpLMueuklspGViJsTeSFtwfV6+P2SDfg/R4pIRmc5vSeb0hTL
 Sjxqi6MZPzP9/EeTA9XPz4PR3350Hdn0honHl9wtE9CCtt8O3c8/qntId
 Mik8py2THLxlHiIjuk31fzyP/AGGflsRofQZj4EA9AFKLRuYW+w0QLJmn A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="320891237"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="320891237"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 03:44:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="744204878"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="744204878"
Received: from swathish-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.10.152])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 03:44:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221017143038.1748319-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
 <20221017143038.1748319-3-ankit.k.nautiyal@intel.com>
Date: Thu, 05 Jan 2023 13:44:01 +0200
Message-ID: <87k021w6im.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Prune Interlace modes
 for Display >=12
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

On Mon, 17 Oct 2022, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Defeature Display Interlace support.
> Support for interlace modes is removed from Gen 12 onwards.
> Pruning the interlace modes for HDMI for Display >=12.
> Bspec: 50490
>
> v2: Add check for both DP and HDMI. (Ville)
> Get rid of redundant check for interlace mode in modevalid. (Ville)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 4 ++--
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 8 +++++++-
>  2 files changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1f83ddf13928..3dc197a45f16 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2032,7 +2032,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> -	if (HAS_GMCH(dev_priv) &&
> +	if ((HAS_GMCH(dev_priv) || DISPLAY_VER(dev_priv) >= 12) &&

You could just look at connector->interlace_allowed here to avoid
duplicating the conditions.

>  	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		return -EINVAL;
>  
> @@ -5412,7 +5412,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  	drm_connector_init(dev, connector, &intel_dp_connector_funcs, type);
>  	drm_connector_helper_add(connector, &intel_dp_connector_helper_funcs);
>  
> -	if (!HAS_GMCH(dev_priv))
> +	if (!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) < 12)
>  		connector->interlace_allowed = true;
>  
>  	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index e21deb6ef7fa..05ab0a4f6d39 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2244,6 +2244,10 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	if (DISPLAY_VER(dev_priv) >= 12 &&

Same here.

> +	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> +		return -EINVAL;
> +
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_hdmi,
>  							 conn_state);
> @@ -2953,7 +2957,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
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

-- 
Jani Nikula, Intel Open Source Graphics Center
