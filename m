Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BA718F80
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 19:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AE8689E38;
	Thu,  9 May 2019 17:43:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D472E89E38
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 17:43:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 10:43:26 -0700
X-ExtLoop1: 1
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga001.fm.intel.com with ESMTP; 09 May 2019 10:43:26 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.26]) by
 FMSMSX108.amr.corp.intel.com ([169.254.9.202]) with mapi id 14.03.0415.000;
 Thu, 9 May 2019 10:43:25 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH v3 08/11] drm/i915: Remove the unneeded AUX power ref
 from intel_dp_hpd_pulse()
Thread-Index: AQHVBo2U/KVdV4S0VE6xYjWhfxYMCqZjhaQA
Date: Thu, 9 May 2019 17:43:25 +0000
Message-ID: <4816bf2c86001fb640de47316f40db801d3524a0.camel@intel.com>
References: <20190509173446.31095-1-imre.deak@intel.com>
 <20190509173446.31095-9-imre.deak@intel.com>
In-Reply-To: <20190509173446.31095-9-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.228]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 08/11] drm/i915: Remove the unneeded AUX
 power ref from intel_dp_hpd_pulse()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============0245843203=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0245843203==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="=-4sTvsuL303KpKjufFays"

--=-4sTvsuL303KpKjufFays
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-05-09 at 20:34 +0300, Imre Deak wrote:
> The power get/put was added in
>=20
> commit 1c767b339b39 ("drm/i915: take display port power domain in DP
> HPD handler")
> Author: Imre Deak <imre.deak@intel.com>
> Date:   Mon Aug 18 14:42:42 2014 +0300
>=20
> to account for the HW access in ibx_digital_port_connected(). This
> latter call was in turn removed in
>=20
> commit 7d23e3c37bb3 ("drm/i915: Cleaning up intel_dp_hpd_pulse")
> Author: Shubhangi Shrivastava <shubhangi.shrivastava@intel.com>
> Date:   Wed Mar 30 18:05:23 2016 +0530
>=20
> after which we didn't actually need the power reference.
>=20
> One way we are accessing the HW during HPD pulse handling is via DP
> AUX
> transfers, but the transfer function takes its own reference, so
> doesn't
> need the reference in intel_dp_hpd_pulse().

<Did not look at the other patches />

The problem of removing that reference is that every aux transfer will
take a little bit more of time because it will need to wait the aux
power well to be enabled/disabled, taking one reference before hand
save us that.

>=20
> The other spot is in
>=20
> 	intel_psr_short_pulse()->intel_psr_disable_locked()
>=20
> but that can only happen when the panel is enabled with the
> corresponding modeset already holding the required power reference.
>=20
> v2:
> - Remove the unneeded power get/put from intel_psr_disable_locked().
>   (Ville)
> - Checkpatch commit quoting format fix in the commit log.
>=20
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_dp.c | 20 ++++----------------
>  1 file changed, 4 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_dp.c
> b/drivers/gpu/drm/i915/intel_dp.c
> index 553071812f69..8a91b453b2e9 100644
> --- a/drivers/gpu/drm/i915/intel_dp.c
> +++ b/drivers/gpu/drm/i915/intel_dp.c
> @@ -6302,9 +6302,6 @@ enum irqreturn
>  intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool
> long_hpd)
>  {
>  	struct intel_dp *intel_dp =3D &intel_dig_port->dp;
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	enum irqreturn ret =3D IRQ_NONE;
> -	intel_wakeref_t wakeref;
> =20
>  	if (long_hpd && intel_dig_port->base.type =3D=3D INTEL_OUTPUT_EDP)
> {
>  		/*
> @@ -6327,9 +6324,6 @@ intel_dp_hpd_pulse(struct intel_digital_port
> *intel_dig_port, bool long_hpd)
>  		return IRQ_NONE;
>  	}
> =20
> -	wakeref =3D intel_display_power_get(dev_priv,
> -					  intel_aux_power_domain(intel_
> dig_port));
> -
>  	if (intel_dp->is_mst) {
>  		if (intel_dp_check_mst_status(intel_dp) =3D=3D -EINVAL) {
>  			/*
> @@ -6341,7 +6335,8 @@ intel_dp_hpd_pulse(struct intel_digital_port
> *intel_dig_port, bool long_hpd)
>  			intel_dp->is_mst =3D false;
>  			drm_dp_mst_topology_mgr_set_mst(&intel_dp-
> >mst_mgr,
>  							intel_dp-
> >is_mst);
> -			goto put_power;
> +
> +			return IRQ_NONE;
>  		}
>  	}
> =20
> @@ -6351,17 +6346,10 @@ intel_dp_hpd_pulse(struct intel_digital_port
> *intel_dig_port, bool long_hpd)
>  		handled =3D intel_dp_short_pulse(intel_dp);
> =20
>  		if (!handled)
> -			goto put_power;
> +			return IRQ_NONE;
>  	}
> =20
> -	ret =3D IRQ_HANDLED;
> -
> -put_power:
> -	intel_display_power_put(dev_priv,
> -				intel_aux_power_domain(intel_dig_port),
> -				wakeref);
> -
> -	return ret;
> +	return IRQ_HANDLED;
>  }
> =20
>  /* check the VBT to see whether the eDP is on another port */

--=-4sTvsuL303KpKjufFays
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEVNG051EijGa0MiaQVenbO/mOWkkFAlzUZrwACgkQVenbO/mO
WkmHHgf/U4AJoPuuKGE28gjZH8XIHXGIOJjpk00vJgZcEzJeksDrSPcfYVQXE1oJ
lryDTlohDUr7mcz5RihM3NJBkETU7mSwEnlwssu2ooxRGkiVq2On9cEAgFxewsX7
zDhaSBpyITWCB7XgC0Tih6todpTIr6kszl9D/xXLS23A1XWZOqcWriHX9NDtpMTG
gHH5d2dd8MsSVMamQpyTI4ZIEvwOn2qUbwlKLbFnX/jK7Hk3i/l5AssR0tYtgYfn
DEwlIsVzu/zno2dOz3Bf6FpGK1VPQC5ApCIcafFenCq55kf34NTLTyEnXBisDxT8
omVS44dCr4z0SLSPMhtc1Wv5BC++Tg==
=im1+
-----END PGP SIGNATURE-----

--=-4sTvsuL303KpKjufFays--

--===============0245843203==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0245843203==--
