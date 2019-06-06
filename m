Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8483A36ED5
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 10:37:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC4B897F6;
	Thu,  6 Jun 2019 08:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
 [195.113.26.193])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A611C897FB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 08:37:38 +0000 (UTC)
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 71E038024C; Thu,  6 Jun 2019 10:37:25 +0200 (CEST)
Date: Thu, 6 Jun 2019 10:37:35 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20190606083735.GA975@amd>
References: <20190603074004.GA15821@amd>
 <87v9xj15d9.fsf@intel.com>
MIME-Version: 1.0
In-Reply-To: <87v9xj15d9.fsf@intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [Intel-gfx] 5.2: display corruption on X60, X220
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
Cc: intel-gfx@lists.freedesktop.org, kernel list <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============0939002475=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0939002475==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline


--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu 2019-06-06 11:32:18, Jani Nikula wrote:
> On Mon, 03 Jun 2019, Pavel Machek <pavel@ucw.cz> wrote:
> > In recent kernels (5.2.0-rc1-next-20190522, 5.2-rc2) I'm getting
> > display corruption in X. Usually in terminals, but also in title bars
> > etc. Black areas with white lines in them, usually...
> >
> > Same configuration worked properly in ... probably 4.19? Then I got
> > some graphics-crashes on X220 that prevented me from testing :-(.
>=20
> It's pretty hard to say anything based on the above.
>=20
> Anything in the logs with drm.debug=3D14 added?

I see. It looks like hard-to-debug issue.

Oh, interesting part is that corruption _is_ visible if I make a
screenshot.

Will try with drm.debug=3D...

Do you do some kind of testing that would catch similar issues?

Thanks,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--J2SCkAp4GZ/dPZZf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlz40M4ACgkQMOfwapXb+vLZMACgm7iZSxYbdUCpTeiMLAPL7hEj
stEAn1R7/eD7ZCus4hp6dl3hhM0MIh4A
=DYR7
-----END PGP SIGNATURE-----

--J2SCkAp4GZ/dPZZf--

--===============0939002475==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0939002475==--
