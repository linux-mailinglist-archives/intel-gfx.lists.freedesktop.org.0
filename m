Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5482B6904
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 16:48:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F16289BBE;
	Tue, 17 Nov 2020 15:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD43F89BBE
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 15:48:18 +0000 (UTC)
IronPort-SDR: tdUHyYkbCOGROe9ZaAvDJb5//udTZQ++i2arAisBNAUFLEwZiFt0GFzgsuSJnxfpEGTJ0Kx9D2
 1QipER+G+csA==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="168370443"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="168370443"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 07:48:18 -0800
IronPort-SDR: Box0FZgSICtiRA5g5EICKdpDkwMJphQWsJ5Id4S0FuI+gEicVIuZdC+FE3trjyVGX2v1zXH0Av
 +CVEFRL6TNgw==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="325206672"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 07:48:17 -0800
Date: Tue, 17 Nov 2020 07:50:48 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201117155048.GB31689@labuser-Z97X-UD5H>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-17-ville.syrjala@linux.intel.com>
 <20201117000901.GA29250@labuser-Z97X-UD5H>
 <20201117151456.GC6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117151456.GC6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 16/23] drm/i915: Add planes affected by
 bigjoiner to the state
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

On Tue, Nov 17, 2020 at 05:14:56PM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Nov 16, 2020 at 04:09:01PM -0800, Navare, Manasi wrote:
> > On Sat, Nov 14, 2020 at 12:03:51AM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > Make sure both the bigjoiner "master" and "slave" plane are
> > > in the state whenever either of them is in the state.
> > > =

> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 42 ++++++++++++++++++=
++
> > >  1 file changed, 42 insertions(+)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 465877097582..1118ff73c0d4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -15069,6 +15069,44 @@ static bool active_planes_affects_min_cdclk(=
struct drm_i915_private *dev_priv)
> > >  		IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) >=3D 11);
> > >  }
> > >  =

> > > +static int intel_crtc_add_bigjoiner_planes(struct intel_atomic_state=
 *state,
> > > +					   struct intel_crtc *crtc,
> > > +					   struct intel_crtc *other)
> > > +{
> > > +	const struct intel_plane_state *plane_state;
> > > +	struct intel_plane *plane;
> > > +	u8 plane_ids =3D 0;
> > > +	int i;
> > > +
> > > +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> > > +		if (plane->pipe =3D=3D crtc->pipe)
> > > +			plane_ids |=3D BIT(plane->id);
> > > +	}
> > > +
> > > +	return intel_crtc_add_planes_to_state(state, other, plane_ids);
> > =

> > We call this function intel_crtc_add_planes_to_state again in intel_ato=
mic_check_planes again at
> > the end, so arent we adding the planes to state twice for both master a=
nd slave?
> > =

> > Do we need some condition to avoid adding it again at the end of intel_=
atomic_check_planes ?
> =

> No. That other stuff is there for the min_cdclk calculation.

ok in that case

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
