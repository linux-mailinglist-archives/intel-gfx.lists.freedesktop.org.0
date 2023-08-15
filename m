Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2951177D130
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 19:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28AA710E256;
	Tue, 15 Aug 2023 17:34:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 342F610E256
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692120873; x=1723656873;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=lexkcNDtkfjGoP2DRCV166R+G5rr9iTzsCDxFpzZRag=;
 b=lAWzNbGvhwzKZ4t7wZeT3HCQqHb4u6m/AJ9JsoaEg74V076Hp37xZgf6
 CiABqBZjlIXfN5Sdam0RAQAgwhGUB/Fo9TQ4sChRJxWxo5cy7BqlvJmx1
 wniB8xiCcG7f0PW7ssyULIGa43eFfnJrNyLOccyKXIq+r1DdhqTjoj2ZD
 2W0P4cRic8DOYETc2tpJe1zBeHtjX60jWCEFUAaMUfC2IAejPxNjSgBOO
 oMGb5MeA3JccKqGLiS2wGBAh9eO835aA2NSxhwGScvcYsnf8zXMfAp5Uz
 JFSz55DcVi65x4BqM4irMOAThsf8BMGc3HAXULDNvWOXb6KDGbR2g6daV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371251809"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="371251809"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:34:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710807083"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710807083"
Received: from zlukwins-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.48])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:34:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230815142921.404127-5-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230815142921.404127-1-vinod.govindapillai@intel.com>
 <20230815142921.404127-5-vinod.govindapillai@intel.com>
Date: Tue, 15 Aug 2023 20:34:27 +0300
Message-ID: <87leecb464.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/915/display: configure SDP split
 for DP-MST
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

On Tue, 15 Aug 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Extend the SDP split audio config for DP-MST
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.h     | 4 ++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 +++----
>  3 files changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0eb072a78d44..269828e22437 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2233,7 +2233,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>  	return ret;
>  }
>  
> -static void
> +void
>  intel_dp_audio_compute_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
>  			      struct drm_connector_state *conn_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index e7b515b685ac..b8516a34cfaf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -65,6 +65,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct link_config_limits *limits,
>  				int timeslots,
>  				bool recompute_pipe_bpp);
> +void intel_dp_audio_compute_config(struct intel_encoder *encoder,
> +				   struct intel_crtc_state *pipe_config,
> +				   struct drm_connector_state *conn_state,
> +				   struct intel_dp *intel_dp);
>  bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
>  bool intel_dp_is_edp(struct intel_dp *intel_dp);
>  bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 8881cfd41ee7..05228c006a1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -309,10 +309,6 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder = false;
>  
> -	pipe_config->has_audio =
> -		intel_dp_has_audio(encoder, conn_state, intel_dp) &&
> -		intel_audio_compute_config(encoder, pipe_config, conn_state);

Yeah, so there shouldn't be an intemediate step where you call
intel_dp_has_audio() directly from mst code. You just switch from the
current code to calling intel_dp_audio_compute_config().

BR,
Jani.

> -
>  	/*
>  	 * for MST we always configure max link bw - the spec doesn't
>  	 * seem to suggest we should do otherwise.
> @@ -375,6 +371,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  		pipe_config->lane_lat_optim_mask =
>  			bxt_ddi_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
>  
> +	intel_dp_audio_compute_config(encoder, pipe_config, conn_state, intel_dp);
>  	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
>  
>  	return 0;
> @@ -779,6 +776,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans), 0,
>  			     FECSTALL_DIS_DPTSTREAM_DPTTG);
>  
> +	intel_audio_sdp_split_update(pipe_config);
> +
>  	intel_enable_transcoder(pipe_config);
>  
>  	intel_crtc_vblank_on(pipe_config);

-- 
Jani Nikula, Intel Open Source Graphics Center
