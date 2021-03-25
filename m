Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F45349097
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 12:37:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 723B56ED10;
	Thu, 25 Mar 2021 11:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B3306ED6B
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 11:37:35 +0000 (UTC)
IronPort-SDR: 3fDqkbVx3d5sY3vSe/7HnzjmliKTnAgHl2HTDONQJ6YsyTSQCgfAj6cdFV65h4ydjazD3KSZ6v
 FogVrT4Ea+SA==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="191001902"
X-IronPort-AV: E=Sophos;i="5.81,277,1610438400"; d="scan'208";a="191001902"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 04:37:34 -0700
IronPort-SDR: IE5mA2CgIDD3kXHTk85c+UyP/tWpNpjlxbNex8hB7nv3WyCfmE+KJomM2EhTWGO0qtxOABp7xc
 hMU6dCEnBF/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,277,1610438400"; d="scan'208";a="409332891"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 25 Mar 2021 04:37:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Mar 2021 13:37:31 +0200
Date: Thu, 25 Mar 2021 13:37:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <YFx1+/CAznD557G8@intel.com>
References: <20210325004415.17432-1-ville.syrjala@linux.intel.com>
 <20210325004415.17432-2-ville.syrjala@linux.intel.com>
 <20210325093553.GB27205@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325093553.GB27205@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Mar 25, 2021 at 11:35:53AM +0200, Lisovskiy, Stanislav wrote:
> On Thu, Mar 25, 2021 at 02:44:15AM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > The dbuf bandwidth calculations don't need the planes to be
> > added to the state. Each plane's data rate has already been
> > precalculated and stored in the crtc state, and that with
> > the dbuf slice usage for each plane is all the dbuf bandwidth
> > code needs to figure out what the minimum cdclk is.
> > =

> > What we're trying to do here is make sure each plane recalculates
> > its minimum cdclk (ie. plane->min_cdclk()) on those platforms where
> > the number of active planes affects the result of said calculation.
> > Nothing to do with any dbuf cdclk requirements.
> =

> So does it mean that if we lets say had active plane mask as
> 011(planes 0, 1 were active) and new active planes are 101(planes 0, 2
> are active) - we should not add plane 2 to the state?
> Because hamming weight will be obviously same, however I think it would
> be wrong not have plane 2 in the state at all then..
> =

> Or will it be added somewhere else?

If someone is asking to disable plane 2 then it will be added to
the state already during the atomic/setplance ioctl handling.

> =

> =

> Stan
> =

> > =

> > Not sure if we had stuff in slightly different order or what,
> > but at least in the current scheme this is not necessary.
> > =

> > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++--------
> >  1 file changed, 2 insertions(+), 8 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 17490d29dc13..2300d58ba47f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -9811,7 +9811,7 @@ static bool active_planes_affects_min_cdclk(struc=
t drm_i915_private *dev_priv)
> >  	/* See {hsw,vlv,ivb}_plane_ratio() */
> >  	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
> >  		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> > -		IS_IVYBRIDGE(dev_priv) || (DISPLAY_VER(dev_priv) >=3D 11);
> > +		IS_IVYBRIDGE(dev_priv);
> >  }
> >  =

> >  static int intel_crtc_add_bigjoiner_planes(struct intel_atomic_state *=
state,
> > @@ -9898,13 +9898,7 @@ static int intel_atomic_check_planes(struct inte=
l_atomic_state *state)
> >  		old_active_planes =3D old_crtc_state->active_planes & ~BIT(PLANE_CUR=
SOR);
> >  		new_active_planes =3D new_crtc_state->active_planes & ~BIT(PLANE_CUR=
SOR);
> >  =

> > -		/*
> > -		 * Not only the number of planes, but if the plane configuration had
> > -		 * changed might already mean we need to recompute min CDCLK,
> > -		 * because different planes might consume different amount of Dbuf b=
andwidth
> > -		 * according to formula: Bw per plane =3D Pixel rate * bpp * pipe/pl=
ane scale factor
> > -		 */
> > -		if (old_active_planes =3D=3D new_active_planes)
> > +		if (hweight8(old_active_planes) =3D=3D hweight8(new_active_planes))
> >  			continue;
> >  =

> >  		ret =3D intel_crtc_add_planes_to_state(state, crtc, new_active_plane=
s);
> > -- =

> > 2.26.2
> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
