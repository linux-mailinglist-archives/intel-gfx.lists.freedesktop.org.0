Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB07277048
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 13:50:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDAE36E3FE;
	Thu, 24 Sep 2020 11:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CBA16E3FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 11:50:29 +0000 (UTC)
IronPort-SDR: lfrEgbqoDXfpYw4IYY8p7+W8aosYl6Y0aloyaeh7RSIk1VAMgWPCgl8aDoq4NNnidGPVfc3DFX
 Da1i7gGPCvWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="148827456"
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="148827456"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 04:50:28 -0700
IronPort-SDR: c9cWecWgpY5gTOE6v9dZkg+oODu6KaL/hdr+Jd4mSFvTmkPNgQ0SqOr+//GiY6xmwvQXGl6Q/X
 SumZKt5rCVng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="455318421"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga004.jf.intel.com with ESMTP; 24 Sep 2020 04:50:27 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Sep 2020 12:50:25 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.1713.004;
 Thu, 24 Sep 2020 17:20:24 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [V13 4/5] drm/i915/dsi: Initiate fame request in cmd mode
Thread-Index: AQHWkOd7k0io5IgONECqzMzlrx7D+Kl1orKAgABcnUD//6x6gIAB/NBg
Date: Thu, 24 Sep 2020 11:50:24 +0000
Message-ID: <18b4da9e7fc34add918c4aa7109edcac@intel.com>
References: <20200922134426.9840-1-vandita.kulkarni@intel.com>
 <20200922134426.9840-5-vandita.kulkarni@intel.com>
 <20200923100023.GC6112@intel.com>
 <ba3d4da2dfc54c8a86947b6b7fc59310@intel.com>
 <20200923103254.GE6112@intel.com>
In-Reply-To: <20200923103254.GE6112@intel.com>
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
> Sent: Wednesday, September 23, 2020 4:03 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [V13 4/5] drm/i915/dsi: Initiate fame request in cmd mode
> =

> On Wed, Sep 23, 2020 at 10:02:49AM +0000, Kulkarni, Vandita wrote:
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Wednesday, September 23, 2020 3:30 PM
> > > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani
> > > <jani.nikula@intel.com>
> > > Subject: Re: [V13 4/5] drm/i915/dsi: Initiate fame request in cmd
> > > mode
> > >
> > > On Tue, Sep 22, 2020 at 07:14:25PM +0530, Vandita Kulkarni wrote:
> > > > In TE Gate mode or TE NO_GATE mode on every flip we need to set
> > > > the frame update request bit.
> > > > After this  bit is set transcoder hardware will automatically send
> > > > the frame data to the panel in case of TE NO_GATE mode, where it
> > > > sends after it receives the TE event in case of TE_GATE mode.
> > > > Once the frame data is sent to the panel, we see the frame counter
> > > > updating.
> > > >
> > > > v2: Use intel_de_read/write
> > > >
> > > > v3: remove the usage of private_flags
> > > >
> > > > v4: Use icl_dsi in func names if non static,
> > > >     fix code formatting issues. (Jani)
> > > >
> > > > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/icl_dsi.c       | 26
> ++++++++++++++++++++
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++
> > > >  drivers/gpu/drm/i915/display/intel_dsi.h     |  1 +
> > > >  3 files changed, 37 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > > > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > > > index 2789020e20db..7d2abc7f6ba3 100644
> > > > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > > > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > > > @@ -205,6 +205,32 @@ static int dsi_send_pkt_payld(struct
> > > > intel_dsi_host
> > > *host,
> > > >  	return 0;
> > > >  }
> > > >
> > > > +void icl_dsi_frame_update(struct intel_crtc_state *crtc_state) {
> > > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > > +	u32 tmp, flags;
> > > > +	enum port port;
> > > > +
> > > > +	flags =3D crtc->mode_flags;
> > > > +
> > > > +	/*
> > > > +	 * case 1 also covers dual link
> > > > +	 * In case of dual link, frame update should be set on
> > > > +	 * DSI_0
> > > > +	 */
> > > > +	if (flags & I915_MODE_FLAG_DSI_USE_TE0)
> > > > +		port =3D PORT_A;
> > > > +	else if (flags & I915_MODE_FLAG_DSI_USE_TE1)
> > > > +		port =3D PORT_B;
> > > > +	else
> > > > +		return;
> > > > +
> > > > +	tmp =3D intel_de_read(dev_priv, DSI_CMD_FRMCTL(port));
> > > > +	tmp |=3D DSI_FRAME_UPDATE_REQUEST;
> > > > +	intel_de_write(dev_priv, DSI_CMD_FRMCTL(port), tmp); }
> > > > +
> > > >  static void dsi_program_swing_and_deemphasis(struct intel_encoder
> > > > *encoder)  {
> > > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > diff
> > > > --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index 5a9d933e425a..c4f331f2af45 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -15616,6 +15616,16 @@ static void
> > > > intel_atomic_commit_tail(struct
> > > intel_atomic_state *state)
> > > >  		intel_set_cdclk_post_plane_update(state);
> > > >  	}
> > > >
> > > > +	/*
> > > > +	 * Incase of mipi dsi command mode, we need to set frame update
> > > > +	 * for every commit
> > > > +	 */
> > > > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> > > > +		if (INTEL_GEN(dev_priv) >=3D 11 &&
> > > > +		    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
> > > > +			if (new_crtc_state->hw.active)
> > > > +				icl_dsi_frame_update(new_crtc_state);
> > > > +
> > >
> > > Still the wrong place.
> > Should I be adding it at the end of pipe update? As we need TE to be
> enabled when we send frame update.
> =

> If it needs te then it should probably enable te.

Thanks for pointing this out.
Just to make sure on my assumption of keeping TE enabled before sending fra=
me update,
I cross checked with the hw team and there seems to be no such rule.
Frame update request will be valid until the transcoder starts the frame.
Like you pointed out will add this to the beginning of pipe_update_end,
And send the next version.

Thanks,
Vandita


> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
