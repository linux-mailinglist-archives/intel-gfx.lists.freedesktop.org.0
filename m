Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61910494604
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 04:19:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D643810E1A9;
	Thu, 20 Jan 2022 03:19:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4AF110E21E;
 Thu, 20 Jan 2022 03:19:02 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4JfSQk1tDlz4y3V;
 Thu, 20 Jan 2022 14:18:53 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1642648736;
 bh=IV8TwQKMAHb7hOgZQjpd7Vrtv8hIvS1/1zG4v5vuIGs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JuLs1TPV4SqtWcTlui9lDDSdR4rxHTQhzPsiHwyKSHg6kM/iuYL95gQyU4O2eEjN6
 gG+8Fv8+/z1XpQdEgD1kkmJlR9Syhdx8Z4CpYgA0JN4A1ZGDY8VL1sYZGUyjtqT8ha
 I5S85QwoCyk776ky6lI755qZ0Fyj4nX0IBOFPcIX5VTG1a6y93H6JxvSiKJcKEMb4Z
 R+5MoxawzBdHgLyaAeSnGJmlNgQq6l4GexIkWzNQb0v7W3Svny9X0zYOwpInVzH4Ol
 vZplPNHpxgI/ajDYZAUFOAVarJhbgYA5qtwl8vBnRE2kskG2i+Kd5roK4JuHWcY50p
 53DTnD2Jsjzsg==
Date: Thu, 20 Jan 2022 14:18:51 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>
Message-ID: <20220120141851.5503b65a@canb.auug.org.au>
In-Reply-To: <20211015205422.53bec93d@canb.auug.org.au>
References: <20211015205422.53bec93d@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/tZ5OU4A5=5/3NosZ_1GDOXO";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: Re: [Intel-gfx] linux-next: build warning after merge of the
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/tZ5OU4A5=5/3NosZ_1GDOXO
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Fri, 15 Oct 2021 20:54:22 +1100 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>
> After merging the drm-misc tree, today's linux-next build (htmldocs)
> produced this warning:
>=20
> Documentation/gpu/drm-kms-helpers:451: /home/sfr/next/next/drivers/gpu/dr=
m/drm_privacy_screen.c:270: WARNING: Inline emphasis start-string without e=
nd-string.
>=20
> Introduced by commit
>=20
>   8a12b170558a ("drm/privacy-screen: Add notifier support (v2)")

I am still getting this warning.

--=20
Cheers,
Stephen Rothwell

--Sig_/tZ5OU4A5=5/3NosZ_1GDOXO
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmHo1JsACgkQAVBC80lX
0Gzxlgf+M86EA95Gn5atlw3iO9jKo07o8/alMcdH2RQORIIE3icWZpVgfc6INnNk
s0jfDzm57lemOW4eCWyi6U3RTx/+sDBaapJBRrzq4geXhUM2nQd4Qlu/KboxcZSN
rAJ4RMt2zyoOH0PCqTvJHEWrnplKwKbTd2UGv7ukqlQHCXqk08aH7FLi4PoYbhOf
pPCCR0+RT0qxET9YMmKiW0DYWfrBMIHguWCnzV2xu3N5ODUCr0DtHtui7f3Y95G8
1aRnpNEXpJWe7erAc9T9YVAL3CJOaRvCyHOfpD496NFA79kRQjiWe6rmF84tgV+7
v/QDUc7/JpVG5NJ2zeZKtIi+B+dr6Q==
=LDgO
-----END PGP SIGNATURE-----

--Sig_/tZ5OU4A5=5/3NosZ_1GDOXO--
