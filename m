Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6166BF71E
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 01:59:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F19F10E453;
	Sat, 18 Mar 2023 00:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07A8710E2AA
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 00:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679101171; x=1710637171;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WzHTSAqJNrJHLuY7dl/hU2IF8s7zrBGwdDm/wxfaLLk=;
 b=FYQe4CD3zY7n7i+HyUpyTqWp4QxE+PMc28yvHQ6BmZ6dDBhku+KJtIsT
 Za7h2iYy+JZwOaC6MvP/3+a81x/bTz3ZJeOZalG24OCzdOWHgmJDaGfmf
 B7f5Z80D8CuEYWLRObxILadaaHyMLaaLAi3r4x6gWSJ9Is+tv96BtXs6R
 npg7CGKXvDA+Args8lePbQ7XzjP7wZpoXk4u3f9fPItgqqqHSL3/XPuP9
 9QMlzGBOS6XsnAD1gmeY+RFyRIbr282oZ77n1ek4AeB9pCqbXypmL27Da
 QT+QXMmCFR5CNDgj7CMX16pEHIQ3K8o1Mp4aEJqJoj1otubn//Arw4r4x g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="400971053"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="400971053"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 17:59:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="804301799"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="804301799"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 17:59:31 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 17:58:49 -0700
Message-Id: <20230318005852.2303937-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230318005852.2303937-1-radhakrishna.sripada@intel.com>
References: <20230318005852.2303937-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Squashed Phy Support
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

From: Clint Taylor <clinton.a.taylor@intel.com>

This is a squashed patchset for the series
https://patchwork.freedesktop.org/series/109714/

The review for the series is happening. This patch
was added to support the next patches in series.

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Jose Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/intel_bw.c       |    4 +-
 drivers/gpu/drm/i915/display/intel_bw.h       |    2 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 2802 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   57 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  225 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |   38 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   85 +-
 .../drm/i915/display/intel_ddi_buf_trans.h    |    6 +
 drivers/gpu/drm/i915/display/intel_display.c  |   25 +-
 .../drm/i915/display/intel_display_power.c    |    9 +-
 .../i915/display/intel_display_power_map.c    |    1 +
 .../i915/display/intel_display_power_well.c   |    2 +-
 .../drm/i915/display/intel_display_types.h    |   23 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   23 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   22 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |    7 +-
 drivers/gpu/drm/i915/display/intel_hdmi.h     |    1 +
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/i915/display/intel_tc.c       |  177 +-
 drivers/gpu/drm/i915/i915_drv.h               |    6 +
 drivers/gpu/drm/i915/i915_irq.c               |  276 +-
 drivers/gpu/drm/i915/i915_reg.h               |   69 +-
 drivers/gpu/drm/i915/i915_reg_defs.h          |   57 +
 drivers/gpu/drm/i915/intel_pm.c               |  289 ++
 drivers/gpu/drm/i915/intel_pm.h               |   36 +
 27 files changed, 4218 insertions(+), 29 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index a59937b2b431..ce8fd2ff5ffe 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -296,6 +296,7 @@ i915-y += \
 	display/icl_dsi.o \
 	display/intel_backlight.o \
 	display/intel_crt.o \
+	display/intel_cx0_phy.o \
 	display/intel_ddi.o \
 	display/intel_ddi_buf_trans.o \
 	display/intel_display_trace.o \
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 202321ffbe2a..87c20bf52123 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -746,8 +746,8 @@ static unsigned int intel_bw_num_active_planes(struct drm_i915_private *dev_priv
 	return num_active_planes;
 }
 
-static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
-				       const struct intel_bw_state *bw_state)
+unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
+				const struct intel_bw_state *bw_state)
 {
 	unsigned int data_rate = 0;
 	enum pipe pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index f20292143745..17fc0b61db04 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -62,6 +62,8 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
 void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state);
+unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
+				const struct intel_bw_state *bw_state);
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask);
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
new file mode 100644
index 000000000000..083595cbc33b
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -0,0 +1,2802 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include "i915_reg.h"
+#include "intel_cx0_phy.h"
+#include "intel_cx0_phy_regs.h"
+#include "intel_ddi.h"
+#include "intel_ddi_buf_trans.h"
+#include "intel_de.h"
+#include "intel_display_types.h"
+#include "intel_dp.h"
+#include "intel_hdmi.h"
+#include "intel_panel.h"
+#include "intel_tc.h"
+#include "intel_psr.h"
+#include "intel_tc.h"
+
+bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
+{
+	if (IS_METEORLAKE(dev_priv) && (phy < PHY_C))
+		return true;
+
+	return false;
+}
+
+static void
+assert_dc_off(struct drm_i915_private *i915)
+{
+	bool enabled;
+
+	enabled = intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF);
+	drm_WARN_ON(&i915->drm, !enabled);
+}
+
+static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, int lane)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+
+	/* Bring the phy to idle. */
+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
+		       XELPDP_PORT_M2P_TRANSACTION_RESET);
+
+	/* Wait for Idle Clear. */
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
+				    XELPDP_PORT_M2P_TRANSACTION_RESET,
+				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+		drm_dbg_kms(&i915->drm, "Failed to bring PHY %c to idle.\n", phy_name(phy));
+		return;
+	}
+
+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1), ~0);
+}
+
+static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port, int lane, u32 *val)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+
+	if (__intel_de_wait_for_register(i915,
+				         XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1),
+				         XELPDP_PORT_P2M_RESPONSE_READY,
+				         XELPDP_PORT_P2M_RESPONSE_READY,
+				         XELPDP_MSGBUS_TIMEOUT_FAST_US,
+				         XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n", phy_name(phy), *val);
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static int __intel_cx0_read(struct drm_i915_private *i915, enum port port,
+			   int lane, u16 addr, u32 *val)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+	int ack;
+
+	/* Wait for pending transactions.*/
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
+				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
+				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
+		intel_cx0_bus_reset(i915, port, lane);
+		return -ETIMEDOUT;
+	}
+
+	/* Issue the read command. */
+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
+		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
+		       XELPDP_PORT_M2P_COMMAND_READ |
+		       XELPDP_PORT_M2P_ADDRESS(addr));
+
+	/* Wait for response ready. And read response.*/
+	ack = intel_cx0_wait_for_ack(i915, port, lane, val);
+	if (ack < 0) {
+		intel_cx0_bus_reset(i915, port, lane);
+		return ack;
+	}
+
+	/* Check for error. */
+	if (*val & XELPDP_PORT_P2M_ERROR_SET) {
+		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during read command. Status: 0x%x\n", phy_name(phy), *val);
+		intel_cx0_bus_reset(i915, port, lane);
+		return -EINVAL;
+	}
+
+	/* Check for Read Ack. */
+	if (REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, *val) !=
+			  XELPDP_PORT_P2M_COMMAND_READ_ACK) {
+		drm_dbg_kms(&i915->drm, "PHY %c Not a Read response. MSGBUS Status: 0x%x.\n", phy_name(phy), *val);
+		intel_cx0_bus_reset(i915, port, lane);
+		return -EINVAL;
+	}
+
+	/* Clear Response Ready flag.*/
+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1), ~0);
+
+	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, *val);
+}
+
+static u8 intel_cx0_read(struct drm_i915_private *i915, enum port port,
+			 int lane, u16 addr)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+	int i, status = 0;
+	u32 val;
+
+	assert_dc_off(i915);
+
+	for (i = 0; i < 3; i++) {
+		status = __intel_cx0_read(i915, port, lane, addr, &val);
+
+		if (status >= 0)
+			break;
+	}
+
+	if (i == 3) {
+		drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries.\n", phy_name(phy), addr, i);
+		return 0;
+	}
+
+	return status;
+}
+
+static int intel_cx0_wait_cwrite_ack(struct drm_i915_private *i915,
+				      enum port port, int lane)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+	int ack;
+	u32 val = 0;
+
+	/* Check for write ack. */
+	ack = intel_cx0_wait_for_ack(i915, port, lane, &val);
+	if (ack < 0)
+		return ack;
+
+	if ((REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, val) !=
+	     XELPDP_PORT_P2M_COMMAND_WRITE_ACK) || val & XELPDP_PORT_P2M_ERROR_SET) {
+		drm_dbg_kms(&i915->drm, "PHY %c Unexpected ACK received. MSGBUS STATUS: 0x%x.\n", phy_name(phy), val);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
+				  int lane, u16 addr, u8 data, bool committed)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+
+	/* Wait for pending transactions.*/
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
+				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
+				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
+		intel_cx0_bus_reset(i915, port, lane);
+		return -ETIMEDOUT;
+	}
+
+	/* Issue the write command. */
+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
+		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
+		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
+		       XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED) |
+		       XELPDP_PORT_M2P_DATA(data) |
+		       XELPDP_PORT_M2P_ADDRESS(addr));
+
+	/* Check for error. */
+	if (committed) {
+		if (intel_cx0_wait_cwrite_ack(i915, port, lane) < 0) {
+			intel_cx0_bus_reset(i915, port, lane);
+			return -EINVAL;
+		}
+	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1)) &
+			    XELPDP_PORT_P2M_ERROR_SET)) {
+		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during write command.\n", phy_name(phy));
+		intel_cx0_bus_reset(i915, port, lane);
+		return -EINVAL;
+	}
+
+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1), ~0);
+
+	return 0;
+}
+
+static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
+			      int lane, u16 addr, u8 data, bool committed)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+	int i, status;
+
+	assert_dc_off(i915);
+
+	for (i = 0; i < 3; i++) {
+		status = __intel_cx0_write_once(i915, port, lane, addr, data, committed);
+
+		if (status == 0)
+			break;
+	}
+
+	if (i == 3) {
+		drm_err_once(&i915->drm, "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);
+		return;
+	}
+}
+
+static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
+			    int lane, u16 addr, u8 data, bool committed)
+{
+	if (lane & INTEL_CX0_BOTH_LANES) {
+		__intel_cx0_write(i915, port, INTEL_CX0_LANE0, addr, data, committed);
+		__intel_cx0_write(i915, port, INTEL_CX0_LANE1, addr, data, committed);
+	} else {
+		__intel_cx0_write(i915, port, lane, addr, data, committed);
+	}
+}
+
+static void intel_c20_sram_write(struct drm_i915_private *i915, enum port port,
+				 int lane, u16 addr, u16 data)
+{
+	assert_dc_off(i915);
+
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_H, (addr >> 8), 0);
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_L, addr & 0xff, 0);
+
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_H, (data >> 8), 0);
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
+}
+
+static u16 intel_c20_sram_read(struct drm_i915_private *i915, enum port port,
+			        int lane, u16 addr)
+{
+	u16 val;
+
+	assert_dc_off(i915);
+
+	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_H, (addr >> 8), 1);
+	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff, 0);
+
+	val = intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_H);
+	val <<= 8;
+	val |= intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_L);
+
+	return val;
+}
+
+static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
+			    int lane, u16 addr, u8 clear, u8 set, bool committed)
+{
+	u8 old, val;
+
+	old = intel_cx0_read(i915, port, lane, addr);
+	val = (old & ~clear) | set;
+
+	if (val != old)
+		intel_cx0_write(i915, port, lane, addr, val, committed);
+}
+
+static void intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
+			  int lane, u16 addr, u8 clear, u8 set, bool committed)
+{
+	if (lane & INTEL_CX0_BOTH_LANES) {
+		__intel_cx0_rmw(i915, port, INTEL_CX0_LANE0, addr, clear, set, committed);
+		__intel_cx0_rmw(i915, port, INTEL_CX0_LANE1, addr, clear, set, committed);
+	} else {
+		__intel_cx0_rmw(i915, port, lane, addr, clear, set, committed);
+	}
+}
+
+/*
+ * Prepare HW for CX0 phy transactions.
+ *
+ * It is required that PSR and DC5/6 are disabled before any CX0 message
+ * bus transaction is executed.
+ */
+static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_psr_pause(intel_dp);
+	return intel_display_power_get(i915, POWER_DOMAIN_DC_OFF);
+}
+
+static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_wakeref_t wakeref)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_psr_resume(intel_dp);
+	intel_display_power_put(i915, POWER_DOMAIN_DC_OFF, wakeref);
+}
+
+void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
+					 INTEL_CX0_LANE0;
+	u8 follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
+					 INTEL_CX0_LANE1;
+	const struct intel_ddi_buf_trans *trans;
+	intel_wakeref_t wakeref;
+	int n_entries, ln;
+
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
+
+	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	if (drm_WARN_ON_ONCE(&i915->drm, !trans))
+		return;
+
+	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+		      0, C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+
+	for (ln = 0; ln < 4; ln++) {
+		int level = intel_ddi_level(encoder, crtc_state, ln);
+		int lane, tx;
+
+		lane = ln / 2 + 1;
+		tx = ln % 2 + 1;
+
+		intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 0),
+			      C10_PHY_OVRD_LEVEL_MASK,
+			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.pre_cursor),
+			      MB_WRITE_COMMITTED);
+		intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 1),
+			      C10_PHY_OVRD_LEVEL_MASK,
+			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.vswing),
+			      MB_WRITE_COMMITTED);
+		intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 2),
+			      C10_PHY_OVRD_LEVEL_MASK,
+			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.post_cursor),
+			      MB_WRITE_COMMITTED);
+	}
+
+	/* Write Override enables in 0xD71 */
+	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_OVRD,
+		      PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
+		      PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
+		      MB_WRITE_COMMITTED);
+	intel_cx0_write(i915, encoder->port, follower_lane, PHY_C10_VDR_CONTROL(1),
+			C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG,
+			MB_WRITE_COMMITTED);
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CONTROL(1),
+			C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_MSGBUS_ACCESS |
+			C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
+}
+
+/*
+ * Basic DP link rates with 38.4 MHz reference clock.
+ * Note: The tables below are with SSC. In non-ssc
+ * registers 0xC04 to 0xC08(pll[4] to pll[8]) will be
+ * programmed 0.
+ */
+
+static const struct intel_c10mpllb_state mtl_c10_dp_rbr = {
+	.clock = 162000,
+	.pll[0] = 0xB4,
+	.pll[1] = 0,
+	.pll[2] = 0x30,
+	.pll[3] = 0x1,
+	.pll[4] = 0x26,
+	.pll[5] = 0x0C,
+	.pll[6] = 0x98,
+	.pll[7] = 0x46,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xC0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x2,
+	.pll[16] = 0x84,
+	.pll[17] = 0x4F,
+	.pll[18] = 0xE5,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_edp_r216 = {
+	.clock = 216000,
+	.pll[0] = 0x4,
+	.pll[1] = 0,
+	.pll[2] = 0xA2,
+	.pll[3] = 0x1,
+	.pll[4] = 0x33,
+	.pll[5] = 0x10,
+	.pll[6] = 0x75,
+	.pll[7] = 0xB3,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x2,
+	.pll[16] = 0x85,
+	.pll[17] = 0x0F,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_edp_r243 = {
+	.clock = 243000,
+	.pll[0] = 0x34,
+	.pll[1] = 0,
+	.pll[2] = 0xDA,
+	.pll[3] = 0x1,
+	.pll[4] = 0x39,
+	.pll[5] = 0x12,
+	.pll[6] = 0xE3,
+	.pll[7] = 0xE9,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x20,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x2,
+	.pll[16] = 0x85,
+	.pll[17] = 0x8F,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_dp_hbr1 = {
+	.clock = 270000,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0xF8,
+	.pll[3] = 0x0,
+	.pll[4] = 0x20,
+	.pll[5] = 0x0A,
+	.pll[6] = 0x29,
+	.pll[7] = 0x10,
+	.pll[8] = 0x1,   /* Verify */
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xA0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x1,
+	.pll[16] = 0x84,
+	.pll[17] = 0x4F,
+	.pll[18] = 0xE5,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_edp_r324 = {
+	.clock = 324000,
+	.pll[0] = 0xB4,
+	.pll[1] = 0,
+	.pll[2] = 0x30,
+	.pll[3] = 0x1,
+	.pll[4] = 0x26,
+	.pll[5] = 0x0C,
+	.pll[6] = 0x98,
+	.pll[7] = 0x46,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xC0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x1,
+	.pll[16] = 0x85,
+	.pll[17] = 0x4F,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_edp_r432 = {
+	.clock = 432000,
+	.pll[0] = 0x4,
+	.pll[1] = 0,
+	.pll[2] = 0xA2,
+	.pll[3] = 0x1,
+	.pll[4] = 0x33,
+	.pll[5] = 0x10,
+	.pll[6] = 0x75,
+	.pll[7] = 0xB3,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x1,
+	.pll[16] = 0x85,
+	.pll[17] = 0x0F,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_dp_hbr2 = {
+	.clock = 540000,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0xF8,
+	.pll[3] = 0,
+	.pll[4] = 0x20,
+	.pll[5] = 0x0A,
+	.pll[6] = 0x29,
+	.pll[7] = 0x10,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xA0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0,
+	.pll[16] = 0x84,
+	.pll[17] = 0x4F,
+	.pll[18] = 0xE5,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_edp_r675 = {
+	.clock = 675000,
+	.pll[0] = 0xB4,
+	.pll[1] = 0,
+	.pll[2] = 0x3E,
+	.pll[3] = 0x1,
+	.pll[4] = 0xA8,
+	.pll[5] = 0x0C,
+	.pll[6] = 0x33,
+	.pll[7] = 0x54,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xC8,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0,
+	.pll[16] = 0x85,
+	.pll[17] = 0x8F,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_dp_hbr3 = {
+	.clock = 810000,
+	.pll[0] = 0x34,
+	.pll[1] = 0,
+	.pll[2] = 0x84,
+	.pll[3] = 0x1,
+	.pll[4] = 0x30,
+	.pll[5] = 0x0F,
+	.pll[6] = 0x3D,
+	.pll[7] = 0x98,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xF0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0,
+	.pll[16] = 0x84,
+	.pll[17] = 0x0F,
+	.pll[18] = 0xE5,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state * const mtl_c10_dp_tables[] = {
+	&mtl_c10_dp_rbr,
+	&mtl_c10_dp_hbr1,
+	&mtl_c10_dp_hbr2,
+	&mtl_c10_dp_hbr3,
+	NULL,
+};
+
+static const struct intel_c10mpllb_state * const mtl_c10_edp_tables[] = {
+	&mtl_c10_dp_rbr,
+	&mtl_c10_edp_r216,
+	&mtl_c10_edp_r243,
+	&mtl_c10_dp_hbr1,
+	&mtl_c10_edp_r324,
+	&mtl_c10_edp_r432,
+	&mtl_c10_dp_hbr2,
+	&mtl_c10_edp_r675,
+	&mtl_c10_dp_hbr3,
+	NULL,
+};
+
+/* C20 basic DP 1.4 tables */
+static const struct intel_c20pll_state mtl_c20_dp_rbr = {
+	.clock = 162000,
+	.tx = {	0xbe88, /* tx cfg0 */
+		0x5800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mpllb = { 0x50a8,	/* mpllb cfg0 */
+		0x2120,		/* mpllb cfg1 */
+		0xcd9a,		/* mpllb cfg2 */
+		0xbfc1,		/* mpllb cfg3 */
+		0x5ab8,         /* mpllb cfg4 */
+		0x4c34,         /* mpllb cfg5 */
+		0x2000,		/* mpllb cfg6 */
+		0x0001,		/* mpllb cfg7 */
+		0x6000,		/* mpllb cfg8 */
+		0x0000,		/* mpllb cfg9 */
+		0x0000,		/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
+	.clock = 270000,
+	.tx = {	0xbe88, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mpllb = { 0x308c,	/* mpllb cfg0 */
+		0x2110,		/* mpllb cfg1 */
+		0xcc9c,		/* mpllb cfg2 */
+		0xbfc1,		/* mpllb cfg3 */
+		0x489a,         /* mpllb cfg4 */
+		0x3f81,         /* mpllb cfg5 */
+		0x2000,		/* mpllb cfg6 */
+		0x0001,		/* mpllb cfg7 */
+		0x5000,		/* mpllb cfg8 */
+		0x0000,		/* mpllb cfg9 */
+		0x0000,		/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
+	.clock = 540000,
+	.tx = {	0xbe88, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mpllb = { 0x108c,	/* mpllb cfg0 */
+		0x2108,		/* mpllb cfg1 */
+		0xcc9c,		/* mpllb cfg2 */
+		0xbfc1,		/* mpllb cfg3 */
+		0x489a,         /* mpllb cfg4 */
+		0x3f81,         /* mpllb cfg5 */
+		0x2000,		/* mpllb cfg6 */
+		0x0001,		/* mpllb cfg7 */
+		0x5000,		/* mpllb cfg8 */
+		0x0000,		/* mpllb cfg9 */
+		0x0000,		/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
+	.clock = 810000,
+	.tx = {	0xbe88, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mpllb = { 0x10d2,	/* mpllb cfg0 */
+		0x2108,		/* mpllb cfg1 */
+		0x8d98,		/* mpllb cfg2 */
+		0xbfc1,		/* mpllb cfg3 */
+		0x7166,         /* mpllb cfg4 */
+		0x5f42,         /* mpllb cfg5 */
+		0x2000,		/* mpllb cfg6 */
+		0x0001,		/* mpllb cfg7 */
+		0x7800,		/* mpllb cfg8 */
+		0x0000,		/* mpllb cfg9 */
+		0x0000,		/* mpllb cfg10 */
+		},
+};
+
+/* C20 basic DP 2.0 tables */
+static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
+	.clock = 312500,
+	.tx = {	0xbe21, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mplla = { 0x3104,	/* mplla cfg0 */
+		0xd105,		/* mplla cfg1 */
+		0xc025,		/* mplla cfg2 */
+		0xc025,		/* mplla cfg3 */
+		0xa6ab,		/* mplla cfg4 */
+		0x8c00,		/* mplla cfg5 */
+		0x4000,		/* mplla cfg6 */
+		0x0003,		/* mplla cfg7 */
+		0x3555,		/* mplla cfg8 */
+		0x0001,		/* mplla cfg9 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
+	.clock = 421875,
+	.tx = {	0xbea0, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mpllb = { 0x015f,	/* mpllb cfg0 */
+		0x2205,		/* mpllb cfg1 */
+		0x1b17,		/* mpllb cfg2 */
+		0xffc1,		/* mpllb cfg3 */
+		0xe100,		/* mpllb cfg4 */
+		0xbd00,		/* mpllb cfg5 */
+		0x2000,		/* mpllb cfg6 */
+		0x0001,		/* mpllb cfg7 */
+		0x4800,		/* mpllb cfg8 */
+		0x0000,		/* mpllb cfg9 */
+		0x0000,		/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
+	.clock = 625000,
+	.tx = {	0xbe20, /* tx cfg0 */
+		0x4800, /* tx cfg1 */
+		0x0000, /* tx cfg2 */
+		},
+	.cmn = {0x0500, /* cmn cfg0*/
+		0x0005, /* cmn cfg1 */
+		0x0000, /* cmn cfg2 */
+		0x0000, /* cmn cfg3 */
+		},
+	.mplla = { 0x3104,	/* mplla cfg0 */
+		0xd105,		/* mplla cfg1 */
+		0xc025,		/* mplla cfg2 */
+		0xc025,		/* mplla cfg3 */
+		0xa6ab,		/* mplla cfg4 */
+		0x8c00,		/* mplla cfg5 */
+		0x4000,		/* mplla cfg6 */
+		0x0003,		/* mplla cfg7 */
+		0x3555,		/* mplla cfg8 */
+		0x0001,		/* mplla cfg9 */
+		},
+};
+
+static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
+        &mtl_c20_dp_rbr,
+        &mtl_c20_dp_hbr1,
+        &mtl_c20_dp_hbr2,
+        &mtl_c20_dp_hbr3,
+	&mtl_c20_dp_uhbr10,
+	&mtl_c20_dp_uhbr13_5,
+	&mtl_c20_dp_uhbr20,
+        NULL,
+};
+
+/*
+ * HDMI link rates with 38.4 MHz reference clock.
+ */
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_25_2 = {
+	.clock = 25200,
+	.pll[0] = 0x4,
+	.pll[1] = 0,
+	.pll[2] = 0xB2,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xD,
+	.pll[16] = 0x6,
+	.pll[17] = 0x8F,
+	.pll[18] = 0x84,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_27_0 = {
+	.clock = 27000,
+	.pll[0] = 0x34,
+	.pll[1] = 0,
+	.pll[2] = 0xC0,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x80,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xD,
+	.pll[16] = 0x6,
+	.pll[17] = 0xCF,
+	.pll[18] = 0x84,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_74_25 = {
+	.clock = 74250,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0x7A,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x58,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xB,
+	.pll[16] = 0x6,
+	.pll[17] = 0xF,
+	.pll[18] = 0x85,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_148_5 = {
+	.clock = 148500,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0x7A,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x58,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xA,
+	.pll[16] = 0x6,
+	.pll[17] = 0xF,
+	.pll[18] = 0x85,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_594 = {
+	.clock = 594000,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0x7A,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x58,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x8,
+	.pll[16] = 0x6,
+	.pll[17] = 0xF,
+	.pll[18] = 0x85,
+	.pll[19] = 0x23,
+};
+
+/* Precomputed C10 HDMI PLL tables */
+static const struct intel_c10mpllb_state mtl_c10_hdmi_25175 = {
+	.clock = 25175,
+	.pll[0]=0x34,
+	.pll[1]=0x00,
+	.pll[2]=0xB0,
+	.pll[3]=0x00,
+	.pll[4]=0x00,
+	.pll[5]=0x00,
+	.pll[6]=0x00,
+	.pll[7]=0x00,
+	.pll[8]=0x20,
+	.pll[9]=0xFF,
+	.pll[10]=0xFF,
+	.pll[11]=0x55,
+	.pll[12]=0xE5,
+	.pll[13]=0x55,
+	.pll[14]=0x55,
+	.pll[15]=0x0D,
+	.pll[16]=0x09,
+	.pll[17]=0x8F,
+	.pll[18]=0x84,
+	.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_27027 = {
+	.clock = 27027,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_28320 = {
+	.clock = 28320,
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xCC, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_30240 = {
+	.clock = 30240,
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xDC, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_31500 = {
+	.clock = 31500,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x62, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_36000 = {
+	.clock = 36000,
+	.pll[0]=0xC4, .pll[1]=0x00, .pll[2]=0x76, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_40000 = {
+	.clock = 40000,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_49500 = {
+	.clock = 49500,
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_50000 = {
+	.clock = 50000,
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xB0, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_57284 = {
+	.clock = 57284,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xCE, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_58000 = {
+	.clock = 58000,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_65000 = {
+	.clock = 65000,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x66, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_71000 = {
+	.clock = 71000,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x72, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_74176 = {
+	.clock = 74176,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x44,.pll[12]=0x44,.pll[13]=0x44,.pll[14]=0x44,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_75000 = {
+	.clock = 75000,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7C, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_78750 = {
+	.clock = 78750,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x84, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x08,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_85500 = {
+	.clock = 85500,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x92, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x10,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_88750 = {
+	.clock = 88750,
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0x98, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x72,.pll[13]=0xA9,.pll[14]=0xAA,
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_106500 = {
+	.clock = 106500,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xBC, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xF0,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_108000 = {
+	.clock = 108000,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x80,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_115500 = {
+	.clock = 115500,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x50,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_119000 = {
+	.clock = 119000,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD6, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_135000 = {
+	.clock = 135000,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x6C, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x50,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0A,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_138500 = {
+	.clock = 138500,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x70, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x22,.pll[13]=0xA9,.pll[14]=0xAA,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_147160 = {
+	.clock = 147160,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x78, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xA5,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_148352 = {
+	.clock = 148352,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x44,.pll[12]=0x44,.pll[13]=0x44,.pll[14]=0x44,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_154000 = {
+	.clock = 154000,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x80, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x35,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_162000 = {
+	.clock = 162000,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x88, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x60,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_167000 = {
+	.clock = 167000,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x8C, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0xFA,.pll[13]=0xA9,.pll[14]=0xAA,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_197802 = {
+	.clock = 197802,
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x99,.pll[12]=0x05,.pll[13]=0x98,.pll[14]=0x99,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_198000 = {
+	.clock = 198000,
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_209800 = {
+	.clock = 209800,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xBA, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x45,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_241500 = {
+	.clock = 241500,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xDA, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xC8,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x0A,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_262750 = {
+	.clock = 262750,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x68, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x6C,.pll[13]=0xA9,.pll[14]=0xAA,
+	.pll[15]=0x09,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_268500 = {
+	.clock = 268500,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x6A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xEC,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x09,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_296703 = {
+	.clock = 296703,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x33,.pll[12]=0x44,.pll[13]=0x33,.pll[14]=0x33,
+	.pll[15]=0x09,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_297000 = {
+	.clock = 297000,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x58,.pll[13]=0x00,.pll[14]=0x00,
+	.pll[15]=0x09,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_319750 = {
+	.clock = 319750,
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x44,.pll[13]=0xA9,.pll[14]=0xAA,
+	.pll[15]=0x09,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_497750 = {
+	.clock = 497750,
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xE2, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x9F,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x09,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_592000 = {
+	.clock = 592000,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x15,.pll[13]=0x55,.pll[14]=0x55,
+	.pll[15]=0x08,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_593407 = {
+	.clock = 593407,
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
+	.pll[10]=0xFF,.pll[11]=0x3B,.pll[12]=0x44,.pll[13]=0xBA,.pll[14]=0xBB,
+	.pll[15]=0x08,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
+};
+
+static const struct intel_c10mpllb_state * const mtl_c10_hdmi_tables[] = {
+	&mtl_c10_hdmi_25175,
+	&mtl_c10_hdmi_25_2, /* Consolidated Table */
+	&mtl_c10_hdmi_27_0, /* Consolidated Table */
+	&mtl_c10_hdmi_27027,
+	&mtl_c10_hdmi_28320,
+	&mtl_c10_hdmi_30240,
+	&mtl_c10_hdmi_31500,
+	&mtl_c10_hdmi_36000,
+	&mtl_c10_hdmi_40000,
+	&mtl_c10_hdmi_49500,
+	&mtl_c10_hdmi_50000,
+	&mtl_c10_hdmi_57284,
+	&mtl_c10_hdmi_58000,
+	&mtl_c10_hdmi_65000,
+	&mtl_c10_hdmi_71000,
+	&mtl_c10_hdmi_74176,
+	&mtl_c10_hdmi_74_25, /* Consolidated Table */
+	&mtl_c10_hdmi_75000,
+	&mtl_c10_hdmi_78750,
+	&mtl_c10_hdmi_85500,
+	&mtl_c10_hdmi_88750,
+	&mtl_c10_hdmi_106500,
+	&mtl_c10_hdmi_108000,
+	&mtl_c10_hdmi_115500,
+	&mtl_c10_hdmi_119000,
+	&mtl_c10_hdmi_135000,
+	&mtl_c10_hdmi_138500,
+	&mtl_c10_hdmi_147160,
+	&mtl_c10_hdmi_148352,
+	&mtl_c10_hdmi_148_5, /* Consolidated Table */
+	&mtl_c10_hdmi_154000,
+	&mtl_c10_hdmi_162000,
+	&mtl_c10_hdmi_167000,
+	&mtl_c10_hdmi_197802,
+	&mtl_c10_hdmi_198000,
+	&mtl_c10_hdmi_209800,
+	&mtl_c10_hdmi_241500,
+	&mtl_c10_hdmi_262750,
+	&mtl_c10_hdmi_268500,
+	&mtl_c10_hdmi_296703,
+	&mtl_c10_hdmi_297000,
+	&mtl_c10_hdmi_319750,
+	&mtl_c10_hdmi_497750,
+	&mtl_c10_hdmi_592000,
+	&mtl_c10_hdmi_593407,
+	&mtl_c10_hdmi_594, /* Consolidated Table */
+	NULL,
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
+	.clock = 25175,
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
+	.mpllb = { 0xa0d2,	/* mpllb cfg0 */
+		   0x7d80,	/* mpllb cfg1 */
+		   0x0906,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x0200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x0000,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0001,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
+	.clock = 27000,
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
+	.mpllb = { 0xa0e0,	/* mpllb cfg0 */
+		   0x7d80,	/* mpllb cfg1 */
+		   0x0906,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x8000,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0001,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
+	.clock = 74250,
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
+	.mpllb = { 0x609a,	/* mpllb cfg0 */
+		   0x7d40,	/* mpllb cfg1 */
+		   0xca06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x5800,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0001,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
+	.clock = 148500,
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
+	.mpllb = { 0x409a,	/* mpllb cfg0 */
+		   0x7d20,	/* mpllb cfg1 */
+		   0xca06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x5800,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0001,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
+	.clock = 594000,
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
+	.mpllb = { 0x009a,	/* mpllb cfg0 */
+		   0x7d08,	/* mpllb cfg1 */
+		   0xca06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x5800,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0001,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
+	.clock = 166670,
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
+	.mpllb = { 0x209c,	/* mpllb cfg0 */
+		   0x7d10,	/* mpllb cfg1 */
+		   0xca06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x2000,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0004,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
+	.clock = 333330,
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
+	.mpllb = { 0x009c,	/* mpllb cfg0 */
+		   0x7d08,	/* mpllb cfg1 */
+		   0xca06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x2000,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0004,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
+	.clock = 444440,
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
+	.mpllb = { 0x00d0,	/* mpllb cfg0 */
+		   0x7d08,	/* mpllb cfg1 */
+		   0x4a06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0003,	/* mpllb cfg7 */
+		   0x2aaa,	/* mpllb cfg8 */
+		   0x0002,	/* mpllb cfg9 */
+		   0x0004,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
+	.clock = 555560,
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
+	.mpllb = { 0x1104,	/* mpllb cfg0 */
+		   0x7d08,	/* mpllb cfg1 */
+		   0x0a06,	/* mpllb cfg2 */
+		   0xbe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0003,	/* mpllb cfg7 */
+		   0x3555,	/* mpllb cfg8 */
+		   0x0001,	/* mpllb cfg9 */
+		   0x0004,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
+	.clock = 666670,
+	.tx = {  0xbe88, /* tx cfg0 */
+		 0x9800, /* tx cfg1 */
+		 0x0000, /* tx cfg2 */
+	      },
+	.cmn = { 0x0500, /* cmn cfg0*/
+		 0x0005, /* cmn cfg1 */
+		 0x0000, /* cmn cfg2 */
+		 0x0000, /* cmn cfg3 */
+	       },
+	.mpllb = { 0x0138,	/* mpllb cfg0 */
+		   0x7d08,	/* mpllb cfg1 */
+		   0x5486,	/* mpllb cfg2 */
+		   0xfe40,	/* mpllb cfg3 */
+		   0x0000,	/* mpllb cfg4 */
+		   0x0000,	/* mpllb cfg5 */
+		   0x2200,	/* mpllb cfg6 */
+		   0x0001,	/* mpllb cfg7 */
+		   0x4000,	/* mpllb cfg8 */
+		   0x0000,	/* mpllb cfg9 */
+		   0x0004,	/* mpllb cfg10 */
+		},
+};
+
+static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] = {
+	&mtl_c20_hdmi_25_175,
+	&mtl_c20_hdmi_27_0,
+	&mtl_c20_hdmi_74_25,
+	&mtl_c20_hdmi_148_5,
+	&mtl_c20_hdmi_594,
+	&mtl_c20_hdmi_300,
+	&mtl_c20_hdmi_600,
+	&mtl_c20_hdmi_800,
+	&mtl_c20_hdmi_1000,
+	&mtl_c20_hdmi_1200,
+	NULL,
+};
+
+static int intel_c10_phy_check_hdmi_link_rate(int clock)
+{
+	const struct intel_c10mpllb_state * const *tables = mtl_c10_hdmi_tables;
+	int i;
+
+	for (i = 0; tables[i]; i++) {
+		if (clock == tables[i]->clock)
+			return MODE_OK;
+	}
+
+	return MODE_CLOCK_RANGE;
+}
+
+int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock)
+{
+	struct intel_digital_port *dig_port = hdmi_to_dig_port(hdmi);
+	struct drm_i915_private *i915 = intel_hdmi_to_i915(hdmi);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
+
+	if (intel_is_c10phy(i915, phy))
+		return intel_c10_phy_check_hdmi_link_rate(clock);
+	return intel_c20_phy_check_hdmi_link_rate(clock);
+}
+
+static const struct intel_c10mpllb_state * const *
+intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
+			   struct intel_encoder *encoder)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
+			return mtl_c10_edp_tables;
+		else
+			return mtl_c10_dp_tables;
+	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		return mtl_c10_hdmi_tables;
+	}
+
+	MISSING_CASE(encoder->type);
+	return NULL;
+}
+
+static const struct intel_c20pll_state * const *
+intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
+			 struct intel_encoder *encoder)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		return mtl_c20_dp_tables;
+	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		return mtl_c20_hdmi_tables;
+	}
+
+	MISSING_CASE(encoder->type);
+	return NULL;
+}
+
+static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
+				     struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	const struct intel_c10mpllb_state * const *tables;
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	int i;
+
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		if (intel_c10_phy_check_hdmi_link_rate(crtc_state->port_clock)
+		    != MODE_OK) {
+			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d on phy %c.\n",
+				      crtc_state->port_clock, phy_name(phy));
+			return -EINVAL;
+		}
+	}
+
+	tables = intel_c10_mpllb_tables_get(crtc_state, encoder);
+	if (!tables)
+		return -EINVAL;
+
+	for (i = 0; tables[i]; i++) {
+		if (crtc_state->port_clock <= tables[i]->clock) {
+			crtc_state->cx0pll_state.c10mpllb_state = *tables[i];
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
+				   struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	const struct intel_c20pll_state * const *tables;
+	int i;
+
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		if (intel_c20_phy_check_hdmi_link_rate(crtc_state->port_clock) != MODE_OK) {
+			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d on phy %c.\n",
+				    crtc_state->port_clock, phy_name(phy));
+			return -EINVAL;
+		}
+	}
+
+	tables = intel_c20_pll_tables_get(crtc_state, encoder);
+	if (!tables)
+		return -EINVAL;
+
+	for (i = 0; tables[i]; i++) {
+		if (crtc_state->port_clock <= tables[i]->clock) {
+			crtc_state->cx0pll_state.c20pll_state = *tables[i];
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
+			      struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	if (intel_is_c10phy(i915, phy))
+		return intel_c10mpllb_calc_state(crtc_state, encoder);
+	else
+		return intel_c20pll_calc_state(crtc_state, encoder);
+}
+
+void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
+				     struct intel_c10mpllb_state *pll_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	u8 lane = lane_reversal ? INTEL_CX0_LANE1 :
+				  INTEL_CX0_LANE0;
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	intel_wakeref_t wakeref;
+	int i;
+	u8 cmn, tx0;
+
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
+
+	/*
+	 * According to C10 VDR Register programming Sequence we need
+	 * to do this to read PHY internal registers from MsgBus.
+	 */
+	intel_cx0_rmw(i915, encoder->port, lane, PHY_C10_VDR_CONTROL(1), 0,
+		      C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+
+	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
+		pll_state->pll[i] = intel_cx0_read(i915, encoder->port, lane,
+						   PHY_C10_VDR_PLL(i));
+
+	cmn = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_CMN(0));
+	tx0 = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_TX(0));
+
+	if (tx0 != C10_TX0_VAL || (cmn != C10_CMN0_DP_VAL &&
+				   cmn != C10_CMN0_HDMI_VAL))
+		drm_dbg_kms(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
+			    tx0, cmn, phy_name(phy));
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
+}
+
+static void intel_c10_pll_program(struct drm_i915_private *i915,
+				  const struct intel_crtc_state *crtc_state,
+				  struct intel_encoder *encoder)
+{
+	const struct intel_c10mpllb_state *pll_state = &crtc_state->cx0pll_state.c10mpllb_state;
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
+					 INTEL_CX0_LANE0;
+	u8 follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
+					   INTEL_CX0_LANE1;
+	int i;
+	struct intel_dp *intel_dp;
+	bool use_ssc = false;
+	bool use_hdmi = false;
+	u8 cmn0;
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		intel_dp = enc_to_intel_dp(encoder);
+		use_ssc = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
+			  DP_MAX_DOWNSPREAD_0_5);
+
+		if (!intel_panel_use_ssc(i915))
+			use_ssc = false;
+
+		cmn0 = C10_CMN0_DP_VAL;
+	} else {
+		use_hdmi = true;
+		cmn0 = C10_CMN0_HDMI_VAL;
+	}
+
+	intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+			C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+	/* Custom width needs to be programmed to 0 for both the phy lanes */
+	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES,
+		      PHY_C10_VDR_CUSTOM_WIDTH, 0x3, 0, MB_WRITE_COMMITTED);
+	intel_cx0_rmw(i915, encoder->port, follower_lane, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_MASTER_LANE, C10_VDR_CTRL_UPDATE_CFG,
+		      MB_WRITE_COMMITTED);
+
+	/* Program the pll values only for the master lane */
+	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
+		/* If not using ssc pll[4] through pll[8] must be 0*/
+		intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_PLL(i),
+				(!(use_ssc || use_hdmi) && (i > 3 && i < 9)) ? 0 : pll_state->pll[i],
+				(i % 4) ? MB_WRITE_UNCOMMITTED : MB_WRITE_COMMITTED);
+
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CMN(0), cmn0, MB_WRITE_COMMITTED);
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_TX(0), C10_TX0_VAL, MB_WRITE_COMMITTED);
+	intel_cx0_rmw(i915, encoder->port, master_lane, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MASTER_LANE |
+		      C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
+}
+
+void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
+				  const struct intel_c10mpllb_state *hw_state)
+{
+	bool fracen;
+	int i;
+	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
+	unsigned int multiplier, tx_clk_div;
+
+	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
+	drm_dbg_kms(&dev_priv->drm, "c10pll_hw_state: fracen: %s, ",
+		    str_yes_no(fracen));
+
+	if (fracen) {
+		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
+		frac_rem =  hw_state->pll[14] << 8 | hw_state->pll[13];
+		frac_den =  hw_state->pll[10] << 8 | hw_state->pll[9];
+		drm_dbg_kms(&dev_priv->drm, "quot: %u, rem: %u, den: %u,\n",
+			    frac_quot, frac_rem, frac_den);
+	}
+
+	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, hw_state->pll[3]) << 8 |
+		      hw_state->pll[2]) / 2 + 16;
+	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, hw_state->pll[15]);
+	drm_dbg_kms(&dev_priv->drm,
+		    "multiplier: %u, tx_clk_div: %u.\n", multiplier, tx_clk_div);
+
+	drm_dbg_kms(&dev_priv->drm, "c10pll_rawhw_state:");
+
+	for (i = 0; i < ARRAY_SIZE(hw_state->pll); i = i + 4)
+		drm_dbg_kms(&dev_priv->drm, "pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x\n",
+			    i, hw_state->pll[i], i + 1, hw_state->pll[i + 1],
+			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
+}
+
+int intel_c20_phy_check_hdmi_link_rate(int clock)
+{
+        const struct intel_c20pll_state * const *tables = mtl_c20_hdmi_tables;
+        int i;
+
+        for (i = 0; tables[i]; i++) {
+                if (clock == tables[i]->clock)
+                        return MODE_OK;
+        }
+
+        return MODE_CLOCK_RANGE;
+}
+
+static bool intel_c20_use_mplla(u32 clock)
+{
+	/* 10G and 20G rates use MPLLA */
+	if (clock == 312500 || clock == 625000)
+		return true;
+
+	return false;
+}
+
+void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
+				   struct intel_c20pll_state *pll_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	bool cntx;
+	u32 val;
+	int i;
+
+        /* 1. Read current context selection */
+        cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
+
+	/* Read Tx configuration */
+	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
+		if (cntx)
+			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+							       PHY_C20_B_TX_CNTX_CFG(i));
+		else
+			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+							       PHY_C20_A_TX_CNTX_CFG(i));
+	}
+
+	/* Read common configuration */
+	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
+		if (cntx)
+			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+							        PHY_C20_B_CMN_CNTX_CFG(i));
+		else
+			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+							        PHY_C20_A_CMN_CNTX_CFG(i));
+	}
+
+	if (cntx)
+		val = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_MPLLA_CNTX_CFG(6));
+	else
+		val = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_MPLLA_CNTX_CFG(6));
+
+	if (val & C20_MPLLA_FRACEN) {
+		/* MPLLA configuration */
+		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
+			if (cntx)
+				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+								          PHY_C20_B_MPLLA_CNTX_CFG(i));
+			else
+				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+								          PHY_C20_A_MPLLA_CNTX_CFG(i));
+		}
+	} else {
+		/* MPLLB configuration */
+		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
+			if (cntx)
+				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+								          PHY_C20_B_MPLLB_CNTX_CFG(i));
+			else
+				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+								          PHY_C20_A_MPLLB_CNTX_CFG(i));
+		}
+	}
+}
+
+void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
+				const struct intel_c20pll_state *hw_state)
+{
+	int i;
+
+	drm_dbg_kms(&i915->drm, "c20pll_hw_state:\n");
+	drm_dbg_kms(&i915->drm, "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
+		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
+	drm_dbg_kms(&i915->drm, "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
+		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
+
+	if (intel_c20_use_mplla(hw_state->clock)) {
+		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
+			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
+	} else {
+		for (i = 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
+			drm_dbg_kms(&i915->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
+	}
+}
+
+static u8 intel_c20_get_dp_rate(u32 clock)
+{
+	switch (clock) {
+	case 162000: /* 1.62 Gbps DP1.4 */
+		return 0;
+	case 270000: /* 2.7 Gbps DP1.4 */
+		return 1;
+	case 540000: /* 5.4 Gbps DP 1.4 */
+		return 2;
+	case 810000: /* 8.1 Gbps DP1.4 */
+		return 3;
+	case 216000: /* 2.16 Gbps eDP */
+		return 4;
+	case 243000: /* 2.43 Gbps eDP */
+		return 5;
+	case 324000: /* 3.24 Gbps eDP */
+		return 6;
+	case 432000: /* 4.32 Gbps eDP */
+		return 7;
+	case 312500: /* 10 Gbps DP2.0 */
+		return 8;
+	case 421875: /* 13.5 Gbps DP2.0 */
+		return 9;
+	case 625000: /* 20 Gbps DP2.0*/
+		return 10;
+	default:
+		MISSING_CASE(clock);
+		return 0;
+	}
+}
+
+static u8 intel_c20_get_hdmi_rate(u32 clock)
+{
+	switch (clock) {
+	case 25175:
+	case 27000:
+	case 74250:
+	case 148500:
+	case 594000:
+		return 0;
+	case 166670: /* 3 Gbps */
+	case 333330: /* 6 Gbps */
+	case 666670: /* 12 Gbps */
+		return 1;
+	case 444440: /* 8 Gbps */
+		return 2;
+	case 555560: /* 10 Gbps */
+		return 3;
+	default:
+		MISSING_CASE(clock);
+		return 0;
+	}
+}
+
+static bool is_dp2(u32 clock)
+{
+	/* DP2.0 clock rates */
+	if (clock == 312500 || clock == 421875 || clock  == 625000)
+		return true;
+
+	return false;
+}
+
+static bool is_hdmi_frl(u32 clock)
+{
+	switch (clock) {
+	case 166670: /* 3 Gbps */
+	case 333330: /* 6 Gbps */
+	case 444440: /* 8 Gbps */
+	case 555560: /* 10 Gbps */
+	case 666670: /* 12 Gbps */
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool intel_c20_protocol_switch_valid(struct intel_encoder *encoder)
+{
+	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
+
+	/* banks should not be cleared for DPALT/USB4/TBT modes */
+	/* TODO: optimize re-calibration in legacy mode */
+	return intel_tc_port_in_legacy_mode(intel_dig_port);
+}
+
+static void intel_c20_pll_program(struct drm_i915_private *i915,
+				  const struct intel_crtc_state *crtc_state,
+				  struct intel_encoder *encoder)
+{
+	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20pll_state;
+	bool dp = false;
+	int lane_count = crtc_state->lane_count;
+	int lanes = lane_count == 4 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
+	bool cntx;
+	int i;
+
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		dp = true;
+
+	/* 1. Read current context selection */
+	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) &
+		PHY_C20_CONTEXT_TOGGLE;
+
+	/* 2. If there is a protocol switch from HDMI to DP or vice versa, clear
+	 * the lane #0 MPLLB CAL_DONE_BANK.
+	 * Protocol switch is only applicable for MPLLB
+	 */
+	if (intel_c20_protocol_switch_valid(encoder)) {
+		for (i = 0; i < 4; i++)
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);
+	}
+
+	/* 3. Write SRAM configuration context. If A in use, write configuration to B context */
+	/* 3.1 Tx configuration */
+	for (i = 0; i < 3; i++) {
+		if (cntx)
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
+		else
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
+	}
+
+	/* 3.2 common configuration */
+	for (i = 0; i < 4; i++) {
+		if (cntx)
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+		else
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+	}
+
+	/* 3.3 mpllb or mplla configuration */
+	if (intel_c20_use_mplla(pll_state->clock)) {
+		for (i = 0; i < 10; i++) {
+			if (cntx)
+				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
+						     PHY_C20_A_MPLLA_CNTX_CFG(i),
+						     pll_state->mplla[i]);
+			else
+				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
+						     PHY_C20_B_MPLLA_CNTX_CFG(i),
+						     pll_state->mplla[i]);
+		}
+	} else {
+		for (i = 0; i < 11; i++) {
+			if (cntx)
+				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
+						     PHY_C20_A_MPLLB_CNTX_CFG(i),
+						     pll_state->mpllb[i]);
+			else
+				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
+						     PHY_C20_B_MPLLB_CNTX_CFG(i),
+						     pll_state->mpllb[i]);
+		}
+	}
+
+	/* 4. Program custom width to match the link protocol */
+	if (dp) {
+		intel_cx0_write(i915, encoder->port, lanes, PHY_C20_VDR_CUSTOM_WIDTH,
+				is_dp2(pll_state->clock) ? 2 : 0,
+				MB_WRITE_COMMITTED);
+	} else if (is_hdmi_frl(pll_state->clock)) {
+		intel_cx0_write(i915, encoder->port, lanes, PHY_C20_VDR_CUSTOM_WIDTH,
+				1, MB_WRITE_COMMITTED);
+	} else
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_WIDTH,
+				0, MB_WRITE_COMMITTED);
+
+	/* 5. For DP or 6. For HDMI */
+	if (dp) {
+		intel_cx0_write(i915, encoder->port, lanes, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+				BIT(6) | (intel_c20_get_dp_rate(pll_state->clock) << 1),
+				MB_WRITE_COMMITTED);
+	} else {
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+				((is_hdmi_frl(pll_state->clock) ? 1 : 0) << 7),
+				MB_WRITE_COMMITTED);
+
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
+				(intel_c20_get_hdmi_rate(pll_state->clock) << 0),
+				MB_WRITE_COMMITTED);
+	}
+
+	/*
+	 * 7. Write Vendor specific registers to toggle context setting to load
+	 * the updated programming toggle context bit
+	 */
+	intel_cx0_write(i915, encoder->port, lanes, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+			cntx ? 0 : 1, MB_WRITE_COMMITTED);
+}
+
+int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
+				   const struct intel_c10mpllb_state *pll_state)
+{
+	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
+	unsigned int multiplier, tx_clk_div, hdmi_div, refclk = 38400;
+	int tmpclk = 0;
+
+	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
+		frac_quot = pll_state->pll[12] << 8 | pll_state->pll[11];
+		frac_rem =  pll_state->pll[14] << 8 | pll_state->pll[13];
+		frac_den =  pll_state->pll[10] << 8 | pll_state->pll[9];
+	}
+
+	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, pll_state->pll[3]) << 8 |
+		      pll_state->pll[2]) / 2 + 16;
+
+	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state->pll[15]);
+	hdmi_div = REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->pll[15]);
+
+	tmpclk = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
+				     DIV_ROUND_CLOSEST(refclk * frac_rem, frac_den),
+				     10 << (tx_clk_div + 16));
+	tmpclk *= (hdmi_div ? 2 : 1);
+
+	return tmpclk;
+}
+
+int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_c20pll_state *pll_state)
+{
+	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
+	unsigned int multiplier, refclk = 38400;
+	unsigned ref_clk_mpllb_div = 0;
+	unsigned fb_clk_div4_en = 0;
+	unsigned long tmp1, tmp2;
+
+	if (pll_state->mpllb[6] & C20_MPLLB_FRACEN) {
+		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mpllb[0]);
+		ref_clk_mpllb_div = REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mpllb[6]);
+		fb_clk_div4_en = REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll_state->mpllb[6]);
+		frac_den = pll_state->mpllb[7];
+		frac_quot = pll_state->mpllb[8];
+		frac_rem = pll_state->mpllb[9];
+	} else if (pll_state->mplla[6] & C20_MPLLA_FRACEN) {
+		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mplla[0]);
+		ref_clk_mpllb_div = REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mpllb[6]);
+		fb_clk_div4_en = REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll_state->mpllb[6]);
+		frac_den = pll_state->mpllb[7];
+		frac_quot = pll_state->mplla[8];
+		frac_rem = pll_state->mplla[9];
+	}
+
+	tmp1 = DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), 1 << ref_clk_mpllb_div);
+	tmp2 = (multiplier << 15) + frac_quot + DIV_ROUND_CLOSEST(frac_rem,frac_den);
+
+	return DIV_ROUND_CLOSEST((tmp1 * tmp2) >> 17, 10);
+}
+
+static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
+					 const struct intel_crtc_state *crtc_state,
+					 bool lane_reversal)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp;
+	bool ssc_enabled;
+	u32 val = 0;
+
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port), XELPDP_PORT_REVERSAL,
+		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
+
+	if (lane_reversal)
+		val |= XELPDP_LANE1_PHY_CLOCK_SELECT;
+
+	val |= XELPDP_FORWARD_CLOCK_UNGATE;
+
+	if (is_hdmi_frl(crtc_state->port_clock))
+		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
+	else
+		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		intel_dp = enc_to_intel_dp(encoder);
+		ssc_enabled = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
+			      DP_MAX_DOWNSPREAD_0_5);
+
+		if (intel_dp_is_edp(intel_dp) && !intel_panel_use_ssc(i915))
+			ssc_enabled = false;
+
+		if (!intel_panel_use_ssc(i915))
+			ssc_enabled = false;
+
+		/* DP2.0 10G and 20G rates enable MPLLA*/
+		if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000) {
+			val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
+		} else {
+			val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+		}
+	}
+
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
+		     XELPDP_DDI_CLOCK_SELECT_MASK |
+		     XELPDP_SSC_ENABLE_PLLA | XELPDP_SSC_ENABLE_PLLB, val);
+}
+
+static u32 intel_cx0_get_powerdown_update(u8 lane)
+{
+	if (lane & INTEL_CX0_LANE0)
+		return XELPDP_LANE0_POWERDOWN_UPDATE;
+	else if (lane & INTEL_CX0_LANE1)
+		return XELPDP_LANE1_POWERDOWN_UPDATE;
+	else
+		return XELPDP_LANE0_POWERDOWN_UPDATE |
+		       XELPDP_LANE1_POWERDOWN_UPDATE;
+}
+
+static u32 intel_cx0_get_powerdown_state(u8 lane, u8 state)
+{
+	if (lane & INTEL_CX0_LANE0)
+		return XELPDP_LANE0_POWERDOWN_NEW_STATE(state);
+	else if (lane & INTEL_CX0_LANE1)
+		return XELPDP_LANE1_POWERDOWN_NEW_STATE(state);
+	else
+		return XELPDP_LANE0_POWERDOWN_NEW_STATE(state) |
+		       XELPDP_LANE1_POWERDOWN_NEW_STATE(state);
+}
+
+static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
+						enum port port,
+						u8 lane, u8 state)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+		     XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK | XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK,
+		     intel_cx0_get_powerdown_state(lane, state));
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+		     XELPDP_LANE0_POWERDOWN_UPDATE | XELPDP_LANE1_POWERDOWN_UPDATE,
+		     intel_cx0_get_powerdown_update(lane));
+
+	/* Update Timeout Value */
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
+				         intel_cx0_get_powerdown_update(lane), 0,
+				         XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
+			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
+}
+
+static void intel_cx0_setup_powerdown(struct drm_i915_private *i915, enum port port)
+{
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+		     XELPDP_POWER_STATE_READY_MASK,
+		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(port),
+		     XELPDP_POWER_STATE_ACTIVE_MASK |
+		     XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
+		     XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
+		     XELPDP_PLL_LANE_STAGGERING_DELAY(0));
+}
+
+static u32 intel_cx0_get_pclk_refclk_request(u8 lane)
+{
+	if (lane & INTEL_CX0_LANE0)
+		return XELPDP_LANE0_PCLK_REFCLK_REQUEST;
+	else if (lane & INTEL_CX0_LANE1)
+		return XELPDP_LANE1_PCLK_REFCLK_REQUEST;
+	else
+		return XELPDP_LANE0_PCLK_REFCLK_REQUEST |
+		       XELPDP_LANE1_PCLK_REFCLK_REQUEST;
+}
+
+static u32 intel_cx0_get_pclk_refclk_ack(u8 lane)
+{
+	if (lane & INTEL_CX0_LANE0)
+		return XELPDP_LANE0_PCLK_REFCLK_ACK;
+	else if (lane & INTEL_CX0_LANE1)
+		return XELPDP_LANE1_PCLK_REFCLK_ACK;
+	else
+		return XELPDP_LANE0_PCLK_REFCLK_ACK |
+		       XELPDP_LANE1_PCLK_REFCLK_ACK;
+}
+
+/* FIXME: Some Type-C cases need not reset both the lanes. Handle those cases. */
+static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915, enum port port,
+				     bool lane_reversal)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+	u8 lane = lane_reversal ? INTEL_CX0_LANE1 :
+				  INTEL_CX0_LANE0;
+
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port),
+				         XELPDP_PORT_BUF_SOC_PHY_READY,
+				         XELPDP_PORT_BUF_SOC_PHY_READY,
+				         XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
+			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
+
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+		     XELPDP_LANE0_PIPE_RESET | XELPDP_LANE1_PIPE_RESET,
+		     XELPDP_LANE0_PIPE_RESET | XELPDP_LANE1_PIPE_RESET);
+
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
+				         XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,
+				         XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,
+				         XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
+			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
+
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
+		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES),
+		     intel_cx0_get_pclk_refclk_request(lane));
+
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port),
+				         intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES),
+				         intel_cx0_get_pclk_refclk_ack(lane),
+				         XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "PHY %c failed to request refclk after %dus.\n",
+			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
+
+	intel_cx0_powerdown_change_sequence(i915, port, INTEL_CX0_BOTH_LANES,
+					    CX0_P2_STATE_RESET);
+	intel_cx0_setup_powerdown(i915, port);
+
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+		     XELPDP_LANE0_PIPE_RESET | XELPDP_LANE1_PIPE_RESET, 0);
+
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port),
+				    XELPDP_LANE0_PHY_CURRENT_STATUS |
+				    XELPDP_LANE1_PHY_CURRENT_STATUS,
+				    XELPDP_PORT_RESET_END_TIMEOUT))
+		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dms.\n",
+			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
+}
+
+static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
+				       struct intel_encoder *encoder, int lane_count,
+				       bool lane_reversal)
+{
+	u8 l0t1, l0t2, l1t1, l1t2;
+	bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
+	enum port port = encoder->port;
+
+	intel_cx0_rmw(i915, port, INTEL_CX0_LANE1, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG,
+		      C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+	intel_cx0_rmw(i915, port, INTEL_CX0_LANE0, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG,
+		      C10_VDR_CTRL_MASTER_LANE  | C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+
+	l0t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2));
+	l0t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2));
+	l1t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2));
+	l1t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2));
+
+	if (lane_reversal) {
+		switch (lane_count) {
+		case 1:
+			/* Disable MLs 1(lane0), 2(lane0), 3(lane1) */
+			intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2),
+					l1t1 | CONTROL2_DISABLE_SINGLE_TX,
+					MB_WRITE_COMMITTED);
+			fallthrough;
+		case 2:
+			/* Disable MLs 1(lane0), 2(lane0) */
+			intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2),
+					l0t2 | CONTROL2_DISABLE_SINGLE_TX,
+					MB_WRITE_COMMITTED);
+			fallthrough;
+		case 3:
+			/* Disable MLs 1(lane0) */
+			intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2),
+					l0t1 | CONTROL2_DISABLE_SINGLE_TX,
+					MB_WRITE_COMMITTED);
+			break;
+		}
+	} else {
+		switch (lane_count) {
+		case 1:
+			if (dp_alt_mode) {
+				/* Disable MLs 1(lane0), 3(lane1), 4(lane1) */
+				intel_cx0_write(i915, port, 0, PHY_CX0_TX_CONTROL(1, 2),
+						l0t1 | CONTROL2_DISABLE_SINGLE_TX,
+						MB_WRITE_COMMITTED);
+			} else {
+				/* Disable MLs 2(lane0), 3(lane1), 4(lane1) */
+				intel_cx0_write(i915, port, 0, PHY_CX0_TX_CONTROL(2, 2),
+						l0t2 | CONTROL2_DISABLE_SINGLE_TX,
+						MB_WRITE_COMMITTED);
+                        }
+			fallthrough;
+		case 2:
+			/* Disable MLs 3(lane1), 4(lane1) */
+			intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2),
+					l1t1 | CONTROL2_DISABLE_SINGLE_TX,
+					MB_WRITE_COMMITTED);
+			fallthrough;
+		case 3:
+			/* Disable MLs 4(lane1) */
+			intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2),
+					l1t2 | CONTROL2_DISABLE_SINGLE_TX,
+					MB_WRITE_COMMITTED);
+			break;
+		}
+	}
+
+	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port))) {
+		intel_cx0_rmw(i915, port, INTEL_CX0_LANE1, PHY_C10_VDR_CONTROL(1),
+			      C10_VDR_CTRL_UPDATE_CFG | C10_VDR_CTRL_MSGBUS_ACCESS,
+			      C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
+		intel_cx0_rmw(i915, port, INTEL_CX0_LANE0, PHY_C10_VDR_CONTROL(1),
+			      C10_VDR_CTRL_UPDATE_CFG | C10_VDR_CTRL_MSGBUS_ACCESS,
+			      C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
+	}
+}
+
+static u32 intel_cx0_get_pclk_pll_request(u8 lane)
+{
+	if (lane & INTEL_CX0_LANE0)
+		return XELPDP_LANE0_PCLK_PLL_REQUEST;
+	else if (lane & INTEL_CX0_LANE1)
+		return XELPDP_LANE1_PCLK_PLL_REQUEST;
+	else
+		return XELPDP_LANE0_PCLK_PLL_REQUEST |
+		       XELPDP_LANE1_PCLK_PLL_REQUEST;
+}
+
+static u32 intel_cx0_get_pclk_pll_ack(u8 lane)
+{
+	if (lane & INTEL_CX0_LANE0)
+		return XELPDP_LANE0_PCLK_PLL_ACK;
+	else if (lane & INTEL_CX0_LANE1)
+		return XELPDP_LANE1_PCLK_PLL_ACK;
+	else
+		return XELPDP_LANE0_PCLK_PLL_ACK |
+		       XELPDP_LANE1_PCLK_PLL_ACK;
+}
+
+static void intel_cx0pll_enable(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
+					  INTEL_CX0_LANE0;
+	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
+
+	/*
+	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
+	 * clock muxes, gating and SSC
+	 */
+	intel_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
+
+	/* 2. Bring PHY out of reset. */
+	intel_cx0_phy_lane_reset(i915, encoder->port, lane_reversal);
+
+	/*
+	 * 3. Change Phy power state to Ready.
+	 * TODO: For DP alt mode use only one lane.
+	 */
+	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
+					    CX0_P2_STATE_READY);
+
+	/* 4. Program PHY internal PLL internal registers. */
+	if (intel_is_c10phy(i915, phy))
+		intel_c10_pll_program(i915, crtc_state, encoder);
+	else
+		intel_c20_pll_program(i915, crtc_state, encoder);
+
+	/*
+	 * 5. Program the enabled and disabled owned PHY lane
+	 * transmitters over message bus
+	 */
+	intel_cx0_program_phy_lane(i915, encoder, crtc_state->lane_count, lane_reversal);
+
+	/*
+	 * 6. Follow the Display Voltage Frequency Switching - Sequence
+	 * Before Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 7. Program DDI_CLK_VALFREQ to match intended DDI
+	 * clock frequency.
+	 */
+	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
+		       crtc_state->port_clock);
+	/*
+	 * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
+	 * LN<Lane for maxPCLK> to "1" to enable PLL.
+	 */
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
+		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
+
+	/* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				         intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
+				         intel_cx0_get_pclk_pll_ack(maxpclk_lane),
+				         XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "Port %c PLL not locked after %dus.\n",
+			 phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US);
+
+	/*
+	 * 10. Follow the Display Voltage Frequency Switching Sequence After
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
+}
+
+int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	u32 clock;
+	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
+
+	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
+
+	drm_WARN_ON(&i915->drm, !(val & XELPDP_FORWARD_CLOCK_UNGATE));
+	drm_WARN_ON(&i915->drm, !(val & XELPDP_TBT_CLOCK_REQUEST));
+	drm_WARN_ON(&i915->drm, !(val & XELPDP_TBT_CLOCK_ACK));
+
+	switch (clock) {
+	case XELPDP_DDI_CLOCK_SELECT_TBT_162:
+		return 162000;
+	case XELPDP_DDI_CLOCK_SELECT_TBT_270:
+		return 270000;
+	case XELPDP_DDI_CLOCK_SELECT_TBT_540:
+		return 540000;
+	case XELPDP_DDI_CLOCK_SELECT_TBT_810:
+		return 810000;
+	default:
+		MISSING_CASE(clock);
+		return 162000;
+       }
+}
+
+static int intel_mtl_tbt_clock_select(struct drm_i915_private *i915, int clock)
+{
+	switch (clock) {
+	case 162000:
+		return XELPDP_DDI_CLOCK_SELECT_TBT_162;
+	case 270000:
+		return XELPDP_DDI_CLOCK_SELECT_TBT_270;
+	case 540000:
+		return XELPDP_DDI_CLOCK_SELECT_TBT_540;
+	case 810000:
+		return XELPDP_DDI_CLOCK_SELECT_TBT_810;
+	default:
+		MISSING_CASE(clock);
+		return XELPDP_DDI_CLOCK_SELECT_TBT_162;
+       }
+}
+
+static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	u32 val = 0;
+
+	/*
+	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
+	 * clock muxes, gating and SSC
+	 */
+	val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(i915, crtc_state->port_clock));
+	val |= XELPDP_FORWARD_CLOCK_UNGATE;
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_UNGATE, val);
+
+	/* 2. Read back PORT_CLOCK_CTL REGISTER */
+	val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
+
+	/*
+	 * 3. Follow the Display Voltage Frequency Switching - Sequence
+	 * Before Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 4. Set PORT_CLOCK_CTL register TBT CLOCK Request to "1" to enable PLL.
+	 */
+	val |= XELPDP_TBT_CLOCK_REQUEST;
+	intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(encoder->port), val);
+
+	/* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "1". */
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				         XELPDP_TBT_CLOCK_ACK,
+				         XELPDP_TBT_CLOCK_ACK,
+				         100, 0, NULL))
+		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not locked after 100us.\n",
+			 encoder->base.base.id, encoder->base.name, phy_name(phy));
+
+	/*
+	 * 6. Follow the Display Voltage Frequency Switching Sequence After
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 7. Program DDI_CLK_VALFREQ to match intended DDI
+	 * clock frequency.
+	 */
+	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
+		       crtc_state->port_clock);
+}
+
+void intel_mtl_pll_enable(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		intel_mtl_tbt_pll_enable(encoder, crtc_state);
+	else
+		intel_cx0pll_enable(encoder, crtc_state);
+}
+
+static void intel_cx0pll_disable(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	bool is_c10 = intel_is_c10phy(i915, phy);
+	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
+
+	/* 1. Change owned PHY lane power to Disable state. */
+	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
+					    is_c10 ? CX0_P2PG_STATE_DISABLE :
+					    CX0_P4PG_STATE_DISABLE);
+
+	/*
+	 * 2. Follow the Display Voltage Frequency Switching Sequence Before
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 3. Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for maxPCLK>
+	 * to "0" to disable PLL.
+	 */
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES) |
+		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES), 0);
+
+	/* 4. Program DDI_CLK_VALFREQ to 0. */
+	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port), 0);
+
+	/*
+	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
+	 */
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				         intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
+				         intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
+				         XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "Port %c PLL not unlocked after %dus.\n",
+			 phy_name(phy), XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US);
+
+	/*
+	 * 6. Follow the Display Voltage Frequency Switching Sequence After
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
+}
+
+static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	/*
+	 * 1. Follow the Display Voltage Frequency Switching Sequence Before
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 2. Set PORT_CLOCK_CTL register TBT CLOCK Request to "0" to disable PLL.
+	 */
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     XELPDP_TBT_CLOCK_REQUEST, 0);
+
+	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				         XELPDP_TBT_CLOCK_ACK,
+				         0,
+				         10, 0, NULL))
+		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
+			 encoder->base.base.id, encoder->base.name, phy_name(phy));
+
+	/*
+	 * 4. Follow the Display Voltage Frequency Switching Sequence After
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 5. Program PORT CLOCK CTRL register to disable and gate clocks
+	 */
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     XELPDP_DDI_CLOCK_SELECT_MASK |
+		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
+
+	/* 6. Program DDI_CLK_VALFREQ to 0. */
+	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port), 0);
+}
+
+void intel_mtl_pll_disable(struct intel_encoder *encoder)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		intel_mtl_tbt_pll_disable(encoder);
+	else
+		intel_cx0pll_disable(encoder);
+}
+
+void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
+				 struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_c10mpllb_state mpllb_hw_state = { 0 };
+	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->cx0pll_state.c10mpllb_state;
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
+	struct intel_encoder *encoder;
+	struct intel_dp *intel_dp;
+	enum phy phy;
+	int i;
+	bool use_ssc = false;
+	bool use_hdmi = false;
+
+	if (DISPLAY_VER(i915) < 14)
+		return;
+
+	if (!new_crtc_state->hw.active)
+		return;
+
+	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
+	phy = intel_port_to_phy(i915, encoder->port);
+
+	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
+		intel_dp = enc_to_intel_dp(encoder);
+		use_ssc = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
+			  DP_MAX_DOWNSPREAD_0_5);
+
+		if (!intel_panel_use_ssc(i915))
+			use_ssc = false;
+	} else {
+		use_hdmi = true;
+	}
+
+	if (!intel_is_c10phy(i915, phy))
+		return;
+
+	intel_c10mpllb_readout_hw_state(encoder, &mpllb_hw_state);
+
+	for (i = 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
+		u8 expected;
+
+		if (!(use_ssc || use_hdmi) && i > 3 && i < 9)
+			expected = 0;
+		else
+			expected = mpllb_sw_state->pll[i];
+
+		I915_STATE_WARN(mpllb_hw_state.pll[i] != expected,
+				"[CRTC:%d:%s] mismatch in C10MPLLB: Register[%d] (expected 0x%02x, found 0x%02x)",
+				crtc->base.base.id, crtc->base.name,
+				i, expected, mpllb_hw_state.pll[i]);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
new file mode 100644
index 000000000000..9e115ec619ea
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -0,0 +1,57 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __INTEL_CX0_PHY_H__
+#define __INTEL_CX0_PHY_H__
+
+#include <linux/types.h>
+#include <linux/bitfield.h>
+#include <linux/bits.h>
+
+#include "i915_drv.h"
+#include "intel_display_types.h"
+
+struct drm_i915_private;
+struct intel_encoder;
+struct intel_crtc_state;
+enum phy;
+
+#define INTEL_CX0_LANE0		0x1
+#define INTEL_CX0_LANE1		0x2
+#define INTEL_CX0_BOTH_LANES	0x3
+
+#define MB_WRITE_COMMITTED		1
+#define MB_WRITE_UNCOMMITTED		0
+
+bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
+void intel_mtl_pll_enable(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state);
+void intel_mtl_pll_disable(struct intel_encoder *encoder);
+void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
+				     struct intel_c10mpllb_state *pll_state);
+int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
+			      struct intel_encoder *encoder);
+void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
+                                   struct intel_c20pll_state *pll_state);
+void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
+				  const struct intel_c10mpllb_state *hw_state);
+void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
+				const struct intel_c20pll_state *hw_state);
+int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
+				   const struct intel_c10mpllb_state *pll_state);
+void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
+				 struct intel_crtc_state *new_crtc_state);
+int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_c20pll_state *pll_state);
+int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
+void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *crtc_state);
+
+int intel_c20_phy_check_hdmi_link_rate(int clock);
+void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
+				       const struct intel_crtc_state *crtc_state,
+				       u32 level);
+int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
+#endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
new file mode 100644
index 000000000000..f8917f20a151
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -0,0 +1,225 @@
+/* SPDX-License-Identifier: MIT
+ *
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_CX0_PHY_REGS_H__
+#define __INTEL_CX0_PHY_REGS_H__
+
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A		0x64040
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B		0x64140
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1		0x16F240
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2		0x16F440
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3		0x16F640
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4		0x16F840
+#define _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		(_PICK(port, \
+							[PORT_A] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
+							[PORT_B] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
+							[PORT_TC1] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
+							[PORT_TC2] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2, \
+							[PORT_TC3] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3, \
+							[PORT_TC4] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4) + ((lane) * 4))
+#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2))
+#define XELPDP_PORT_M2P_TRANSACTION_PENDING		REG_BIT(31)
+#define XELPDP_PORT_M2P_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
+#define XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
+#define XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED		REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)
+#define XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)
+#define XELPDP_PORT_M2P_DATA_MASK			REG_GENMASK(23, 16)
+#define XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)
+#define XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
+#define XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
+#define XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
+
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane) + 8)
+#define XELPDP_PORT_P2M_RESPONSE_READY			REG_BIT(31)
+#define XELPDP_PORT_P2M_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
+#define XELPDP_PORT_P2M_COMMAND_READ_ACK		0x4
+#define XELPDP_PORT_P2M_COMMAND_WRITE_ACK		0x5
+#define XELPDP_PORT_P2M_DATA_MASK			REG_GENMASK(23, 16)
+#define XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)
+#define XELPDP_PORT_P2M_ERROR_SET			REG_BIT(15)
+#define XELPDP_MSGBUS_TIMEOUT_SLOW			1
+#define XELPDP_MSGBUS_TIMEOUT_FAST_US			2
+
+#define XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US		3200
+#define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
+#define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
+#define XELPDP_PORT_RESET_START_TIMEOUT_US		5
+#define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US		100
+#define XELPDP_PORT_RESET_END_TIMEOUT			15
+#define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
+
+#define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004
+#define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104
+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC1			0x16F200
+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC2			0x16F400
+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC3			0x16F600
+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC4			0x16F800
+#define _XELPDP_PORT_BUF_CTL1(port)			(_PICK(port, \
+							[PORT_A] = _XELPDP_PORT_BUF_CTL1_LN0_A, \
+							[PORT_B] = _XELPDP_PORT_BUF_CTL1_LN0_B, \
+							[PORT_TC1] = _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
+							[PORT_TC2] = _XELPDP_PORT_BUF_CTL1_LN0_USBC2, \
+							[PORT_TC3] = _XELPDP_PORT_BUF_CTL1_LN0_USBC3, \
+							[PORT_TC4] = _XELPDP_PORT_BUF_CTL1_LN0_USBC4))
+#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2))
+#define XELPDP_PORT_BUF_SOC_PHY_READY			REG_BIT(24)
+#define XELPDP_PORT_REVERSAL				REG_BIT(16)
+
+#define XELPDP_TC_PHY_OWNERSHIP				REG_BIT(6)
+#define XELPDP_TCSS_POWER_REQUEST			REG_BIT(5)
+#define XELPDP_TCSS_POWER_STATE				REG_BIT(4)
+#define XELPDP_PORT_WIDTH_MASK				REG_GENMASK(3, 1)
+#define XELPDP_PORT_WIDTH(val)				REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
+
+#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 4)
+#define XELPDP_LANE0_PIPE_RESET				REG_BIT(31)
+#define XELPDP_LANE1_PIPE_RESET				REG_BIT(30)
+#define XELPDP_LANE0_PHY_CURRENT_STATUS			REG_BIT(29)
+#define XELPDP_LANE1_PHY_CURRENT_STATUS			REG_BIT(28)
+#define XELPDP_LANE0_POWERDOWN_UPDATE			REG_BIT(25)
+#define XELPDP_LANE1_POWERDOWN_UPDATE			REG_BIT(24)
+#define XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(23, 20)
+#define XELPDP_LANE0_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)
+#define XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(19, 16)
+#define XELPDP_LANE1_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)
+#define XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
+#define XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
+
+#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 8)
+#define XELPDP_PLL_LANE_STAGGERING_DELAY_MASK		REG_GENMASK(15, 8)
+#define XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
+#define XELPDP_POWER_STATE_ACTIVE_MASK			REG_GENMASK(3, 0)
+#define XELPDP_POWER_STATE_ACTIVE(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)
+
+#define _XELPDP_PORT_CLOCK_CTL_A			0x640E0
+#define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
+#define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
+#define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
+#define _XELPDP_PORT_CLOCK_CTL_USBC3			0x16F660
+#define _XELPDP_PORT_CLOCK_CTL_USBC4			0x16F860
+#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_CLOCK_CTL_A, \
+										 _XELPDP_PORT_CLOCK_CTL_B, \
+										 _XELPDP_PORT_CLOCK_CTL_USBC1, \
+										 _XELPDP_PORT_CLOCK_CTL_USBC2))
+#define XELPDP_LANE0_PCLK_PLL_REQUEST			REG_BIT(31)
+#define XELPDP_LANE0_PCLK_PLL_ACK			REG_BIT(30)
+#define XELPDP_LANE0_PCLK_REFCLK_REQUEST		REG_BIT(29)
+#define XELPDP_LANE0_PCLK_REFCLK_ACK			REG_BIT(28)
+#define XELPDP_LANE1_PCLK_PLL_REQUEST			REG_BIT(27)
+#define XELPDP_LANE1_PCLK_PLL_ACK			REG_BIT(26)
+#define XELPDP_LANE1_PCLK_REFCLK_REQUEST		REG_BIT(25)
+#define XELPDP_LANE1_PCLK_REFCLK_ACK			REG_BIT(24)
+#define XELPDP_TBT_CLOCK_REQUEST			REG_BIT(19)
+#define XELPDP_TBT_CLOCK_ACK				REG_BIT(18)
+#define XELPDP_DDI_CLOCK_SELECT_MASK			REG_GENMASK(15, 12)
+#define XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)
+#define XELPDP_DDI_CLOCK_SELECT_NONE			0x0
+#define XELPDP_DDI_CLOCK_SELECT_MAXPCLK			0x8
+#define XELPDP_DDI_CLOCK_SELECT_DIV18CLK		0x9
+#define XELPDP_DDI_CLOCK_SELECT_TBT_162			0xc
+#define XELPDP_DDI_CLOCK_SELECT_TBT_270			0xd
+#define XELPDP_DDI_CLOCK_SELECT_TBT_540			0xe
+#define XELPDP_DDI_CLOCK_SELECT_TBT_810			0xf
+#define XELPDP_FORWARD_CLOCK_UNGATE			REG_BIT(10)
+#define XELPDP_LANE1_PHY_CLOCK_SELECT			REG_BIT(8)
+#define XELPDP_SSC_ENABLE_PLLA				REG_BIT(1)
+#define XELPDP_SSC_ENABLE_PLLB				REG_BIT(0)
+
+/* C10 Vendor Registers */
+#define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
+#define  C10_PLL0_FRACEN		REG_BIT8(4)
+#define  C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
+#define  C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
+#define  C10_PLL15_HDMIDIV_MASK		REG_GENMASK8(5, 3)
+
+#define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
+#define  C10_CMN0_DP_VAL		0x21
+#define  C10_CMN0_HDMI_VAL		0x1
+#define  C10_CMN3_TXVBOOST_MASK		REG_GENMASK8(7, 5)
+#define  C10_CMN3_TXVBOOST(val)		REG_FIELD_PREP8(C10_CMN3_TXVBOOST_MASK, val)
+
+#define PHY_C10_VDR_TX(idx)		(0xC30 + (idx))
+#define  C10_TX0_VAL			0x10
+
+#define PHY_C10_VDR_CONTROL(idx)	(0xC70 + (idx) - 1)
+#define  C10_VDR_CTRL_MSGBUS_ACCESS	REG_BIT8(2)
+#define  C10_VDR_CTRL_MASTER_LANE	REG_BIT8(1)
+#define  C10_VDR_CTRL_UPDATE_CFG	REG_BIT8(0)
+
+#define PHY_C10_VDR_CUSTOM_WIDTH	0xD02
+
+#define CX0_P0_STATE_ACTIVE		0x0
+#define CX0_P2_STATE_READY		0x2
+#define CX0_P2PG_STATE_DISABLE		0x9
+#define CX0_P4PG_STATE_DISABLE		0xC
+#define CX0_P2_STATE_RESET		0x2
+
+#define PHY_C10_VDR_OVRD		0xD71
+#define  PHY_C10_VDR_OVRD_TX1		REG_BIT8(0)
+#define  PHY_C10_VDR_OVRD_TX2		REG_BIT8(2)
+#define PHY_C10_VDR_PRE_OVRD_TX1	0xD80
+#define C10_PHY_OVRD_LEVEL_MASK		REG_GENMASK8(5, 0)
+#define C10_PHY_OVRD_LEVEL(val)		REG_FIELD_PREP8(C10_PHY_OVRD_LEVEL_MASK, val)
+#define PHY_CX0_VDR_OVRD_CONTROL(lane, tx, control) (PHY_C10_VDR_PRE_OVRD_TX1 + ((lane) ^ ((tx) - 1)) * 0x10 + (control))
+
+/* PHY_C10_VDR_PLL0 */
+#define PLL_C10_MPLL_SSC_EN		REG_BIT8(0)
+
+/* PIPE SPEC Defined Registers */
+#define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
+#define CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
+
+/* C10 Phy VSWING Masks */
+#define C10_PHY_VSWING_LEVEL_MASK	REG_GENMASK8(2, 0)
+#define C10_PHY_VSWING_LEVEL(val)	REG_FIELD_PREP8(C10_PHY_VSWING_LEVEL_MASK, val)
+#define C10_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(1, 0)
+#define C10_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C10_PHY_VSWING_PREEMPH_MASK, val)
+
+/* C20 Registers */
+#define PHY_C20_WR_ADDRESS_L		0xC02
+#define PHY_C20_WR_ADDRESS_H		0xC03
+#define PHY_C20_WR_DATA_L		0xC04
+#define PHY_C20_WR_DATA_H		0xC05
+#define PHY_C20_RD_ADDRESS_L		0xC06
+#define PHY_C20_RD_ADDRESS_H		0xC07
+#define PHY_C20_RD_DATA_L		0xC08
+#define PHY_C20_RD_DATA_H		0xC09
+#define PHY_C20_VDR_CUSTOM_SERDES_RATE	0xD00
+#define PHY_C20_VDR_HDMI_RATE		0xD01
+#define  PHY_C20_CONTEXT_TOGGLE		REG_BIT8(0)
+#define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
+#define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
+#define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
+#define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
+#define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
+#define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
+#define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
+#define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
+#define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
+
+#define C20_MPLLB_FRACEN                REG_BIT(13)
+#define C20_MPLLA_FRACEN                REG_BIT(14)
+#define C20_MPLLB_TX_CLK_DIV_MASK       REG_GENMASK(15, 13)
+#define C20_REF_CLK_MPLLB_DIV_MASK      REG_GENMASK(12, 10)
+#define C20_MULTIPLIER_MASK             REG_GENMASK(11, 0)
+#define C20_MPLLA_TX_CLK_DIV_MASK       REG_GENMASK(10, 8)
+#define C20_FB_CLK_DIV4_EN              REG_BIT(13)
+
+/* C20 Phy VSwing Masks */
+#define C20_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(5, 0)
+#define C20_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C20_PHY_VSWING_PREEMPH_MASK, val)
+
+#define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx)	(0x303D + (idx))
+
+#endif /* __INTEL_CX0_PHY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8d5b73594657..774e09825bfb 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -39,6 +39,7 @@
 #include "intel_combo_phy_regs.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
