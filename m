Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D1E34A37F
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 09:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D0486F37F;
	Fri, 26 Mar 2021 08:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (bilbo.ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCEFE6EF3F;
 Fri, 26 Mar 2021 08:58:43 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4F6G9C6jsQz9sS8;
 Fri, 26 Mar 2021 19:58:39 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1616749121;
 bh=mxCP5CGbHH823CsHkk3eybzLBXaXgpboct6zBS6d3t8=;
 h=Date:From:To:Cc:Subject:From;
 b=nGOjt4WCwwGLBojfz6Xws6Z1zeNfDKbfRagwLSSU1d1wg6wofx3vwUQw+i5dLI4Gq
 bXz067u2VN5wt301IHuPK+TocV1az0fZFtUpTHBWZLY5OnRnQPKCiXULLUBOEGNYFt
 QUviae3AzZMBJAD+btpdWMGEODt5FFoYizdA/iKmQZ2RseCw47d7n3YvfbNQniWRei
 v3Sz73CVNgaoV/1RsuRkSpM/0UJhuxB7HA5MxMl9/MOVzosGIqjvKQT3kvmFHTcdU4
 5Lx2AI9gtCeI/QvRf2XKLtP7wr/BjAmkP7p0ILqAZp+dymGSFtFVEMYLqluzIbIllT
 B9wgubqsyF7Zw==
Date: Fri, 26 Mar 2021 19:58:38 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>, DRI
 <dri-devel@lists.freedesktop.org>
Message-ID: <20210326195838.5ad4973b@canb.auug.org.au>
MIME-Version: 1.0
Subject: [Intel-gfx] linux-next: build warning after merge of the
 drm-intel-fixes tree
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============0622365846=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0622365846==
Content-Type: multipart/signed; boundary="Sig_/=LeT9U32PuvBr+yiCz4GAjz";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/=LeT9U32PuvBr+yiCz4GAjz
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the drm-intel-fixes tree, today's linux-next build
(htmldocs) produced this warning:

Documentation/gpu/i915:22: /drivers/gpu/drm/i915/intel_runtime_pm.c:423: WA=
RNING: Inline strong start-string without end-string.

Introduced by commit

  8840e3bd981f ("drm/i915: Fix the GT fence revocation runtime PM logic")

--=20
Cheers,
Stephen Rothwell

--Sig_/=LeT9U32PuvBr+yiCz4GAjz
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmBdoj4ACgkQAVBC80lX
0GyOTwf+KnUPZ/ON+sibMKESXBQOAItQf2jogwrxO3SnPlq81kg97LVsS0DG2F1f
ZYt6ID31gHskLun1PBPTuy4hQv5czb4HA4iBz2CVMkLRsv3P5hgadaCflyH07c9K
a36dqWxQZbO9iOo53T3LVKE5CjaWneabnF5TsSCstb9Q3HLipkZSWl1WmMQKXj2y
SvUy8VWAtqNGNsGeymJBX5aZ9p9y7PcyhHG1xg2TC1zDPxlooRoW5DI97UoSCZJg
pri8G7FB43XROjuCfSRqK1ujrDtWNdFzAsGNbqBHTayqlAGw0025Z9gi3v+PmZdt
iq5qTBR8Z2LGYvTipmWczadhsv7pmw==
=7wPl
-----END PGP SIGNATURE-----

--Sig_/=LeT9U32PuvBr+yiCz4GAjz--

--===============0622365846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0622365846==--
