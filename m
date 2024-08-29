Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC543964627
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 15:17:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ECC710E113;
	Thu, 29 Aug 2024 13:16:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U7Yrztcg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD5BD10E67C;
 Thu, 29 Aug 2024 13:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724937418; x=1756473418;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d7FUbqN02FptBmZjOWEZN+iv24GXxvGRKomC8B1Cl78=;
 b=U7YrztcgThUGpfISSRys6W9rl5UKYkoAEy8kx2uucXZzLshz6wplChgj
 XNSUTwcGFaJAQu+R5vqdvjG6uiIN22C8YT7oYprVfHOUj2fNj9OftbvV+
 n/B/FjStEn7WesqsIop7Bv6IY6TsUPKLsIBJV7y+id8XoAXDaEYmTLGZw
 agWoPc3dOzSiE81qu4BLJAH781/xqXGm34O/EEme30qSAp7gbG8KybBem
 3kpE4EEJSnYhEfkMzi2URxcXbWR24gM+KFkViTvq5x8Sozf7rU++PewiO
 SdRIrhiigcREm9v7Om59cPIjL/b6iBheq1riIXE7UOgp2NcVo+rsdpVKp w==;
X-CSE-ConnectionGUID: kphEaLspRR+LUvBrUVDtSA==
X-CSE-MsgGUID: fjLTq/QKQJim/r1UhsBC/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23667218"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23667218"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:16:58 -0700
X-CSE-ConnectionGUID: bipqev2uQwSC4NFpAeuKGg==
X-CSE-MsgGUID: KUzA361JQlmYWfQZxdfElQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63261414"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:16:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 01/19] drm/i915/display: Move all DSS control registers to a
 new file
Date: Thu, 29 Aug 2024 18:48:09 +0530
Message-ID: <20240829131828.2350930-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
References: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Move all registers and bits related to dss ctl to a new file.

v2: Move modification to use REG_* macros to a new patch. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dss_regs.h | 49 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  1 +
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 38 --------------
 6 files changed, 53 insertions(+), 41 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dss_regs.h

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 293efc1f841d..5ad5011e1fee 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -44,9 +44,9 @@
 #include "intel_de.h"
 #include "intel_dsi.h"
 #include "intel_dsi_vbt.h"
+#include "intel_dss_regs.h"
 #include "intel_panel.h"
 #include "intel_vdsc.h"
-#include "intel_vdsc_regs.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 25ff3ff0ab95..4566a60c981c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -57,6 +57,7 @@
 #include "intel_dp_tunnel.h"
 #include "intel_dpio_phy.h"
 #include "intel_dsi.h"
+#include "intel_dss_regs.h"
 #include "intel_encoder.h"
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
@@ -74,7 +75,6 @@
 #include "intel_snps_phy.h"
 #include "intel_tc.h"
 #include "intel_vdsc.h"
-#include "intel_vdsc_regs.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1042f65967ba..8bce46bb7f3f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -87,6 +87,7 @@
 #include "intel_drrs.h"
 #include "intel_dsb.h"
 #include "intel_dsi.h"
+#include "intel_dss_regs.h"
 #include "intel_dvo.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
@@ -118,7 +119,6 @@
 #include "intel_tv.h"
 #include "intel_vblank.h"
 #include "intel_vdsc.h"
-#include "intel_vdsc_regs.h"
 #include "intel_vga.h"
 #include "intel_vrr.h"
 #include "intel_wm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dss_regs.h b/drivers/gpu/drm/i915/display/intel_dss_regs.h
