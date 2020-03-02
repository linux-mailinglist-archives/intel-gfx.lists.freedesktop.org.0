Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AC4175B2D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 14:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BECB6E270;
	Mon,  2 Mar 2020 13:08:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 535186E270;
 Mon,  2 Mar 2020 13:08:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 05:08:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="319059186"
Received: from pktinlab.iind.intel.com ([10.66.253.121])
 by orsmga001.jf.intel.com with ESMTP; 02 Mar 2020 05:08:29 -0800
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Date: Mon,  2 Mar 2020 18:26:40 +0530
Message-Id: <20200302125649.61443-1-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] drm: drm_fb_helper cleanup.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series addresses below drm_fb_helper tasks from
Documentation/gpu/todo.rst.

- The max connector argument for drm_fb_helper_init() isn't used
  anymore and can be removed.

- The helper doesn't keep an array of connectors anymore so these can
  be removed: drm_fb_helper_single_add_all_connectors(),
  drm_fb_helper_add_one_connector() and
  drm_fb_helper_remove_one_connector().

Pankaj Bharadiya (9):
  drm: Remove unused arg from drm_fb_helper_init
  drm/radeon: remove radeon_fb_{add,remove}_connector functions
  drm/amdgpu: Remove drm_fb_helper_{add,remove}_one_connector calls
  drm/i915/display: Remove drm_fb_helper_{add,remove}_one_connector calls
  drm: Remove drm_fb_helper add, add all and remove connector calls
  drm/nouveau: Fix unused variable warning
  drm/bridge: remove unused variable warning in tc358764_detach
  drm/fb-helper: Remove drm_fb_helper add, add_all and remove connector functions
  drm/todo: Update drm_fb_helper tasks

 Documentation/gpu/todo.rst                    | 15 +++--------
 drivers/gpu/drm/amd/amdgpu/amdgpu_fb.c        |  5 +---
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   | 13 ---------
 drivers/gpu/drm/armada/armada_fbdev.c         |  8 +-----
 drivers/gpu/drm/bridge/tc358764.c             |  3 ---
 drivers/gpu/drm/drm_fb_helper.c               |  6 ++---
 drivers/gpu/drm/exynos/exynos_drm_dsi.c       |  1 -
 drivers/gpu/drm/exynos/exynos_drm_fbdev.c     | 10 +------
 drivers/gpu/drm/gma500/framebuffer.c          |  6 +----
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 12 ---------
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  4 +--
 drivers/gpu/drm/msm/msm_fbdev.c               |  6 +----
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |  7 -----
 drivers/gpu/drm/nouveau/nouveau_fbcon.c       |  6 +----
 drivers/gpu/drm/omapdrm/omap_fbdev.c          |  6 +----
 drivers/gpu/drm/radeon/radeon_dp_mst.c        | 10 -------
 drivers/gpu/drm/radeon/radeon_fb.c            | 19 +------------
 drivers/gpu/drm/radeon/radeon_mode.h          |  3 ---
 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c |  9 +------
 drivers/gpu/drm/tegra/fb.c                    |  8 +-----
 include/drm/drm_fb_helper.h                   | 27 ++-----------------
 21 files changed, 19 insertions(+), 165 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
