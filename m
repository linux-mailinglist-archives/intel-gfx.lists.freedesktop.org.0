Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AD7A45B1B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 11:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297C810E8BC;
	Wed, 26 Feb 2025 10:02:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ch/sh8bj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDDDA10E8BA;
 Wed, 26 Feb 2025 10:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740564118; x=1772100118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pvdbFPQStzBwjrXWWHMmCF5LAVVvqRnp0uWGp2hzMO8=;
 b=Ch/sh8bjtq/FweT2OnU4gG7sd6lbycv6fD/qFQBIJ/VVz+cgQaHxyf7i
 AWPNXIluqNUlaCnMv4bAZrpqdChWMqgpvu62j4ojnTb4+g6cYuVHOvwXz
 YcfXyr73ByGeSQb//VLuwOcQqZfFw8mUJ81AfvP40d0P8NIByJxWdYZiU
 gC4ouGcL6jVoMg1I4MusgphfzA9AgzxrGoIEWy/2ryVyW7TAn5Z3eYgHJ
 NIJ245KZWBxTQqQy6j2khpFZGLvb5yAtuEnyxXVW0dcxHE861CUhi/iVZ
 fS0vo33hT+AEh8R/7Ct2LLZfnzxVWO7XyM4UhTWqr4CtJkxXlbZjfl+cq Q==;
X-CSE-ConnectionGUID: dATtLX0/QbmOiNwwFFDdDw==
X-CSE-MsgGUID: fkGI3+iJSkieUQ5oTvPcqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="28995186"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="28995186"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:01:58 -0800
X-CSE-ConnectionGUID: zVPV+Z0AQdewsenSTqvleQ==
X-CSE-MsgGUID: imgUH9JNSD+Ic9NcTrf/OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="121758151"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.74])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:01:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/5] drm/i915/pfit: split out intel_pfit_regs.h
Date: Wed, 26 Feb 2025 12:01:11 +0200
Message-Id: <db8952baa3e3e5eaaa8a3a5bc723c4e47aeaa6a7.1740564009.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740564009.git.jani.nikula@intel.com>
References: <cover.1740564009.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Split out the panel fitter registers to a separate file.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
 drivers/gpu/drm/i915/display/intel_overlay.c  |  1 +
 drivers/gpu/drm/i915/display/intel_pfit.c     |  1 +
 .../gpu/drm/i915/display/intel_pfit_regs.h    | 79 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 70 ----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
 6 files changed, 83 insertions(+), 70 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pfit_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 12e5064ff7e2..19f52d1659fa 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -53,6 +53,7 @@
 #include "intel_lvds_regs.h"
 #include "intel_panel.h"
 #include "intel_pfit.h"
+#include "intel_pfit_regs.h"
 #include "intel_pps_regs.h"
 
 /* Private structure for the integrated LVDS support */
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 4d00db86131b..5c1b20af2a07 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -42,6 +42,7 @@
 #include "intel_frontbuffer.h"
 #include "intel_overlay.h"
 #include "intel_pci_config.h"
