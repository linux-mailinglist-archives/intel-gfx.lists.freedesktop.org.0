Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3754465EAFC
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 13:49:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1940410E706;
	Thu,  5 Jan 2023 12:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3EB710E127
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 12:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672922965; x=1704458965;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=MAH8bQ22rVl6XDpOREwgTiJ26WVQS4VsR8EBQb3Hyws=;
 b=LFh4oCAh8N1kVfbj13zbE8RHyBkCInVSxPhFiY0Wjd3yN/BN4Yd9fLOJ
 wmeE3w6SRkghCfk3SnHXX+K3CpBq/t8lOfaSkOKLbZnG+e/QzgjzbE9HB
 wEE+nyA9wQ4phcRtQ0g63e5aXLEkpNA17l1ud8bGrpr+H3GbHfVrx0AGn
 W3rfxAYtpEoKbr9oknxlskMDkThse+EiDSIHAmV03/1xfywJqBjnuHVBS
 fACimYle8dDfDNs/AsnA7GZUHV0SNiNDyfNcpyizA36XFZMpcoC0SjoSJ
 W0JO1NqppY2mtSEe9umpN5Jg2ZamD5encupzXg9TMdOCIweoIScLzf22R g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="324195739"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="324195739"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 04:49:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="900920307"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="900920307"
Received: from swathish-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.10.152])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 04:49:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230105124125.1129653-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221017143038.1748319-3-ankit.k.nautiyal@intel.com>
 <20230105124125.1129653-1-ankit.k.nautiyal@intel.com>
Date: Thu, 05 Jan 2023 14:49:22 +0200
Message-ID: <878rihw3hp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/display: Prune Interlace
 modes for Display >=12
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

On Thu, 05 Jan 2023, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Defeature Display Interlace support.
> Support for interlace modes is removed from Gen 12 onwards.
> Pruning the interlace modes for HDMI for Display >=12.
> Bspec: 50490
>
> v2: Add check for both DP and HDMI. (Ville)
> Get rid of redundant check for interlace mode in modevalid. (Ville)
>
> v3: Simplify the condition to avoid interlace modes. (Jani)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 4 ++--
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 8 +++++++-
>  2 files changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a9ebc73d3b87..c03a11173dc8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2092,7 +2092,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> -	if (HAS_GMCH(dev_priv) &&
> +	if (!connector->base.interlace_allowed &&
>  	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		return -EINVAL;
>  
> @@ -5435,7 +5435,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  	drm_connector_init(dev, connector, &intel_dp_connector_funcs, type);
>  	drm_connector_helper_add(connector, &intel_dp_connector_helper_funcs);
>  
> -	if (!HAS_GMCH(dev_priv))
> +	if (!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) < 12)
>  		connector->interlace_allowed = true;
>  
>  	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index b4323303baba..6a2ee342eab5 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2255,6 +2255,10 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	if (!connector->interlace_allowed &&
> +	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> +		return -EINVAL;
> +
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_hdmi_sink =
>  		intel_has_hdmi_sink(intel_hdmi, conn_state) &&
> @@ -2956,7 +2960,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
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
