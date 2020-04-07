Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B9C1A0821
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 09:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C5226E530;
	Tue,  7 Apr 2020 07:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F286E530
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 07:20:52 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 935241C4A51; Tue,  7 Apr 2020 09:20:48 +0200 (CEST)
Date: Tue, 7 Apr 2020 09:20:47 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org, airlied@redhat.com,
 chris@chris-wilson.co.uk, matthew.auld@intel.com,
 Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200407072047.GA18532@amd.ucw.cz>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] Linus, please revert 7dc8f11437: regression in 5.7-rc0,
 hangs while attempting to run X
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
Cc: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, hpa@zytor.com
Content-Type: multipart/mixed; boundary="===============1910306928=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1910306928==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


On Fri 2020-04-03 15:00:31, Pavel Machek wrote:
> Hi!
>=20
> 7dc8f1143778a35b190f9413f228b3cf28f67f8d
>=20
>     drm/i915/gem: Drop relocation slowpath
>    =20
>     Since the relocations are no longer performed under a global
>     struct_mutex, or any other lock, that is also held by pagefault handl=
ers,
>     we can relax and allow our fast path to take a fault. As we no longer
>     need to abort the fast path for lock avoidance, we no longer need the
>     slow path handling at all.
>=20
> causes regression on thinkpad x220: instead of starting X, I'm looking
> at blinking cursor.
>=20
> Reverting the patch on too of 919dce24701f7b3 fixes things for me.

I have received no feedback from patch authors, and I believe we don't
want to break boot in -rc1 on Intel hardware... so the commit should
be simply reverted.

Best regards,
								Pavel

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--vkogqOf2sHV7VnPd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXowpzwAKCRAw5/Bqldv6
8kkIAKCeh1vybMCCVOEA5UsenI/abMGdJwCgpcZnBGOuqMUIojYfdcW6XC9hOIM=
=woPH
-----END PGP SIGNATURE-----

--vkogqOf2sHV7VnPd--

--===============1910306928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1910306928==--