+#include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
@@ -3062,6 +3063,11 @@ intel_ddi_update_prepare(struct intel_atomic_state *state,
 
 	intel_tc_port_get_link(enc_to_dig_port(encoder),
 		               required_lanes);
+
+	/* FIXME: Add MTL pll_mgr */
+	if (DISPLAY_VER(i915) >= 14)
+		return;
+
 	if (crtc_state && crtc_state->hw.active) {
 		struct intel_crtc *slave_crtc;
 
@@ -3503,6 +3509,28 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
 						     &crtc_state->dpll_hw_state);
 }
 
+static void mtl_ddi_get_config(struct intel_encoder *encoder,
+			       struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
+		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
+	} else if (intel_is_c10phy(i915, phy)) {
+		intel_c10mpllb_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
+		intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
+		crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
+	} else {
+		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20pll_state);
+		intel_c20pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c20pll_state);
+		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20pll_state);
+	}
+
+	intel_ddi_get_config(encoder, crtc_state);
+}
+
 static void dg2_ddi_get_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state)
 {
@@ -4377,7 +4405,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->cloneable = 0;
 	encoder->pipe_mask = ~0;
 
-	if (IS_DG2(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		encoder->enable_clock = intel_mtl_pll_enable;
+		encoder->disable_clock = intel_mtl_pll_disable;
+		encoder->get_config = mtl_ddi_get_config;
+	} else if (IS_DG2(dev_priv)) {
 		encoder->enable_clock = intel_mpllb_enable;
 		encoder->disable_clock = intel_mpllb_disable;
 		encoder->get_config = dg2_ddi_get_config;
@@ -4435,7 +4467,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		encoder->get_config = hsw_ddi_get_config;
 	}
 
-	if (IS_DG2(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		encoder->set_signal_levels = intel_cx0_phy_set_signal_levels;
+	} else if (IS_DG2(dev_priv)) {
 		encoder->set_signal_levels = intel_snps_phy_set_signal_levels;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		if (intel_phy_is_combo(dev_priv, phy))
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 006a2e979000..883084422f1f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_cx0_phy.h"
 
 /* HDMI/DVI modes ignore everything but the last 2 items. So we share
  * them for both DP and FDI transports, allowing those ports to
@@ -1035,6 +1036,70 @@ static const struct intel_ddi_buf_trans dg2_snps_trans_uhbr = {
 	.num_entries = ARRAY_SIZE(_dg2_snps_trans_uhbr),
 };
 
+/*
+ * Some platforms don't need a mapping table and only expect us to
+ * to program the vswing + preemphasis levels directly since the
+ * hardware will do its own mapping to tuning values internally.
+ */
+static const union intel_ddi_buf_trans_entry _mtl_c10_trans_dp14[] = {
+	{ .snps = { 26, 0, 0  } },      /* preset 0 */
+	{ .snps = { 33, 0, 6  } },      /* preset 1 */
+	{ .snps = { 38, 0, 11 } },      /* preset 2 */
+	{ .snps = { 43, 0, 19 } },      /* preset 3 */
+	{ .snps = { 39, 0, 0  } },      /* preset 4 */
+	{ .snps = { 45, 0, 7  } },      /* preset 5 */
+	{ .snps = { 46, 0, 13 } },      /* preset 6 */
+	{ .snps = { 46, 0, 0  } },      /* preset 7 */
+	{ .snps = { 55, 0, 7  } },      /* preset 8 */
+	{ .snps = { 62, 0, 0  } },      /* preset 9 */
+};
+
+static const struct intel_ddi_buf_trans mtl_cx0_trans = {
+	.entries = _mtl_c10_trans_dp14,
+	.num_entries = ARRAY_SIZE(_mtl_c10_trans_dp14),
+	.hdmi_default_entry = ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,
+};
+
+/* HDMI2.0 */
+static const union intel_ddi_buf_trans_entry _mtl_c20_trans_hdmi[] = {
+	{ .snps = { 48, 0, 0 } },       /* preset 0 */
+	{ .snps = { 38, 4, 6 } },       /* preset 1 */
+	{ .snps = { 36, 4, 8 } },       /* preset 2 */
+	{ .snps = { 34, 4, 10 } },      /* preset 3 */
+	{ .snps = { 32, 4, 12 } },      /* preset 4 */
+};
+
+static const struct intel_ddi_buf_trans mtl_c20_trans_hdmi = {
+	.entries = _mtl_c20_trans_hdmi,
+	.num_entries = ARRAY_SIZE(_mtl_c20_trans_hdmi),
+	.hdmi_default_entry = 0,
+};
+
+/* DP2.0 */
+static const union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] = {
+	{ .snps = { 48, 0, 0 } },       /* preset 0 */
+	{ .snps = { 43, 0, 5 } },       /* preset 1 */
+	{ .snps = { 40, 0, 8 } },       /* preset 2 */
+	{ .snps = { 37, 0, 11 } },      /* preset 3 */
+	{ .snps = { 33, 0, 15 } },      /* preset 4 */
+	{ .snps = { 46, 2, 0 } },       /* preset 5 */
+	{ .snps = { 42, 2, 4 } },       /* preset 6 */
+	{ .snps = { 38, 2, 8 } },       /* preset 7 */
+	{ .snps = { 35, 2, 11 } },      /* preset 8 */
+	{ .snps = { 33, 2, 13 } },      /* preset 9 */
+	{ .snps = { 44, 4, 0 } },       /* preset 10 */
+	{ .snps = { 40, 4, 4 } },       /* preset 11 */
+	{ .snps = { 37, 4, 7 } },       /* preset 12 */
+	{ .snps = { 33, 4, 11 } },      /* preset 13 */
+	{ .snps = { 40, 8, 0 } },	/* preset 14 */
+	{ .snps = { 28, 2, 2 } },	/* preset 15 */
+};
+
+static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr = {
+	.entries = _mtl_c20_trans_uhbr,
+	.num_entries = ARRAY_SIZE(_mtl_c20_trans_uhbr),
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
 {
 	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
@@ -1606,12 +1671,30 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
 }
 
+static const struct intel_ddi_buf_trans *
+mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
+		      const struct intel_crtc_state *crtc_state,
+		      int *n_entries)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	if (intel_crtc_has_dp_encoder(crtc_state) && crtc_state->port_clock > 1000000)
+		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
+	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) && !(intel_is_c10phy(i915, phy)))
+		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
+	else
+		return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
+}
+
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
-	if (IS_DG2(i915)) {
+	if (DISPLAY_VER(i915) >= 14) {
+		encoder->get_buf_trans = mtl_get_cx0_buf_trans;
+	} else if (IS_DG2(i915)) {
 		encoder->get_buf_trans = dg2_get_snps_buf_trans;
 	} else if (IS_ALDERLAKE_P(i915)) {
 		if (intel_phy_is_combo(i915, phy))
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 2133984a572b..e4a857b9829d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -51,6 +51,11 @@ struct dg2_snps_phy_buf_trans {
 	u8 post_cursor;
 };
 
+struct direct_phy_buf_trans {
+	u8 level;
+	u8 preemph;
+};
+
 union intel_ddi_buf_trans_entry {
 	struct hsw_ddi_buf_trans hsw;
 	struct bxt_ddi_buf_trans bxt;
@@ -58,6 +63,7 @@ union intel_ddi_buf_trans_entry {
 	struct icl_mg_phy_ddi_buf_trans mg;
 	struct tgl_dkl_phy_ddi_buf_trans dkl;
 	struct dg2_snps_phy_buf_trans snps;
+	struct direct_phy_buf_trans direct;
 };
 
 struct intel_ddi_buf_trans {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8a6884571843..34828a46e3ed 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -959,6 +959,9 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 		num_encoders++;
 	}
 
+	if (!encoder)
+		return NULL;
+
 	drm_WARN(encoder->base.dev, num_encoders != 1,
 		 "%d encoders for pipe %c\n",
 		 num_encoders, pipe_name(master_crtc->pipe));
@@ -1974,7 +1977,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 	if (IS_DG2(dev_priv))
 		/* DG2's "TC1" output uses a SNPS PHY */
 		return false;
-	else if (IS_ALDERLAKE_P(dev_priv))
+	else if (IS_ALDERLAKE_P(dev_priv) || IS_METEORLAKE(dev_priv))
 		return phy >= PHY_F && phy <= PHY_I;
 	else if (IS_TIGERLAKE(dev_priv))
 		return phy >= PHY_D && phy <= PHY_I;
@@ -6826,6 +6829,10 @@ int intel_atomic_check(struct drm_device *dev,
 		ret = intel_modeset_calc_cdclk(state);
 		if (ret)
 			return ret;
+
+		ret = intel_pmdemand_atomic_check(state);
+		if (ret)
+			goto fail;
 	}
 
 	ret = intel_atomic_check_crtcs(state);
@@ -7442,6 +7449,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	intel_sagv_pre_plane_update(state);
+	intel_pmdemand_pre_plane_update(state);
 
 	/* Complete the events for pipes that have now been disabled */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
@@ -7554,6 +7562,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_verify_planes(state);
 
 	intel_sagv_post_plane_update(state);
+	intel_pmdemand_post_plane_update(state);
 
 	drm_atomic_helper_commit_hw_done(&state->base);
 
@@ -7833,7 +7842,14 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (IS_DG2(dev_priv)) {
+	if (IS_METEORLAKE(dev_priv)) {
+		intel_ddi_init(dev_priv, PORT_A);
+		intel_ddi_init(dev_priv, PORT_B);
+		intel_ddi_init(dev_priv, PORT_TC1);
+		intel_ddi_init(dev_priv, PORT_TC2);
+		intel_ddi_init(dev_priv, PORT_TC3);
+		intel_ddi_init(dev_priv, PORT_TC4);
+	} else if (IS_DG2(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_C);
@@ -8281,6 +8297,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 	intel_color_init_hooks(dev_priv);
 	intel_init_cdclk_hooks(dev_priv);
 	intel_audio_hooks_init(dev_priv);
+	intel_init_pmdemand(dev_priv);
 
 	intel_dpll_init_clock_hook(dev_priv);
 
@@ -8507,6 +8524,10 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
+	ret = intel_pmdemand_init(i915);
+	if (ret)
+		goto cleanup_vga_client_pw_domain_dmc;
+
 	init_llist_head(&i915->display.atomic_helper.free_list);
 	INIT_WORK(&i915->display.atomic_helper.free_work,
 		  intel_atomic_helper_free_state_worker);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index f86060195987..867b01c96e4d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -19,6 +19,7 @@
 #include "intel_mchbar_regs.h"
 #include "intel_pch_refclk.h"
 #include "intel_pcode.h"
+#include "intel_pm.h"
 #include "intel_snps_phy.h"
 #include "skl_watermark.h"
 #include "vlv_sideband.h"
@@ -1082,6 +1083,9 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 	dev_priv->display.dbuf.enabled_slices =
 		intel_enabled_dbuf_slices_mask(dev_priv);
 
+	intel_program_dbuf_pmdemand(dev_priv, BIT(DBUF_S1) |
+				    dev_priv->display.dbuf.enabled_slices);
+
 	/*
 	 * Just power up at least 1 slice, we will
 	 * figure out later which slices we have and what we need.
@@ -1093,6 +1097,8 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
 {
 	gen9_dbuf_slices_update(dev_priv, 0);
+
+	intel_program_dbuf_pmdemand(dev_priv, 0);
 }
 
 static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
@@ -1614,7 +1620,8 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 		return;
 
 	/* 2. Initialize all combo phys */
-	intel_combo_phy_init(dev_priv);
+	if (DISPLAY_VER(dev_priv) < 14)
+		intel_combo_phy_init(dev_priv);
 
 	/*
 	 * 3. Enable Power Well 1 (PG1).
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 6645eb1911d8..5ec2b9a109ae 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1427,6 +1427,7 @@ I915_DECL_PW_DOMAINS(xelpdp_pwdoms_dc_off,
 	XELPDP_PW_2_POWER_DOMAINS,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_DC_OFF,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 1676df1dc066..a4c8cb75c0a0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -970,7 +970,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		bxt_verify_ddi_phy_power_wells(dev_priv);
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11 && DISPLAY_VER(dev_priv) < 14)
 		/*
 		 * DMC retains HW context only for port A, the other combo
 		 * PHY's HW context for port B is lost after DC transitions,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c32bfba06ca1..6c1981d73c9c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -980,6 +980,28 @@ struct intel_link_m_n {
 	u32 link_n;
 };
 
+struct intel_c10mpllb_state {
+	u32 clock; /* in KHz */
+	u8 pll[20];
+};
+
+struct intel_c20pll_state {
+	u32 clock; /* in kHz */
+	u16 tx[3];
+	u16 cmn[4];
+	union {
+		u16 mplla[10];
+		u16 mpllb[11];
+	};
+};
+
+struct intel_cx0pll_state {
+	union {
+		struct intel_c10mpllb_state c10mpllb_state;
+		struct intel_c20pll_state c20pll_state;
+	};
+};
+
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.
@@ -1123,6 +1145,7 @@ struct intel_crtc_state {
 	union {
 		struct intel_dpll_hw_state dpll_hw_state;
 		struct intel_mpllb_state mpllb_state;
+		struct intel_cx0pll_state cx0pll_state;
 	};
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index da1c00ee92fb..c77d06bde68f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -53,6 +53,7 @@
 #include "intel_combo_phy_regs.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
+#include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
@@ -420,6 +421,18 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
 	return 810000;
 }
 
+static int mtl_max_source_rate(struct intel_dp *intel_dp)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
+
+	if (intel_is_c10phy(i915, phy))
+		return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
+
+	return 2000000;
+}
+
 static int vbt_max_link_rate(struct intel_dp *intel_dp)
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
@@ -444,6 +457,10 @@ static void
 intel_dp_set_source_rates(struct intel_dp *intel_dp)
 {
 	/* The values must be in increasing order */
+	static const int mtl_rates[] = {
+		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
+		810000,	1000000, 1350000, 2000000,
+	};
 	static const int icl_rates[] = {
 		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
 		1000000, 1350000,
@@ -469,7 +486,11 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_dp->source_rates || intel_dp->num_source_rates);
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		source_rates = mtl_rates;
+		size = ARRAY_SIZE(mtl_rates);
+		max_rate = mtl_max_source_rate(intel_dp);
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		source_rates = icl_rates;
 		size = ARRAY_SIZE(icl_rates);
 		if (IS_DG2(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 4e9c18be7e1f..cd3da053055d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -8,6 +8,7 @@
 
 #include "i915_reg.h"
 #include "intel_crtc.h"
+#include "intel_cx0_phy.h"
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
@@ -995,6 +996,17 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_encoder *encoder =
+		intel_get_crtc_new_encoder(state, crtc_state);
+
+	return intel_cx0mpllb_calc_state(crtc_state, encoder);
+}
+
 static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
 {
 	return dpll->m < factor * dpll->n;
@@ -1423,6 +1435,10 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
+static const struct intel_dpll_funcs mtl_dpll_funcs = {
+	.crtc_compute_clock = mtl_crtc_compute_clock,
+};
+
 static const struct intel_dpll_funcs dg2_dpll_funcs = {
 	.crtc_compute_clock = dg2_crtc_compute_clock,
 };
@@ -1517,7 +1533,11 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
-	if (IS_DG2(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 14)
+		dev_priv->display.funcs.dpll = &mtl_dpll_funcs;
+	else if (DISPLAY_VER(dev_priv) >= 14)
+		dev_priv->display.funcs.dpll = &mtl_dpll_funcs;
+	else if (IS_DG2(dev_priv))
 		dev_priv->display.funcs.dpll = &dg2_dpll_funcs;
 	else if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
 		dev_priv->display.funcs.dpll = &hsw_dpll_funcs;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 22fc908b7e5d..ed372d227aa7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4104,7 +4104,7 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 
 	mutex_init(&dev_priv->display.dpll.lock);
 
-	if (IS_DG2(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 14 || IS_DG2(dev_priv))
 		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
 		dpll_mgr = NULL;
 	else if (IS_ALDERLAKE_P(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index c7e9e1fbed37..43d06d22bd48 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -46,6 +46,7 @@
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
+#include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
@@ -58,7 +59,7 @@
 #include "intel_panel.h"
 #include "intel_snps_phy.h"
 
-static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
+inline struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
 {
 	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
 }
@@ -1865,7 +1866,9 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 	 * FIXME: We will hopefully get an algorithmic way of programming
 	 * the MPLLB for HDMI in the future.
 	 */
-	if (IS_DG2(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 14)
+		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
+	else if (IS_DG2(dev_priv))
 		return intel_snps_phy_check_hdmi_link_rate(clock);
 
 	return MODE_OK;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 774dda2376ed..492bd3921385 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -54,5 +54,6 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
 				  int src_max_slices, int src_max_slice_width,
 				  int hdmi_max_slices, int hdmi_throughput);
 int intel_hdmi_dsc_get_slice_height(int vactive);
+struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi);
 
 #endif /* __INTEL_HDMI_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 842d70f0dfd2..ec504470c2f0 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -11,6 +11,7 @@
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
+#include "intel_cx0_phy.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
@@ -236,6 +237,7 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 	verify_crtc_state(crtc, old_crtc_state, new_crtc_state);
 	intel_shared_dpll_state_verify(crtc, old_crtc_state, new_crtc_state);
 	intel_mpllb_state_verify(state, new_crtc_state);
+	intel_c10mpllb_state_verify(state, new_crtc_state);
 }
 
 void intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index f45328712bff..694d74088980 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_cx0_phy_regs.h"
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_power_map.h"
@@ -14,6 +15,10 @@
 #include "intel_mg_phy_regs.h"
 #include "intel_tc.h"
 
+#define DP_PIN_ASSIGNMENT_C	0x3
+#define DP_PIN_ASSIGNMENT_D	0x4
+#define DP_PIN_ASSIGNMENT_E	0x5
+
 static const char *tc_port_mode_name(enum tc_port_mode mode)
 {
 	static const char * const names[] = {
@@ -146,6 +151,29 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
 	       DP_PIN_ASSIGNMENT_SHIFT(dig_port->tc_phy_fia_idx);
 }
 
+static int mtl_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	intel_wakeref_t wakeref;
+	u32 pin_mask;
+
+	assert_tc_cold_blocked(dig_port);
+
+	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
+		pin_mask = intel_tc_port_get_pin_assignment_mask(dig_port);
+
+	switch(pin_mask) {
+	default:
+		MISSING_CASE(pin_mask);
+		fallthrough;
+	case DP_PIN_ASSIGNMENT_D:
+		return 2;
+	case DP_PIN_ASSIGNMENT_C:
+	case DP_PIN_ASSIGNMENT_E:
+		return 4;
+	}
+}
+
 int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
@@ -155,6 +183,9 @@ int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
 	if (dig_port->tc_mode != TC_PORT_DP_ALT)
 		return 4;
 
+	if (DISPLAY_VER(i915) >= 14)
+		return mtl_tc_port_get_pin_assignment_mask(dig_port);
+
 	assert_tc_cold_blocked(dig_port);
 
 	lane_mask = 0;
@@ -296,11 +327,41 @@ static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 	return mask;
 }
 
+static u32 xelpdp_tc_port_live_status_mask(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
+	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
+	struct intel_uncore *uncore = &i915->uncore;
+	u32 val, mask = 0;
+	enum hpd_pin pin;
+
+	val = intel_uncore_read(uncore, PICAINTERRUPT_ISR);
+	pin = HPD_PORT_TC1 + tc_port - TC_PORT_1;
+	if (val & XELPDP_DP_ALT_HOTPLUG(pin))
+		mask |= BIT(TC_PORT_DP_ALT);
+	if (val & XELPDP_TBT_HOTPLUG(pin))
+		mask |= BIT(TC_PORT_TBT_ALT);
+
+	if (dig_port->tc_legacy_port &&
+	    intel_uncore_read(uncore, SDEISR) & isr_bit)
+		mask |= BIT(TC_PORT_LEGACY);
+
+	/* The sink can be connected only in a single mode. */
+	if (!drm_WARN_ON(&i915->drm, hweight32(mask) > 1))
+		tc_port_fixup_legacy_flag(dig_port, mask);
+
+	return mask;
+}
+
 static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	if (IS_ALDERLAKE_P(i915))
+	if (DISPLAY_VER(i915) >= 14)
+		return xelpdp_tc_port_live_status_mask(dig_port);
+
+	if (DISPLAY_VER(i915) >= 13)
 		return adl_tc_port_live_status_mask(dig_port);
 
 	return icl_tc_port_live_status_mask(dig_port);
@@ -354,11 +415,69 @@ static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
 	return val & TCSS_DDI_STATUS_READY;
 }
 
+static bool xelpdp_wait_phy_status_complete(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
+
+	if (intel_de_wait_for_register(i915,
+				       TCSS_DDI_STATUS(tc_port),
+				       TCSS_DDI_STATUS_READY,
+				       TCSS_DDI_STATUS_READY,
+				       1)) {
+		drm_dbg_kms(&i915->drm,
+			    "Port %s: PHY in TCCOLD, assuming not complete\n",
+			    dig_port->tc_port_name);
+		return false;
+	}
+
+	return true;
+}
+
+static bool xelpdp_wait_for_tcss_power(struct intel_digital_port *dig_port,
+				       bool enabled)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
+	if (intel_de_wait_for_register(i915,
+				       XELPDP_PORT_BUF_CTL1(dig_port->base.port),
+				       XELPDP_TCSS_POWER_STATE,
+				       enabled ? XELPDP_TCSS_POWER_STATE : 0,
+				       5)) {
+		drm_dbg_kms(&i915->drm,
+			    "Port %s: TCSS power state not as expected\n",
+			    dig_port->tc_port_name);
+		return false;
+	}
+
+	return true;
+}
+
+static bool xelpdp_tc_power_request(struct intel_digital_port *dig_port, bool request)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_uncore *uncore = &i915->uncore;
+	enum port port = dig_port->base.port;
+	u32 val;
+
+	val = intel_uncore_read(uncore, XELPDP_PORT_BUF_CTL1(port));
+	if (request)
+		val |= XELPDP_TCSS_POWER_REQUEST;
+	else
+		val &= ~XELPDP_TCSS_POWER_REQUEST;
+	intel_uncore_write(uncore, XELPDP_PORT_BUF_CTL1(port), val);
+
+	return xelpdp_wait_phy_status_complete(dig_port) &&
+	       xelpdp_wait_for_tcss_power(dig_port, request);
+}
+
 static bool tc_phy_status_complete(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	if (IS_ALDERLAKE_P(i915))
+	if (DISPLAY_VER(i915) >= 14)
+		return xelpdp_wait_phy_status_complete(dig_port);
+	else if (IS_ALDERLAKE_P(i915))
 		return adl_tc_phy_status_complete(dig_port);
 
 	return icl_tc_phy_status_complete(dig_port);
@@ -400,11 +519,31 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 	return true;
 }
 
+static bool xelpdp_tc_phy_take_ownership(struct intel_digital_port *dig_port,
+					 bool take)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_uncore *uncore = &i915->uncore;
+	enum port port = dig_port->base.port;
+	u32 val;
+
+	val = intel_uncore_read(uncore, XELPDP_PORT_BUF_CTL1(port));
+	if (take)
+		val |= XELPDP_TC_PHY_OWNERSHIP;
+	else
+		val &= ~XELPDP_TC_PHY_OWNERSHIP;
+	intel_uncore_write(uncore, XELPDP_PORT_BUF_CTL1(port), val);
+
+	return true;
+}
+
 static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	if (IS_ALDERLAKE_P(i915))
+	if (DISPLAY_VER(i915) >= 14)
+		return xelpdp_tc_phy_take_ownership(dig_port, take);
+	else if (IS_ALDERLAKE_P(i915))
 		return adl_tc_phy_take_ownership(dig_port, take);
 
 	return icl_tc_phy_take_ownership(dig_port, take);
@@ -436,11 +575,23 @@ static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
 	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 }
 
+static bool xelpdp_tc_phy_is_owned(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_uncore *uncore = &i915->uncore;
+	enum port port = dig_port->base.port;
+
+	return intel_uncore_read(uncore, XELPDP_PORT_BUF_CTL1(port)) &
+	       XELPDP_TC_PHY_OWNERSHIP;
+}
+
 static bool tc_phy_is_owned(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	if (IS_ALDERLAKE_P(i915))
+	if (DISPLAY_VER(i915) >= 14)
+		return xelpdp_tc_phy_is_owned(dig_port);
+	else if (IS_ALDERLAKE_P(i915))
 		return adl_tc_phy_is_owned(dig_port);
 
 	return icl_tc_phy_is_owned(dig_port);
@@ -464,6 +615,11 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 	u32 live_status_mask;
 	int max_lanes;
 
+	if (DISPLAY_VER(i915) >= 14) {
+		if (!xelpdp_tc_power_request(dig_port, true))
+			goto out_release_phy;
+	}
+
 	if (!tc_phy_status_complete(dig_port)) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
 			    dig_port->tc_port_name);
@@ -514,6 +670,10 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 
 out_release_phy:
 	tc_phy_take_ownership(dig_port, false);
+
+	if (DISPLAY_VER(i915) >= 14)
+		xelpdp_tc_power_request(dig_port, false);
+
 out_set_tbt_alt_mode:
 	dig_port->tc_mode = TC_PORT_TBT_ALT;
 }
@@ -524,6 +684,8 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
  */
 static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
 	switch (dig_port->tc_mode) {
 	case TC_PORT_LEGACY:
 	case TC_PORT_DP_ALT:
@@ -537,6 +699,9 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
 	default:
 		MISSING_CASE(dig_port->tc_mode);
 	}
+
+	if (DISPLAY_VER(i915) >= 14)
+		xelpdp_tc_power_request(dig_port, false);
 }
 
 static bool icl_tc_phy_is_connected(struct intel_digital_port *dig_port)
