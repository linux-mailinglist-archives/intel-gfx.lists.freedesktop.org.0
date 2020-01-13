Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04212139089
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 13:00:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 495F689BFE;
	Mon, 13 Jan 2020 12:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B99895C1;
 Mon, 13 Jan 2020 12:00:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 04:00:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="243978207"
Received: from plaxmina-desktop.iind.intel.com ([10.106.124.119])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jan 2020 04:00:31 -0800
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@intel.com, daniel@ffwll.ch, sam@ravnborg.org,
 sudeep.dutt@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Date: Mon, 13 Jan 2020 17:25:51 +0530
Message-Id: <20200113115557.32713-1-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6]: drm: Introduce struct drm_device based
 WARN* and use them in i915
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
Cc: pankaj.laxminaryan.bharadiya@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Device specific dev_WARN and dev_WARN_ONCE macros available in kernel
include device information in the backtrace, so we know what device
the warnings originate from.

Similar to this, add new struct drm_device based drm_WARN* macros. These
macros include device information in the backtrace, so we know
what device the warnings originate from. Knowing the device specific
information in the backtrace would be helpful in development all
around.

This patch series aims to convert calls of WARN(), WARN_ON(),
WARN_ONCE() and WARN_ON_ONCE() in i916 driver to use the drm
device-specific variants automatically wherever struct device pointer
is available.

To do this, this patch series -
  - introduces new struct drm_device based WARN* macros
  - automatically converts WARN* with device specific dev_WARN*
    variants using coccinelle semantic patch scripts.

The goal is to convert all the calls of WARN* with drm_WARN* in i915,
but there are still cases where device pointer is not readily
available in some functions (or I missed them somehow) using WARN*
hence some manual churning is needed. Handle such remaining cases
separately later.

Changes since RFC at [1]
  - Introduce drm_WARN* macros and use them as suggested by Sam and Jani
  - Get rid of extra local variables

[1] https://patchwork.freedesktop.org/series/71668/

Pankaj Bharadiya (6):
  drm/print: introduce new struct drm_device based WARN* macros
  drm/i915: add helper functions to get device ptr
  drm/i915: Make WARN* drm specific where drm_device ptr available
  drm/i915: Make WARN* drm specific where drm_priv ptr is available
  drm/i915: Make WARN* drm specific where dev_priv can be extracted.
  drm/i915: Make WARN* drm specific for various cases.

 drivers/gpu/drm/i915/display/icl_dsi.c        |  14 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   |   6 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |  19 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |  10 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |   3 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  81 +++---
 drivers/gpu/drm/i915/display/intel_color.c    |   3 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |   2 +-
 .../gpu/drm/i915/display/intel_connector.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  10 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 100 ++++----
 drivers/gpu/drm/i915/display/intel_display.c  | 239 ++++++++++--------
 .../drm/i915/display/intel_display_power.c    | 170 +++++++------
 .../drm/i915/display/intel_display_types.h    |  14 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 121 +++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  10 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   3 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  39 +--
 drivers/gpu/drm/i915/display/intel_dsb.c      |   6 +-
 .../i915/display/intel_dsi_dcs_backlight.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  23 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  13 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  21 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  71 +++---
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   7 +-
 .../gpu/drm/i915/display/intel_lpe_audio.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   7 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |   7 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  18 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  21 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |   7 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  32 ++-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  17 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |   5 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |  17 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |   3 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  13 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  15 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  10 +-
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |   3 +-
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  15 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c     |   2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c           |   6 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |   4 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   2 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   7 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  21 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |   2 +-
 drivers/gpu/drm/i915/gvt/aperture_gm.c        |   6 +-
 drivers/gpu/drm/i915/gvt/cfg_space.c          |  20 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |   4 +-
 drivers/gpu/drm/i915/gvt/display.c            |   5 +-
 drivers/gpu/drm/i915/gvt/dmabuf.c             |   4 +-
 drivers/gpu/drm/i915/gvt/edid.c               |  13 +-
 drivers/gpu/drm/i915/gvt/gtt.c                |  15 +-
 drivers/gpu/drm/i915/gvt/gvt.c                |   4 +-
 drivers/gpu/drm/i915/gvt/gvt.h                |   5 +
 drivers/gpu/drm/i915/gvt/handlers.c           |  18 +-
 drivers/gpu/drm/i915/gvt/interrupt.c          |  11 +-
 drivers/gpu/drm/i915/gvt/kvmgt.c              |   8 +-
 drivers/gpu/drm/i915/gvt/mmio.c               |  29 ++-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |   6 +-
 drivers/gpu/drm/i915/gvt/scheduler.c          |   5 +-
 drivers/gpu/drm/i915/gvt/vgpu.c               |   5 +-
 drivers/gpu/drm/i915/i915_drv.c               |  19 +-
 drivers/gpu/drm/i915/i915_drv.h               |  11 +
 drivers/gpu/drm/i915/i915_gem.c               |   7 +-
 drivers/gpu/drm/i915/i915_irq.c               |  85 ++++---
 drivers/gpu/drm/i915/i915_perf.c              |  40 +--
 drivers/gpu/drm/i915/i915_pmu.c               |   6 +-
 drivers/gpu/drm/i915/intel_csr.c              |   4 +-
 drivers/gpu/drm/i915/intel_pch.c              |  68 +++--
 drivers/gpu/drm/i915/intel_pm.c               |  95 ++++---
 drivers/gpu/drm/i915/intel_sideband.c         |   7 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  57 +++--
 include/drm/drm_print.h                       |  30 +++
 82 files changed, 1065 insertions(+), 768 deletions(-)

-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
