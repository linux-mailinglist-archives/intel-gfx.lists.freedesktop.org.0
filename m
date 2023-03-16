Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A015A6BD18D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:55:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF2010ED00;
	Thu, 16 Mar 2023 13:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC6C10ECFB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974941; x=1710510941;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eo0sUXidGeZDNtWd+EiLMRBskzbLqIo0JpNneDJpp3s=;
 b=cbwIyEeACgeTnUZzM0DPBM0dU3QUzkqsiRtUYtSO2iWqTNK0CxSaqqMm
 MKLbsvUlfou+MGUejkBReNyQ/U/ir9p4b4riTYNena5hD0kWE6cAUypFU
 pPRjHUU7lkV519p4o/Souuf3oA3TDQmmhVatsndOqIUDdoLGS6sWiAES4
 3gD9YofxDKPmlHgR3x0uXKF/0FXepyVktm+PoCdpVl+xn8sDI4C3aIu3I
 uRvnZffdG3rV+ev8RtkDXDnY2Bn5eppZ9smhcuJo+twOfb7tNKkO1M9ls
 EmItJA/G78qDyWB+xhlkww3XOeYfyUZN2BrcadClvLjA0QuWoKnZMOc8Y A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="402872187"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="402872187"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:30:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="679893586"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="679893586"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.158])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:30:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:29:34 +0200
Message-Id: <827a29f2c5f007ff9f804c990d80b5738930977b.1678973283.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1678973282.git.jani.nikula@intel.com>
References: <cover.1678973282.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/wm: split out SKL+ watermark regs
 to a separate file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Clean up i915_reg.h by splitting out SKL+ watermark regs to
display/skl_watermark_regs.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_power.c    |   1 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |   1 +
 .../gpu/drm/i915/display/skl_watermark_regs.h | 165 ++++++++++++++++++
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 154 ----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 6 files changed, 169 insertions(+), 154 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/skl_watermark_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index dedfc837b727..10ea7656e6c8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -22,6 +22,7 @@
 #include "intel_pps_regs.h"
 #include "intel_snps_phy.h"
 #include "skl_watermark.h"
+#include "skl_watermark_regs.h"
 #include "vlv_sideband.h"
 
 #define for_each_power_domain_well(__dev_priv, __power_well, __domain)	\
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 50a9a6adbe32..a9b3bdf94738 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -21,6 +21,7 @@
 #include "intel_pcode.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
