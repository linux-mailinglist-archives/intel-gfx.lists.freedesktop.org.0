Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8CD1C804A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 05:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 964436E90A;
	Thu,  7 May 2020 03:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FB496E040;
 Thu,  7 May 2020 03:04:37 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49Hdbk5Nd1z9sRf;
 Thu,  7 May 2020 13:04:34 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1588820675;
 bh=a+F66NvecwiCtPS7aubjUnfdcDz9hKUlOuxsLFVVZdA=;
 h=Date:From:To:Cc:Subject:From;
 b=m4+31SmWOo9CFW7NN0hyV4U94NU1otuQbA4aEKKNVNToudihSgAnTSl9nAXwSa0Ab
 sDKyEUiAu/3vwW6motWQNJ86hAjKOIEBw7kjBD+bB95EIugtAYubXUEPqk92NfwsZU
 Hcqv+xCL5Fp8EIWg8Mmu9dquBGmfZNNvU15fakfvZNK0r2Cq0fw9Gfcr8ddOVoLdJZ
 AetFpXdAr4v44InTbC6zZP73CPnbTeFgfjuXHTo9bihhg74wr6NVbE3BPk95RR+nIj
 jD1yBYYgzssU5ZRfraY83MsVH4feAMUXzI+hhEvcT0vwW18pUh7wymm4EfPgrj3RIt
 wMjZ978XFhPCw==
Date: Thu, 7 May 2020 13:04:33 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>
Message-ID: <20200507130433.27955b1f@canb.auug.org.au>
MIME-Version: 1.0
Subject: [Intel-gfx] linux-next: build warning after merge of the drm-misc
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
 Sam Ravnborg <sam@ravnborg.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Harigovindan P <harigovi@codeaurora.org>
Content-Type: multipart/mixed; boundary="===============1125624105=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1125624105==
Content-Type: multipart/signed; boundary="Sig_/IMMi3Hd2LSA7IcZxxDM+k=7";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/IMMi3Hd2LSA7IcZxxDM+k=7
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the drm-misc tree, today's linux-next build (x86_64
allmodconfig) produced this warning:

WARNING: modpost: missing MODULE_LICENSE() in drivers/gpu/drm/panel/panel-v=
isionox-rm69299.o
see include/linux/module.h for more information

Introduced by commit

  c7f66d32dd43 ("drm/panel: add support for rm69299 visionox panel")

--=20
Cheers,
Stephen Rothwell

--Sig_/IMMi3Hd2LSA7IcZxxDM+k=7
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl6zesEACgkQAVBC80lX
0GyMmggAn1kCCD1zMQkWORF0w7eNpngLumwm2QsWsEBC54XP6OTKJnQWsAImgxaq
Y0BeHLUvNygFlhlcOCwSgBNgEU4V/Xe5oyvEk/G1wwF79VtvUCSj6lnqVPhbwgZ3
rZALNBjk1uK5izQLc6WTszEF/1QhkAKzombsaJQXVIk1f5DpdNLZ8GdBZ1Cp/Hlq
9EWsw0COE3tDvQY+l+4H/NC8qKIftJkOMQmb8vtyGSyVlqOixW6ojrvQb7vNxR+O
lGJMFf7vMP5I83En+tD7cE4eCeStSxiIv6enrpyqodeehYXj5/tfD0Wk3jg38NUe
DVaIGkYGb/qP02vl9NBQfDffHQUrEA==
=MdCf
-----END PGP SIGNATURE-----

--Sig_/IMMi3Hd2LSA7IcZxxDM+k=7--

--===============1125624105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1125624105==--
