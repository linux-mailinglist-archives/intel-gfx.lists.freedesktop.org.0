Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73807325458
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Feb 2021 18:07:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26F4B6ECDA;
	Thu, 25 Feb 2021 17:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 564A36ECDA;
 Thu, 25 Feb 2021 17:07:30 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 0E5941C0B81; Thu, 25 Feb 2021 18:07:27 +0100 (CET)
Date: Thu, 25 Feb 2021 18:07:26 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20210225170726.GA31110@duo.ucw.cz>
References: <20210224200912.GA27905@duo.ucw.cz>
 <452585d5-9d18-f5a8-9d6b-6d39aa037480@suse.de>
 <20210225095322.GA5089@amd>
 <4fb31ea5-ef20-4752-4782-8d9f1afdf51d@suse.de>
MIME-Version: 1.0
In-Reply-To: <4fb31ea5-ef20-4752-4782-8d9f1afdf51d@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] udldrm does not recover from powersave? Re:
 udldrmfb: causes WARN in i915 on X60 (x86-32)
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
Cc: intel-gfx@lists.freedesktop.org, kernel list <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, airlied@redhat.com
Content-Type: multipart/mixed; boundary="===============1566645910=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1566645910==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="T4sUOijqQbZv57TR"
Content-Disposition: inline


--T4sUOijqQbZv57TR
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > > This is in -next, but I get same behaviour on 5.11; and no, udl does
> > >=20
> > > Thanks for reporting. We are in the process of fixing the issue. The =
latest
> > > patch is at [1].
> > >=20
> >=20
> > Thank you, that fixes the DMA issue, and I can use the udl.
> >=20
> > ...for a while. Then screensaver blanks laptop screen, udl screen
> > blanks too. Upon hitting a key, internal screen shows up, udl does
> > not.
> >=20
> > I try rerunning xrandr ... --auto, but could not recover it.
> >=20
> > Any ideas?
>=20
> Did it work before the regression?
>=20
> For testing, could you please remove the fix and then do
>=20
>   git revert 6eb0233ec2d0
>=20
> This would restore the old version. Please report back on the
> results.

Ok, I went to 7f206cf3ec2b with 6eb0233ec2d0 reverted. That fails to
build:

drivers/usb/core/message.c: In function =E2=80=98usb_set_configuration=E2=
=80=99:
drivers/usb/core/message.c:2100:12: error: =E2=80=98struct device=E2=80=99 =
has no member named =E2=80=98dma_pfn_offset=E2=80=99
 2100 |   intf->dev.dma_pfn_offset =3D dev->dev.dma_pfn_offset;
      |            ^
drivers/usb/core/message.c:2100:38: error: =E2=80=98struct device=E2=80=99 =
has no member named =E2=80=98dma_pfn_offset=E2=80=99
 2100 |   intf->dev.dma_pfn_offset =3D dev->dev.dma_pfn_offset;
      |                                      ^
  CC      drivers/net/ethernet/intel/e1000e/param.o
make[3]: *** [scripts/Makefile.build:271: drivers/usb/core/message.o]
Error 1

So I tried to go to bad commit's parent:

git checkout 6eb0233ec2d0^
git log
commit cf141ae989e2ff119cd320326da5923b480d1641
    ARM/keystone: move the DMA offset handling under ifdef CONFIG_ARM_LPAE

But that resulted in lockup soon after "--setprovidersource" command
was isued.

Best regards,
									Pavel

--=20
http://www.livejournal.com/~pavelmachek

--T4sUOijqQbZv57TR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCYDfZTgAKCRAw5/Bqldv6
8puHAKC6y3/9FJshPuwi5TGRXtugLLvqRACgmwbLRxRTo5cLtjr+rw0WaJviAC8=
=6IoU
-----END PGP SIGNATURE-----

--T4sUOijqQbZv57TR--

--===============1566645910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1566645910==--
