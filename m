Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF6536902
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 03:05:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58971894DD;
	Thu,  6 Jun 2019 01:05:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C08894DD
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 01:05:26 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 18:05:25 -0700
X-ExtLoop1: 1
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga001.jf.intel.com with ESMTP; 05 Jun 2019 18:05:25 -0700
Received: from fmsmsx163.amr.corp.intel.com (10.18.125.72) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 5 Jun 2019 18:05:25 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.77]) by
 fmsmsx163.amr.corp.intel.com ([169.254.6.185]) with mapi id 14.03.0415.000;
 Wed, 5 Jun 2019 18:05:24 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915: Kill INTEL_SUBPLATFORM_AML
Thread-Index: AQHVG7vn/494Q55fc0eYIc35CAegQaaORbaA
Date: Thu, 6 Jun 2019 01:05:23 +0000
Message-ID: <ef733ef6192bbd6a7d024e4b0daca747fb292974.camel@intel.com>
References: <20190605162946.19223-1-ville.syrjala@linux.intel.com>
 <20190605162946.19223-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20190605162946.19223-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.50]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Kill INTEL_SUBPLATFORM_AML
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
Content-Type: multipart/mixed; boundary="===============1076811267=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1076811267==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="=-7uSDCfELmcfxLyQb3G/q"

--=-7uSDCfELmcfxLyQb3G/q
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is the same as WHL, we added the AML separated just in case it
needed some different workaround or code path but looks like it don't
need at all.

Any objection with this change Rodrigo?

