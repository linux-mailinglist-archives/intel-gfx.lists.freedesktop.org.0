Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EC75EA3CD
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 13:33:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 308D410E187;
	Mon, 26 Sep 2022 11:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADFB10E187
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 11:33:12 +0000 (UTC)
Received: from 91-155-255-44.elisa-laajakaista.fi ([91.155.255.44]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1ocmMG-003aMC-Ob;
 Mon, 26 Sep 2022 14:33:10 +0300
Message-ID: <6949d9290535115fe279bd04439c979311e15246.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Date: Mon, 26 Sep 2022 14:33:08 +0300
In-Reply-To: <YzGKDRz0412ilvVI@intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
 <20220912111814.17466-7-ville.syrjala@linux.intel.com>
 <6992a0ec208145381c0d587f7d7241684e3e1d09.camel@coelho.fi>
 <YzGKDRz0412ilvVI@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.0-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH 06/15] drm/i915: Extract
 intel_edp_backlight_setup()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2022-09-26 at 14:16 +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Mon, Sep 26, 2022 at 01:58:42PM +0300, Luca Coelho wrote:
> > On Mon, 2022-09-12 at 14:18 +0300, Ville Syrjala wrote:
> > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > >=20
> > > Pull the eDP backlight setup ino its own function. No
> > > reason to pollute intel_edp_init_connector() with all
> > > the mundane details.
> > >=20
> > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 51 +++++++++++++++--------=
--
> > >  1 file changed, 30 insertions(+), 21 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index a5eca5396fed..de5a4d2df78e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -5217,6 +5217,35 @@ intel_edp_add_properties(struct intel_dp *inte=
l_dp)
> > >  						       fixed_mode->vdisplay);
> > >  }
> > > =20
> > > +static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
> > > +				      struct intel_connector *connector)
> > > +{
> > > +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > +	enum pipe pipe =3D INVALID_PIPE;
> > > +
> > > +	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> >=20
> > Isn't this too restrictive? Isn't there another way to check whether
> > the hardware supports backlight?
>=20
> That's not what we're checking.
>=20
> Only VLV/CHV have per-pipe backlight registers, whereas
> other platforms have less insane design. So we only need
> to figure out the pipe on VLV/CHV.
>=20
> >=20
> >=20
> > > +		/*
> > > +		 * Figure out the current pipe for the initial backlight setup.
> > > +		 * If the current pipe isn't valid, try the PPS pipe, and if that
> > > +		 * fails just assume pipe A.
> > > +		 */
> > > +		pipe =3D vlv_active_pipe(intel_dp);
> > > +
> > > +		if (pipe !=3D PIPE_A && pipe !=3D PIPE_B)
> > > +			pipe =3D intel_dp->pps.pps_pipe;
> > > +
> > > +		if (pipe !=3D PIPE_A && pipe !=3D PIPE_B)
> > > +			pipe =3D PIPE_A;
> > > +
> > > +		drm_dbg_kms(&i915->drm,
> > > +			    "[CONNECTOR:%d:%s] using pipe %c for initial backlight setup\=
n",
> > > +			    connector->base.base.id, connector->base.name,
> > > +			    pipe_name(pipe));
> > > +	}
> > > +
> > > +	intel_backlight_setup(connector, pipe);
> >=20
> > In most cases we will call intel_backlight_setup() with INVALID_PIPE.=
=20
> > Wouldn't it be better to skip this call completely in that case?
>=20
> INVALD_PIPE doesn't mean "no backlight", it just means we don't
> care about the pipe.
>=20

Thanks for clarifying!

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
