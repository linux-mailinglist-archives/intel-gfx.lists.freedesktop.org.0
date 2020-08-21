Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C31424D14A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 11:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022946EAA1;
	Fri, 21 Aug 2020 09:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA9D06EAA1
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 09:19:04 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id BF1FD1C0BB4; Fri, 21 Aug 2020 11:19:00 +0200 (CEST)
Date: Fri, 21 Aug 2020 11:19:00 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200821091900.hzbivycs5ky5d3iw@duo.ucw.cz>
References: <20200817161132.GA4711@amd>
 <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
 <CAPM=9tw8LVWsuA6m_nkUDgm00iz2txYRNZY0b0WWZbyiUVzLEw@mail.gmail.com>
 <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
 <20200820092349.GA3792@amd>
 <CAHk-=wjX=ck_u8uvp=PjGCQ3M9igE-yqyRPsJ54th1gQWpwMnA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHk-=wjX=ck_u8uvp=PjGCQ3M9igE-yqyRPsJ54th1gQWpwMnA@mail.gmail.com>
User-Agent: NeoMutt/20180716
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
Content-Type: multipart/mixed; boundary="===============1819546077=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1819546077==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="flaffuju4iqng467"
Content-Disposition: inline


--flaffuju4iqng467
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu 2020-08-20 09:16:18, Linus Torvalds wrote:
> On Thu, Aug 20, 2020 at 2:23 AM Pavel Machek <pavel@ucw.cz> wrote:
> >
> > Yes, it seems they make things work. (Chris asked for new patch to be
> > tested, so I am switching to his kernel, but it survived longer than
> > it usually does.)
>=20
> Ok, so at worst we know how to solve it, at best the reverts won't be
> needed because Chris' patch will fix the issue properly.
>=20
> So I'll archive this thread, but remind me if this hasn't gotten
> sorted out in the later rc's.

Yes, thank you, it seems we have a solution w/o the revert.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--flaffuju4iqng467
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXz+RhAAKCRAw5/Bqldv6
8uD4AJ9wxBkyX2NDdBB2rL/oeGMClEedJACglQjPofMhal5uP1yWgF+eVF2jZJc=
=LW91
-----END PGP SIGNATURE-----

--flaffuju4iqng467--

--===============1819546077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1819546077==--
