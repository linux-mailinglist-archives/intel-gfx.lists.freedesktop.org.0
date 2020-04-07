Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4DD1A089B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 09:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B586E578;
	Tue,  7 Apr 2020 07:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B636E578
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 07:48:43 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id D96751C4A6E; Tue,  7 Apr 2020 09:48:41 +0200 (CEST)
Date: Tue, 7 Apr 2020 09:48:41 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200407074841.GB18673@amd.ucw.cz>
References: <20200407072047.GA18532@amd.ucw.cz>
 <158624426770.4794.6070200474948860768@build.alporthouse.com>
MIME-Version: 1.0
In-Reply-To: <158624426770.4794.6070200474948860768@build.alporthouse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] Linus,
 please revert 7dc8f11437: regression in 5.7-rc0,
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
Cc: hpa@zytor.com, intel-gfx@lists.freedesktop.org,
 kernel list <linux-kernel@vger.kernel.org>, mingo@redhat.com, bp@alien8.de,
 matthew.auld@intel.com, airlied@redhat.com, tglx@linutronix.de,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: multipart/mixed; boundary="===============0878606042=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0878606042==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="hQiwHBbRI9kgIhsi"
Content-Disposition: inline


--hQiwHBbRI9kgIhsi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > 7dc8f1143778a35b190f9413f228b3cf28f67f8d
> > >=20
> > >     drm/i915/gem: Drop relocation slowpath
> > >    =20
> > >     Since the relocations are no longer performed under a global
> > >     struct_mutex, or any other lock, that is also held by pagefault h=
andlers,
> > >     we can relax and allow our fast path to take a fault. As we no lo=
nger
> > >     need to abort the fast path for lock avoidance, we no longer need=
 the
> > >     slow path handling at all.
> > >=20
> > > causes regression on thinkpad x220: instead of starting X, I'm looking
> > > at blinking cursor.
> > >=20
> > > Reverting the patch on too of 919dce24701f7b3 fixes things for me.
> >=20
> > I have received no feedback from patch authors, and I believe we don't
> > want to break boot in -rc1 on Intel hardware... so the commit should
> > be simply reverted.
>=20
> Beyond the fix already submitted?

I did not get that one, can I have a pointer?

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--hQiwHBbRI9kgIhsi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXowwWQAKCRAw5/Bqldv6
8ptBAJ9iwHYXM0KdeR4HdWyZ7IEsER3vHACcC1g2U0sCmmYeFy9vvaeM+OCph0g=
=8TpN
-----END PGP SIGNATURE-----

--hQiwHBbRI9kgIhsi--

--===============0878606042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0878606042==--
