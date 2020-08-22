Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8BC24EA05
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Aug 2020 23:25:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F038089E26;
	Sat, 22 Aug 2020 21:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5398922E
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Aug 2020 21:25:47 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 391521C0BB0; Sat, 22 Aug 2020 23:25:42 +0200 (CEST)
Date: Sat, 22 Aug 2020 23:25:41 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200822212541.GB14071@amd>
References: <20200821123746.16904-1-joro@8bytes.org>
 <20200821133548.be58a3b0881b41a32759fa04@linux-foundation.org>
 <159804301810.32652.14249776487575415877@build.alporthouse.com>
MIME-Version: 1.0
In-Reply-To: <159804301810.32652.14249776487575415877@build.alporthouse.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [Intel-gfx] [PATCH v2] mm: Track page table modifications in
 __apply_to_page_range()
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
Cc: Joerg Roedel <jroedel@suse.de>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, linux-mm@kvack.org,
 David Vrabel <david.vrabel@citrix.com>, Dave Airlie <airlied@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Joerg Roedel <joro@8bytes.org>
Content-Type: multipart/mixed; boundary="===============0155276625=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0155276625==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3uo+9/B/ebqu+fSQ"
Content-Disposition: inline


--3uo+9/B/ebqu+fSQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!
> > > The __apply_to_page_range() function is also used to change and/or
> > > allocate page-table pages in the vmalloc area of the address space.
> > > Make sure these changes get synchronized to other page-tables in the
> > > system by calling arch_sync_kernel_mappings() when necessary.
> >=20
> > There's no description here of the user-visible effects of the bug.=20
> > Please always provide this, especially when proposing a -stable
> > backport.  Take pity upon all the downstream kernel maintainers who are
> > staring at this wondering whether they should risk adding it to their
> > kernels.
>=20
> The impact appears limited to x86-32, where apply_to_page_range may miss
> updating the PMD. That leads to explosions in drivers like

Is this alone supposed to fix my problems with graphics on Thinkpad
X60? Let me try...

Best regards,
								Pavel
							=09
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--3uo+9/B/ebqu+fSQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl9BjVUACgkQMOfwapXb+vLhDwCgsB41bHFj++LVnm2DkfXOTwEm
k7UAoLObJuOLmCfuoVbRfRzOInnL8XTV
=ayRy
-----END PGP SIGNATURE-----

--3uo+9/B/ebqu+fSQ--

--===============0155276625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0155276625==--
