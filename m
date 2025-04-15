Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1CAA89B0A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 12:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B811810E720;
	Tue, 15 Apr 2025 10:51:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aHTEFCIn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11C8110E720;
 Tue, 15 Apr 2025 10:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744714289; x=1776250289;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8BBVbI/jbblxu3BWVU8rU+IAFYEYiqsJAdAT/irrfEQ=;
 b=aHTEFCInOY64eSd2OOb/QSGx3gx5ks3WzMVxYW4vUyn9tv0sRiq4Zewd
 Y0IyQdA35LLq0qXvAQZrYrG0T1wiY7UpNVj0aDb/iEnsGJ/kpBlQ78tyU
 w8NDnkQTbDf/jjE+OK8RlVym3PU9d18WdVRmj6TkEgwVFXKxzENrDDP/k
 YKhFbCQx5DA0ZP5sTmkgX5cDT4S/4vwXBp0jxMPy9ycFEVeHdreSfrrx/
 xAenqfr0eJFr3F52D4dN43qDLwidjg+Up694ovksuT9VpvDXRolfT2RIE
 6A/qapN7IIq6BASSblxIC4m77Ij4VpS2/Ni1eJNCpKn7hVnq72Uf5l+S7 w==;
X-CSE-ConnectionGUID: MaHuPzzyR3OTb8QZ2ATJJg==
X-CSE-MsgGUID: NTfv8xisSta0KieFF1FnAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="56854375"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="56854375"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 03:51:29 -0700
X-CSE-ConnectionGUID: xh428fcXRDGEqK9kkpRFdA==
X-CSE-MsgGUID: WYAmtDSETuW3mlchEkU/Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="153283617"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.35])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 03:51:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 0/3] drm/i915: i915_reg.h display split
Date: Tue, 15 Apr 2025 13:51:19 +0300
Message-Id: <cover.1744714233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

v2 of https://lore.kernel.org/r/cover.1738935286.git.jani.nikula@intel.com

Jani Nikula (3):
  drm/i915/reg: use REG_BIT and friends to define DP registers
  drm/i915/reg: Add/remove some extra blank lines
  drm/i915: split out display register macros to a separate file

 drivers/gpu/drm/i915/display/g4x_dp.c         |   24 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |    1 +
 drivers/gpu/drm/i915/display/hsw_ips.c        |    1 +
 .../gpu/drm/i915/display/i9xx_display_sr.c    |    1 +
 drivers/gpu/drm/i915/display/i9xx_plane.c     |    2 +
 drivers/gpu/drm/i915/display/i9xx_wm.c        |    1 +
 drivers/gpu/drm/i915/display/icl_dsi.c        |    1 +
 .../gpu/drm/i915/display/intel_backlight.c    |    2 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |    3 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |    1 +
 drivers/gpu/drm/i915/display/intel_cmtg.c     |    3 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |    1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |    1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |    1 +
 drivers/gpu/drm/i915/display/intel_display.c  |    3 +-
 .../drm/i915/display/intel_display_debugfs.c  |    1 +
 .../drm/i915/display/intel_display_device.c   |    6 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |    2 +
 .../drm/i915/display/intel_display_power.c    |    1 +
 .../i915/display/intel_display_power_map.c    |    1 +
 .../i915/display/intel_display_power_well.c   |    1 +
 .../gpu/drm/i915/display/intel_display_regs.h | 2878 ++++++++++++++++
 .../gpu/drm/i915/display/intel_display_wa.c   |    1 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |    3 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |    1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |    4 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |    1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |    1 +
 drivers/gpu/drm/i915/display/intel_dp_test.c  |    1 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |    1 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |    1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    1 +
 .../gpu/drm/i915/display/intel_dpt_common.c   |    1 +
 drivers/gpu/drm/i915/display/intel_drrs.c     |    1 +
 drivers/gpu/drm/i915/display/intel_dsb.c      |    1 +
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |    3 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |    1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      |    3 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |    3 +-
 .../drm/i915/display/intel_fifo_underrun.c    |    1 +
 drivers/gpu/drm/i915/display/intel_gmbus.c    |    1 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     |    1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |    2 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |    1 +
 drivers/gpu/drm/i915/display/intel_lspcon.c   |    1 +
 .../drm/i915/display/intel_modeset_setup.c    |    3 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |    2 +
 .../gpu/drm/i915/display/intel_pch_display.c  |    1 +
 .../gpu/drm/i915/display/intel_pch_refclk.c   |    1 +
 drivers/gpu/drm/i915/display/intel_pfit.c     |    1 +
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |    1 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c |    1 +
 drivers/gpu/drm/i915/display/intel_pps.c      |    1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |    1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |    1 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |    1 +
 drivers/gpu/drm/i915/display/intel_tc.c       |    1 +
 drivers/gpu/drm/i915/display/intel_vblank.c   |    1 +
 drivers/gpu/drm/i915/display/intel_vga.c      |    2 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |    1 +
 drivers/gpu/drm/i915/display/skl_scaler.c     |    1 +
 .../drm/i915/display/skl_universal_plane.c    |    4 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |    1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |    1 +
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |    1 +
 drivers/gpu/drm/i915/gvt/display.c            |    1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |    1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |    1 +
 drivers/gpu/drm/i915/gvt/interrupt.c          |    1 +
 drivers/gpu/drm/i915/gvt/mmio.c               |    1 +
 drivers/gpu/drm/i915/i915_reg.h               | 2911 +----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |    1 +
 drivers/gpu/drm/xe/display/xe_plane_initial.c |    1 +
 73 files changed, 2980 insertions(+), 2936 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_regs.h

-- 
2.39.5

