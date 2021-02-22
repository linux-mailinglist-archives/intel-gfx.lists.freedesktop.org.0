Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF2C321ED6
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 19:11:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42AFC6E192;
	Mon, 22 Feb 2021 18:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3DCF6E17B
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 18:11:28 +0000 (UTC)
IronPort-SDR: gfRp/xTdtVE8Kvr0cPa7xrqjmt+nj+unPReMqBnIo0Pxm3zPvYMKFp5ZDKTRRELSWfBzZW3+9J
 Xwb4N1LJyMQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="182042586"
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="182042586"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 10:11:27 -0800
IronPort-SDR: wB83ZwwITiuPlnzef+bwkUjBqVrawAmhejocDPhtNMksH5bch7YgZlm9eocH0fgXePklhzM18D
 ctjm2OOjGviA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="514877085"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga004.jf.intel.com with ESMTP; 22 Feb 2021 10:11:25 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 18:11:24 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 23:41:22 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 6/9] drm/i915/mso: add splitter state
 readout for platforms that support it
Thread-Index: AQHXAIWgS4v3OqO73U+mE3KHgjtWMKpjv5CAgABaNQCAAG+e8A==
Date: Mon, 22 Feb 2021 18:11:22 +0000
Message-ID: <5f5f43a15a7142dbb598fbb5fbd4fbe0@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
 <6fb9f831672c951c00d92f1176bd42d3b0f30145.1613054234.git.jani.nikula@intel.com>
 <485ac3466f8945afa89a79d4d979f0d1@intel.com> <87eeh8f3et.fsf@intel.com>