+#include "skl_watermark_regs.h"
 
 static void skl_sagv_disable(struct drm_i915_private *i915);
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
new file mode 100644
index 000000000000..5a3473a7844e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
@@ -0,0 +1,165 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __SKL_WATERMARK_REGS_H__
+#define __SKL_WATERMARK_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+#define _PIPEA_MBUS_DBOX_CTL			0x7003C
+#define _PIPEB_MBUS_DBOX_CTL			0x7103C
+#define PIPE_MBUS_DBOX_CTL(pipe)		_MMIO_PIPE(pipe, _PIPEA_MBUS_DBOX_CTL, \
+							   _PIPEB_MBUS_DBOX_CTL)
+#define MBUS_DBOX_B2B_TRANSACTIONS_MAX_MASK	REG_GENMASK(24, 20) /* tgl+ */
+#define MBUS_DBOX_B2B_TRANSACTIONS_MAX(x)	REG_FIELD_PREP(MBUS_DBOX_B2B_TRANSACTIONS_MAX_MASK, x)
+#define MBUS_DBOX_B2B_TRANSACTIONS_DELAY_MASK	REG_GENMASK(19, 17) /* tgl+ */
+#define MBUS_DBOX_B2B_TRANSACTIONS_DELAY(x)	REG_FIELD_PREP(MBUS_DBOX_B2B_TRANSACTIONS_DELAY_MASK, x)
+#define MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN	REG_BIT(16) /* tgl+ */
+#define MBUS_DBOX_BW_CREDIT_MASK		REG_GENMASK(15, 14)
+#define MBUS_DBOX_BW_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, x)
+#define MBUS_DBOX_BW_4CREDITS_MTL		REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, 0x2)
+#define MBUS_DBOX_BW_8CREDITS_MTL		REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, 0x3)
+#define MBUS_DBOX_B_CREDIT_MASK			REG_GENMASK(12, 8)
+#define MBUS_DBOX_B_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_B_CREDIT_MASK, x)
+#define MBUS_DBOX_I_CREDIT_MASK			REG_GENMASK(7, 5)
+#define MBUS_DBOX_I_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_I_CREDIT_MASK, x)
+#define MBUS_DBOX_A_CREDIT_MASK			REG_GENMASK(3, 0)
+#define MBUS_DBOX_A_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_A_CREDIT_MASK, x)
+
+#define MBUS_UBOX_CTL			_MMIO(0x4503C)
+#define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
+#define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
+
+#define MBUS_CTL			_MMIO(0x4438C)
+#define MBUS_JOIN			REG_BIT(31)
+#define MBUS_HASHING_MODE_MASK		REG_BIT(30)
+#define MBUS_HASHING_MODE_2x2		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
+#define MBUS_HASHING_MODE_1x4		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
+#define MBUS_JOIN_PIPE_SELECT_MASK	REG_GENMASK(28, 26)
+#define MBUS_JOIN_PIPE_SELECT(pipe)	REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
+#define MBUS_JOIN_PIPE_SELECT_NONE	MBUS_JOIN_PIPE_SELECT(7)
+
+/* Watermark register definitions for SKL */
+#define _CUR_WM_A_0		0x70140
+#define _CUR_WM_B_0		0x71140
+#define _CUR_WM_SAGV_A		0x70158
+#define _CUR_WM_SAGV_B		0x71158
+#define _CUR_WM_SAGV_TRANS_A	0x7015C
+#define _CUR_WM_SAGV_TRANS_B	0x7115C
+#define _CUR_WM_TRANS_A		0x70168
+#define _CUR_WM_TRANS_B		0x71168
+#define _PLANE_WM_1_A_0		0x70240
+#define _PLANE_WM_1_B_0		0x71240
+#define _PLANE_WM_2_A_0		0x70340
+#define _PLANE_WM_2_B_0		0x71340
+#define _PLANE_WM_SAGV_1_A	0x70258
+#define _PLANE_WM_SAGV_1_B	0x71258
+#define _PLANE_WM_SAGV_2_A	0x70358
+#define _PLANE_WM_SAGV_2_B	0x71358
+#define _PLANE_WM_SAGV_TRANS_1_A	0x7025C
+#define _PLANE_WM_SAGV_TRANS_1_B	0x7125C
+#define _PLANE_WM_SAGV_TRANS_2_A	0x7035C
+#define _PLANE_WM_SAGV_TRANS_2_B	0x7135C
+#define _PLANE_WM_TRANS_1_A	0x70268
+#define _PLANE_WM_TRANS_1_B	0x71268
+#define _PLANE_WM_TRANS_2_A	0x70368
+#define _PLANE_WM_TRANS_2_B	0x71368
+#define   PLANE_WM_EN		(1 << 31)
+#define   PLANE_WM_IGNORE_LINES	(1 << 30)
+#define   PLANE_WM_LINES_MASK	REG_GENMASK(26, 14)
+#define   PLANE_WM_BLOCKS_MASK	REG_GENMASK(11, 0)
+
+#define _CUR_WM_0(pipe) _PIPE(pipe, _CUR_WM_A_0, _CUR_WM_B_0)
+#define CUR_WM(pipe, level) _MMIO(_CUR_WM_0(pipe) + ((4) * (level)))
+#define CUR_WM_SAGV(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_A, _CUR_WM_SAGV_B)
+#define CUR_WM_SAGV_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_TRANS_A, _CUR_WM_SAGV_TRANS_B)
+#define CUR_WM_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_TRANS_A, _CUR_WM_TRANS_B)
+#define _PLANE_WM_1(pipe) _PIPE(pipe, _PLANE_WM_1_A_0, _PLANE_WM_1_B_0)
+#define _PLANE_WM_2(pipe) _PIPE(pipe, _PLANE_WM_2_A_0, _PLANE_WM_2_B_0)
+#define _PLANE_WM_BASE(pipe, plane) \
+	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))
+#define PLANE_WM(pipe, plane, level) \
+	_MMIO(_PLANE_WM_BASE(pipe, plane) + ((4) * (level)))
+#define _PLANE_WM_SAGV_1(pipe) \
+	_PIPE(pipe, _PLANE_WM_SAGV_1_A, _PLANE_WM_SAGV_1_B)
+#define _PLANE_WM_SAGV_2(pipe) \
+	_PIPE(pipe, _PLANE_WM_SAGV_2_A, _PLANE_WM_SAGV_2_B)
+#define PLANE_WM_SAGV(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))
+#define _PLANE_WM_SAGV_TRANS_1(pipe) \
+	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_1_A, _PLANE_WM_SAGV_TRANS_1_B)
+#define _PLANE_WM_SAGV_TRANS_2(pipe) \
+	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_2_A, _PLANE_WM_SAGV_TRANS_2_B)
+#define PLANE_WM_SAGV_TRANS(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))
+#define _PLANE_WM_TRANS_1(pipe) \
+	_PIPE(pipe, _PLANE_WM_TRANS_1_A, _PLANE_WM_TRANS_1_B)
+#define _PLANE_WM_TRANS_2(pipe) \
+	_PIPE(pipe, _PLANE_WM_TRANS_2_A, _PLANE_WM_TRANS_2_B)
+#define PLANE_WM_TRANS(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))
+
+#define _PLANE_BUF_CFG_1_B			0x7127c
+#define _PLANE_BUF_CFG_2_B			0x7137c
+/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
+#define   PLANE_BUF_END_MASK		REG_GENMASK(27, 16)
+#define   PLANE_BUF_END(end)		REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
+#define   PLANE_BUF_START_MASK		REG_GENMASK(11, 0)
+#define   PLANE_BUF_START(start)	REG_FIELD_PREP(PLANE_BUF_START_MASK, (start))
+#define _PLANE_BUF_CFG_1(pipe)	\
+	_PIPE(pipe, _PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B)
+#define _PLANE_BUF_CFG_2(pipe)	\
+	_PIPE(pipe, _PLANE_BUF_CFG_2_A, _PLANE_BUF_CFG_2_B)
+#define PLANE_BUF_CFG(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_BUF_CFG_1(pipe), _PLANE_BUF_CFG_2(pipe))
+
+#define _PLANE_NV12_BUF_CFG_1_B		0x71278
+#define _PLANE_NV12_BUF_CFG_2_B		0x71378
+#define _PLANE_NV12_BUF_CFG_1(pipe)	\
+	_PIPE(pipe, _PLANE_NV12_BUF_CFG_1_A, _PLANE_NV12_BUF_CFG_1_B)
+#define _PLANE_NV12_BUF_CFG_2(pipe)	\
+	_PIPE(pipe, _PLANE_NV12_BUF_CFG_2_A, _PLANE_NV12_BUF_CFG_2_B)
+#define PLANE_NV12_BUF_CFG(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_NV12_BUF_CFG_1(pipe), _PLANE_NV12_BUF_CFG_2(pipe))
+
+/* SKL new cursor registers */
+#define _CUR_BUF_CFG_A				0x7017c
+#define _CUR_BUF_CFG_B				0x7117c
+#define CUR_BUF_CFG(pipe)	_MMIO_PIPE(pipe, _CUR_BUF_CFG_A, _CUR_BUF_CFG_B)
+
+/*
+ * The below are numbered starting from "S1" on gen11/gen12, but starting
+ * with display 13, the bspec switches to a 0-based numbering scheme
+ * (although the addresses stay the same so new S0 = old S1, new S1 = old S2).
+ * We'll just use the 0-based numbering here for all platforms since it's the
+ * way things will be named by the hardware team going forward, plus it's more
+ * consistent with how most of the rest of our registers are named.
+ */
+#define _DBUF_CTL_S0				0x45008
+#define _DBUF_CTL_S1				0x44FE8
+#define _DBUF_CTL_S2				0x44300
+#define _DBUF_CTL_S3				0x44304
+#define DBUF_CTL_S(slice)			_MMIO(_PICK(slice, \
+							    _DBUF_CTL_S0, \
+							    _DBUF_CTL_S1, \
+							    _DBUF_CTL_S2, \
+							    _DBUF_CTL_S3))
+#define  DBUF_POWER_REQUEST			REG_BIT(31)
+#define  DBUF_POWER_STATE			REG_BIT(30)
+#define  DBUF_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(23, 19)
+#define  DBUF_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_TRACKER_STATE_SERVICE_MASK, x)
+#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(18, 16) /* ADL-P+ */
+#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
+
+#define MTL_LATENCY_LP0_LP1		_MMIO(0x45780)
+#define MTL_LATENCY_LP2_LP3		_MMIO(0x45784)
+#define MTL_LATENCY_LP4_LP5		_MMIO(0x45788)
+#define  MTL_LATENCY_LEVEL_EVEN_MASK	REG_GENMASK(12, 0)
+#define  MTL_LATENCY_LEVEL_ODD_MASK	REG_GENMASK(28, 16)
+
+#define MTL_LATENCY_SAGV		_MMIO(0x4578b)
+#define   MTL_LATENCY_QCLK_SAGV		REG_GENMASK(12, 0)
+
+#endif /* __SKL_WATERMARK_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index ea6a21dc8322..8bfccae7e026 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -48,6 +48,7 @@
 #include "display/intel_fbc.h"
 #include "display/intel_fdi_regs.h"
 #include "display/intel_pps_regs.h"
