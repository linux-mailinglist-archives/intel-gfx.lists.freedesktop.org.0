Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E954C1A0869
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 09:35:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B0E46E546;
	Tue,  7 Apr 2020 07:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D596E546
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 07:35:37 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id h11so904458plk.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 00:35:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to;
 bh=PSib9Lo2gx22gI/jwW388sbxzksaaBYSzskHfLtGc14=;
 b=CvF4qIsIjRJiK3avxvGaKn536nPfC+YTVWyONGF6jmPsO3jmAIBBHEReWQc9zXWpMA
 7CnI9K05pLh2lZKR4+oCZ3nhx1Qhv/CX5XNgr3Kv95/nmlVkTwj8PJCUnM7WdOoEROIl
 iRW1nwQFmiQmT1CKH2nfBYq6sTYS/e/lEAepaOe9Qi6aKIbFfDM8EkTameDNPsI3UQO8
 4j6mQju8grraITbm+GZ7Fbj/sUN/CEYMwf8x97nA08ImeLi/fWeClhhu8NSOh4Xd6UlY
 qRJJcZzLdCz+nCPuhejef4Rk20cpPjJgkF+HGXkKX3ebWGMD7hjNeX3TnrBeGYWFnB2s
 Z37w==
X-Gm-Message-State: AGi0PuZ979eeXT8xWQ88oxJXWlDtXDgDdL+ZRce2HZ7vXhf5wxOkKY/H
 FIpSr7+GEpBMKfU2bP5zZ1JyYjNMfuY=
X-Google-Smtp-Source: APiQypKte4ZDMSBV97x+gEmEinqhj7HjqKcA9/Jk0hBY0I5XpL5TuOF04X1ORBMYbmN6e4Sgw8foJA==
X-Received: by 2002:a17:90a:71c5:: with SMTP id
 m5mr1175943pjs.193.1586244936394; 
 Tue, 07 Apr 2020 00:35:36 -0700 (PDT)
Received: from [10.101.46.193] (61-220-137-37.HINET-IP.hinet.net.
 [61.220.137.37])
 by smtp.gmail.com with ESMTPSA id x4sm13123808pfi.202.2020.04.07.00.35.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 00:35:34 -0700 (PDT)
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200407011157.362092-1-jose.souza@intel.com>
From: You-Sheng Yang <vicamo.yang@canonical.com>
Autocrypt: addr=vicamo.yang@canonical.com; keydata=
 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
 suzL+d2CSm1cCUYQeOxX/7MpmAIm
Message-ID: <10a53f85-8751-a3b4-ef6f-fabff93e69de@canonical.com>
Date: Tue, 7 Apr 2020 15:35:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200407011157.362092-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [v2,
 1/8] drm/i915/display: Move out code to return the digital_port of
 the aux ch
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
Content-Type: multipart/mixed; boundary="===============0027471203=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0027471203==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="kTXgOIy5RnRugH4GDmiEysTELsu33nf48"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--kTXgOIy5RnRugH4GDmiEysTELsu33nf48
Content-Type: multipart/mixed; boundary="aFjoXmx0sQ6SuBFxqKX0colnvV7rNh64y"

--aFjoXmx0sQ6SuBFxqKX0colnvV7rNh64y
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

This series works for me. Thank you.

Tested-by: You-Sheng Yang <vicamo.yang@canonical.com>

On 2020-04-07 09:11, Jos=C3=A9 Roberto de Souza wrote:
> Moving the code to return the digital port of the aux channel also
> removing the intel_phy_is_tc() to make it generic.
> digital_port will be needed in icl_tc_phy_aux_power_well_enable()
> so adding it as a parameter to icl_tc_port_assert_ref_held().
>=20
> While at at removing the duplicated call to icl_tc_phy_aux_ch() in
> icl_tc_port_assert_ref_held().
>=20
> v2:
> - fixed build when DRM_I915_DEBUG_RUNTIME_PM is not set
> - moved to before hsw_wait_for_power_well_enable() as it will be
> needed by hsw_wait_for_power_well_enable() in a future patch
>=20
> Cc: You-Sheng Yang <vicamo@gmail.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 69 ++++++++++---------=

