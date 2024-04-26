Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 148EC8B37D4
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59A8B10F062;
	Fri, 26 Apr 2024 13:03:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mq4gqqlG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2451710E9E9;
 Fri, 26 Apr 2024 13:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136615; x=1745672615;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a5JDKb4u3ip7ps6JPEHGzOCoKjm6K4KWOS+bRa+QxSI=;
 b=mq4gqqlGD/Qvtb87O7fhrxojcqXxF/OCPKYDXokajXP4dKtNqnd0fYW2
 VfJtfU/E3vtu1DWvQKN1nmGdaGNflr511MgLVN2X6s+37C6we7pOkG0m3
 cgwzopRkas8YxFD88Z3aGgWhhysAPq7+fv7I8JAD8Si6Vx0riTyWnstBo
 D98zKps1K4vDZB/nJNEZKCh9lht+nLRiLMQa5ORDKnzQM/AfrZH568+WU
 BEbEcDmsEw2AINaQwt6JM5m61xMB18KdTUiSlTfjbSZP5LR3frsWkIgBF
 0zHraFmqW8SZ07Xx18ttuuEF0BxiFfF5fmUkMzzrAKI73YdoWDYdXMqRs g==;
X-CSE-ConnectionGUID: Pmi2n1qaQ5+sCJR1flIvaA==
X-CSE-MsgGUID: S+YXs3zwS06/xdEM3MM2bw==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="10028799"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="10028799"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:03:34 -0700
X-CSE-ConnectionGUID: Pv3CbkeBRQaAkdC/gr2TiA==
X-CSE-MsgGUID: /LGUUirgTlaptD4tZmUpQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="30052954"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:03:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 000/123] drm/i915: remove implicit dev_priv local variable use
Date: Fri, 26 Apr 2024 16:01:25 +0300
Message-Id: <cover.1714136165.git.jani.nikula@intel.com>
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

Hey all, it's time to stop using the implicit dev_priv local variable in
register macros. Yes, this is huge. It's also (almost) completely
scripted.

Thoughts?

BR,
Jani.


Here's the script:


	#!/bin/bash
	
	set -e
	
	# Find all the registers implicitly relying on dev_priv
	REGS=$(git grep -h "#define.*dev_priv" -- drivers/gpu/drm/i915/i915_reg.h |\
		       grep -v '#define[ \t]\+[a-zA-Z0-9_]\+(dev_priv' |\
		       sed 's/#define[ \t]\+\([a-zA-Z0-9_]\+\).*/\1/')
	
	for reg in $REGS; do
		echo $reg
		
		FILES=$(git grep -wl $reg -- drivers/gpu/drm/i915)
	
		cocci=$(mktemp)
		cat >$cocci <<EOF
	@@
	identifier reg =~ "^$reg\$";
	@@
	
	  <...
	(
	  reg(
	+     dev_priv,
	      ...)
	|
	- reg
	+ reg(dev_priv)
	)
	  ...>
	
	EOF
	
		# already function-like macros
		sed -i "s/\(#define *${reg}(\)/\1dev_priv, /" $FILES
	
		# new function-like macros
		sed -i "s/\(#define *${reg}\)\([ \t]\)/\1(dev_priv)\2/" $FILES
	
		spatch --sp-file $cocci --in-place --linux-spacing $FILES >/dev/null
	
		rm -f $cocci
	
		git commit -as -F - <<EOF
	drm/i915: pass dev_priv explicitly to $reg
	
	Avoid the implicit dev_priv local variable use, and pass dev_priv
	explicitly to the $reg register macro.
	
	EOF
		
	done


