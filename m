Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 180E1DF9F1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 02:54:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDAE16E2E2;
	Tue, 22 Oct 2019 00:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com
 [IPv6:2607:f8b0:4864:20::741])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 933516E2E2;
 Tue, 22 Oct 2019 00:54:51 +0000 (UTC)
Received: by mail-qk1-x741.google.com with SMTP id w2so14690327qkf.2;
 Mon, 21 Oct 2019 17:54:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=NgaB6lXbhnxzqNjta/eQuvAKxlziMopir8XVRFfiKfk=;
 b=kpAYqK6ExmS77vaiTbZ6vWG7VQ7QXIEOzwJBgJJ9LkQldriXP8Qrho+Dwsi5RknUvT
 4XY2C/l6gFZ0YQjDLtZhUzIFhC5h+tY7iCLa1xVqfhn7CMXK+3HeRqE06hCBAE1YZxC6
 ASh/0fs9lMnzd7rkZKe43R0Ry97d/OaMjtD7giN4V9L/mxut9cCzsX9n0De6GtxeBVVQ
 9YBM1fb1waPp6YVAH0gAJk/ghndtpPsUi6ZPntWA/83J6z1/Y5Sv1/vfcjaBjbRlJk+M
 jaHX0T+jZOcnZ4Jc/9ZcyVK0CFZlvoxvRYgtP8Ozp04YSrh1Ds6tWTzCnigP7fDcqsId
 /+XQ==
X-Gm-Message-State: APjAAAVvdEj67rYr9IlKkKOB8ZN+nFhEHF+fywliBqlockXC4mHWT6oX
 jjImPD+gNiQdUuHhF/q/jhs=
X-Google-Smtp-Source: APXvYqzAmtaDKwd6RK7WkmHJaZcg24JYmj7D8u1dsd5WQOL4ZL75rq8/hugGTDI47Zj0pEjY6W2G2g==
X-Received: by 2002:a05:620a:743:: with SMTP id
 i3mr657757qki.268.1571705690354; 
 Mon, 21 Oct 2019 17:54:50 -0700 (PDT)
Received: from smtp.gmail.com (toroon12-3096782342.sdsl.bell.ca.
 [184.149.38.6])
 by smtp.gmail.com with ESMTPSA id c25sm8236585qtv.71.2019.10.21.17.54.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 17:54:49 -0700 (PDT)
Date: Mon, 21 Oct 2019 21:54:48 -0300
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: Simon Ser <simon.ser@intel.com>, Brian Starkey <Brian.Starkey@arm.com>,
 Liviu Dudau <Liviu.Dudau@arm.com>, Petri Latvala <petri.latvala@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20191022005427.mwwgswmt6r6a45tk@smtp.gmail.com>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=NgaB6lXbhnxzqNjta/eQuvAKxlziMopir8XVRFfiKfk=;
 b=bIPa//1vJVymuqQYkiCURzjhzvnQ+zwtpad0vbFpgcSPrdbDNpAc6VPMKXKAFMjQzg
 GrPjd6X1Ug4DCiNd1ouo5zpdM9qZOGIhrigQFFpXXCsc5is2iYJl78PyisdHKCs5RLvw
 FBQsxA/mcvHCCU+VOHog7H2V5XxBH6um1KeOxb/NnV0TjtgrWov9HXEWUcn3pHf+VNeX
 s1TJ8kImtO6OpK2i6eTkZ/916+QFav3dKnaYYP5VUnuT3owLF4O+dz7RtEmvNM/B+i3R
 NhV2uB2oR3I/bvDUDsDAKnrBVmL7Fqs55OOj+AqyV6Hgqe8ZR0ef6FcqKmenBQ7DFS2E
 3yAg==
Subject: [Intel-gfx] [PATCH v7 i-g-t 0/4] Add support for testing writeback
 connectors
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
Content-Type: multipart/mixed; boundary="===============1867757361=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1867757361==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pdeuk25hsgc26r56"
Content-Disposition: inline


