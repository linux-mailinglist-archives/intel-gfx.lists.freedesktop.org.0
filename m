Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1B834CBE6
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 10:58:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4786E30D;
	Mon, 29 Mar 2021 08:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4B76E219
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Mar 2021 08:58:32 +0000 (UTC)
IronPort-SDR: gEOJyzOKVFbf+ZbPf6vBFCw8gT4Zbp01lkXhyTKCf972LeiIIsB+RTscNYj2QXuq+nhP7XFEOO
 51mZjO+RvFwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9937"; a="179053040"
X-IronPort-AV: E=Sophos;i="5.81,287,1610438400"; d="scan'208";a="179053040"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2021 01:58:28 -0700
IronPort-SDR: L4jSiimn63h1zuSj20hwdOTYBFr/5tOC8Vu6msTsC2Py1izdcsqCZ/yfKw15fSzTZe6L/yG00e
 1lAzARoNFoVA==
X-IronPort-AV: E=Sophos;i="5.81,287,1610438400"; d="scan'208";a="393089342"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2021 01:58:27 -0700
Date: Mon, 29 Mar 2021 12:01:04 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210329090104.GA19747@intel.com>
References: <20210325004415.17432-1-ville.syrjala@linux.intel.com>
 <20210325004415.17432-2-ville.syrjala@linux.intel.com>
 <20210325093553.GB27205@intel.com> <YFx1+/CAznD557G8@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YFx1+/CAznD557G8@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Stop adding planes to the
 commit needlessly
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 25, 2021 at 01:37:31PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Mar 25, 2021 at 11:35:53AM +0200, Lisovskiy, Stanislav wrote:
> > On Thu, Mar 25, 2021 at 02:44:15AM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > The dbuf bandwidth calculations don't need the planes to be
> > > added to the state. Each plane's data rate has already been
> > > precalculated and stored in the crtc state, and that with
> > > the dbuf slice usage for each plane is all the dbuf bandwidth
> > > code needs to figure out what the minimum cdclk is.
> > > =

> > > What we're trying to do here is make sure each plane recalculates
> > > its minimum cdclk (ie. plane->min_cdclk()) on those platforms where
> > > the number of active planes affects the result of said calculation.
> > > Nothing to do with any dbuf cdclk requirements.
> > =

> > So does it mean that if we lets say had active plane mask as
> > 011(planes 0, 1 were active) and new active planes are 101(planes 0, 2
> > are active) - we should not add plane 2 to the state?
> > Because hamming weight will be obviously same, however I think it would
> > be wrong not have plane 2 in the state at all then..
> > =

> > Or will it be added somewhere else?
> =

> If someone is asking to disable plane 2 then it will be added to
> the state already during the atomic/setplance ioctl handling.

Ok, I thought intel_atomic_check_planes function is intended for checking
which planes had changed and need to be added to the state.
It is a bit non-obvious as we are adding them only when their amount change=
s,
but not themself.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> > =

> > =

> > Stan
> > =

> > > =

> > > Not sure if we had stuff in slightly different order or what,
> > > but at least in the current scheme this is not necessary.
> > > =

> > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++--------
> > >  1 file changed, 2 insertions(+), 8 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 17490d29dc13..2300d58ba47f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -9811,7 +9811,7 @@ static bool active_planes_affects_min_cdclk(str=
uct drm_i915_private *dev_priv)
> > >  	/* See {hsw,vlv,ivb}_plane_ratio() */
> > >  	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
> > >  		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> > > -		IS_IVYBRIDGE(dev_priv) || (DISPLAY_VER(dev_priv) >=3D 11);
> > > +		IS_IVYBRIDGE(dev_priv);
> > >  }
> > >  =

> > >  static int intel_crtc_add_bigjoiner_planes(struct intel_atomic_state=
 *state,
> > > @@ -9898,13 +9898,7 @@ static int intel_atomic_check_planes(struct in=
tel_atomic_state *state)
> > >  		old_active_planes =3D old_crtc_state->active_planes & ~BIT(PLANE_C=
URSOR);
> > >  		new_active_planes =3D new_crtc_state->active_planes & ~BIT(PLANE_C=
URSOR);
> > >  =

> > > -		/*
> > > -		 * Not only the number of planes, but if the plane configuration h=
ad
> > > -		 * changed might already mean we need to recompute min CDCLK,
> > > -		 * because different planes might consume different amount of Dbuf=
 bandwidth
> > > -		 * according to formula: Bw per plane =3D Pixel rate * bpp * pipe/=
plane scale factor
> > > -		 */
> > > -		if (old_active_planes =3D=3D new_active_planes)
> > > +		if (hweight8(old_active_planes) =3D=3D hweight8(new_active_planes))
> > >  			continue;
> > >  =

> > >  		ret =3D intel_crtc_add_planes_to_state(state, crtc, new_active_pla=
nes);
> > > -- =

> > > 2.26.2
> > > =

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
