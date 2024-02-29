Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D62B386D706
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 23:51:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3448510E666;
	Thu, 29 Feb 2024 22:51:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=canb.auug.org.au header.i=@canb.auug.org.au header.b="ds+bej6Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4FD910E666
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 22:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1709247092;
 bh=LPCpXV6ax3+zE+7swMWTqWLqQvKm1reZqR9aSLrDnVc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ds+bej6QU95u0mHnKu/+3B0iWBVwGCU4nskNUbfpByJFprcw/IHy2gAYOWYu6mAir
 am1Kkhxr7vqp6BiwpzOxPFI58NWdj/PieEhThpQOkqmFc4nt6NdgFmxXEhEK/roySw
 l8+/IIhTDTXToh3xhsjWNWQ0SB0ZA4+jj2IabdPo1RaVfqfmbZD6UOPnyHkLYWFvPA
 O8I+oIISM4XArGZP/lesIknMpb2pSgwGBgc3j97OO7OQ3YPKvcI0mijw/FL8wVDlk6
 X/aX98vJZUtiMtYi54Poy4e0IHD65dlGuApYsdHvn4gahD7wL6HG8y5E3p9boxiFPb
 rrIS30b3wKr2g==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4Tm60N3CFqz4wcY;
 Fri,  1 Mar 2024 09:51:32 +1100 (AEDT)
Date: Fri, 1 Mar 2024 09:51:30 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Cc: jani.nikula@linux.intel.com, intel-gfx@lists.freedesktop.org, Ville
 =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915: fix applying placement flag
Message-ID: <20240301095130.663d9a91@canb.auug.org.au>
In-Reply-To: <a3a87723-6fff-40c5-aca3-0c6b5a13da82@amd.com>
References: <20240226142759.93130-1-christian.koenig@amd.com>
 <a3a87723-6fff-40c5-aca3-0c6b5a13da82@amd.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/JTJYy+dUAWLmdc1aQGNbXoQ";
 protocol="application/pgp-signature"; micalg=pgp-sha256
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/JTJYy+dUAWLmdc1aQGNbXoQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Christian,

On Thu, 29 Feb 2024 14:01:05 +0100 Christian K=C3=B6nig <christian.koenig@a=
md.com> wrote:
>
> Gentle ping. Can I get an rb for that?

If it is me you are waiting for, I am not really able to review it (or
test its functionality), but I did apply it to the merge of the drm
tree yesterday and it did fix the build problem.

Tested-by: Stephen Rothwell <sfr@canb.auug.org.au>	# compile only

--=20
Cheers,
Stephen Rothwell

--Sig_/JTJYy+dUAWLmdc1aQGNbXoQ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmXhCnIACgkQAVBC80lX
0GwMAAf+LN7jRl0sesj+8UQx3ghKtG0bJFEbG81yuOGsVsTqhtvR1H75Q6GJEtAI
stdZNbqIuiE2tBJAnwzMytSsHuKp/HFw3XeJSMFWtN+OmV3VhF7pKnYrMmS/nqRp
VlX4iYCOk4F3G4aesMgDmrnVPpXLEb1lo0LQ0ePmOAfKy5fxVXpN8Lo5nvdc+CRk
eNkpMQxwFGk+9pRpATzi3VpDajfPQutiY04PwCbHNh4lUGLnAzy8fSa+SWwCjcfi
XL/4FythK4aGnLe25k75Q5xHR8fnECz9efaYXZ3RzE5r1tzFLr9MFc64b8bW6ZdJ
xHEx7WSggjo/VgdcQl6Fvs2Bfa0cGQ==
=jzEZ
-----END PGP SIGNATURE-----

--Sig_/JTJYy+dUAWLmdc1aQGNbXoQ--