>  1 file changed, 37 insertions(+), 32 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drive=
rs/gpu/drm/i915/display/intel_display_power.c
> index 433e5a81dd4d..f2f42b5960df 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -282,6 +282,33 @@ static void hsw_power_well_pre_disable(struct drm_=
i915_private *dev_priv,
>  		gen8_irq_power_well_pre_disable(dev_priv, irq_pipe_mask);
>  }
> =20
> +static struct intel_digital_port *
> +aux_ch_to_digital_port(struct drm_i915_private *dev_priv,
> +		       enum aux_ch aux_ch)
> +{
> +	struct intel_digital_port *dig_port =3D NULL;
> +	struct intel_encoder *encoder;
> +
> +	for_each_intel_encoder(&dev_priv->drm, encoder) {
> +		/* We'll check the MST primary port */
> +		if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +			continue;
> +
> +		dig_port =3D enc_to_dig_port(encoder);
> +		if (drm_WARN_ON(&dev_priv->drm, !dig_port))
> +			continue;
> +
> +		if (dig_port->aux_ch !=3D aux_ch) {
> +			dig_port =3D NULL;
> +			continue;
> +		}
> +
> +		break;
> +	}
> +
> +	return dig_port;
> +}
> +
>  static void hsw_wait_for_power_well_enable(struct drm_i915_private *de=
v_priv,
>  					   struct i915_power_well *power_well)
>  {
> @@ -501,41 +528,14 @@ static int power_well_async_ref_count(struct drm_=
i915_private *dev_priv,
>  }
> =20
>  static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_p=
riv,
> -					struct i915_power_well *power_well)
> +					struct i915_power_well *power_well,
> +					struct intel_digital_port *dig_port)
>  {
> -	enum aux_ch aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
> -	struct intel_digital_port *dig_port =3D NULL;
> -	struct intel_encoder *encoder;
> -
>  	/* Bypass the check if all references are released asynchronously */
>  	if (power_well_async_ref_count(dev_priv, power_well) =3D=3D
>  	    power_well->count)
>  		return;
> =20
> -	aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
> -
> -	for_each_intel_encoder(&dev_priv->drm, encoder) {
> -		enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> -
> -		if (!intel_phy_is_tc(dev_priv, phy))
> -			continue;
> -
> -		/* We'll check the MST primary port */
> -		if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> -			continue;
> -
> -		dig_port =3D enc_to_dig_port(encoder);
> -		if (drm_WARN_ON(&dev_priv->drm, !dig_port))
> -			continue;
> -
> -		if (dig_port->aux_ch !=3D aux_ch) {
> -			dig_port =3D NULL;
> -			continue;
> -		}
> -
> -		break;
> -	}
> -
>  	if (drm_WARN_ON(&dev_priv->drm, !dig_port))
>  		return;
> =20
> @@ -545,7 +545,8 @@ static void icl_tc_port_assert_ref_held(struct drm_=
i915_private *dev_priv,
>  #else
> =20
>  static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_p=
riv,
> -					struct i915_power_well *power_well)
> +					struct i915_power_well *power_well,
> +					struct intel_digital_port *dig_port)
>  {
>  }
> =20
> @@ -558,9 +559,10 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_p=
rivate *dev_priv,
>  				 struct i915_power_well *power_well)
>  {
>  	enum aux_ch aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
> +	struct intel_digital_port *dig_port =3D aux_ch_to_digital_port(dev_pr=
iv, aux_ch);
>  	u32 val;
> =20
> -	icl_tc_port_assert_ref_held(dev_priv, power_well);
> +	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
> =20
>  	val =3D intel_de_read(dev_priv, DP_AUX_CH_CTL(aux_ch));
>  	val &=3D ~DP_AUX_CH_CTL_TBT_IO;
> @@ -588,7 +590,10 @@ static void
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


--aFjoXmx0sQ6SuBFxqKX0colnvV7rNh64y--

--kTXgOIy5RnRugH4GDmiEysTELsu33nf48
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEVhtdp+wXuXuqVL95S6BJ+2O0nE8FAl6MLUQACgkQS6BJ+2O0
nE8fGAf/W0hYzernMuSWREylcJKTCc8Z+TaQnkoYw0lfK1nHIWRfEx2fIij12JGj
8L7Dr97oy7H84+LO5p0hvPT+XffwwHgIC1C6Trsn5LTb3IbEtkAX7r+rNUdZ5i9C
FVZxO/asn/Q5KU/rnqNkJeHg31OrRRzW6TKF9KZooPaqdY08H+CvmqVu9tzLIm8+
RGq0U1wmOByZ3Pk2Eg8XHMag9LSo8rdlut/AA3ZJN4T+tM7+sYsWjx/PJzQxOodN
hYS7cNeVp+Q9f3Vi/v+8TuYbu/z0zEYgAuiepaVxyK4ePVXH7dQViiURGvS4X4JN
qXHNGBxRdhvp4PQLXAlBFsguleWVYQ==
=Woni
-----END PGP SIGNATURE-----

--kTXgOIy5RnRugH4GDmiEysTELsu33nf48--

--===============0027471203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0027471203==--
