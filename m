Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E24414F98
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 20:09:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C1186E02A;
	Wed, 22 Sep 2021 18:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB9AC6E02A
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 18:09:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="223697034"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="223697034"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 11:09:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="585461127"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 22 Sep 2021 11:09:11 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 11:09:10 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 23:39:07 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Wed, 22 Sep 2021 23:39:07 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 5/8] drm/i915/fbc: Rework cfb stride/size
 calculations
Thread-Index: AQHXb4NVVd0PLUF6rkirGI8ueq0CNquW21QggBfbQ4CAAiOb4A==
Date: Wed, 22 Sep 2021 18:09:07 +0000
Message-ID: <b8b1d86cc2b64d1388365cc33dc2aae4@intel.com>
References: <20210702204603.596-1-ville.syrjala@linux.intel.com>
 <20210702204603.596-6-ville.syrjala@linux.intel.com>
 <4647cc36df3248a5b338ed93038dbc2a@intel.com> <YUnys0YhOm3Sqae7@intel.com>
In-Reply-To: <YUnys0YhOm3Sqae7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/fbc: Rework cfb stride/size
 calculations
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, September 21, 2021 8:27 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/fbc: Rework cfb stride/size
> calculations
>=20
> On Mon, Sep 06, 2021 at 05:23:42AM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Saturday, July 3, 2021 2:16 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH 5/8] drm/i915/fbc: Rework cfb
> > > stride/size calculations
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > The code to calculate the cfb stride/size is a bit of mess.
> > > The cfb size is getting calculated based purely on the plane stride a=
nd plane
> height.
> > > That doesn't account for extra alignment we want for the cfb stride.
> > > The gen9 override stride OTOH is just calculated based on the plane
> > > width, and it does try to make things more aligned but any extra
> > > alignment added there is not considered in the cfb size calculations.
> > > So not at all convinced this is working as intended. Additionally
> > > the compression limit handling is split between the cfb allocation
> > > code and g4x_dpfc_ctl_limit() (for the 16bpp case), which is just con=
fusing.
> > >
> > > Let's streamline the whole thing:
> > > - Start with the plane stride, convert that into cfb stride (cfb is
> > >   always 4 bytes per pixel). All the calculations will assume 1:1
> > >   compression limit since that will give us the max values, and we
> > >   don't yet know how much stolen memory we will be able to allocate
> > > - Align the cfb stride to 512 bytes on modern platforms. This guarant=
ees
> > >   the 4 line segment will be 512 byte aligned regardles of the final
> > >   compression limit we choose later. The 512 byte alignment for the
> > >   segment is required by at least some of the platforms, and just doi=
ng
> > >   it always seems like the easiest option
> > > - Figure out if we need to use the override stride or not. For X-tile=
d
> > >   it's never needed since the plane stride is already 512 byte aligne=
d,
> > >   for Y-tiled it will be needed if the plane stride is not a multiple
> > >   of 512 bytes, and for linear it's apparently always needed because =
the
> > >   hardware miscalculates the cfb stride as PLANE_STRIDE*512 instead o=
f
> > >   the PLANE_STRIDE*64 that it use with linear.
> > > - The cfb size will be calculated based on the aligned cfb stride to
> > >   guarantee we actually reserved enough stolen memory and the FBC hw
> > >   won't end up scribbling over whatever else is allocated in stolen
> > > - The compression limit handling we just do fully in the cfb allocati=
on
> > >   code to make things less confusing
> > >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fbc.c | 141 ++++++++++++++-------=
--
> > >  drivers/gpu/drm/i915/i915_drv.h          |   4 +-
> > >  2 files changed, 90 insertions(+), 55 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index f5cbbc53837c..2baf58af016c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -62,19 +62,54 @@ static void
> > > intel_fbc_get_plane_source_size(const struct intel_fbc_state_cache *
> > >  		*height =3D cache->plane.src_h;
> > >  }
> > >
> > > -static int intel_fbc_calculate_cfb_size(struct drm_i915_private *dev=
_priv,
> > > -					const struct intel_fbc_state_cache *cache)
> > > +/* plane stride in pixels */
> > > +static unsigned int intel_fbc_plane_stride(const struct
> > > +intel_plane_state *plane_state)
> > >  {
> > > -	int lines;
> > > +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > > +	unsigned int stride;
> > > +
> > > +	stride =3D plane_state->view.color_plane[0].stride;
> > > +	if (!drm_rotation_90_or_270(plane_state->hw.rotation))
> > > +		stride /=3D fb->format->cpp[0];
> > > +
> > > +	return stride;
> > > +}
> > > +
> > > +/* plane stride based cfb stride in bytes, assuming 1:1 compression
> > > +limit */ static unsigned int _intel_fbc_cfb_stride(const struct
> > > +intel_fbc_state_cache *cache) {
> > > +	/* FBC always 4 bytes per pixel internally */
> > > +	return cache->fb.stride * 4;
> > > +}
> > > +
> > > +/* properly aligned cfb stride in bytes, assuming 1:1 compression
> > > +limit */ static unsigned int intel_fbc_cfb_stride(struct drm_i915_pr=
ivate *i915,
> > > +					 const struct intel_fbc_state_cache *cache)
> > > {
> > > +	unsigned int stride =3D _intel_fbc_cfb_stride(cache);
> > > +
> > > +	/*
> > > +	 * At least some of the platforms require each 4 line segment to
> > > +	 * be 512 byte aligned. Aligning each line to 512 bytes guarantees
> > > +	 * that regardless of the compression limit we choose later.
> > > +	 */
> > > +	if (DISPLAY_VER(i915) =3D=3D 9)
> > > +		return ALIGN(stride, 512);
> > > +	else
> > > +		return stride;
> > > +}
> > > +
> > > +static unsigned int intel_fbc_cfb_size(struct drm_i915_private *dev_=
priv,
> > > +				       const struct intel_fbc_state_cache *cache) {
> > > +	int lines =3D cache->plane.src_h;
> > >
> > > -	intel_fbc_get_plane_source_size(cache, NULL, &lines);
> > >  	if (DISPLAY_VER(dev_priv) =3D=3D 7)
> > >  		lines =3D min(lines, 2048);
> > >  	else if (DISPLAY_VER(dev_priv) >=3D 8)
> > >  		lines =3D min(lines, 2560);
> > >
> > > -	/* Hardware needs the full buffer stride, not just the active area.=
 */
> > > -	return lines * cache->fb.stride;
> > > +	return lines * intel_fbc_cfb_stride(dev_priv, cache);
> > >  }
> > >
> > >  static void i8xx_fbc_deactivate(struct drm_i915_private *dev_priv)
> > > @@ -150,15
> > > +185,9 @@ static bool i8xx_fbc_is_active(struct drm_i915_private
> > > +*dev_priv)
> > >
> > >  static u32 g4x_dpfc_ctl_limit(struct drm_i915_private *i915)  {
> > > -	const struct intel_fbc_reg_params *params =3D &i915->fbc.params;
> > > -	int limit =3D i915->fbc.limit;
> > > -
> > > -	if (params->fb.format->cpp[0] =3D=3D 2)
> > > -		limit <<=3D 1;
> > > -
> > > -	switch (limit) {
> > > +	switch (i915->fbc.limit) {
> > >  	default:
> > > -		MISSING_CASE(limit);
> > > +		MISSING_CASE(i915->fbc.limit);
> > >  		fallthrough;
> > >  	case 1:
> > >  		return DPFC_CTL_LIMIT_1X;
> > > @@ -301,7 +330,8 @@ static bool ilk_fbc_is_active(struct
> > > drm_i915_private
> > > *dev_priv)
> > >
> > >  static void gen7_fbc_activate(struct drm_i915_private *dev_priv)  {
> > > -	struct intel_fbc_reg_params *params =3D &dev_priv->fbc.params;
> > > +	struct intel_fbc *fbc =3D &dev_priv->fbc;
> > > +	const struct intel_fbc_reg_params *params =3D &fbc->params;
> > >  	u32 dpfc_ctl;
> > >
> > >  	/* Display WA #0529: skl, kbl, bxt. */ @@ -310,7 +340,7 @@ static
> > > void gen7_fbc_activate(struct drm_i915_private *dev_priv)
> > >
> > >  		if (params->override_cfb_stride)
> > >  			val |=3D CHICKEN_FBC_STRIDE_OVERRIDE |
> > > -				CHICKEN_FBC_STRIDE(params-
> > > >override_cfb_stride);
> > > +				CHICKEN_FBC_STRIDE(params-
> > > >override_cfb_stride / fbc->limit);
> > >
> > >  		intel_de_rmw(dev_priv, CHICKEN_MISC_4,
> > >  			     CHICKEN_FBC_STRIDE_OVERRIDE | @@ -443,7 +473,12
> @@ static
> > > u64 intel_fbc_stolen_end(struct drm_i915_private
> > > *dev_priv)
> > >  	return min(end, intel_fbc_cfb_base_max(dev_priv));
> > >  }
> > >
> > > -static int intel_fbc_max_limit(struct drm_i915_private *dev_priv,
> > > int fb_cpp)
> > > +static int intel_fbc_min_limit(int fb_cpp) {
> > > +	return fb_cpp =3D=3D 2 ? 2 : 1;
> > > +}
> > > +
> > > +static int intel_fbc_max_limit(struct drm_i915_private *dev_priv)
> > >  {
> > >  	/*
> > >  	 * FIXME: FBC1 can have arbitrary cfb stride, @@ -457,7 +492,7 @@
> > > static int intel_fbc_max_limit(struct drm_i915_private *dev_priv, int=
 fb_cpp)
> > >  		return 1;
> > >
> > >  	/* FBC2 can only do 1:1, 1:2, 1:4 */
> > > -	return fb_cpp =3D=3D 2 ? 2 : 4;
> > > +	return 4;
> > >  }
> > >
> > >  static int find_compression_limit(struct drm_i915_private
> > > *dev_priv, @@ -466,7
> > > +501,9 @@ static int find_compression_limit(struct drm_i915_private
> > > +*dev_priv,  {
> > >  	struct intel_fbc *fbc =3D &dev_priv->fbc;
> > >  	u64 end =3D intel_fbc_stolen_end(dev_priv);
> > > -	int ret, limit =3D 1;
> > > +	int ret, limit =3D intel_fbc_min_limit(fb_cpp);
> > > +
> > > +	size /=3D limit;
> > >
> > >  	/* Try to over-allocate to reduce reallocations and fragmentation. =
*/
> > >  	ret =3D i915_gem_stolen_insert_node_in_range(dev_priv, &fbc-
> > > >compressed_fb, @@ -474,7 +511,7 @@ static int
> > > >find_compression_limit(struct
> > > drm_i915_private *dev_priv,
> > >  	if (ret =3D=3D 0)
> > >  		return limit;
> > >
> > > -	for (; limit <=3D intel_fbc_max_limit(dev_priv, fb_cpp); limit <<=
=3D 1) {
> > > +	for (; limit <=3D intel_fbc_max_limit(dev_priv); limit <<=3D 1) {
> > >  		ret =3D i915_gem_stolen_insert_node_in_range(dev_priv, &fbc-
> > > >compressed_fb,
> > >  							   size >>=3D 1, 4096, 0, end);
> > >  		if (ret =3D=3D 0)
> > > @@ -505,10 +542,9 @@ static int intel_fbc_alloc_cfb(struct
> > > drm_i915_private *dev_priv,
> > >  	ret =3D find_compression_limit(dev_priv, size, fb_cpp);
> > >  	if (!ret)
> > >  		goto err_llb;
> > > -	else if (ret > 1) {
> > > +	else if (ret > intel_fbc_min_limit(fb_cpp))
> > >  		drm_info_once(&dev_priv->drm,
> > >  			      "Reducing the compressed framebuffer size. This may
> lead
> > > to less power savings than a non-reduced-size. Try to increase
> > > stolen memory size if available in BIOS.\n");
> > > -	}
> > >
> > >  	fbc->limit =3D ret;
> > >
> > > @@ -719,11 +755,7 @@ static void intel_fbc_update_state_cache(struct
> > > intel_crtc *crtc,
> > >
> > >  	cache->fb.format =3D fb->format;
> > >  	cache->fb.modifier =3D fb->modifier;
> > > -
> > > -	/* FIXME is this correct? */
> > > -	cache->fb.stride =3D plane_state->view.color_plane[0].stride;
> > > -	if (drm_rotation_90_or_270(plane_state->hw.rotation))
> > > -		cache->fb.stride *=3D fb->format->cpp[0];
> > > +	cache->fb.stride =3D intel_fbc_plane_stride(plane_state);
> > >
> > >  	/* FBC1 compression interval: arbitrary choice of 1 second */
> > >  	cache->interval =3D
> > > drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
> > > @@ -746,27 +778,29 @@ static bool intel_fbc_cfb_size_changed(struct
> > > drm_i915_private *dev_priv)  {
> > >  	struct intel_fbc *fbc =3D &dev_priv->fbc;
> > >
> > > -	return intel_fbc_calculate_cfb_size(dev_priv, &fbc->state_cache) >
> > > +	return intel_fbc_cfb_size(dev_priv, &fbc->state_cache) >
> > >  		fbc->compressed_fb.size * fbc->limit;  }
> > >
> > > -static u16 intel_fbc_override_cfb_stride(struct drm_i915_private
> > > *dev_priv)
> > > +static u16 intel_fbc_override_cfb_stride(struct drm_i915_private *de=
v_priv,
> > > +					 const struct intel_fbc_state_cache *cache)
> > >  {
> > > -	struct intel_fbc *fbc =3D &dev_priv->fbc;
> > > -	struct intel_fbc_state_cache *cache =3D &fbc->state_cache;
> > > +	unsigned int stride =3D _intel_fbc_cfb_stride(cache);
> > > +	unsigned int stride_aligned =3D intel_fbc_cfb_stride(dev_priv,
> > > +cache);
> > >
> > > -	if ((DISPLAY_VER(dev_priv) =3D=3D 9) &&
> > > -	    cache->fb.modifier !=3D I915_FORMAT_MOD_X_TILED)
> > > -		return DIV_ROUND_UP(cache->plane.src_w, 32 * fbc->limit) * 8;
> > > -	else
> > > -		return 0;
> > > -}
> > > +	/*
> > > +	 * Override stride in 64 byte units per 4 line segment.
> > > +	 *
> > > +	 * Gen9 hw miscalculates cfb stride for linear as
> > > +	 * PLANE_STRIDE*512 instead of PLANE_STRIDE*64, so
> > > +	 * we always need to use the override there.
> > > +	 */
> > > +	if (stride !=3D stride_aligned ||
> > > +	    (DISPLAY_VER(dev_priv) =3D=3D 9 &&
> > > +	     cache->fb.modifier =3D=3D DRM_FORMAT_MOD_LINEAR))
> > > +		return stride_aligned * 4 / 64;
> >
> > As per bspec WA: 0529
> > "Corruption in some cases when FBC is enabled and the plane surface
> > format is in linear, tile Y legacy, or tile Yf
> > WA: Display register 4208Ch bit 13 must be set to 1b and bits 12:0
> > must be programmed with the compressed buffer stride value. The compres=
sed
> buffer stride must be calculated using the following equation:
> >
> > Compressed buffer stride =3D ceiling [(at least plane width in pixels) =
/ (32 *
> compression limit factor)] * 8"
> >
> > We need to use override stride even for TileY/Yf as well along with lin=
ear. Does the
> 512 alignment takes care of that.
>=20
> TileY is actually fine without the w/a if the plane stride is suitably al=
igned. It only
> goes bad when the stride is misaligned.
>=20

Ok, so we should be covered here due to the alignment.

> Not quite sure about Yf since I've not tested it, but we don't even allow=
 FBC with Yf
> at the moment so doesn't really matter.

Yeah ok, make sense.

> > And also whether the calculation for linear aligns with bspec WA. Just =
wanted to
> highlight, so that we don't miss.
>=20
> The bspec calculations are written in a bit convoluted way. I'll respin t=
hese patches a
> bit to write the calcualtions out in a way that actually makes it clear w=
hat we're
> doing...

Ok sure Ville. Will check and ack that.

Regards,
Uma Shankar

> > Will go with your discretion.
> >
> > >
> > > -static bool intel_fbc_override_cfb_stride_changed(struct
> > > drm_i915_private
> > > *dev_priv) -{
> > > -	struct intel_fbc *fbc =3D &dev_priv->fbc;
> > > -
> > > -	return fbc->params.override_cfb_stride !=3D
> > > intel_fbc_override_cfb_stride(dev_priv);
> > > +	return 0;
> > >  }
> > >
> > >  static bool intel_fbc_can_enable(struct drm_i915_private *dev_priv)
> > > @@ -861,7
> > > +895,8 @@ static bool intel_fbc_can_activate(struct intel_crtc
> > > +*crtc)
> > >  		return false;
> > >  	}
> > >
> > > -	if (!stride_is_valid(dev_priv, cache->fb.modifier, cache->fb.stride=
)) {
> > > +	if (!stride_is_valid(dev_priv, cache->fb.modifier,
> > > +			     cache->fb.stride * cache->fb.format->cpp[0])) {
> > >  		fbc->no_fbc_reason =3D "framebuffer stride not supported";
> > >  		return false;
> > >  	}
> > > @@ -949,9 +984,9 @@ static void intel_fbc_get_reg_params(struct intel=
_crtc
> *crtc,
> > >  	params->fb.modifier =3D cache->fb.modifier;
> > >  	params->fb.stride =3D cache->fb.stride;
> > >
> > > -	params->cfb_size =3D intel_fbc_calculate_cfb_size(dev_priv, cache);
> > > -
> > > -	params->override_cfb_stride =3D cache->override_cfb_stride;
> > > +	params->cfb_stride =3D intel_fbc_cfb_stride(dev_priv, cache);
> > > +	params->cfb_size =3D intel_fbc_cfb_size(dev_priv, cache);
> > > +	params->override_cfb_stride =3D
> > > +intel_fbc_override_cfb_stride(dev_priv,
> > > +cache);
> > >
> > >  	params->plane_visible =3D cache->plane.visible;  } @@ -982,10
> > > +1017,13 @@ static bool intel_fbc_can_flip_nuke(const struct intel_cr=
tc_state
> *crtc_state)
> > >  	if (params->fb.stride !=3D cache->fb.stride)
> > >  		return false;
> > >
> > > -	if (params->cfb_size !=3D intel_fbc_calculate_cfb_size(dev_priv, ca=
che))
> > > +	if (params->cfb_stride !=3D intel_fbc_cfb_stride(dev_priv, cache))
> > >  		return false;
> > >
> > > -	if (params->override_cfb_stride !=3D cache->override_cfb_stride)
> > > +	if (params->cfb_size !=3D intel_fbc_cfb_size(dev_priv, cache))
> > > +		return false;
> > > +
> > > +	if (params->override_cfb_stride !=3D
> > > +intel_fbc_override_cfb_stride(dev_priv, cache))
> > >  		return false;
> > >
> > >  	return true;
> > > @@ -1266,8 +1304,7 @@ static void intel_fbc_enable(struct
> > > intel_atomic_state *state,
> > >
> > >  	if (fbc->crtc) {
> > >  		if (fbc->crtc !=3D crtc ||
> > > -		    (!intel_fbc_cfb_size_changed(dev_priv) &&
> > > -		     !intel_fbc_override_cfb_stride_changed(dev_priv)))
> > > +		    !intel_fbc_cfb_size_changed(dev_priv))
> > >  			goto out;
> > >
> > >  		__intel_fbc_disable(dev_priv);
> > > @@ -1282,15 +1319,13 @@ static void intel_fbc_enable(struct
> > > intel_atomic_state *state,
> > >  		goto out;
> > >
> > >  	if (intel_fbc_alloc_cfb(dev_priv,
> > > -				intel_fbc_calculate_cfb_size(dev_priv, cache),
> > > +				intel_fbc_cfb_size(dev_priv, cache),
> > >  				plane_state->hw.fb->format->cpp[0])) {
> > >  		cache->plane.visible =3D false;
> > >  		fbc->no_fbc_reason =3D "not enough stolen memory";
> > >  		goto out;
> > >  	}
> > >
> > > -	cache->override_cfb_stride =3D intel_fbc_override_cfb_stride(dev_pr=
iv);
> > > -
> > >  	drm_dbg_kms(&dev_priv->drm, "Enabling FBC on pipe %c\n",
> > >  		    pipe_name(crtc->pipe));
> > >  	fbc->no_fbc_reason =3D "FBC enabled but not active yet\n"; diff
> > > --git a/drivers/gpu/drm/i915/i915_drv.h
> > > b/drivers/gpu/drm/i915/i915_drv.h index
> > > 91a2d2425fd3..d124306c0a08 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -401,7 +401,6 @@ struct intel_fbc {
> > >  		} fb;
> > >
> > >  		unsigned int fence_y_offset;
> > > -		u16 override_cfb_stride;
> > >  		u16 interval;
> > >  		s8 fence_id;
> > >  		bool psr2_active;
> > > @@ -426,7 +425,8 @@ struct intel_fbc {
> > >  			u64 modifier;
> > >  		} fb;
> > >
> > > -		int cfb_size;
> > > +		unsigned int cfb_stride;
> > > +		unsigned int cfb_size;
> > >  		unsigned int fence_y_offset;
> > >  		u16 override_cfb_stride;
> > >  		u16 interval;
> > > --
> > > 2.31.1
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>=20
> --
> Ville Syrj=E4l=E4
> Intel
