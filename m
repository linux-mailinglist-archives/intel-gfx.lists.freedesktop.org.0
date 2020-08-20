Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7576224B218
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 11:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D926D6E929;
	Thu, 20 Aug 2020 09:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 481796E929
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 09:23:55 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 273591C0BD6; Thu, 20 Aug 2020 11:23:50 +0200 (CEST)
Date: Thu, 20 Aug 2020 11:23:49 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200820092349.GA3792@amd>
References: <20200817161132.GA4711@amd>
 <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
 <CAPM=9tw8LVWsuA6m_nkUDgm00iz2txYRNZY0b0WWZbyiUVzLEw@mail.gmail.com>
 <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
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
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Content-Type: multipart/mixed; boundary="===============0179319963=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0179319963==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > I think there's been some discussion about reverting that change for
> > other reasons, but it's quite likely the culprit.
>=20
> Hmm. It reverts cleanly, but the end result doesn't work, because of
> other changes.
>=20
> Reverting all of
>=20
>    763fedd6a216 ("drm/i915: Remove i915_gem_object_get_dirty_page()")
>    7ac2d2536dfa ("drm/i915/gem: Delete unused code")
>    9e0f9464e2ab ("drm/i915/gem: Async GPU relocations only")
>=20
> seems to at least build.
>=20
> Pavel, does doing those three reverts make things work for you?

Yes, it seems they make things work. (Chris asked for new patch to be
tested, so I am switching to his kernel, but it survived longer than
it usually does.)

Thanks and best regards,
								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl8+QSUACgkQMOfwapXb+vJNIwCeI5looH84mvmfbwh947kCWZjp
DrYAoMLxcp9yPQh16oheciyRdFHfmJdf
=/piO
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--

--===============0179319963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0179319963==--
