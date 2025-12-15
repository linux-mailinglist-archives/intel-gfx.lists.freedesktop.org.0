Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A08F5CBDB3A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 13:08:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23FB310E3AA;
	Mon, 15 Dec 2025 12:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A41910E1F8;
 Mon, 15 Dec 2025 12:08:08 +0000 (UTC)
Received: from mobile-access-5d6aa7-235.dhcp.inet.fi ([93.106.167.235]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vV7Mz-00000000p2Y-1RX0; Mon, 15 Dec 2025 14:08:06 +0200
Message-ID: <20c7439d3635514785e107b589569e659938f5d4.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Date: Mon, 15 Dec 2025 14:08:04 +0200
In-Reply-To: <aT_4ZsaerMLKqdEb@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-16-imre.deak@intel.com>
 <b99036ffc22bc31bdecff2b57a6a630dd941c634.camel@coelho.fi>
 <aT_4ZsaerMLKqdEb@ideak-desk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 15/50] drm/i915/dp: Factor out
 align_max_vesa_compressed_bpp_x16()
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

On Mon, 2025-12-15 at 14:00 +0200, Imre Deak wrote:
> On Mon, Dec 15, 2025 at 09:49:45AM +0200, Luca Coelho wrote:
> > On Thu, 2025-11-27 at 19:49 +0200, Imre Deak wrote:
> > > Factor out align_max_vesa_compressed_bpp_x16(), also used later for
> > > computing the maximum DSC compressed BPP limit.
> > >=20
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 35 ++++++++++++++---------=
--
> > >  1 file changed, 20 insertions(+), 15 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index dcb9bc11e677b..3111758578d6c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -867,10 +867,23 @@ small_joiner_ram_size_bits(struct intel_display=
 *display)
> > >  		return 6144 * 8;
> > >  }
> > > =20
> > > +static int align_max_vesa_compressed_bpp_x16(int max_link_bpp_x16)
> > > +{
> > > +	int i;
> > > +
> > > +	for (i =3D ARRAY_SIZE(valid_dsc_bpp) - 1; i >=3D 0; i--) {
> > > +		int vesa_bpp_x16 =3D fxp_q4_from_int(valid_dsc_bpp[i]);
> >=20
> > Any reason why you're doing the loop from the end to the beginning,
> > instead of the more natural from 0 to the end?
>=20
> Yes. The values in valid_dsc_bpp[] are stored in increasing order, so to
> find the maximum value <=3D the passed-in limit, the natural iteration
> order is from the end of the array.

I don't really see how this affects anything functionally and by
"natural" I meant for the person reading the code.  I had to think a
bit deeper when reviewing this loop because it's not the "for (i =3D 0; i
< ARRAY_SIZE(...); i++)" format I'm mostly used to.

Anyway, another nitpick with not functional issues, so:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.



> > I think this is clearer and less prone to mistakes:
> >=20
> > 	for (i =3D 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {...}
> >=20
> >=20
> > > +
> > > +		if (vesa_bpp_x16 <=3D max_link_bpp_x16)
> > > +			return vesa_bpp_x16;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >  static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *disp=
lay, u32 bpp, u32 pipe_bpp)
> > >  {
> > >  	u32 bits_per_pixel =3D bpp;
> > > -	int i;
> > > =20
> > >  	/* Error out if the max bpp is less than smallest allowed valid bpp=
 */
> > >  	if (bits_per_pixel < valid_dsc_bpp[0]) {
> > > @@ -899,15 +912,13 @@ static u32 intel_dp_dsc_nearest_valid_bpp(struc=
t intel_display *display, u32 bpp
> > >  		}
> > >  		bits_per_pixel =3D min_t(u32, bits_per_pixel, 27);
> > >  	} else {
> > > +		int link_bpp_x16 =3D fxp_q4_from_int(bits_per_pixel);
> > > +
> > >  		/* Find the nearest match in the array of known BPPs from VESA */
> > > -		for (i =3D 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
> > > -			if (bits_per_pixel < valid_dsc_bpp[i + 1])
> > > -				break;
> > > -		}
> > > -		drm_dbg_kms(display->drm, "Set dsc bpp from %d to VESA %d\n",
> > > -			    bits_per_pixel, valid_dsc_bpp[i]);
> > > +		link_bpp_x16 =3D align_max_vesa_compressed_bpp_x16(link_bpp_x16);
> > > =20
> > > -		bits_per_pixel =3D valid_dsc_bpp[i];
> > > +		drm_WARN_ON(display->drm, fxp_q4_to_frac(link_bpp_x16));
> > > +		bits_per_pixel =3D fxp_q4_to_int(link_bpp_x16);
> > >  	}
> > > =20
> > >  	return bits_per_pixel;
> > > @@ -2219,7 +2230,6 @@ int intel_dp_dsc_bpp_step_x16(const struct inte=
l_connector *connector)
> > >  bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, in=
t bpp_x16)
> > >  {
> > >  	struct intel_display *display =3D to_intel_display(intel_dp);
> > > -	int i;
> > > =20
> > >  	if (DISPLAY_VER(display) >=3D 13) {
> > >  		if (intel_dp->force_dsc_fractional_bpp_en && !fxp_q4_to_frac(bpp_x=
16))
> > > @@ -2231,12 +2241,7 @@ bool intel_dp_dsc_valid_compressed_bpp(struct =
intel_dp *intel_dp, int bpp_x16)
> > >  	if (fxp_q4_to_frac(bpp_x16))
> > >  		return false;
> > > =20
> > > -	for (i =3D 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
> > > -		if (fxp_q4_to_int(bpp_x16) =3D=3D valid_dsc_bpp[i])
> > > -			return true;
> > > -	}
> > > -
> > > -	return false;
> > > +	return align_max_vesa_compressed_bpp_x16(bpp_x16) =3D=3D bpp_x16;
> > >  }
> > > =20
> > >  /*
