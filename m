Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58711BA83A2
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 09:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C0F10E1A9;
	Mon, 29 Sep 2025 07:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B7CD10E1A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Sep 2025 07:22:06 +0000 (UTC)
Received: from 91-153-14-118.elisa-laajakaista.fi ([91.153.14.118]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1v38Cv-000000019bP-1E1z; Mon, 29 Sep 2025 10:22:02 +0300
Message-ID: <6529b911135892eaed3bd90abc755492d79cd8f0.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Sep 2025 10:21:59 +0300
In-Reply-To: <aM2aKbpma-4Ss6ik@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-7-luciano.coelho@intel.com>
 <aM2aKbpma-4Ss6ik@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 6/6] drm/i915/wm: move method selection and calculation
 to a separate function
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

On Fri, 2025-09-19 at 21:00 +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Mon, Sep 08, 2025 at 10:35:35AM +0300, Luca Coelho wrote:
> > Isolate the code that handles method selection and calculation, so
> > skl_compute_plane_wm() doesn't get too long.
> >=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 51 ++++++++++++--------
> >  1 file changed, 31 insertions(+), 20 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu=
/drm/i915/display/skl_watermark.c
> > index 21f8d52ec1d2..33853a18ee9c 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -1806,25 +1806,14 @@ static bool xe3_auto_min_alloc_capable(struct i=
ntel_plane *plane, int level)
> >  	return DISPLAY_VER(display) >=3D 30 && level =3D=3D 0 && plane->id !=
=3D PLANE_CURSOR;
> >  }
> > =20
> > -static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_s=
tate,
> > -				 struct intel_plane *plane,
> > -				 int level,
> > -				 unsigned int latency,
> > -				 const struct skl_wm_params *wp,
> > -				 const struct skl_wm_level *result_prev,
> > -				 struct skl_wm_level *result /* out */)
> > +static uint_fixed_16_16_t
> > +skl_wm_run_method(struct intel_display *display,
>=20
> I was confused what a "run method" is, but I guess "run" is supposed
> to be a verb here.
>=20
> However this thing does a lot more than "run a method", so I don't
> really like this.
>=20
> I susepct it would make more sense to carve up skl_compute_plane_wm()
> into several smaller (possibly platform dependent) pieces. Eg.
> the result selection part seems like one thing that could extracted
> into a small function. The min_ddb_alloc calculation would be another
> clear piece that can be extracted.

Okay, I hear you.  I was not happy at all with "run method" either, but
couldn't find anything better.  I tried to isolate the method selection
and execution, but "skl_wm_select_and_run_method()" would be too long.

In some of my later draft patches on top of this, I'm moving platform
dependent parts into their own functions.  The step in this patch is
"carve out for further processing".

Method 1 is rarely needed nowadays, so skipping the calculation could
improve performance in critical paths.

If you think this doesn't have any performance impact or other issue,
it would be nice to merge it as is, so I can continue carving, trimming
and sorting this whole thing out.  What do you think?

--
Cheers,
Luca.
