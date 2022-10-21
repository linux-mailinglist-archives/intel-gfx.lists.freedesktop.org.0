Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A4C606C58
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 02:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D19F10E232;
	Fri, 21 Oct 2022 00:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (mail.ozlabs.org
 [IPv6:2404:9400:2221:ea00::3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C5BE10E072
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 00:02:45 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4Mtl5m5Rfdz4xGT;
 Fri, 21 Oct 2022 11:02:36 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1666310557;
 bh=MjsN/eyeofQCiAF8hY6LImhgi5IuAOlTJYnxg+e5XII=;
 h=Date:From:To:Cc:Subject:From;
 b=htqxJ/s81/O5Nb0nGxtRIU1sQ+cNz9SmYkXxC6mGGVLs/zMniojTSUPPNkNxMB4lO
 1EjXixQE29xk2I/sNeJwy2fKYHsUwhaAdlLllUna8QVwPWLrPNyUxLN5tej2SEGxIa
 hD4crHPw0JStuFIf99kN/97nz1jYnJy89FBmrKa8xpognqql1tlZZPzRe7YVGAF9V9
 6Gbsu3TsBWYT0X2NatHPpusBEATu0IZ2BCrLjUGg/SRm0xa9y9LwDlAKcAUrZ1ubnt
 XgqwVdS4IZeihPIqLwQCYPDeZADGsPx38V8oF0eehUTo7qvlVt4ci5BghWnF/bxLCc
 j7yT5ceHOipUQ==
Date: Fri, 21 Oct 2022 11:02:34 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>
Message-ID: <20221021110234.51f9ab66@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/lwpP884_0BVkJrtlgfprAkY";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: [Intel-gfx] linux-next: build failure after merge of the drm-misc
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Zack Rusin <zackr@vmware.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/lwpP884_0BVkJrtlgfprAkY
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the drm-misc tree, today's linux-next build (x86_64
allmodconfig) failed like this:

drivers/gpu/drm/nouveau/nouveau_display.c: In function 'nouveau_display_cre=
ate':
drivers/gpu/drm/nouveau/nouveau_display.c:662:29: error: unused variable 'd=
evice' [-Werror=3Dunused-variable]
  662 |         struct nvkm_device *device =3D nvxx_device(&drm->client.dev=
ice);
      |                             ^~~~~~
cc1: all warnings being treated as errors

Introduced by commit

  7c99616e3fe7 ("drm: Remove drm_mode_config::fb_base")

I have used the drm-misc tree from next-20221020 for today.

--=20
Cheers,
Stephen Rothwell

--Sig_/lwpP884_0BVkJrtlgfprAkY
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmNR4ZsACgkQAVBC80lX
0GxliAf9HxvpCb9hc+2CQgGCkBWspRTmqUs/DDH0l3jQSuG0lNIsBi2n4Do/iU46
3zkQa/4ujPahMMbxZI1SxYtv/DV7zhduW5vSSBgC3jSe/9+78fpJpQg9Uhqv/0G1
H58j9c+DbFNv4oReEAKlsBoMpE8VpafFUDqN62UBwAyV5h1Cp6gWl+FM0Nygu0fP
JgGAdvt8RYfYG6Y2KI+nF976WnxIDF7WinEui91ZJinjsnsSy+ftwF1IA34Q8kXk
3M3vTFkGRszQh8hDD5rjAcc/7xBjM3XlbDb82Fp1y85hvPMjalggMcS2+7B+NcYe
GlwRzVWfOlmGUNd1wIyqGGAj3BLPnQ==
=7Au/
-----END PGP SIGNATURE-----

--Sig_/lwpP884_0BVkJrtlgfprAkY--
