Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCCB1A4EC5
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2020 09:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 273A16E434;
	Sat, 11 Apr 2020 07:51:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 773AF6E434
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Apr 2020 07:51:23 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 88B711C6109; Sat, 11 Apr 2020 09:51:20 +0200 (CEST)
Date: Sat, 11 Apr 2020 09:51:20 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200411075119.GA16837@amd.ucw.cz>
References: <20200407072047.GA18532@amd.ucw.cz>
 <158624426770.4794.6070200474948860768@build.alporthouse.com>
 <20200407074841.GB18673@amd.ucw.cz>
 <CAHk-=wixvbCie+EQ-vTPdyrzmdopM_BQc=uetneuSSa7PtCt2g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHk-=wixvbCie+EQ-vTPdyrzmdopM_BQc=uetneuSSa7PtCt2g@mail.gmail.com>
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
Cc: Peter Anvin <hpa@zytor.com>, intel-gfx@lists.freedesktop.org,
 kernel list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, matthew.auld@intel.com,
 Dave Airlie <airlied@redhat.com>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: multipart/mixed; boundary="===============2012704578=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============2012704578==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pWyiEgJYm5f9v55/"
Content-Disposition: inline


--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > Beyond the fix already submitted?
> >
> > I did not get that one, can I have a pointer?
>=20
> What's the status of this one?

I tried updating my kernel on April 3, that one did not work, but it
did not include 721017cf4bd8.

> I'm assuming the fix is commit 721017cf4bd8 ("drm/i915/gem: Ignore
> readonly failures when updating relics"), but didn't see a reply to
> the query or a confirmation of things working..

I pulled latest tree from Linus, and this one has 721017cf4bd8. Let my
try to revert my revert, and test... yes, this one seems okay.

Something changed in the X, now it seems that only one monitor is used
for login, not both... but it now works.

Best regards,
								Pavel

PS: Hmm. This is not helpful. I guess this is "N".

*
* VDPA drivers
*
VDPA drivers (VDPA_MENU) [N/y/?] (NEW) ?

There is no help available for this option.
Symbol: VDPA_MENU [=3Dn]
Type  : bool
Defined at drivers/vdpa/Kconfig:9
  Prompt: VDPA drivers
  Location:
    -> Device Drivers

*
* VHOST drivers
*
VHOST drivers (VHOST_MENU) [Y/n/?] (NEW) ?

There is no help available for this option.
Symbol: VHOST_MENU [=3Dy]
Type  : bool
Defined at drivers/vhost/Kconfig:21
  Prompt: VHOST drivers
  Location:
    -> Device Drivers


> Btw, Chris, that __put_user() not testing the error should at least
> have a comment. We don't have a working "__must_check" for those
> things (because they are subtle macros, not functions), but if we did,
> we'd get a compiler warning for not checking the error value.

Best regards,
								Pavel


--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--pWyiEgJYm5f9v55/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXpF29wAKCRAw5/Bqldv6
8rLbAJ9+qb+examYdcgoosM2keLFuc5dEACgoiaicqZxc1Pwd7HChqIdJieOojI=
=Kt+J
-----END PGP SIGNATURE-----

--pWyiEgJYm5f9v55/--

--===============2012704578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2012704578==--
