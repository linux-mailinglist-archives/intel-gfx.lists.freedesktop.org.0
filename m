Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF821A0CAD
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 13:15:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61DD6E834;
	Tue,  7 Apr 2020 11:15:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A446E834
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 11:15:18 +0000 (UTC)
IronPort-SDR: tXetoVIhz/LR5IERpekndmd4gLu3oORgIFPveei+OAnx6cAsV0rWozVD+czQc+l4OGuuQRCfoV
 WwAGYfr99qMg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 04:15:17 -0700
IronPort-SDR: 0TcB9dPx5dbucz6WvC5I41sZjZtWX2XGKveyqgRlrBFwG+lev2fnJB5g7TOgA6JaAe6ZzXiMUs
 weDq1A52W+aQ==
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="424712771"
Received: from vogtstef-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.40.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 04:15:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200407070916.30475-1-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200407070916.30475-1-uma.shankar@intel.com>
Date: Tue, 07 Apr 2020 14:15:10 +0300
Message-ID: <87tv1vk0n5.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable DP Display Audio WA
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
Cc: kai.vehmanen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 07 Apr 2020, Uma Shankar <uma.shankar@intel.com> wrote:
> Enable Display Audio WA #1406928334 for 4k+VDSC usecase
> on DP encoders.

I didn't actually read the wa, but please describe the main points here.

>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 110 +++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h            |  16 +++
>  2 files changed, 126 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 950160f1a89f..035f2949e9c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -512,6 +512,112 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  	mutex_unlock(&dev_priv->av_mutex);
>  }
>  
> +static void enable_audio_dsc_wa(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);

Please name the variable i915 now that we can.

> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +	u64 link_clks_available, link_clks_required, link_clk;
> +	u64 tu_data, tu_line, link_clks_active;
> +	u64 hblank_rise, hblank_early_prog, samples_room;
> +	u64 h_active, h_total, hblank_delta, pixel_clk, v_total, lanes;
> +	u64 vdsc_bpp, fec_coeff, refresh_rate, cdclk;

Most of these probably don't need to be u64.

> +	u64 rounding_factor = 100000;

Macro.

> +	u32 val;
> +
> +	val = intel_de_read(dev_priv, AUD_CONFIG_BE);
> +
> +	if (INTEL_GEN(dev_priv) == 11)
> +		val |= HBLANK_EARLY_ENABLE_ICL(pipe);
> +	else if (INTEL_GEN(dev_priv) >= 12)
> +		val |= HBLANK_EARLY_ENABLE_TGL(pipe);
> +

So if it's gen < 11 without dsc, you'll just read and write the
register? Probably want to bail out early.

