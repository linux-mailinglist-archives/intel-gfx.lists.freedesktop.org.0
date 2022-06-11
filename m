Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D98685472D2
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jun 2022 10:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D63A510F07B;
	Sat, 11 Jun 2022 08:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (mail.ozlabs.org
 [IPv6:2404:9400:2221:ea00::3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B4A10F07B;
 Sat, 11 Jun 2022 08:21:26 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4LKrQ95RrZz4xZ4;
 Sat, 11 Jun 2022 18:21:21 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1654935682;
 bh=ZeeofygISUlKgJuLt9vZMtTqPke/ZoxpfwDT3rX/RPg=;
 h=Date:From:To:Cc:Subject:From;
 b=rKu3NU811N8Q41IZIJHZ466djR070ylBN6Q223DtAaTw9oSj0g5FL2nmybpb0meXD
 wgF1vk9nGV9UQqDMHSQNfpiJFjdddzg5DjLoej+YKC3cU0pDbnewC1JQlo5nLGCNr3
 q6wzoR3DJenMyGEfHaXNF4NKnMwaqe7NnPRd5ouzkCCuHM/C8xzuMYLvlh26xgjux4
 CEIpQMu2iVTaEbTYl1oLeWupctnMFmRbXDsLybleZ9K47sEkXzm5sdIKayeG3j6qvi
 3aEbHtYtBG/i/qUWNf/z9YO6kKuvefjUlviWLZJY1M3F+wdk3wxXCKQiTE6u347HBp
 1zp/+gNPZ0qNg==
Date: Sat, 11 Jun 2022 18:21:19 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>
Message-ID: <20220611182119.4e115fba@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/+H+b07IYNTOp+oLDZpTHRFQ";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: [Intel-gfx] linux-next: build warnings after merge of the drm-misc
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
 Douglas Anderson <dianders@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/+H+b07IYNTOp+oLDZpTHRFQ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the drm-misc tree, today's linux-next build (htmldocs)
produced these warnings:

Documentation/gpu/drm-kms-helpers:241: include/drm/display/drm_dp_helper.h:=
377: WARNING: Unexpected indentation.
Documentation/gpu/drm-kms-helpers:241: include/drm/display/drm_dp_helper.h:=
378: WARNING: Block quote ends without a blank line; unexpected unindent.

Introduced by commit

  69ef4a192bba ("drm: Document the power requirements for DP AUX transfers")

--=20
Cheers,
Stephen Rothwell

--Sig_/+H+b07IYNTOp+oLDZpTHRFQ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmKkUIAACgkQAVBC80lX
0Gz6nwf/Z8yBlPN9G9VaT7Ebp/99txDRoKWZIjXf5gv2u1s09n8ZDTA0k/8uyCdg
OuSX7bDcDH0fPT1qn9+92x+9BzEZBjdr/3sVTww5kDTFdJ/hpmXDT2k67YwQUquA
SK8Zh4Mbk0Fc928br2rxir2FEPFa+uwBQz4TORjOjg+ZdBotGCnfyY7OnNvO4/jF
OSofVI9jz+jIp8eCcyDVHlPMOjKbVczmv/PivrQjQLXfVWdVXKMaazmEui4+gSuc
W7zcQIwVVdfRN/eEaKRFgLvC0sKRqHZ2eizzXnq+Aon9dYsGM64ZJwDvaefBaZaH
hshKRUi9A0TW7eF6B6uq0wkcNQS1Vg==
=6AMN
-----END PGP SIGNATURE-----

--Sig_/+H+b07IYNTOp+oLDZpTHRFQ--
