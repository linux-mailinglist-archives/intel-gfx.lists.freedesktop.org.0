Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A68F2BFCCF2
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:17:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25DD310E7D7;
	Wed, 22 Oct 2025 15:17:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WQiWeSL8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 624F710E7D7;
 Wed, 22 Oct 2025 15:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761146240; x=1792682240;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WvLYdSuKw9NElHWSWnQmSbwHzMUTFZbyiW+tEo/VeN4=;
 b=WQiWeSL8UTL6IWZslFxNw9P0bFoQ/BQZypAcDwy/KoIkKezWXunhSgmB
 BZ6iIXKOk4wyEnKt9uqrCiD/Y0ZtozgEsDVFUipEK6lQTtTcVfk3u/5Wc
 314NMgk04gFrcfGSnjwwS5K5HFf5oyj6MRGx1ar112QXdYPlENiIiiWva
 d/9lYWD6HgxZ7nd5CkuwJUD2Fr81om8zHQwZy7QmWkAPa0WDZm4D/YmoP
 /Ko1/KTX6WLNiiyOcCVRD3xFMB8A2kSsf5jW32SfL+cfzfNnkC/S2UcO8
 ZSEbM0QyuVO7NN3K3kyv12/09in55u6jDl3UTkgPswa9cDMcHEcglNqMf A==;
X-CSE-ConnectionGUID: NOazb+XHRl2paPcCWi+Dpg==
X-CSE-MsgGUID: ub1RJlccQt6UHZellmhMsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67134279"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="67134279"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:20 -0700
X-CSE-ConnectionGUID: UItIiciLSGewhHoJGFPefA==
X-CSE-MsgGUID: xLalZauDQ2CC6GaTKRryQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="184296886"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/6] drm/i915: i915_utils.h refactoring
Date: Wed, 22 Oct 2025 18:17:08 +0300
Message-ID: <cover.1761146196.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Jani Nikula (6):
  drm/i915: split out separate files for jiffies timeout and wait
    helpers
  drm/i915/display: create intel_display_utils.h
  drm/i915/display: add intel_display_run_as_guest()
  drm/i915/display: add intel_display_vtd_active()
  drm/i915/display: switch to intel_display_utils.h
  drm/xe/compat: reduce i915_utils.[ch]

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_acpi.c     |  2 +-
 .../gpu/drm/i915/display/intel_backlight.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |  5 +--
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_color.c    |  2 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |  2 +-
 .../gpu/drm/i915/display/intel_connector.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  9 ++--
 .../drm/i915/display/intel_display_driver.c   |  3 +-
 .../drm/i915/display/intel_display_jiffies.h  | 43 +++++++++++++++++++
 .../drm/i915/display/intel_display_power.c    |  2 +-
 .../drm/i915/display/intel_display_utils.c    | 32 ++++++++++++++
 .../drm/i915/display/intel_display_utils.h    | 31 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
 .../drm/i915/display/intel_dp_link_training.c |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  5 ++-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_flipq.c    |  6 +--
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  1 -
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  4 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_pch.c      |  4 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_pfit.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  3 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 .../gpu/drm/i915/display/intel_qp_tables.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |  2 +-
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  5 ++-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  1 +
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  1 +
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  1 +
 drivers/gpu/drm/i915/i915_config.c            |  2 +-
 drivers/gpu/drm/i915/i915_jiffies.h           | 16 +++++++
 drivers/gpu/drm/i915/i915_utils.h             | 41 ++----------------
 .../gpu/drm/i915/selftests/i915_selftest.c    |  1 +
 drivers/gpu/drm/xe/Makefile                   |  2 +-
 .../drm/xe/compat-i915-headers/i915_utils.h   |  9 +++-
 drivers/gpu/drm/xe/display/ext/i915_utils.c   | 27 ------------
 68 files changed, 211 insertions(+), 134 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_jiffies.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_utils.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_utils.h
 create mode 100644 drivers/gpu/drm/i915/i915_jiffies.h
 delete mode 100644 drivers/gpu/drm/xe/display/ext/i915_utils.c

-- 
2.47.3

