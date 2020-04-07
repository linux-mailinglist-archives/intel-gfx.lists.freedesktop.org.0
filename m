Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E591A0E1A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 15:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CEC26E86F;
	Tue,  7 Apr 2020 13:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1CD36E86E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 13:05:04 +0000 (UTC)
IronPort-SDR: iBBx5PzeVw2+gXaBc7S1LNg/RH8jzego8VTFvCBv0VFDULnKxIcDEFVW8cxFupPvmq4Whm4C1V
 CGvHVbzGyLYQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 06:05:03 -0700
IronPort-SDR: ALaDOLcf57gQ0motWL+axoda7YdKx1GF2Gx9VkOMQilOLLiz4rbiaKJtiRY5maMMNI4eAp+aO0
 9S43mFliNiVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,354,1580803200"; d="scan'208";a="243764487"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga008.fm.intel.com with ESMTP; 07 Apr 2020 06:05:02 -0700
Received: from bgsmsx110.gar.corp.intel.com (10.223.4.212) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Apr 2020 06:05:02 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX110.gar.corp.intel.com ([169.254.11.98]) with mapi id 14.03.0439.000;
 Tue, 7 Apr 2020 18:34:58 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Enable DP Display Audio WA
Thread-Index: AQHWDKeXEeRLe/Uf9UykmI1jxpDbl6htJhcAgAB54uA=
Date: Tue, 7 Apr 2020 13:04:57 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82447709@BGSMSX104.gar.corp.intel.com>
References: <20200407070916.30475-1-uma.shankar@intel.com>
 <87tv1vk0n5.fsf@intel.com>
In-Reply-To: <87tv1vk0n5.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
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
Cc: "Vehmanen, Kai" <kai.vehmanen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, April 7, 2020 4:45 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Vehmanen, Kai <kai.vehmanen@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable DP Display Audio WA
> 
> On Tue, 07 Apr 2020, Uma Shankar <uma.shankar@intel.com> wrote:
> > Enable Display Audio WA #1406928334 for 4k+VDSC usecase on DP
> > encoders.
> 
> I didn't actually read the wa, but please describe the main points here.

Sure will add more details.

> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c | 110 +++++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h            |  16 +++
> >  2 files changed, 126 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 950160f1a89f..035f2949e9c0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -512,6 +512,112 @@ static void hsw_audio_codec_disable(struct
> intel_encoder *encoder,
> >  	mutex_unlock(&dev_priv->av_mutex);
> >  }
> >
> > +static void enable_audio_dsc_wa(struct intel_encoder *encoder,
> > +				const struct intel_crtc_state *crtc_state) {
> > +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> 
> Please name the variable i915 now that we can.

Ok.

> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	enum pipe pipe = crtc->pipe;
> > +	u64 link_clks_available, link_clks_required, link_clk;
> > +	u64 tu_data, tu_line, link_clks_active;
> > +	u64 hblank_rise, hblank_early_prog, samples_room;
> > +	u64 h_active, h_total, hblank_delta, pixel_clk, v_total, lanes;
> > +	u64 vdsc_bpp, fec_coeff, refresh_rate, cdclk;
> 
> Most of these probably don't need to be u64.

Yeah will drop u64.

> > +	u64 rounding_factor = 100000;
> 
> Macro.
Sure, will update this.
 
> > +	u32 val;
> > +
> > +	val = intel_de_read(dev_priv, AUD_CONFIG_BE);
> > +
> > +	if (INTEL_GEN(dev_priv) == 11)
> > +		val |= HBLANK_EARLY_ENABLE_ICL(pipe);
> > +	else if (INTEL_GEN(dev_priv) >= 12)
> > +		val |= HBLANK_EARLY_ENABLE_TGL(pipe);
> > +
> 
> So if it's gen < 11 without dsc, you'll just read and write the register? Probably want
> to bail out early.

Right, will fix this.

> > +	if (crtc_state->dsc.compression_enable &&
> > +	    (crtc_state->hw.adjusted_mode.hdisplay >= 3840 &&
> > +	     crtc_state->hw.adjusted_mode.vdisplay >= 2160)) {
> > +		h_active = crtc_state->hw.adjusted_mode.hdisplay;
> > +		h_total = crtc_state->hw.adjusted_mode.htotal;
> > +		v_total = crtc_state->hw.adjusted_mode.vtotal;
> > +		hblank_rise = crtc_state->hw.adjusted_mode.hsync_start;
> > +		pixel_clk = crtc_state->hw.adjusted_mode.clock;
> > +		link_clk = crtc_state->port_clock;
> > +		lanes = crtc_state->lane_count;
> > +		vdsc_bpp = crtc_state->pipe_bpp;
> > +		refresh_rate = crtc_state->hw.adjusted_mode.vrefresh;
> > +		cdclk = dev_priv->cdclk.hw.cdclk;
> > +		/* fec= 0.972261, using rounding multiplier of 1000000 */
> > +		fec_coeff = 972261;
> > +
> > +		if (!(h_active && link_clk && lanes && vdsc_bpp && cdclk)) {
> > +			drm_err(&dev_priv->drm, "Null Parameters received\n");
> 
> What's the user going to do with that information?
> 
> > +			return;
> 
> No need to write HBLANK_EARLY_ENABLE_* then?

Ideally we should not get Null params here, will add a WARN_ON instead.

> > +		}
> > +
> > +		drm_dbg_kms(&dev_priv->drm, "h_active = %llu link_clk = %llu :"
> > +			    "lanes = %llu vdsc_bpp = %llu cdclk = %llu\n",
> > +			    h_active, link_clk, lanes, vdsc_bpp, cdclk);
> > +
> > +		link_clks_available = ((((h_total - h_active) *
> > +				       ((link_clk * rounding_factor) /
> > +				       pixel_clk)) / rounding_factor) - 28);
> > +
> > +		link_clks_required = DIV_ROUND_UP(192000, (refresh_rate *
> > +						  v_total)) *
> > +						  ((48 / lanes) + 2);
> > +
> > +		if (link_clks_available > link_clks_required)
> > +			hblank_delta = 32;
> > +		else
> > +			hblank_delta = DIV_ROUND_UP(((((5 * rounding_factor) /
> > +					       link_clk) + ((5 *
> > +					       rounding_factor) / cdclk)) *
> > +					       pixel_clk), rounding_factor);
> > +
> > +		tu_data = (pixel_clk * vdsc_bpp * 8) / ((link_clk *
> > +							lanes * fec_coeff) /
> > +							1000000);
> > +		tu_line = (((h_active * link_clk * fec_coeff) / 1000000) /
> > +			   (64 * pixel_clk));
> > +		link_clks_active  = (tu_line - 1) * 64 + tu_data;
> > +		hblank_rise = ((link_clks_active + 6 *
> > +				DIV_ROUND_UP(link_clks_active, 250) + 4) *
> > +					((pixel_clk * rounding_factor) /
> > +					 link_clk)) / rounding_factor;
> > +
> > +		hblank_early_prog = h_active - hblank_rise + hblank_delta;
> > +
> > +		if (hblank_early_prog < 32) {
> > +			val &= ~HBLANK_START_COUNT_MASK(pipe);
> > +			val |=
> HBLANK_START_COUNT(HBLANK_START_COUNT_32, pipe);
> > +		} else if (hblank_early_prog < 64) {
> > +			val &= ~HBLANK_START_COUNT_MASK(pipe);
> > +			val |=
> HBLANK_START_COUNT(HBLANK_START_COUNT_64, pipe);
> > +		} else if (hblank_early_prog < 96) {
> > +			val &= ~HBLANK_START_COUNT_MASK(pipe);
> > +			val |=
> HBLANK_START_COUNT(HBLANK_START_COUNT_96, pipe);
> > +		} else {
> > +			val &= ~HBLANK_START_COUNT_MASK(pipe);
> > +			val |=
> HBLANK_START_COUNT(HBLANK_START_COUNT_128, pipe);
> > +		}
> > +
> > +		samples_room = ((((h_total - h_active) *
> > +					 ((link_clk * rounding_factor) /
> > +					 pixel_clk)) / rounding_factor) - 12) /
> > +					 ((48 / lanes) + 2);
> 
> Please abstract the calculation of hblank_early_prog and samples_room to separate
> helpers, and pass in crtc_state. You also don't have to make everything you need
> from crtc_state a local variable.

Sure, will modify this.

> > +
> > +		if (samples_room < 3) {
> > +			val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
> > +			val |= NUMBER_SAMPLES_PER_LINE(samples_room, pipe);
> > +		} else {
> > +			val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
> > +			val |= NUMBER_SAMPLES_PER_LINE(0x0, pipe);
> > +		}
> > +	}
> > +
> > +	intel_de_write(dev_priv, AUD_CONFIG_BE, val); }
> > +
> >  static void hsw_audio_codec_enable(struct intel_encoder *encoder,
> >  				   const struct intel_crtc_state *crtc_state,
> >  				   const struct drm_connector_state *conn_state)
> @@ -529,6
> > +635,10 @@ static void hsw_audio_codec_enable(struct intel_encoder
> > *encoder,
> >
> >  	mutex_lock(&dev_priv->av_mutex);
> >
> > +	/* Enable Audio WA for 4k DSC usecases */
> > +	if (encoder->type == INTEL_OUTPUT_DP)
> > +		enable_audio_dsc_wa(encoder, crtc_state);
> > +
> >  	/* Enable audio presence detect, invalidate ELD */
> >  	tmp = intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
> >  	tmp |= AUDIO_OUTPUT_ENABLE(cpu_transcoder);
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 8cebb7a86b8c..ff293e9d5a63
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -9395,6 +9395,22 @@ enum {
> >  #define AUD_PIN_BUF_CTL		_MMIO(0x48414)
> >  #define   AUD_PIN_BUF_ENABLE		REG_BIT(31)
> >
> > +/* Display Audio Config Reg */
> > +#define AUD_CONFIG_BE			_MMIO(0x65ef0)
> > +#define HBLANK_EARLY_ENABLE_ICL(pipe)		(0x1 << (20 - (pipe)))
> > +#define HBLANK_EARLY_ENABLE_TGL(pipe)		(0x1 << (24 + (pipe)))
> > +#define HBLANK_START_COUNT_MASK(pipe)		(0x7 << (3 + ((pipe) * 6)))
> > +#define HBLANK_START_COUNT(val, pipe)		(((val) & 0x7) << (3 +
> ((pipe)) * 6))
> 
> I'd swap pipe and val params around. Same below.
> 
> You might find REG_FIELD_PREP etc. useful.

Ok Sure.
 
> > +#define NUMBER_SAMPLES_PER_LINE_MASK(pipe)	(0x3 << ((pipe) * 6))
> > +#define NUMBER_SAMPLES_PER_LINE(val, pipe)	(((val) & 0x3) << ((pipe) *
> 6))
> > +
> > +#define HBLANK_START_COUNT_8	0x0
> > +#define HBLANK_START_COUNT_16	0x1
> > +#define HBLANK_START_COUNT_32	0x2
> > +#define HBLANK_START_COUNT_64	0x3
> > +#define HBLANK_START_COUNT_96	0x4
> > +#define HBLANK_START_COUNT_128	0x5
> 
> They're just numbers, hex doesn't provide anything useful here.

Will update.

Thanks Jani for review and useful pointers. Will send out next version addressing all comments.

Regards,
Uma Shankar
> > +
> >  /*
> >   * HSW - ICL power wells
> >   *
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
