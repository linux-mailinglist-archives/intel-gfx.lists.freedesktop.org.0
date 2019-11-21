Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D55105A45
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 20:18:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DDA6E1B5;
	Thu, 21 Nov 2019 19:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 549206E197
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 19:18:31 +0000 (UTC)
Received: from bell.riseup.net (bell-pn.riseup.net [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 47Jq926vlPzDrN1;
 Thu, 21 Nov 2019 11:18:30 -0800 (PST)
X-Riseup-User-ID: 7431C1FB9B43F02D496AF38F59FD11F761F1268789D6E719B0C42462A38103AC
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 47Jq925SmrzJsqj;
 Thu, 21 Nov 2019 11:18:30 -0800 (PST)
From: Francisco Jerez <currojerez@riseup.net>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191121181101.401609-1-chris@chris-wilson.co.uk>
References: <20191121181101.401609-1-chris@chris-wilson.co.uk>
Date: Thu, 21 Nov 2019 11:19:03 -0800
Message-ID: <87sgmhvxzs.fsf@riseup.net>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=riseup.net; s=squak; 
 t=1574363911; bh=AQKo3cn1sWkRKoQm/R9Y5DeJehb4hiQHYt09BIh54ZA=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=H50Gd+N20nOUnEdl3TACTA1vvfKb5JF/kJKbc0Pl5uCcVyyNL4Q0/BiqKfChVZ9Xa
 T3H/CtL81c2y9PDrfiSrKUCglLuVKxZyQVSkvz588lqJh+Cx9PXK8z5c/CxdOyHegy
 Wy1UK45idb1BuxlmD287TmCb3jMKL8sBLUabocbk=
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: disable set/get_tiling
 ioctl on gen12+"
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
Content-Type: multipart/mixed; boundary="===============0582125260=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0582125260==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Restore the DRI2/DRI3 uABI backchannel that was removed by ab016914984e
> ("drm/i915: disable set/get_tiling ioctl on gen12+") before the ABI
> change was agreed upon.
>
> Fixes: ab016914984e ("drm/i915: disable set/get_tiling ioctl on gen12+")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Thanks.  This makes things easier for userspace until the
modifiers-based alternative to this is in better shape.

Reviewed-by: Francisco Jerez <currojerez@riseup.net>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm=
/i915/gem/i915_gem_tiling.c
> index 1fa592d82af5..39f3bd5defd6 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> @@ -317,14 +317,10 @@ int
>  i915_gem_set_tiling_ioctl(struct drm_device *dev, void *data,
>  			  struct drm_file *file)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct drm_i915_gem_set_tiling *args =3D data;
>  	struct drm_i915_gem_object *obj;
>  	int err;
>=20=20
> -	if (!dev_priv->ggtt.num_fences)
> -		return -EOPNOTSUPP;
> -
>  	obj =3D i915_gem_object_lookup(file, args->handle);
>  	if (!obj)
>  		return -ENOENT;
> @@ -405,9 +401,6 @@ i915_gem_get_tiling_ioctl(struct drm_device *dev, voi=
d *data,
>  	struct drm_i915_gem_object *obj;
>  	int err =3D -ENOENT;
>=20=20
> -	if (!dev_priv->ggtt.num_fences)
> -		return -EOPNOTSUPP;
> -
>  	rcu_read_lock();
>  	obj =3D i915_gem_object_lookup_rcu(file, args->handle);
>  	if (obj) {
> --=20
> 2.24.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXdbjJwAKCRCDmTidfVK/
WynqAP9sGIQW5hcKrlctPJIUXNyrtKLESVFK/GpXlLLcHWH84QEAgZHtrLe4mCzs
PWGVtPZ69YatFx2NS20zFcLCIpugcPA=
=8wS9
-----END PGP SIGNATURE-----
--==-=-=--

--===============0582125260==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0582125260==--
