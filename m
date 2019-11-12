Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DDDF9A14
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 20:58:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FDC16E4CD;
	Tue, 12 Nov 2019 19:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 548A36E379
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 19:58:25 +0000 (UTC)
Received: from bell.riseup.net (bell-pn.riseup.net [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 47CJTF0T14zDqr9;
 Tue, 12 Nov 2019 11:58:25 -0800 (PST)
X-Riseup-User-ID: 9757B2BB6E8B2A7DBD6C91143FED9670E941F059B063345DD1220C5BE13FE7DD
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 47CJTD5PxFzJsMg;
 Tue, 12 Nov 2019 11:58:24 -0800 (PST)
From: Francisco Jerez <currojerez@riseup.net>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157355153362.9322.13504100342675878774@skylake-alporthouse-com>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-3-chris@chris-wilson.co.uk> <878ssnqid7.fsf@riseup.net>
 <157355153362.9322.13504100342675878774@skylake-alporthouse-com>
Date: Tue, 12 Nov 2019 11:58:54 -0800
Message-ID: <87o8xgzx1d.fsf@riseup.net>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=riseup.net; s=squak; 
 t=1573588705; bh=Z3TQWSkemLDL/oVodrZ83VHVZtmqOjmR29M3Yx7aom4=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=YuMbVoCRdtpxh+Ok0Zo3Wpu7S4Ff6ZN/+HAk2o0IqoqBYJ2CeuBf8sYdYg2EhavNo
 v3Z/Y15ZsbJEQCfmInQUNf23tkinux9OxOlN3jh09hVHcCPtm0kuIA4DuoIirZUmes
 Ie6bcaoLG6Kidx1irOp1AwTRCY54LP1BWU3o5QTA=
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
Content-Type: multipart/mixed; boundary="===============1830749605=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1830749605==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Francisco Jerez (2019-07-24 21:37:24)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>>=20
>> > Since userspace has the ability to bypass the CPU cache from within its
>> > unprivileged command stream, we have to flush the CPU cache to memory
>> > in order to overwrite the previous contents on creation.
>> >
>> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> > Cc: stablevger.kernel.org
>> > ---
>> >  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 26 ++++++-----------------
>> >  1 file changed, 7 insertions(+), 19 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/d=
rm/i915/gem/i915_gem_shmem.c
>> > index d2a1158868e7..f752b326d399 100644
>> > --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>> > @@ -459,7 +459,6 @@ i915_gem_object_create_shmem(struct drm_i915_priva=
te *i915, u64 size)
>> >  {
>> >       struct drm_i915_gem_object *obj;
>> >       struct address_space *mapping;
>> > -     unsigned int cache_level;
>> >       gfp_t mask;
>> >       int ret;
>> >=20=20
>> > @@ -498,24 +497,13 @@ i915_gem_object_create_shmem(struct drm_i915_pri=
vate *i915, u64 size)
>> >       obj->write_domain =3D I915_GEM_DOMAIN_CPU;
>> >       obj->read_domains =3D I915_GEM_DOMAIN_CPU;
>> >=20=20
>> > -     if (HAS_LLC(i915))
>> > -             /* On some devices, we can have the GPU use the LLC (the=
 CPU
>> > -              * cache) for about a 10% performance improvement
>> > -              * compared to uncached.  Graphics requests other than
>> > -              * display scanout are coherent with the CPU in
>> > -              * accessing this cache.  This means in this mode we
>> > -              * don't need to clflush on the CPU side, and on the
>> > -              * GPU side we only need to flush internal caches to
>> > -              * get data visible to the CPU.
>> > -              *
>> > -              * However, we maintain the display planes as UC, and so
>> > -              * need to rebind when first used as such.
>> > -              */
>> > -             cache_level =3D I915_CACHE_LLC;
>> > -     else
>> > -             cache_level =3D I915_CACHE_NONE;
>> > -
>> > -     i915_gem_object_set_cache_coherency(obj, cache_level);
>> > +     /*
>> > +      * Note that userspace has control over cache-bypass
>> > +      * via its command stream, so even on LLC architectures
>> > +      * we have to flush out the CPU cache to memory to
>> > +      * clear previous contents.
>> > +      */
>> > +     i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>> >=20=20
>>=20
>> I'm not sure if you've seen my comments about this in an internal thread
>> you were CC'ed to: I don't think this patch will have the intended
>> effect.  The various clflushes this could trigger before the first use
>> of the buffer are conditional on "obj->cache_dirty &
>> ~obj->cache_coherent", which will always be false on LLC platforms
>> AFAICT, because on those platforms i915_gem_object_set_cache_coherency()
>> will always set bit 0 of obj->cache_coherent.
>
> You only need to flush the stale written-to cachelines, so that the page
> content is correct on reuse of the foreign struct page. After that point,
> the CPU cache is managed by the client.

Point was that the code above wouldn't have necessarily led to *any*
flushing on Gen11+ platforms, not even of stale written-to cachelines,
because the various clflushes this could have triggered before the first
use of the buffer were conditional on "obj->cache_dirty &
~obj->cache_coherent", which would still have been false on LLC
platforms.

Anyway you may have fixed that in the next revision of this patch you
sent today by doing things in a completely different way.  But you
didn't answer my question asking why you are doing this on all
platforms.  Cache bypass isn't available on ICL nor earlier platforms,
is it?  And it's been defeatured on TGL:

https://www.spinics.net/lists/intel-gfx/msg219552.html

> -Chris



--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXcsO/gAKCRCDmTidfVK/
W9y5AP9SB3p+7BMdE3buPkwfG+pJuTqHqFBKBgaJqtYhUhJhPwD+KmqrNUopNpO1
t6h54vUhmnXWUA25gZtChIpRGOK++yM=
=ITrt
-----END PGP SIGNATURE-----
--==-=-=--

--===============1830749605==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1830749605==--
