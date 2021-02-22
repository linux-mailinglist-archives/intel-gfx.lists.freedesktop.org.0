Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 884883213B2
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 11:06:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 353566E934;
	Mon, 22 Feb 2021 10:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABC736E933
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 10:06:21 +0000 (UTC)
IronPort-SDR: zcRFYF3hBlIAeM19cTvfklui0RCfUp9Z9Q+zBThhP9odYhnhnZFsABDjF/xe9+JpnIvyPKjfgi
 TfV2t1YhUpAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="180949119"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="180949119"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 02:06:21 -0800
IronPort-SDR: tNSbLApaK9G2rpQL0hwhoNP2274zo5SHotttGSud3Cuz2n0dcJnGzbKoRbRV92oU05bjQctep3
 HvMpZvSmeLXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="595919922"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by fmsmga005.fm.intel.com with ESMTP; 22 Feb 2021 02:06:20 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 10:06:19 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 15:36:17 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 9/9] drm/i915/edp: enable eDP MSO during
 link training
Thread-Index: AQHXAIW2yjUV8ddHukSkIkcnYsmvyKpkA1Pg
Date: Mon, 22 Feb 2021 10:06:17 +0000
Message-ID: <245ff31384274438a4bf6a959f2670cd@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
 <7a7cbe23a32d99e18dd7ff768b1e3a96c628a572.1613054234.git.jani.nikula@intel.com>
In-Reply-To: <7a7cbe23a32d99e18dd7ff768b1e3a96c628a572.1613054234.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 9/9] drm/i915/edp: enable eDP MSO during
 link training
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Varide,
 Nischal" <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani Nikula
