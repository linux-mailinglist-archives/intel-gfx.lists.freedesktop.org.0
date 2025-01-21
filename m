Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F264A17DCB
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 13:30:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94F0D10E57D;
	Tue, 21 Jan 2025 12:30:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ba4gwakC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC8A510E1EB;
 Tue, 21 Jan 2025 12:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737462646; x=1768998646;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UGOalyWA8DmH/yGWdvTN/0VJ1D003UlpLTnIJWeVn5I=;
 b=Ba4gwakCzBF1EITXDzx8djAwHb2fFK9+0lGqwad1U+Hz1Yvpm/Wq2QvR
 LuVnhak2bfsZszbk5Bl9hyEhO3P1C6AthqN1M5cpQEt5g/Sw4VavmbTVc
 gxqzINUVbiq8JOg1/XsahgEzUyiL8KMC3Ubl9pmr231QNE9GXVXtWcKRH
 SCK2cnoixRJMoSuwHGcCBeAu6TMKP3X4yHevcqn9RV8lP+03ozEVB9+6D
 j6JzcjcZP1gGrTaW69DdILUU//SwrOewjeDQUJzheIz7a7VbhT1fEFJ1A
 JnhfOg/UPciviWpft1/ZP2dP2G0ZAlF96vFac7zZh0hntHfOF3Yx46ItR w==;
X-CSE-ConnectionGUID: WHiFiaJdQ0u+KD1IT2PAXQ==
X-CSE-MsgGUID: H717CnTyQ/ekDzOa0dIS5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="49267050"
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="49267050"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 04:30:46 -0800
X-CSE-ConnectionGUID: 1t5Nd4C8Rp+1kBEOM8rUEQ==
X-CSE-MsgGUID: q0OmjapbQW6+AL3NrTFSag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="107397479"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.186])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 04:30:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH v8] drm/i915/dp: Guarantee a minimum HBlank time
In-Reply-To: <20250121-hblank-v8-1-b05752f4aa5a@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250121-hblank-v8-1-b05752f4aa5a@intel.com>
Date: Tue, 21 Jan 2025 14:30:40 +0200
Message-ID: <87frlcpcwf.fsf@intel.com>
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