In-Reply-To: <87eeh8f3et.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 6/9] drm/i915/mso: add splitter state
 readout for platforms that support it
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
Cc: "Varide, Nischal" <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Monday, February 22, 2021 10:25 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Varide, Nischal <nischal.varide@intel.com>
> Subject: RE: [Intel-gfx] [PATCH v3 6/9] drm/i915/mso: add splitter state readout for
> platforms that support it
> 
> On Mon, 22 Feb 2021, "Shankar, Uma" <uma.shankar@intel.com> wrote:
> >> -----Original Message-----
> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> >> Of Jani Nikula
> >> Sent: Thursday, February 11, 2021 8:22 PM
> >> To: intel-gfx@lists.freedesktop.org
> >> Cc: Nikula, Jani <jani.nikula@intel.com>; Varide, Nischal
> >> <nischal.varide@intel.com>
> >> Subject: [Intel-gfx] [PATCH v3 6/9] drm/i915/mso: add splitter state
> >> readout for platforms that support it
> >>
> >> Add splitter configuration to crtc state, and read it where
> >> supported. Also add splitter state dumping. The stream splitter will be required for
> eDP MSO.
> >>
> >> v3:
> >> - Convert segment timings to full panel timings.
> >> - Refer to splitter instead of mso in crtc state.
> >> - Dump splitter state.
> >>
> >> v2: Add warning for mso being enabled on pipes other than A.
> >>
> >> Cc: Nischal Varide <nischal.varide@intel.com>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_ddi.c      | 37 +++++++++++++++++++
> >>  drivers/gpu/drm/i915/display/intel_display.c  | 31 +++++++++++++++-
> >>  .../drm/i915/display/intel_display_types.h    |  7 ++++
> >>  drivers/gpu/drm/i915/i915_drv.h               |  2 +
> >>  4 files changed, 75 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> index 3c4003605f93..c9098297b6ac 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> @@ -2132,6 +2132,41 @@ static void intel_ddi_power_up_lanes(struct
> >> intel_encoder *encoder,
> >>  	}
> >>  }
> >>
> >> +static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
> >> +				     struct intel_crtc_state *pipe_config) {
> >> +	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> >> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >> +	enum pipe pipe = crtc->pipe;
> >> +	u32 dss1;
> >> +
> >> +	if (!HAS_MSO(i915))
> >> +		return;
> >> +
> >> +	dss1 = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
> >> +
> >> +	pipe_config->splitter.enable = dss1 & SPLITTER_ENABLE;
> >> +	if (!pipe_config->splitter.enable)
> >> +		return;
> >> +
> >> +	/* Splitter enable is supported for pipe A only. */
> >> +	if (drm_WARN_ON(&i915->drm, pipe != PIPE_A)) {
> >> +		pipe_config->splitter.enable = false;
> >> +		return;
> >> +	}
> >> +
> >> +	switch (dss1 & SPLITTER_CONFIGURATION_MASK) {
> >> +	case SPLITTER_CONFIGURATION_2_SEGMENT:
> >> +		pipe_config->splitter.link_count = 2;
> >> +		break;
> >> +	case SPLITTER_CONFIGURATION_4_SEGMENT:
> >> +		pipe_config->splitter.link_count = 4;
> >> +		break;
> >
> > Should we have a default case as well just for sanity along with a
> > WARN, since it's very unlikely that it gets hit.
> 
> Ok.
> 
> >
> >> +	}
> >> +
> >> +	pipe_config->splitter.pixel_overlap =
> >> +REG_FIELD_GET(OVERLAP_PIXELS_MASK, dss1); }
> >> +
> >>  static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >>  				  struct intel_encoder *encoder,
> >>  				  const struct intel_crtc_state *crtc_state, @@ -
> >> 3322,6 +3357,8 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
> >>  		intel_ddi_read_func_ctl(encoder, pipe_config);
> >>  	}
> >>
> >> +	intel_ddi_mso_get_config(encoder, pipe_config);
> >> +
> >>  	pipe_config->has_audio =
> >>  		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> >> b/drivers/gpu/drm/i915/display/intel_display.c
> >> index beed08c00b6c..fe9985bd5786 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -4856,8 +4856,30 @@ static void
> >> intel_crtc_readout_derived_state(struct
> >> intel_crtc_state *crtc_state
> >>  		pipe_mode->crtc_clock /= 2;
> >>  	}
> >>
> >> -	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
> >> -	intel_mode_from_crtc_timings(adjusted_mode, adjusted_mode);
> >> +	if (crtc_state->splitter.enable) {
> >
> > We can just add an else if case to if (crtc_state->bigjoiner) {
> >
> > if (crtc_state->bigjoiner) {
> > ...
> > } else if (crtc_state->splitter.enable) { ...
> > }
> >
> >> +		int n = crtc_state->splitter.link_count;
> >> +		int overlap = crtc_state->splitter.pixel_overlap;
> >> +
> >> +		/*
> >> +		 * eDP MSO uses segment timings from EDID for transcoder
> >> +		 * timings, but full mode for everything else.
> >> +		 *
> >> +		 * h_full = (h_segment - pixel_overlap) * link_count
> >> +		 */
> >> +		pipe_mode->crtc_hdisplay = (pipe_mode->crtc_hdisplay - overlap) *
> >> n;
> >> +		pipe_mode->crtc_hblank_start = (pipe_mode->crtc_hblank_start -
> >> overlap) * n;
> >> +		pipe_mode->crtc_hblank_end = (pipe_mode->crtc_hblank_end -
> >> overlap) * n;
> >> +		pipe_mode->crtc_hsync_start = (pipe_mode->crtc_hsync_start -
> >> overlap) * n;
> >> +		pipe_mode->crtc_hsync_end = (pipe_mode->crtc_hsync_end -
> >> overlap) * n;
> >> +		pipe_mode->crtc_htotal = (pipe_mode->crtc_htotal - overlap) * n;
> >> +		pipe_mode->crtc_clock *= n;
> >> +
> >> +		intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
> >> +		intel_mode_from_crtc_timings(adjusted_mode, pipe_mode);
> >
> > Then we can keep above 2 out of the if conditions.
> 
> Note that the 2 lines in the if branches are *not* the same, and the order matters!
> 
> I tried various alternatives, but to me this had the most clarity.

Yeah got it Jani, missed that. Looks ok, please ignore the earlier comment.

> >
> >> +	} else {
> >> +		intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
> >> +		intel_mode_from_crtc_timings(adjusted_mode, adjusted_mode);
> >> +	}
> >>
> >>  	intel_crtc_compute_pixel_rate(crtc_state);
> >>
> >> @@ -8259,6 +8281,11 @@ static void intel_dump_pipe_config(const
> >> struct intel_crtc_state *pipe_config,
> >>  		    pipe_config->bigjoiner_slave ? "slave" :
> >>  		    pipe_config->bigjoiner ? "master" : "no");
> >>
> >> +	drm_dbg_kms(&dev_priv->drm, "splitter: %s, link count %d, overlap %d\n",
> >> +		    enableddisabled(pipe_config->splitter.enable),
> >> +		    pipe_config->splitter.link_count,
> >> +		    pipe_config->splitter.pixel_overlap);
> >> +
> >>  	if (pipe_config->has_pch_encoder)
> >>  		intel_dump_m_n_config(pipe_config, "fdi",
> >>  				      pipe_config->fdi_lanes,
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index 71611b596c88..5564db512d22 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -1161,6 +1161,13 @@ struct intel_crtc_state {
> >>  		u8 pipeline_full;
> >>  		u16 flipline, vmin, vmax;
> >>  	} vrr;
> >> +
> >> +	/* Stream Splitter for eDP MSO */
> >> +	struct {
> >> +		bool enable;
> >> +		u8 link_count;
> >> +		u8 pixel_overlap;
> >> +	} splitter;
> >
> > For DSI which also has this in common along with MSO, may be we can
> > take these link_count and pixel_overlap out of splitter which is more of a MSO
> feature. Thoughts ?
> 
> Ville suggested the same I think.
> >
> >>  };
> >>
> >>  enum intel_pipe_crc_source {
> >> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> >> b/drivers/gpu/drm/i915/i915_drv.h index 9f55b5e6d8c9..3d8be7b021d9
> >> 100644
> >> --- a/drivers/gpu/drm/i915/i915_drv.h
> >> +++ b/drivers/gpu/drm/i915/i915_drv.h
> >> @@ -1709,6 +1709,8 @@ tgl_stepping_get(struct drm_i915_private
> >> *dev_priv)
> >>
> >>  #define HAS_CSR(dev_priv)	(INTEL_INFO(dev_priv)->display.has_csr)
> >>
> >> +#define HAS_MSO(i915)		(INTEL_GEN(i915) >= 12)
> >> +
> >>  #define HAS_RUNTIME_PM(dev_priv)
> >> (INTEL_INFO(dev_priv)->has_runtime_pm)
> >>  #define HAS_64BIT_RELOC(dev_priv)
> >> (INTEL_INFO(dev_priv)->has_64bit_reloc)
> >>
> >> --
> >> 2.20.1
> >>
> >> _______________________________________________
> >> Intel-gfx mailing list
> >> Intel-gfx@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
