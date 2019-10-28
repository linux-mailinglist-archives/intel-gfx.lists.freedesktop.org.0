Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE90E6AC3
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 03:24:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F0FB6E075;
	Mon, 28 Oct 2019 02:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (bilbo.ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7174E6E075;
 Mon, 28 Oct 2019 02:24:09 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 471dnc3xQLz9sPc;
 Mon, 28 Oct 2019 13:24:04 +1100 (AEDT)
Date: Mon, 28 Oct 2019 13:24:03 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>,
 Alex Deucher <alexdeucher@gmail.com>
Message-ID: <20191028132403.24736cbd@canb.auug.org.au>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=canb.auug.org.au; s=201702; t=1572229446;
 bh=qYcQoEM3UHZbjWJc/Um38bq7lJbnjY616gfZK+WwFWw=;
 h=Date:From:To:Cc:Subject:From;
 b=us+Pieu7Yk1uxGMiY0nNZv47xuOVeQj4dPVC91Qi3uXQk8mQrG/5ZXn/jYuudQoln
 /ZEX8ZRrGucT75LalctjOYh5nYS13T+NhZ97cix5nF+fT2XXsAZK38COL8HCKyhfXq
 +Xkvig693gqZ+9JE3RPCx17zz4fZwHWDBiQJvuqWoallB3KqopPVnuQkN2NCowa1Dx
 WTEO9FJmvhHhc4xCW2fQ837QsLrzoMLcyzIZoe2KTTzvqG4rgp8DxmMNBjjlUL4ZRn
 OhR4tUM/fM04WCTb6uClrBN2sY9pcphTyl/m+y9YsptkdauooWP3mRhLxvO5hXa145
 TJKaZRx77U+2Q==
Subject: [Intel-gfx] linux-next: manual merge of the drm-misc tree with the
 amdgpu tree
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Content-Type: multipart/mixed; boundary="===============1231692188=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1231692188==
Content-Type: multipart/signed; boundary="Sig_/UcJ+k.++mkDo1NJ71qEng27";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/UcJ+k.++mkDo1NJ71qEng27
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm-misc tree got a conflict in:

  drivers/gpu/drm/ttm/ttm_bo_util.c

between commit:

  6d9d5ba31dd1 ("drm/ttm: Refactor ttm_bo_pipeline_move")

from the amdgpu tree and commit:

  ef38321897cf ("drm/ttm: use the parent resv for ghost objects v3")

from the drm-misc tree.

I fixed it up (the code changed by the latter was removed by the former)
and can carry the fix as necessary. This is now fixed as far as linux-next
is concerned, but any non trivial conflicts should be mentioned to your
upstream maintainer when your tree is submitted for merging.  You may
also want to consider cooperating with the maintainer of the conflicting
tree to minimise any particularly complex conflicts.

--=20
Cheers,
Stephen Rothwell

--Sig_/UcJ+k.++mkDo1NJ71qEng27
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl22UUMACgkQAVBC80lX
0Gxj3gf/YpGb2wujp5HwPB1Juk892oY8c/DVCnHqOhNMCbqAryBTDwy9aZiH1uWA
adoUktY1SzHjYrlkMjfi1D2hp3If2NHWFm6BhNzy6Z11J1miQ7MIWyXBWJ7dMPoF
R+g/V+F8GYbB+3f+IlJuu9CZtotPrCuZdx2mUnD/Y8oV1YWhj+7/lUcPxpuZrOBC
HvckEPlqzpB9GeM+6P/hjiy9vbQBJUWsJ8qXq/wtF/+e+ourvpLzwVpgC/aOydPx
eq/eqvJ8Z5+eYPpNDTU19L49jvFGCWXuUjrRSskHMSrzeZI6smVaAYkokSQj/Nae
25fUeWgca7IwPq3/EMt3BCGqsG0Xjw==
=AJ4R
-----END PGP SIGNATURE-----

--Sig_/UcJ+k.++mkDo1NJ71qEng27--

--===============1231692188==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1231692188==--
