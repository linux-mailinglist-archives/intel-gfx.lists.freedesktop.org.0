Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2177C98561E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 11:12:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD90010E7D6;
	Wed, 25 Sep 2024 09:12:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hsw9qm64";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFC7A10E7D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 09:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727255536; x=1758791536;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=j36r9Bxn6Dh2XyyWJsh0UxZNbRyLu4SkQzGebW+5sIw=;
 b=hsw9qm64xWVgHbM5toyLIhRwaMO5Mx9QAYarmi1iCgHv48zd5KMcuS8x
 7kJrs67X9Vmq9MhCHJc69OGlsJekKsYIzMT2zE+BvkkkLxPbaB2ZZg+Lu
 1tIRFe2LREGbKmCFj1iJkUf2PROGnKvhIXa4kB5/1E3gMDLzQ7aKU8Lx5
 XH0z64CEcVeY2O5mjJ5yKXV8dlbkINuDabvNnvCoI52PYwF0/q3UUUETY
 8neIvtHy3Sktm5CLw9O5DlMgIEgbX1msfCFhEUs3FbbsToQXxmImJGvWI
 Gvhzv1oTJ6JmZAHZq4ZNlcgYGp2PG2xezpbyv7TYf/q0qC1AHxGjd27Zm Q==;
X-CSE-ConnectionGUID: kzlgyt0QQ/qZh7PFgz6sFQ==
X-CSE-MsgGUID: TzXUjt0iRWytKJTVOrDL4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="30001417"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="30001417"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 02:12:15 -0700
X-CSE-ConnectionGUID: 5VPlrYItSSuYlnTOxnmx/A==
X-CSE-MsgGUID: bw7CXy8vSOCtQjJWSnhqLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="109168335"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 02:12:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/display: Add gmch_panel_fitting in all
 encoders
In-Reply-To: <20240925063032.2311796-3-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240925063032.2311796-1-nemesa.garg@intel.com>
 <20240925063032.2311796-3-nemesa.garg@intel.com>
Date: Wed, 25 Sep 2024 12:12:10 +0300
Message-ID: <87r0982j2t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 25 Sep 2024, Nemesa Garg <nemesa.garg@intel.com> wrote:
> For all encoders add gmch_panel_fitting and remove
> pch_panel_fitting as it will be called from pipe_config
> after joiner calculation is done.
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c    | 8 +++++---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 5 ++---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_lvds.c | 8 +++++---
>  drivers/gpu/drm/i915/display/vlv_dsi.c    | 8 +++++---
>  5 files changed, 19 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 293efc1f841d..cfbfbc815d8c 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1641,9 +1641,11 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	ret = intel_panel_fitting(pipe_config, conn_state);
> -	if (ret)
> -		return ret;
> +	if (HAS_GMCH(i915)) {

ICL DSI code is only used when HAS_DDI() is true, but HAS_GMCH() and
HAS_DDI() are never both true at the same time.

> +		ret = intel_gch_panel_fitting(pipe_config, conn_state);
> +		if (ret)
> +			return ret;
> +	}
>  
>  	adjusted_mode->flags = 0;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a1fcedfd404b..480cb8dc2948 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3049,9 +3049,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
> -	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> -		ret = intel_panel_fitting(pipe_config, conn_state);
> +	if (HAS_GMCH(dev_priv)) {
> +		ret = intel_gch_panel_fitting(pipe_config, conn_state);
>  		if (ret)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index cd9ee171e0df..90b4664f66f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2345,8 +2345,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  		return ret;
>  	}
>  
> -	if (intel_hdmi_is_ycbcr420(pipe_config)) {
> -		ret = intel_panel_fitting(pipe_config, conn_state);
> +	if (HAS_GMCH(display)) {
> +		ret = intel_gch_panel_fitting(pipe_config, conn_state);
>  		if (ret)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index fb4ed9f7855b..c28979b4ac15 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -463,9 +463,11 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> -	ret = intel_panel_fitting(crtc_state, conn_state);
> -	if (ret)
> -		return ret;
> +	if (HAS_GMCH(i915)) {
> +		ret = intel_gch_panel_fitting(crtc_state, conn_state);
> +		if (ret)
> +			return ret;
> +	}
>  
>  	/*
>  	 * XXX: It would be nice to support lower refresh rates on the
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index d21f3fb39706..753a883c30c2 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -282,9 +282,11 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	ret = intel_panel_fitting(pipe_config, conn_state);
> -	if (ret)
> -		return ret;
> +	if (HAS_GMCH(dev_priv)) {
> +		ret = intel_gch_panel_fitting(pipe_config, conn_state);
> +		if (ret)
> +			return ret;
> +	}
>  
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;

-- 
Jani Nikula, Intel
