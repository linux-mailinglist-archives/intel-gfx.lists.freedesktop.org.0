Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F4D253F1C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 09:28:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 373956E429;
	Thu, 27 Aug 2020 07:28:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154B76E429
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 07:28:40 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 7D88B1C0BDF; Thu, 27 Aug 2020 09:28:36 +0200 (CEST)
Date: Thu, 27 Aug 2020 09:28:36 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Harald Arnesen <harald@skogtun.org>
Message-ID: <20200827072836.GA21780@amd>
References: <7efa547d-b7a4-b873-f1aa-4f19eb849fa3@skogtun.org>
 <CAHk-=wj3WskPCtHncCWLdaP6xVecLp8bDBTT57vyiU-0=Ld6QQ@mail.gmail.com>
 <d4db4a52-3001-cb02-4888-a9dfd55cdd7c@skogtun.org>
 <656b8f9f-d696-c75d-aef6-2b8b5170f2f6@skogtun.org>
 <CAHk-=wiAK=AiqTD47o-BFFZciQXpEC0SiiDnXLWJUcQtCo-Pig@mail.gmail.com>
 <101bff45-0ebd-8fb6-7c99-963aa4fcc588@skogtun.org>
 <CAPM=9twLvHu_XLJ89GVXpNo=PHPZLJuRpHggkfzvvuVf+xrwoA@mail.gmail.com>
 <0f06d704-c14e-0d86-c8bb-8c7b3a34758a@skogtun.org>
 <CAHk-=wh=MjX6+Bn-ooHT_wf4VTpe7y-5czbAUT=vaAn2VCBNBQ@mail.gmail.com>
 <1aa00cf1-427d-2ad7-8497-b5a007a64d81@skogtun.org>
MIME-Version: 1.0
In-Reply-To: <1aa00cf1-427d-2ad7-8497-b5a007a64d81@skogtun.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [Intel-gfx] 5.9-rc1: graphics regression moved from -next to
 mainline
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: multipart/mixed; boundary="===============0358859430=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0358859430==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> >> It's a Thinkpad T520.
> >=20
> > Oh, so this is a 64-bit machine? Yeah, that patch to flush vmalloc
> > ranges won't make any difference on x86-64.
> >=20
> > Or are you for some reason running a 32-bit kernel on that thing? Have
> > you tried building a 64-bit one (user-space can be 32-bit, it should
> > all just work. Knock wood).
>=20
> No, I run a 64-bit kernel with 64-bit userspace (Void Linux).
> Config is attached, in case anything is obvious from that.

For the record, I'm running 5.9.0-rc2-next-20200825 w/o further
patches, and it behaves okay on that 32-bit thinkpad x60.

BTW... could we get the test farms to occassionaly boot in 32-bit
mode? Those modern CPUs can still do that :-).

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl9HYKQACgkQMOfwapXb+vI7cQCeKgek3+t3QWuXEdofF5AGGHYn
+bEAoJuudssoh32NRk5xNwp2hciDyvZv
=u+U6
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--

--===============0358859430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0358859430==--