+#include "display/skl_watermark_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index caa24f64e8bf..ea8da91b9b6c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1057,39 +1057,6 @@
 #define MBUS_ABOX_BT_CREDIT_POOL1_MASK	(0x1F << 0)
 #define MBUS_ABOX_BT_CREDIT_POOL1(x)	((x) << 0)
 
-#define _PIPEA_MBUS_DBOX_CTL			0x7003C
-#define _PIPEB_MBUS_DBOX_CTL			0x7103C
-#define PIPE_MBUS_DBOX_CTL(pipe)		_MMIO_PIPE(pipe, _PIPEA_MBUS_DBOX_CTL, \
-							   _PIPEB_MBUS_DBOX_CTL)
-#define MBUS_DBOX_B2B_TRANSACTIONS_MAX_MASK	REG_GENMASK(24, 20) /* tgl+ */
-#define MBUS_DBOX_B2B_TRANSACTIONS_MAX(x)	REG_FIELD_PREP(MBUS_DBOX_B2B_TRANSACTIONS_MAX_MASK, x)
-#define MBUS_DBOX_B2B_TRANSACTIONS_DELAY_MASK	REG_GENMASK(19, 17) /* tgl+ */
-#define MBUS_DBOX_B2B_TRANSACTIONS_DELAY(x)	REG_FIELD_PREP(MBUS_DBOX_B2B_TRANSACTIONS_DELAY_MASK, x)
-#define MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN	REG_BIT(16) /* tgl+ */
-#define MBUS_DBOX_BW_CREDIT_MASK		REG_GENMASK(15, 14)
-#define MBUS_DBOX_BW_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, x)
-#define MBUS_DBOX_BW_4CREDITS_MTL		REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, 0x2)
-#define MBUS_DBOX_BW_8CREDITS_MTL		REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, 0x3)
-#define MBUS_DBOX_B_CREDIT_MASK			REG_GENMASK(12, 8)
-#define MBUS_DBOX_B_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_B_CREDIT_MASK, x)
-#define MBUS_DBOX_I_CREDIT_MASK			REG_GENMASK(7, 5)
-#define MBUS_DBOX_I_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_I_CREDIT_MASK, x)
-#define MBUS_DBOX_A_CREDIT_MASK			REG_GENMASK(3, 0)
-#define MBUS_DBOX_A_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_A_CREDIT_MASK, x)
-
-#define MBUS_UBOX_CTL			_MMIO(0x4503C)
-#define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
-#define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
-
-#define MBUS_CTL			_MMIO(0x4438C)
-#define MBUS_JOIN			REG_BIT(31)
-#define MBUS_HASHING_MODE_MASK		REG_BIT(30)
-#define MBUS_HASHING_MODE_2x2		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
-#define MBUS_HASHING_MODE_1x4		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
-#define MBUS_JOIN_PIPE_SELECT_MASK	REG_GENMASK(28, 26)
-#define MBUS_JOIN_PIPE_SELECT(pipe)	REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
-#define MBUS_JOIN_PIPE_SELECT_NONE	MBUS_JOIN_PIPE_SELECT(7)
-
 /* Make render/texture TLB fetches lower priorty than associated data
  *   fetches. This is not turned on by default
  */
