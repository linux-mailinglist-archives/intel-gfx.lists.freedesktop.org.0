Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8382186F5
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 14:10:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996216E34E;
	Wed,  8 Jul 2020 12:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1730C6E0E1;
 Wed,  8 Jul 2020 12:10:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 3D627AD1B;
 Wed,  8 Jul 2020 12:10:54 +0000 (UTC)
Date: Wed, 8 Jul 2020 14:10:50 +0200
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200708121050.GA29420@linux-uq9g>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-misc-fixes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

here's the PR for the current drm-misc-fixes. Only two patches this week.

drm-misc-fixes-2020-07-08:
 * meson: OSD burst-length fixes
 * hibmc: fix runtime warning by setting up generic fbdev after
   registering device
The following changes since commit bda8eaa6dee7525f4dac950810a85a88bf6c2ba0:

  drm: sun4i: hdmi: Remove extra HPD polling (2020-06-30 10:01:48 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2020-07-08

for you to fetch changes up to 00debf8109e5fad3db31375be2a3c515e1461b4a:

  drm/hisilicon/hibmc: Move drm_fbdev_generic_setup() down to avoid the splat (2020-07-08 09:08:22 +0000)

----------------------------------------------------------------
 * meson: OSD burst-length fixes
 * hibmc: fix runtime warning by setting up generic fbdev after
   registering device

----------------------------------------------------------------
Martin Blumenstingl (1):
      drm/meson: viu: fix setting the OSD burst length in VIU_OSD1_FIFO_CTRL_STAT

Zenghui Yu (1):
      drm/hisilicon/hibmc: Move drm_fbdev_generic_setup() down to avoid the splat

 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c |  5 +++--
 drivers/gpu/drm/meson/meson_registers.h         |  6 ++++++
 drivers/gpu/drm/meson/meson_viu.c               | 11 ++---------
 3 files changed, 11 insertions(+), 11 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
