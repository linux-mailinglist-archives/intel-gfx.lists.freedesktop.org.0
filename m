Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 878A696871E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 14:08:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5FB710E2D1;
	Mon,  2 Sep 2024 12:08:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BiCmQZ5/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4235110E2CD
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 12:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725278921; x=1756814921;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fNytCsMSP+Ssm9PzYWp4sG8EFh5p9YRur2yjFWL5lJA=;
 b=BiCmQZ5/1RrESkuLKODYU/PvKzQB0hicpKtaYhlN85sYcPJsPb8cAYXf
 4ndd6spZB3k6J5JFugvN4ocyIEPtCxySCk4GWTsJGnw/6oaex0C5llMjN
 MpPcjznduVqCOno6R9AtDzSIeOF9eFWu+3/h4X3NgmOHopqYgRwu0ASFi
 QSVDGyUTzmXR9JLPAy9G/rO9NtJPJmgHeFdoDykzAFQ7kLB/VwJ+U+xY8
 URoHDTYZ3V7dcIOIgN6mpzv80Q2hC+vE7PFCkSbHIVWaPYwzw0MxVv8oM
 Rp8B/yTPJ4PR6rQVe3wk/UokY78/J+873Pu38urw8lP4NAR/Idl8UOKL7 g==;
X-CSE-ConnectionGUID: xWqajkETRi6b192fB0HjCw==
X-CSE-MsgGUID: oEBpeGpiQumwyihQNm1NWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="24013426"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="24013426"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 05:08:40 -0700
X-CSE-ConnectionGUID: wvp2uV0NTFWbo5bUFwdPtQ==
X-CSE-MsgGUID: B3zFczp4TkKOsJStOq6pFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64785376"
Received: from ltuz-desk.ger.corp.intel.com (HELO localhost) ([10.245.246.4])
 by fmviesa010-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2024 05:08:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, ankit.k.nautiyal@intel.com,
 mitulkumar.ajitkumar.golani@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v9 3/3] drm/i915/lobf: Move Lobf compute config after
 vblank adjustement
In-Reply-To: <20240708152231.4170265-3-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240708152231.4170265-1-animesh.manna@intel.com>
 <20240708152231.4170265-3-animesh.manna@intel.com>
Date: Mon, 02 Sep 2024 15:08:24 +0300
Message-ID: <874j6yuukn.fsf@intel.com>
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

On Mon, 08 Jul 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> As lobf compute config is depends upon delayed vbalnk so moved
> lobf compute config in encoder late config(). Lobf is only
> for edp connector so introduced intel_dp_late_compute_config().
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_dp.c  | 9 ++++++++-
>  drivers/gpu/drm/i915/display/intel_dp.h  | 2 ++
>  3 files changed, 15 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index a07aca96e551..e460ba0ee05f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4366,6 +4366,11 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
>  			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
>  	}
>  
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) ||
> +	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> +		intel_dp_late_compute_config(encoder, crtc_state);

The encoder hook is named _compute_config_late, and the functions should
preserve that suffix instead of jumbling the words around.

BR,
Jani.


> +	}
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8feec90538ae..f6535281ab54 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3009,7 +3009,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	intel_vrr_compute_config(pipe_config, conn_state);
>  	intel_dp_compute_as_sdp(intel_dp, pipe_config);
>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> -	intel_alpm_lobf_compute_config(intel_dp, pipe_config);
>  	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
> @@ -3018,6 +3017,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  							pipe_config);
>  }
>  
> +void intel_dp_late_compute_config(struct intel_encoder *encoder,
> +				  struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +	intel_alpm_lobf_compute_config(intel_dp, crtc_state);
> +}
> +
>  void intel_dp_set_link_params(struct intel_dp *intel_dp,
>  			      int link_rate, int lane_count)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index a0f990a95ecc..cd473f939941 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -74,6 +74,8 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder);
>  int intel_dp_compute_config(struct intel_encoder *encoder,
>  			    struct intel_crtc_state *pipe_config,
>  			    struct drm_connector_state *conn_state);
> +void intel_dp_late_compute_config(struct intel_encoder *encoder,
> +				  struct intel_crtc_state *crtc_state);
>  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,

-- 
Jani Nikula, Intel
