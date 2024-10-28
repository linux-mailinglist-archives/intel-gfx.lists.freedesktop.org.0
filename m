Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A767E9B311B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 13:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132CD10E49C;
	Mon, 28 Oct 2024 12:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GSz5Ev5n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8851610E49C;
 Mon, 28 Oct 2024 12:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730120168; x=1761656168;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dRjGJ4oS+yijrJVan4nggeE2iNCe2pA4wi2m1tXwXig=;
 b=GSz5Ev5nlVoseThr9FwzuGoeOXcOXYaxHTneukcUUaQupMCmfv2Ez3Vg
 sTYdALx3JerYxjCVS/+0NeAZ1gqgmpVWe8GdT1BdokaoQhfVzPmPWXg4x
 lHO5xJnkYJ5+NRPR7Y/oi+y3KWDi8lchZKvRSAFtSrw6O7Cq0pc0udPvK
 Lmvj76/TqbjCQ46QeQssrcr42YYg5wrDRpg/rjSyd53UffBid76MrjT7O
 lpulzsbRWBGjXKtwUd26YdTQ/ow3+BvX8Khxteh5hrUlhy8UI0b+ycUxW
 7YEbpcuQeXqo5Iv5waoaU9fOcbfxjIP+yb+OCXd8zQwgmD5dBk2crrILi g==;
X-CSE-ConnectionGUID: IYqJMB6+SkeJgGIF+UKxEg==
X-CSE-MsgGUID: tweNtsv4TDqAZPVuq+AtUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29616610"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29616610"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:56:08 -0700
X-CSE-ConnectionGUID: fPA8ZC0ETme62fJBsnebOg==
X-CSE-MsgGUID: wnKM/ZH1ROCJjEGevwu10w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81193283"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:56:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCHv3] drm/i915/dp: Guarantee a minimum HBlank time
In-Reply-To: <20241028061418.3460461-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241028061418.3460461-1-arun.r.murthy@intel.com>
Date: Mon, 28 Oct 2024 14:56:03 +0200
Message-ID: <87frogpesc.fsf@intel.com>
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

On Mon, 28 Oct 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
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

Always name struct intel_connector *connector, not
intel_connector. That's what the style has been for years now, though
not everything's been converted.

> +					    int bpp_x16)
> +{
> +	struct intel_encoder *intel_encoder = intel_connector->encoder;

Ditto, just encoder.

> +	struct intel_display *intel_display = to_intel_display(intel_encoder);

Just display. Always. Everywhere. Make this the first local variable
whenever possible.

> +	const struct drm_display_mode *adjusted_mode =
> +					&crtc_state->hw.adjusted_mode;
> +	u32 symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
> +	u32 hblank;

Looks like these should be ints.

> +
> +	if (DISPLAY_VER(intel_display) < 20)
> +		return;
> +
> +	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
> +	hblank = DIV_ROUND_UP((DIV_ROUND_UP(adjusted_mode->htotal - adjusted_mode->hdisplay, 4) * bpp_x16), symbol_size);

Okay so I didn't really think this through, but 1) do we lose precision
by dividing by 4 first, and multiplying by bpp_x16 next, and 2) how does
this take into account that bpp_x16 is in fact the x16 value?

> +	if (intel_dp_is_uhbr(crtc_state))
> +		crtc_state->min_hblank = (hblank > 5) ? hblank : 5;
> +	else
> +		crtc_state->min_hblank = (hblank > 3) ? hblank : 3;

These look like hand-rolled max() that needlessly duplicate both hblank
and the constant.

> +}
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

Always use the display local var when possible.

DISPLAY_VER(display)

> +		intel_de_write(dev_priv, DP_MIN_HBLANK_CTL(dev_priv, trans),
> +			       pipe_config->min_hblank);

intel_de_write(display, .... DP_MIN_HBLANK_CTL(display, trans) ...

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
> +
>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)

-- 
Jani Nikula, Intel
