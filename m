Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D3419D410
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 11:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A8C66EB59;
	Fri,  3 Apr 2020 09:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A496EB59
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 09:41:28 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id AF6AF1C346D; Fri,  3 Apr 2020 11:41:25 +0200 (CEST)
Date: Fri, 3 Apr 2020 11:41:10 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org, airlied@redhat.com
Message-ID: <20200403092634.GA3610@duo.ucw.cz>
References: <20200402213253.GA2691@duo.ucw.cz>
 <20200402213506.GA2767@duo.ucw.cz>
 <20200403073720.GA23229@duo.ucw.cz>
 <20200403091430.GA3845@duo.ucw.cz>
MIME-Version: 1.0
In-Reply-To: <20200403091430.GA3845@duo.ucw.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] 5.7-rc0: regression caused by drm tree,
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
Content-Type: multipart/mixed; boundary="===============1819021056=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1819021056==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > > Hardware is thinkpad x220. I had this crash few days ago. And today=
 I
> > > > have similar-looking one, with slightly newer kernel. (Will post
> > > > as a follow-up).
> >=20
> > As part of quest for working system, I tried 5.7-rc0, based on
> >=20
> > Merge: 50a5de895dbe b4d8ddf8356d
> > Author: Linus Torvalds <torvalds@linux-foundation.org>
> > Date:   Wed Apr 1 18:18:18 2020 -0700
> >=20
> > It hangs in userspace, at a time when X should be starting, and I'm
> > looking at blinking cursor.
> >=20
> > 5.6-rcs worked, I'll test 5.6-final.
>=20
> 5.6-final works.
>=20
> Hmm...
>=20
> commit f365ab31efacb70bed1e821f7435626e0b2528a6
> Merge: 4646de87d325 59e7a8cc2dcf
> Author: Linus Torvalds <torvalds@linux-foundation.org>
> Date:   Wed Apr 1 15:24:20 2020 -0700
>=20
>     Merge tag 'drm-next-2020-04-01' of git://anongit.freedesktop.org/drm/=
drm
>=20
> Let me test 4646de87d32526ee87b46c2e0130413367fb5362...that one works.
>=20
> Ok, so obviously... I should
> test... f365ab31efacb70bed1e821f7435626e0b2528a6

f365ab31efacb70bed1e821f7435626e0b2528a6 is broken, and it is the
first broken merge. next-0403 is also broken.

Any ideas, besides the b-word?

Would c0ca be good commit for testing?=20

commit 700d6ab987f3b5e28b13b5993e5a9a975c5604e2
Merge: c0ca5437c509 2bdd4c28baff
Author: Dave Airlie <airlied@redhat.com>
Date:   Mon Mar 30 15:56:03 2020 +1000

    Merge tag 'drm-intel-next-fixes-2020-03-27' of git://anongit.freedeskto=
p.org
/drm/drm-intel into drm-next

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--VS++wcV0S1rZb1Fb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXocEtgAKCRAw5/Bqldv6
8jG5AJ0cQm8gqYJQh8MLB/fR5qx2O5lbMgCfd1NG0flmEpWzpcAJRTG8x3BJl4Q=
=fz/o
-----END PGP SIGNATURE-----

--VS++wcV0S1rZb1Fb--

--===============1819021056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1819021056==--
