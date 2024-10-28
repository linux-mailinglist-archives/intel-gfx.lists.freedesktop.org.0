Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C149B34C2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 16:26:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DE7810E1A1;
	Mon, 28 Oct 2024 15:26:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AlK/ogIK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B9A410E1A1;
 Mon, 28 Oct 2024 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730129185; x=1761665185;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Qt6CR4wqgTSN9TLHUlWF2lMOjWLFIqqGrCN+QhVeuOE=;
 b=AlK/ogIKgC/HNZp4F3n/kFvEyXe7zOiAyEui7lJV1HIBpGtxxbGNQeGF
 hhdZtvUM6v9EvsmSAuE2QtipR4Y0ijVyIfhbPiMXiOWUZ+TwrPtxvbepB
 0Vad8PZ1FqUDfQnSIIr9aB6QJR7HfsUV2VABnLW6mbu3DvWRnoSWEC83U
 XoFBDzmY113dslN/yyF2CM21usG8aeqyJuP4lIclmp1aPcLIVfC6rCctC
 zsW3SXX/FJq4H8FsosIpG2FMNRj2IdNLjZ1KocLQvPbFx6h/B3Ia/3UNq
 qapnG+JsUHj+E34Kr9EyFr00eMPW3tpqk8httSMoC9Fgi/Rgi3DVvMKpd g==;
X-CSE-ConnectionGUID: yXXSY9jmQYKDf9LMqEQygQ==
X-CSE-MsgGUID: GD8H3++mSVOskOKYGVIElg==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33648689"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="33648689"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 08:26:24 -0700
X-CSE-ConnectionGUID: K6RtPKWtR5mR2KTntghaDQ==
X-CSE-MsgGUID: jd2G1d6ZQTCdmgN2S63u7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81755972"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Oct 2024 08:26:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2024 17:26:21 +0200
Date: Mon, 28 Oct 2024 17:26:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 jani.nikula@intel.com
Subject: Re: [PATCHv3] drm/i915/dp: Guarantee a minimum HBlank time
Message-ID: <Zx-tHdwffq4VGKow@intel.com>
References: <20241028061418.3460461-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241028061418.3460461-1-arun.r.murthy@intel.com>
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

On Mon, Oct 28, 2024 at 11:44:18AM +0530, Arun R Murthy wrote:
> Mandate a minimum Hblank symbol cycle count between BS and BE in 8b/10b
> MST and 12b/132b mode.
> Spec: DP2.1a
> 
> v2: Affine calculation/updation of min HBlank to dp_mst (Jani)
> v3: moved min_hblank from struct intel_dp to intel_crtc_state (Jani)
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  1 +
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 28 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               |  4 +++

Missing state dump and checker.

>  5 files changed, 35 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 03dc54c802d3..24aa079efcad 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -278,6 +278,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>  	crtc_state->dsb_color_vblank = NULL;
>  	crtc_state->dsb_commit = NULL;
>  	crtc_state->use_dsb = false;
> +	crtc_state->min_hblank = 0;

This doesn't look like something that should be reset here.

>  
>  	return &crtc_state->uapi;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 3c9168a57f38..472f3010bce4 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -184,6 +184,7 @@ void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
>  	crtc_state->scaler_state.scaler_id = -1;
>  	crtc_state->mst_master_transcoder = INVALID_TRANSCODER;
>  	crtc_state->max_link_bpp_x16 = INT_MAX;
> +	crtc_state->min_hblank = 0;

Pointless.

>  }
>  
>  static struct intel_crtc *intel_crtc_alloc(void)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 2bb1fa64da2f..7f631fef128e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1075,6 +1075,7 @@ struct intel_crtc_state {
>  
>  	int max_link_bpp_x16;	/* in 1/16 bpp units */
>  	int pipe_bpp;		/* in 1 bpp units */
> +	int min_hblank;		/* min HBlank for DP2.1 */
>  	struct intel_link_m_n dp_m_n;
>  
>  	/* m2_n2 for eDP downclock */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 1a2ff3e1cb68..2e088760a23a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -161,6 +161,28 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
>  					    num_joined_pipes);
>  }
>  
> +static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state *crtc_state,
> +					    struct intel_connector *intel_connector,
> +					    int bpp_x16)
> +{
> +	struct intel_encoder *intel_encoder = intel_connector->encoder;
> +	struct intel_display *intel_display = to_intel_display(intel_encoder);
> +	const struct drm_display_mode *adjusted_mode =
> +					&crtc_state->hw.adjusted_mode;
> +	u32 symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
> +	u32 hblank;
> +
> +	if (DISPLAY_VER(intel_display) < 20)
> +		return;
> +
> +	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
> +	hblank = DIV_ROUND_UP((DIV_ROUND_UP(adjusted_mode->htotal - adjusted_mode->hdisplay, 4) * bpp_x16), symbol_size);
> +	if (intel_dp_is_uhbr(crtc_state))
> +		crtc_state->min_hblank = (hblank > 5) ? hblank : 5;
> +	else
> +		crtc_state->min_hblank = (hblank > 3) ? hblank : 3;
> +}

This looks like it should/could be a pure function.

> +
>  static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  						struct intel_crtc_state *crtc_state,
>  						int max_bpp,
> @@ -238,6 +260,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
>  							      true, dsc_slice_count, link_bpp_x16);
>  
> +		intel_dp_mst_compute_min_hblank(crtc_state, connector, link_bpp_x16);
> +
>  		intel_dp_mst_compute_m_n(crtc_state, connector,
>  					 local_bw_overhead,
>  					 link_bpp_x16,
> @@ -1292,6 +1316,10 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
>  	}
>  
> +	if (DISPLAY_VER(dev_priv) >= 20)
> +		intel_de_write(dev_priv, DP_MIN_HBLANK_CTL(dev_priv, trans),
> +			       pipe_config->min_hblank);
> +
>  	enable_bs_jitter_was(pipe_config);
>  
>  	intel_ddi_enable_transcoder_func(encoder, pipe_config);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 405f409e9761..8aeed48f9170 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1147,6 +1147,10 @@
>  #define _TRANS_MULT_B		0x6102c
>  #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
>  
> +#define _DP_MIN_HBLANK_CTL_A	0x600ac
> +#define _DP_MIN_HBLANK_CTL_B	0x610ac
> +#define DP_MIN_HBLANK_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _DP_MIN_HBLANK_CTL_A)

Please insert this into the proper spot based on the register
offset.

_MMIO_TRANS2 is pointless overhead for platform as new as this.

> +
>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
