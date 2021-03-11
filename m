Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 136FF337B78
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 18:58:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F1D6E045;
	Thu, 11 Mar 2021 17:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9FC26E045
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 17:58:39 +0000 (UTC)
IronPort-SDR: fwitdXSHeF77cdoXF3tu48dECFWrV9qtpuNM0DLzYyeAx0JsYhI6V5KQRFkEDZVY2F1S+m1dhR
 BKnd4xRJTNUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="252727077"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="252727077"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 09:58:38 -0800
IronPort-SDR: Xlq+ubX6VNJ2IaKo1owhJsZaIVEQoEYIXr7EFBhk+7Gax83htQe00j2OgNk0QfURAgGNchrymA
 oOJxtjvOXoeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="410693075"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 11 Mar 2021 09:58:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 19:58:35 +0200
Date: Thu, 11 Mar 2021 19:58:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpaS7u1aclC/HDh@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-17-imre.deak@intel.com>
 <YEpKys5LiW06dihB@intel.com>
 <20210311170223.GF2970909@ideak-desk.fi.intel.com>
 <YEpS0lKUt6ynqcy4@intel.com>
 <20210311174725.GG2970909@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311174725.GG2970909@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 16/23] drm/i915/intel_fb: Factor out
 calc_plane_normal_size()
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

On Thu, Mar 11, 2021 at 07:47:25PM +0200, Imre Deak wrote:
> On Thu, Mar 11, 2021 at 07:26:42PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Thu, Mar 11, 2021 at 07:02:23PM +0200, Imre Deak wrote:
> > > On Thu, Mar 11, 2021 at 06:52:26PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > On Thu, Mar 11, 2021 at 12:17:29AM +0200, Imre Deak wrote:
> > > > > Factor out to a new function the logic to calculate an FB plane's
> > > > > normal-view size.
> > > > > =

> > > > > Instead of using intel_remapped_plane_info, which is related only=
 to
> > > > > remapping, add a helper to get the tile pitch and rows for an FB =
plane,
> > > > > so these helpers can be used both by the normal size calculation =
and the
> > > > > remapping code.
> > > > > =

> > > > > Also add a new fb_plane_view_dims struct in which we can pass aro=
und the
> > > > > view (either FB plane or plane source) and tile dimensions conven=
iently
> > > > > to functions calculating further view parameters.
> > > > > =

> > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_fb.c | 82 ++++++++++++++++++-=
------
> > > > >  1 file changed, 61 insertions(+), 21 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gp=
u/drm/i915/display/intel_fb.c
> > > > > index 62a8e37dca38..f661b21b119d 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > > > > @@ -634,6 +634,59 @@ static u32 setup_fb_rotation(int plane, cons=
t struct intel_remapped_plane_info *
> > > > >  	return plane_info->width * plane_info->height;
> > > > >  }
> > > > >  =

