Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71139A2C3B7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 14:35:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FDF10EA75;
	Fri,  7 Feb 2025 13:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J6kNWtav";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F05110E325;
 Fri,  7 Feb 2025 13:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738935328; x=1770471328;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kYTuTzzD9yXjTHv0Z2+IHI7V4EfwsJEQmOWXJHpafP8=;
 b=J6kNWtavMWH22PTX857QoKVoi0SvBEtf77L+jYNbLozOLmedEDWPpTX3
 1cdkMt7YtHZMRO3X0OZmI8idc4n4GMaMAuCq9dW40Lf0jvsmjB1zioDz4
 XuUP7rtisgwlDmGFgV1HdGgjA4mvUKEGLiSzUixq025dqTe+X9umkP927
 JTP2UIXBUG36mZmmV/SZfIO2JuRqYq3rcX1SzQLIJU1HfIuyILTDPUe3C
 5v42dPkQJ//1fkrXzDGzs+k1WeAJjujH1s3iE+uy3tkUO6PASme3PGJO3
 n/6vr6JwauLocWkUCI2ugKQ82LBrUq+mWWhSuQHpBtJr6r0LN355roClF w==;
X-CSE-ConnectionGUID: qO8oG9+rSsaRFo6a7LKVUQ==
X-CSE-MsgGUID: G0GpH1w8T2iB1g92ijlwWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39482015"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="39482015"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 05:35:28 -0800
X-CSE-ConnectionGUID: 0d1B1lduTAqXR5R9T7m9wA==
X-CSE-MsgGUID: 5kDHhBiCR4u0YuFmZxBF2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="112155603"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 05:35:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 0/3] drm/i915: i915_reg.h display split
Date: Fri,  7 Feb 2025 15:35:19 +0200
Message-Id: <cover.1738935286.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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


Jani Nikula (3):
  drm/i915/reg: use REG_BIT and friends to define DP registers
  drm/i915/reg: Remove some extra blank lines
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
 .../gpu/drm/i915/display/intel_display_regs.h | 2768 ++++++++++++++++
 .../gpu/drm/i915/display/intel_display_wa.c   |    1 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |    1 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |    1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |    6 +-
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
 drivers/gpu/drm/i915/display/intel_lvds.c     |    3 +-
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
 drivers/gpu/drm/i915/gvt/display.c            |    1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |    1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |    1 +
 drivers/gpu/drm/i915/gvt/interrupt.c          |    1 +
 drivers/gpu/drm/i915/gvt/mmio.c               |    1 +
 drivers/gpu/drm/i915/i915_reg.h               | 2800 -----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |    1 +
 drivers/gpu/drm/xe/display/xe_plane_initial.c |    2 +-
 73 files changed, 2869 insertions(+), 2829 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_regs.h

-- 
2.39.5

