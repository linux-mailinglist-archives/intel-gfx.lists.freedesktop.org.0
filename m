Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6248972228
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 20:59:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA72210E643;
	Mon,  9 Sep 2024 18:59:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jW36yozz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45CB810E638;
 Mon,  9 Sep 2024 18:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725908348; x=1757444348;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9yANY/6ohrnzuP/gL4l5qZW9WoJr/iYAxtPaS4Tvrg0=;
 b=jW36yozzSPdVrRMbYiJ0YPw+tTmXJKi7b8c0Vjh5dQAThbezqjw1ap/i
 Mm8zSvZx1Ez9ANzpTzBTdEMS6ivwW1sp5+aQgkOI9Vx66TQY7gcXsRmYn
 mPscfN/a+mAs7Z2EFjUmO2XQWwUsEKnLOjz/eTfMeZPoORZkCMhTrEgnj
 1BtnPWZk9nWqNiRIMay99KRBqkLoCj2jy13dKrfMvobo7/P20XTFQpNEu
 2hNa7ojCqPdZp33e4aFcH2dE5Iy6vQLcJEryzR1WXdMKC2C+ltIQwdBIR
 /8L77PsO1sapeUugXDljp6pa7uaDCXLHQ9ix3XWY5TDpAkfaEd+MZG2uO A==;
X-CSE-ConnectionGUID: nIMYnzJGSGKsqg0AnP4jHA==
X-CSE-MsgGUID: UEwJ/R2LR6iVfVyEpcvJXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24499590"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24499590"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:08 -0700
X-CSE-ConnectionGUID: g6C7rJmgTFKLEXvdqW539A==
X-CSE-MsgGUID: 1/qjdw1aQp+E/ZnftElv0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="90037592"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/11] drm/i915: split out display regs
Date: Mon,  9 Sep 2024 21:58:51 +0300
Message-Id: <cover.1725908151.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

We've split out register macros from i915_reg.h functionally, but it has
slowed down quite a bit. At this stage, split out all the display regs
from i915_reg.h.

The first ten patches are manual style cleanup, primarily to help the
automation to do the split in patch 11.

This should pave the way for further cleanups.

BR,
Jani.


Jani Nikula (11):
  drm/i915/reg: fix transcoder timing register style
  drm/i915/reg: fix g4x pipe data/link m/n register style
  drm/i915/reg: fix pipe conf, stat etc. register style
  drm/i915/reg: fix pipe data/link m/n register style
  drm/i915/reg: fix SKL scaler register style
  drm/i915/reg: fix PCH transcoder timing and data/link m/n style
  drm/i915/reg: fix DIP CTL register style
  drm/i915/reg: fix small register style issues here and there
  drm/i915/reg: remove unused DSI register macros
  drm/i915/reg: remove superfluous whitespace
  drm/i915: split out display regs from i915_reg.h

 drivers/gpu/drm/i915/display/g4x_dp.c         |    1 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |    1 +
 drivers/gpu/drm/i915/display/hsw_ips.c        |    1 +
 drivers/gpu/drm/i915/display/i9xx_plane.c     |    2 +
 drivers/gpu/drm/i915/display/i9xx_wm.c        |    1 +
 drivers/gpu/drm/i915/display/icl_dsi.c        |    1 +
 .../gpu/drm/i915/display/intel_backlight.c    |    2 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |    1 +
 drivers/gpu/drm/i915/display/intel_bw.c       |    3 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |    3 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |    1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |    1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |    2 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |    1 +
 drivers/gpu/drm/i915/display/intel_display.c  |    3 +-
 .../drm/i915/display/intel_display_debugfs.c  |    1 +
 .../drm/i915/display/intel_display_device.c   |    6 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |    2 +
 .../drm/i915/display/intel_display_power.c    |    1 +
 .../i915/display/intel_display_power_map.c    |    5 +-
 .../i915/display/intel_display_power_well.c   |    1 +
 .../gpu/drm/i915/display/intel_display_regs.h | 2986 ++++++++++++++++
 .../gpu/drm/i915/display/intel_display_wa.c   |    1 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |    1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |    4 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |    1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |    3 +-
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
 drivers/gpu/drm/i915/display/intel_hdmi.c     |    1 +
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |    1 +
 drivers/gpu/drm/i915/display/intel_lspcon.c   |    3 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |    3 +-
 .../drm/i915/display/intel_modeset_setup.c    |    3 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |    2 +
 drivers/gpu/drm/i915/display/intel_panel.c    |    1 +
 .../gpu/drm/i915/display/intel_pch_display.c  |    1 +
 .../gpu/drm/i915/display/intel_pch_refclk.c   |    1 +
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |    1 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c |    1 +
 drivers/gpu/drm/i915/display/intel_pps.c      |    1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |    1 +
 drivers/gpu/drm/i915/display/intel_psr_regs.h |    1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |    1 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |    1 +
 drivers/gpu/drm/i915/display/intel_tc.c       |    1 +
 drivers/gpu/drm/i915/display/intel_vblank.c   |    1 +
 drivers/gpu/drm/i915/display/intel_vga.c      |    2 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |    3 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |    1 +
 .../drm/i915/display/skl_universal_plane.c    |    4 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |    1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |    1 +
 drivers/gpu/drm/i915/gvt/display.c            |    1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |    1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |    1 +
 drivers/gpu/drm/i915/gvt/interrupt.c          |    1 +
 drivers/gpu/drm/i915/gvt/mmio.c               |    1 +
 drivers/gpu/drm/i915/i915_reg.h               | 3016 +----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |    1 +
 71 files changed, 3098 insertions(+), 3016 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_regs.h

-- 
2.39.2