+#include "intel_pfit_regs.h"
 
 /* Limits for overlay size. According to intel doc, the real limits are:
  * Y width: 4095, UV width (planar): 2047, Y height: 2047,
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index fa271c87de05..6fc58fbee2f9 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -11,6 +11,7 @@
 #include "intel_display_types.h"
 #include "intel_lvds_regs.h"
 #include "intel_pfit.h"
+#include "intel_pfit_regs.h"
 
 static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_pfit_regs.h b/drivers/gpu/drm/i915/display/intel_pfit_regs.h
new file mode 100644
index 000000000000..add8ce28004e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pfit_regs.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __INTEL_PFIT_REGS_H__
+#define __INTEL_PFIT_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+/* Panel fitting */
+#define PFIT_CONTROL(dev_priv)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61230)
+#define   PFIT_ENABLE			REG_BIT(31)
+#define   PFIT_PIPE_MASK		REG_GENMASK(30, 29) /* 965+ */
+#define   PFIT_PIPE(pipe)		REG_FIELD_PREP(PFIT_PIPE_MASK, (pipe))
+#define   PFIT_SCALING_MASK		REG_GENMASK(28, 26) /* 965+ */
+#define   PFIT_SCALING_AUTO		REG_FIELD_PREP(PFIT_SCALING_MASK, 0)
+#define   PFIT_SCALING_PROGRAMMED	REG_FIELD_PREP(PFIT_SCALING_MASK, 1)
+#define   PFIT_SCALING_PILLAR		REG_FIELD_PREP(PFIT_SCALING_MASK, 2)
+#define   PFIT_SCALING_LETTER		REG_FIELD_PREP(PFIT_SCALING_MASK, 3)
+#define   PFIT_FILTER_MASK		REG_GENMASK(25, 24) /* 965+ */
+#define   PFIT_FILTER_FUZZY		REG_FIELD_PREP(PFIT_FILTER_MASK, 0)
+#define   PFIT_FILTER_CRISP		REG_FIELD_PREP(PFIT_FILTER_MASK, 1)
+#define   PFIT_FILTER_MEDIAN		REG_FIELD_PREP(PFIT_FILTER_MASK, 2)
+#define   PFIT_VERT_INTERP_MASK		REG_GENMASK(11, 10) /* pre-965 */
+#define   PFIT_VERT_INTERP_BILINEAR	REG_FIELD_PREP(PFIT_VERT_INTERP_MASK, 1)
+#define   PFIT_VERT_AUTO_SCALE		REG_BIT(9) /* pre-965 */
+#define   PFIT_HORIZ_INTERP_MASK	REG_GENMASK(7, 6) /* pre-965 */
+#define   PFIT_HORIZ_INTERP_BILINEAR	REG_FIELD_PREP(PFIT_HORIZ_INTERP_MASK, 1)
+#define   PFIT_HORIZ_AUTO_SCALE		REG_BIT(5) /* pre-965 */
+#define   PFIT_PANEL_8TO6_DITHER_ENABLE	REG_BIT(3) /* pre-965 */
+
+#define PFIT_PGM_RATIOS(dev_priv) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61234)
+#define   PFIT_VERT_SCALE_MASK		REG_GENMASK(31, 20) /* pre-965 */
+#define   PFIT_VERT_SCALE(x)		REG_FIELD_PREP(PFIT_VERT_SCALE_MASK, (x))
+#define   PFIT_HORIZ_SCALE_MASK		REG_GENMASK(15, 4) /* pre-965 */
+#define   PFIT_HORIZ_SCALE(x)		REG_FIELD_PREP(PFIT_HORIZ_SCALE_MASK, (x))
+#define   PFIT_VERT_SCALE_MASK_965	REG_GENMASK(28, 16) /* 965+ */
+#define   PFIT_HORIZ_SCALE_MASK_965	REG_GENMASK(12, 0) /* 965+ */
+
+#define PFIT_AUTO_RATIOS(dev_priv) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61238)
+
+/* CPU panel fitter */
+/* IVB+ has 3 fitters, 0 is 7x5 capable, the other two only 3x3 */
+#define _PFA_CTL_1		0x68080
+#define _PFB_CTL_1		0x68880
+#define PF_CTL(pipe)		_MMIO_PIPE(pipe, _PFA_CTL_1, _PFB_CTL_1)
+#define   PF_ENABLE			REG_BIT(31)
+#define   PF_PIPE_SEL_MASK_IVB		REG_GENMASK(30, 29) /* ivb/hsw */
+#define   PF_PIPE_SEL_IVB(pipe)		REG_FIELD_PREP(PF_PIPE_SEL_MASK_IVB, (pipe))
+#define   PF_FILTER_MASK		REG_GENMASK(24, 23)
+#define   PF_FILTER_PROGRAMMED		REG_FIELD_PREP(PF_FILTER_MASK, 0)
+#define   PF_FILTER_MED_3x3		REG_FIELD_PREP(PF_FILTER_MASK, 1)
+#define   PF_FILTER_EDGE_ENHANCE	REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 2)
+#define   PF_FILTER_EDGE_SOFTEN		REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 3)
+
+#define _PFA_WIN_SZ		0x68074
+#define _PFB_WIN_SZ		0x68874
+#define PF_WIN_SZ(pipe)		_MMIO_PIPE(pipe, _PFA_WIN_SZ, _PFB_WIN_SZ)
+#define   PF_WIN_XSIZE_MASK	REG_GENMASK(31, 16)
+#define   PF_WIN_XSIZE(w)	REG_FIELD_PREP(PF_WIN_XSIZE_MASK, (w))
+#define   PF_WIN_YSIZE_MASK	REG_GENMASK(15, 0)
+#define   PF_WIN_YSIZE(h)	REG_FIELD_PREP(PF_WIN_YSIZE_MASK, (h))
+
+#define _PFA_WIN_POS		0x68070
+#define _PFB_WIN_POS		0x68870
+#define PF_WIN_POS(pipe)	_MMIO_PIPE(pipe, _PFA_WIN_POS, _PFB_WIN_POS)
+#define   PF_WIN_XPOS_MASK	REG_GENMASK(31, 16)
+#define   PF_WIN_XPOS(x)	REG_FIELD_PREP(PF_WIN_XPOS_MASK, (x))
+#define   PF_WIN_YPOS_MASK	REG_GENMASK(15, 0)
+#define   PF_WIN_YPOS(y)	REG_FIELD_PREP(PF_WIN_YPOS_MASK, (y))
+
+#define _PFA_VSCALE		0x68084
+#define _PFB_VSCALE		0x68884
+#define PF_VSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_VSCALE, _PFB_VSCALE)
+
+#define _PFA_HSCALE		0x68090
+#define _PFB_HSCALE		0x68890
+#define PF_HSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_HSCALE, _PFB_HSCALE)
+
+#endif /* __INTEL_PFIT_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b31b26e9a685..8084debd28a2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1385,38 +1385,6 @@
 /* ADL and later: */
 #define   VIDEO_DIP_ENABLE_AS_ADL	REG_BIT(23)
 
