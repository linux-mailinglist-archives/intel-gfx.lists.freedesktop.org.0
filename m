Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDAB99095
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 12:20:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E109C6EAE9;
	Thu, 22 Aug 2019 10:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379146EAE9;
 Thu, 22 Aug 2019 10:20:36 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 46DgXG6J7Lz9sNC;
 Thu, 22 Aug 2019 20:20:30 +1000 (AEST)
Date: Thu, 22 Aug 2019 20:20:20 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20190822202020.5c1f83e0@canb.auug.org.au>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=canb.auug.org.au; s=201702; t=1566469232;
 bh=40snNYPlDhecp8bE4e3VC3sN00AYuvqCywRJlpKLdEA=;
 h=Date:From:To:Cc:Subject:From;
 b=ljGNRTAE1S2k+70uUpg8nK0aM6AfQmN2taTN++fRfYxYhRC2V2/LaQ3TAxDApRnWt
 pKg+6+C5yZysTCa/KmQphlDtAd5/UpI0NaHMTqmRMjNrC31yoQ3gWCNoEkn122hWE0
 sg9Kckq0ZOJWRdgViX+LDu5SMl1g9N9G1r8I36qe2XHfo9bZGVQ7oOuUt85lhzjvuU
 tZisgc3gPFmhl0eYuoAX04Dj/XtYo78FsN3+O2nbi0hFbjlJgTfDbHqMS50zd8oBge
 1UWsjy/SzU8lgPyjXB95JD4i7vczMXh1Hub9Atba8caW6XT9pCVHLCzW+SYkIh0nWu
 HH9+Eun4uF2Xg==
Subject: [Intel-gfx] Merge in the drm-intel tree
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1756108997=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1756108997==
Content-Type: multipart/signed; boundary="Sig_/8_2WD78wXEqMeJD556FmXUy";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/8_2WD78wXEqMeJD556FmXUy
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

I noticed that the drm tree has been back merge into the drm-intel
tree.  Unfortunately, it seems that the file
drivers/gpu/drm/i915/i915_gem_batch_pool.c has been resurrected.

It was removed in commit

  b40d73784ffc ("drm/i915: Replace struct_mutex for batch pool serialisatio=
n")

but has come back due to a conflict with commit

  52791eeec1d9 ("dma-buf: rename reservation_object to dma_resv")

from the drm tree.
--=20
Cheers,
Stephen Rothwell

--Sig_/8_2WD78wXEqMeJD556FmXUy
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1ebGUACgkQAVBC80lX
0GwPJgf/Xi+vrBQ6HAKEOclLz5V4XqQqvo1+Iuebfo7ZAlu8qmKAfjuSZri0a9pH
dCER1doC45xJxz/PchmoPbgzU08ksZsYmI8Py/ACPqgJ3zJh64Y9anMtty8xNvjT
fRcLzip027NOwokyzNInsEH8HcRgLkFoh5DgssapKhl5Vr2MSKdTggzsa5P8Hh08
j9ruySyME+hOGr39cPwnkBNnIoKUthG9up+WIVTyno6Xp6W7NiJB+FayIhQNdlvn
yZm+xzcVcw4N+7tYGpblgzAvc3rlcaJla2QhQi9qrZbtxXTgP+tZ3PhVxWUbMaFk
PRn4VGOdYUJdbOjceu/AmfnjwEjXYQ==
=dKms
-----END PGP SIGNATURE-----

--Sig_/8_2WD78wXEqMeJD556FmXUy--

--===============1756108997==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1756108997==--