@@ -3188,66 +3155,6 @@
 #define I965_CURSOR_MAX_WM	32
 #define I965_CURSOR_DFT_WM	8
 
-/* Watermark register definitions for SKL */
-#define _CUR_WM_A_0		0x70140
-#define _CUR_WM_B_0		0x71140
-#define _CUR_WM_SAGV_A		0x70158
-#define _CUR_WM_SAGV_B		0x71158
-#define _CUR_WM_SAGV_TRANS_A	0x7015C
-#define _CUR_WM_SAGV_TRANS_B	0x7115C
-#define _CUR_WM_TRANS_A		0x70168
-#define _CUR_WM_TRANS_B		0x71168
-#define _PLANE_WM_1_A_0		0x70240
-#define _PLANE_WM_1_B_0		0x71240
-#define _PLANE_WM_2_A_0		0x70340
-#define _PLANE_WM_2_B_0		0x71340
-#define _PLANE_WM_SAGV_1_A	0x70258
-#define _PLANE_WM_SAGV_1_B	0x71258
-#define _PLANE_WM_SAGV_2_A	0x70358
-#define _PLANE_WM_SAGV_2_B	0x71358
-#define _PLANE_WM_SAGV_TRANS_1_A	0x7025C
-#define _PLANE_WM_SAGV_TRANS_1_B	0x7125C
-#define _PLANE_WM_SAGV_TRANS_2_A	0x7035C
-#define _PLANE_WM_SAGV_TRANS_2_B	0x7135C
-#define _PLANE_WM_TRANS_1_A	0x70268
-#define _PLANE_WM_TRANS_1_B	0x71268
-#define _PLANE_WM_TRANS_2_A	0x70368
-#define _PLANE_WM_TRANS_2_B	0x71368
-#define   PLANE_WM_EN		(1 << 31)
-#define   PLANE_WM_IGNORE_LINES	(1 << 30)
-#define   PLANE_WM_LINES_MASK	REG_GENMASK(26, 14)
-#define   PLANE_WM_BLOCKS_MASK	REG_GENMASK(11, 0)
-
-#define _CUR_WM_0(pipe) _PIPE(pipe, _CUR_WM_A_0, _CUR_WM_B_0)
-#define CUR_WM(pipe, level) _MMIO(_CUR_WM_0(pipe) + ((4) * (level)))
-#define CUR_WM_SAGV(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_A, _CUR_WM_SAGV_B)
-#define CUR_WM_SAGV_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_SAGV_TRANS_A, _CUR_WM_SAGV_TRANS_B)
-#define CUR_WM_TRANS(pipe) _MMIO_PIPE(pipe, _CUR_WM_TRANS_A, _CUR_WM_TRANS_B)
-#define _PLANE_WM_1(pipe) _PIPE(pipe, _PLANE_WM_1_A_0, _PLANE_WM_1_B_0)
-#define _PLANE_WM_2(pipe) _PIPE(pipe, _PLANE_WM_2_A_0, _PLANE_WM_2_B_0)
-#define _PLANE_WM_BASE(pipe, plane) \
-	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))
-#define PLANE_WM(pipe, plane, level) \
-	_MMIO(_PLANE_WM_BASE(pipe, plane) + ((4) * (level)))
-#define _PLANE_WM_SAGV_1(pipe) \
-	_PIPE(pipe, _PLANE_WM_SAGV_1_A, _PLANE_WM_SAGV_1_B)
-#define _PLANE_WM_SAGV_2(pipe) \
-	_PIPE(pipe, _PLANE_WM_SAGV_2_A, _PLANE_WM_SAGV_2_B)
-#define PLANE_WM_SAGV(pipe, plane) \
-	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))
-#define _PLANE_WM_SAGV_TRANS_1(pipe) \
-	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_1_A, _PLANE_WM_SAGV_TRANS_1_B)
-#define _PLANE_WM_SAGV_TRANS_2(pipe) \
-	_PIPE(pipe, _PLANE_WM_SAGV_TRANS_2_A, _PLANE_WM_SAGV_TRANS_2_B)
-#define PLANE_WM_SAGV_TRANS(pipe, plane) \
-	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))
-#define _PLANE_WM_TRANS_1(pipe) \
-	_PIPE(pipe, _PLANE_WM_TRANS_1_A, _PLANE_WM_TRANS_1_B)
-#define _PLANE_WM_TRANS_2(pipe) \
-	_PIPE(pipe, _PLANE_WM_TRANS_2_A, _PLANE_WM_TRANS_2_B)
-#define PLANE_WM_TRANS(pipe, plane) \
-	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))
-
 /* define the Watermark register on Ironlake */
 #define _WM0_PIPEA_ILK		0x45100
 #define _WM0_PIPEB_ILK		0x45104
