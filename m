Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D13F11C3D19
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 16:34:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DD589BC0;
	Mon,  4 May 2020 14:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B5989BC0
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 14:34:00 +0000 (UTC)
IronPort-SDR: j6YtAuOhoQeKMk6/T/fOwJjRebNph0qdL26PlX08YnqOGfa09jVwK9c0ZOQl0FPzn/g8xnNLhI
 mWmVgxWuRcSA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 07:34:00 -0700
IronPort-SDR: 7Ifrzl7mEoXxxdazgwWlzvyA9IwuJxC4zJs9DI3WyH24fzh9cMJh/E8VpfH2W/AABiSjPXszkW
 Uof2e/Qq78DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="248234021"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 04 May 2020 07:33:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 May 2020 17:33:56 +0300
Date: Mon, 4 May 2020 17:33:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200504143356.GB6112@intel.com>
References: <20200429101034.8208-3-ville.syrjala@linux.intel.com>
 <20200429152921.10596-1-ville.syrjala@linux.intel.com>
 <20200502001613.GK188376@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502001613.GK188376@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 02/12] drm/i915/fbc: Use the correct
 plane stride
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

On Fri, May 01, 2020 at 05:16:13PM -0700, Matt Roper wrote:
> On Wed, Apr 29, 2020 at 06:29:21PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Consult the actual plane stride instead of the fb stride. The two
> > will disagree when we remap the gtt. The plane stride is what the
> > hw will be fed so that's what we should look at for the FBC
> > retrictions/cfb allocation.
> > =

> > Since we no longer require a fence we are going to attempt using
> > FBC with remapping, and so we should look at correct stride.
> > =

> > With 90/270 degree rotation the plane stride is stored in units
> > of pixels, so we need to conver it to bytes for the purposes
> > of calculating the cfb stride. Not entirely sure if this matches
> > the hw behaviour though. Need to reverse engineer that at some
> > point...
> > =

> > We also need to reorder the pixel format check vs. stride check
> > to avoid triggering a spurious WARN(stride & 63) with cpp=3D=3D1 and
> > plane stride=3D=3D32.
> > =

> > v2: Try to deal with rotated stride and related WARN
> > =

> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Fixes: 691f7ba58d52 ("drm/i915/display/fbc: Make fences a nice-to-have =
for GEN9+")
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 16 ++++++++++------
> >  1 file changed, 10 insertions(+), 6 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm=
/i915/display/intel_fbc.c
> > index 7194f9bc62c5..7f2b2382b813 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -707,9 +707,13 @@ static void intel_fbc_update_state_cache(struct in=
tel_crtc *crtc,
> >  	cache->plane.pixel_blend_mode =3D plane_state->hw.pixel_blend_mode;
> >  =

> >  	cache->fb.format =3D fb->format;
> > -	cache->fb.stride =3D fb->pitches[0];
> >  	cache->fb.modifier =3D fb->modifier;
> >  =

> > +	/* FIXME is this correct? */
> > +	cache->fb.stride =3D plane_state->color_plane[0].stride;
> =

> We still have a comment in intel_fbc_calculate_cfb_size() that indicates
> that we need to use the framebuffer stride instead of the plane stride
> (explicitly added in commit 850bfaab7120a).

That's not really what it's saying. full buffer stride =3D=3D plane stride,
vs. active area =3D=3D plane width

> The bspec (page 49227) uses
> terminology "Stride of plane uncompressed surface" which sounds like
> framebuffer size to me; I'm not sure if switching it to the plane's size
> will cause problems if the plane is only scanning out a subregion of the
> framebuffer?

There is no framebuffer stride as far as the hardware is concerned.
There is only plane width and plane stride.

> =

> If it really is safe to use the plane size instead of the framebuffer
> size, then I think we at least need to remove or change that comment
> too.
> =

> =

> Matt
> =

> > +	if (drm_rotation_90_or_270(plane_state->hw.rotation))
> > +		cache->fb.stride *=3D fb->format->cpp[0];
> > +
> >  	drm_WARN_ON(&dev_priv->drm, plane_state->flags & PLANE_HAS_FENCE &&
> >  		    !plane_state->vma->fence);
> >  =

> > @@ -804,6 +808,11 @@ static bool intel_fbc_can_activate(struct intel_cr=
tc *crtc)
> >  		return false;
> >  	}
> >  =

> > +	if (!pixel_format_is_valid(dev_priv, cache->fb.format->format)) {
> > +		fbc->no_fbc_reason =3D "pixel format is invalid";
> > +		return false;
> > +	}
> > +
> >  	if (!rotation_is_valid(dev_priv, cache->fb.format->format,
> >  			       cache->plane.rotation)) {
> >  		fbc->no_fbc_reason =3D "rotation unsupported";
> > @@ -820,11 +829,6 @@ static bool intel_fbc_can_activate(struct intel_cr=
tc *crtc)
> >  		return false;
> >  	}
> >  =

> > -	if (!pixel_format_is_valid(dev_priv, cache->fb.format->format)) {
> > -		fbc->no_fbc_reason =3D "pixel format is invalid";
> > -		return false;
> > -	}
> > -
> >  	if (cache->plane.pixel_blend_mode !=3D DRM_MODE_BLEND_PIXEL_NONE &&
> >  	    cache->fb.format->has_alpha) {
> >  		fbc->no_fbc_reason =3D "per-pixel alpha blending is incompatible wit=
h FBC";
> > -- =

> > 2.24.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
