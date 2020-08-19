Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C84824A4DF
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 19:23:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99AC36E584;
	Wed, 19 Aug 2020 17:23:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 139476E584
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 17:23:35 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id B65381C0BBB; Wed, 19 Aug 2020 19:23:31 +0200 (CEST)
Date: Wed, 19 Aug 2020 19:23:31 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200819172331.GA4796@amd>
References: <20200819103952.19083-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
In-Reply-To: <20200819103952.19083-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
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
Content-Type: multipart/mixed; boundary="===============2085302100=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============2085302100==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline


--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> If we hit an error during construction of the reloc chain, we need to
> replace the chain into the next batch with the terminator so that upon
> flushing the relocations so far, we do not execute a hanging batch.

Thanks for the patches. I assume this should fix problem from
"5.9-rc1: graphics regression moved from -next to mainline" thread.

I have applied them over current -next, and my machine seems to be
working so far (but uptime is less than 30 minutes).

If the machine still works tommorow, I'll assume problem is solved.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--3V7upXqbjpZ4EhLz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl89YBIACgkQMOfwapXb+vI87QCghjYcIRWZI+jQEfQrwplelp6u
l/EAnRdT9hnEvkBhQSbOSUOmosDR3fZT
=jUba
-----END PGP SIGNATURE-----

--3V7upXqbjpZ4EhLz--

--===============2085302100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2085302100==--