@@ -886,6 +1051,10 @@ tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig
 	if (!INTEL_INFO(i915)->display.has_modular_fia)
 		return false;
 
+	/* for MTL, FIA is always modular */
+	if (DISPLAY_VER(i915) >= 14)
+		return true;
+
 	mutex_lock(&dig_port->tc_lock);
 	wakeref = tc_cold_block(dig_port, &domain);
 	val = intel_de_read(i915, PORT_TX_DFLEXDPSP(FIA1));
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6254aa977398..df3b6742d980 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -250,6 +250,12 @@ struct drm_i915_private {
 	unsigned int hpll_freq;
 	unsigned int czclk_freq;
 
+	struct {
+		wait_queue_head_t waitqueue;
+		struct mutex lock;
+		struct intel_global_obj obj;
+	} pmdemand;
+
 	/**
 	 * wq - Driver workqueue for GEM.
 	 *
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 31271c30a8cf..7eef4a5bab46 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -160,6 +160,13 @@ static const u32 hpd_gen11[HPD_NUM_PINS] = {
 	[HPD_PORT_TC6] = GEN11_TC_HOTPLUG(HPD_PORT_TC6) | GEN11_TBT_HOTPLUG(HPD_PORT_TC6),
 };
 
+static const u32 hpd_xelpdp[HPD_NUM_PINS] = {
+	[HPD_PORT_TC1] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC1) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC1),
+	[HPD_PORT_TC2] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC2) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC2),
+	[HPD_PORT_TC3] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC3) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC3),
+	[HPD_PORT_TC4] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC4) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC4),
+};
+
 static const u32 hpd_icp[HPD_NUM_PINS] = {
 	[HPD_PORT_A] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_A),
 	[HPD_PORT_B] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
@@ -180,6 +187,16 @@ static const u32 hpd_sde_dg1[HPD_NUM_PINS] = {
 	[HPD_PORT_TC1] = SDE_TC_HOTPLUG_DG2(HPD_PORT_TC1),
 };
 
+static const u32 hpd_mtp[HPD_NUM_PINS] = {
+	[HPD_PORT_A] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_A),
+	[HPD_PORT_B] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
+	[HPD_PORT_TC1] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1),
+	[HPD_PORT_TC2] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC2),
+	[HPD_PORT_TC3] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3),
+	[HPD_PORT_TC4] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4),
+};
+
+
 static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 {
 	struct intel_hotplug *hpd = &dev_priv->display.hotplug;
@@ -193,7 +210,9 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 14)
+		hpd->hpd = hpd_xelpdp;
+	else if (DISPLAY_VER(dev_priv) >= 11)
 		hpd->hpd = hpd_gen11;
 	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		hpd->hpd = hpd_bxt;
@@ -212,6 +231,8 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
 		hpd->pch_hpd = hpd_sde_dg1;
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
+		hpd->pch_hpd = hpd_mtp;
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		hpd->pch_hpd = hpd_icp;
 	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
@@ -1557,6 +1578,44 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		cpt_serr_int_handler(dev_priv);
 }
 
+static void xelpdp_pica_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
+{
+	enum hpd_pin pin;
+	u32 hotplug_trigger = iir & (XELPDP_DP_ALT_HOTPLUG_MASK | XELPDP_TBT_HOTPLUG_MASK);
+	u32 trigger_aux = iir & XELPDP_AUX_TC_MASK;
+	u32 pin_mask = 0, long_mask = 0;
+
+	for (pin = HPD_PORT_TC1; pin <= HPD_PORT_TC4; pin++) {
+		u32 val;
+
+		if (!(dev_priv->display.hotplug.hpd[pin] & hotplug_trigger))
+			continue;
+
+		pin_mask |= BIT(pin);
+
+		val = intel_uncore_read(&dev_priv->uncore, XELPDP_PORT_HOTPLUG_CTL(pin));
+		intel_uncore_write(&dev_priv->uncore, XELPDP_PORT_HOTPLUG_CTL(pin), val);
+
+		if (val & (XELPDP_DP_ALT_HPD_LONG_DETECT | XELPDP_TBT_HPD_LONG_DETECT))
+			long_mask |= BIT(pin);
+	}
+
+	if (pin_mask) {
+		drm_dbg(&dev_priv->drm,
+			"pica hotplug event received, stat 0x%08x, pins 0x%08x, long 0x%08x\n",
+			hotplug_trigger, pin_mask, long_mask);
+
+		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+	}
+
+	if (trigger_aux)
+		dp_aux_irq_handler(dev_priv);
+
+	if (!pin_mask && !trigger_aux)
+		drm_err(&dev_priv->drm,
+			"Unexpected DE HPD/AUX interrupt 0x%08x\n", iir);
+}
+
 static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 {
 	u32 ddi_hotplug_trigger = pch_iir & SDE_DDI_HOTPLUG_MASK_ICP;
@@ -1864,7 +1923,10 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 {
 	u32 mask;
 
-	if (DISPLAY_VER(dev_priv) >= 13)
+	if (DISPLAY_VER(dev_priv) >= 14)
+		return TGL_DE_PORT_AUX_DDIA |
+			TGL_DE_PORT_AUX_DDIB;
+	else if (DISPLAY_VER(dev_priv) >= 13)
 		return TGL_DE_PORT_AUX_DDIA |
 			TGL_DE_PORT_AUX_DDIB |
 			TGL_DE_PORT_AUX_DDIC |
@@ -1912,6 +1974,11 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 		return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
 }
 
+static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
+{
+	wake_up_all(&dev_priv->pmdemand.waitqueue);
+}
+
 static void
 gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 {
@@ -1948,6 +2015,18 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 		}
 	}
 
+	if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR) {
+		drm_dbg(&dev_priv->drm,
+			"Error waiting for Punit PM Demand Response\n");
+		intel_pmdemand_irq_handler(dev_priv);
+		found = true;
+	}
+
+	if (iir & XELPDP_PMDEMAND_RSP) {
+		intel_pmdemand_irq_handler(dev_priv);
+		found = true;
+	}
+
 	if (!found)
 		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n");
 }
@@ -2027,6 +2106,34 @@ u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
 	return mask;
 }
 
+static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
+{
+	u32 pica_ier = 0;
+
+	*pica_iir = 0;
+	*pch_iir = intel_de_read(i915, SDEIIR);
+	if (!*pch_iir)
+		return;
+
+	/**
+	 * PICA IER must be disabled/re-enabled around clearing PICA IIR and
+	 * SDEIIR, to avoid losing PICA IRQs and to ensure that such IRQs set
+	 * their flags both in the PICA and SDE IIR.
+	 */
+	if (*pch_iir & SDE_PICAINTERRUPT) {
+		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTP);
+
+		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
+		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
+		intel_de_write(i915, PICAINTERRUPT_IIR, *pica_iir);
+	}
+
+	intel_de_write(i915, SDEIIR, *pch_iir);
+
+	if (pica_ier)
+		intel_de_write(i915, PICAINTERRUPT_IER, pica_ier);
+}
+
 static irqreturn_t
 gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 {
@@ -2151,16 +2258,20 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_PCH_NOP(dev_priv) &&
 	    master_ctl & GEN8_DE_PCH_IRQ) {
+		u32 pica_iir;
+
 		/*
 		 * FIXME(BDW): Assume for now that the new interrupt handling
 		 * scheme also closed the SDE interrupt handling race we've seen
 		 * on older pch-split platforms. But this needs testing.
 		 */
-		iir = intel_uncore_read(&dev_priv->uncore, SDEIIR);
+		gen8_read_and_ack_pch_irqs(dev_priv, &iir, &pica_iir);
 		if (iir) {
-			intel_uncore_write(&dev_priv->uncore, SDEIIR, iir);
 			ret = IRQ_HANDLED;
 
+			if (pica_iir)
+				xelpdp_pica_irq_handler(dev_priv, pica_iir);
+
 			if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 				icp_irq_handler(dev_priv, iir);
 			else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
@@ -2738,7 +2849,11 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 
 	GEN3_IRQ_RESET(uncore, GEN8_DE_PORT_);
 	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
-	GEN3_IRQ_RESET(uncore, GEN11_DE_HPD_);
+
+	if (DISPLAY_VER(dev_priv) >= 14)
+		GEN3_IRQ_RESET(uncore, PICAINTERRUPT_);
+	else
+		GEN3_IRQ_RESET(uncore, GEN11_DE_HPD_);
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		GEN3_IRQ_RESET(uncore, SDE);
@@ -3029,6 +3144,127 @@ static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
 		icp_hpd_irq_setup(dev_priv);
 }
 
+static u32 mtp_ddi_hotplug_enables(struct intel_encoder *encoder)
+{
+	switch (encoder->hpd_pin) {
+	case HPD_PORT_A:
+	case HPD_PORT_B:
+		return SHOTPLUG_CTL_DDI_HPD_ENABLE(encoder->hpd_pin);
+	default:
+		return 0;
+	}
+}
+
+static u32 mtp_tc_hotplug_enables(struct intel_encoder *encoder)
+{
+	switch (encoder->hpd_pin) {
+	case HPD_PORT_TC1:
+	case HPD_PORT_TC2:
+	case HPD_PORT_TC3:
+	case HPD_PORT_TC4:
+		return ICP_TC_HPD_ENABLE(encoder->hpd_pin);
+	default:
+		return 0;
+	}
+}
+
+static void mtp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
+{
+	u32 hotplug;
+
+	hotplug = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_DDI);
+	hotplug &= ~(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A) |
+		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B));
+	hotplug |= intel_hpd_hotplug_enables(dev_priv, mtp_ddi_hotplug_enables);
+	intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_DDI, hotplug);
+}
+
+static void mtp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
+{
+	u32 hotplug;
+
+	hotplug = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_TC);
+	hotplug &= ~(ICP_TC_HPD_ENABLE(HPD_PORT_TC1) |
+		     ICP_TC_HPD_ENABLE(HPD_PORT_TC2) |
+		     ICP_TC_HPD_ENABLE(HPD_PORT_TC3) |
+		     ICP_TC_HPD_ENABLE(HPD_PORT_TC4));
+	hotplug |= intel_hpd_hotplug_enables(dev_priv, mtp_tc_hotplug_enables);
+	intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_TC, hotplug);
+}
+
+static void mtp_hpd_invert(struct drm_i915_private *i915)
+{
+	u32 val = (INVERT_DDIA_HPD |
+		   INVERT_DDIB_HPD |
+		   INVERT_DDIC_HPD |
+		   INVERT_TC1_HPD |
+		   INVERT_TC2_HPD |
+		   INVERT_TC3_HPD |
+		   INVERT_TC4_HPD |
+		   INVERT_DDID_HPD_MTP |
+		   INVERT_DDIE_HPD);
+	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1, 0, val);
+}
+
+static void mtp_hpd_irq_setup(struct drm_i915_private *dev_priv)
+{
+	u32 hotplug_irqs, enabled_irqs;
+
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+
+	intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
+
+	mtp_hpd_invert(dev_priv);
+	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
+
+	mtp_ddi_hpd_detection_setup(dev_priv);
+	mtp_tc_hpd_detection_setup(dev_priv);
+}
+
+static void xelpdp_pica_hpd_detection_setup(struct drm_i915_private *dev_priv)
+{
+	struct intel_encoder *encoder;
+	enum hpd_pin pin;
+	u32 available_pins = 0;
+
+	BUILD_BUG_ON(BITS_PER_TYPE(available_pins) < HPD_NUM_PINS);
+
+	for_each_intel_encoder(&dev_priv->drm, encoder)
+		available_pins |= BIT(encoder->hpd_pin);
+
+	for (pin = HPD_PORT_TC1; pin <= HPD_PORT_TC4; pin++) {
+		u32 mask = (available_pins & BIT(pin)) ? ~(u32)0 : 0;
+		u32 val = XELPDP_TBT_HOTPLUG_ENABLE |
+			  XELPDP_DP_ALT_HOTPLUG_ENABLE;
+
+		intel_uncore_rmw(&dev_priv->uncore,
+				 XELPDP_PORT_HOTPLUG_CTL(pin),
+				 ~mask & val, mask & val);
+	}
+}
+
+static void xelpdp_hpd_irq_setup(struct drm_i915_private *dev_priv)
+{
+	u32 hotplug_irqs, enabled_irqs;
+	u32 val;
+
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+
+	val = intel_uncore_read(&dev_priv->uncore, PICAINTERRUPT_IMR);
+	val &= ~hotplug_irqs;
+	val |= ~enabled_irqs & hotplug_irqs;
+	intel_uncore_write(&dev_priv->uncore, PICAINTERRUPT_IMR, val);
+	intel_uncore_posting_read(&dev_priv->uncore, PICAINTERRUPT_IMR);
+
+	xelpdp_pica_hpd_detection_setup(dev_priv);
+
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP) {
+		mtp_hpd_irq_setup(dev_priv);
+	}
+}
+
 static u32 spt_hotplug_enables(struct intel_encoder *encoder)
 {
 	switch (encoder->hpd_pin) {
@@ -3314,7 +3550,10 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		de_port_masked |= BXT_DE_PORT_GMBUS;
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 14)
+		de_misc_masked |= XELPDP_PMDEMAND_RSPTOUT_ERR |
+				  XELPDP_PMDEMAND_RSP;
+	else if (DISPLAY_VER(dev_priv) >= 11) {
 		enum port port;
 
 		if (intel_bios_is_dsi_present(dev_priv, &port))
@@ -3361,7 +3600,7 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	GEN3_IRQ_INIT(uncore, GEN8_DE_PORT_, ~de_port_masked, de_port_enables);
 	GEN3_IRQ_INIT(uncore, GEN8_DE_MISC_, ~de_misc_masked, de_misc_masked);
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
 		u32 de_hpd_masked = 0;
 		u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
 				     GEN11_DE_TBT_HOTPLUG_MASK;
@@ -3371,6 +3610,20 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	}
 }
 
