Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8501AA4EC80
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 19:56:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E56710E170;
	Tue,  4 Mar 2025 18:56:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SYQ1wNBV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DBD10E052;
 Tue,  4 Mar 2025 18:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741114582; x=1772650582;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SqLoftv92ccfGcZN9OeOG3c/wfYL7/jedjTylVOlgak=;
 b=SYQ1wNBV+iAUZ/3hybuiUuYldSOC8J6gtEMAOl31w+HN+mv+4VAH+AM1
 7kqDoNe92DizWhpXQopYxBNWsEGKPBLNjYKnfLG45VxisBuLFJczmJGR8
 w+EUqV0FVpf4tXKCFgMQGUwur0/nNFgrhKNa9a/RYjgwdLt8vRcW7OYAF
 9Hj4cSbocN5TWRtiQBT9nWCuhiSyCZtYvMwKtjX1LH4V65ZlIDzE2m685
 xkA9CtAW0SfLpROnweSvMFeBTDvCp/B2c5kkBvKijvs1T7KaQfr+7gRcK
 FDqxzUYSVnyKjoij3QOnpsclQmfkge8UDFwP9cyH9d2x0Z3DpZ2FR8tgD Q==;
X-CSE-ConnectionGUID: xenNSDhhQf++oEbqZDX4Mw==
X-CSE-MsgGUID: xtAaXTjWQg6Drmz2R8AO2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42181594"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="42181594"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 10:56:21 -0800
X-CSE-ConnectionGUID: /b46bjVHSPK4l/B5SuwxOg==
X-CSE-MsgGUID: gdxKtmSCR/qSJHUe7U/a6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123661491"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 04 Mar 2025 10:56:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Mar 2025 20:56:17 +0200
Date: Tue, 4 Mar 2025 20:56:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 18/22] drm/i915/display: Use fixed rr timings in
 intel_set_transcoder_timings_lrr()
Message-ID: <Z8dM0XNVzXeHX_ow@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
 <20250304081948.3177034-19-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304081948.3177034-19-ankit.k.nautiyal@intel.com>
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

On Tue, Mar 04, 2025 at 01:49:44PM +0530, Ankit Nautiyal wrote:
> To have Guardband/Pipeline_full reconfigured seamlessly, move the
> guardband and pipeline_full from intel_pipe_config_compare() to fastboot
> exception.
> Update the intel_set_transcoder_timings_lrr() function to use
> fixed refresh rate timings for platforms which always use
> VRR timing generator.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++--
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 1 -
>  drivers/gpu/drm/i915/display/intel_vrr.h     | 1 +
>  3 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3e8ceafcbbb4..c31a87d8afd3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2768,6 +2768,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
> +
> +	intel_vrr_set_fixed_rr_timings(crtc_state);
> +	intel_vrr_transcoder_enable(crtc_state);
>  }
>  
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
> @@ -5418,8 +5421,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>  	}
>  
> -	PIPE_CONF_CHECK_I(vrr.pipeline_full);
> -	PIPE_CONF_CHECK_I(vrr.guardband);
> +	if (!fastset && !allow_vblank_delay_fastset(current_config)) {

Should be ||, but I think this would still break LRR. 

> +		PIPE_CONF_CHECK_I(vrr.pipeline_full);
> +		PIPE_CONF_CHECK_I(vrr.guardband);
> +	}
>  
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 11f23affd13a..0dfe6220ff4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -284,7 +284,6 @@ int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
>  	return intel_vrr_fixed_rr_vtotal(crtc_state);
>  }
>  
> -static
>  void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index c81f98f83b58..0e1becd7a0c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -38,5 +38,6 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_VRR_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
