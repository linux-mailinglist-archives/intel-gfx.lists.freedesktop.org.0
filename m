Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C7AF28FE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 09:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7C086EEE6;
	Thu,  7 Nov 2019 08:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EB8D6EEE4;
 Thu,  7 Nov 2019 08:22:18 +0000 (UTC)
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F37F721D79;
 Thu,  7 Nov 2019 08:22:17 +0000 (UTC)
Date: Thu, 7 Nov 2019 09:22:15 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20191107082215.GA34850@gilmour.lan>
MIME-Version: 1.0
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1573114938;
 bh=YPsvQRMSmcQSx6218RkQ2OTGDIkP8UEPyURWZ+q9mwM=;
 h=Date:From:To:Cc:Subject:From;
 b=JiE81ecIV2JEHzeYyln+BmPsWQNTFeQVjfDUY1IxP6kBey+C1aB4mPrk4y0kM0fsT
 0tx8u+lBkjUyuE8SkoVK0PnrYKIBzvDYJCxanxb7oWy6yQCNdQ8xd1CyeC+3a87LYz
 aimgWGp96TCg66+I+rhAIJqr4X0mlK/8deCDVMgo=
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
Content-Type: multipart/mixed; boundary="===============0615355058=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0615355058==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="huq684BweRXVnRxX"
Content-Disposition: inline


--huq684BweRXVnRxX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Dave, Daniel,

Here's this week PR for drm-misc-fixes.

Thanks!
Maxime

drm-misc-fixes-2019-11-07-1:
 - Some new documentation for GEM shmem madvise helpers
 - Fix for a state dereference in atomic self-refresh helpers
 - One compilation fix for c2p fbdev helpers
The following changes since commit f70744c68779c8a72a0c82294e3233b994af656d:

  drm/panfrost: Don't dereference bogus MMU pointers (2019-10-29 13:18:17 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2019-11-07-1

for you to fetch changes up to 105401b659b7eb9cb42d6b5b75d5c049ad4b3dca:

  drm/shmem: Add docbook comments for drm_gem_shmem_object madvise fields (2019-11-06 17:57:42 -0600)

----------------------------------------------------------------
 - Some new documentation for GEM shmem madvise helpers
 - Fix for a state dereference in atomic self-refresh helpers
 - One compilation fix for c2p fbdev helpers

----------------------------------------------------------------
Geert Uytterhoeven (1):
      fbdev: c2p: Fix link failure on non-inlining

Rob Clark (1):
      drm/atomic: fix self-refresh helpers crtc state dereference

Rob Herring (1):
      drm/shmem: Add docbook comments for drm_gem_shmem_object madvise fields

 drivers/gpu/drm/drm_atomic_helper.c       | 15 ++++++++++++++-
 drivers/gpu/drm/drm_self_refresh_helper.c | 18 +++++++++++-------
 drivers/video/fbdev/c2p_core.h            |  8 ++++----
 include/drm/drm_gem_shmem_helper.h        | 13 +++++++++++++
 include/drm/drm_self_refresh_helper.h     |  3 ++-
 5 files changed, 44 insertions(+), 13 deletions(-)

--huq684BweRXVnRxX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcPUNwAKCRDj7w1vZxhR
xeFxAQCPrTsUF2cbHTPX+KhMMXJZnge9P/JVIbkf7TvqSXWKJAEA2i5QVrE39O46
YmvfC+Qzh1sGxAk/BS4zQ5HqxFOcdA8=
=5Bd9
-----END PGP SIGNATURE-----

--huq684BweRXVnRxX--

--===============0615355058==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0615355058==--