@@ -4155,29 +4062,6 @@
 #define PLANE_KEYMAX(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_KEYMAX_1(pipe), _PLANE_KEYMAX_2(pipe))
 
-#define _PLANE_BUF_CFG_1_B			0x7127c
-#define _PLANE_BUF_CFG_2_B			0x7137c
-/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
-#define   PLANE_BUF_END_MASK		REG_GENMASK(27, 16)
-#define   PLANE_BUF_END(end)		REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
-#define   PLANE_BUF_START_MASK		REG_GENMASK(11, 0)
-#define   PLANE_BUF_START(start)	REG_FIELD_PREP(PLANE_BUF_START_MASK, (start))
-#define _PLANE_BUF_CFG_1(pipe)	\
-	_PIPE(pipe, _PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B)
-#define _PLANE_BUF_CFG_2(pipe)	\
-	_PIPE(pipe, _PLANE_BUF_CFG_2_A, _PLANE_BUF_CFG_2_B)
-#define PLANE_BUF_CFG(pipe, plane)	\
-	_MMIO_PLANE(plane, _PLANE_BUF_CFG_1(pipe), _PLANE_BUF_CFG_2(pipe))
-
-#define _PLANE_NV12_BUF_CFG_1_B		0x71278
-#define _PLANE_NV12_BUF_CFG_2_B		0x71378
-#define _PLANE_NV12_BUF_CFG_1(pipe)	\
-	_PIPE(pipe, _PLANE_NV12_BUF_CFG_1_A, _PLANE_NV12_BUF_CFG_1_B)
-#define _PLANE_NV12_BUF_CFG_2(pipe)	\
-	_PIPE(pipe, _PLANE_NV12_BUF_CFG_2_A, _PLANE_NV12_BUF_CFG_2_B)
-#define PLANE_NV12_BUF_CFG(pipe, plane)	\
-	_MMIO_PLANE(plane, _PLANE_NV12_BUF_CFG_1(pipe), _PLANE_NV12_BUF_CFG_2(pipe))
-
 #define _PLANE_AUX_DIST_1_B		0x711c0
 #define _PLANE_AUX_DIST_2_B		0x712c0
 #define _PLANE_AUX_DIST_1(pipe) \
