Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0037C19AB32
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 14:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F66F6E049;
	Wed,  1 Apr 2020 12:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com
 [IPv6:2607:f8b0:4864:20::1044])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4178D6E8F4
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 07:19:03 +0000 (UTC)
Received: by mail-pj1-x1044.google.com with SMTP id fh8so2312389pjb.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Apr 2020 00:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to;
 bh=DRQQGJANckyJxS0PQ8IykO3Xq9l0bRFVekoUN0IkLPQ=;
 b=nWK0rjmo56aJPjp2xHY57uRCvEzatVjKcXrjOkYRJScA5F5jIrm2gWk+UWf3FVnU4e
 Dua+DTarxdOPyOK/mN5Tr1+wt4Wm0Kgjbg1IhFXoGWnyQt8a3djzJIduxF/q1CXO83jA
 1jllzezwkY0fLcyBWZv38pspTTRErftc6pARQ6lwwG10Uluqdix6IhNYXGlrgpMiJ9zH
 GtvcprRQj1zisqFbqxamH5I4UshjOTuKvD8of2VwVLjttqSW1zNDYWn38aSdzXGqKWdO
 0IWmWiFHGZRlCkB2/obzA66urFDjyXaXYpbhSeUByBp41xwkrzt8vJZ28zfNDKrerdLR
 B7hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=DRQQGJANckyJxS0PQ8IykO3Xq9l0bRFVekoUN0IkLPQ=;
 b=hAj6uv75t2bohmPKT0EubTADFEQKvmG2GTG/FoLlu0+qDnV8o4YXhNowsKrJxJ2lk4
 pmGQN3PqzMaw8nMqK1+/ELH0eTFOiPZ9c3sKywERCy68DZOYM7qaJjpfy8NYYxwSB+4o
 /S2o/7S9H93BemGO28qmjy+W5qfwQm7tsHAo2KbA6vfrYpVJ+ejWBqEcfmuaZKty18gf
 CjAr2lj9a3pTDGcNknsMLVTDmBWrft5T5SnoI8vory2Nf6r5tUhdA4+dLBqZxecRKupR
 Ikkp5Xj5CLMa2+KevHMgOKrQtfehdx1G/ZiqSUvPV6KqmvcfbHwVM9yS2ddJx4WVfG8k
 mjFA==
X-Gm-Message-State: AGi0Puac46bGtxROY9Mt8JBkGZ5EMPra9XgkBdzt2IncERSXfrhjGWvF
 M31i3FAZkytfUgUXUHJMW1SW90oPT5c=
X-Google-Smtp-Source: APiQypLbciw/STi+s3QOHkRuHDPQLUX4eH3WErIYhuBJmM8d9LpxR9YXg4sUIY90xc+sbhZmtrZ6hQ==
X-Received: by 2002:a17:90a:5d87:: with SMTP id
 t7mr3271770pji.61.1585725542056; 
 Wed, 01 Apr 2020 00:19:02 -0700 (PDT)
Received: from [10.101.46.193] (61-220-137-37.HINET-IP.hinet.net.
 [61.220.137.37])
 by smtp.gmail.com with ESMTPSA id w16sm920128pfj.79.2020.04.01.00.18.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Apr 2020 00:19:00 -0700 (PDT)
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>
References: <20200401004120.408586-1-jose.souza@intel.com>
From: You-Sheng Yang <vicamo@gmail.com>
Autocrypt: addr=vicamo@gmail.com; keydata=
 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
 /7MpmAIm
Message-ID: <e77622b4-b1b7-b002-5f87-5361c0e29886@gmail.com>
Date: Wed, 1 Apr 2020 15:18:52 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200401004120.408586-1-jose.souza@intel.com>
X-Mailman-Approved-At: Wed, 01 Apr 2020 12:02:45 +0000
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/display: Move out code to
 return the digital_port of the aux ch
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
Content-Type: multipart/mixed; boundary="===============1501188444=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1501188444==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="5IWIfVJwChA2aWdgPV3d2cBjUCuy13Mdj"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--5IWIfVJwChA2aWdgPV3d2cBjUCuy13Mdj
Content-Type: multipart/mixed; boundary="fSsQ0d4qL4uiQFbqGkWuTXNtKxHPYD7HF"

--fSsQ0d4qL4uiQFbqGkWuTXNtKxHPYD7HF
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 2020-04-01 08:41, Jos=C3=A9 Roberto de Souza wrote:
> Moving the code to return the digital port of the aux channel also
> removing the intel_phy_is_tc() to make it generic.
> digital_port will be needed in icl_tc_phy_aux_power_well_enable()
> so adding it as a parameter to icl_tc_port_assert_ref_held().
>=20
> While at at removing the duplicated call to icl_tc_phy_aux_ch() in
> icl_tc_port_assert_ref_held().
>=20
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 38 ++++++++++---------=

