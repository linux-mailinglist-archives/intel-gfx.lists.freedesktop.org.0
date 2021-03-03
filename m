Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E4032B7BA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 13:09:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBA1E89BC2;
	Wed,  3 Mar 2021 12:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30C7B89BC2
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 12:09:19 +0000 (UTC)
IronPort-SDR: yTW4TSJh3slvxj1Z59Skq6DLgCMRc2nkGjm31V7Z9UMgu2xp5XrBKaOF5O8X0tt2y9+rP6TLBR
 Mkrnlv2mq0bg==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="167078919"
X-IronPort-AV: E=Sophos;i="5.81,219,1610438400"; d="scan'208";a="167078919"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 04:09:18 -0800
IronPort-SDR: FYHliamq2jC4w3zysiQUWg1AU/qYcm0XXEqPwjXsfhn5o1pwbaI1a+S6DHW8+Yr2ta534LGosb
 bdZ88dKpjXvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,219,1610438400"; d="scan'208";a="596362298"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga006.fm.intel.com with ESMTP; 03 Mar 2021 04:09:18 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 3 Mar 2021 12:09:16 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.013;
 Wed, 3 Mar 2021 17:39:15 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 1/4] drm/i915/mso: add splitter state readout for
 platforms that support it
Thread-Index: AQHXD1OpxrKTOPAeMkKnq22kwbF4AqpyLMQQ
Date: Wed, 3 Mar 2021 12:09:14 +0000
Message-ID: <9fc4a8dd74894b9fb18282223193d362@intel.com>
References: <cover.1614682842.git.jani.nikula@intel.com>
 <95cbe1c9d45edf3e3ec252e49fb49055def98155.1614682842.git.jani.nikula@intel.com>
