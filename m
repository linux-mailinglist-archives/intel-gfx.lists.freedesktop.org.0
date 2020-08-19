Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1945F24A727
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 21:47:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C57E36E560;
	Wed, 19 Aug 2020 19:47:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE066E560
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 19:47:27 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id E4FB51C0BD2; Wed, 19 Aug 2020 21:47:23 +0200 (CEST)
Date: Wed, 19 Aug 2020 21:47:23 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200819194723.GA7451@amd.ucw.cz>
References: <20200819103952.19083-1-chris@chris-wilson.co.uk>
 <20200819172331.GA4796@amd>
 <159785861047.667.10730572472834322633@build.alporthouse.com>
 <20200819193326.p62h2dj7jpzfkeyy@duo.ucw.cz>
 <159786604254.667.11923001796829417234@build.alporthouse.com>
MIME-Version: 1.0
In-Reply-To: <159786604254.667.11923001796829417234@build.alporthouse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Replace reloc chain with
 terminator on error unwind
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0684913490=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0684913490==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="UlVJffcvxoiEqYs2"
Content-Disposition: inline


--UlVJffcvxoiEqYs2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > Yep, my machines are low on memory.
> >=20
> > But ... test did not work that well. I have dead X and blinking
> > screen. Machine still works reasonably well over ssh, so I guess
> > that's an improvement.
>=20
> > [ 7744.718473] BUG: unable to handle page fault for address: f8c00000
> > [ 7744.718484] #PF: supervisor write access in kernel mode
> > [ 7744.718487] #PF: error_code(0x0002) - not-present page
> > [ 7744.718491] *pdpt =3D 0000000031b0b001 *pde =3D 0000000000000000=20
> > [ 7744.718500] Oops: 0002 [#1] PREEMPT SMP PTI
> > [ 7744.718506] CPU: 0 PID: 3004 Comm: Xorg Not tainted 5.9.0-rc1-next-2=
0200819+ #134
> > [ 7744.718509] Hardware name: LENOVO 17097HU/17097HU, BIOS 7BETD8WW (2.=
19 ) 03/31/2011
> > [ 7744.718518] EIP: eb_relocate_vma+0xdbf/0xf20
>=20
> To save me guessing, paste the above location into
> 	./scripts/decode_stacktrace.sh ./vmlinux . ./drivers/gpu/drm/i915
>=20
> The f8c00000 is something running off the end of a kmap, but I didn't
> spot a path were we would ignore an error and keep on writing.
> Nevertheless it must exist.

Like this?

$ ./scripts/decode_stacktrace.sh ./vmlinux . ./drivers/gpu/drm/i915
f8c00000
f8c00000
eb_relocate_vma+0xdbf/0xf20
eb_relocate_vma (i915_gem_execbuffer.c:?)=20

									Pavel

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--UlVJffcvxoiEqYs2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXz2BywAKCRAw5/Bqldv6
8rQ3AJ48gceUdw0++l1nMSQ34uMDJpR/wQCgk2/pSdCWIvl6fFmCQGle7PUR/eI=
=WWF5
-----END PGP SIGNATURE-----

--UlVJffcvxoiEqYs2--

--===============0684913490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0684913490==--
