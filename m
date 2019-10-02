Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22973C978F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 06:59:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F1A6E1B2;
	Thu,  3 Oct 2019 04:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26B06E0D2;
 Wed,  2 Oct 2019 20:06:07 +0000 (UTC)
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FF3520673;
 Wed,  2 Oct 2019 20:06:07 +0000 (UTC)
Date: Wed, 2 Oct 2019 22:06:04 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20191002200604.gjae7xjtdaj3j3ga@gilmour>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Mailman-Approved-At: Thu, 03 Oct 2019 04:58:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1570046767;
 bh=2aPHFtPN6iUzeP2+lcEyZrBAVzXvmoNKn+fGxscx/CU=;
 h=Date:From:To:Cc:Subject:From;
 b=NP7jVLbpqHfbqFSS+QNzxEyObL17wqpoqUnemkkSeUByQ6KO8XDN3S0ofr3LU3SAm
 jkEHkeQPd9vgI2QlZ23Fb7pEmIowVtyVQBMitNj0AZ1YJTpZ07jOd5fmDm1T/1f86Y
 ev4075fNv5UIWruh4DwB7yzGS0OhmlPPNE5ZLWic=
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============2038586636=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============2038586636==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jimwcdgiduu3jw2w"
Content-Disposition: inline


--jimwcdgiduu3jw2w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Dave, Daniel,

I hope that you enjoy XDC if you could make it this year :)

Here's the first round of fixes for drm-misc

Maxime

drm-misc-fixes-2019-10-02:
 - One include fix for tilcdc
 - A memory leak fix for Komeda
 - Some fixes for resources cleanups with writeback
The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2019-10-02

for you to fetch changes up to 6347ee48ab4b344ca5005e48c0e82189ef9a9614:

  Merge drm-misc-next-fixes-2019-10-02 into drm-misc-fixes (2019-10-02 21:48:02 +0200)

----------------------------------------------------------------
 - One include fix for tilcdc
 - A memory leak fix for Komeda
 - Some fixes for resources cleanups with writeback

----------------------------------------------------------------
Arnd Bergmann (1):
      drm/tilcdc: include linux/pinctrl/consumer.h again

Lowry Li (Arm Technology China) (2):
      drm: Free the writeback_job when it with an empty fb
      drm: Clear the fence pointer when writeback job signaled

Maxime Ripard (2):
      Merge drm/drm-fixes into drm-misc-fixes
      Merge drm-misc-next-fixes-2019-10-02 into drm-misc-fixes

Navid Emamdoost (1):
      drm/komeda: prevent memory leak in komeda_wb_connector_add

 .../drm/arm/display/komeda/komeda_wb_connector.c   |  7 ++++---
 drivers/gpu/drm/arm/malidp_mw.c                    |  4 ++--
 drivers/gpu/drm/drm_atomic.c                       | 13 ++++++++----
 drivers/gpu/drm/drm_writeback.c                    | 23 ++++++++++++++--------
 drivers/gpu/drm/rcar-du/rcar_du_writeback.c        |  4 ++--
 drivers/gpu/drm/tilcdc/tilcdc_tfp410.c             |  1 +
 drivers/gpu/drm/vc4/vc4_txp.c                      |  5 ++---
 7 files changed, 35 insertions(+), 22 deletions(-)

--jimwcdgiduu3jw2w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZUDLAAKCRDj7w1vZxhR
xb3cAQCAnIp/mk2GCXUU6WIIRcrobp9IArnQ3vtECadw+LElLAD/RLhErlBh6VKo
WA7oRtsx7KVQOOeQtZ5XYn9iY+NqwwI=
=aH9h
-----END PGP SIGNATURE-----

--jimwcdgiduu3jw2w--

--===============2038586636==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============2038586636==--
