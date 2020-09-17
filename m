Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2D826DC4E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 15:01:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DA786E14A;
	Thu, 17 Sep 2020 13:01:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAE816EC0D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 13:01:35 +0000 (UTC)
IronPort-SDR: conjG6okLiRwc90PkUpbWsy1Q8U41Q0rGr9Xisj2ONZYVZ/CC2qnAWJHH1M3buz83nPknUonvD
 ewc+h5cvIN9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="157073252"
X-IronPort-AV: E=Sophos;i="5.76,437,1592895600"; d="scan'208";a="157073252"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 06:01:32 -0700
IronPort-SDR: EexCjiyqldaMFWz06Se33b9KD2MxG/bh9gpbHcp2HBQcQPkVKK+mLQYMpxjiKLbjDLS6wxSKRt
 J7CZu/5BQTBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,437,1592895600"; d="scan'208";a="344348510"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Sep 2020 06:01:29 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 06:01:28 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 18:31:26 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.1713.004;
 Thu, 17 Sep 2020 18:31:26 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [V12 4/4] drm/i915/dsi: Initiate fame request in cmd mode
Thread-Index: AQHWjEWH61nG1RkFrECG7JDN8D4ipqlsV2GAgABg1GD//7GzAIAAYBJQ
Date: Thu, 17 Sep 2020 13:01:25 +0000
Message-ID: <e8357d0d0998476cb265ebff5da64446@intel.com>
References: <20200916161528.2659-1-vandita.kulkarni@intel.com>
 <20200916161528.2659-5-vandita.kulkarni@intel.com>
 <20200917113119.GS6112@intel.com>
 <262e88c79dea418e82d574d80f85dbcb@intel.com>
 <20200917123738.GW6112@intel.com>
In-Reply-To: <20200917123738.GW6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V12 4/4] drm/i915/dsi: Initiate fame request in
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
> Sent: Thursday, September 17, 2020 6:08 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
; B S,
> Karthik <karthik.b.s@intel.com>
> Subject: Re: [V12 4/4] drm/i915/dsi: Initiate fame request in cmd mode
> =

> On Thu, Sep 17, 2020 at 11:56:44AM +0000, Kulkarni, Vandita wrote:
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Thursday, September 17, 2020 5:01 PM
> > > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani
> > > <jani.nikula@intel.com>; B S, Karthik <karthik.b.s@intel.com>
> > > Subject: Re: [V12 4/4] drm/i915/dsi: Initiate fame request in cmd
> > > mode
> > >
> > > On Wed, Sep 16, 2020 at 09:45:28PM +0530, Vandita Kulkarni wrote:
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
> > > > index f862403388f6..11a20bf2255f 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -15621,6 +15621,16 @@ static void
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
> > >
> > > If this is the thing that triggers the update then it should
> > > probably be called at the start of intel_pipe_update_end().
> >
> > I could move it to the end of intel_pipe_update_end, as we need TE to be
> enabled.
> > Because if the frame updates are gated then, the dsi controller will
> > not drive the vblank/ frame start to the display engine until it receiv=
es a TE
> in the presence of the frame update request.
> > And if we are in non gated mode then the dsi controller will
> > immediately drive the vblank/frame strart as soon as it receives the fr=
ame
> update request.
> >
> > So is it ok if I move it to the end of pipe_update_end..
> =

> Sounds racy. Though TBH I can't tell whether the we'd still fire off the =
event
> at the right time if we kick the update at the start.
> Once kicked, is the frame upload going to wait for the TE and then try to=
 stay
> ahead of the raster beam?

In case of TE gate mode it waits for TE before starting memory writes to th=
e periphery.
So if we add this at the end of pipe_update, then we would have enabled the=
 TE( as part of vblank enable call)
Then we do a frame update eg TE gate mode
We wait for 1 TE
Then we get another TE in which we can see that the frame counter is increm=
ented.
And only now we would be able to send the Vblank event to the user space.

In the earlier TE we would not have sent the event as the frame counter cou=
ldn't have updated.
This is the workflow that is expected in case of TE gate mode.

I didn't get the race part, do you mean to say that the wait for TE duratio=
n need not be same always?
Because we could send the frame update any time?

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
