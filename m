Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87896B48E59
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 14:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB7210E517;
	Mon,  8 Sep 2025 12:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA76510E517
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 12:57:12 +0000 (UTC)
Received: from 88-113-67-44.elisa-laajakaista.fi ([88.113.67.44]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1uvbQi-00000000d08-1eIM; Mon, 08 Sep 2025 15:57:10 +0300
Message-ID: <61c2893dd4fdfd0edeba85e8211451a16b18c1ca.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 08 Sep 2025 15:57:07 +0300
In-Reply-To: <175733591378.1838.12709876861986493189@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-6-luciano.coelho@intel.com>
 <175733591378.1838.12709876861986493189@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 5/6] drm/i915/wm: convert tiling mode check in
 slk_compute_plane_wm() to a switch-case
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

On Mon, 2025-09-08 at 09:51 -0300, Gustavo Sousa wrote:
> Quoting Luca Coelho (2025-09-08 04:35:34-03:00)
> > Make the code a bit clearer by using a switch-case to check the tiling
> > mode in skl_compute_plane_wm(), because all the possible states and
> > the calculations they use are explicitly handled.
> >=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> > drivers/gpu/drm/i915/display/skl_watermark.c | 24 +++++++++++++++++---
> > 1 file changed, 21 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu=
/drm/i915/display/skl_watermark.c
> > index dd4bed02c3c0..21f8d52ec1d2 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -1833,21 +1833,39 @@ static void skl_compute_plane_wm(const struct i=
ntel_crtc_state *crtc_state,
> >                                  latency,
> >                                  wp->plane_blocks_per_line);
> >=20
> > -        if (wp->tiling =3D=3D WM_TILING_Y_FAMILY) {
> > +        switch (wp->tiling) {
> > +        case WM_TILING_Y_FAMILY:
> >                 selected_result =3D max_fixed16(method2, wp->y_tile_min=
imum);
> > -        } else {
> > +                break;
> > +
> > +        case WM_TILING_LINEAR:
> > +        case WM_TILING_X_TILED:
> > +                /*
> > +                 * Special case for unrealistically small horizontal
> > +                 * total with plane downscaling.
> > +                 */
> >                 if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
> >                      wp->dbuf_block_size < 1) &&
> > -                     (wp->plane_bytes_per_line / wp->dbuf_block_size <=
 1)) {
> > +                    (wp->plane_bytes_per_line / wp->dbuf_block_size < =
1)) {
> >                         selected_result =3D method2;
> >                 } else if (latency >=3D wp->linetime_us) {
> > +                        /*
> > +                         * With display version 9, we use the minimum
> > +                         * of both methods.
> > +                         */
>=20
> Hm... Isn't this saying what is already clear in the code below?

Very true.  I had more text here, describing the method 1 case below
too, but after removing that, this became mostly irrelevant.  I'll
remove it.


>=20
> >                         if (DISPLAY_VER(display) =3D=3D 9)
> >                                 selected_result =3D min_fixed16(method1=
, method2);
> >                         else
> >                                 selected_result =3D method2;
> >                 } else {
> > +                        /* everything else with linear/X-tiled uses me=
thod 1 */
> >                         selected_result =3D method1;
> >                 }
> > +                break;
> > +
> > +        default:
> > +                drm_err(display->drm, "Invalid tiling mode\n", wp->til=
ing);
> > +                break;
>=20
> If we decide to go with the enumeration solution, I think we should
> change this into a warning and use some default behavior here (perhaps
> WM_TILING_LINEAR?). Otherwise, selected_result would be used
> uninitialized.

Right, I moved this to a fallthrough in a later patch.

--
Cheers,
Luca.
