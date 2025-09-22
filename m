Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 700C1B91257
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 14:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA5A10E466;
	Mon, 22 Sep 2025 12:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B7D810E484
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Sep 2025 12:38:54 +0000 (UTC)
Received: from 91-153-11-122.elisa-laajakaista.fi ([91.153.11.122]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1v0foe-00000000yyL-0VGk; Mon, 22 Sep 2025 15:38:50 +0300
Message-ID: <c95960bce99cc88737bfc6bc1b3914486c164e70.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Sep 2025 15:38:46 +0300
In-Reply-To: <aM0WFVMhQwIU-4QI@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-5-luciano.coelho@intel.com>
 <aM0WFVMhQwIU-4QI@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 4/6] drm/i915/wm: convert x/y-tiling bools to an enum
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

On Fri, 2025-09-19 at 11:36 +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Mon, Sep 08, 2025 at 10:35:33AM +0300, Luca Coelho wrote:
> > There are currently two booleans to define three tiling modes, which
> > is bad practice because it allows representing an invalid mode.  In
> > order to simplify this, convert these two booleans into one
> > enumeration with three possible tiling modes.
> >=20
> > Additionally, introduce the concept of Y "family" of tiling, which
> > groups Y, Yf and 4 tiling, since they're effectively treated in the
> > same way in the watermark calculations.  Describe the grouping in the
> > enumeration definition.
> >=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 35 ++++++++++++++------
> >  1 file changed, 24 insertions(+), 11 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu=
/drm/i915/display/skl_watermark.c
> > index 0ce3420a919e..dd4bed02c3c0 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -53,9 +53,16 @@ struct intel_dbuf_state {
> >  #define intel_atomic_get_new_dbuf_state(state) \
> >  	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_=
intel_display(state)->dbuf.obj))
> > =20
> > +/* Tiling mode groups relevant to WM calculations */
> > +enum wm_tiling_mode {
> > +	WM_TILING_LINEAR,
> > +	WM_TILING_X_TILED,	/* mostly like linear */
>=20
> The _TILED suffix seems redundant here.

Indeed.  I'll remove.  I just wanted to differentiate the actually
tiled ones from linear, but that's moot.


> > +	WM_TILING_Y_FAMILY,	/* includes Y, Yf and 4 tiling */
>=20
> I don't really like the "y family" invention. Doesn't really
> unconfuse anything for the reader without going back to have
> a look at the comment.
>=20
> I think it would be better to just spell out each tilimg mode.
> So I guess something like "WM_TILING_Y_Yf_4"

Yeah, I wasn't entirely happy with "family", but I really couldn't find
any better term.  My idea was to make it generic enough so we wouldn't
have to add a new tiling to the symbol every time we add something new.
Which is what happened with the "Y_TILED" before, and included also Yf
and 4 without any reference to this in the code.  It confused the crap
out of me.

Anyway, your idea is definitely clearer, so I'll change this.


> > +};
> > +
> >  /* Stores plane specific WM parameters */
> >  struct skl_wm_params {
> > -	bool x_tiled, y_tiled;
> > +	enum wm_tiling_mode tiling;
>=20
> That'll now be 4 bytes.
>=20
> >  	bool rc_surface;
> >  	bool is_planar;
>=20
> and we'll have a two byte hole here.
>=20
> >  	u32 width;
>         u8 cpp;
>=20
> And there's a 3 byte hole already here after the cpp.
> Should group the u8 with the bools to avoid so many holes.
>=20
> We could also shrink y_min_scanlines to a u8 and
> stick it into the last 1 byte hole. That'd shrink the whole
> struct by 4 bytes.
>=20
> dbuf_block_size would also fit in a u16, but doesn't look
> like we have any other holes where we could stick it. Hmm,
> actually 'width' could probably also be shrunk to be a u16.
> So could get rid of another 4 bytes here if we really
> wanted to.
>=20
> But I suppose all that repacking should be a separate patch...

Okay, I'll move the two remaining bools below the u8, so we fill part
of that existing space.  And I'll add a separate patch to reduce the
y_min_scanlines to u8 and fill the existing hole.

I'll leave the dbuf_block_size and width change out for now.  I think 4
bytes extra saving will not be worth the trouble, but I'll keep this in
mind if I eventually encounter other changes to be made with these
elements.


> > @@ -618,7 +625,8 @@ static unsigned int skl_wm_latency(struct intel_dis=
play *display, int level,
> >  	     display->platform.cometlake) && skl_watermark_ipc_enabled(displa=
y))
> >  		latency +=3D 4;
> > =20
> > -	if (skl_needs_memory_bw_wa(display) && wp && wp->x_tiled)
> > +	if (skl_needs_memory_bw_wa(display) &&
> > +	    wp && wp->tiling =3D=3D WM_TILING_X_TILED)
> >  		latency +=3D 15;
> > =20
> >  	return latency;
> > @@ -1674,9 +1682,14 @@ skl_compute_wm_params(const struct intel_crtc_st=
ate *crtc_state,
> >  		return -EINVAL;
> >  	}
> > =20
> > -	wp->x_tiled =3D modifier =3D=3D I915_FORMAT_MOD_X_TILED;
> > -	wp->y_tiled =3D modifier !=3D I915_FORMAT_MOD_X_TILED &&
> > -		intel_fb_is_tiled_modifier(modifier);
> > +	if (modifier =3D=3D I915_FORMAT_MOD_X_TILED)
> > +		wp->tiling =3D WM_TILING_X_TILED;
> > +	else if (modifier !=3D I915_FORMAT_MOD_X_TILED &&
>=20
> The modifier check here is redundant with the if-else construct.

Indeed.


> > +		 intel_fb_is_tiled_modifier(modifier))
> > +		wp->tiling =3D WM_TILING_Y_FAMILY;
> > +	else
> > +		wp->tiling =3D WM_TILING_LINEAR;
>=20
> In fact we can avoid the entire intel_fb_is_tiled_modifier()
> call with something like:
>=20
> if (mod =3D=3D LINEAR)
> 	tiling =3D LINEAR;
> else if (mod =3D=3D X)
> 	tiling =3D X;
> else
> 	tiling =3D Y_Yf_4;

