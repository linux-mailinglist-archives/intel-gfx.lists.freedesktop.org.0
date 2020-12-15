Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7382DADA4
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 14:04:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8CA36E1A5;
	Tue, 15 Dec 2020 13:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68CE66E1A5;
 Tue, 15 Dec 2020 13:04:35 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id C0BAFAC93;
 Tue, 15 Dec 2020 13:04:33 +0000 (UTC)
Date: Tue, 15 Dec 2020 14:04:31 +0100
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <X9i0X9mjHN9AZGD3@linux-uq9g>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-misc-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

here's this week's PR for drm-misc-next-fixes. IIRC the radeon fix is
already in drm-misc-next.

Best regards
Thomas

drm-misc-next-fixes-2020-12-15:
Short summary of fixes pull (less than what git shortlog provides):

 * dma-buf: Fix docs
 * mxsfb: Silence invalid error message
 * radeon: Fix TTM multihop

The following changes since commit 05faf1559de52465f1e753e31883aa294e6179c1:

  drm/imx/dcss: allow using nearest neighbor interpolation scaling (2020-11=
-26 11:29:44 +0100)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2020-=
12-15

for you to fetch changes up to ee46d16d2e40bebc2aa790fd7b6a056466ff895c:

  drm: mxsfb: Silence -EPROBE_DEFER while waiting for bridge (2020-12-15 11=
:01:10 +0100)

----------------------------------------------------------------
Short summary of fixes pull (less than what git shortlog provides):

 * dma-buf: Fix docs
 * mxsfb: Silence invalid error message
 * radeon: Fix TTM multihop

----------------------------------------------------------------
Christian K=F6nig (1):
      drm/radeon: fix check order in radeon_bo_move

Daniel Vetter (1):
      dma-buf: Fix kerneldoc formatting

Guido G=FCnther (1):
      drm: mxsfb: Silence -EPROBE_DEFER while waiting for bridge

 Documentation/driver-api/dma-buf.rst |  2 +-
 drivers/gpu/drm/mxsfb/mxsfb_drv.c    | 10 +++----
 drivers/gpu/drm/radeon/radeon_ttm.c  | 54 ++++++++++++++++----------------=
----
 include/linux/dma-buf-map.h          |  2 +-
 4 files changed, 30 insertions(+), 38 deletions(-)

--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=FCrnberg, Germany
(HRB 36809, AG N=FCrnberg)
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