> > > > > +struct fb_plane_view_dims {
> > > > > +	unsigned int width, height;
> > > > > +	unsigned int tile_width, tile_height;
> > > > > +};
> > > > > +
> > > > > +static void init_plane_view_dims(const struct intel_framebuffer =
*fb, int color_plane,
> > > > > +				 unsigned int width, unsigned int height,
> > > > > +				 struct fb_plane_view_dims *dims)
> > > > > +{
> > > > > +	dims->width =3D width;
> > > > > +	dims->height =3D height;
> > > > > +
> > > > > +	intel_tile_dims(&fb->base, color_plane, &dims->tile_width, &dim=
s->tile_height);
> > > > > +}
> > > > > +
> > > > > +static unsigned int plane_view_stride_tiles(const struct intel_f=
ramebuffer *fb, int color_plane,
> > > > > +					    const struct fb_plane_view_dims *dims)
> > > > > +{
> > > > > +	const struct drm_framebuffer *drm_fb =3D &fb->base;
> > > > > +
> > > > > +	return DIV_ROUND_UP(drm_fb->pitches[color_plane],
> > > > > +			    dims->tile_width * drm_fb->format->cpp[color_plane]);
> > > > =

> > > > plane_view_fb_stride_tiles() maybe to make it clear it's the fb str=
ide
> > > > we're talking about here?
> > > =

> > > Ok.
> > > =

> > > > > +}
> > > > > +
> > > > > +static unsigned int plane_view_tile_rows(const struct intel_fram=
ebuffer *fb, int color_plane,
> > > > > +					 const struct fb_plane_view_dims *dims,
> > > > > +					 int y)
> > > > > +{
> > > > > +	return DIV_ROUND_UP(y + dims->height, dims->tile_height);
> > > > > +}
> > > > > +
> > > > > +static int calc_plane_normal_size(const struct intel_framebuffer=
 *fb, int color_plane,
> > > > > +				  const struct fb_plane_view_dims *dims,
> > > > > +				  int x, int y)
> > > > > +{
> > > > > +	const struct drm_framebuffer *drm_fb =3D &fb->base;
> > > > > +	struct drm_i915_private *i915 =3D to_i915(drm_fb->dev);
> > > > > +	int pages;
> > > > =

> > > > 'tiles'?
> > > =

> > > Ok, not always pages.
> > > =

> > > > > +
> > > > > +	if (is_surface_linear(drm_fb, color_plane)) {
> > > > > +		unsigned int size;
> > > > > +
> > > > > +		size =3D (y + dims->height) * drm_fb->pitches[color_plane] +
> > > > > +		       x * drm_fb->format->cpp[color_plane];
> > > > > +		pages =3D DIV_ROUND_UP(size, intel_tile_size(i915));
> > > > > +	} else {
> > > > > +		pages =3D plane_view_stride_tiles(fb, color_plane, dims) *
> > > > > +			plane_view_tile_rows(fb, color_plane, dims, y);
> > > > > +	}
> > > > > +
> > > > > +	return pages;
> > > > > +}
> > > > > +
> > > > >  int intel_fill_fb_info(struct drm_i915_private *i915, struct drm=
_framebuffer *fb)
> > > > >  {
> > > > >  	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> > > > > @@ -644,6 +697,7 @@ int intel_fill_fb_info(struct drm_i915_privat=
e *i915, struct drm_framebuffer *fb
> > > > >  	unsigned int tile_size =3D intel_tile_size(i915);
> > > > >  =

> > > > >  	for (i =3D 0; i < num_planes; i++) {
> > > > > +		struct fb_plane_view_dims view_dims;
> > > > >  		unsigned int width, height;
> > > > >  		unsigned int cpp, size;
> > > > >  		u32 offset;
> > > > > @@ -669,6 +723,8 @@ int intel_fill_fb_info(struct drm_i915_privat=
e *i915, struct drm_framebuffer *fb
> > > > >  		if (ret)
> > > > >  			return ret;
> > > > >  =

> > > > > +		init_plane_view_dims(intel_fb, i, width, height, &view_dims);
> > > > > +
> > > > >  		/*
> > > > >  		 * First pixel of the framebuffer from
> > > > >  		 * the start of the normal gtt mapping.
> > > > > @@ -680,38 +736,22 @@ int intel_fill_fb_info(struct drm_i915_priv=
ate *i915, struct drm_framebuffer *fb
> > > > >  =

> > > > >  		if (!is_surface_linear(fb, i)) {
> > > > >  			struct intel_remapped_plane_info plane_info;
> > > > > -			unsigned int tile_width, tile_height;
> > > > > -
> > > > > -			intel_tile_dims(fb, i, &tile_width, &tile_height);
> > > > >  =

> > > > >  			plane_info.offset =3D offset;
> > > > > -			plane_info.stride =3D DIV_ROUND_UP(fb->pitches[i],
> > > > > -							 tile_width * cpp);
> > > > > -			plane_info.width =3D DIV_ROUND_UP(x + width, tile_width);
> > > > > -			plane_info.height =3D DIV_ROUND_UP(y + height,
> > > > > -							 tile_height);
> > > > > -
> > > > > -			/* how many tiles does this plane need */
> > > > > -			size =3D plane_info.stride * plane_info.height;
> > > > > -			/*
> > > > > -			 * If the plane isn't horizontally tile aligned,
> > > > > -			 * we need one more tile.
> > > > > -			 */
> > > > > -			if (x !=3D 0)
> > > > > -				size++;
> > > > =

> > > > Where did that go?
> > > =

> > > Arg, thanks for catching it.
> > > =

> > > > > +			plane_info.stride =3D plane_view_stride_tiles(intel_fb, i, &v=
iew_dims);
> > > > > +			plane_info.width =3D DIV_ROUND_UP(x + width, view_dims.tile_w=
idth);
> > > > =

> > > > Why this doesn't have its own function?
> > > =

> > > Can move it to a plane_view_fb_width_tiles() helper (and maybe also
> > > s/plane_view_tile_rows/plane_view_fb_height_tiles).
> > =

> > Well. those are the view width/height no? So I would not put the "fb" in
> > the name there.
> =

> Ah, right.
> =

> Btw just realized that later in the patchset I rename
> plane_view_stride_tiles() to plane_view_src_stride_tiles() and add
> plane_view_dst_stride_tiles(), are you ok with that instead?

Yeah, seems ok.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
