Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05017B48E35
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 14:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8767910E508;
	Mon,  8 Sep 2025 12:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D346B10E508
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 12:53:51 +0000 (UTC)
Received: from 88-113-67-44.elisa-laajakaista.fi ([88.113.67.44]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1uvbNU-00000000cyg-0ld8; Mon, 08 Sep 2025 15:53:49 +0300
Message-ID: <be60de526115c5d8ee5c2a1db476388a780d5016.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 08 Sep 2025 15:53:46 +0300
In-Reply-To: <175733540458.1838.2290402876913223031@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-5-luciano.coelho@intel.com>
 <175733540458.1838.2290402876913223031@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2 
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

On Mon, 2025-09-08 at 09:43 -0300, Gustavo Sousa wrote:
> Quoting Luca Coelho (2025-09-08 04:35:33-03:00)
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
> > drivers/gpu/drm/i915/display/skl_watermark.c | 35 ++++++++++++++------
> > 1 file changed, 24 insertions(+), 11 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu=
/drm/i915/display/skl_watermark.c
> > index 0ce3420a919e..dd4bed02c3c0 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -53,9 +53,16 @@ struct intel_dbuf_state {
> > #define intel_atomic_get_new_dbuf_state(state) \
> >         to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state=
, &to_intel_display(state)->dbuf.obj))
> >=20
> > +/* Tiling mode groups relevant to WM calculations */
> > +enum wm_tiling_mode {
> > +        WM_TILING_LINEAR,
> > +        WM_TILING_X_TILED,        /* mostly like linear */
> > +        WM_TILING_Y_FAMILY,        /* includes Y, Yf and 4 tiling */
> > +};
> > +
> > /* Stores plane specific WM parameters */
> > struct skl_wm_params {
> > -        bool x_tiled, y_tiled;
> > +        enum wm_tiling_mode tiling;
> >         bool rc_surface;
> >         bool is_planar;
> >         u32 width;
> > @@ -618,7 +625,8 @@ static unsigned int skl_wm_latency(struct intel_dis=
play *display, int level,
> >              display->platform.cometlake) && skl_watermark_ipc_enabled(=
display))
> >                 latency +=3D 4;
> >=20
> > -        if (skl_needs_memory_bw_wa(display) && wp && wp->x_tiled)
> > +        if (skl_needs_memory_bw_wa(display) &&
> > +            wp && wp->tiling =3D=3D WM_TILING_X_TILED)
> >                 latency +=3D 15;
> >=20
> >         return latency;
> > @@ -1674,9 +1682,14 @@ skl_compute_wm_params(const struct intel_crtc_st=
ate *crtc_state,
> >                 return -EINVAL;
> >         }
> >=20
> > -        wp->x_tiled =3D modifier =3D=3D I915_FORMAT_MOD_X_TILED;
> > -        wp->y_tiled =3D modifier !=3D I915_FORMAT_MOD_X_TILED &&
> > -                intel_fb_is_tiled_modifier(modifier);
> > +        if (modifier =3D=3D I915_FORMAT_MOD_X_TILED)
> > +                wp->tiling =3D WM_TILING_X_TILED;
> > +        else if (modifier !=3D I915_FORMAT_MOD_X_TILED &&
> > +                 intel_fb_is_tiled_modifier(modifier))
> > +                wp->tiling =3D WM_TILING_Y_FAMILY;
> > +        else
> > +                wp->tiling =3D WM_TILING_LINEAR;
> > +
>=20
> Hm...  I feel like x_tiled and y_tiled, just like other members of
> struct skl_wm_params, are more about represeting *properties* of the
> framebuffer/plane that are relevant to the algorithm rather than the
> tiling mode itself.  Invalid combinations of values would reflect a
> problem outside of the watermark calculation.  So, I'm not sure we
> really need an enumeration here.  If, in the future, we end up needing
> to know a tiling-related property that could be common to different
> tiling modes, the enumeration would not work for us.

This was mainly to make some sense out of the different tiling modes
that affect watermark calculations.  If you check newer bspecs, there's
no mention of Y-tiling anymore, only 4-tiling, which superseeded y-
tiling.  It was quite confusing to figure this all out, not clear from
the code at all.  Additionally, in the watermark code, there has been
mention of linear, which sort of included x-tiling as well.

With the enumeration, we not only remove the invalid combinations (e.g.
x-tiled and y-tiled both being set to true), but also make it clear
that these are all different values for the "tiling" attribute for
watermark calculations.


> On the other hand, we do reduce the number of members in struct
> skl_wm_params.
>=20
> So, I have mixed feelings about this change.

It's not only the reduction of members, but also clarity in the code,
IMHO and avoidance of impossible combinations.  With one of the next
patches I convert some of this stuff into a switch-case, so it becomes
clearer to see how each one is handled.

--
Cheers,
Luca.
