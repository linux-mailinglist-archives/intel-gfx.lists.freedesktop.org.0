Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE121A1043
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 17:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 387C86E0CB;
	Tue,  7 Apr 2020 15:35:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 268926E0CB
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 15:35:02 +0000 (UTC)
IronPort-SDR: YbYOkEjX16aWDUazNAUZ4x0p9x7jIoiKykN2jzx2pRcfJMJUiSzHQA0LX0yZLGQKe8Jg5Onkw1
 J2fIbOvASZ1Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 08:35:01 -0700
IronPort-SDR: V1yIuUCMJGDz/tvZshXFmGr54gGc+KXzp4RsYbsB8igNKCx0TcUHU/TNRnIUU7vut2j0jyeLD1
 bzFU/knhIsPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="296976500"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Apr 2020 08:35:01 -0700
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Apr 2020 08:35:00 -0700
Received: from BGSMSX107.gar.corp.intel.com (10.223.4.191) by
 FMSMSX161.amr.corp.intel.com (10.18.125.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Apr 2020 08:35:00 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX107.gar.corp.intel.com ([169.254.9.81]) with mapi id 14.03.0439.000;
 Tue, 7 Apr 2020 21:04:51 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/display: Enable DP Display Audio WA
Thread-Index: AQHWDOLGEWVZVhvXvE6A3GForGdwkKhtUnYAgABuZyA=
Date: Tue, 7 Apr 2020 15:34:50 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82447BBB@BGSMSX104.gar.corp.intel.com>
References: <20200407141257.30076-1-uma.shankar@intel.com>
 <87tv1vien9.fsf@intel.com>
In-Reply-To: <87tv1vien9.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Enable DP Display
 Audio WA
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
> Sent: Tuesday, April 7, 2020 7:26 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Vehmanen, Kai <kai.vehmanen@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH v3] drm/i915/display: Enable DP Display Audio WA
> 
> On Tue, 07 Apr 2020, Uma Shankar <uma.shankar@intel.com> wrote:
> > For certain DP VDSC bpp settings, hblank asserts before hblank_early,
> > leading to a bad audio state. Driver need to program "hblank early
> > enable" and "samples per line" parameters in AUDIO_CONFIG_BE register.
> >
> > This is Display Audio WA #1406928334 for 4k+VDSC usecase applicable on
> > DP encoders. Implemented the same.
> >
> > v2: Fixed build failures on 32bit machine.
> >
> > v3: Dropped u64, added helpers for sample room calculation,
> >     other general comments as per Jani Nikula's feedback.
> >     Also fixed connector type check (spotted by Anshuman)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c | 146 +++++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h            |  16 +++
> >  2 files changed, 162 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 950160f1a89f..56fd17b65ce0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -512,6 +512,148 @@ static void hsw_audio_codec_disable(struct
> intel_encoder *encoder,
> >  	mutex_unlock(&dev_priv->av_mutex);
> >  }
> >
> > +/* Add a factor to take care of rounding and truncations */ #define
> > +ROUNDING_FACTOR 10000 static int
> > +set_hblank_early_enable_config(struct intel_encoder *encoder,
> > +					  const struct intel_crtc_state *crtc_state,
> > +					  u32 *val)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	enum pipe pipe = crtc->pipe;
> > +	u32 link_clks_available, link_clks_required;
> > +	u32 tu_data, tu_line, link_clks_active;
> > +	u32 hblank_rise, hblank_early_prog;
> > +	u32 h_active, h_total, hblank_delta, pixel_clk, v_total;
> > +	u32 fec_coeff, refresh_rate, cdclk;
> > +
> > +	h_active = crtc_state->hw.adjusted_mode.hdisplay;
> > +	h_total = crtc_state->hw.adjusted_mode.htotal;
> > +	v_total = crtc_state->hw.adjusted_mode.vtotal;
> > +	hblank_rise = crtc_state->hw.adjusted_mode.hsync_start;
> > +	pixel_clk = crtc_state->hw.adjusted_mode.clock;
> > +	refresh_rate = crtc_state->hw.adjusted_mode.vrefresh;
> > +	cdclk = i915->cdclk.hw.cdclk;
> > +	/* fec= 0.972261, using rounding multiplier of 1000000 */
> > +	fec_coeff = 972261;
> > +
> > +	if (!(h_active && crtc_state->port_clock && crtc_state->lane_count &&
> > +	      crtc_state->pipe_bpp && cdclk)) {
> > +		drm_err(&i915->drm, "Null Parameters received\n");
> > +		WARN_ON(1);
> > +		return -EINVAL;
> > +	}
> > +
> > +	drm_dbg_kms(&i915->drm, "h_active = %u link_clk = %u :"
> > +		    "lanes = %u vdsc_bpp = %u cdclk = %u\n",
> > +		    h_active, crtc_state->port_clock, crtc_state->lane_count,
> > +		    crtc_state->pipe_bpp, cdclk);
> > +
> > +	link_clks_available = ((((h_total - h_active) *
> > +			       ((crtc_state->port_clock * ROUNDING_FACTOR) /
> > +				pixel_clk)) / ROUNDING_FACTOR) - 28);
> > +
> > +	link_clks_required = DIV_ROUND_UP(192000, (refresh_rate *
> > +					  v_total)) * ((48 /
> > +					  crtc_state->lane_count) + 2);
> > +
> > +	if (link_clks_available > link_clks_required)
> > +		hblank_delta = 32;
> > +	else
> > +		hblank_delta = DIV_ROUND_UP(((((5 * ROUNDING_FACTOR) /
> > +					    crtc_state->port_clock) + ((5 *
> > +					    ROUNDING_FACTOR) /
> > +					    cdclk)) * pixel_clk),
> > +					    ROUNDING_FACTOR);
> > +
> > +	tu_data = (pixel_clk * crtc_state->pipe_bpp * 8) /
> > +		   ((crtc_state->port_clock *
> > +		   crtc_state->lane_count * fec_coeff) / 1000000);
> > +	tu_line = (((h_active * crtc_state->port_clock * fec_coeff) /
> > +		   1000000) / (64 * pixel_clk));
> > +	link_clks_active  = (tu_line - 1) * 64 + tu_data;
> > +
> > +	hblank_rise = ((link_clks_active + 6 * DIV_ROUND_UP(link_clks_active,
> > +			250) + 4) * ((pixel_clk * ROUNDING_FACTOR) /
> > +			crtc_state->port_clock)) / ROUNDING_FACTOR;
> > +
> > +	hblank_early_prog = h_active - hblank_rise + hblank_delta;
> > +
> > +	if (hblank_early_prog < 32) {
> > +		*val &= ~HBLANK_START_COUNT_MASK(pipe);
> > +		*val |= HBLANK_START_COUNT(pipe, HBLANK_START_COUNT_32);
> > +	} else if (hblank_early_prog < 64) {
> > +		*val &= ~HBLANK_START_COUNT_MASK(pipe);
> > +		*val |= HBLANK_START_COUNT(pipe, HBLANK_START_COUNT_64);
> > +	} else if (hblank_early_prog < 96) {
> > +		*val &= ~HBLANK_START_COUNT_MASK(pipe);
> > +		*val |= HBLANK_START_COUNT(pipe, HBLANK_START_COUNT_96);
> > +	} else {
> > +		*val &= ~HBLANK_START_COUNT_MASK(pipe);
> > +		*val |= HBLANK_START_COUNT(pipe,
> HBLANK_START_COUNT_128);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static void set_sample_room_config(const struct intel_crtc_state *crtc_state,
> > +				   u32 *val)
> > +{
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	enum pipe pipe = crtc->pipe;
> > +	u32 h_active, h_total, pixel_clk;
> > +	u32 samples_room;
> > +
> > +	h_active = crtc_state->hw.adjusted_mode.hdisplay;
> > +	h_total = crtc_state->hw.adjusted_mode.htotal;
> > +	pixel_clk = crtc_state->hw.adjusted_mode.clock;
> > +
> > +	samples_room = ((((h_total - h_active) * ((crtc_state->port_clock *
> > +			ROUNDING_FACTOR) / pixel_clk)) /
> > +			ROUNDING_FACTOR) - 12) / ((48 /
> > +			crtc_state->lane_count) + 2);
> > +
> > +	if (samples_room < 3) {
> > +		*val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
> > +		*val |= NUMBER_SAMPLES_PER_LINE(pipe, samples_room);
> > +	} else {
> > +		*val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
> > +		*val |= NUMBER_SAMPLES_PER_LINE(pipe, 0x0);
> > +	}
> > +}
> > +
> > +static void enable_audio_dsc_wa(struct intel_encoder *encoder,
> > +				const struct intel_crtc_state *crtc_state) {
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	enum pipe pipe = crtc->pipe;
> > +	u32 val;
> > +
> > +	if (INTEL_GEN(i915) < 11)
> > +		return;
> > +
> > +	val = intel_de_read(i915, AUD_CONFIG_BE);
> > +
> > +	if (INTEL_GEN(i915) == 11)
> > +		val |= HBLANK_EARLY_ENABLE_ICL(pipe);
> > +	else if (INTEL_GEN(i915) >= 12)
> > +		val |= HBLANK_EARLY_ENABLE_TGL(pipe);
> > +
> > +	if (crtc_state->dsc.compression_enable &&
> > +	    (crtc_state->hw.adjusted_mode.hdisplay >= 3840 &&
> > +	     crtc_state->hw.adjusted_mode.vdisplay >= 2160)) {
> > +		if (set_hblank_early_enable_config(encoder, crtc_state, &val))
> > +			return;
> > +
> > +		set_sample_room_config(crtc_state, &val);
> 
> Communication is hard. I tried to imply that you'd add helpers that
> *return* the values. Then the computations get moved to the helpers, yet the
> modifications of the local variable val remain here. The split is clear, and easy to
> follow.

Oops, got your point Jani. Will add the helpers accordingly to simplify this.

Regards,
Uma Shankar

> BR,
> Jani.
> 
> 
> > +	}
> > +
> > +	intel_de_write(i915, AUD_CONFIG_BE, val); }
> > +
> > +#undef ROUNDING_FACTOR
> > +
> >  static void hsw_audio_codec_enable(struct intel_encoder *encoder,
> >  				   const struct intel_crtc_state *crtc_state,
> >  				   const struct drm_connector_state *conn_state)
> @@ -529,6
> > +671,10 @@ static void hsw_audio_codec_enable(struct intel_encoder
> > *encoder,
> >
> >  	mutex_lock(&dev_priv->av_mutex);
> >
> > +	/* Enable Audio WA for 4k DSC usecases */
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
> > +		enable_audio_dsc_wa(encoder, crtc_state);
> > +
> >  	/* Enable audio presence detect, invalidate ELD */
> >  	tmp = intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
> >  	tmp |= AUDIO_OUTPUT_ENABLE(cpu_transcoder);
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 8cebb7a86b8c..f72ea2c2a8e3
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
> > +#define HBLANK_START_COUNT(pipe, val)		(((val) & 0x7) << (3 +
> ((pipe)) * 6))
> > +#define NUMBER_SAMPLES_PER_LINE_MASK(pipe)	(0x3 << ((pipe) * 6))
> > +#define NUMBER_SAMPLES_PER_LINE(pipe, val)	(((val) & 0x3) << ((pipe) *
> 6))
> > +
> > +#define HBLANK_START_COUNT_8	0
> > +#define HBLANK_START_COUNT_16	1
> > +#define HBLANK_START_COUNT_32	2
> > +#define HBLANK_START_COUNT_64	3
> > +#define HBLANK_START_COUNT_96	4
> > +#define HBLANK_START_COUNT_128	5
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
