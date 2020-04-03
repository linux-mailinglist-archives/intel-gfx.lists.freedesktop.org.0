Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 837F019D6B4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 14:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59FEE6EB7E;
	Fri,  3 Apr 2020 12:30:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 543DF6EB7E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 12:30:23 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 2E4C81C2F16; Fri,  3 Apr 2020 14:30:21 +0200 (CEST)
Date: Fri, 3 Apr 2020 14:30:20 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org, airlied@redhat.com
Message-ID: <20200403123019.GA3539@duo.ucw.cz>
References: <20200402213253.GA2691@duo.ucw.cz>
 <20200402213506.GA2767@duo.ucw.cz>
 <20200403073720.GA23229@duo.ucw.cz>
 <20200403091430.GA3845@duo.ucw.cz>
 <20200403092634.GA3610@duo.ucw.cz>
 <20200403102928.GA3539@duo.ucw.cz>
MIME-Version: 1.0
In-Reply-To: <20200403102928.GA3539@duo.ucw.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] [bisected] Re: 5.7-rc0: regression caused by drm tree,
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
Content-Type: multipart/mixed; boundary="===============1458668698=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1458668698==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > commit f365ab31efacb70bed1e821f7435626e0b2528a6
> > > Merge: 4646de87d325 59e7a8cc2dcf
> > > Author: Linus Torvalds <torvalds@linux-foundation.org>
> > > Date:   Wed Apr 1 15:24:20 2020 -0700
> > >=20
> > >     Merge tag 'drm-next-2020-04-01' of
> > > git://anongit.freedesktop.org/drm/drm
>=20
>=20
> > Any ideas, besides the b-word?
> >=20
> > Would c0ca be good commit for testing?
> >=20
> > commit 700d6ab987f3b5e28b13b5993e5a9a975c5604e2
> > Merge: c0ca5437c509 2bdd4c28baff
>=20
> c0ca is broken.
>=20
> commit 9001b17698d86f842e2b13e0cafe8021d43209e9
> Merge: bda1fb0ed000 217a485c8399
>=20
>     Merge tag 'drm-intel-next-2020-03-13' of git://anongit.freedesktop.or=
g/drm/d
> rm-intel into drm-next
>    =20
>     UAPI Changes:
>=20
> So bda1fb0ed000 looks like test candidate... and that one works.
>=20
> I guess 217a485c8399 is reasonable next step... and that
> 11a48a5a18c63fd7621bb050228cebf13566e4d8 should work ok.=20

# bad: [217a485c8399634abacd2f138b3524d2e78e8aad] drm/i915: Update DRIVER_D=
ATE to 20200313
# good: [11a48a5a18c63fd7621bb050228cebf13566e4d8] Linux 5.6-rc2
git bisect start '217a485c8399' '11a48a5a18c63fd7621bb050228cebf13566e4d8'
# good: [837b63e6087838d0f1e612d448405419199d8033] drm/i915: Program MBUS w=
ith rmw during initialization
git bisect good 837b63e6087838d0f1e612d448405419199d8033
# good: [3a1b82a19ff91cfef9b5d9d9faabb0ebcac15df0] drm/i915/tgl: Allow DC5/=
DC6 entry while PG2 is active
git bisect good 3a1b82a19ff91cfef9b5d9d9faabb0ebcac15df0
# good: [ba518bbd3f3c265419fa8c3702940cb7c642c6a5] drm/i915: Force DPCD bac=
klight mode for some Dell CML 2020 panels
git bisect good ba518bbd3f3c265419fa8c3702940cb7c642c6a5
# good: [73ce0969d1d0bc2cb53370017923640db72e70ec] drm/i915: Clean up integ=
er types in color code
git bisect good 73ce0969d1d0bc2cb53370017923640db72e70ec
# bad: [aa64f8e1cf235f2e36615dba57c2c50d06181f84] drm/i915: Add Wa_12096446=
11:icl,ehl
git bisect bad aa64f8e1cf235f2e36615dba57c2c50d06181f84
# good: [32fc2849a3d59dc10efda38ef88e8f9052f711be] drm/i915/dsb: convert to=
 drm_device based logging macros.
git bisect good 32fc2849a3d59dc10efda38ef88e8f9052f711be
# good: [4aea5a9e6521c1ad484992d490f1cefa7d73d1ec] drm/i915/gem: Mark up th=
e racy read of the mmap_singleton
git bisect good 4aea5a9e6521c1ad484992d490f1cefa7d73d1ec
# bad: [7dc8f1143778a35b190f9413f228b3cf28f67f8d] drm/i915/gem: Drop reloca=
tion slowpath
git bisect bad 7dc8f1143778a35b190f9413f228b3cf28f67f8d
# good: [c02aac25f150d1b7215b9481f8cdd30cc607bedf] drm/i915/gem: Mark up sw=
-fence notify function
git bisect good c02aac25f150d1b7215b9481f8cdd30cc607bedf
# good: [07bcfd1291de77ffa9b627b4442783aba1335229] drm/i915/gen12: Disable =
preemption timeout
git bisect good 07bcfd1291de77ffa9b627b4442783aba1335229
# first bad commit: [7dc8f1143778a35b190f9413f228b3cf28f67f8d] drm/i915/gem=
: Drop relocation slowpath

Any ideas?
									Pavel

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXocsWwAKCRAw5/Bqldv6
8qNdAJ9bkwEuRS3wjnjPE4AXxIIeuiDQkQCfZoT2AeeFq3CBrUDbDEIYnRVm9sk=
=kIVi
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--

--===============1458668698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1458668698==--
