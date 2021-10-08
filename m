Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8AA426694
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 11:18:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 289CE6E86C;
	Fri,  8 Oct 2021 09:18:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E8336E86C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 09:18:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226370610"
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="226370610"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 02:18:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="489388750"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 08 Oct 2021 02:18:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 8 Oct 2021 02:18:10 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 8 Oct 2021 02:18:08 -0700
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.2242.012;
 Fri, 8 Oct 2021 14:48:06 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>, "Navare, Manasi D" <manasi.d.navare@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v2 2/4] drm/i915/panelreplay: Initializaton and compute
 config for panel replay
Thread-Index: AQHXu5dHd+OhHuxRnUKaKj6fiE22k6vHcamAgAFTodA=
Date: Fri, 8 Oct 2021 09:18:06 +0000
Message-ID: <ae2704d64e2b4ccc8b9f5388db74b7bb@intel.com>
References: <20211007155729.27812-1-animesh.manna@intel.com>
 <20211007155729.27812-3-animesh.manna@intel.com> <87r1cwybpi.fsf@intel.com>
In-Reply-To: <87r1cwybpi.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/panelreplay: Initializaton
 and compute config for panel replay
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



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, October 7, 2021 11:11 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Mun, Gwan-gyeong <gwan-gyeong.mun@intel.com>; Kahola, Mika
> <mika.kahola@intel.com>; Navare, Manasi D <manasi.d.navare@intel.com>;
> Souza, Jose <jose.souza@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: Re: [PATCH v2 2/4] drm/i915/panelreplay: Initializaton and compu=
te
> config for panel replay
>=20
> On Thu, 07 Oct 2021, Animesh Manna <animesh.manna@intel.com> wrote:
> > As panel replay feature similar to PSR feature of EDP panel, so
> > currently utilized existing psr framework for panel replay.
> >
> > v1: RFC version.
> > v2: optimized code, pr_enabled and pr_dpcd variable removed. [Jose]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  2 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 47 +++++++++++++++----
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 43 +++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_psr.h      |  3 ++
> >  include/drm/drm_dp_helper.h                   |  3 ++
> >  5 files changed, 89 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 21ce8bccc645..b32d9529feef 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1070,6 +1070,7 @@ struct intel_crtc_state {
> >  	bool req_psr2_sdp_prior_scanline;
> >  	u32 dc3co_exitline;
> >  	u16 su_y_granularity;
> > +	bool has_panel_replay;
> >  	struct drm_dp_vsc_sdp psr_vsc;
> >
> >  	/*
> > @@ -1531,6 +1532,7 @@ struct intel_psr {
> >  	bool irq_aux_error;
> >  	u16 su_w_granularity;
> >  	u16 su_y_granularity;
> > +	bool sink_pr_support;
> >  	u32 dc3co_exitline;
> >  	u32 dc3co_exit_delay;
> >  	struct delayed_work dc3co_work;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 74a657ae131a..45181692e3b0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1569,12 +1569,22 @@ static void
> intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >
> > -	/*
> > -	 * Prepare VSC Header for SU as per DP 1.4 spec, Table 2-118
> > -	 * VSC SDP supporting 3D stereo, PSR2, and Pixel Encoding/
> > -	 * Colorimetry Format indication.
> > -	 */
> > -	vsc->revision =3D 0x5;
> > +	if (crtc_state->has_panel_replay) {
> > +		/*
> > +		 * Prepare VSC Header for SU as per DP 2.0 spec, Table 2-223
> > +		 * VSC SDP supporting 3D stereo, Panel Replay, and Pixel
> > +		 * Encoding/Colorimetry Format indication.
> > +		 */
> > +		vsc->revision =3D 0x7;
> > +	} else {
> > +		/*
> > +		 * Prepare VSC Header for SU as per DP 1.4 spec, Table 2-118
> > +		 * VSC SDP supporting 3D stereo, PSR2, and Pixel Encoding/
> > +		 * Colorimetry Format indication.
> > +		 */
> > +		vsc->revision =3D 0x5;
> > +	}
> > +
> >  	vsc->length =3D 0x13;
> >
> >  	/* DP 1.4a spec, Table 2-120 */
> > @@ -1683,6 +1693,22 @@ void intel_dp_compute_psr_vsc_sdp(struct
> intel_dp *intel_dp,
> >  			vsc->revision =3D 0x4;
> >  			vsc->length =3D 0xe;
> >  		}
> > +	} else if (intel_dp->psr.enabled && !intel_dp_is_edp(intel_dp)) {
> > +		if (intel_dp->psr.colorimetry_support &&
> > +		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
> > +			/* [PR, +Colorimetry] */
> > +			intel_dp_compute_vsc_colorimetry(crtc_state,
> conn_state,
> > +							 vsc);
> > +		} else {
> > +			/*
> > +			 * [PR, -Colorimetry]
>=20
> I don't understand the comment format here and above. Plain English, plea=
se.

Thanks for review.
Sure, Will change it to "Panel Replay with colorimetry info" and "Panel rep=
lay without colorimetry info"
Earlier followed same format used by PSR2 ...=20

>=20
> > +			 * Prepare VSC Header for SU as per DP 2.0 spec, Table
> 2-223
> > +			 * VSC SDP supporting 3D stereo + PR (applies to eDP
> v1.3 or
> > +			 * higher).
> > +			 */
> > +			vsc->revision =3D 0x6;
> > +			vsc->length =3D 0x10;
> > +		}
> >  	} else {
> >  		/*
> >  		 * [PSR1]
> > @@ -1824,6 +1850,7 @@ intel_dp_compute_config(struct intel_encoder
> > *encoder,
> >
> >  	intel_vrr_compute_config(pipe_config, conn_state);
> >  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> > +	intel_panel_replay_compute_config(intel_dp, pipe_config);
>=20
> Are there any cases where we'd actually need to keep intel_psr_compute_co=
nfig
> and intel_panel_replay_compute_config separate?
> Could you just call intel_panel_replay_compute_config from within
> intel_psr_compute_config to not clutter this?

Ok .. moved intel_panel_replay_compute_config() inside intel_psr_compute_co=
nfig().

>=20
> >  	intel_drrs_compute_config(intel_dp, pipe_config, output_bpp,
> >  				  constant_n);
> >  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state); @@
> > -2731,10 +2758,10 @@ static ssize_t intel_dp_vsc_sdp_pack(const struct
> drm_dp_vsc_sdp *vsc,
> >  	sdp->sdp_header.HB3 =3D vsc->length; /* Number of Valid Data Bytes */
> >
> >  	/*
> > -	 * Only revision 0x5 supports Pixel Encoding/Colorimetry Format as
> > -	 * per DP 1.4a spec.
> > +	 * Revision 0x5 and 0x7 supports Pixel Encoding/Colorimetry Format as
> > +	 * per DP 1.4a spec and DP 2.0 spec respectively.
> >  	 */
> > -	if (vsc->revision !=3D 0x5)
> > +	if (vsc->revision !=3D 0x5 || vsc->revision !=3D 0x7)
> >  		goto out;
> >
> >  	/* VSC SDP Payload for DB16 through DB18 */ @@ -5044,6 +5071,8
> @@
> > intel_dp_init_connector(struct intel_digital_port *dig_port,
> >
> >  	intel_psr_init(intel_dp);
> >
> > +	intel_panel_replay_init(intel_dp);
> > +
>=20
> Ditto here, why not just call intel_panel_replay_init in intel_psr_init?

Ok, moved intel_panel_replay_init() inside intel_psr_init().

>=20
> >  	return true;
> >
> >  fail:
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 7a205fd5023b..935ea1c434ac 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -933,6 +933,21 @@ static bool intel_psr2_config_valid(struct intel_d=
p
> *intel_dp,
> >  	return true;
> >  }
> >
> > +void intel_panel_replay_compute_config(struct intel_dp *intel_dp,
> > +				       struct intel_crtc_state *crtc_state) {
> > +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>=20
> Please use i915 local variable name instead of dev_priv whenever possible=
 for
> new code.

Ok.

>=20
> > +
> > +	if (!intel_dp->psr.sink_pr_support)
> > +		return;
> > +
> > +	crtc_state->has_panel_replay =3D true;
> > +	crtc_state->infoframes.enable |=3D
> > +intel_hdmi_infoframe_enable(DP_SDP_VSC);
> > +
> > +	if (HAS_PSR2_SEL_FETCH(dev_priv))
> > +		intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state); }
> > +
> >  void intel_psr_compute_config(struct intel_dp *intel_dp,
> >  			      struct intel_crtc_state *crtc_state,
> >  			      struct drm_connector_state *conn_state) @@ -
> 2170,6 +2185,34
> > @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
> >  	}
> >  }
> >
> > +/**
> > + * intel_panel_replay_init - Check for sink and source capability.
> > + * @intel_dp: Intel DP
> > + *
> > + * This function is called after the initializing connector.
> > + * (the initializing of connector treats the handling of connector
> > +capabilities)
> > + * And it initializes basic panel replay stuff for each DP Encoder.
> > + */
> > +void intel_panel_replay_init(struct intel_dp *intel_dp) {
> > +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> > +	u8 pr_dpcd;
> > +
> > +	if (!(HAS_DP20(dev_priv) && HAS_PR(dev_priv)))
> > +		return;
> > +
> > +	drm_dp_dpcd_read(&intel_dp->aux, DP_PANEL_REPLAY_SUPPORT,
> &pr_dpcd,
> > +			 sizeof(pr_dpcd));
>=20
> drm_dp_dpcd_readb is for 1-byte reads.
>=20
> If the read fails, pr_dpcd might be uninitialized. Either initialize pr_d=
pcd =3D 0 or
> check the return value.

Ok.

>=20
> > +
> > +	if (!(pr_dpcd & PANEL_REPLAY_SUPPORT)) {
> > +		drm_dbg_kms(&dev_priv->drm,
> > +			    "Panel replay is not supported by panel\n");
>=20
> So I'd rather see debug log when panel replay *is* supported.
>=20
> Or both is and isn't supported.
>=20
> But really not this asymmetric not supported alone.

Ok, have added print for both.

>=20
> > +		return;
> > +	}
> > +
> > +	intel_dp->psr.sink_pr_support =3D true; }
> > +
> >  /**
> >   * intel_psr_init - Init basic PSR work and mutex.
> >   * @intel_dp: Intel DP
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.h
> > b/drivers/gpu/drm/i915/display/intel_psr.h
> > index facffbacd357..c9d1c1f0b470 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> > @@ -32,6 +32,7 @@ void intel_psr_flush(struct drm_i915_private *dev_pri=
v,
> >  		     unsigned frontbuffer_bits,
> >  		     enum fb_op_origin origin);
> >  void intel_psr_init(struct intel_dp *intel_dp);
> > +void intel_panel_replay_init(struct intel_dp *intel_dp);
> >  void intel_psr_compute_config(struct intel_dp *intel_dp,
> >  			      struct intel_crtc_state *crtc_state,
> >  			      struct drm_connector_state *conn_state); @@ -
> 52,5 +53,7 @@
> > void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
> >  					const struct intel_crtc_state
> *crtc_state);  void
> > intel_psr_pause(struct intel_dp *intel_dp);  void
> > intel_psr_resume(struct intel_dp *intel_dp);
> > +void intel_panel_replay_compute_config(struct intel_dp *intel_dp,
> > +				       struct intel_crtc_state *crtc_state);
> >
> >  #endif /* __INTEL_PSR_H__ */
> > diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> > index b52df4db3e8f..d18340cbf8ac 100644
> > --- a/include/drm/drm_dp_helper.h
> > +++ b/include/drm/drm_dp_helper.h
> > @@ -541,6 +541,9 @@ struct drm_panel;
> >  /* DFP Capability Extension */
> >  #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT	0x0a3	/* 2.0 */
> >
> > +#define DP_PANEL_REPLAY_SUPPORT             0x0b0
> > +# define PANEL_REPLAY_SUPPORT               (1 << 0)
> > +
>=20
> Often easier and better to split out drm helper changes to separate patch=
es for
> all kinds of reasons.

Ok.

Regards,
Animesh
>=20
> BR,
> Jani.
>=20
> >  /* Link Configuration */
> >  #define	DP_LINK_BW_SET		            0x100
> >  # define DP_LINK_RATE_TABLE		    0x00    /* eDP 1.4 */
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
