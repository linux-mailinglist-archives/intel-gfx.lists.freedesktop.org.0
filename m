Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7268242E5
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 23:35:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C634988FA1;
	Mon, 20 May 2019 21:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EF1188FA1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 21:35:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 14:35:17 -0700
X-ExtLoop1: 1
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by FMSMGA003.fm.intel.com with ESMTP; 20 May 2019 14:35:17 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Mon, 20 May 2019 14:35:17 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.77]) by
 fmsmsx124.amr.corp.intel.com ([169.254.8.29]) with mapi id 14.03.0415.000;
 Mon, 20 May 2019 14:35:16 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: We don't need display's suspend/resume
 operations when !HAS_DISPLAY
Thread-Index: AQHVDshh7ZBWjnCyUU2d9V9gDJLC/KZ0/5sA
Date: Mon, 20 May 2019 21:35:16 +0000
Message-ID: <89db60dcd125b9ac02fd1a79550715ae907418ab.camel@intel.com>
References: <20190520045646.27055-1-rodrigo.vivi@intel.com>
In-Reply-To: <20190520045646.27055-1-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.19]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: We don't need display's
 suspend/resume operations when !HAS_DISPLAY
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
Content-Type: multipart/mixed; boundary="===============0616656277=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0616656277==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="=-shUslvaN+WZb922gmiRW"

--=-shUslvaN+WZb922gmiRW
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2019-05-19 at 21:56 -0700, Rodrigo Vivi wrote:
> Suspend resume is broken if we try to enable/disable dc9 on
> cases with disabled displays.
>=20

Reviewed-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>

> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 103 ++++++++++++++++++++++------
> ----
>  1 file changed, 71 insertions(+), 32 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.c
> b/drivers/gpu/drm/i915/i915_drv.c
> index 2c7a4318d13c..90693327065a 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -2117,6 +2117,15 @@ get_suspend_mode(struct drm_i915_private
> *dev_priv, bool hibernate)
>  	return I915_DRM_SUSPEND_MEM;
>  }
> =20
> +static void intel_display_suspend_late(struct drm_i915_private
> *dev_priv)
> +{
> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 11 || IS_GEN9_LP(dev_priv))
> +		bxt_enable_dc9(dev_priv);
> +}
> +
>  static int i915_drm_suspend_late(struct drm_device *dev, bool
> hibernation)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -2132,10 +2141,10 @@ static int i915_drm_suspend_late(struct
> drm_device *dev, bool hibernation)
>  	intel_power_domains_suspend(dev_priv,
>  				    get_suspend_mode(dev_priv,
> hibernation));
> =20
> +	intel_display_suspend_late(dev_priv);
> +
>  	ret =3D 0;
> -	if (INTEL_GEN(dev_priv) >=3D 11 || IS_GEN9_LP(dev_priv))
> -		bxt_enable_dc9(dev_priv);
> -	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
> +	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
>  		hsw_enable_pc8(dev_priv);
>  	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		ret =3D vlv_suspend_complete(dev_priv);
> @@ -2265,6 +2274,17 @@ static int i915_drm_resume(struct drm_device
> *dev)
>  	return 0;
>  }
> =20
> +static void intel_display_resume_early(struct drm_i915_private
> *dev_priv)
> +{
> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 11 || IS_GEN9_LP(dev_priv)) {
> +		gen9_sanitize_dc_state(dev_priv);
> +		bxt_disable_dc9(dev_priv);
> +	}
> +}
> +
>  static int i915_drm_resume_early(struct drm_device *dev)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -2327,10 +2347,9 @@ static int i915_drm_resume_early(struct
> drm_device *dev)
> =20
>  	i915_check_and_clear_faults(dev_priv);
> =20
> -	if (INTEL_GEN(dev_priv) >=3D 11 || IS_GEN9_LP(dev_priv)) {
> -		gen9_sanitize_dc_state(dev_priv);
> -		bxt_disable_dc9(dev_priv);
> -	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> +	intel_display_resume_early(dev_priv);
> +
> +	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
>  		hsw_disable_pc8(dev_priv);
>  	}
> =20
> @@ -2868,6 +2887,20 @@ static int vlv_resume_prepare(struct
> drm_i915_private *dev_priv,
>  	return ret;
>  }
> =20
> +static void intel_runtime_display_suspend(struct drm_i915_private
> *dev_priv)
> +{
> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 11) {
> +		icl_display_core_uninit(dev_priv);
> +		bxt_enable_dc9(dev_priv);
> +	} else if (IS_GEN9_LP(dev_priv)) {
> +		bxt_display_core_uninit(dev_priv);
> +		bxt_enable_dc9(dev_priv);
> +	}
> +}
> +
>  static int intel_runtime_suspend(struct device *kdev)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(kdev);
> @@ -2897,14 +2930,10 @@ static int intel_runtime_suspend(struct
> device *kdev)
> =20
>  	intel_uncore_suspend(&dev_priv->uncore);
> =20
> +	intel_runtime_display_suspend(dev_priv);
> +
>  	ret =3D 0;
> -	if (INTEL_GEN(dev_priv) >=3D 11) {
> -		icl_display_core_uninit(dev_priv);
> -		bxt_enable_dc9(dev_priv);
> -	} else if (IS_GEN9_LP(dev_priv)) {
> -		bxt_display_core_uninit(dev_priv);
> -		bxt_enable_dc9(dev_priv);
> -	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> +	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
>  		hsw_enable_pc8(dev_priv);
>  	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> {
>  		ret =3D vlv_suspend_complete(dev_priv);
> @@ -2966,6 +2995,31 @@ static int intel_runtime_suspend(struct device
> *kdev)
>  	return 0;
>  }
> =20
> +static void intel_runtime_display_resume(struct drm_i915_private
> *dev_priv)
> +{
> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 11) {
> +		bxt_disable_dc9(dev_priv);
> +		icl_display_core_init(dev_priv, true);
> +		if (dev_priv->csr.dmc_payload) {
> +			if (dev_priv->csr.allowed_dc_mask &
> +			    DC_STATE_EN_UPTO_DC6)
> +				skl_enable_dc6(dev_priv);
> +			else if (dev_priv->csr.allowed_dc_mask &
> +				 DC_STATE_EN_UPTO_DC5)
> +				gen9_enable_dc5(dev_priv);
> +		}
> +	} else if (IS_GEN9_LP(dev_priv)) {
> +		bxt_disable_dc9(dev_priv);
> +		bxt_display_core_init(dev_priv, true);
> +		if (dev_priv->csr.dmc_payload &&
> +		    (dev_priv->csr.allowed_dc_mask &
> DC_STATE_EN_UPTO_DC5))
> +			gen9_enable_dc5(dev_priv);
> +	}
> +}
> +
>  static int intel_runtime_resume(struct device *kdev)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(kdev);
> @@ -2986,24 +3040,9 @@ static int intel_runtime_resume(struct device
> *kdev)
>  	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
>  		DRM_DEBUG_DRIVER("Unclaimed access during suspend,
> bios?\n");
> =20
> -	if (INTEL_GEN(dev_priv) >=3D 11) {
> -		bxt_disable_dc9(dev_priv);
> -		icl_display_core_init(dev_priv, true);
> -		if (dev_priv->csr.dmc_payload) {
> -			if (dev_priv->csr.allowed_dc_mask &
> -			    DC_STATE_EN_UPTO_DC6)
> -				skl_enable_dc6(dev_priv);
> -			else if (dev_priv->csr.allowed_dc_mask &
> -				 DC_STATE_EN_UPTO_DC5)
> -				gen9_enable_dc5(dev_priv);
> -		}
> -	} else if (IS_GEN9_LP(dev_priv)) {
> -		bxt_disable_dc9(dev_priv);
> -		bxt_display_core_init(dev_priv, true);
> -		if (dev_priv->csr.dmc_payload &&
> -		    (dev_priv->csr.allowed_dc_mask &
> DC_STATE_EN_UPTO_DC5))
> -			gen9_enable_dc5(dev_priv);
> -	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> +	intel_runtime_display_resume(dev_priv);
> +
> +	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
>  		hsw_disable_pc8(dev_priv);
>  	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> {
>  		ret =3D vlv_resume_prepare(dev_priv, true);

--=-shUslvaN+WZb922gmiRW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEVNG051EijGa0MiaQVenbO/mOWkkFAlzjHZQACgkQVenbO/mO
WkldjwgAhTO1BUy1S2hScsBlG0fchi9gYk/qDZC2IAc/Ilcv0wRbAukuxYe6ZY21
ITDcU/xDheqSOVH/gEn7HCel2+OfTn39z9wsF1ifAlwGoup+53xnSDz+f5m4fXOX
TrvqG4yyFFSsipE5o4yNz3Im1fsWl5dKLXuoHASZCosaWcsbFrey02MqH6OYnLUG
gb3svTl5Qa4d3H9YwK9KLxvh9d6FOsCTv/viRblE52oZnIbwcXQy0eUpliGsKF9o
QJzFcyv9x+FT0forbJFMuDG3+OzKDGJ9kLoth3tCDFWQ/6fECopxV7wZefQz6hQS
1cpLxFFfJeFdi+GbLsp3O0sx1eywUg==
=+iJA
-----END PGP SIGNATURE-----

--=-shUslvaN+WZb922gmiRW--

--===============0616656277==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0616656277==--
