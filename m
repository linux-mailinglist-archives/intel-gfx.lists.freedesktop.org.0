Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D70275505
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 12:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DA5D6E90C;
	Wed, 23 Sep 2020 10:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3442D6E90C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 10:02:53 +0000 (UTC)
IronPort-SDR: j5kBLzw+ekU3zvz7hQaEBEFqIBBoWU93McsxaJBLv4Az/B0w+I2YxsZePsY1orLfqlgy1QoaO/
 wgVO+gHGUWPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="158230009"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="158230009"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 03:02:52 -0700
IronPort-SDR: ZaxOJMKpejPFIFXwtZdzB17eQRxkxaFHq7Kx+OpNBqf6rEFtxP20dar5AMzwwxbTs1VkuHdgUE
 2uc7ffHkrhZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="348829027"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga007.jf.intel.com with ESMTP; 23 Sep 2020 03:02:52 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 11:02:50 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 15:32:49 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [V13 4/5] drm/i915/dsi: Initiate fame request in cmd mode
Thread-Index: AQHWkOd7k0io5IgONECqzMzlrx7D+Kl1orKAgABcnUA=
Date: Wed, 23 Sep 2020 10:02:49 +0000
Message-ID: <ba3d4da2dfc54c8a86947b6b7fc59310@intel.com>
References: <20200922134426.9840-1-vandita.kulkarni@intel.com>
 <20200922134426.9840-5-vandita.kulkarni@intel.com>
 <20200923100023.GC6112@intel.com>
In-Reply-To: <20200923100023.GC6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V13 4/5] drm/i915/dsi: Initiate fame request in
 cmd mode
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, September 23, 2020 3:30 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [V13 4/5] drm/i915/dsi: Initiate fame request in cmd mode
> =

> On Tue, Sep 22, 2020 at 07:14:25PM +0530, Vandita Kulkarni wrote:
> > In TE Gate mode or TE NO_GATE mode on every flip we need to set the
> > frame update request bit.
> > After this  bit is set transcoder hardware will automatically send the
> > frame data to the panel in case of TE NO_GATE mode, where it sends
> > after it receives the TE event in case of TE_GATE mode.
> > Once the frame data is sent to the panel, we see the frame counter
> > updating.
> >
> > v2: Use intel_de_read/write
> >
> > v3: remove the usage of private_flags
> >
> > v4: Use icl_dsi in func names if non static,
> >     fix code formatting issues. (Jani)
> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c       | 26 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++
> >  drivers/gpu/drm/i915/display/intel_dsi.h     |  1 +
> >  3 files changed, 37 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 2789020e20db..7d2abc7f6ba3 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -205,6 +205,32 @@ static int dsi_send_pkt_payld(struct intel_dsi_host
> *host,
> >  	return 0;
> >  }
> >
> > +void icl_dsi_frame_update(struct intel_crtc_state *crtc_state) {
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > +	u32 tmp, flags;
> > +	enum port port;
> > +
> > +	flags =3D crtc->mode_flags;
> > +
> > +	/*
> > +	 * case 1 also covers dual link
> > +	 * In case of dual link, frame update should be set on
> > +	 * DSI_0
> > +	 */
> > +	if (flags & I915_MODE_FLAG_DSI_USE_TE0)
> > +		port =3D PORT_A;
> > +	else if (flags & I915_MODE_FLAG_DSI_USE_TE1)
> > +		port =3D PORT_B;
> > +	else
> > +		return;
> > +
> > +	tmp =3D intel_de_read(dev_priv, DSI_CMD_FRMCTL(port));
> > +	tmp |=3D DSI_FRAME_UPDATE_REQUEST;
> > +	intel_de_write(dev_priv, DSI_CMD_FRMCTL(port), tmp); }
> > +
> >  static void dsi_program_swing_and_deemphasis(struct intel_encoder
> > *encoder)  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> diff
> > --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 5a9d933e425a..c4f331f2af45 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -15616,6 +15616,16 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
> >  		intel_set_cdclk_post_plane_update(state);
> >  	}
> >
> > +	/*
> > +	 * Incase of mipi dsi command mode, we need to set frame update
> > +	 * for every commit
> > +	 */
> > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> > +		if (INTEL_GEN(dev_priv) >=3D 11 &&
> > +		    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
> > +			if (new_crtc_state->hw.active)
> > +				icl_dsi_frame_update(new_crtc_state);
> > +
> =

> Still the wrong place.
Should I be adding it at the end of pipe update? As we need TE to be enable=
d when we send frame update.

-Thanks
Vandita
> =

> >  	/* FIXME: We should call drm_atomic_helper_commit_hw_done()
> here
> >  	 * already, but still need the state for the delayed optimization. To
> >  	 * fix this:
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h
> > b/drivers/gpu/drm/i915/display/intel_dsi.h
> > index 19f78a4022d3..625f2f1ae061 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
> > @@ -167,6 +167,7 @@ static inline u16 intel_dsi_encoder_ports(struct
> > intel_encoder *encoder)
> >
> >  /* icl_dsi.c */
> >  void icl_dsi_init(struct drm_i915_private *dev_priv);
> > +void icl_dsi_frame_update(struct intel_crtc_state *crtc_state);
> >
> >  /* intel_dsi.c */
> >  int intel_dsi_bitrate(const struct intel_dsi *intel_dsi);
> > --
> > 2.21.0.5.gaeb582a
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