@@ -4260,11 +4144,6 @@
 						  _SEL_FETCH_PLANE_OFFSET_1_A - \
 						  _SEL_FETCH_PLANE_BASE_1_A)
 
-/* SKL new cursor registers */
-#define _CUR_BUF_CFG_A				0x7017c
-#define _CUR_BUF_CFG_B				0x7117c
-#define CUR_BUF_CFG(pipe)	_MMIO_PIPE(pipe, _CUR_BUF_CFG_A, _CUR_BUF_CFG_B)
-
 /* VBIOS regs */
 #define VGACNTRL		_MMIO(0x71400)
 # define VGA_DISP_DISABLE			(1 << 31)
@@ -4923,30 +4802,6 @@
 #define  DISP_DATA_PARTITION_5_6	(1 << 6)
 #define  DISP_IPC_ENABLE		(1 << 3)
 
-/*
- * The below are numbered starting from "S1" on gen11/gen12, but starting
- * with display 13, the bspec switches to a 0-based numbering scheme
- * (although the addresses stay the same so new S0 = old S1, new S1 = old S2).
- * We'll just use the 0-based numbering here for all platforms since it's the
- * way things will be named by the hardware team going forward, plus it's more
- * consistent with how most of the rest of our registers are named.
- */
-#define _DBUF_CTL_S0				0x45008
-#define _DBUF_CTL_S1				0x44FE8
-#define _DBUF_CTL_S2				0x44300
-#define _DBUF_CTL_S3				0x44304
-#define DBUF_CTL_S(slice)			_MMIO(_PICK(slice, \
-							    _DBUF_CTL_S0, \
-							    _DBUF_CTL_S1, \
-							    _DBUF_CTL_S2, \
-							    _DBUF_CTL_S3))
-#define  DBUF_POWER_REQUEST			REG_BIT(31)
-#define  DBUF_POWER_STATE			REG_BIT(30)
-#define  DBUF_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(23, 19)
-#define  DBUF_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_TRACKER_STATE_SERVICE_MASK, x)
-#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(18, 16) /* ADL-P+ */
-#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
-
 #define GEN7_MSG_CTL	_MMIO(0x45010)
 #define  WAIT_FOR_PCH_RESET_ACK		(1 << 1)
 #define  WAIT_FOR_PCH_FLR_ACK		(1 << 0)