+static void mtp_irq_postinstall(struct drm_i915_private *dev_priv)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+	u32 sde_mask = SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
+	u32 de_hpd_mask = XELPDP_AUX_TC_MASK;
+	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
+			     XELPDP_TBT_HOTPLUG_MASK;
+
+	GEN3_IRQ_INIT(uncore, PICAINTERRUPT_, ~de_hpd_mask,
+		      de_hpd_enables);
+
+	GEN3_IRQ_INIT(uncore, SDE, ~sde_mask, 0xffffffff);
+}
+
 static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
@@ -3432,7 +3685,11 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
 
 	if (HAS_DISPLAY(dev_priv)) {
-		icp_irq_postinstall(dev_priv);
+		if (DISPLAY_VER(dev_priv) >= 14)
+			mtp_irq_postinstall(dev_priv);
+		else
+			icp_irq_postinstall(dev_priv);
+
 		gen8_de_irq_postinstall(dev_priv);
 		intel_uncore_write(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL,
 				   GEN11_DISPLAY_IRQ_ENABLE);
@@ -3918,6 +4175,7 @@ static const struct intel_hotplug_funcs platform##_hpd_funcs = { \
 }
 
 HPD_FUNCS(i915);
+HPD_FUNCS(xelpdp);
 HPD_FUNCS(dg1);
 HPD_FUNCS(gen11);
 HPD_FUNCS(bxt);
