Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A037720B341
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 16:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000896EBFF;
	Fri, 26 Jun 2020 14:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 143776EBFF
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 14:09:22 +0000 (UTC)
IronPort-SDR: bB9fi8bF/n27T5tW/6lQ51vi0IkVTKXYiNoiEiZi4W+OLlXGbEajZoA1l4xg1aGuLpnb6AE5MJ
 m3nAqpfkIVkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="230104045"
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="230104045"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 07:09:21 -0700
IronPort-SDR: /TzPRI/tfFCAADkT/47EhViiRQtZNp8+12z65daPAY8ZyyhMUBTdY0ugpOgq4uuPHqjnJiLw5j
 HlVRXh+v4Xdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="301418606"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 26 Jun 2020 07:09:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 26 Jun 2020 17:09:18 +0300
Date: Fri, 26 Jun 2020 17:09:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>
Message-ID: <20200626140918.GB6112@intel.com>
References: <20200625200003.12436-1-ville.syrjala@linux.intel.com>
 <20200626091606.GA29269@intel.com>
 <20200626134641.GZ6112@intel.com>
 <967d55ae9ac24745ae4fde4ca846a475@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <967d55ae9ac24745ae4fde4ca846a475@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Clamp linetime wm to <64usec
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 26, 2020 at 02:03:23PM +0000, Saarinen, Jani wrote:
> Hi, =

> =

> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of =
Ville Syrj=E4l=E4
> > Sent: perjantai 26. kes=E4kuuta 2020 16.47
> > To: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915: Clamp linetime wm to <64usec
> > =

> > On Fri, Jun 26, 2020 at 12:16:06PM +0300, Lisovskiy, Stanislav wrote:
> > > On Thu, Jun 25, 2020 at 11:00:03PM +0300, Ville Syrjala wrote:
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > >
> > > > The linetime watermark is a 9 bit value, which gives us a maximum
> > > > linetime of just below 64 usec. If the linetime exceeds that value
> > > > we currently just discard the high bits and program the rest into
> > > > the register, which angers the state checker.
> > > >
> > > > To avoid that let's just clamp the value to the max. I believe it
> > > > should be perfectly fine to program a smaller linetime wm than
> > > > strictly required, just means the hardware may fetch data sooner
> > > > than strictly needed. We are further reassured by the fact that with
> > > > DRRS the spec tells us to program the smaller of the two linetimes
> > > > corresponding to the two refresh rates.
> > > >
> > > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 18
> > > > ++++++++++++------
> > > >  1 file changed, 12 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index a11bb675f9b3..d486d675166f 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -12581,12 +12581,15 @@ static u16 hsw_linetime_wm(const struct
> > > > intel_crtc_state *crtc_state)  {
> > > >  	const struct drm_display_mode *adjusted_mode =3D
> > > >  		&crtc_state->hw.adjusted_mode;
> > > > +	int linetime_wm;
> > > >
> > > >  	if (!crtc_state->hw.enable)
> > > >  		return 0;
> > > >
> > > > -	return DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 *
> > 8,
> > > > -				 adjusted_mode-
> > >crtc_clock);
> > > > +	linetime_wm =3D DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal *
> > 1000 * 8,
> > > > +
> > 	adjusted_mode->crtc_clock);
> > > > +
> > > > +	return min(linetime_wm, 0x1ff);
> > >
> > > Are we actually doing the right thing here? I just mean that we get
> > > value
> > > 543 in the bug because pixel rate is 14874 which doesn't seem correct.
> > =

> > As explained in the commit msg programming this to lower than necessary=
 value
> > should be totally fine. It just won't be optimal.
> > =

> > The values in the jira (was there an actual gitlab bug for this btw?) l=
ook quite sensible
> No, there is no gtilab issue as no tiled display at CI. =


Can't see what this has to do with tiled displays. I guess we're talking
about some specific display that just happens to have that super slow
mode?

> =

> > to me. Some kind of low res 848xsomething mode with dotclock of 14.874 =
Mhz,
> > which gives us that linetime of ~68 usec.
> > =

> > >
> > > Stan
> > > >  }
> > > >
> > > >  static u16 hsw_ips_linetime_wm(const struct intel_crtc_state
> > > > *crtc_state, @@ -12594,12 +12597,15 @@ static u16
> > > > hsw_ips_linetime_wm(const struct intel_crtc_state *crtc_state,  {
> > > >  	const struct drm_display_mode *adjusted_mode =3D
> > > >  		&crtc_state->hw.adjusted_mode;
> > > > +	int linetime_wm;
> > > >
> > > >  	if (!crtc_state->hw.enable)
> > > >  		return 0;
> > > >
> > > > -	return DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 *
> > 8,
> > > > -				 cdclk_state-
> > >logical.cdclk);
> > > > +	linetime_wm =3D DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal *
> > 1000 * 8,
> > > > +
> > 	cdclk_state->logical.cdclk);
> > > > +
> > > > +	return min(linetime_wm, 0x1ff);
> > > >  }
> > > >
> > > >  static u16 skl_linetime_wm(const struct intel_crtc_state
> > > > *crtc_state) @@ -12608,7 +12614,7 @@ static u16 skl_linetime_wm(con=
st
> > struct intel_crtc_state *crtc_state)
> > > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > >  	const struct drm_display_mode *adjusted_mode =3D
> > > >  		&crtc_state->hw.adjusted_mode;
> > > > -	u16 linetime_wm;
> > > > +	int linetime_wm;
> > > >
> > > >  	if (!crtc_state->hw.enable)
> > > >  		return 0;
> > > > @@ -12620,7 +12626,7 @@ static u16 skl_linetime_wm(const struct
> > intel_crtc_state *crtc_state)
> > > >  	if (IS_GEN9_LP(dev_priv) && dev_priv->ipc_enabled)
> > > >  		linetime_wm /=3D 2;
> > > >
> > > > -	return linetime_wm;
> > > > +	return min(linetime_wm, 0x1ff);
> > > >  }
> > > >
> > > >  static int hsw_compute_linetime_wm(struct intel_atomic_state
> > > > *state,
> > > > --
> > > > 2.26.2
> > > >
> > =

> > --
> > Ville Syrj=E4l=E4
> > Intel
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