>  1 file changed, 21 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drive=
rs/gpu/drm/i915/display/intel_display_power.c
> index 433e5a81dd4d..02a07aa710e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -500,26 +500,14 @@ static int power_well_async_ref_count(struct drm_=
i915_private *dev_priv,
>  	return refs;
>  }
> =20
> -static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_p=
riv,
> -					struct i915_power_well *power_well)
> +static struct intel_digital_port *
> +aux_ch_to_digital_port(struct drm_i915_private *dev_priv,
> +		       enum aux_ch aux_ch)

This fails the build because icl_tc_port_assert_ref_held was originally
guarded by CONFIG_DRM_I915_DEBUG_RUNTIME_PM, but now
aux_ch_to_digital_port maybe used outside the scope.

>  {
> -	enum aux_ch aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
>  	struct intel_digital_port *dig_port =3D NULL;
>  	struct intel_encoder *encoder;
> =20
> -	/* Bypass the check if all references are released asynchronously */
> -	if (power_well_async_ref_count(dev_priv, power_well) =3D=3D
> -	    power_well->count)
> -		return;
> -
> -	aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
> -
>  	for_each_intel_encoder(&dev_priv->drm, encoder) {
> -		enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> -
> -		if (!intel_phy_is_tc(dev_priv, phy))
> -			continue;
> -
>  		/* We'll check the MST primary port */
>  		if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
>  			continue;
> @@ -536,6 +524,18 @@ static void icl_tc_port_assert_ref_held(struct drm=
_i915_private *dev_priv,
>  		break;
>  	}
> =20
> +	return dig_port;
> +}
> +
> +static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_p=
riv,
> +					struct i915_power_well *power_well,
> +					struct intel_digital_port *dig_port)
> +{
> +	/* Bypass the check if all references are released asynchronously */
> +	if (power_well_async_ref_count(dev_priv, power_well) =3D=3D
> +	    power_well->count)
> +		return;
> +
>  	if (drm_WARN_ON(&dev_priv->drm, !dig_port))
>  		return;
> =20
> @@ -558,9 +558,10 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_p=
rivate *dev_priv,
>  				 struct i915_power_well *power_well)
>  {
>  	enum aux_ch aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
> +	struct intel_digital_port *dig_port =3D aux_ch_to_digital_port(dev_pr=
iv, aux_ch);

E.g. here.

>  	u32 val;
> =20
> -	icl_tc_port_assert_ref_held(dev_priv, power_well);
> +	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
> =20
>  	val =3D intel_de_read(dev_priv, DP_AUX_CH_CTL(aux_ch));
>  	val &=3D ~DP_AUX_CH_CTL_TBT_IO;
> @@ -588,7 +589,10 @@ static void
>  icl_tc_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
>  				  struct i915_power_well *power_well)
>  {
> -	icl_tc_port_assert_ref_held(dev_priv, power_well);
> +	enum aux_ch aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
> +	struct intel_digital_port *dig_port =3D aux_ch_to_digital_port(dev_pr=
iv, aux_ch);
> +
> +	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
> =20
>  	hsw_power_well_disable(dev_priv, power_well);
>  }
>=20

You-Sheng Yang


--fSsQ0d4qL4uiQFbqGkWuTXNtKxHPYD7HF--

--5IWIfVJwChA2aWdgPV3d2cBjUCuy13Mdj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEVhtdp+wXuXuqVL95S6BJ+2O0nE8FAl6EQFwACgkQS6BJ+2O0
nE8T2AgAzyTPth7tTbdvc87j8PKemJMS6xiC32vOk9vgQot/mDlzD09ogOb3FXPB
rz/NRMEUVBdNwu6tuws8brRib3QfGhz6FGT8YXaFmJIFjiCdqUASjeLG76btBgK/
qCX16g4zHGWHEFPzBnJ/7ayF6+KxBWx3Y5oa7iXh0S26hGkqSK9GpL6emMOxubkm
jSttkaWi4S1yhNpYytcNl2iysqcaVj344zzaAHuMhmFbHpFdzR/F5ndnCBiPoEyu
SYjdfHPtCitAreJdOeIrXv5lmiucqOrHbrpqpNJpqcTzNCkdQVX6+XvyfTRONkJr
T7icoWlPJArG51ILd6OBKs3mnQ2MaQ==
=aWPL
-----END PGP SIGNATURE-----

--5IWIfVJwChA2aWdgPV3d2cBjUCuy13Mdj--

--===============1501188444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1501188444==--