On Wed, 2019-06-05 at 19:29 +0300, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> All AML parts are either KBL ULX or CFL ULX so there is no point
> in keeping INTEL_SUBPLATFORM_AML around. As these are the only
> CFL ULX parts (normal CFL didn't have Y SKUs) so we'll just
> replace IS_AML_ULX with IS_CFL_ULX (it was already paired with
> IS_KBL_ULX which accounts for the other half of the AML parts).
>=20
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 5 ++---
>  drivers/gpu/drm/i915/intel_ddi.c         | 8 +++++---
>  drivers/gpu/drm/i915/intel_device_info.c | 6 ------
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  4 files changed, 7 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h
> index 89bf1e34feaa..16ea0e6077cf 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -2213,9 +2213,6 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  	IS_SUBPLATFORM(dev_priv, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
>  #define IS_KBL_ULX(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX)
> -#define IS_AML_ULX(dev_priv) \
> -	(IS_SUBPLATFORM(dev_priv, INTEL_KABYLAKE,
> INTEL_SUBPLATFORM_AML) || \
> -	 IS_SUBPLATFORM(dev_priv, INTEL_COFFEELAKE,
> INTEL_SUBPLATFORM_AML))
>  #define IS_SKL_GT2(dev_priv)	(IS_SKYLAKE(dev_priv) && \
>  				 INTEL_INFO(dev_priv)->gt =3D=3D 2)
>  #define IS_SKL_GT3(dev_priv)	(IS_SKYLAKE(dev_priv) && \
> @@ -2228,6 +2225,8 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  				 INTEL_INFO(dev_priv)->gt =3D=3D 3)
>  #define IS_CFL_ULT(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_COFFEELAKE,
> INTEL_SUBPLATFORM_ULT)
> +#define IS_CFL_ULX(dev_priv) \
> +	IS_SUBPLATFORM(dev_priv, INTEL_COFFEELAKE,
> INTEL_SUBPLATFORM_ULX)
>  #define IS_CFL_GT2(dev_priv)	(IS_COFFEELAKE(dev_priv) && \
>  				 INTEL_INFO(dev_priv)->gt =3D=3D 2)
>  #define IS_CFL_GT3(dev_priv)	(IS_COFFEELAKE(dev_priv) && \
> diff --git a/drivers/gpu/drm/i915/intel_ddi.c
> b/drivers/gpu/drm/i915/intel_ddi.c
> index 350eaf54f01f..65c02b260c98 100644
> --- a/drivers/gpu/drm/i915/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/intel_ddi.c
> @@ -615,7 +615,7 @@ skl_get_buf_trans_dp(struct drm_i915_private
> *dev_priv, int *n_entries)
>  static const struct ddi_buf_trans *
>  kbl_get_buf_trans_dp(struct drm_i915_private *dev_priv, int
> *n_entries)
>  {
> -	if (IS_KBL_ULX(dev_priv) || IS_AML_ULX(dev_priv)) {
> +	if (IS_KBL_ULX(dev_priv) || IS_CFL_ULX(dev_priv)) {
>  		*n_entries =3D ARRAY_SIZE(kbl_y_ddi_translations_dp);
>  		return kbl_y_ddi_translations_dp;
>  	} else if (IS_KBL_ULT(dev_priv) || IS_CFL_ULT(dev_priv)) {
> @@ -631,7 +631,8 @@ static const struct ddi_buf_trans *
>  skl_get_buf_trans_edp(struct drm_i915_private *dev_priv, int
> *n_entries)
>  {
>  	if (dev_priv->vbt.edp.low_vswing) {
> -		if (IS_SKL_ULX(dev_priv) || IS_KBL_ULX(dev_priv) ||
> IS_AML_ULX(dev_priv)) {
> +		if (IS_SKL_ULX(dev_priv) || IS_KBL_ULX(dev_priv) ||
> +		    IS_CFL_ULX(dev_priv)) {
>  			*n_entries =3D
> ARRAY_SIZE(skl_y_ddi_translations_edp);
>  			return skl_y_ddi_translations_edp;
>  		} else if (IS_SKL_ULT(dev_priv) || IS_KBL_ULT(dev_priv)
> ||
> @@ -653,7 +654,8 @@ skl_get_buf_trans_edp(struct drm_i915_private
> *dev_priv, int *n_entries)
>  static const struct ddi_buf_trans *
>  skl_get_buf_trans_hdmi(struct drm_i915_private *dev_priv, int
> *n_entries)
>  {
> -	if (IS_SKL_ULX(dev_priv) || IS_KBL_ULX(dev_priv) ||
> IS_AML_ULX(dev_priv)) {
> +	if (IS_SKL_ULX(dev_priv) || IS_KBL_ULX(dev_priv) ||
> +	    IS_CFL_ULX(dev_priv)) {
>  		*n_entries =3D ARRAY_SIZE(skl_y_ddi_translations_hdmi);
>  		return skl_y_ddi_translations_hdmi;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> b/drivers/gpu/drm/i915/intel_device_info.c
> index 19437e8ec6fa..7135d8dc32a7 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -787,9 +787,6 @@ static const u16 subplatform_ulx_ids[] =3D {
>  	INTEL_SKL_ULX_GT2_IDS(0),
>  	INTEL_KBL_ULX_GT1_IDS(0),
>  	INTEL_KBL_ULX_GT2_IDS(0),
> -};
> -
> -static const u16 subplatform_aml_ids[] =3D {
>  	INTEL_AML_KBL_GT2_IDS(0),
>  	INTEL_AML_CFL_GT2_IDS(0),
>  };
> @@ -832,9 +829,6 @@ void intel_device_info_subplatform_init(struct
> drm_i915_private *i915)
>  			/* ULX machines are also considered ULT. */
>  			mask |=3D BIT(INTEL_SUBPLATFORM_ULT);
>  		}
> -	} else if (find_devid(devid, subplatform_aml_ids,
> -			      ARRAY_SIZE(subplatform_aml_ids))) {
> -		mask =3D BIT(INTEL_SUBPLATFORM_AML);
>  	} else if (find_devid(devid, subplatform_portf_ids,
>  			      ARRAY_SIZE(subplatform_portf_ids))) {
>  		mask =3D BIT(INTEL_SUBPLATFORM_PORTF);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> b/drivers/gpu/drm/i915/intel_device_info.h
> index d67dedf0cbd8..ee4776dc59bd 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -91,7 +91,6 @@ enum intel_platform {
>  /* HSW/BDW/SKL/KBL/CFL */
>  #define INTEL_SUBPLATFORM_ULT	(0)
>  #define INTEL_SUBPLATFORM_ULX	(1)
> -#define INTEL_SUBPLATFORM_AML	(2)
> =20
>  /* CNL/ICL */
>  #define INTEL_SUBPLATFORM_PORTF	(0)

--=-7uSDCfELmcfxLyQb3G/q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEVNG051EijGa0MiaQVenbO/mOWkkFAlz4ZtMACgkQVenbO/mO
WklilAf/VKtiC7QDO6EN5UxBHosMTnf66z5UUVqVJqxYuIgE81AtVOpMx5+HLmrA
Wu04ZzH7Erh6Jw26iSqzq3tIliRHdscPxw0sz2buAvwHw0cWquLkJ7+IZ7EYi0Tp
m1U1F2JAo7zLv4Atto32Ca091ob27VrEtqhj+3ZPx21shMpbWsW094tHhmfgVM0y
v8HxTCSWRc6kzd5YIkS1k+gLXPCIIXMtdRXzh0LD9xWyW00UB3WjcHzJzzQszCNS
sJHG/VHzxNM5b1UY9uoJz7DZt/9Fb3hOV8bWw+LQIju0J0ciV9XAb8KhtvLI9dmp
4dPZdudMNMKdH9KmfFw+cQ2kwY/F8w==
=LOtv
-----END PGP SIGNATURE-----

--=-7uSDCfELmcfxLyQb3G/q--

--===============1076811267==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1076811267==--
