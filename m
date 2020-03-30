Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5F61982DF
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 20:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 639E66E47B;
	Mon, 30 Mar 2020 18:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D1756E47B
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 18:00:13 +0000 (UTC)
IronPort-SDR: ZlangajWQpNmC3p4ENpbL4bjXse2xCL2YfmvHSBofgiGQxipWosy8+bMzZTEJd/i471xYrVG6x
 kNUVln3vwK+w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 11:00:13 -0700
IronPort-SDR: 7VIOdhMvDLqsV1ToaiBnLM2P+xPt+mtdkpv3IFO+IJd2yRbbvSJomaUN51aFmEMLjmgLqMMUQd
 jugJtijw/2xQ==
X-IronPort-AV: E=Sophos;i="5.72,325,1580803200"; d="scan'208";a="422008084"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 11:00:11 -0700
Date: Mon, 30 Mar 2020 20:56:24 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200330175624.GA26032@intel.com>
References: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
 <20200330122354.24752-3-stanislav.lisovskiy@intel.com>
 <20200330161857.GN13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330161857.GN13686@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915: Force recalculate
 min_cdclk if planes config changed
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

On Mon, Mar 30, 2020 at 07:18:57PM +0300, Ville Syrj=E4l=E4 wrote:
> On Mon, Mar 30, 2020 at 03:23:51PM +0300, Stanislav Lisovskiy wrote:
> > In Gen11+ whenever we might exceed DBuf bandwidth we might need to
> > recalculate CDCLK which DBuf bandwidth is scaled with.
> > Total Dbuf bw used might change based on particular plane needs.
> > =

> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 17d83f37f49f..9fd32d61ebfe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -14623,7 +14623,7 @@ static bool active_planes_affects_min_cdclk(str=
uct drm_i915_private *dev_priv)
> >  	/* See {hsw,vlv,ivb}_plane_ratio() */
> >  	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
> >  		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> > -		IS_IVYBRIDGE(dev_priv);
> > +		IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) >=3D 11);
> >  }
> >  =

> >  static int intel_atomic_check_planes(struct intel_atomic_state *state,
> > @@ -14669,7 +14669,13 @@ static int intel_atomic_check_planes(struct in=
tel_atomic_state *state,
> >  		old_active_planes =3D old_crtc_state->active_planes & ~BIT(PLANE_CUR=
SOR);
> >  		new_active_planes =3D new_crtc_state->active_planes & ~BIT(PLANE_CUR=
SOR);
> >  =

> > -		if (hweight8(old_active_planes) =3D=3D hweight8(new_active_planes))
> > +		/*
> > +		 * Not only the number of planes, but if the plane configuration had
> > +		 * changed might already mean we need to recompute min CDCLK,
> > +		 * because different planes might consume different amount of Dbuf b=
andwidth
> > +		 * according to formula: Bw per plane =3D Pixel rate * bpp * pipe/pl=
ane scale factor
> > +		 */
> =

> The set of of active planes doesn't dictate the bandwidth since it
> doesn't consider most of the parameters you listed above. Ie. doesn't
> seem to be the right place for this stuff.
> =

> The decision to bump the cdclk should really come from the dbuf code
> not from some totally distinct piece of code. But to get this right
> I have a feeling we'll need the dbuf state and totally decouple cdclk
> from any_ms.

My idea was that if active plane configuration had changed - it means that =
we need
to recalculate bandwidth used by those. Once we now the bandwidth used per =
slice/per pipe
stored in bw_state - so we recalculate only those in state and that should =
be fine.
if recalculated bandwidth results in a different CDCLK - then we need to ch=
ange it.

Or do you mean we need to recalculate bandwidth constantly as part of DBuf =
state?
I kind of don't like recalculating it everytime, so filtering the case when=
 it will
obviously be the same seems to a good idea, may be this check is not correc=
t but I would =

prefer to recalc used bw only if the planes had changed.

Also I'm fine with tracking it in DBuf state, we first need to land DBuf st=
ate patches
(need to look at those again), but meanwhile we could store it in a bw_stat=
e.

> =

> > +		if (old_active_planes =3D=3D new_active_planes)
> >  			continue;
> >  =

> >  		ret =3D intel_crtc_add_planes_to_state(state, crtc, new_active_plane=
s);
> > -- =

> > 2.24.1.485.gad05a3d8e5
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
