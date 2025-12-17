Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69478CC626A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CDE310EB4B;
	Wed, 17 Dec 2025 06:10:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NUsJIJQK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17BF910EB48;
 Wed, 17 Dec 2025 06:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951816; x=1797487816;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2d/xtbnRCOdYHO12rCDAqcp6crAjoxPX7wF70iu6ttM=;
 b=NUsJIJQKxIaMxhpraNYvi1XbJZ61Yh0OJ297ELzMqUFOHojnbBJbubOq
 dV8/nQN3wbPuMsMHyGKQicO8WKgKPLRESvxN1/q+v/IYSRgvm75wCLiS5
 Jhy9tSN8MSOuaKhU0QMJCYU+GQ5ZREDq5RoK2v/kcatGHXpppV1V2VT7M
 QO0srii9Xs0Y1WipXnYaFUooeqo/V0g4hNVVCYD4Ung4LiHO+40NIQySF
 Ix/zTI8s9fFmio1Lj7GKsV+kOf0R6qUt5UJXwN9uOmtYQFM1ZYq/EebMz
 r8ZnQv+uBRuItxfV73rDFd63sxgHZSC7dTAiRzV9ydnoGsNeN0UOQ1HY6 Q==;
X-CSE-ConnectionGUID: ts1PEtYRRz2wtnYoaV/LXQ==
X-CSE-MsgGUID: EP9BCJnUQH+uWl1ijLagrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471114"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471114"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:16 -0800
X-CSE-ConnectionGUID: n5o6sG7LR+2mkmnkjdMLGw==
X-CSE-MsgGUID: f/6YC3BMStCXtPgXLDiFZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105120"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:14 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 00/19] Make Display free from i915_reg.h
Date: Wed, 17 Dec 2025 11:51:50 +0530
Message-ID: <20251217062209.852324-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
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

Move the common register definition to a header to free up
display files from including i915_reg.h. This will help
avoid dupicate definitions and includes and can serve as
a common file for xe, i915 and display module.

Uma Shankar (19):
  drm/{i915, xe}: Extract common registers into a separate file
  drm/{i915, xe}: Extract South chicken registers
  drm/{i915, xe}: Extract display interrupt definitions
  drm/{i915, xe}: Extract DSPCLK_GATE_D
  drm/{i915, xe}: Extract pcode definitions
  drm/{i915, xe}: Remove i915_reg.h from intel_display_device.c
  drm/{i915, xe}: Remove i915_reg.h from intel_dram.c
  drm/{i915, xe}: Removed i915_reg.h from intel_display.c
  drm/{i915, xe}: Remove i915_reg.h from intel_overlay.c
  drm/{i915, xe}: Remove i915_reg.h from g4x_dp.c
  drm/{i915, xe}: Remove i915_reg.h from i9xx_wm.c
  drm/{i915, xe}: Remove i915_reg.h from g4x_hdmi.c
  drm/{i915, xe}: Remove i915_reg.h from intel_rom.c
  drm/{i915, xe}: Remove i915_reg.h from intel_psr.c
  drm/{i915, xe}: Remove i915_reg.h from intel_fifo_underrun.c
  drm/{i915, xe}: Remove i915_reg.h from intel_display_irq.c
  drm/{i915, xe}: Remove i915_reg.h from intel_display_power_well.c
  drm/{i915, xe}: Remove i915_reg.h from intel_modeset_setup.c
  drm/{i915, xe}: Removed i915_reg.h from display

 drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   2 +-
 drivers/gpu/drm/i915/display/hsw_ips.c        |   2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |   2 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c        |   2 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 .../gpu/drm/i915/display/intel_backlight.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_casf.c     |   1 -
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../drm/i915/display/intel_display_device.c   |   2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |   2 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 .../i915/display/intel_display_power_well.c   |   2 +-
 .../gpu/drm/i915/display/intel_display_regs.h |  90 +++-
 .../gpu/drm/i915/display/intel_display_rps.c  |   2 +-
 .../gpu/drm/i915/display/intel_display_wa.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_dram.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
 .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c   |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |   2 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   2 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_rom.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 463 +-----------------
 include/drm/intel/intel_gmd_common_regs.h     | 419 ++++++++++++++++
 40 files changed, 534 insertions(+), 514 deletions(-)
 create mode 100644 include/drm/intel/intel_gmd_common_regs.h

-- 
2.50.1