@@ -6915,15 +6770,6 @@ enum skl_power_gate {
 #define MTL_CLKGATE_DIS_TRANS(trans)			_MMIO_TRANS2(trans, _MTL_CLKGATE_DIS_TRANS_A)
 #define  MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS		REG_BIT(7)
 
-#define MTL_LATENCY_LP0_LP1		_MMIO(0x45780)
-#define MTL_LATENCY_LP2_LP3		_MMIO(0x45784)
-#define MTL_LATENCY_LP4_LP5		_MMIO(0x45788)
-#define  MTL_LATENCY_LEVEL_EVEN_MASK	REG_GENMASK(12, 0)
-#define  MTL_LATENCY_LEVEL_ODD_MASK	REG_GENMASK(28, 16)
-
-#define MTL_LATENCY_SAGV		_MMIO(0x4578b)
-#define   MTL_LATENCY_QCLK_SAGV		REG_GENMASK(12, 0)
-
 #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
 #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
 #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 15aab34f6107..0661c32f8436 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -11,6 +11,7 @@
 #include "display/intel_dpio_phy.h"
 #include "display/intel_fdi_regs.h"
 #include "display/intel_lvds_regs.h"
+#include "display/skl_watermark_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
 #include "gvt/gvt.h"
-- 
2.39.2

