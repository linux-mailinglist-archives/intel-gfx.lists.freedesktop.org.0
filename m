Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BE65778DE
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 01:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9437514B267;
	Sun, 17 Jul 2022 23:45:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C1714B267;
 Sun, 17 Jul 2022 23:45:03 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4LmMCB63PXz4xhn;
 Mon, 18 Jul 2022 09:44:54 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1658101499;
 bh=kQL7s0bv0QVHOf6xNkEQ6iRj458x4B3GPPXuqjZxsDI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=G9/V5bsYQdzT8lFlBqsJgYbE3dK4DCoDdyXL2f6eaU6ntUfOygHABeUCbQbW4QNUD
 wvSgw9eBM2hJaduED9ml1DITLUHnMrlPZ6rDi53PPtGA6rb5bT9V/p1R4n+gdlzOPj
 fwWM0GexHRPyUYE0QCQO/p3vlnYhbQNMoBWYYpVGuZWrhAdBVLOHcIs/+LRKMzle0y
 lIW8O9r0Xt2vDy7aWDXS25JPjOfvBwqwi6b995CNhmqN8wfYhAnIPx7UlpfeZzExX2
 jbs+QbU8PsOIU5jgfKnEslfl3UDxvcLcIujcIOQDLpdqy7ZS7+BaiyBGdz8XXvSbkI
 pKKzU/b4E1Jpg==
Date: Mon, 18 Jul 2022 09:44:53 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Dave Airlie <airlied@linux.ie>
Message-ID: <20220718094453.2f1a1f09@canb.auug.org.au>
In-Reply-To: <6e60d396-2a52-d1fa-f125-3c585605b531@amd.com>
References: <20220711124742.3b151992@canb.auug.org.au>
 <6e60d396-2a52-d1fa-f125-3c585605b531@amd.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/8YejglQrq3zPUgCrXSL0TSk";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: Re: [Intel-gfx] linux-next: manual merge of the drm tree with the
 drm-misc-fixes tree
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
Cc: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/8YejglQrq3zPUgCrXSL0TSk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

On Mon, 11 Jul 2022 10:05:45 +0200 Christian K=C3=B6nig <christian.koenig@a=
md.com> wrote:
>
> Am 11.07.22 um 04:47 schrieb Stephen Rothwell:
> >
> > Today's linux-next merge of the drm tree got a conflict in:
> >
> >    drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
> >
> > between commit:
> >
> >    925b6e59138c ("Revert "drm/amdgpu: add drm buddy support to amdgpu"")
> >
> > from the drm-misc-fixes tree and commit:
> >
> >    5e3f1e7729ec ("drm/amdgpu: fix start calculation in amdgpu_vram_mgr_=
new")
> >
> > from the drm tree.
> >
> > This is a mess :-(  I have just reverted the above revert before mergin
> > the drm tree for today, please fix it up. =20
>=20
> Sorry for the noise, the patch "5e3f1e7729ec ("drm/amdgpu: fix start
> calculation in amdgpu_vram_mgr_new")" and another one is going to be
> reverted from the drm tree as well.
>=20
> It's just that -fixes patches where faster than -next patches.

Here we are a week later, -rc7 has been released and as far as I can
tell (though I may have missed it), this is still a problem :-(

I am still reverting 925b6e59138c (which is now in Linus' tree).
--=20
Cheers,
Stephen Rothwell

--Sig_/8YejglQrq3zPUgCrXSL0TSk
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmLUnvUACgkQAVBC80lX
0Gw6agf9GW4WNGxB7WRUxFOdrFlVRBxgU93UbVTP5tRDPx9AiZiDEOVvGTI6/QlL
z8HL2oxR4QCqQBI3JeY+jGbOY/0DCn2OwtaKe1bTCYtdNbprgZxeTi4/x7dru2V9
Db8ypw5hqiNrXsLSE+RR+t2joQj3jkmnvNK4PXM78LyuXkt31TbrkBCU/vVtVjp6
xcnIlDP2jtiuPAbh1EZf/fPG3/fYKid+g35eSDLV2Y4gc0/CNUuP+D9dh4DaLAzW
bBOEa40Wq3QLSysAhGf4lxGbxFwQQBkLURC/XP71PWMMfvqmhmPqlgtXqVRiux5C
nJQ3xEsLCLYUe/CCd7XEEC8RzBZtuA==
=qitT
-----END PGP SIGNATURE-----

--Sig_/8YejglQrq3zPUgCrXSL0TSk--
