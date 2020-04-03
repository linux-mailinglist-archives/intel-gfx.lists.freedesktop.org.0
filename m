Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6353F19D50E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 12:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C47B06EB65;
	Fri,  3 Apr 2020 10:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 865AB6EB6D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 10:29:34 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 10C6A1C3382; Fri,  3 Apr 2020 12:29:32 +0200 (CEST)
Date: Fri, 3 Apr 2020 12:29:31 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org, airlied@redhat.com
Message-ID: <20200403102928.GA3539@duo.ucw.cz>
References: <20200402213253.GA2691@duo.ucw.cz>
 <20200402213506.GA2767@duo.ucw.cz>
 <20200403073720.GA23229@duo.ucw.cz>
 <20200403091430.GA3845@duo.ucw.cz>
 <20200403092634.GA3610@duo.ucw.cz>
MIME-Version: 1.0
In-Reply-To: <20200403092634.GA3610@duo.ucw.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] 5.7-rc0: regression caused by drm tree,
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
Content-Type: multipart/mixed; boundary="===============0916788875=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0916788875==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > commit f365ab31efacb70bed1e821f7435626e0b2528a6
> > Merge: 4646de87d325 59e7a8cc2dcf
> > Author: Linus Torvalds <torvalds@linux-foundation.org>
> > Date:   Wed Apr 1 15:24:20 2020 -0700
> >=20
> >     Merge tag 'drm-next-2020-04-01' of
> > git://anongit.freedesktop.org/drm/drm


> Any ideas, besides the b-word?
>=20
> Would c0ca be good commit for testing?
>=20
> commit 700d6ab987f3b5e28b13b5993e5a9a975c5604e2
> Merge: c0ca5437c509 2bdd4c28baff

c0ca is broken.

commit 9001b17698d86f842e2b13e0cafe8021d43209e9
Merge: bda1fb0ed000 217a485c8399

    Merge tag 'drm-intel-next-2020-03-13' of git://anongit.freedesktop.org/=
drm/d
rm-intel into drm-next
   =20
    UAPI Changes:

So bda1fb0ed000 looks like test candidate... and that one works.

I guess 217a485c8399 is reasonable next step... and that
11a48a5a18c63fd7621bb050228cebf13566e4d8 should work ok.=20

Best regards,
								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXocQCAAKCRAw5/Bqldv6
8nvXAKC1pB14XrCpXQgcLZgC91Z0PfLfpQCfQgcWXUjqB2jN6klSsbAUNmTfIdY=
=cFVA
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--

--===============0916788875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0916788875==--
