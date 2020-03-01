Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83557175111
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 00:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFBA06E433;
	Sun,  1 Mar 2020 23:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0DD76E52C
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Mar 2020 23:43:33 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 48W0G76Sfqz9sSQ;
 Mon,  2 Mar 2020 10:43:27 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1583106208;
 bh=gIZXNiNPVslt627TKckA0B3yIPamJysGD6GIC0Ae2QI=;
 h=Date:From:To:Cc:Subject:From;
 b=JwLHxczlDseMQdo8piauim84SpJyz9o0/zXn+L9P1vjrw5erU6ycw3BrIZGNa98wS
 yVYq9XU2UmIKMw4D0RZekbjiID4eieeqSdNoAcTkYlkmRUUY6c2ffrrtEtStkSMOM4
 JAxgNloLTTTVqcnIXiIjGzWgmUvGV5qcQrfTomDCtyCEG5HApLJsqe64+ej6K0Lpe9
 82+/gTpSC6scjci8AL36ArZboinHyaZXjBVxwf7rQx+jewFwKdGeHR9slbQRrBwImo
 uakjvyIrOfzW+hsdwtUMO8n57qb4jrcyLRvcYZDdNXarHyqbpq5cgi7rjAtqDNrAW0
 Z7rKKmPDs4YUg==
Date: Mon, 2 Mar 2020 10:43:21 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Dave Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>, DRI
 <dri-devel@lists.freedesktop.org>
Message-ID: <20200302104321.26803fb6@canb.auug.org.au>
MIME-Version: 1.0
Subject: [Intel-gfx] linux-next: manual merge of the drm tree with the
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: multipart/mixed; boundary="===============1844011565=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1844011565==
Content-Type: multipart/signed; boundary="Sig_/wIzYF3MvTJ9821ko1+UV.eo";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/wIzYF3MvTJ9821ko1+UV.eo
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm tree got a conflict in:

  drivers/gpu/drm/virtio/virtgpu_object.c

between commit:

  6be7e0733548 ("drm/virtio: fix mmap page attributes")

from the drm-misc-fixes tree and commit:

  18b39fb975b7 ("drm/virtio: add virtio_gpu_is_shmem helper")

from the drm tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc drivers/gpu/drm/virtio/virtgpu_object.c
index 3af7ec80c7da,c5cad949eb8d..000000000000
--- a/drivers/gpu/drm/virtio/virtgpu_object.c
+++ b/drivers/gpu/drm/virtio/virtgpu_object.c
@@@ -98,8 -123,7 +123,8 @@@ struct drm_gem_object *virtio_gpu_creat
  	if (!bo)
  		return NULL;
 =20
- 	bo->base.base.funcs =3D &virtio_gpu_gem_funcs;
+ 	bo->base.base.funcs =3D &virtio_gpu_shmem_funcs;
 +	bo->base.map_cached =3D true;
  	return &bo->base.base;
  }
 =20

--Sig_/wIzYF3MvTJ9821ko1+UV.eo
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl5cSJkACgkQAVBC80lX
0GwgUgf/YEcABNQy6d1hVxM974xgFj1/0taBQ0xWzG7FxL25ImmMacUZJFCjWWzh
tON1pgmXeyxLS5tBJPtOJ0al6s4pWY05Rvb6pTcGi62QqIw+ptDLvznbkuEb2L52
NznfnbqT9PaZJqp/fHP94u8Zx3gAvsLEAAnCxyPPaQm60CYiWxWUX3/biUp4KwgI
eixKGPk0KydJgY9fnQDMHV14u3J99VMCm80a2uTbdJj6SIVuEP5rWJRRw1/HzCUh
180Nv4uXRlRrXXjzowHbISyLYSSpP8ym3aBim9ORP0Y8RQkJaHWtaVpbgT959pqv
ZSTHJHjjyW1w1ZvCAWSHDi4bmikYUA==
=J+7D
-----END PGP SIGNATURE-----

--Sig_/wIzYF3MvTJ9821ko1+UV.eo--

--===============1844011565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1844011565==--
