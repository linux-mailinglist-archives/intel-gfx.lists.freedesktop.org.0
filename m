Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EB059FB01
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:16:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41055B4FF3;
	Wed, 24 Aug 2022 13:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA84612A25A
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661346970; x=1692882970;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=okNz+pG5B2jTwl4gj7qx9uHPIJdQoRodtkJ8v7TNm00=;
 b=eGlQ5bBXHoYRUeAldg2GDgGchKAYj4yxw8bRfY7FNLRp534FLq9ENQVn
 mprgyipx/xPzSylXz+hhzOdVI1w20ZJ7bJUGlASuvtQEzGsHeGi1Qg1ip
 QvxjibjdgWsvftPhRuk78HNW4Gb4Pk5j7Mcw7MBQBJjWV6incIuyRReAz
 YP7VmDPTUFxGPRUA6vw+r+1Y18+vvyxbAaNet1u4waR+9AyPcKJXSXSNU
 43Uu18yQT2x4Va3WeFnSQjTsUrfl8ISYxMO5KFRh7uj846GGeHmAn9V2Q
 JYN5JK9I/NBX9seJ2sSS+Bj413zDpPNmFpXhghUy6srBBmcfBFxU9K5Vi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="357935588"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="357935588"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:16:09 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="639115315"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:16:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:26 +0300
Message-Id: <cover.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/38] drm/i915: add display sub-struct to
 drm_i915_private
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2 of https://patchwork.freedesktop.org/series/107170/

Mostly just rebases, commit message updates and some trivial checkpatch
fixes, and dropping the clock gating function move patch.

BR,
Jani.

Jani Nikula (38):
  drm/i915: add display sub-struct to drm_i915_private
  drm/i915: move cdclk_funcs to display.funcs
  drm/i915: move dpll_funcs to display.funcs
  drm/i915: move hotplug_funcs to display.funcs
  drm/i915: move wm_disp funcs to display.funcs
  drm/i915: move fdi_funcs to display.funcs
  drm/i915: move color_funcs to display.funcs
  drm/i915: move and group gmbus members under display.gmbus
  drm/i915: move and group pps members under display.pps
  drm/i915: move dmc to display.dmc
  drm/i915: move and split audio under display.audio and display.funcs
  drm/i915: move dpll under display.dpll
  drm/i915: move and group fbdev under display.fbdev
  drm/i915: move wm to display.wm
  drm/i915: move and group hdcp under display.hdcp
  drm/i915: move hotplug to display.hotplug
  drm/i915: move overlay to display.overlay
  drm/i915: move and group sagv under display.sagv
  drm/i915: move and group max_bw and bw_obj under display.bw
  drm/i915: move opregion to display.opregion
  drm/i915: move and group cdclk under display.cdclk
  drm/i915: move backlight to display.backlight
  drm/i915: move mipi_mmio_base to display.dsi
  drm/i915: move vbt to display.vbt
  drm/i915: move fbc to display.fbc
  drm/i915/vrr: drop window2_delay member from i915
  drm/i915: move and group power related members under display.power
  drm/i915: move and group fdi members under display.fdi
  drm/i915: move fb_tracking under display sub-struct
  drm/i915: move INTEL_FRONTBUFFER_* macros to intel_frontbuffer.h
  drm/i915: move dbuf under display sub-struct
  drm/i915: move and group modeset_wq and flip_wq under display.wq
  drm/i915: split gem quirks from display quirks
  drm/i915/quirks: abstract checking for display quirks
  drm/i915/quirks: abstract quirks further by making quirk ids an enum
  drm/i915: move quirks under display sub-struct
  drm/i915: move atomic_helper under display sub-struct
  drm/i915: move and group properties under display.properties

 drivers/gpu/drm/i915/display/g4x_dp.c         |   4 +-
 drivers/gpu/drm/i915/display/hsw_ips.c        |   2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |   2 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  12 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_audio.c    | 102 ++---
 .../gpu/drm/i915/display/intel_backlight.c    |  41 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 216 ++++-----
 drivers/gpu/drm/i915/display/intel_bw.c       |  52 +--
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 282 ++++++------
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_color.c    |  34 +-
 .../gpu/drm/i915/display/intel_connector.c    |   8 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  33 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 124 +++---
 .../gpu/drm/i915/display/intel_display_core.h | 416 ++++++++++++++++++
 .../drm/i915/display/intel_display_debugfs.c  |  60 +--
 .../drm/i915/display/intel_display_power.c    | 140 +++---
 .../i915/display/intel_display_power_map.c    |   4 +-
 .../i915/display/intel_display_power_well.c   |  78 ++--
 .../i915/display/intel_display_power_well.h   |  12 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  52 +--
 drivers/gpu/drm/i915/display/intel_dp.c       |  10 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  38 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 130 +++---
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  26 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  18 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  56 +--
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  18 +
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  46 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 134 +++---
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 116 ++---
 .../gpu/drm/i915/display/intel_lpe_audio.c    |  42 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   4 +-
 .../drm/i915/display/intel_modeset_setup.c    |  14 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |  42 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  12 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |   5 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   4 +-
 .../drm/i915/display/intel_plane_initial.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |  51 +--
 drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_quirks.c   |  22 +-
 drivers/gpu/drm/i915/display/intel_quirks.h   |  14 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  18 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |   4 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |   8 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |  14 +-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h   | 188 ++++----
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |   4 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |   2 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   4 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   4 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |   4 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   4 +-
 drivers/gpu/drm/i915/i915_driver.c            |  16 +-
 drivers/gpu/drm/i915/i915_drv.h               | 407 +----------------
 drivers/gpu/drm/i915/i915_gem.c               |   4 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   2 +-
 drivers/gpu/drm/i915/i915_irq.c               |  78 ++--
 drivers/gpu/drm/i915/i915_reg.h               |  16 +-
 drivers/gpu/drm/i915/intel_pm.c               | 260 +++++------
 drivers/gpu/drm/i915/intel_pm.h               |   4 +-
 72 files changed, 1824 insertions(+), 1741 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_core.h

-- 
2.34.1