On Tue, 21 Jan 2025, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Mandate a minimum Hblank symbol cycle count between BlankingStart and
> BlankingEnd in 8b/10b MST and 128b/132b mode.
>
> v2: Affine calculation/updation of min HBlank to dp_mst (Jani)
> v3: moved min_hblank from struct intel_dp to intel_crtc_state (Jani)
> v4: use max/min functions, change intel_xx *intel_xx to intel_xx *xx
>     (Jani)
>     Limit hblank to 511 and accommodate BS/BE in calculated value
>     (Srikanth)
> v5: Some spelling corrections (Suraj)
> v6: Removed DP2.1 in comment as this is applicable for both DP2.1 and
>     DP1.4 (Suraj)
> v7: crtc_state holds the logical values and the register value
>     computation is moved to mst_enable() (Jani)
>
> Bspec: 74379
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_crtc_state_dump.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c        | 53 +++++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h                    |  4 ++
>  4 files changed, 58 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 1fbaa67e2fea77279f120bfb9755a2642550046c..07c671741513f7f263b7b233ffec71998745fd0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -249,6 +249,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  			   str_enabled_disabled(pipe_config->has_sel_update),
>  			   str_enabled_disabled(pipe_config->has_panel_replay),
>  			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
> +		drm_printf(&p, "minimum HBlank: %d\n", pipe_config->min_hblank);
>  	}
>  
>  	drm_printf(&p, "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8271e50e36447a6c97a93ca0d0b83327ff6ee461..f525e266c0232e8c29ba3f84d2c81612f78e894b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1095,6 +1095,7 @@ struct intel_crtc_state {
>  
>  	int max_link_bpp_x16;	/* in 1/16 bpp units */
>  	int pipe_bpp;		/* in 1 bpp units */
> +	int min_hblank;
>  	struct intel_link_m_n dp_m_n;
>  
>  	/* m2_n2 for eDP downclock */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 227bd2783e64105dc8dd521b99e7d04ce2e577cc..833167dc0e147dc5e793c0aeda1280453b38f385 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -209,6 +209,28 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
>  					    num_joined_pipes);
>  }
>  
> +static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state *crtc_state,
> +					    struct intel_connector *connector,
> +					    int bpp_x16)
> +{
> +	struct intel_encoder *encoder = connector->encoder;
> +	struct intel_display *display = to_intel_display(encoder);
> +	const struct drm_display_mode *adjusted_mode =
> +					&crtc_state->hw.adjusted_mode;
> +	int symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
> +	int hblank;
> +
> +	if (DISPLAY_VER(display) < 20)
> +		return;
> +
> +	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
> +	hblank = DIV_ROUND_UP((DIV_ROUND_UP
> +			       (adjusted_mode->htotal - adjusted_mode->hdisplay, 4) * bpp_x16),
> +			      symbol_size);
> +
> +	crtc_state->min_hblank = hblank;
> +}
> +
>  int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *crtc_state,
>  				   int max_bpp, int min_bpp,
> @@ -266,6 +288,9 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  
>  		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
>  							     false, dsc_slice_count, link_bpp_x16);
> +
> +		intel_dp_mst_compute_min_hblank(crtc_state, connector, link_bpp_x16);
> +
>  		intel_dp_mst_compute_m_n(crtc_state,
>  					 local_bw_overhead,
>  					 link_bpp_x16,
> @@ -1265,7 +1290,7 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>  	enum transcoder trans = pipe_config->cpu_transcoder;
>  	bool first_mst_stream = intel_dp->active_mst_links == 1;
>  	struct intel_crtc *pipe_crtc;
> -	int ret, i;
> +	int ret, i, min_hblank;
>  
>  	drm_WARN_ON(display->drm, pipe_config->has_pch_encoder);
>  
> @@ -1280,6 +1305,32 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>  			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
>  	}
>  
> +	if (DISPLAY_VER(display) >= 20) {
> +		/*
> +		 * bit 8:0 minimum hblank symbol cylce count, i.e maximum value
> +		 * would be 511
> +		 */

If you defined the register field with REG_GENMASK(), you'd get the max
from there, the code would document itself, and the comment would be
unnecessary.

> +		min_hblank = min(511, pipe_config->min_hblank);
> +
> +		/*
> +		 * adjust the BlankingStart/BlankingEnd framing control from
> +		 * the calculated value
> +		 */
> +		min_hblank = min_hblank - 2;

This means you'll never write values 511 or 510 to the register. Should
the order be changed?

But then... bspec says, "The maximum value programmed in this field
(MIN_HBLNK_LL_SYM_CYC_CNT_MAX) should be a value of 10."

Please double check the discrepancy.

> +
> +		/*
> +		 * Minimum hblank accepted for 128b/132b would be 5 and for
> +		 * 8b/10b would be 3 symbol count
> +		 */
> +		if (intel_dp_is_uhbr(pipe_config))
> +			min_hblank = max(min_hblank, 5);
> +		else
> +			min_hblank = max(min_hblank, 3);
> +
> +		intel_de_write(display, DP_MIN_HBLANK_CTL(trans),
> +			       min_hblank);

This is left in place, never cleared, and who knows what'll happen if
you unplug an MST hub and plug in an SST display. Bspec says "This
register should only be programmed to a non-zero value when in 8b/10b
MST or 128b/132b operation."

That's bound to be hard to debug, and never going to happen in CI,
because we won't be switching between SST/MST there.


BR,
Jani.


> +	}
> +
>  	enable_bs_jitter_was(pipe_config);
>  
>  	intel_ddi_enable_transcoder_func(encoder, pipe_config);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 765e6c0528fb0b5a894395b77a5edbf0b0c80009..7bd783931199e2e5c7e15358bb4d2c904f28176a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3197,6 +3197,10 @@
>  #define _TRANS_DP2_VFREQLOW_D			0x630a8
>  #define TRANS_DP2_VFREQLOW(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQLOW_A, _TRANS_DP2_VFREQLOW_B)
>  
> +#define _DP_MIN_HBLANK_CTL_A			0x600ac
> +#define _DP_MIN_HBLANK_CTL_B			0x610ac
> +#define DP_MIN_HBLANK_CTL(trans)		_MMIO_TRANS(trans, _DP_MIN_HBLANK_CTL_A, _DP_MIN_HBLANK_CTL_B)
> +
>  /* SNB eDP training params */
>  /* SNB A-stepping */
>  #define  EDP_LINK_TRAIN_400MV_0DB_SNB_A		(0x38 << 22)
>
> ---
> base-commit: a15d2a84505eed8dbb58911147e44752734f3a88
> change-id: 20250121-hblank-ad8ce892eb3a
>
> Best regards,

-- 
Jani Nikula, Intel
