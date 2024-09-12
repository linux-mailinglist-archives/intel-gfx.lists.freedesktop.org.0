Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A10975DD1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 02:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08B4810E905;
	Thu, 12 Sep 2024 00:09:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m8906Nve";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41B8810E905
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 00:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726099794; x=1757635794;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sEocxFvI5hlQP6kWSDQRyjKdUniTN1bh3fKIk/iMhbo=;
 b=m8906NveYnq33lmir3SBVjYx8+S1+QVMhzlqPm8cqts6K0JOTiCed7VR
 FUEhHWdETpDxZRfxx/ZsGqPz+32t4nU+V1XqodvkzTj/3/nE9JqAr9ZKd
 lyaZrTVOdfL9thLX5j24ZTuH6AO/jtaWoRB5Jka8H8T+/NcbrbUiy/VwB
 sRuTEHUUwjHcHFttCk2Snlw1B8h+dei4hhiBUa7qx/hfa7Ft0GOuX5cqw
 uFSj1BMBqSsneGMQ6j34S7jctUYybb5Lcid/K5A7uClkIIAxjEtu8i17g
 mo1FSjYlRmdgBEnEFX8aYbfUEfa2gNfTjtIbQ7hsNShzUuDWQc/c+OGhp g==;
X-CSE-ConnectionGUID: JE1q/cvTQ366kkpBFSOM/g==
X-CSE-MsgGUID: ieGxkte/TSS0CfNS5jMxTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="36068731"
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="36068731"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 17:09:54 -0700
X-CSE-ConnectionGUID: rYKQeha2Th+2MZqY4f2iZw==
X-CSE-MsgGUID: FyYa72MPRzq9HHLKDoHQcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="67589692"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 17:09:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Sep 2024 03:09:50 +0300
Date: Thu, 12 Sep 2024 03:09:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH v10 2/4] drm/i915/lobf: Move Lobf compute config after
 vblank adjustement
Message-ID: <ZuIxTlhkjCNNtlDW@intel.com>
References: <20240905051841.3012729-1-animesh.manna@intel.com>
 <20240905051841.3012729-3-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240905051841.3012729-3-animesh.manna@intel.com>
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

On Thu, Sep 05, 2024 at 10:48:39AM +0530, Animesh Manna wrote:
> As lobf compute config is depends upon delayed vbalnk so moved

Actually no.

The code is as follows:
 guardband = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay - context_latency;

Add context_latency to both sides:
 context_latency + guardband = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay;

Substitute into:
 crtc_state->has_lobf = (context_latency + guardband) >
	                (first_sdp_position + waketime_in_lines);

and you have no vblank delay anywhere.


Someone should just rewrite that to use that simple formula.

Now, that code is using the non-VRR timings for all this computation
so technically it might not even be computing the correct thing when
using VRR, but I guess that's more of a problem for the "let's use
the VRR timing generator fixed refersh stuff" because we really
should match the non-VRR timings there...

> lobf compute config in encoder late config(). Lobf is only
> for edp connector so introduced intel_dp_late_compute_config().
> 
> v1: Initial version.
> v2: Function name modified. [Jani]
> 
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_dp.c  | 9 ++++++++-
>  drivers/gpu/drm/i915/display/intel_dp.h  | 2 ++
>  3 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 00fbe9f8c03a..0d12c94793bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4367,6 +4367,11 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
>  			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
>  	}
>  
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) ||
> +	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> +		intel_dp_compute_config_late(encoder, crtc_state);
> +	}
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 86bc6d79279f..bc0042a1bc3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3107,7 +3107,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	intel_vrr_compute_config(pipe_config, conn_state);
>  	intel_dp_compute_as_sdp(intel_dp, pipe_config);
>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> -	intel_alpm_lobf_compute_config(intel_dp, pipe_config);
>  	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
> @@ -3116,6 +3115,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  							pipe_config);
>  }
>  
> +void intel_dp_compute_config_late(struct intel_encoder *encoder,
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
> index 1b9aaddd8c35..411feece9acb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -74,6 +74,8 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder);
>  int intel_dp_compute_config(struct intel_encoder *encoder,
>  			    struct intel_crtc_state *pipe_config,
>  			    struct drm_connector_state *conn_state);
> +void intel_dp_compute_config_late(struct intel_encoder *encoder,
> +				  struct intel_crtc_state *crtc_state);
>  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
