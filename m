Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D72216CBD
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 14:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6FE089D7C;
	Tue,  7 Jul 2020 12:24:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A77989D7C
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 12:24:12 +0000 (UTC)
IronPort-SDR: VcorEakRWQsfWydH4WjsdodbnW4Q1KZbTqlU+Jtq+7Kp884v/nKfrJoHreFsaH6jH1bO+5TegD
 YZA53dj0AYUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="127173088"
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="127173088"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 05:24:11 -0700
IronPort-SDR: oo/0StPiRQlCy9ZERECoryppZduQ7PPgKFLO+9/auP7HnCCmqimdEXQO9Y9sAHf0ekVdai7tED
 v9rMKYxGgHgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="323526080"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 07 Jul 2020 05:24:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Jul 2020 15:24:08 +0300
Date: Tue, 7 Jul 2020 15:24:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200707122408.GT6112@intel.com>
References: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
 <20200702153723.24327-2-ville.syrjala@linux.intel.com>
 <a3d6b78b881a1fd554c12f247ecd8cbfa8106faf.camel@intel.com>
 <20200703113852.GL6112@intel.com>
 <a47fe0175e49b9c7defa2b9cc46c08c942bbcad3.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a47fe0175e49b9c7defa2b9cc46c08c942bbcad3.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/fbc: Use the correct plane
 stride
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

On Mon, Jul 06, 2020 at 08:53:06PM +0000, Souza, Jose wrote:
> On Fri, 2020-07-03 at 14:38 +0300, Ville Syrj=E4l=E4 wrote:
> > On Thu, Jul 02, 2020 at 11:24:04PM +0000, Souza, Jose wrote:
> > > On Thu, 2020-07-02 at 18:37 +0300, Ville Syrjala wrote:
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > =

> > > > Consult the actual plane stride instead of the fb stride. The two
> > > > will disagree when we remap the gtt. The plane stride is what the
> > > > hw will be fed so that's what we should look at for the FBC
> > > > retrictions/cfb allocation.
> > > > =

> > > > Since we no longer require a fence we are going to attempt using
> > > > FBC with remapping, and so we should look at correct stride.
> > > > =

> > > > With 90/270 degree rotation the plane stride is stored in units
> > > > of pixels, so we need to conver it to bytes for the purposes
> > > > of calculating the cfb stride. Not entirely sure if this matches
> > > > the hw behaviour though. Need to reverse engineer that at some
> > > > point...
> > > > =

> > > > We also need to reorder the pixel format check vs. stride check
> > > > to avoid triggering a spurious WARN(stride & 63) with cpp=3D=3D1 and
> > > > plane stride=3D=3D32.
> > > > =

> > > > v2: Try to deal with rotated stride and related WARN
> > > > =

> > > =

> > > Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > =

> > > > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > Fixes: 691f7ba58d52 ("drm/i915/display/fbc: Make fences a nice-to-h=
ave for GEN9+")
> > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_fbc.c | 16 ++++++++++------
> > > >  1 file changed, 10 insertions(+), 6 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu=
/drm/i915/display/intel_fbc.c
> > > > index 69a0682ddb6a..d30c2a389294 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > @@ -695,9 +695,13 @@ static void intel_fbc_update_state_cache(struc=
t intel_crtc *crtc,
> > > >  	cache->plane.pixel_blend_mode =3D plane_state->hw.pixel_blend_mod=
e;
> > > >  =

> > > >  	cache->fb.format =3D fb->format;
> > > > -	cache->fb.stride =3D fb->pitches[0];
> > > >  	cache->fb.modifier =3D fb->modifier;
> > > >  =

> > > > +	/* FIXME is this correct? */
> > > > +	cache->fb.stride =3D plane_state->color_plane[0].stride;
> > > > +	if (drm_rotation_90_or_270(plane_state->hw.rotation))
> > > =

> > > If it was wrong our CI would caught this in BDW or SNB for example.
> > =

> > Not really. Well, certainly not on pre-skl since they don't do 90/270
> > rotation. And probably not even on skl+ since any wrong assumption
> =

> Checking rotation_is_valid() GEN5 up to GEN8 allows 90/270 rotation.

The display engine on pre-skl does not support 90/270 rotaiton *at all*.

> =

> =

> > about how the cfb stride is calculated by the hw would just cause it
> > to scribble over stolen memory we didn't allocate. So unless we've
> > started to use stolen more extensively in recent times such problems
> > would probably go unnoticed.
> > =

> > > > +		cache->fb.stride *=3D fb->format->cpp[0];
> > > > +
> > > >  	/* FBC1 compression interval: arbitrary choice of 1 second */
> > > >  	cache->interval =3D drm_mode_vrefresh(&crtc_state->hw.adjusted_mo=
de);
> > > >  =

> > > > @@ -797,6 +801,11 @@ static bool intel_fbc_can_activate(struct inte=
l_crtc *crtc)
> > > >  		return false;
> > > >  	}
> > > >  =

> > > > +	if (!pixel_format_is_valid(dev_priv, cache->fb.format->format)) {
> > > > +		fbc->no_fbc_reason =3D "pixel format is invalid";
> > > > +		return false;
> > > > +	}
> > > > +
> > > >  	if (!rotation_is_valid(dev_priv, cache->fb.format->format,
> > > >  			       cache->plane.rotation)) {
> > > >  		fbc->no_fbc_reason =3D "rotation unsupported";
> > > > @@ -813,11 +822,6 @@ static bool intel_fbc_can_activate(struct inte=
l_crtc *crtc)
> > > >  		return false;
> > > >  	}
> > > >  =

> > > > -	if (!pixel_format_is_valid(dev_priv, cache->fb.format->format)) {
> > > > -		fbc->no_fbc_reason =3D "pixel format is invalid";
> > > > -		return false;
> > > > -	}
> > > > -
> > > >  	if (cache->plane.pixel_blend_mode !=3D DRM_MODE_BLEND_PIXEL_NONE =
&&
> > > >  	    cache->fb.format->has_alpha) {
> > > >  		fbc->no_fbc_reason =3D "per-pixel alpha blending is incompatible=
 with FBC";

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
