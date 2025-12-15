Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A4FCBDAC4
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 13:02:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58AAE89E36;
	Mon, 15 Dec 2025 12:02:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C0DE89D56;
 Mon, 15 Dec 2025 12:02:12 +0000 (UTC)
Received: from mobile-access-5d6aa7-235.dhcp.inet.fi ([93.106.167.235]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vV7HE-00000000p1g-2Rol; Mon, 15 Dec 2025 14:02:10 +0200
Message-ID: <a45bad5ec743491abe27dbe5ce3b6a13f610710e.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Date: Mon, 15 Dec 2025 14:02:07 +0200
In-Reply-To: <aT_2t7DhxNmURqLc@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-15-imre.deak@intel.com>
 <bd03d373949f5cb07e6b5d9314dd002fe7483be9.camel@coelho.fi>
 <aT_2t7DhxNmURqLc@ideak-desk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 14/50] drm/i915/dp: Factor out
 align_max_sink_dsc_input_bpp()
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

On Mon, 2025-12-15 at 13:53 +0200, Imre Deak wrote:
> On Mon, Dec 15, 2025 at 09:46:24AM +0200, Luca Coelho wrote:
> > On Thu, 2025-11-27 at 19:49 +0200, Imre Deak wrote:
> > > Factor out align_max_sink_dsc_input_bpp(), also used later for comput=
ing
> > > the maximum DSC input BPP limit.
> > >=20
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++++++++-------=
--
> > >  1 file changed, 18 insertions(+), 10 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index 000fccc39a292..dcb9bc11e677b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -1893,12 +1893,27 @@ int intel_dp_dsc_max_src_input_bpc(struct int=
el_display *display)
> > >  	return intel_dp_dsc_min_src_input_bpc();
> > >  }
> > > =20
> > > +static int align_max_sink_dsc_input_bpp(const struct intel_connector=
 *connector,
> > > +					int max_pipe_bpp)
> > > +{
> > > +	u8 dsc_bpc[3];
> >=20
> > I think it's safer to use the '=3D {}' we had before, because that zero=
es
> > the array, so in case of any stack leaks, you won't leak aleatory parts
> > of the memory.  In this case it's only 3 bytes, so hardly anything
> > important could leak, but anyway.
>=20
> As for any other variable I don't see any reason for initializing it, if
> it will be initialized before its first use. It will be initialized
> before its first use by drm_dp_dsc_sink_supported_input_bpcs().

Fair enough.  Security here is probably not so important, and as I
said, it's only 3 bytes, but in wifi we once had the activity of pre-
initializing all arrays like this for security reasons.  Your call.


> > Also, since this is 3 bytes long, it's theoretically better to have it
> > at the end of the stack declarations.
>=20
> The compiler is free to reorder the allocation order on the stack and
> is expected to that for optimal alignment.

Of course the compiler will do this sort of things, but it's just
better practice IMHO to keeps organized in some way.  If you had said
that it was in alphabetical order (it isn't), then it would probably
satisfy my OCD. lol

In any case, these were just nitpicks, so it's up to you.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.



> > > +	int num_bpc;
> > > +	int i;
> > > +
> > > +	num_bpc =3D drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_=
dpcd,
> > > +						       dsc_bpc);
> > > +	for (i =3D 0; i < num_bpc; i++) {
> > > +		if (dsc_bpc[i] * 3 <=3D max_pipe_bpp)
> > > +			return dsc_bpc[i] * 3;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >  int intel_dp_dsc_compute_max_bpp(const struct intel_connector *conne=
ctor,
> > >  				 u8 max_req_bpc)
> > >  {
> > >  	struct intel_display *display =3D to_intel_display(connector);
> > > -	int i, num_bpc;
> > > -	u8 dsc_bpc[3] =3D {};
> > >  	int dsc_max_bpc;
> > > =20
> > >  	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(display);
> > > @@ -1908,14 +1923,7 @@ int intel_dp_dsc_compute_max_bpp(const struct =
intel_connector *connector,
> > > =20
> > >  	dsc_max_bpc =3D min(dsc_max_bpc, max_req_bpc);
> > > =20
> > > -	num_bpc =3D drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_=
dpcd,
> > > -						       dsc_bpc);
> > > -	for (i =3D 0; i < num_bpc; i++) {
> > > -		if (dsc_max_bpc >=3D dsc_bpc[i])
> > > -			return dsc_bpc[i] * 3;
> > > -	}
> > > -
> > > -	return 0;
> > > +	return align_max_sink_dsc_input_bpp(connector, dsc_max_bpc * 3);
> > >  }
> > > =20
> > >  static int intel_dp_source_dsc_version_minor(struct intel_display *d=
isplay)
