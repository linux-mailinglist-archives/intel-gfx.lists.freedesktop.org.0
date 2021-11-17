Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0D7454547
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 12:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D94066E1F1;
	Wed, 17 Nov 2021 11:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC21F6E1F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 11:00:58 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4HvKjL3ZBfz4xbH;
 Wed, 17 Nov 2021 22:00:53 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1637146856;
 bh=RtfnGt8HIvX8gJjNg0RB+qEpTL+Cr6T2c8qv8d5pI0Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rti8rBfiUmCqx+F+bXUB2rB3TRL2dB570+jVuAxbpi4Z+yyuYuEhBfpe8PfI7A7H7
 lRjY5HZrPzrS/C9OxpuXxvVFf1rb9FfbwKDD3UER/YR8v7Rjml5Krq7R+V8fjTTppm
 RX3sqN8EoecqWVro0ygsuZ1FnN1dDa1iAyN3Sor41Ty3pk1CDk0shsxV3F2GjgbAAV
 1/PzreNP0kpvZQIlaEbdIrqUQFwNeAGVCJt7OOJwZ/yR+17jSfylCXC8Bg24JpWsoz
 eWc/9auugoUONJ6lv+UXED91ZfKWwqAgB4SNlNoKWW4kK7E3tDkgnA1guNDHUc/Chi
 2sv3GkVUdj99w==
Date: Wed, 17 Nov 2021 22:00:53 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20211117220053.179a82e4@canb.auug.org.au>
In-Reply-To: <163714535048.4529.4694769143307309201@jlahtine-mobl.ger.corp.intel.com>
References: <20211117100223.52c7460a@canb.auug.org.au>
 <163714535048.4529.4694769143307309201@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/WpZm5acPgFKXFiIr8uVD1kW";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the
 drm-intel-gt tree
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
Cc: thomas.hellstrom@linux.intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Matthew Auld <matthew.auld@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/WpZm5acPgFKXFiIr8uVD1kW
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Joonas,

On Wed, 17 Nov 2021 12:35:50 +0200 Joonas Lahtinen <joonas.lahtinen@linux.i=
ntel.com> wrote:
>
> + intel-gfx mailing list (Stephen, can you include this going forward?)

I have added that to my contacts for this tree (so, yes :-)).

--=20
Cheers,
Stephen Rothwell

--Sig_/WpZm5acPgFKXFiIr8uVD1kW
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmGU4OUACgkQAVBC80lX
0Gwtwgf/QNDmqkupa9pHTublHJve4GjVHVX+cQ0FNkZ6ZVlfXI8eM9lspa3PNcna
+3/e8s30k0xEUPsEgJw+tWM1aRQsSY4VcK2dR9doJJCwWnYWldjL8Kod+4jsslmQ
80Cz8sBIUwzI+GQADbAddiQtjQh0KKnhN5nSmgmieh0elip7UJxh/CGhHGIaMlIb
k6nC2u/NRaaRmA10+pZlJX7Bp0V5sblPdZAuxAnj83J37Y7TngyxCfq82MGmMHkr
qMWzawgN3CsMCaUxHTSU4V34yMqxuBAK2I8eKBf1rCmWfP/uG1a43UE3xgTrVMOP
jiooGKH7xjADdEBiDnvSM2aTuvnnPw==
=FIHS
-----END PGP SIGNATURE-----

--Sig_/WpZm5acPgFKXFiIr8uVD1kW--
