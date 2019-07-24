Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3966C74010
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 22:37:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88EF56E656;
	Wed, 24 Jul 2019 20:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65E976E656
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 20:37:23 +0000 (UTC)
Received: from bell.riseup.net (bell-pn.riseup.net [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "COMODO RSA Domain Validation Secure Server CA" (verified OK))
 by mx1.riseup.net (Postfix) with ESMTPS id 1EF7E1A2E27;
 Wed, 24 Jul 2019 13:37:23 -0700 (PDT)
X-Riseup-User-ID: AB0D66D635975B06F4C1884CB8B8E86B8AEC8B54DDC910966D60AACECAB96AAE
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id B684E222923;
 Wed, 24 Jul 2019 13:37:22 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190718145407.21352-3-chris@chris-wilson.co.uk>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-3-chris@chris-wilson.co.uk>
Date: Wed, 24 Jul 2019 13:37:24 -0700
Message-ID: <878ssnqid7.fsf@riseup.net>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=riseup.net; s=squak; 
 t=1564000643; bh=4ZV+VzNFf14rO17YJtqjimQp2dO4QPukDFQQ+zkyuQQ=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=SHQol1tkuWHqoB6uRzJxSBhB815MVJyYD7sP6VHiKB1ZfaANt+YVfNLRTFbZ6KaQK
 YCC8vQJ/4KagaE6fOTZtUVzWDh37otVlssGEUbeoXcaba1LyKtkILXbt9iHjPb3FQ5
 Bl9dx1Kb65VisIsAIcQzVVkgL+5OlQIGWQoBHdDY=
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Flush all user surfaces prior
 to first use
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
Content-Type: multipart/mixed; boundary="===============1461869148=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1461869148==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Since userspace has the ability to bypass the CPU cache from within its
> unprivileged command stream, we have to flush the CPU cache to memory
> in order to overwrite the previous contents on creation.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: stablevger.kernel.org
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 26 ++++++-----------------
>  1 file changed, 7 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/=
i915/gem/i915_gem_shmem.c
> index d2a1158868e7..f752b326d399 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -459,7 +459,6 @@ i915_gem_object_create_shmem(struct drm_i915_private =
*i915, u64 size)
>  {
>  	struct drm_i915_gem_object *obj;
>  	struct address_space *mapping;
> -	unsigned int cache_level;
>  	gfp_t mask;
>  	int ret;
>=20=20
> @@ -498,24 +497,13 @@ i915_gem_object_create_shmem(struct drm_i915_privat=
e *i915, u64 size)
>  	obj->write_domain =3D I915_GEM_DOMAIN_CPU;
>  	obj->read_domains =3D I915_GEM_DOMAIN_CPU;
>=20=20
> -	if (HAS_LLC(i915))
> -		/* On some devices, we can have the GPU use the LLC (the CPU
> -		 * cache) for about a 10% performance improvement
> -		 * compared to uncached.  Graphics requests other than
> -		 * display scanout are coherent with the CPU in
> -		 * accessing this cache.  This means in this mode we
> -		 * don't need to clflush on the CPU side, and on the
> -		 * GPU side we only need to flush internal caches to
> -		 * get data visible to the CPU.
> -		 *
> -		 * However, we maintain the display planes as UC, and so
> -		 * need to rebind when first used as such.
> -		 */
> -		cache_level =3D I915_CACHE_LLC;
> -	else
> -		cache_level =3D I915_CACHE_NONE;
> -
> -	i915_gem_object_set_cache_coherency(obj, cache_level);
> +	/*
> +	 * Note that userspace has control over cache-bypass
> +	 * via its command stream, so even on LLC architectures
> +	 * we have to flush out the CPU cache to memory to
> +	 * clear previous contents.
> +	 */
> +	i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>=20=20

I'm not sure if you've seen my comments about this in an internal thread
you were CC'ed to: I don't think this patch will have the intended
effect.  The various clflushes this could trigger before the first use
of the buffer are conditional on "obj->cache_dirty &
~obj->cache_coherent", which will always be false on LLC platforms
AFAICT, because on those platforms i915_gem_object_set_cache_coherency()
will always set bit 0 of obj->cache_coherent.

I attached a patch with the same purpose as this to that internal thread
which doesn't suffer from this bug, but my patch was specific to Gen12+
where cache bypass is actually exposed to userspace.  Why is this patch
enabling the flushes for all platforms?  AFAICT the only currently
exposed MOCS entries that might allow userspace to bypass the LLC are 16
and 17 on Gen11, which enable the SCF MOCS table bit, which is marked
"S/W should NOT set this field in client platforms" in the Gen9 docs,
and according to the Gen10-11 docs is "Not supported".  Does LLC bypass
actually work on ICL?  I doubt it but it might have been fixed in some
other Gen11 project.  Shouldn't this change be conditional on the
platform supporting LLC bypass?  Do you want me to resend my patch here
with the Gen12+ checks changed to Gen11+?

>  	trace_i915_gem_object_create(obj);
>=20=20
> --=20
> 2.22.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXTjBhAAKCRCDmTidfVK/
W5Q8APwONKvPeZT7b6HBWD+RJTDS8nxAlBSC2n5Mb2Jrd8cuuQD/bNNLbQnX7/0F
pHreb4FryvOmp38b83xhK3enc87sFyQ=
=keAd
-----END PGP SIGNATURE-----
--==-=-=--

--===============1461869148==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1461869148==--
