Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E50E8FB6E9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B166710E405;
	Tue,  4 Jun 2024 15:26:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KTeq6kO1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 534AF10E3C0
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514791; x=1749050791;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7FM6H04CAOG9FZVo8Uo5E+OxIIe2fBUyGCG2IvTA3h4=;
 b=KTeq6kO1YxNdx0tuD+fq0tnFtUZR9yFWVbvG1dPKc7fm8tswNeZed/qH
 I8d6g/55fDh+wgY2obY39YJbd9v2MT9aQPWmd/uLT4EAB8L9YHR49THeJ
 HIOn1yqLBLVIABZKIsqJnq776uzpydI5XybvkoV9PQsNboinnbUWH96go
 0escXP1M6SrxdGonMA4ejXCZb47F8TWmHm8zXgoSR0AsGpdkHZcuE+oOd
 QylwER1Rn0xeA9o4+Js3XGpLT/F+Fn7Akxy0JS0Cuicllid+5va/zzWUI
 2YbY/mbtigTPLL3C/xCQMipjs6qFVEXxgWaR0nQwAEHaTR8cxutJnHFpu g==;
X-CSE-ConnectionGUID: i3gQI71kQeO7h2RAClGE0w==
X-CSE-MsgGUID: UJAr0d6WQvKisx+qnbioaQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949174"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949174"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:31 -0700
X-CSE-ConnectionGUID: GUpxAG9VQ6ipwFpLtZPaHg==
X-CSE-MsgGUID: HrIlFw5ERAWhG/XVaqnGTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60464390"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/65] drm/i915: finish the job of removing implicit dev_priv
Date: Tue,  4 Jun 2024 18:25:18 +0300
Message-Id: <cover.1717514638.git.jani.nikula@intel.com>
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

Rip the band-aid. Finish the job of removing implicit dev_priv
usage. It's a lot, but it's straightforward.

BR,
Jani.

