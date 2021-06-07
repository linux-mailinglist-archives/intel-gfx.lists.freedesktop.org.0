Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBD139D2FC
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 04:33:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56CD36E0EE;
	Mon,  7 Jun 2021 02:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AF156E0B6;
 Mon,  7 Jun 2021 02:33:05 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4Fyy8b4G9qz9sPf;
 Mon,  7 Jun 2021 12:33:03 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1623033183;
 bh=zJj9pnXbsRVN4x1k3a5Axd0SWXmOVfoPt99073WBUDE=;
 h=Date:From:To:Cc:Subject:From;
 b=MlCUDViwr0ZhmmXboCPopjqUv7SF8PRbMMLSveZtSKUQqP44xs0t+t3iwi79beSzk
 Wj4ud0GBc4YPy+O0CZCHWb1WTumFUzsQz/IoH5+6p4Z+lZx7Z8//fxQaHSlRE/5jG5
 1RqAm534r6wZHE6q+ON+lwCykWcbaf0SyYGOx5tpUmMF0OLU4IsqbrNuRUWxpATKIo
 vVzhGbN1mGyolkfjQAuJe2nQD2Y0XUGIZwYgvqtPGDg5yY8sNsUNRqTnhKtqk4eZ8y
 042kq5iPv7T1An9VxTU+eagvjKiCEtVZUKdnCq4poJ6kmR4NQBTeNhW9SPii6uXEcH
 6Wd46urMdObHA==
Date: Mon, 7 Jun 2021 12:33:02 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>
Message-ID: <20210607123302.446ccbbb@canb.auug.org.au>
MIME-Version: 1.0
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
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============1789802412=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1789802412==
Content-Type: multipart/signed; boundary="Sig_/b+1TpCNYac_XU6OZ37vakU=";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/b+1TpCNYac_XU6OZ37vakU=
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the drm-misc tree, today's linux-next build (powerpc
ppc64_defconfig) failed like this:

drivers/infiniband/core/umem_dmabuf.c: In function 'ib_umem_dmabuf_map_page=
s':
drivers/infiniband/core/umem_dmabuf.c:69:10: error: implicit declaration of=
 function 'dma_resv_get_excl'; did you mean 'dma_resv_get_fences'? [-Werror=
=3Dimplicit-function-declaration]
   69 |  fence =3D dma_resv_get_excl(umem_dmabuf->attach->dmabuf->resv);
      |          ^~~~~~~~~~~~~~~~~
      |          dma_resv_get_fences
drivers/infiniband/core/umem_dmabuf.c:69:8: warning: assignment to 'struct =
dma_fence *' from 'int' makes pointer from integer without a cast [-Wint-co=
nversion]
   69 |  fence =3D dma_resv_get_excl(umem_dmabuf->attach->dmabuf->resv);
      |        ^

Caused by commit

  6edbd6abb783 ("dma-buf: rename and cleanup dma_resv_get_excl v3")

I have used the drm-misc tree from next-20210604 for today.

--=20
Cheers,
Stephen Rothwell

--Sig_/b+1TpCNYac_XU6OZ37vakU=
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmC9hV4ACgkQAVBC80lX
0Gw5+gf7B6H+gNu20dyFmT7ojd+Og08t482xd1fGHSBr8dLRU9hgK2VbBYSJi4fr
5WEM/8SfnHVruJK/uNbP9R6AYMiMi3SYEX1dyxs6hHKC7BI5/pue24l8GjK+jSXm
6B36o8nRNDaEL0VrZ3LK0fQWS8A5LZKr60m9aRlqTTr9K22RGY2ki8PBIGTzXTh3
f3STRjnstiwPuamyMK0Gc7nPrO1wJpWrEacUubUrrvaC4frbIuAxZL8/zJmNhR5r
g0aBzW1baBRfrkgbLOeo6nw9fslXv6Mv3eFIHtBdKmQRfrMZPkpw9cvIoTDLhs00
CS/PzKMu/lgbn8gywX76uzcuPXtbrg==
=7ka1
-----END PGP SIGNATURE-----

--Sig_/b+1TpCNYac_XU6OZ37vakU=--

--===============1789802412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1789802412==--