Jani Nikula (123):
  drm/i915: pass dev_priv explicitly to DPLL
  drm/i915: pass dev_priv explicitly to DPLL_MD
  drm/i915: pass dev_priv explicitly to PALETTE
  drm/i915: pass dev_priv explicitly to PIPE_CRC_CTL
  drm/i915: pass dev_priv explicitly to PIPE_CRC_RES_1_IVB
  drm/i915: pass dev_priv explicitly to PIPE_CRC_RES_2_IVB
  drm/i915: pass dev_priv explicitly to PIPE_CRC_RES_3_IVB
  drm/i915: pass dev_priv explicitly to PIPE_CRC_RES_4_IVB
  drm/i915: pass dev_priv explicitly to PIPE_CRC_RES_5_IVB
  drm/i915: pass dev_priv explicitly to PIPE_CRC_RES_RED
  drm/i915: pass dev_priv explicitly to PIPE_CRC_RES_GREEN
  drm/i915: pass dev_priv explicitly to PIPE_CRC_RES_BLUE
  drm/i915: pass dev_priv explicitly to PIPE_CRC_RES_RES1_I915
  drm/i915: pass dev_priv explicitly to PIPE_CRC_RES_RES2_G4X
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
  drm/i915: pass dev_priv explicitly to TRANS_VRR_CTL
  drm/i915: pass dev_priv explicitly to TRANS_VRR_VMAX
  drm/i915: pass dev_priv explicitly to TRANS_VRR_VMIN
  drm/i915: pass dev_priv explicitly to TRANS_VRR_VMAXSHIFT
  drm/i915: pass dev_priv explicitly to TRANS_VRR_STATUS
  drm/i915: pass dev_priv explicitly to TRANS_VRR_VTOTAL_PREV
  drm/i915: pass dev_priv explicitly to TRANS_VRR_FLIPLINE
  drm/i915: pass dev_priv explicitly to TRANS_VRR_STATUS2
  drm/i915: pass dev_priv explicitly to TRANS_PUSH
  drm/i915: pass dev_priv explicitly to TRANS_VRR_VSYNC
  drm/i915: pass dev_priv explicitly to PORT_HOTPLUG_EN
  drm/i915: pass dev_priv explicitly to PORT_HOTPLUG_STAT
  drm/i915: pass dev_priv explicitly to PORT_DFT2_G4X
  drm/i915: pass dev_priv explicitly to PFIT_CONTROL
  drm/i915: pass dev_priv explicitly to PFIT_PGM_RATIOS
  drm/i915: pass dev_priv explicitly to PFIT_AUTO_RATIOS
  drm/i915: pass dev_priv explicitly to TRANSCONF
  drm/i915: pass dev_priv explicitly to PIPEDSL
  drm/i915: pass dev_priv explicitly to PIPEFRAME
  drm/i915: pass dev_priv explicitly to PIPEFRAMEPIXEL
  drm/i915: pass dev_priv explicitly to PIPESTAT
  drm/i915: pass dev_priv explicitly to PIPEGCMAX
  drm/i915: pass dev_priv explicitly to PIPE_ARB_CTL
  drm/i915: pass dev_priv explicitly to ICL_PIPESTATUS
  drm/i915: pass dev_priv explicitly to DSPARB
  drm/i915: pass dev_priv explicitly to DSPFW1
  drm/i915: pass dev_priv explicitly to DSPFW2
  drm/i915: pass dev_priv explicitly to DSPFW3
  drm/i915: pass dev_priv explicitly to PIPE_FRMCOUNT_G4X
  drm/i915: pass dev_priv explicitly to PIPE_FLIPCOUNT_G4X
  drm/i915: pass dev_priv explicitly to CURCNTR
  drm/i915: pass dev_priv explicitly to CURBASE
  drm/i915: pass dev_priv explicitly to CURPOS
  drm/i915: pass dev_priv explicitly to CURPOS_ERLY_TPT
  drm/i915: pass dev_priv explicitly to CURSIZE
  drm/i915: pass dev_priv explicitly to CUR_FBC_CTL
  drm/i915: pass dev_priv explicitly to CUR_CHICKEN
  drm/i915: pass dev_priv explicitly to CURSURFLIVE
  drm/i915: pass dev_priv explicitly to DSPADDR_VLV
  drm/i915: pass dev_priv explicitly to DSPCNTR
  drm/i915: pass dev_priv explicitly to DSPADDR
  drm/i915: pass dev_priv explicitly to DSPSTRIDE
  drm/i915: pass dev_priv explicitly to DSPPOS
  drm/i915: pass dev_priv explicitly to DSPSIZE
  drm/i915: pass dev_priv explicitly to DSPSURF
  drm/i915: pass dev_priv explicitly to DSPTILEOFF
  drm/i915: pass dev_priv explicitly to DSPOFFSET
  drm/i915: pass dev_priv explicitly to DSPSURFLIVE
  drm/i915: pass dev_priv explicitly to DSPGAMC
  drm/i915: pass dev_priv explicitly to CHV_BLEND
  drm/i915: pass dev_priv explicitly to CHV_CANVAS
  drm/i915: pass dev_priv explicitly to PRIMPOS
  drm/i915: pass dev_priv explicitly to PRIMSIZE
  drm/i915: pass dev_priv explicitly to PRIMCNSTALPHA
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
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_CTL
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_GCP
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_AVI_DATA
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_VS_DATA
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_SPD_DATA
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_GMP_DATA
  drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_VSC_DATA
  drm/i915: pass dev_priv explicitly to GLK_TVIDEO_DIP_DRM_DATA
  drm/i915: pass dev_priv explicitly to ICL_VIDEO_DIP_PPS_DATA
  drm/i915: pass dev_priv explicitly to ICL_VIDEO_DIP_PPS_ECC
  drm/i915: pass dev_priv explicitly to ADL_TVIDEO_DIP_AS_SDP_DATA
  drm/i915: pass dev_priv explicitly to HSW_STEREO_3D_CTL
  drm/i915: pass dev_priv explicitly to TRANS_DDI_FUNC_CTL
  drm/i915: pass dev_priv explicitly to TRANS_DDI_FUNC_CTL2
  drm/i915: pass dev_priv explicitly to TGL_DP_TP_CTL
  drm/i915: pass dev_priv explicitly to TGL_DP_TP_STATUS
  drm/i915: pass dev_priv explicitly to TRANS_MSA_MISC
  drm/i915: pass dev_priv explicitly to TRANS_SET_CONTEXT_LATENCY
  drm/i915: pass dev_priv explicitly to MTL_CLKGATE_DIS_TRANS
  drm/i915: pass dev_priv explicitly to DSPLINOFF

 drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  62 ++--
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  87 +++---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  46 +--
 drivers/gpu/drm/i915/display/intel_color.c    |  44 +--
 drivers/gpu/drm/i915/display/intel_crt.c      |  50 ++--
 drivers/gpu/drm/i915/display/intel_cursor.c   |  33 ++-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  47 ++--
 drivers/gpu/drm/i915/display/intel_display.c  | 203 ++++++++------
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  41 +--
 .../drm/i915/display/intel_display_power.c    |   2 +-
 .../i915/display/intel_display_power_well.c   |  14 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   5 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  63 +++--
 drivers/gpu/drm/i915/display/intel_drrs.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  15 +-
 .../drm/i915/display/intel_fifo_underrun.c    |  13 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  32 ++-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  12 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  10 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  21 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  20 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  18 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  14 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |  52 ++--
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   3 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  14 +-
 drivers/gpu/drm/i915/gvt/display.c            |  71 ++---
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |  20 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  40 +--
 drivers/gpu/drm/i915/i915_irq.c               |   5 +-
 drivers/gpu/drm/i915/i915_reg.h               | 246 ++++++++--------
 drivers/gpu/drm/i915/i915_suspend.c           |  48 ++--
 drivers/gpu/drm/i915/intel_clock_gating.c     |   9 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 264 +++++++++---------
 42 files changed, 906 insertions(+), 746 deletions(-)

-- 
2.39.2

