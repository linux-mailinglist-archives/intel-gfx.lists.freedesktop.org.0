Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 551AC118F6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 14:25:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93283890BA;
	Thu,  2 May 2019 12:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFB55890BA;
 Thu,  2 May 2019 12:25:33 +0000 (UTC)
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 27BD710000F;
 Thu,  2 May 2019 12:25:29 +0000 (UTC)
Date: Thu, 2 May 2019 14:25:29 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190502122529.hguztj3kncaixe3d@flea>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
Subject: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: dim-tools@lists.freedesktop.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1144793451=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1144793451==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wii2oos3wditb7pn"
Content-Disposition: inline


--wii2oos3wditb7pn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Dave, Daniel,

Here is a drm-misc fixes PR for 5.1.

Thanks!
Maxime

drm-misc-fixes-2019-05-02:
- One revert for QXL for a DRI3 breakage
The following changes since commit c4cba44eeecab9d5ccd3dd2d5520a7d1e5be544f:

  drm/bridge: dw-hdmi: fix SCDC configuration for ddc-i2c-bus (2019-04-25 10:38:21 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2019-05-02

for you to fetch changes up to ab042b824c11502bd39abfdfd4c7f285347d483a:

  Revert "drm/qxl: drop prime import/export callbacks" (2019-04-30 14:08:48 +0200)

----------------------------------------------------------------
- One revert for QXL for a DRI3 breakage

----------------------------------------------------------------
Gerd Hoffmann (1):
      Revert "drm/qxl: drop prime import/export callbacks"

 drivers/gpu/drm/qxl/qxl_drv.c   |  4 ++++
 drivers/gpu/drm/qxl/qxl_prime.c | 12 ++++++++++++
 2 files changed, 16 insertions(+)

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--wii2oos3wditb7pn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMrhuQAKCRDj7w1vZxhR
xfrjAP9cdoabdNJf+KI8c7jLGZd+tChRwW4ZILZtd8m9Zy06zgD9G+9oKSRKfUKK
Q4tT5mTD2Wd4kHPomNVHjxSzhJWmJQI=
=Mnep
-----END PGP SIGNATURE-----

--wii2oos3wditb7pn--

--===============1144793451==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1144793451==--