@@ -3978,6 +4236,8 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 			dev_priv->display.funcs.hotplug = &icp_hpd_funcs;
 		else if (HAS_PCH_DG1(dev_priv))
 			dev_priv->display.funcs.hotplug = &dg1_hpd_funcs;
+		else if (DISPLAY_VER(dev_priv) >= 14)
+			dev_priv->display.funcs.hotplug = &xelpdp_hpd_funcs;
 		else if (DISPLAY_VER(dev_priv) >= 11)
 			dev_priv->display.funcs.hotplug = &gen11_hpd_funcs;
 		else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d22ffd7a32dc..563360b2412b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2101,6 +2101,11 @@
 #define   TRANS_PUSH_EN			REG_BIT(31)
 #define   TRANS_PUSH_SEND		REG_BIT(30)
 
+/* DDI Buffer Control */
+#define _DDI_CLK_VALFREQ_A		0x64030
+#define _DDI_CLK_VALFREQ_B		0x64130
+#define DDI_CLK_VALFREQ(port)		_MMIO_PORT(port, _DDI_CLK_VALFREQ_A, _DDI_CLK_VALFREQ_B)
+
 /*
  * HSW+ eDP PSR registers
  *
@@ -5393,8 +5398,10 @@
 #define GEN8_DE_MISC_IMR _MMIO(0x44464)
 #define GEN8_DE_MISC_IIR _MMIO(0x44468)
 #define GEN8_DE_MISC_IER _MMIO(0x4446c)
-#define  GEN8_DE_MISC_GSE		(1 << 27)
-#define  GEN8_DE_EDP_PSR		(1 << 19)
+#define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
+#define  GEN8_DE_MISC_GSE		REG_BIT(27)
+#define  GEN8_DE_EDP_PSR		REG_BIT(19)
+#define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
 
 #define GEN8_PCU_ISR _MMIO(0x444e0)
 #define GEN8_PCU_IMR _MMIO(0x444e4)
@@ -5457,6 +5464,55 @@
 #define  GEN11_HOTPLUG_CTL_SHORT_DETECT(hpd_pin)	(1 << (_HPD_PIN_TC(hpd_pin) * 4))
 #define  GEN11_HOTPLUG_CTL_NO_DETECT(hpd_pin)		(0 << (_HPD_PIN_TC(hpd_pin) * 4))
 
+#define PICAINTERRUPT_ISR		_MMIO(0x16FE50)
+#define PICAINTERRUPT_IMR		_MMIO(0x16FE54)
+#define PICAINTERRUPT_IIR		_MMIO(0x16FE58)
+#define PICAINTERRUPT_IER		_MMIO(0x16FE5C)
+
+#define  XELPDP_DP_ALT_HOTPLUG(hpd_pin)		REG_BIT(16 + _HPD_PIN_TC(hpd_pin))
+#define  XELPDP_DP_ALT_HOTPLUG_MASK		REG_GENMASK(19, 16)
+
+#define  XELPDP_AUX_TC(hpd_pin)			REG_BIT(8 + _HPD_PIN_TC(hpd_pin))
+#define  XELPDP_AUX_TC_MASK			REG_GENMASK(11, 8)
+
+#define  XELPDP_TBT_HOTPLUG(hpd_pin)		REG_BIT(_HPD_PIN_TC(hpd_pin))
+#define  XELPDP_TBT_HOTPLUG_MASK		REG_GENMASK(3, 0)
+
+#define XELPDP_PORT_HOTPLUG_CTL(hpd_pin)	_MMIO(0x16F270 + (_HPD_PIN_TC(hpd_pin) * 0x200))
+#define  XELPDP_TBT_HOTPLUG_ENABLE		REG_BIT(6)
+#define  XELPDP_TBT_HPD_LONG_DETECT		REG_BIT(5)
+#define  XELPDP_TBT_HPD_SHORT_DETECT		REG_BIT(4)
+#define  XELPDP_DP_ALT_HOTPLUG_ENABLE		REG_BIT(2)
+#define  XELPDP_DP_ALT_HPD_LONG_DETECT		REG_BIT(1)
+#define  XELPDP_DP_ALT_HPD_SHORT_DETECT		REG_BIT(0)
+
+#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)		_MMIO(0x45230 + 4 * (dword))
+#define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK		REG_GENMASK(31, 16)
+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK		REG_GENMASK(14, 12)
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK		REG_GENMASK(11, 8)
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)
+#define  XELPDP_PMDEMAND_PIPES_MASK			REG_GENMASK(7, 6)
+#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)
+#define  XELPDP_PMDEMAND_DBUFS_MASK			REG_GENMASK(5, 4)
+#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)
+#define  XELPDP_PMDEMAND_PHYS_MASK			REG_GENMASK(2, 0)
+#define  XELPDP_PMDEMAND_PHYS(x)				REG_FIELD_PREP(XELPDP_PMDEMAND_PHYS_MASK, x)
+
+#define  XELPDP_PMDEMAND_REQ_ENABLE			REG_BIT(31)
+#define  XELPDP_PMDEMAND_CDCLK_FREQ_MASK		REG_GENMASK(30, 20)
+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)
+#define  XELPDP_PMDEMAND_DDICLK_FREQ_MASK		REG_GENMASK(18, 8)
+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)
+#define  XELPDP_PMDEMAND_SCALERS_MASK			REG_GENMASK(6, 4)
+#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)
+#define  XELPDP_PMDEMAND_PLLS_MASK			REG_GENMASK(2, 0)
+#define  XELPDP_PMDEMAND_PLLS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PLLS_MASK, x)
+
+#define GEN12_DCPR_STATUS_1				_MMIO(0x46440)
+#define  XELPDP_PMDEMAND_INFLIGHT_STATUS		REG_BIT(26)
+
 #define ILK_DISPLAY_CHICKEN2	_MMIO(0x42004)
 /* Required on all Ironlake and Sandybridge according to the B-Spec. */
 #define  ILK_ELPIN_409_SELECT	(1 << 25)
