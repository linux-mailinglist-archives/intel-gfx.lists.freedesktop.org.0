Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E882F206D60
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 09:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94EF16EA59;
	Wed, 24 Jun 2020 07:16:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D630D89D67;
 Wed, 24 Jun 2020 07:16:29 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49sDw86bxfz9sQt;
 Wed, 24 Jun 2020 17:16:24 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1592982987;
 bh=a0AtYjVpf2EtorpXtR4hjU70CprKPBAdVDu1x8znnvY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WZ4Cc8DjJInEWszhfWlmHQPiAn5X7g4nwCWrVIYOm++6j1+szwyFdqvB9BZg1x6Wh
 n5QEXYpESJLT8AdwkSHFldiaAjyusSlodPr6F+75wFEhejYfBy8+NdJTc1/j8Ptu3A
 YuC3Y8OCloiE8f4dgzSxhpZvut/b5IzvmQUfO7wa5PZzjy0XV1GnlbtMywCZ7ZAkgs
 0iDKnfASCaFXkb0j+0sPx8SiNSBf2YrqP+IpJpksgrNfHXbW0DyZuLml72gvxXXLbp
 4seurs6zaGbqWfVKd5bCQAAfmktV1YaliKnmOfc1fgEX9YX43SEd4xLy2zA2E7/PcF
 T8cEYfbAQkGGA==
Date: Wed, 24 Jun 2020 17:16:24 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <20200624171624.0762edf5@canb.auug.org.au>
In-Reply-To: <CAPM=9tx5b1RaN5R4awqQ-BFpDrEZL1z05ZFv2MnGGS2t3mpBhQ@mail.gmail.com>
References: <20200617105929.534edd34@canb.auug.org.au>
 <20200624113452.54b72fcc@canb.auug.org.au>
 <CAPM=9tx5b1RaN5R4awqQ-BFpDrEZL1z05ZFv2MnGGS2t3mpBhQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the
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
Cc: Dave Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: multipart/mixed; boundary="===============1141615887=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1141615887==
Content-Type: multipart/signed; boundary="Sig_/xETYpMB356nDIYf/Upbevgk";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/xETYpMB356nDIYf/Upbevgk
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Dave,

On Wed, 24 Jun 2020 15:47:49 +1000 Dave Airlie <airlied@gmail.com> wrote:
>
> My bad, my local builds passed, as I had made the change but forgot
> the commit --amend
>=20
> Pushed out a new head with it in it now.

Excellent, thanks.

--=20
Cheers,
Stephen Rothwell

--Sig_/xETYpMB356nDIYf/Upbevgk
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl7y/cgACgkQAVBC80lX
0Gx2gwf7BUN/Z2HBMf+rZigkOqMDI+1NSbly4uC5QA+lQl/Ho3raWvRnlyyUNWWd
gaiLuKu0qFggDKDCygNKkpbmzRW8NxB1Xm6UDHN9ppjS/sN6+KdX5SRArJfpK/EA
awpI37mDAaTkPI/V+NZ091Hq0mTcMblwwzWmK4inR6qq1660xr+1yDXD4KozcCrE
vDUvhLA4spUWFrfQY+HxU+NzHXIWqSPKY+uj2ZxeNhSvTxxtLKr90gvqqMNdcbnc
x4Ey8qpfrtUud5oM320Y82tbFkOk2kXfBMJmmmEm/VMtb+JDNrocmS4uLOwwpAKC
YYd85duaRzXo8Z4sA+GEsJQePIkmLg==
=v8Eh
-----END PGP SIGNATURE-----

--Sig_/xETYpMB356nDIYf/Upbevgk--

--===============1141615887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1141615887==--
