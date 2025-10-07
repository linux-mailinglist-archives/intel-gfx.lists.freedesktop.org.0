Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEB1BC09EB
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 10:26:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B83D710E5A4;
	Tue,  7 Oct 2025 08:26:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F7D510E5A4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 08:26:44 +0000 (UTC)
Received: from mobile-access-b04855-24.dhcp.inet.fi ([176.72.85.24]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1v631p-00000001LpR-3Zu3; Tue, 07 Oct 2025 11:26:39 +0300
Message-ID: <b07d23e00abbb1d59e949baf44178811c204f80f.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@linux.intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@linux.intel.com
Date: Tue, 07 Oct 2025 11:26:36 +0300
In-Reply-To: <e7bc9131b1bbd9ea2ddbe58680fb2333c17c42d1@intel.com>
References: <20251007075729.468669-1-luciano.coelho@intel.com>
 <20251007075729.468669-5-luciano.coelho@intel.com>
 <e7bc9131b1bbd9ea2ddbe58680fb2333c17c42d1@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH v2 4/7] drm/i915/wm: convert x/y-tiling bools to an enum
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

On Tue, 2025-10-07 at 11:07 +0300, Jani Nikula wrote:
> On Tue, 07 Oct 2025, Luca Coelho <luciano.coelho@intel.com> wrote:
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
> > v2: - remove redundant "tiled" and get rid of "family" in the enums (Vi=
lle)
> >     - remove holes introduced in the skl_wm_params struct (Ville)
> >     - improve if-else block to avoid intel_fb_is_tiled_modifier() call =
(Ville)
> >=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 38 +++++++++++++-------
> >  1 file changed, 25 insertions(+), 13 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu=
/drm/i915/display/skl_watermark.c
> > index 3a982458395e..dc00b5cd3ff7 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -53,13 +53,20 @@ struct intel_dbuf_state {
> >  #define intel_atomic_get_new_dbuf_state(state) \
> >  	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_=
intel_display(state)->dbuf.obj))
> > =20
> > +/* Tiling mode groups relevant to WM calculations */
> > +enum wm_tiling_mode {
> > +	WM_TILING_LINEAR,
> > +	WM_TILING_X,
> > +	WM_TILING_Y_Yf_4,
> > +};
> > +
> >  /* Stores plane specific WM parameters */
> >  struct skl_wm_params {
> > -	bool x_tiled, y_tiled;
> > -	bool rc_surface;
> > -	bool is_planar;
> > +	enum wm_tiling_mode tiling;
> >  	u32 width;
> >  	u8 cpp;
> > +	bool rc_surface;
> > +	bool is_planar;
> >  	u32 plane_pixel_rate;
> >  	u32 y_min_scanlines;
> >  	u32 plane_bytes_per_line;
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
> > @@ -1659,9 +1667,13 @@ skl_compute_wm_params(const struct intel_crtc_st=
ate *crtc_state,
> >  		return -EINVAL;
> >  	}
> > =20
> > -	wp->x_tiled =3D modifier =3D=3D I915_FORMAT_MOD_X_TILED;
> > -	wp->y_tiled =3D modifier !=3D I915_FORMAT_MOD_X_TILED &&
> > -		intel_fb_is_tiled_modifier(modifier);
> > +	if (modifier =3D=3D WM_TILING_LINEAR)
>=20
> "Namespace" mistmatch between modifier and WM_TILING_LINEAR?

Oops, sorry, b0rked rebase.  I'll fix and submit v3.

--
Cheers,
Luca.