> +	if (crtc_state->dsc.compression_enable &&
> +	    (crtc_state->hw.adjusted_mode.hdisplay >= 3840 &&
> +	     crtc_state->hw.adjusted_mode.vdisplay >= 2160)) {
> +		h_active = crtc_state->hw.adjusted_mode.hdisplay;
> +		h_total = crtc_state->hw.adjusted_mode.htotal;
> +		v_total = crtc_state->hw.adjusted_mode.vtotal;
> +		hblank_rise = crtc_state->hw.adjusted_mode.hsync_start;
> +		pixel_clk = crtc_state->hw.adjusted_mode.clock;
> +		link_clk = crtc_state->port_clock;
> +		lanes = crtc_state->lane_count;
> +		vdsc_bpp = crtc_state->pipe_bpp;
> +		refresh_rate = crtc_state->hw.adjusted_mode.vrefresh;
> +		cdclk = dev_priv->cdclk.hw.cdclk;
> +		/* fec= 0.972261, using rounding multiplier of 1000000 */
> +		fec_coeff = 972261;
> +
> +		if (!(h_active && link_clk && lanes && vdsc_bpp && cdclk)) {
> +			drm_err(&dev_priv->drm, "Null Parameters received\n");

What's the user going to do with that information?

> +			return;

No need to write HBLANK_EARLY_ENABLE_* then?

> +		}
> +
> +		drm_dbg_kms(&dev_priv->drm, "h_active = %llu link_clk = %llu :"
> +			    "lanes = %llu vdsc_bpp = %llu cdclk = %llu\n",
> +			    h_active, link_clk, lanes, vdsc_bpp, cdclk);
> +
> +		link_clks_available = ((((h_total - h_active) *
> +				       ((link_clk * rounding_factor) /
> +				       pixel_clk)) / rounding_factor) - 28);
> +
> +		link_clks_required = DIV_ROUND_UP(192000, (refresh_rate *
> +						  v_total)) *
> +						  ((48 / lanes) + 2);
> +
> +		if (link_clks_available > link_clks_required)
> +			hblank_delta = 32;
> +		else
> +			hblank_delta = DIV_ROUND_UP(((((5 * rounding_factor) /
> +					       link_clk) + ((5 *
> +					       rounding_factor) / cdclk)) *
> +					       pixel_clk), rounding_factor);
> +
> +		tu_data = (pixel_clk * vdsc_bpp * 8) / ((link_clk *
> +							lanes * fec_coeff) /
> +							1000000);
> +		tu_line = (((h_active * link_clk * fec_coeff) / 1000000) /
> +			   (64 * pixel_clk));
> +		link_clks_active  = (tu_line - 1) * 64 + tu_data;
> +		hblank_rise = ((link_clks_active + 6 *
> +				DIV_ROUND_UP(link_clks_active, 250) + 4) *
> +					((pixel_clk * rounding_factor) /
> +					 link_clk)) / rounding_factor;
> +
> +		hblank_early_prog = h_active - hblank_rise + hblank_delta;
> +
> +		if (hblank_early_prog < 32) {
> +			val &= ~HBLANK_START_COUNT_MASK(pipe);
> +			val |= HBLANK_START_COUNT(HBLANK_START_COUNT_32, pipe);
> +		} else if (hblank_early_prog < 64) {
> +			val &= ~HBLANK_START_COUNT_MASK(pipe);
> +			val |= HBLANK_START_COUNT(HBLANK_START_COUNT_64, pipe);
> +		} else if (hblank_early_prog < 96) {
> +			val &= ~HBLANK_START_COUNT_MASK(pipe);
> +			val |= HBLANK_START_COUNT(HBLANK_START_COUNT_96, pipe);
> +		} else {
> +			val &= ~HBLANK_START_COUNT_MASK(pipe);
> +			val |= HBLANK_START_COUNT(HBLANK_START_COUNT_128, pipe);
> +		}
> +
> +		samples_room = ((((h_total - h_active) *
> +					 ((link_clk * rounding_factor) /
> +					 pixel_clk)) / rounding_factor) - 12) /
> +					 ((48 / lanes) + 2);

Please abstract the calculation of hblank_early_prog and samples_room to
separate helpers, and pass in crtc_state. You also don't have to make
everything you need from crtc_state a local variable.

> +
> +		if (samples_room < 3) {
> +			val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
> +			val |= NUMBER_SAMPLES_PER_LINE(samples_room, pipe);
> +		} else {
> +			val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
> +			val |= NUMBER_SAMPLES_PER_LINE(0x0, pipe);
> +		}
> +	}
> +
> +	intel_de_write(dev_priv, AUD_CONFIG_BE, val);
> +}
> +
>  static void hsw_audio_codec_enable(struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *crtc_state,
>  				   const struct drm_connector_state *conn_state)
> @@ -529,6 +635,10 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
>  
>  	mutex_lock(&dev_priv->av_mutex);
>  
> +	/* Enable Audio WA for 4k DSC usecases */
> +	if (encoder->type == INTEL_OUTPUT_DP)
> +		enable_audio_dsc_wa(encoder, crtc_state);
> +
>  	/* Enable audio presence detect, invalidate ELD */
>  	tmp = intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
>  	tmp |= AUDIO_OUTPUT_ENABLE(cpu_transcoder);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8cebb7a86b8c..ff293e9d5a63 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9395,6 +9395,22 @@ enum {
>  #define AUD_PIN_BUF_CTL		_MMIO(0x48414)
>  #define   AUD_PIN_BUF_ENABLE		REG_BIT(31)
>  
> +/* Display Audio Config Reg */
> +#define AUD_CONFIG_BE			_MMIO(0x65ef0)
> +#define HBLANK_EARLY_ENABLE_ICL(pipe)		(0x1 << (20 - (pipe)))
> +#define HBLANK_EARLY_ENABLE_TGL(pipe)		(0x1 << (24 + (pipe)))
> +#define HBLANK_START_COUNT_MASK(pipe)		(0x7 << (3 + ((pipe) * 6)))
> +#define HBLANK_START_COUNT(val, pipe)		(((val) & 0x7) << (3 + ((pipe)) * 6))

I'd swap pipe and val params around. Same below.

You might find REG_FIELD_PREP etc. useful.

> +#define NUMBER_SAMPLES_PER_LINE_MASK(pipe)	(0x3 << ((pipe) * 6))
> +#define NUMBER_SAMPLES_PER_LINE(val, pipe)	(((val) & 0x3) << ((pipe) * 6))
> +
> +#define HBLANK_START_COUNT_8	0x0
> +#define HBLANK_START_COUNT_16	0x1
> +#define HBLANK_START_COUNT_32	0x2
> +#define HBLANK_START_COUNT_64	0x3
> +#define HBLANK_START_COUNT_96	0x4
> +#define HBLANK_START_COUNT_128	0x5

They're just numbers, hex doesn't provide anything useful here.

> +
>  /*
>   * HSW - ICL power wells
>   *

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
