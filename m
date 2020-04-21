Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5D41B1B68
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 03:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4443B6E211;
	Tue, 21 Apr 2020 01:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 064A16E200;
 Tue, 21 Apr 2020 01:52:50 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 495mmD1y73z9sP7;
 Tue, 21 Apr 2020 11:52:43 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1587433968;
 bh=dcUAjJ2YJIPcKjtL3wg3Tuk27IdwMehCCVY6JTOAw1E=;
 h=Date:From:To:Cc:Subject:From;
 b=JNdxsR9PF+B4CRxWmv3jF7EQ02zp/iKtW9THCtCW9RpWDwZQtjW8U7p80ccJr5hae
 ggw2Ok0fm3xKBrEOAdtl5I4LSMdXnSwSSIsqp73ezcimqFMT/eUp3OzDn15Yv0pgPH
 3sEbA40XxqsMLKK5Jb7G+tg+GFqqIBAqI/sRkdrIVh2f32hP+GggeEIeFY3otsmVyZ
 2sMo0EMGYGt0+PzyaIy4SUGJDfOBnBaVDeO08L252EaWxL9WDz8Hypos1h863ppnzZ
 XWQGwemazVDpiuCH6SjvSk7sj/ooeOYgwqgVZudsvFiJF0LsMR74xurp7/8DxfBsOe
 EHyU/6k6NaI3A==
Date: Tue, 21 Apr 2020 11:52:41 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>
Message-ID: <20200421115241.704f2fbf@canb.auug.org.au>
MIME-Version: 1.0
Subject: [Intel-gfx] linux-next: manual merge of the drm-misc tree with the
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
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: multipart/mixed; boundary="===============0465619484=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0465619484==
Content-Type: multipart/signed; boundary="Sig_/q6d+VS6IJMID_hHtC8zLY7g";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/q6d+VS6IJMID_hHtC8zLY7g
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm-misc tree got a conflict in:he drm-misc=
 tree with the drm-misc-fixes tree

  drivers/gpu/drm/tidss/tidss_encoder.c

between commit:

  9da67433f64e ("drm/tidss: fix crash related to accessing freed memory")

from the drm-misc-fixes tree and commit:

  b28ad7deb2f2 ("drm/tidss: Use simple encoder")

from the drm-misc tree.

I fixed it up (I just used the latter version of this file) and can
carry the fix as necessary. This is now fixed as far as linux-next is
concerned, but any non trivial conflicts should be mentioned to your
upstream maintainer when your tree is submitted for merging.  You may
also want to consider cooperating with the maintainer of the conflicting
tree to minimise any particularly complex conflicts.

--=20
Cheers,
Stephen Rothwell

--Sig_/q6d+VS6IJMID_hHtC8zLY7g
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl6eUekACgkQAVBC80lX
0Gz6JAgAkmrmiMLfCI2OjzKabtaC7XpRHlyRj3kBAUcrMAJ5SJyTWqAg0XRSbh4C
JUNvPZUthTxLKvOgI3JaTD3Ue9/9AkExIAxM5lc6sMG4H5bV+6xAAr0vdkFxW4k4
EwZ1Ejd3tHr+CTz8X5CB27195yC3vq0TTxhE6F7nXIxr1/VAjL5iJ8eM7jhj6myh
FtOb7GQxs9rSaa6d85ZiCtop/C1j/e6jccrtNH9XHRM54ppa/7yTwEpSwnnN9Vs9
kz85bKzuZ+1Lv2z2LQlynykF8WWgclyeJI/S900Dkt1/h4d6b+Q2a2RHCAmwBe98
lwkK+BQb1YLNEtXWkQ7+MGHswJxSQw==
=JWOC
-----END PGP SIGNATURE-----

--Sig_/q6d+VS6IJMID_hHtC8zLY7g--

--===============0465619484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0465619484==--