-/* Panel fitting */
-#define PFIT_CONTROL(dev_priv)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61230)
-#define   PFIT_ENABLE			REG_BIT(31)
-#define   PFIT_PIPE_MASK		REG_GENMASK(30, 29) /* 965+ */
-#define   PFIT_PIPE(pipe)		REG_FIELD_PREP(PFIT_PIPE_MASK, (pipe))
-#define   PFIT_SCALING_MASK		REG_GENMASK(28, 26) /* 965+ */
-#define   PFIT_SCALING_AUTO		REG_FIELD_PREP(PFIT_SCALING_MASK, 0)
-#define   PFIT_SCALING_PROGRAMMED	REG_FIELD_PREP(PFIT_SCALING_MASK, 1)
-#define   PFIT_SCALING_PILLAR		REG_FIELD_PREP(PFIT_SCALING_MASK, 2)
-#define   PFIT_SCALING_LETTER		REG_FIELD_PREP(PFIT_SCALING_MASK, 3)
-#define   PFIT_FILTER_MASK		REG_GENMASK(25, 24) /* 965+ */
-#define   PFIT_FILTER_FUZZY		REG_FIELD_PREP(PFIT_FILTER_MASK, 0)
-#define   PFIT_FILTER_CRISP		REG_FIELD_PREP(PFIT_FILTER_MASK, 1)
-#define   PFIT_FILTER_MEDIAN		REG_FIELD_PREP(PFIT_FILTER_MASK, 2)
-#define   PFIT_VERT_INTERP_MASK		REG_GENMASK(11, 10) /* pre-965 */
-#define   PFIT_VERT_INTERP_BILINEAR	REG_FIELD_PREP(PFIT_VERT_INTERP_MASK, 1)
-#define   PFIT_VERT_AUTO_SCALE		REG_BIT(9) /* pre-965 */
-#define   PFIT_HORIZ_INTERP_MASK	REG_GENMASK(7, 6) /* pre-965 */
-#define   PFIT_HORIZ_INTERP_BILINEAR	REG_FIELD_PREP(PFIT_HORIZ_INTERP_MASK, 1)
-#define   PFIT_HORIZ_AUTO_SCALE		REG_BIT(5) /* pre-965 */
-#define   PFIT_PANEL_8TO6_DITHER_ENABLE	REG_BIT(3) /* pre-965 */
-
-#define PFIT_PGM_RATIOS(dev_priv) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61234)
-#define   PFIT_VERT_SCALE_MASK		REG_GENMASK(31, 20) /* pre-965 */
-#define   PFIT_VERT_SCALE(x)		REG_FIELD_PREP(PFIT_VERT_SCALE_MASK, (x))
-#define   PFIT_HORIZ_SCALE_MASK		REG_GENMASK(15, 4) /* pre-965 */
-#define   PFIT_HORIZ_SCALE(x)		REG_FIELD_PREP(PFIT_HORIZ_SCALE_MASK, (x))
-#define   PFIT_VERT_SCALE_MASK_965	REG_GENMASK(28, 16) /* 965+ */
-#define   PFIT_HORIZ_SCALE_MASK_965	REG_GENMASK(12, 0) /* 965+ */
-
-#define PFIT_AUTO_RATIOS(dev_priv) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61238)
-
 #define PCH_GTC_CTL		_MMIO(0xe7000)
 #define   PCH_GTC_ENABLE	(1 << 31)
 