Nice, I'll change it.


> The wm code always pops up fairly high in cpu profiles, so
> anything that makes it lighter is worth considering.

Oh, that's good to know.  But this is not happening in the "datapath",
but during modesets, right? Do the modesets really take so long and
happen so often so that avoiding a CPU cycles makes much difference?

--
Cheers,
Luca.

> > +
> >  	wp->rc_surface =3D intel_fb_is_ccs_modifier(modifier);
> >  	wp->is_planar =3D intel_format_info_is_yuv_semiplanar(format, modifie=
r);
> > =20
> > @@ -1716,7 +1729,7 @@ skl_compute_wm_params(const struct intel_crtc_sta=
te *crtc_state,
> >  		wp->y_min_scanlines *=3D 2;
> > =20
> >  	wp->plane_bytes_per_line =3D wp->width * wp->cpp;
> > -	if (wp->y_tiled) {
> > +	if (wp->tiling =3D=3D WM_TILING_Y_FAMILY) {
> >  		interm_pbpl =3D DIV_ROUND_UP(wp->plane_bytes_per_line *
> >  					   wp->y_min_scanlines,
> >  					   wp->dbuf_block_size);
> > @@ -1732,7 +1745,7 @@ skl_compute_wm_params(const struct intel_crtc_sta=
te *crtc_state,
> >  		interm_pbpl =3D DIV_ROUND_UP(wp->plane_bytes_per_line,
> >  					   wp->dbuf_block_size);
> > =20
> > -		if (!wp->x_tiled || DISPLAY_VER(display) >=3D 10)
> > +		if (wp->tiling !=3D WM_TILING_X_TILED || DISPLAY_VER(display) >=3D 1=
0)
> >  			interm_pbpl++;
> > =20
> >  		wp->plane_blocks_per_line =3D u32_to_fixed16(interm_pbpl);
> > @@ -1820,7 +1833,7 @@ static void skl_compute_plane_wm(const struct int=
el_crtc_state *crtc_state,
> >  				 latency,
> >  				 wp->plane_blocks_per_line);
> > =20
> > -	if (wp->y_tiled) {
> > +	if (wp->tiling =3D=3D WM_TILING_Y_FAMILY) {
> >  		selected_result =3D max_fixed16(method2, wp->y_tile_minimum);
> >  	} else {
> >  		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
> > @@ -1870,7 +1883,7 @@ static void skl_compute_plane_wm(const struct int=
el_crtc_state *crtc_state,
> > =20
> >  		/* Display WA #1126: skl,bxt,kbl */
> >  		if (level >=3D 1 && level <=3D 7) {
> > -			if (wp->y_tiled) {
> > +			if (wp->tiling =3D=3D WM_TILING_Y_FAMILY) {
> >  				blocks +=3D fixed16_to_u32_round_up(wp->y_tile_minimum);
> >  				lines +=3D wp->y_min_scanlines;
> >  			} else {
> > @@ -1889,7 +1902,7 @@ static void skl_compute_plane_wm(const struct int=
el_crtc_state *crtc_state,
> >  	}
> > =20
> >  	if (DISPLAY_VER(display) >=3D 11) {
> > -		if (wp->y_tiled) {
> > +		if (wp->tiling =3D=3D WM_TILING_Y_FAMILY) {
> >  			int extra_lines;
> > =20
> >  			if (lines % wp->y_min_scanlines =3D=3D 0)
> > @@ -2015,7 +2028,7 @@ static void skl_compute_transition_wm(struct inte=
l_display *display,
> >  	 */
> >  	wm0_blocks =3D wm0->blocks - 1;
> > =20
> > -	if (wp->y_tiled) {
> > +	if (wp->tiling =3D=3D WM_TILING_Y_FAMILY) {
> >  		trans_y_tile_min =3D
> >  			(u16)mul_round_up_u32_fixed16(2, wp->y_tile_minimum);
> >  		blocks =3D max(wm0_blocks, trans_y_tile_min) + trans_offset;
> > --=20
> > 2.50.1