In-Reply-To: <95cbe1c9d45edf3e3ec252e49fb49055def98155.1614682842.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 1/4] drm/i915/mso: add splitter state
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
> Sent: Tuesday, March 2, 2021 4:33 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nikula, Jani <jani.nikula@intel.com>;
> Varide, Nischal <nischal.varide@intel.com>
> Subject: [PATCH v4 1/4] drm/i915/mso: add splitter state readout for platforms that
> support it
> 
> Add splitter configuration to crtc state, and read it where supported. Also add
> splitter state dumping. The stream splitter will be required for eDP MSO.
> 
> v4:
> - Catch invalid splitter configuration (Uma)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> v3:
> - Convert segment timings to full panel timings.
> - Refer to splitter instead of mso in crtc state.
> - Dump splitter state.
> 
> v2: Add warning for mso being enabled on pipes other than A.
> 
> Cc: Nischal Varide <nischal.varide@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 41 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c  | 31 +++++++++++++-
>  .../drm/i915/display/intel_display_types.h    |  7 ++++
>  drivers/gpu/drm/i915/i915_drv.h               |  2 +
>  4 files changed, 79 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index eeae78097a20..d4cfe7e85538 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2136,6 +2136,45 @@ static void intel_ddi_power_up_lanes(struct
> intel_encoder *encoder,
>  	}
>  }
> 
> +static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
> +				     struct intel_crtc_state *pipe_config) {
> +	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	enum pipe pipe = crtc->pipe;
> +	u32 dss1;
> +
> +	if (!HAS_MSO(i915))
> +		return;
> +
> +	dss1 = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
> +
> +	pipe_config->splitter.enable = dss1 & SPLITTER_ENABLE;
> +	if (!pipe_config->splitter.enable)
> +		return;
> +
> +	/* Splitter enable is supported for pipe A only. */
> +	if (drm_WARN_ON(&i915->drm, pipe != PIPE_A)) {
> +		pipe_config->splitter.enable = false;
> +		return;
> +	}
> +
> +	switch (dss1 & SPLITTER_CONFIGURATION_MASK) {
> +	default:
> +		drm_WARN(&i915->drm, true,
> +			 "Invalid splitter configuration, dss1=0x%08x\n", dss1);
> +		fallthrough;
> +	case SPLITTER_CONFIGURATION_2_SEGMENT:
> +		pipe_config->splitter.link_count = 2;
> +		break;
> +	case SPLITTER_CONFIGURATION_4_SEGMENT:
> +		pipe_config->splitter.link_count = 4;
> +		break;
> +	}
> +
> +	pipe_config->splitter.pixel_overlap =
> +REG_FIELD_GET(OVERLAP_PIXELS_MASK, dss1); }
> +
>  static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				  struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state, @@ -
> 3316,6 +3355,8 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
>  		intel_ddi_read_func_ctl(encoder, pipe_config);
>  	}
> 
> +	intel_ddi_mso_get_config(encoder, pipe_config);
> +
>  	pipe_config->has_audio =
>  		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index d0da88751c72..49f2a974eca2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4859,8 +4859,30 @@ static void intel_crtc_readout_derived_state(struct
> intel_crtc_state *crtc_state
>  		pipe_mode->crtc_clock /= 2;
>  	}
> 
> -	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
> -	intel_mode_from_crtc_timings(adjusted_mode, adjusted_mode);
> +	if (crtc_state->splitter.enable) {
> +		int n = crtc_state->splitter.link_count;
> +		int overlap = crtc_state->splitter.pixel_overlap;
> +
> +		/*
> +		 * eDP MSO uses segment timings from EDID for transcoder
> +		 * timings, but full mode for everything else.
> +		 *
> +		 * h_full = (h_segment - pixel_overlap) * link_count
> +		 */
> +		pipe_mode->crtc_hdisplay = (pipe_mode->crtc_hdisplay - overlap) *
> n;
> +		pipe_mode->crtc_hblank_start = (pipe_mode->crtc_hblank_start -
> overlap) * n;
> +		pipe_mode->crtc_hblank_end = (pipe_mode->crtc_hblank_end -
> overlap) * n;
> +		pipe_mode->crtc_hsync_start = (pipe_mode->crtc_hsync_start -
> overlap) * n;
> +		pipe_mode->crtc_hsync_end = (pipe_mode->crtc_hsync_end -
> overlap) * n;
> +		pipe_mode->crtc_htotal = (pipe_mode->crtc_htotal - overlap) * n;
> +		pipe_mode->crtc_clock *= n;
> +
> +		intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
> +		intel_mode_from_crtc_timings(adjusted_mode, pipe_mode);
> +	} else {
> +		intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
> +		intel_mode_from_crtc_timings(adjusted_mode, adjusted_mode);
> +	}
> 
>  	intel_crtc_compute_pixel_rate(crtc_state);
> 
> @@ -8259,6 +8281,11 @@ static void intel_dump_pipe_config(const struct
> intel_crtc_state *pipe_config,
>  		    pipe_config->bigjoiner_slave ? "slave" :
>  		    pipe_config->bigjoiner ? "master" : "no");
> 
> +	drm_dbg_kms(&dev_priv->drm, "splitter: %s, link count %d, overlap %d\n",
> +		    enableddisabled(pipe_config->splitter.enable),
> +		    pipe_config->splitter.link_count,
> +		    pipe_config->splitter.pixel_overlap);
> +
>  	if (pipe_config->has_pch_encoder)
>  		intel_dump_m_n_config(pipe_config, "fdi",
>  				      pipe_config->fdi_lanes,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 1a76e1d9de7a..9f1945018712 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1166,6 +1166,13 @@ struct intel_crtc_state {
>  		u8 pipeline_full;
>  		u16 flipline, vmin, vmax;
>  	} vrr;
> +
> +	/* Stream Splitter for eDP MSO */
> +	struct {
> +		bool enable;
> +		u8 link_count;
> +		u8 pixel_overlap;
> +	} splitter;
>  };
> 
>  enum intel_pipe_crc_source {
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index f8413b3b9da8..47acb4f8cb1f 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1709,6 +1709,8 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
> 
>  #define HAS_CSR(dev_priv)	(INTEL_INFO(dev_priv)->display.has_csr)
> 
> +#define HAS_MSO(i915)		(INTEL_GEN(i915) >= 12)
> +
>  #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
>  #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
> 
> --
> 2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