--pdeuk25hsgc26r56
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

A couple of months ago, I updated and re-submitted a patchset made by
Brian Starkey and Liviu Dudau for adding a writeback connectors test to
IGT. It is important to highlight that DRM already have writeback
connectors support, which is a way to expose in DRM the hardware
functionality from display engines that allows writing back into memory
the result of the DE's composition of supported planes.

After I resubmitted the patchset, Simon Ser provides a long and detailed
review for all of the patches (thanks Simon). As a result, I finally had
time to go through all the details and prepare this new version. Follows
some notes:

1. Patchset author

Brian Starkey is the original author of this patchset, and I'm just
trying to upstream his changes. Note that during this patch submission,
the mail server from google going to overwrite Brian's mail by mine;
this happens on the mail server side for avoiding malicious users to
send emails as someone else. Note that I could spend time figuring out
how to fix it, but I think this is not worth since I can fix it during
the merge process (if it got accepted).

2. Drop the clone commits from the series

After Simon's review, we decided to drop the last two patches of the
original series since it was related to cloning output, and VKMS does
not support it yet. However, after we finish with this series, I can try
to take a look at this feature or maybe propose it as a GSoC/Outreachy
project.

3. Changes

Most of the changes happened in the second patch.

Thanks

Brian Starkey (4):
  lib/igt_kms: Add writeback support
  kms_writeback: Add initial writeback tests
  lib: Add function to hash a framebuffer
  kms_writeback: Add writeback-check-output

 lib/igt_fb.c           |  68 +++++++
 lib/igt_fb.h           |   2 +
 lib/igt_kms.c          |  59 ++++++
 lib/igt_kms.h          |   6 +
 tests/Makefile.sources |   1 +
 tests/kms_writeback.c  | 413 +++++++++++++++++++++++++++++++++++++++++
 tests/meson.build      |   1 +
 7 files changed, 550 insertions(+)
 create mode 100644 tests/kms_writeback.c

--=20
2.23.0

--pdeuk25hsgc26r56
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl2uU0MACgkQWJzP/com
vP+PrA//X5t91nrKJ3V8a6wje1UvsSeh7EYV6DCI6GLtVj4xhYJJV1vB7arduVEZ
hbY9BjFUQs9OKwUJA2TErFayHf4zBaUbcmmGBADqBsrq+bkQXKJ0qXFLcwIiTHB7
QgmFEIuuyEIychRW9bqYftqFNSwzqZavIZMPRxNJ7Lu3AgIeY6Tys4FXxsvYP/92
4orZrevHLLO57qIrPK5DKz0GjHViYI/NPvDcNEIar+8xhULm8aGFn3ascA/cYS2b
1GKULgDvDTCjc2dAGAcQRp0FC2sDYjxye00ek53lDeF7SwHpzT41qDkaRLK15cbv
X4VkIPuQ13tYRlQeVQnLan04OPyp+Hrwlg4TEqcYPyT4kmuOWAVnV7qAaqucIl0y
Og7RiWUvxqytU/8w80q35OCLvAKIHf/XqXtlBEvY3bNZGCTvCcvYRliptj5pG4tU
BW05+iBlniDOHUB/kzGjhIlTeD1xs20MzJfASOwhCxEEeE1fo1FJTSfl4UaRcX8r
0RjOJbt153P/DGiOmV4f1KJwy9dHdC6O8Zz5XAgDNEBR2t+um8XpJ+4nneH0qe9Q
Eceen44/m62S9ORN9k/kLvJbJ1gMb7ZBAazKkkh+yH8BGDyuwxQ2wzy8q07QvQAu
3EBBCObFlGMGbSnpnmnC1ydEVE8v43hMCPsimQpSaSlsRKHysg8=
=MYTK
-----END PGP SIGNATURE-----

--pdeuk25hsgc26r56--

--===============1867757361==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1867757361==--
