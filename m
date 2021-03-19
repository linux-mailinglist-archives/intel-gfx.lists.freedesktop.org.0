Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A99BB3427A4
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 22:24:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE7BC6EAD2;
	Fri, 19 Mar 2021 21:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16196EAD2
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 21:24:19 +0000 (UTC)
IronPort-SDR: /c2142RrbmgPZIP31kSfXzaH+WPKIUeT8MFYRdq8k3OvQI4rXCxtGTva7V5JMFHFhXu0fytPWU
 A0a+v703ONRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="253970151"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="253970151"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 14:24:19 -0700
IronPort-SDR: N7q/X3vbW4VjKK/XCqjPR4/GBkGsCLtb8+PZfcnSAr8RvqA+EisZIhZYcZsY9H24Mz2qovxvLh
 DD6B/T63bQtg==
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="434420718"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 14:24:18 -0700
Date: Fri, 19 Mar 2021 14:30:29 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210319213029.GB6560@labuser-Z97X-UD5H>
References: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
 <20210305153610.12177-2-ville.syrjala@linux.intel.com>
 <20210319211710.GB6359@labuser-Z97X-UD5H>
 <YFUVh6Iujpsxo8Rm@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YFUVh6Iujpsxo8Rm@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

On Fri, Mar 19, 2021 at 11:20:07PM +0200, Ville Syrj=E4l=E4 wrote:
> On Fri, Mar 19, 2021 at 02:17:18PM -0700, Navare, Manasi wrote:
> > On Fri, Mar 05, 2021 at 05:36:05PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > The enabled_planes bitmask was supposed to track logically enabled
> > > planes (ie. fb!=3DNULL and crtc!=3DNULL), but instead we end up putti=
ng
> > > even disabled planes into the bitmask since
> > > intel_plane_atomic_check_with_state() only takes the early exit
> > > if the plane was disabled and stays disabled. I think I misread
> > > the early said codepath to exit whenever the plane is logically
> > > disabled, which is not true.
> > > =

> > > So let's fix this up properly and set the bit only when the plane
> > > actually is logically enabled.
> > =

> > Hmm yes makes sense, I guess I added the check in skl_plane_check_fb to=
 return if !fb
> > but I think thats a bug there since I return 0 there instead of return =
a -EINVAL or something.
> =

> No. Return 0 is the correct there. It just means we have nothing to
> check, and all is well. I suppose we could move the whole thing later
> and not have the fb check at all, but I kinda like doing that early =

> to make sure no funky stuff leaks into the later checks.
>

Okay so in that case this pathc check looks good

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi
 =

> > =

> > Because if we return a negative value there then if !fb, skl_plane_chec=
k will return that
> > and we will return from plane->check_plane so just moving the enabled p=
lanes bitmask assignment
> > to after the check_plane will do no need to check for if (fb) there aga=
in right?
> > =

> > Manasi
> > =

> > > =

> > > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > Fixes: ee42ec19ca2e ("drm/i915: Track logically enabled planes for hw=
 state")
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/driv=
ers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index 4683f98f7e54..c3f2962aa1eb 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -317,12 +317,13 @@ int intel_plane_atomic_check_with_state(const s=
truct intel_crtc_state *old_crtc_
> > >  	if (!new_plane_state->hw.crtc && !old_plane_state->hw.crtc)
> > >  		return 0;
> > >  =

> > > -	new_crtc_state->enabled_planes |=3D BIT(plane->id);
> > > -
> > >  	ret =3D plane->check_plane(new_crtc_state, new_plane_state);
> > >  	if (ret)
> > >  		return ret;
> > >  =

> > > +	if (fb)
> > > +		new_crtc_state->enabled_planes |=3D BIT(plane->id);
> > > +
> > >  	/* FIXME pre-g4x don't work like this */
> > >  	if (new_plane_state->uapi.visible)
> > >  		new_crtc_state->active_planes |=3D BIT(plane->id);
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