> Sent: Thursday, February 11, 2021 8:22 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Varide, Nischal <nischal.varide@intel.com>
> Subject: [Intel-gfx] [PATCH v3 9/9] drm/i915/edp: enable eDP MSO during link
> training
> 
> If the source and sink support MSO, enable it during link training.
> 
> v3: Adjust timings, refer to splitter

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> v2: Limit MSO to pipe A using ->pipe_mask
> 
> Cc: Nischal Varide <nischal.varide@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 37 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++
>  drivers/gpu/drm/i915/display/intel_dp.c      | 34 ++++++++++++++++--
>  3 files changed, 82 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index c9098297b6ac..5a8d1abd208a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2167,6 +2167,34 @@ static void intel_ddi_mso_get_config(struct
> intel_encoder *encoder,
>  	pipe_config->splitter.pixel_overlap =
> REG_FIELD_GET(OVERLAP_PIXELS_MASK, dss1);  }
> 
> +static void intel_ddi_mso_configure(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	enum pipe pipe = crtc->pipe;
> +	u32 dss1 = 0;
> +
> +	if (!HAS_MSO(i915))
> +		return;
> +
> +	if (crtc_state->splitter.enable) {
> +		/* Splitter enable is supported for pipe A only. */
> +		if (drm_WARN_ON(&i915->drm, pipe != PIPE_A))
> +			return;
> +
> +		dss1 |= SPLITTER_ENABLE;
> +		dss1 |= OVERLAP_PIXELS(crtc_state->splitter.pixel_overlap);
> +		if (crtc_state->splitter.link_count == 2)
> +			dss1 |= SPLITTER_CONFIGURATION_2_SEGMENT;
> +		else
> +			dss1 |= SPLITTER_CONFIGURATION_4_SEGMENT;
> +	}
> +
> +	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
> +		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
> +		     OVERLAP_PIXELS_MASK, dss1);
> +}
> +
>  static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				  struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state, @@ -
> 2260,6 +2288,11 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state
> *state,
>  	 */
>  	intel_ddi_power_up_lanes(encoder, crtc_state);
> 
> +	/*
> +	 * 7.g Program CoG/MSO configuration bits in DSS_CTL1 if selected.
> +	 */
> +	intel_ddi_mso_configure(crtc_state);
> +
>  	/*
>  	 * 7.g Configure and enable DDI_BUF_CTL
>  	 * 7.h Wait for DDI_BUF_CTL DDI Idle Status = 0b (Not Idle), timeout @@ -
> 4143,6 +4176,10 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum
> port port)
>  			goto err;
> 
>  		dig_port->hpd_pulse = intel_dp_hpd_pulse;
> +
> +		/* Splitter enable for eDP MSO is supported for pipe A only. */
> +		if (dig_port->dp.mso_link_count)
> +			encoder->pipe_mask = BIT(PIPE_A);
>  	}
> 
>  	/* In theory we don't need the encoder->type check, but leave it just in diff -
> -git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 3059a07b8c36..06b7edbe1187 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4917,6 +4917,19 @@ static int intel_crtc_compute_config(struct intel_crtc
> *crtc,
>  		pipe_config->pipe_src_w /= 2;
>  	}
> 
> +	if (pipe_config->splitter.enable) {
> +		int n = pipe_config->splitter.link_count;
> +		int overlap = pipe_config->splitter.pixel_overlap;
> +
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
> +	}
> +
>  	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
> 
>  	if (INTEL_GEN(dev_priv) < 4) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5d5b16f70ed2..8f39da994d14 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1745,6 +1745,10 @@ intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
>  			       intel_connector->panel.downclock_mode->clock,
>  			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
>  			       constant_n, pipe_config->fec_enable);
> +
> +	/* FIXME: abstract this better */
> +	if (pipe_config->splitter.enable)
> +		pipe_config->dp_m2_n2.gmch_m *= pipe_config-
> >splitter.link_count;
>  }
> 
>  int
> @@ -1819,6 +1823,26 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
>  		output_bpp = intel_dp_output_bpp(pipe_config->output_format,
>  						 pipe_config->pipe_bpp);
> 
> +	if (intel_dp->mso_link_count) {
> +		int n = intel_dp->mso_link_count;
> +		int overlap = intel_dp->mso_pixel_overlap;
> +
> +		pipe_config->splitter.enable = true;
> +		pipe_config->splitter.link_count = n;
> +		pipe_config->splitter.pixel_overlap = overlap;
> +
> +		drm_dbg_kms(&dev_priv->drm, "MSO link count %d, pixel overlap
> %d\n",
> +			    n, overlap);
> +
> +		adjusted_mode->crtc_hdisplay = adjusted_mode->crtc_hdisplay / n
> + overlap;
> +		adjusted_mode->crtc_hblank_start = adjusted_mode-
> >crtc_hblank_start / n + overlap;
> +		adjusted_mode->crtc_hblank_end = adjusted_mode-
> >crtc_hblank_end / n + overlap;
> +		adjusted_mode->crtc_hsync_start = adjusted_mode-
> >crtc_hsync_start / n + overlap;
> +		adjusted_mode->crtc_hsync_end = adjusted_mode-
> >crtc_hsync_end / n + overlap;
> +		adjusted_mode->crtc_htotal = adjusted_mode->crtc_htotal / n +
> overlap;
> +		adjusted_mode->crtc_clock /= n;
> +	}
> +
>  	intel_link_compute_m_n(output_bpp,
>  			       pipe_config->lane_count,
>  			       adjusted_mode->crtc_clock,
> @@ -1826,6 +1850,10 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
>  			       &pipe_config->dp_m_n,
>  			       constant_n, pipe_config->fec_enable);
> 
> +	/* FIXME: abstract this better */
> +	if (pipe_config->splitter.enable)
> +		pipe_config->dp_m_n.gmch_m *= pipe_config->splitter.link_count;
> +
>  	if (!HAS_DDI(dev_priv))
>  		intel_dp_set_clock(encoder, pipe_config);
> 
> @@ -3564,8 +3592,10 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>  	if (mso) {
>  		drm_dbg_kms(&i915->drm, "Sink MSO %ux%u configuration\n",
>  			    mso, drm_dp_max_lane_count(intel_dp->dpcd) / mso);
> -		drm_err(&i915->drm, "No source MSO support, disabling\n");
> -		mso = 0;
> +		if (!HAS_MSO(i915)) {
> +			drm_err(&i915->drm, "No source MSO support,
> disabling\n");
> +			mso = 0;
> +		}
>  	}
> 
>  	intel_dp->mso_link_count = mso;
> --
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
