Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6A82EEFBD
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 10:34:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D0E76E7D4;
	Fri,  8 Jan 2021 09:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF2186E7D4;
 Fri,  8 Jan 2021 09:34:43 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 3CFA5ACBA;
 Fri,  8 Jan 2021 09:34:42 +0000 (UTC)
Date: Fri, 8 Jan 2021 10:34:34 +0100
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <X/gnKs52t8xUuAlE@linux-uq9g>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

sorry for being a bit late. Here's this week's PR for drm-misc-fixes.

Best regards
Thomas

drm-misc-fixes-2021-01-08:
* dma-buf: fix a use-after-free
* radeon: don't init the TTM page pool manually
* ttm: unexport ttm_pool_{init,fini}()
The following changes since commit e71ba9452f0b5b2e8dc8aa5445198cd9214a6a62:

  Linux 5.11-rc2 (2021-01-03 15:55:30 -0800)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2021-01-08

for you to fetch changes up to a73858ef4d5e1d425e171f0f6a52864176a6a979:

  drm/ttm: unexport ttm_pool_init/fini (2021-01-07 14:25:43 +0100)

----------------------------------------------------------------
* dma-buf: fix a use-after-free
* radeon: don't init the TTM page pool manually
* ttm: unexport ttm_pool_{init,fini}()

----------------------------------------------------------------
Charan Teja Reddy (1):
      dmabuf: fix use-after-free of dmabuf's file->f_inode

Christian K=F6nig (2):
      drm/radeon: stop re-init the TTM page pool
      drm/ttm: unexport ttm_pool_init/fini

 drivers/dma-buf/dma-buf.c           | 21 +++++++++++++++++----
 drivers/gpu/drm/radeon/radeon_ttm.c |  3 ---
 drivers/gpu/drm/ttm/ttm_pool.c      |  2 --
 3 files changed, 17 insertions(+), 9 deletions(-)

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