@@ -5766,7 +5822,8 @@
 				 SDE_FDI_RXB_CPT | \
 				 SDE_FDI_RXA_CPT)
 
-/* south display engine interrupt: ICP/TGP */
+/* south display engine interrupt: ICP/TGP/MTP */
+#define SDE_PICAINTERRUPT		REG_BIT(31)
 #define SDE_GMBUS_ICP			(1 << 23)
 #define SDE_TC_HOTPLUG_ICP(hpd_pin)	REG_BIT(24 + _HPD_PIN_TC(hpd_pin))
 #define SDE_TC_HOTPLUG_DG2(hpd_pin)	REG_BIT(25 + _HPD_PIN_TC(hpd_pin)) /* sigh */
@@ -6120,6 +6177,12 @@
 #define SOUTH_CHICKEN1		_MMIO(0xc2000)
 #define  FDIA_PHASE_SYNC_SHIFT_OVR	19
 #define  FDIA_PHASE_SYNC_SHIFT_EN	18
+#define  INVERT_DDIE_HPD			REG_BIT(28)
+#define  INVERT_DDID_HPD_MTP			REG_BIT(27)
+#define  INVERT_TC4_HPD				REG_BIT(26)
+#define  INVERT_TC3_HPD				REG_BIT(25)
+#define  INVERT_TC2_HPD				REG_BIT(24)
+#define  INVERT_TC1_HPD				REG_BIT(23)
 #define  INVERT_DDID_HPD			(1 << 18)
 #define  INVERT_DDIC_HPD			(1 << 17)
 #define  INVERT_DDIB_HPD			(1 << 16)
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index db26de6b57bc..f9d7c03e95d6 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -22,6 +22,19 @@
 	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
 				 ((__n) < 0 || (__n) > 31))))
 
