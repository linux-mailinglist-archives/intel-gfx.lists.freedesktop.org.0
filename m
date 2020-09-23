Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCF1275668
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 12:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B7B46E91E;
	Wed, 23 Sep 2020 10:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C93A6E91E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 10:32:58 +0000 (UTC)
IronPort-SDR: mFxdUhrEeilhB6q6EXCWetvnCF/WtUcGTwL7jw18VqQe808evVylTDVgr0SqxWBLC3JAmv726W
 znq1lgTqIb3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="245689369"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="245689369"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 03:32:57 -0700
IronPort-SDR: YPmTMZl3N9uQk7mcnKwiYEzP0X4MF4hf+8EiKY9KQlGrgb47bNi2GKvZwge042LZxIOVxpZZ7I
 i80sKnSYN7Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="347303471"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 23 Sep 2020 03:32:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Sep 2020 13:32:55 +0300
Date: Wed, 23 Sep 2020 13:32:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
Message-ID: <20200923103254.GE6112@intel.com>
References: <20200922134426.9840-1-vandita.kulkarni@intel.com>
 <20200922134426.9840-5-vandita.kulkarni@intel.com>
 <20200923100023.GC6112@intel.com>
 <ba3d4da2dfc54c8a86947b6b7fc59310@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba3d4da2dfc54c8a86947b6b7fc59310@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Wed, Sep 23, 2020 at 10:02:49AM +0000, Kulkarni, Vandita wrote:
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, September 23, 2020 3:30 PM
> > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.co=
m>
> > Subject: Re: [V13 4/5] drm/i915/dsi: Initiate fame request in cmd mode
> > =

> > On Tue, Sep 22, 2020 at 07:14:25PM +0530, Vandita Kulkarni wrote:
> > > In TE Gate mode or TE NO_GATE mode on every flip we need to set the
> > > frame update request bit.
> > > After this  bit is set transcoder hardware will automatically send the
> > > frame data to the panel in case of TE NO_GATE mode, where it sends
> > > after it receives the TE event in case of TE_GATE mode.
> > > Once the frame data is sent to the panel, we see the frame counter
> > > updating.
> > >
> > > v2: Use intel_de_read/write
> > >
> > > v3: remove the usage of private_flags
> > >
> > > v4: Use icl_dsi in func names if non static,
> > >     fix code formatting issues. (Jani)
> > >
> > > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/icl_dsi.c       | 26 ++++++++++++++++++=
++
> > >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++
> > >  drivers/gpu/drm/i915/display/intel_dsi.h     |  1 +
> > >  3 files changed, 37 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > > index 2789020e20db..7d2abc7f6ba3 100644
> > > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > > @@ -205,6 +205,32 @@ static int dsi_send_pkt_payld(struct intel_dsi_h=
ost
> > *host,
> > >  	return 0;
> > >  }
> > >
> > > +void icl_dsi_frame_update(struct intel_crtc_state *crtc_state) {
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > +	u32 tmp, flags;
> > > +	enum port port;
> > > +
> > > +	flags =3D crtc->mode_flags;
> > > +
> > > +	/*
> > > +	 * case 1 also covers dual link
> > > +	 * In case of dual link, frame update should be set on
> > > +	 * DSI_0
> > > +	 */
> > > +	if (flags & I915_MODE_FLAG_DSI_USE_TE0)
> > > +		port =3D PORT_A;
> > > +	else if (flags & I915_MODE_FLAG_DSI_USE_TE1)
> > > +		port =3D PORT_B;
> > > +	else
> > > +		return;
> > > +
> > > +	tmp =3D intel_de_read(dev_priv, DSI_CMD_FRMCTL(port));
> > > +	tmp |=3D DSI_FRAME_UPDATE_REQUEST;
> > > +	intel_de_write(dev_priv, DSI_CMD_FRMCTL(port), tmp); }
> > > +
> > >  static void dsi_program_swing_and_deemphasis(struct intel_encoder
> > > *encoder)  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > diff
> > > --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 5a9d933e425a..c4f331f2af45 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -15616,6 +15616,16 @@ static void intel_atomic_commit_tail(struct
> > intel_atomic_state *state)
> > >  		intel_set_cdclk_post_plane_update(state);
> > >  	}
> > >
> > > +	/*
> > > +	 * Incase of mipi dsi command mode, we need to set frame update
> > > +	 * for every commit
> > > +	 */
> > > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> > > +		if (INTEL_GEN(dev_priv) >=3D 11 &&
> > > +		    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
> > > +			if (new_crtc_state->hw.active)
> > > +				icl_dsi_frame_update(new_crtc_state);
> > > +
> > =

> > Still the wrong place.
> Should I be adding it at the end of pipe update? As we need TE to be enab=
led when we send frame update.

If it needs te then it should probably enable te.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