@@ -1911,44 +1879,6 @@
 #define _PIPEB_LINK_N2		0x6104c
 #define PIPE_LINK_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
 
-/* CPU panel fitter */
-/* IVB+ has 3 fitters, 0 is 7x5 capable, the other two only 3x3 */
-#define _PFA_CTL_1		0x68080
-#define _PFB_CTL_1		0x68880
-#define PF_CTL(pipe)		_MMIO_PIPE(pipe, _PFA_CTL_1, _PFB_CTL_1)
-#define   PF_ENABLE			REG_BIT(31)
-#define   PF_PIPE_SEL_MASK_IVB		REG_GENMASK(30, 29) /* ivb/hsw */
-#define   PF_PIPE_SEL_IVB(pipe)		REG_FIELD_PREP(PF_PIPE_SEL_MASK_IVB, (pipe))
-#define   PF_FILTER_MASK		REG_GENMASK(24, 23)
-#define   PF_FILTER_PROGRAMMED		REG_FIELD_PREP(PF_FILTER_MASK, 0)
-#define   PF_FILTER_MED_3x3		REG_FIELD_PREP(PF_FILTER_MASK, 1)
-#define   PF_FILTER_EDGE_ENHANCE	REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 2)
-#define   PF_FILTER_EDGE_SOFTEN		REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 3)
-
-#define _PFA_WIN_SZ		0x68074
-#define _PFB_WIN_SZ		0x68874
-#define PF_WIN_SZ(pipe)		_MMIO_PIPE(pipe, _PFA_WIN_SZ, _PFB_WIN_SZ)
-#define   PF_WIN_XSIZE_MASK	REG_GENMASK(31, 16)
-#define   PF_WIN_XSIZE(w)	REG_FIELD_PREP(PF_WIN_XSIZE_MASK, (w))
-#define   PF_WIN_YSIZE_MASK	REG_GENMASK(15, 0)
-#define   PF_WIN_YSIZE(h)	REG_FIELD_PREP(PF_WIN_YSIZE_MASK, (h))
-
-#define _PFA_WIN_POS		0x68070
-#define _PFB_WIN_POS		0x68870
-#define PF_WIN_POS(pipe)	_MMIO_PIPE(pipe, _PFA_WIN_POS, _PFB_WIN_POS)
-#define   PF_WIN_XPOS_MASK	REG_GENMASK(31, 16)
-#define   PF_WIN_XPOS(x)	REG_FIELD_PREP(PF_WIN_XPOS_MASK, (x))
-#define   PF_WIN_YPOS_MASK	REG_GENMASK(15, 0)
-#define   PF_WIN_YPOS(y)	REG_FIELD_PREP(PF_WIN_YPOS_MASK, (y))
-
-#define _PFA_VSCALE		0x68084
-#define _PFB_VSCALE		0x68884
-#define PF_VSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_VSCALE, _PFB_VSCALE)
-
-#define _PFA_HSCALE		0x68090
-#define _PFB_HSCALE		0x68890
-#define PF_HSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_HSCALE, _PFB_HSCALE)
-
 /*
  * Skylake scalers
  */
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 04076316e139..76d84cbb8361 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -18,6 +18,7 @@
 #include "display/intel_fbc_regs.h"
 #include "display/intel_fdi_regs.h"
 #include "display/intel_lvds_regs.h"
+#include "display/intel_pfit_regs.h"
 #include "display/intel_psr_regs.h"
 #include "display/intel_sprite_regs.h"
 #include "display/skl_universal_plane_regs.h"
-- 
2.39.5