+/**
+ * REG_BIT8() - Prepare a u8 bit value
+ * @__n: 0-based bit number
+ *
+ * Local wrapper for BIT() to force u8, with compile time checks.
+ *
+ * @return: Value with bit @__n set.
+ */
+#define REG_BIT8(__n)                                                   \
+	((u8)(BIT(__n) +                                                \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
+				 ((__n) < 0 || (__n) > 7))))
+
 /**
  * REG_GENMASK() - Prepare a continuous u32 bitmask
  * @__high: 0-based high bit
@@ -52,6 +65,21 @@
 				 __is_constexpr(__low) &&		\
 				 ((__low) < 0 || (__high) > 63 || (__low) > (__high)))))
 
+/**
+ * REG_GENMASK8() - Prepare a continuous u8 bitmask
+ * @__high: 0-based high bit
+ * @__low: 0-based low bit
+ *
+ * Local wrapper for GENMASK() to force u8, with compile time checks.
+ *
+ * @return: Continuous bitmask from @__high to @__low, inclusive.
+ */
+#define REG_GENMASK8(__high, __low)                                     \
+	((u8)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))
+
 /*
  * Local integer constant expression version of is_power_of_2().
  */
@@ -74,6 +102,23 @@
 	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
 	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
 
+/**
+ * REG_FIELD_PREP8() - Prepare a u8 bitfield value
+ * @__mask: shifted mask defining the field's length and position
+ * @__val: value to put in the field
+ *
+ * Local copy of FIELD_PREP8() to generate an integer constant expression, force
+ * u8 and for consistency with REG_FIELD_GET8(), REG_BIT8() and REG_GENMASK8().
+ *
+ * @return: @__val masked and shifted into the field defined by @__mask.
+ */
+#define REG_FIELD_PREP8(__mask, __val)                                          \
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
+
 /**
  * REG_FIELD_GET() - Extract a u32 bitfield value
  * @__mask: shifted mask defining the field's length and position
@@ -155,6 +200,18 @@
  */
 #define _PICK(__index, ...) (((const u32 []){ __VA_ARGS__ })[__index])
 
+/**
+ * REG_FIELD_GET8() - Extract a u8 bitfield value
+ * @__mask: shifted mask defining the field's length and position
+ * @__val: value to extract the bitfield value from
+ *
+ * Local wrapper for FIELD_GET() to force u8 and for consistency with
+ * REG_FIELD_PREP(), REG_BIT() and REG_GENMASK().
+ *
+ * @return: Masked and shifted value of the field defined by @__mask in @__val.
+ */
+#define REG_FIELD_GET8(__mask, __val)   ((u8)FIELD_GET(__mask, __val))
+
 typedef struct {
 	u32 reg;
 } i915_reg_t;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index c45af0d981fd..136630321434 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -25,6 +25,11 @@
  *
  */
 
+#include <linux/bitops.h>
+
+#include "display/intel_bw.h"
+#include "display/intel_cdclk.h"
+#include "display/intel_cx0_phy.h"
 #include "display/intel_de.h"
 #include "display/intel_display.h"
 #include "display/intel_display_trace.h"
@@ -124,6 +129,290 @@ static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
 		   PWM1_GATING_DIS | PWM2_GATING_DIS);
 }
 
+static struct intel_global_state *intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
+{
+	struct intel_pmdemand_state *pmdmnd_state;
+
+	pmdmnd_state = kmemdup(obj->state, sizeof(*pmdmnd_state), GFP_KERNEL);
+	if (!pmdmnd_state)
+		return NULL;
+
+	return &pmdmnd_state->base;
+}
+
+static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
+					 struct intel_global_state *state)
+{
+	kfree(state);
+}
+
+static const struct intel_global_state_funcs intel_pmdemand_funcs = {
+	.atomic_duplicate_state = intel_pmdemand_duplicate_state,
+	.atomic_destroy_state = intel_pmdemand_destroy_state,
+};
+
+struct intel_pmdemand_state *
+intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_global_state *pmdemand_state;
+
+	pmdemand_state = intel_atomic_get_global_obj_state(state, &dev_priv->pmdemand.obj);
+	if (IS_ERR(pmdemand_state))
+		return ERR_CAST(pmdemand_state);
+
+	return to_intel_pmdemand_state(pmdemand_state);
+}
+
+int intel_pmdemand_init(struct drm_i915_private *dev_priv)
+{
+	struct intel_pmdemand_state *pmdemand_state;
+
+	pmdemand_state = kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
+	if (!pmdemand_state)
+		return -ENOMEM;
+
+	intel_atomic_global_obj_init(dev_priv, &dev_priv->pmdemand.obj,
+				     &pmdemand_state->base, &intel_pmdemand_funcs);
+
+	return 0;
+}
+
+void intel_init_pmdemand(struct drm_i915_private *dev_priv)
+{
+	mutex_init(&dev_priv->pmdemand.lock);
+	init_waitqueue_head(&dev_priv->pmdemand.waitqueue);
+}
+
+int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_pmdemand_state *new_pmdemand_state = NULL;
+	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
+	struct intel_crtc *crtc;
+	struct intel_encoder *encoder;
+	struct intel_bw_state *new_bw_state;
+	const struct intel_dbuf_state *new_dbuf_state;
+	const struct intel_cdclk_state *new_cdclk_state;
+	int port_clock = 0;
+	unsigned int data_rate;
+	enum phy phy;
+	int i, ret;
+
+	if (DISPLAY_VER(dev_priv) < 14)
+		return 0;
+
+	new_pmdemand_state = intel_atomic_get_pmdemand_state(state);
+	if (IS_ERR(new_pmdemand_state))
+		return PTR_ERR(new_pmdemand_state);
+
+	ret = intel_atomic_lock_global_state(&new_pmdemand_state->base);
+	if (ret)
+		return ret;
+
+	/* Punit figures out the voltage index based on bandwidth*/
+	new_bw_state = intel_atomic_get_bw_state(state);
+	if (IS_ERR(new_bw_state))
+		return PTR_ERR(new_bw_state);
+
+	/* firmware will calculate the qclck_gc_index, requirement is set to 0 */
+	new_pmdemand_state->qclk_gv_index = 0;
+
+	data_rate = intel_bw_data_rate(dev_priv, new_bw_state);
+	/* To MBs then to multiples of 100MBs */
+	data_rate = DIV_ROUND_UP(data_rate, 1000);
+	data_rate = DIV_ROUND_UP(data_rate, 100);
+	new_pmdemand_state->qclk_gv_bw = data_rate;
+
+	new_dbuf_state = intel_atomic_get_dbuf_state(state);
+	if (IS_ERR(new_dbuf_state))
+		return PTR_ERR(new_dbuf_state);
+
+	i = hweight8(new_dbuf_state->active_pipes);
+	new_pmdemand_state->active_pipes = min(i, 3);
+
+	new_cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(new_cdclk_state))
+		return PTR_ERR(new_cdclk_state);
+
+	new_pmdemand_state->voltage_index = new_cdclk_state->logical.voltage_level;
+	/* KHz to MHz */
+	new_pmdemand_state->cdclk_freq_mhz = DIV_ROUND_UP(new_cdclk_state->logical.cdclk, 1000);
+
+	new_pmdemand_state->active_phys_plls_mask = 0;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+		if (!new_crtc_state->hw.active)
+			continue;
+
+		encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
+		if (!encoder)
+			continue;
+
+		phy = intel_port_to_phy(dev_priv, encoder->port);
+
+		if (intel_is_c10phy(dev_priv, phy))
+			new_pmdemand_state->active_phys_plls_mask |= BIT(phy);
+
+		port_clock = max(port_clock, new_crtc_state->port_clock);
+	}
+
+	/* To MHz */
+	new_pmdemand_state->ddiclk_freq_mhz = DIV_ROUND_UP(port_clock, 1000);
+
+	/*
+	 * Setting scalers to max as it can not be calculated during flips and
+	 * fastsets without taking global states locks.
+	 */
+	new_pmdemand_state->scalers = 7;
+
+	return 0;
+}
+
+static bool intel_pmdemand_check_prev_transaction(struct drm_i915_private *dev_priv)
+{
+	return !((intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) & XELPDP_PMDEMAND_REQ_ENABLE) ||
+		(intel_de_read(dev_priv, GEN12_DCPR_STATUS_1) & XELPDP_PMDEMAND_INFLIGHT_STATUS));
+}
+
+static bool intel_pmdemand_req_complete(struct drm_i915_private *dev_priv)
+{
+	return !(intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) & XELPDP_PMDEMAND_REQ_ENABLE);
+}
+
+static int intel_pmdemand_wait(struct drm_i915_private *dev_priv)
+{
+	DEFINE_WAIT(wait);
+	int ret;
+	const unsigned int timeout_ms = 10;
+
+	add_wait_queue(&dev_priv->pmdemand.waitqueue, &wait);
+
+	ret = wait_event_timeout(dev_priv->pmdemand.waitqueue,
+				 intel_pmdemand_req_complete(dev_priv),
+				 msecs_to_jiffies_timeout(timeout_ms));
+	if (ret < 0)
+		drm_err(&dev_priv->drm,
+			"timed out waiting for Punit PM Demand Response\n");
+
+	remove_wait_queue(&dev_priv->pmdemand.waitqueue, &wait);
+
+	return ret;
+}
+
+/* Required to be programmed during Display Init Sequences. */
+void intel_program_dbuf_pmdemand(struct drm_i915_private *dev_priv,
+				 u8 dbuf_slices)
+{
+	if (DISPLAY_VER(dev_priv) < 14)
+		return;
+
+	mutex_lock(&dev_priv->pmdemand.lock);
+	if (drm_WARN_ON(&dev_priv->drm,
+			!intel_pmdemand_check_prev_transaction(dev_priv)))
+		goto unlock;
+
+	intel_de_rmw(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
+		     XELPDP_PMDEMAND_DBUFS_MASK,
+		     XELPDP_PMDEMAND_DBUFS(hweight32(dbuf_slices)));
+	intel_de_rmw(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
+		     XELPDP_PMDEMAND_REQ_ENABLE);
+
+	intel_pmdemand_wait(dev_priv);
+unlock:
+	mutex_unlock(&dev_priv->pmdemand.lock);
+}
+
+static void intel_program_pmdemand(struct drm_i915_private *dev_priv,
+				   const struct intel_pmdemand_state *new,
+				   const struct intel_pmdemand_state *old)
+{
+	u32 val, tmp;
+
+#define UPDATE_PMDEMAND_VAL(val, F, f) do {            \
+	val &= (~(XELPDP_PMDEMAND_##F##_MASK));         \
+	val |= (XELPDP_PMDEMAND_##F((u32)(old ? max(old->f, new->f) : new->f))); \
+} while (0)
+
+	mutex_lock(&dev_priv->pmdemand.lock);
+	if (drm_WARN_ON(&dev_priv->drm,
+			!intel_pmdemand_check_prev_transaction(dev_priv)))
+		goto unlock;
+
+	/*
+	 * TODO: Update programming PM Demand for
+	 * PHYS, PLLS, DDI_CLKFREQ, SCALARS
+	 */
+	val = intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(0));
+	UPDATE_PMDEMAND_VAL(val, QCLK_GV_INDEX, qclk_gv_index);
+	UPDATE_PMDEMAND_VAL(val, QCLK_GV_BW, qclk_gv_bw);
+	UPDATE_PMDEMAND_VAL(val, VOLTAGE_INDEX, voltage_index);
+	UPDATE_PMDEMAND_VAL(val, PIPES, active_pipes);
+	UPDATE_PMDEMAND_VAL(val, DBUFS, dbufs);
+	tmp = hweight32(new->active_phys_plls_mask);
+	if (old)
+		tmp = max(tmp, hweight32(old->active_phys_plls_mask));
+	val |= XELPDP_PMDEMAND_PHYS(tmp);
+
+	intel_de_write(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(0), val);
+
+	val = intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
+	UPDATE_PMDEMAND_VAL(val, CDCLK_FREQ, cdclk_freq_mhz);
+	UPDATE_PMDEMAND_VAL(val, DDICLK_FREQ, ddiclk_freq_mhz);
+	UPDATE_PMDEMAND_VAL(val, SCALERS, scalers);
+	/*
+	 * Active_PLLs starts with 1 because of CDCLK PLL.
+	 * TODO: Missing to account genlock filter when it gets used.
+	 */
+	val |= XELPDP_PMDEMAND_PLLS(tmp + 1);
+
+	intel_de_write(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1), val);
+
+#undef UPDATE_PM_DEMAND_VAL
+
+	intel_de_rmw(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0, XELPDP_PMDEMAND_REQ_ENABLE);
+
+	intel_pmdemand_wait(dev_priv);
+unlock:
+	mutex_unlock(&dev_priv->pmdemand.lock);
+}
+
+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_pmdemand_state *new_pmdmnd_state =
+		intel_atomic_get_new_pmdemand_state(state);
+	const struct intel_pmdemand_state *old_pmdmnd_state =
+		intel_atomic_get_old_pmdemand_state(state);
+
+	if (DISPLAY_VER(dev_priv) < 14)
+		return;
+
+	if (!new_pmdmnd_state ||
+	    memcmp(new_pmdmnd_state, old_pmdmnd_state, sizeof(*new_pmdmnd_state)) == 0)
+		return;
+
+	intel_program_pmdemand(dev_priv, new_pmdmnd_state, old_pmdmnd_state);
+}
+
+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_pmdemand_state *new_pmdmnd_state =
+		intel_atomic_get_new_pmdemand_state(state);
+	const struct intel_pmdemand_state *old_pmdmnd_state =
+		intel_atomic_get_old_pmdemand_state(state);
+
+	if (DISPLAY_VER(dev_priv) < 14)
+		return;
+
+	if (!new_pmdmnd_state ||
+	    memcmp(new_pmdmnd_state, old_pmdmnd_state, sizeof(*new_pmdmnd_state)) == 0)
+		return;
+
+	intel_program_pmdemand(dev_priv, new_pmdmnd_state, NULL);
+}
+
 static void ibx_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	/*
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index f774bddcdca6..7a3f800e430b 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -8,11 +8,47 @@
 
 #include <linux/types.h>
 
+#include "display/intel_global_state.h"
+
 struct drm_i915_private;
 struct intel_crtc_state;
 struct intel_plane_state;
 
 void intel_init_clock_gating(struct drm_i915_private *dev_priv);
+void intel_suspend_hw(struct drm_i915_private *dev_priv);
+void intel_init_pmdemand(struct drm_i915_private *dev_priv);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
 
+struct intel_pmdemand_state {
+	struct intel_global_state base;
+
+	u16 qclk_gv_bw;
+	u8 voltage_index;
+	u8 qclk_gv_index;
+	u8 active_pipes;
+	u8 dbufs;
+	u8 active_phys_plls_mask;
+	u16 cdclk_freq_mhz;
+	u16 ddiclk_freq_mhz;
+	u8 scalers;
+};
+
+int intel_pmdemand_init(struct drm_i915_private *dev_priv);
+
+struct intel_pmdemand_state *
+intel_atomic_get_pmdemand_state(struct intel_atomic_state *state);
+
+#define to_intel_pmdemand_state(x) container_of((x), struct intel_pmdemand_state, base)
+#define intel_atomic_get_old_pmdemand_state(state) \
+	to_intel_pmdemand_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->pmdemand.obj))
+#define intel_atomic_get_new_pmdemand_state(state) \
+	to_intel_pmdemand_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->pmdemand.obj))
+
+int intel_pmdemand_init(struct drm_i915_private *dev_priv);
+void intel_program_dbuf_pmdemand(struct drm_i915_private *dev_priv,
+				 u8 dbuf_slices);
+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
+int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
+
 #endif /* __INTEL_PM_H__ */
-- 
2.34.1

