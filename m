Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C911427F54
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 16:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D7FF89E7C;
	Thu, 23 May 2019 14:16:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (bilbo.ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A50089E7C;
 Thu, 23 May 2019 14:16:32 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 458s4X21CBz9s3l;
 Fri, 24 May 2019 00:16:27 +1000 (AEST)
Date: Fri, 24 May 2019 00:16:25 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190524001625.0b6fecf9@canb.auug.org.au>
In-Reply-To: <CAKMK7uHvUFtRNn5j6TnmBrs5ndkSuNwJWzB026j2zczaV9O_Tg@mail.gmail.com>
References: <20190521105151.51ffa942@canb.auug.org.au>
 <20190523115355.joyeqlmbjkufueyn@flea>
 <20190523230409.31da92b9@canb.auug.org.au>
 <CAKMK7uHvUFtRNn5j6TnmBrs5ndkSuNwJWzB026j2zczaV9O_Tg@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=canb.auug.org.au; s=201702; t=1558620989;
 bh=WsIW0FmrKkBtYx/wiqj3MjiS7Q+nBePddm0LgdfdDwY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gFzdV++gRIpZ+OXDXht+iOJ1FqRRj3is6qURii94jKbkAUTTuBOKwbY375wVYuGr7
 PiI1SCUSKBkQBQf43RzCgzgmavRa8rxI3tXdiIRmChy9J/+gNCoNI+eXqim+8PeDoJ
 lo8ECVRTwffI7SRzShryohIAJ29JY7ipSPU1Rjr2vGcduf2vtoMlsfrrMM4jg1XKF5
 DmsUuVYzL8e6ir3aGglIafJ22zCo1PGV+pD+R58dBW11HbHetG3nBsrn8fVd1cjGFT
 y7iNg8/MBXY+55LNdTA17w/JklgmaxOwHs8CkOiwJaodxhjffYWNyJVcCfm37mcHpN
 xx84l5XRfpqKw==
Subject: Re: [Intel-gfx] linux-next: manual merge of the drm-misc tree with
 Linus' tree
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jyri Sarha <jsarha@ti.com>, Marco Felsch <m.felsch@pengutronix.de>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Sean Paul <seanpaul@chromium.org>, DRI <dri-devel@lists.freedesktop.org>,
 Thierry Reding <treding@nvidia.com>
Content-Type: multipart/mixed; boundary="===============1448063731=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1448063731==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/Lto4Vqh.Sf2uq.agtHE_J7H"; protocol="application/pgp-signature"

--Sig_/Lto4Vqh.Sf2uq.agtHE_J7H
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

On Thu, 23 May 2019 15:11:15 +0200 Daniel Vetter <daniel.vetter@ffwll.ch> w=
rote:
>
> That commit is on top of drm-misc, and somehow the .txt version has
> been resurrect in drm-misc-next (so needs to be re-deleted too).

My mistake, the conflict went away (due to the back merge) so my
scripts assumed the file no longer needed deleting.  I didn't actually
check to see if it was still there.

--=20
Cheers,
Stephen Rothwell

--Sig_/Lto4Vqh.Sf2uq.agtHE_J7H
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlzmqzkACgkQAVBC80lX
0GzjnwgAmiMZYg6ACSWYMNWAUn6//4dvhxdK1F1onb3ap1eSKnfwXy8C27qChOif
cNQ0vUXxhpyL+oI7fa0lh1L194r0XosPDfjweNoi2YcKZB/C8Gc0ELbNzLyWAl4Q
gwUTl666k2vCwRHtpZPEFCSDV3rvNwOnXqn44n5I4g4w179enkkprQ+Ln/ZJZmVq
yk1/n4SnE6GsVBzlKwsI2bjqmLqCL+eWLzELzxH9zYfvvJdJPNuD0TKODL6G5biH
UoZHxBpiF5wHr48cqbNyrqwvp/Jlvq/+TNh0gbLxZdi/0Q8ZudMzNlgERqW26jmz
NmQSVUCd+zPcdPEveqiZ9436fJG/Gg==
=yq0b
-----END PGP SIGNATURE-----

--Sig_/Lto4Vqh.Sf2uq.agtHE_J7H--

--===============1448063731==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1448063731==--
