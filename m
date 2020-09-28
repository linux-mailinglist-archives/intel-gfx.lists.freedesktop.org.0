Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D03427ABB2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 12:19:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A48D989EAC;
	Mon, 28 Sep 2020 10:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A329889EAC
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Sep 2020 10:19:35 +0000 (UTC)
IronPort-SDR: TbeNMpiAQCSk8Hbfum9prip9xENrJhfZWqgsXFr/b8ZIUIDauEkpk4H6sddMTPZeQOR3NO64ko
 Jl2hqGO3waXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9757"; a="149743259"
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="149743259"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 03:19:34 -0700
IronPort-SDR: Jq3hDxI7yga/CDV8r5Ti5wvgicT1qu2DWVOZ+yWWZRNGXGd45VncqrBl7cAUIOmDnzRcMq0gaZ
 zuhZZYoA9ATg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="488516293"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga005.jf.intel.com with ESMTP; 28 Sep 2020 03:19:34 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 28 Sep 2020 11:19:32 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.1713.004;
 Mon, 28 Sep 2020 15:49:31 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [V14 4/5] drm/i915/dsi: Initiate frame request in cmd mode
Thread-Index: AQHWknEbWea8M9dQLE+qtCMz8tpSwql9gC+AgABcYrA=
Date: Mon, 28 Sep 2020 10:19:31 +0000
Message-ID: <6129d4aecf8c400b8ee0cbea6daeaf17@intel.com>
References: <20200924124209.17916-1-vandita.kulkarni@intel.com>
 <20200924124209.17916-5-vandita.kulkarni@intel.com>
 <20200928101757.GT6112@intel.com>
In-Reply-To: <20200928101757.GT6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V14 4/5] drm/i915/dsi: Initiate frame request in
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
> Sent: Monday, September 28, 2020 3:48 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [V14 4/5] drm/i915/dsi: Initiate frame request in cmd mode
> =

> On Thu, Sep 24, 2020 at 06:12:08PM +0530, Vandita Kulkarni wrote:
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
> > v5: Send frame update request at the beginning of
> >     pipe_update_end, use crtc_state mode_flags (Ville)
> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c      | 26 +++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dsi.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_sprite.c |  7 ++++++
> >  3 files changed, 34 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 2789020e20db..fe946a2e2082 100644
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
> > +	u32 tmp, mode_flags;
> > +	enum port port;
> > +
> > +	mode_flags =3D crtc_state->mode_flags;
> > +
> > +	/*
> > +	 * case 1 also covers dual link
> > +	 * In case of dual link, frame update should be set on
> > +	 * DSI_0
> > +	 */
> > +	if (mode_flags & I915_MODE_FLAG_DSI_USE_TE0)
> > +		port =3D PORT_A;
> > +	else if (mode_flags & I915_MODE_FLAG_DSI_USE_TE1)
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
> > --git a/drivers/gpu/drm/i915/display/intel_dsi.h
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
> >  int intel_dsi_bitrate(const struct intel_dsi *intel_dsi); diff --git
> > a/drivers/gpu/drm/i915/display/intel_sprite.c
> > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > index 63040cb0d4e1..eaee29e0f535 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -47,6 +47,7 @@
> >  #include "intel_frontbuffer.h"
> >  #include "intel_pm.h"
> >  #include "intel_psr.h"
> > +#include "intel_dsi.h"
> >  #include "intel_sprite.h"
> >
> >  int intel_usecs_to_scanlines(const struct drm_display_mode
> > *adjusted_mode, @@ -202,6 +203,12 @@ void
> intel_pipe_update_end(struct
> > intel_crtc_state *new_crtc_state)
> >
> >  	trace_intel_pipe_update_end(crtc, end_vbl_count, scanline_end);
> >
> > +	/*
> > +	 * Incase of mipi dsi command mode, we need to set frame update
> > +	 * request for every commit.
> > +	 */
> > +	icl_dsi_frame_update(new_crtc_state);
> =

> Calling something called icl_dsi_foo() unconditionally from platform agno=
stic
> code looks confusing. I'd add platform+intel_crtc_has_type() check here.

Ok, sure will add the check.

Thanks
Vandita
> =

> > +
> >  	/* We're still in the vblank-evade critical section, this can't race.
> >  	 * Would be slightly nice to just grab the vblank count and arm the
> >  	 * event outside of the critical section - the spinlock might spin
> > for a
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