Jani Nikula (65):
  drm/i915: pass dev_priv explicitly to DPLL
  drm/i915: pass dev_priv explicitly to DPLL_MD
  drm/i915: pass dev_priv explicitly to TRANS_HTOTAL
  drm/i915: pass dev_priv explicitly to TRANS_HBLANK
  drm/i915: pass dev_priv explicitly to TRANS_HSYNC
  drm/i915: pass dev_priv explicitly to TRANS_VTOTAL
  drm/i915: pass dev_priv explicitly to TRANS_VBLANK
  drm/i915: pass dev_priv explicitly to TRANS_VSYNC
  drm/i915: pass dev_priv explicitly to BCLRPAT
  drm/i915: pass dev_priv explicitly to TRANS_VSYNCSHIFT
  drm/i915: pass dev_priv explicitly to PIPESRC
  drm/i915: pass dev_priv explicitly to TRANS_MULT
  drm/i915: pass dev_priv explicitly to PORT_HOTPLUG_EN
  drm/i915: pass dev_priv explicitly to PORT_HOTPLUG_STAT
  drm/i915: pass dev_priv explicitly to PFIT_CONTROL
  drm/i915: pass dev_priv explicitly to PFIT_PGM_RATIOS
  drm/i915: pass dev_priv explicitly to PFIT_AUTO_RATIOS
  drm/i915: pass dev_priv explicitly to TRANSCONF
  drm/i915: pass dev_priv explicitly to PIPEDSL
  drm/i915: pass dev_priv explicitly to PIPEFRAME
  drm/i915: pass dev_priv explicitly to PIPEFRAMEPIXEL
  drm/i915: pass dev_priv explicitly to PIPESTAT
  drm/i915: pass dev_priv explicitly to PIPE_ARB_CTL
  drm/i915: pass dev_priv explicitly to ICL_PIPESTATUS
  drm/i915: pass dev_priv explicitly to DSPARB
  drm/i915: pass dev_priv explicitly to DSPFW1
  drm/i915: pass dev_priv explicitly to DSPFW2
  drm/i915: pass dev_priv explicitly to DSPFW3
  drm/i915: pass dev_priv explicitly to PIPE_FRMCOUNT_G4X
  drm/i915: pass dev_priv explicitly to PIPE_FLIPCOUNT_G4X
  drm/i915: pass dev_priv explicitly to CHV_BLEND
  drm/i915: pass dev_priv explicitly to CHV_CANVAS
  drm/i915: pass dev_priv explicitly to SWF0
  drm/i915: pass dev_priv explicitly to SWF1
  drm/i915: pass dev_priv explicitly to SWF3
  drm/i915: pass dev_priv explicitly to _PIPEBDSL
  drm/i915: pass dev_priv explicitly to _TRANSBCONF
  drm/i915: pass dev_priv explicitly to _PIPEBSTAT
  drm/i915: pass dev_priv explicitly to _PIPEB_FRMCOUNT_G4X
  drm/i915: pass dev_priv explicitly to _PIPEB_FLIPCOUNT_G4X
  drm/i915: pass dev_priv explicitly to _DSPBCNTR
  drm/i915: pass dev_priv explicitly to _DSPBADDR
  drm/i915: pass dev_priv explicitly to _DSPBSTRIDE
  drm/i915: pass dev_priv explicitly to _DSPBPOS
  drm/i915: pass dev_priv explicitly to _DSPBSIZE
  drm/i915: pass dev_priv explicitly to _DSPBSURF
  drm/i915: pass dev_priv explicitly to _DSPBTILEOFF
  drm/i915: pass dev_priv explicitly to _DSPBOFFSET
  drm/i915: pass dev_priv explicitly to _DSPBSURFLIVE
  drm/i915: pass dev_priv explicitly to PIPE_DATA_M1
  drm/i915: pass dev_priv explicitly to PIPE_DATA_N1
  drm/i915: pass dev_priv explicitly to PIPE_DATA_M2
  drm/i915: pass dev_priv explicitly to PIPE_DATA_N2
  drm/i915: pass dev_priv explicitly to PIPE_LINK_M1
  drm/i915: pass dev_priv explicitly to PIPE_LINK_N1
  drm/i915: pass dev_priv explicitly to PIPE_LINK_M2
  drm/i915: pass dev_priv explicitly to PIPE_LINK_N2
  drm/i915: pass dev_priv explicitly to HSW_STEREO_3D_CTL
  drm/i915: pass dev_priv explicitly to TRANS_DDI_FUNC_CTL
  drm/i915: pass dev_priv explicitly to TRANS_DDI_FUNC_CTL2
  drm/i915: pass dev_priv explicitly to TGL_DP_TP_CTL
  drm/i915: pass dev_priv explicitly to TGL_DP_TP_STATUS
  drm/i915: pass dev_priv explicitly to TRANS_MSA_MISC
  drm/i915: pass dev_priv explicitly to TRANS_SET_CONTEXT_LATENCY
  drm/i915: pass dev_priv explicitly to MTL_CLKGATE_DIS_TRANS

 drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |   2 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  87 ++++----
 drivers/gpu/drm/i915/display/icl_dsi.c        |  46 +++--
 drivers/gpu/drm/i915/display/intel_crt.c      |  50 +++--
 drivers/gpu/drm/i915/display/intel_ddi.c      |  47 +++--
 drivers/gpu/drm/i915/display/intel_display.c  | 193 ++++++++++--------
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  17 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 .../i915/display/intel_display_power_well.c   |  14 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   5 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  63 +++---
 drivers/gpu/drm/i915/display/intel_drrs.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  15 +-
 .../drm/i915/display/intel_fifo_underrun.c    |  13 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   5 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  12 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  10 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  21 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  14 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   3 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |   2 +-
 drivers/gpu/drm/i915/gvt/display.c            |  59 +++---
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |   6 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  28 +--
 drivers/gpu/drm/i915/i915_irq.c               |   5 +-
 drivers/gpu/drm/i915/i915_reg.h               | 130 ++++++------
 drivers/gpu/drm/i915/i915_suspend.c           |  48 +++--
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 180 ++++++++--------
 35 files changed, 610 insertions(+), 490 deletions(-)

-- 
2.39.2