new file mode 100644
index 000000000000..b1e24ea027c3
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dss_regs.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_DSS_REGS_H__
+#define __INTEL_DSS_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+/* Display Stream Splitter Control */
+#define DSS_CTL1				_MMIO(0x67400)
+#define  SPLITTER_ENABLE			(1 << 31)
+#define  JOINER_ENABLE				(1 << 30)
+#define  DUAL_LINK_MODE_INTERLEAVE		(1 << 24)
+#define  DUAL_LINK_MODE_FRONTBACK		(0 << 24)
+#define  OVERLAP_PIXELS_MASK			(0xf << 16)
+#define  OVERLAP_PIXELS(pixels)			((pixels) << 16)
+#define  LEFT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
+#define  LEFT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
+#define  MAX_DL_BUFFER_TARGET_DEPTH		0x5a0
+
+#define DSS_CTL2				_MMIO(0x67404)
+#define  LEFT_BRANCH_VDSC_ENABLE		(1 << 31)
+#define  RIGHT_BRANCH_VDSC_ENABLE		(1 << 15)
+#define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
+#define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
+
+#define _ICL_PIPE_DSS_CTL1_PB			0x78200
+#define _ICL_PIPE_DSS_CTL1_PC			0x78400
+#define ICL_PIPE_DSS_CTL1(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
+							   _ICL_PIPE_DSS_CTL1_PB, \
+							   _ICL_PIPE_DSS_CTL1_PC)
+#define  BIG_JOINER_ENABLE			(1 << 29)
+#define  PRIMARY_BIG_JOINER_ENABLE		(1 << 28)
+#define  VGA_CENTERING_ENABLE			(1 << 27)
+#define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
+#define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
+#define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
+#define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
+#define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
+
+#define _ICL_PIPE_DSS_CTL2_PB			0x78204
+#define _ICL_PIPE_DSS_CTL2_PC			0x78404
+#define ICL_PIPE_DSS_CTL2(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
+							   _ICL_PIPE_DSS_CTL2_PB, \
+							   _ICL_PIPE_DSS_CTL2_PC)
+
+#endif /* __INTEL_DSS_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 2e849b015e74..891346f1f09a 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -15,6 +15,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
+#include "intel_dss_regs.h"
 #include "intel_qp_tables.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index f921ad67b587..27c696e266af 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -8,44 +8,6 @@
 
 #include "intel_display_reg_defs.h"
 
-/* Display Stream Splitter Control */
-#define DSS_CTL1				_MMIO(0x67400)
-#define  SPLITTER_ENABLE			(1 << 31)
-#define  JOINER_ENABLE				(1 << 30)
-#define  DUAL_LINK_MODE_INTERLEAVE		(1 << 24)
-#define  DUAL_LINK_MODE_FRONTBACK		(0 << 24)
-#define  OVERLAP_PIXELS_MASK			(0xf << 16)
-#define  OVERLAP_PIXELS(pixels)			((pixels) << 16)
-#define  LEFT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
-#define  LEFT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
-#define  MAX_DL_BUFFER_TARGET_DEPTH		0x5a0
-
-#define DSS_CTL2				_MMIO(0x67404)
-#define  LEFT_BRANCH_VDSC_ENABLE		(1 << 31)
-#define  RIGHT_BRANCH_VDSC_ENABLE		(1 << 15)
-#define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
-#define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
-
-#define _ICL_PIPE_DSS_CTL1_PB			0x78200
-#define _ICL_PIPE_DSS_CTL1_PC			0x78400
-#define ICL_PIPE_DSS_CTL1(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_PIPE_DSS_CTL1_PB, \
-							   _ICL_PIPE_DSS_CTL1_PC)
-#define  BIG_JOINER_ENABLE			(1 << 29)
-#define  PRIMARY_BIG_JOINER_ENABLE		(1 << 28)
-#define  VGA_CENTERING_ENABLE			(1 << 27)
-#define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
-#define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
-#define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
-#define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
-#define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
-
-#define _ICL_PIPE_DSS_CTL2_PB			0x78204
-#define _ICL_PIPE_DSS_CTL2_PC			0x78404
-#define ICL_PIPE_DSS_CTL2(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
-							   _ICL_PIPE_DSS_CTL2_PB, \
-							   _ICL_PIPE_DSS_CTL2_PC)
-
 /* Icelake Display Stream Compression Registers */
 #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
 #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
-- 
2.45.2

