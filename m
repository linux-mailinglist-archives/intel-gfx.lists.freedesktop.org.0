Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E2D3515A4
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 16:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288C06ECAE;
	Thu,  1 Apr 2021 14:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A46CC6ECAE
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 14:32:27 +0000 (UTC)
IronPort-SDR: rm57IDQ/3GJdzTVTFtnk7efC8EmnhPsMun/1/aaSJ54mDSMifutiC1BZEubGqzSycZOLkGJgRG
 BPIrbpu9a92w==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="190022200"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="190022200"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 07:32:24 -0700
IronPort-SDR: v/vHZ34bHB20TYe+QRRzAw8DHSj2Mozv6cmsDUK4h17a+fLcSZh1d59YfuezWziixzM+Cgm+Qj
 Ujg8T7yAyd4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="412711526"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 01 Apr 2021 07:32:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Apr 2021 17:32:20 +0300
Date: Thu, 1 Apr 2021 17:32:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YGXZdLbrne3N56sw@intel.com>
References: <20210330184254.6290-1-ville.syrjala@linux.intel.com>
 <87mtuimayu.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87mtuimayu.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Extract intel_adjusted_rate()
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

On Thu, Apr 01, 2021 at 03:43:37PM +0300, Jani Nikula wrote:
> On Tue, 30 Mar 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > Extract a small helper to calculate the downscaling
> > adjusted pixel rate/data rate/etc.
> >
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_atomic_plane.c | 27 +++++++++++++------
> >  1 file changed, 19 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/driver=
s/gpu/drm/i915/display/intel_atomic_plane.c
> > index c3f2962aa1eb..3f830b70b0c1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -133,25 +133,36 @@ intel_plane_destroy_state(struct drm_plane *plane,
> >  	kfree(plane_state);
> >  }
> >  =

> > -unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crt=
c_state,
> > -				    const struct intel_plane_state *plane_state)
> > +static unsigned int intel_adjusted_rate(const struct drm_rect *src,
> > +					const struct drm_rect *dst,
> > +					unsigned int rate)
> >  {
> >  	unsigned int src_w, src_h, dst_w, dst_h;
> > -	unsigned int pixel_rate =3D crtc_state->pixel_rate;
> >  =

> > -	src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> > -	src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> > -	dst_w =3D drm_rect_width(&plane_state->uapi.dst);
> > -	dst_h =3D drm_rect_height(&plane_state->uapi.dst);
> > +	src_w =3D drm_rect_width(src) >> 16;
> > +	src_h =3D drm_rect_height(src) >> 16;
> > +	dst_w =3D drm_rect_width(dst);
> > +	dst_h =3D drm_rect_height(dst);
> >  =

> >  	/* Downscaling limits the maximum pixel rate */
> >  	dst_w =3D min(src_w, dst_w);
> >  	dst_h =3D min(src_h, dst_h);
> >  =

> > -	return DIV_ROUND_UP_ULL(mul_u32_u32(pixel_rate, src_w * src_h),
> > +	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h),
> >  				dst_w * dst_h);
> >  }
> >  =

> > +unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crt=
c_state,
> > +				    const struct intel_plane_state *plane_state)
> > +{
> > +	if (!plane_state->uapi.visible)
> =

> Potential functional change not covered in the commit message? Makes
> sense, but the rabbit hole is too deep to find out if this could
> actually make a difference.

This is fine. If the plane isn't visible then it's not
generating any pixels anyway. I think I either had some other
patches originally that wanted this, or I just wanted to make
this safe to call at any point without checking for plane
visibility in the caller. But IIRC I dropped those other
patches and so this might not be necessary anymore. I'll double
check and either drop this or amend the commit msg a bit.

> =

> If mentioned in the commit message,
> =

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> =

> =

> > +		return 0;
> > +
> > +	return intel_adjusted_rate(&plane_state->uapi.src,
> > +				   &plane_state->uapi.dst,
> > +				   crtc_state->pixel_rate);
> > +}
> > +
> >  unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc=
_state,
> >  				   const struct intel_plane_state *plane_state)
> >  {
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
