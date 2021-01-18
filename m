Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6DE2F96FF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 01:59:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4E3B89B8F;
	Mon, 18 Jan 2021 00:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (bilbo.ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 872AA89A5E;
 Mon, 18 Jan 2021 00:59:30 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4DJtjB2nRsz9sWL;
 Mon, 18 Jan 2021 11:59:25 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1610931568;
 bh=svII/HmAsm5G6p6FTM3HPSB/f9VYboynbv9ZEgEsrMI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TxROplxJxcjHydkMqRrhcdN/SDHCF9/5o52q692V7iyAkSLyKGsOYuZT/B2FIe3V2
 oBFlooA/ZsH4exIcXbR/rFaS4SdQCP7Igw4VE/EqHGbhu2xZprNx65B4KTBAs0DaDj
 4JzX09tQ9Ufngk3sZcEdS1aQ+ofZGANqAsk4P8XUMv6WasbgOqCK38R38PGq5l6Y98
 /mXeV6cmNHzB1i3PTqtWpLElA48UJD0ZQaL7TRG9NQITitxcVoIN/b1xOKdiatZnB7
 pqHRKx3vRqz184L+x2VNA8e+XarAQQMsvKZWn37u3u+QIVpKwnyl78IwTsPkk3UP4L
 J34NLI5R6TBuw==
Date: Mon, 18 Jan 2021 11:59:24 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20210118115924.6ee14fd3@canb.auug.org.au>
In-Reply-To: <20210111105654.17e3aa76@canb.auug.org.au>
References: <20210108115518.2b3fdf58@canb.auug.org.au>
 <20210108122540.657501b2@canb.auug.org.au>
 <20210111105654.17e3aa76@canb.auug.org.au>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the drm
 tree
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
Cc: Dave Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============0985740178=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0985740178==
Content-Type: multipart/signed; boundary="Sig_/_RhqA5rtq/IoWL38l0P.S8M";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/_RhqA5rtq/IoWL38l0P.S8M
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Mon, 11 Jan 2021 10:56:54 +1100 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>
> On Fri, 8 Jan 2021 12:25:40 +1100 Stephen Rothwell <sfr@canb.auug.org.au>=
 wrote:
> >
> > On Fri, 8 Jan 2021 11:55:18 +1100 Stephen Rothwell <sfr@canb.auug.org.a=
u> wrote: =20
> > >
> > > After merging the drm tree, today's linux-next build (x86_64 allmodco=
nfig)
> > > failed like this:
> > >=20
> > > error: the following would cause module name conflict:
> > >   drivers/video/fbdev/omap2/omapfb/displays/panel-dsi-cm.ko
> > >   drivers/gpu/drm/panel/panel-dsi-cm.ko
> > >=20
> > > Maybe caused by commit
> > >=20
> > >   cf64148abcfd ("drm/panel: Move OMAP's DSI command mode panel driver=
")
> > >=20
> > > I have used the drm tree from next-20210107 for today.   =20
> >=20
> > This has affected the drm-misc tree as well (since it merged in the drm
> > tree).
> >=20
> > I have used the drm-misc tree from next-20210107 for today. =20
>=20
> And now the drm-intel tree.
>=20
> I have used the drm-intel tree from next-20210108 for today.

This is still affecting the drm and drm-intel trees.

--=20
Cheers,
Stephen Rothwell

--Sig_/_RhqA5rtq/IoWL38l0P.S8M
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmAE3WwACgkQAVBC80lX
0GxM0gf7BvnfAOaSmmZIeghwp+16WK0KtenVXwvzgaz44vqHjLfQB7s+/u40v+wX
f23elvd4/BiMQputNl9plOGduAiDFEPx/DHmIEqDsqM3Uw7x5NG1bfYusjN1hxBA
1BhAgGLJdb37XgyDbYDkDLQy3CDZ8QDb6Wb6/cxQH5dhkgV5ySJUoTz+oV9nkDeJ
oTPnhm4qfr87zARS35yqV+sNhBrz4fcwsGjhMR+lUXnvjQOo8KrBHjYzpGfE4RqJ
nkKiZdhVQft0fuTpbBBP5rvIrGLh3g7/JbHIyveaAflSQktIVYYBcHfOMh5SSfcg
dUnXUXv5pksjRWQkZdxD5UuEoQe5Vg==
=1Z6B
-----END PGP SIGNATURE-----

--Sig_/_RhqA5rtq/IoWL38l0P.S8M--

--===============0985740178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0985740178==--
