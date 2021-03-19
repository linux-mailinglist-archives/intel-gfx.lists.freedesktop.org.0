Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB18E34278D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 22:20:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 736326EACD;
	Fri, 19 Mar 2021 21:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AF426EACB
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 21:20:11 +0000 (UTC)
IronPort-SDR: umqi1OmVOBcG2qLb+TZUQTVhCNtX72dCHwgRSFp4Rr349TAvgFBKGiciN5vUlJyrz80lLjXE+t
 pL5leSAo0LUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="190063659"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="190063659"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 14:20:10 -0700
IronPort-SDR: VMOYg70NnOA+O1pgGUH7HXrFCYB1TJeYMAxJ503iowIOZjBpskBx1m/w1d9/NH/+w5/H+96fuN
 TpcF7vvzhcXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="440216122"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 19 Mar 2021 14:20:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Mar 2021 23:20:07 +0200
Date: Fri, 19 Mar 2021 23:20:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <YFUVh6Iujpsxo8Rm@intel.com>
References: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
 <20210305153610.12177-2-ville.syrjala@linux.intel.com>
 <20210319211710.GB6359@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319211710.GB6359@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Fix enabled_planes bitmask
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

On Fri, Mar 19, 2021 at 02:17:18PM -0700, Navare, Manasi wrote:
> On Fri, Mar 05, 2021 at 05:36:05PM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > The enabled_planes bitmask was supposed to track logically enabled
> > planes (ie. fb!=3DNULL and crtc!=3DNULL), but instead we end up putting
> > even disabled planes into the bitmask since
> > intel_plane_atomic_check_with_state() only takes the early exit
> > if the plane was disabled and stays disabled. I think I misread
> > the early said codepath to exit whenever the plane is logically
> > disabled, which is not true.
> > =

> > So let's fix this up properly and set the bit only when the plane
> > actually is logically enabled.
> =

> Hmm yes makes sense, I guess I added the check in skl_plane_check_fb to r=
eturn if !fb
> but I think thats a bug there since I return 0 there instead of return a =
-EINVAL or something.

No. Return 0 is the correct there. It just means we have nothing to
check, and all is well. I suppose we could move the whole thing later
and not have the fb check at all, but I kinda like doing that early =

to make sure no funky stuff leaks into the later checks.

> =

> Because if we return a negative value there then if !fb, skl_plane_check =
will return that
> and we will return from plane->check_plane so just moving the enabled pla=
nes bitmask assignment
> to after the check_plane will do no need to check for if (fb) there again=
 right?
> =

> Manasi
> =

> > =

> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Fixes: ee42ec19ca2e ("drm/i915: Track logically enabled planes for hw s=
tate")
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/driver=
s/gpu/drm/i915/display/intel_atomic_plane.c
> > index 4683f98f7e54..c3f2962aa1eb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -317,12 +317,13 @@ int intel_plane_atomic_check_with_state(const str=
uct intel_crtc_state *old_crtc_
> >  	if (!new_plane_state->hw.crtc && !old_plane_state->hw.crtc)
> >  		return 0;
> >  =

> > -	new_crtc_state->enabled_planes |=3D BIT(plane->id);
> > -
> >  	ret =3D plane->check_plane(new_crtc_state, new_plane_state);
> >  	if (ret)
> >  		return ret;
> >  =

> > +	if (fb)
> > +		new_crtc_state->enabled_planes |=3D BIT(plane->id);
> > +
> >  	/* FIXME pre-g4x don't work like this */
> >  	if (new_plane_state->uapi.visible)
> >  		new_crtc_state->active_planes |=3D BIT(plane->id);
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
