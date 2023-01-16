Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C9C66B51A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 01:54:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B559C10E12E;
	Mon, 16 Jan 2023 00:54:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F224A10E0C8;
 Mon, 16 Jan 2023 00:54:43 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4NwD7k0tyQz4x1N;
 Mon, 16 Jan 2023 11:54:41 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1673830482;
 bh=EBOGXbwcbb87Bkp7IUfdt93GV/AbQEitRGQA5HtmKFU=;
 h=Date:From:To:Cc:Subject:From;
 b=oJ5HwAS6D8VskXVQyfXHC9iSwWR/ng1ZsGp98X9D41XHaL0kNmJBoosp4LauIVKe5
 /Odr3TLjuztOGG9/ppHwpCCK1ctwA7JUgr3f+85q4WIpXUysNhl0rA1wOFnTpriPRV
 m4yEIzW1mfHIkx8Zcvk7BNZAkEOOdlYdnCJrJPOF0atyWylcMFoOX1pwBQuye+j7DS
 9HkNFHzQsVFjw8/OhL783hTz2BJdnPcckqnr5QyFCfd2owobJhzFkMPbXsztoWOz6Z
 q1eioKhMzMUz/KFWhA/xQv+6x3s8utsE3iGrGTWEizcthGgnJeDQbcHdRPmLFDGa9r
 wCTJ2BS//OKDg==
Date: Mon, 16 Jan 2023 11:54:40 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Helge Deller <deller@gmx.de>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20230116115440.3f1909cd@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/4891LzL3eq9V4IvMn8hdC4+";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: [Intel-gfx] linux-next: manual merge of the fbdev tree with the
 drm-misc tree
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
Cc: Kees Cook <keescook@chromium.org>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/4891LzL3eq9V4IvMn8hdC4+
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the fbdev tree got a conflict in:

  include/linux/fb.h

between commit:

  5b6373de4351 ("drm/fbdev: Remove aperture handling and FBINFO_MISC_FIRMWA=
RE")

from the drm-misc tree and commit:

  72ac3535c2c5 ("fbdev: fb.h: Replace 0-length array with flexible array")

from the fbdev tree.

I fixed it up (I just used the former version) and can carry the fix as
necessary. This is now fixed as far as linux-next is concerned, but any
non trivial conflicts should be mentioned to your upstream maintainer
when your tree is submitted for merging.  You may also want to consider
cooperating with the maintainer of the conflicting tree to minimise any
particularly complex conflicts.

--=20
Cheers,
Stephen Rothwell

--Sig_/4891LzL3eq9V4IvMn8hdC4+
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmPEoFAACgkQAVBC80lX
0GwwrAf/VA6njrNk/Uny48sFLu68N7KA/wk8F+LOOsqSaxr8SOzUmTPpvqt/PTWE
z3An1Zji4W/3xtyQfqgi7QzYLosWd4lKkBHvNwvGmdYopxSR10DbGetPVwZV1zPN
GV3W5yKWRH/Rn5LiZwnDcwRJ/QqNjjUzSYpF98tKOMiqseWV2VxdPNs3W3Np9czM
cszbizauJXQy/AMssUu0Cv5OYcs6ALvK0WRrQyQHBl99V2w9zJi7q5j8BfGIcfUO
KafAjIOE27a0BUOzg2gluGBvrNOHAV2Th5Hjv9+Rfhu/C66iSjcwXmzWyxd+kTu/
ZBXkHKYcVCwbal4pmWUxg48Qh10KIw==
=+9UO
-----END PGP SIGNATURE-----

--Sig_/4891LzL3eq9V4IvMn8hdC4+--
