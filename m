Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FC043229
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 04:15:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFEBF891B1;
	Thu, 13 Jun 2019 02:15:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D886891AC;
 Thu, 13 Jun 2019 02:15:05 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id n11so18692668qtl.5;
 Wed, 12 Jun 2019 19:15:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=weatLZ9NSXiBe38NzD/EWYekaHcQFfxcWtn1w8cZ0uk=;
 b=htdeJxQxnR1BfhYe1X2doj4dWH79UdXCnsfqtpURm+zjv0wG/TxTBL9iCmhg4yfKhV
 aFnSVq6yxu576JFztFuAGhMXDCB6KFOc81h00BnN2QEOPWLBy29ZL2u0Ioae+oDzXKqH
 hwbhMl4kwDRCVy8wJX83yl868LCC6rXkGVO8EUKXZI2e6j/OIxtcL7tAIEV/joo7JmLn
 zWOcabpSNHwbxU6/hS1C30hDDIUcTpLGYIOp2wzgocYxwr5mL/IWjPpNeEQ9V0yeJNHq
 2/SorBZCeCc+CR1H+RoK74eA9cf6oQXn/reSccARlhyboJJT7SJgisUuwhppS/W+AVdX
 qjQg==
X-Gm-Message-State: APjAAAX3fEuJFsiwql4ovt8/vH20w+mjq2wC3qRTZXP8lNZD7S7CS7WE
 Djssz1oG2q0QVNIMep1Tg10=
X-Google-Smtp-Source: APXvYqzPsRDs+uYE09CIQI2S8IuU4l/6WIwsdH+QkpqAU0+vEnHXIrgom2LQaYCYHtX872DvbvdICA==
X-Received: by 2002:aed:3bb5:: with SMTP id r50mr69791659qte.89.1560392104538; 
 Wed, 12 Jun 2019 19:15:04 -0700 (PDT)
Received: from smtp.gmail.com ([187.121.151.146])
 by smtp.gmail.com with ESMTPSA id b23sm891739qte.19.2019.06.12.19.15.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 19:15:03 -0700 (PDT)
Date: Wed, 12 Jun 2019 23:14:58 -0300
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: Brian Starkey <Brian.Starkey@arm.com>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Petri Latvala <petri.latvala@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
Message-ID: <cover.1560374714.git.rodrigosiqueiramelo@gmail.com>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=weatLZ9NSXiBe38NzD/EWYekaHcQFfxcWtn1w8cZ0uk=;
 b=l1FigqiKfl8aGjC4eEvfdLjPsp+qNTyrwWFeKYBPb+7B1du79AzgZYUXqYgMUDUmZU
 +rhgKUrkFZJ/n+dedP9usi4wAjMJVLlJf84CQ7eX1HBgEcG8SY89eyfaeQEFj/Va5SuG
 pkVpIe1dw6MKzpBmezFo73ymf5dYg9vZ62N1cMDlM+skNOMoqRBm5wVwdF42lqKQJHg9
 d33a2fNnQrsS1tF8DEdRDyww32vH1isToGAWRbUbNsDED3sBzAM06P4sMBirdMPB2b6P
 HwsTaFyhTPZ7rNLrCXaYbv5lQQOeTMt0Lmj9Ly8CkRGoXhtj2lkDXbgX8XJXL+hs5zuh
 C3iw==
Subject: [Intel-gfx] [PATCH V6 i-g-t 0/6] igt: Add support for testing
 writeback connectors
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Content-Type: multipart/mixed; boundary="===============1179118740=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1179118740==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w2hus3bqse4zgnjo"
Content-Disposition: inline


--w2hus3bqse4zgnjo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

DRM already have writeback connectors support, which is a way to expose
in DRM the hardware functionality from display engines that allows
writing back into memory the result of the DE's composition of supported
planes.

These days, I'm working to add the writeback support into the vkms[1],
and I used the kms_writeback to validate my implementation. As a result,
I had to rebase the v5 version of Liviu's series, and I also fixed a
small issue in the first path (lib/igt_kms: Add writeback support).

Patches have been originally implemented by Brian, Liviu has done the v3
and v4 updates to them. I=E2=80=99m just sending a v6.

1. https://patchwork.freedesktop.org/series/61738/

Brian Starkey (6):
  lib/igt_kms: Add writeback support
  kms_writeback: Add initial writeback tests
  lib: Add function to hash a framebuffer
  kms_writeback: Add writeback-check-output
  lib/igt_kms: Add igt_output_clone_pipe for cloning
  kms_writeback: Add tests using a cloned output

 lib/igt_fb.c           |  66 ++++++
 lib/igt_fb.h           |   3 +
 lib/igt_kms.c          | 157 +++++++++----
 lib/igt_kms.h          |  10 +
 tests/Makefile.sources |   1 +
 tests/kms_writeback.c  | 492 +++++++++++++++++++++++++++++++++++++++++
 tests/meson.build      |   1 +
 7 files changed, 692 insertions(+), 38 deletions(-)
 create mode 100644 tests/kms_writeback.c

--=20
2.21.0


--=20
Rodrigo Siqueira
https://siqueira.tech

--w2hus3bqse4zgnjo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl0BsaIACgkQWJzP/com
vP9wShAAwUxKd6e+ZfaLU6tD+nchKtf2qIaB9Bnd+pBHwBGqPcDFlROYv7+tivw+
O3byk4ggHEjdwxq8QzE2nTWdrXudjjLBs9KGMVwd7cjyHJrYat7bs4GPmElrynar
V7u8TdTCi++g4MsNJ0sTeJG5u2/28s5g5xkiOkgx3SFsk+s08O8cKWMM2GE1j3me
BkpN7uvDDst7ckZhTlNVjVe4Nap5voMS+u8vbhF0/DdobqDG4j8gE3LIYY0C3NAY
fP6oc6UNqIkgCjiIOiYXvydOtJu1X/x+lUcL84O7Pa7wzAib3mSJoi8L7OAFTae3
JCvY8cLucAr5PL6EbmtKw84mG6vgVnMC0Ate7Ydqu/CPQ7emQ3SbPLtWMUpBE96O
1Y6jcuJuWvDeXkpb5/NOUk6os636AxT2Nbvtf1I3RUyptHXs8MdkKW1LdvLlVB6U
5DNcF9kc+kSXdycvQZuIFqOQNHo4A49od5Nt6g/pQvGYA03IgrrbgTB9YBSQbfaT
Ha5YPo8Gy8jitM/bsJn1VM8VyePyq890LgzrQ2V31yP9juHXXBqb1EkxRBYCuTN8
6/chFmWc2ynHeUpg+o3nITeBGOV62UoUNerbbmcwGeM0sSeg82edpDHUhPEckQtm
T9QAw/OcbTtRXOCqUVMXKg+EzxK7HulDaSK05oALL0z+VL+uKgg=
=c007
-----END PGP SIGNATURE-----

--w2hus3bqse4zgnjo--

--===============1179118740==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1179118740==--
