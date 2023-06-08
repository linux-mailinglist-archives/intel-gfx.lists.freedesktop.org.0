Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C444C73740E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 20:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C57D10E378;
	Tue, 20 Jun 2023 18:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550B110E5AF;
 Thu,  8 Jun 2023 10:27:58 +0000 (UTC)
Message-ID: <b761cb4c-5cb6-9228-ab99-c2fe4a6353a8@lankhorst.se>
Date: Thu, 8 Jun 2023 12:27:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.2
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Dave Airlie <airlied@gmail.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten@lankhorst.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 20 Jun 2023 18:28:20 +0000
Subject: [Intel-gfx] [PULL] drm-misc-fixes, try 2.
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
Cc: dim-tools@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave, Daniel,

Same pull request, just verifying tooling works as intended now. :-)

drm-misc-fixes for v6.4-rc6.

Seems to be mostly small fixes, just a few more for ivpu.

~Maarten

drm-misc-fixes-2023-06-08:
drm-misc-fixes for v6.4-rc6:
- resume and modeset fixes for ast.
- Fill in fb-helper vars more correctly.
- Assorted ivpu fixes.
- lima context destroy fix.
The following changes since commit e997c218ad736fd6f524d73a987bad9d94128d3d:

  accel/qaic: Fix NNC message corruption (2023-05-23 09:51:38 -0600)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-06-08

for you to fetch changes up to a3efabee5878b8d7b1863debb78cb7129d07a346:

  accel/ivpu: Fix sporadic VPU boot failure (2023-06-08 08:17:27 +0200)

----------------------------------------------------------------
drm-misc-fixes for v6.4-rc6:
- resume and modeset fixes for ast.
- Fill in fb-helper vars more correctly.
- Assorted ivpu fixes.
- lima context destroy fix.

----------------------------------------------------------------
Andrzej Kacprowski (2):
      accel/ivpu: Do not trigger extra VPU reset if the VPU is idle
      accel/ivpu: Fix sporadic VPU boot failure

Erico Nunes (1):
      drm/lima: fix sched context destroy

Geert Uytterhoeven (1):
      drm/fb-helper: Fix height, width, and accel_flags in fb_var

Jammy Huang (2):
      drm/ast: Fix long time waiting on s3/s4 resume
      drm/ast: Fix modeset failed on DisplayPort

Randy Dunlap (1):
      accel/ivpu: ivpu_ipc needs GENERIC_ALLOCATOR

Stanislaw Gruszka (2):
      accel/ivpu: Reserve all non-command bo's using DMA_RESV_USAGE_BOOKKEEP
      accel/ivpu: Do not use mutex_lock_interruptible

 drivers/accel/ivpu/Kconfig           |  1 +
 drivers/accel/ivpu/ivpu_hw_mtl.c     | 22 +++++++++++----
 drivers/accel/ivpu/ivpu_hw_mtl_reg.h |  1 +
 drivers/accel/ivpu/ivpu_ipc.c        |  4 +--
 drivers/accel/ivpu/ivpu_job.c        | 21 +++++++++-----
 drivers/accel/ivpu/ivpu_mmu.c        | 22 ++++-----------
 drivers/gpu/drm/ast/ast_dp.c         | 55 +++++++++++-------------------------
 drivers/gpu/drm/ast/ast_drv.h        |  5 +---
 drivers/gpu/drm/ast/ast_main.c       | 11 ++++++--
 drivers/gpu/drm/ast/ast_mode.c       | 15 ++++++++--
 drivers/gpu/drm/ast/ast_post.c       |  3 +-
 drivers/gpu/drm/drm_fb_helper.c      | 12 ++++----
 drivers/gpu/drm/lima/lima_sched.c    |  2 +-
 13 files changed, 90 insertions(+), 84 deletions(-)
