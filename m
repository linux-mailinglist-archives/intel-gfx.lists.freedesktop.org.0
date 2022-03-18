Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 922454DD221
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 01:56:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7016110E02F;
	Fri, 18 Mar 2022 00:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5F4110E02F
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 00:55:57 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4KKQYK01lsz4xw9;
 Fri, 18 Mar 2022 11:55:48 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1647564950;
 bh=dLiSWckYYtCyaQxnZS0EI/Fqn7krxPz0DTfM9jp/tCQ=;
 h=Date:From:To:Cc:Subject:From;
 b=Shs3v3BozHrVRzw0s2N7WjkWfMma0keeLaMClMZYInrv42EXvb9BicZhFj90cLePZ
 vUHLtX2Ry/Ic8oHeqINJBj85Ge9yxFCSRqVlQFP5UOmBjR+L9wJRSUGfs4WHavm3OM
 1wXbXhFwmhjFzPkIhmdjfNastSY+OsE9GALor2I1iYLEze2Eb0Kt+CV3owe41nD2WA
 hJRc9vAmk6YlTSjh4XKqr74LaNsD+2AEr5fAQeLVAm74N+5q9Wcw4COor5Mjv7/n5Q
 iwO2hjEX4PtGcEiVI+eyNYAVpxs/cVCMLW72JHKn1vB4DLn342TRn1HmybaPwuxWcy
 djKtQ61L5TWng==
Date: Fri, 18 Mar 2022 11:55:44 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Dave Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>
Message-ID: <20220318115544.0c977415@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/vG/0mWiiww1HR.wIUTPt1mc";
 protocol="application/pgp-signature"; micalg=pgp-sha256
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Julian Braha <julianbraha@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/vG/0mWiiww1HR.wIUTPt1mc
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm tree got a conflict in:

  drivers/gpu/drm/bridge/Kconfig

between commit:

  3c3384050d68 ("drm: Don't make DRM_PANEL_BRIDGE dependent on DRM_KMS_HELP=
ERS")

from the drm-misc-fixes tree and commit:

  803abfd8dda5 ("drm: bridge: fix unmet dependency on DRM_KMS_HELPER for DR=
M_PANEL_BRIDGE")

from the drm tree.

I fixed it up (I just used the latter) and can carry the fix as
necessary. This is now fixed as far as linux-next is concerned, but any
non trivial conflicts should be mentioned to your upstream maintainer
when your tree is submitted for merging.  You may also want to consider
cooperating with the maintainer of the conflicting tree to minimise any
particularly complex conflicts.

--=20
Cheers,
Stephen Rothwell

--Sig_/vG/0mWiiww1HR.wIUTPt1mc
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmIz2JAACgkQAVBC80lX
0GzqGwf+JdNbV8TunrhuNZ+HguT1OG1W5wAGXpTFB4TEhHGczJML2kuo3/3Z8ata
N+bicMVbWsdsYDdWRxB0i5LkQ3R4D58BVuDLPo7D0/tqhT0PiSRmtCjox5GBUx6a
cVQY/F7iAjKkvbe5Y1HkVO6luHLutiGZhRPM4HU3Y/CA8cj7AJEGglxYchQkUSOl
vyLMN/C2lVEHAeg0ue3OMYCGFdGs3n/shu//0dmW+3uAVpzzE4dTsd0aRbFivfxV
yKi9mOeFT5eciBhdfXgbsDMfRdluaH4FBt2HPROobFf4f841vghuJn24AzZJ1zn9
6SqqlWKJu5r1OX69XZv00wFSCPMtbA==
=Bo5s
-----END PGP SIGNATURE-----

--Sig_/vG/0mWiiww1HR.wIUTPt1mc--
