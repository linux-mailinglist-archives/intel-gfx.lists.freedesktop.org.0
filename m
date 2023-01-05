Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5694965EB6C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 13:59:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B118010E717;
	Thu,  5 Jan 2023 12:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DEB510E714
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 12:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672923583; x=1704459583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CvwI8Wavp2TFFyA2DAYDNZt7mMBhyk8CGTLttSx9J7s=;
 b=MHA1ooOQVtcn2RSdXF4+G9/LNP0uIChyBPyzU07r6QoKPt8FBEm7vFoP
 xC7/Q6Dt/cwXZWJwUrZpWEN1Y899+RvVVS2U/A4eMx2gIS2/xM0bH/v1d
 pxqR9t057Yk8FHtVroU4GIsY0TYZ19LhZNfOPd0G9xjST3eE1qBM4Tev3
 nJl/o7any6HyODRItyLw6OBXmsEuFOYiXOf+Hj3D2QIEnCbbbzgMd5HPn
 uASxQ9cRolKVUTogwrRFJINHIOX9wwKRATmv51ifTMHzLtaP1tkl3CVGb
 kRj3ZF9yzTw44WFTXxW7uIDLHI3K8pRtRtr6aKImxhy9BOpCSZ0ybm9EU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305697729"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305697729"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 04:59:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829540951"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829540951"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 04:59:40 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:54:29 +0200
Message-Id: <20230105125446.960504-5-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105125446.960504-1-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/21] drm/i915/mtl: Add Support for C10 PHY
 message bus and pll programming
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

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

XELPDP has C10 and C20 phys from Synopsys to drive displays. Each phy
has a dedicated PIPE 5.2 Message bus for configuration. This message
bus is used to configure the phy internal registers.

XELPDP has C10 phys to drive output to the EDP and the native output
from the display engine. Add structures, programming hardware state
readout logic. Port clock calculations are similar to DG2. Use the DG2
formulae to calculate the port clock but use the relevant pll signals.
Note: PHY lane 0 is always used for PLL programming.

Add sequences for C10 phy enable/disable phy lane reset,
powerdown change sequence and phy lane programming.

Bspec: 64539, 64568, 64599, 65100, 65101, 65450, 65451, 67610, 67636

v2: Squash patches related to C10 phy message bus and pll
    programming support (Jani)
    Move register definitions to a new file i.e. intel_cx0_reg_defs.h (Jani)
    Move macro definitions (Jani)
    DP rates as separate patch (Jani)
    Spin out xelpdp register definitions into a separate file (Jani)
    Replace macro to select registers based on phy lane with
    function calls (Jani)
    Fix styling issues (Jani)
    Call XELPDP_PORT_P2M_MSGBUS_STATUS() with port instead of phy (Lucas)
v3: Move clear request flag into try-loop

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-5-mika.kahola@intel.com
---
 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 1110 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   43 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   34 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   22 +-
 drivers/gpu/drm/i915/display/intel_display.c  |    1 +
 .../drm/i915/display/intel_display_power.c    |    3 +-
 .../i915/display/intel_display_power_well.c   |    2 +-
 .../drm/i915/display/intel_display_types.h    |    6 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |   22 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    2 +-
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/i915/i915_reg.h               |    5 +
 drivers/gpu/drm/i915/i915_reg_defs.h          |   57 +
 14 files changed, 1305 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index f47f00b162a4..200364242c83 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -290,6 +290,7 @@ i915-y += \
 	display/icl_dsi.o \
 	display/intel_backlight.o \
 	display/intel_crt.o \
+	display/intel_cx0_phy.o \
 	display/intel_ddi.o \
 	display/intel_ddi_buf_trans.o \
 	display/intel_display_trace.o \
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
new file mode 100644
index 000000000000..1ceebbc6b650
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -0,0 +1,1110 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include "i915_reg.h"
+#include "intel_cx0_phy.h"
+#include "intel_cx0_phy_regs.h"
+#include "intel_de.h"
+#include "intel_display_types.h"
+#include "intel_dp.h"
+#include "intel_panel.h"
+
+bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
+{
+	if (IS_METEORLAKE(dev_priv) && (phy < PHY_C))
+		return true;
+
+	return false;
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
+		drm_err_once(&i915->drm, "Failed to bring PHY %c to idle.\n", phy_name(phy));
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
+	if (__intel_wait_for_register(&i915->uncore,
+				      XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1),
+				      XELPDP_PORT_P2M_RESPONSE_READY,
+				      XELPDP_PORT_P2M_RESPONSE_READY,
+				      XELPDP_MSGBUS_TIMEOUT_FAST_US,
+				      XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
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
+static const struct intel_c10mpllb_state * const *
+intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
+			   struct intel_encoder *encoder)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
+			return mtl_c10_edp_tables;
+		else
+			return mtl_c10_dp_tables;
+	}
+
+	/* TODO: Add HDMI Support */
+	MISSING_CASE(encoder->type);
+	return NULL;
+}
+
+static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
+				     struct intel_encoder *encoder)
+{
+	const struct intel_c10mpllb_state * const *tables;
+	int i;
+
+	tables = intel_c10_mpllb_tables_get(crtc_state, encoder);
+	if (!tables)
+		return -EINVAL;
+
+	for (i = 0; tables[i]; i++) {
+		if (crtc_state->port_clock <= tables[i]->clock) {
+			crtc_state->c10mpllb_state = *tables[i];
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
+	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
+
+	return intel_c10mpllb_calc_state(crtc_state, encoder);
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
+	int i;
+	u8 cmn, tx0;
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
+	if (tx0 != C10_TX0_VAL || cmn != C10_CMN0_DP_VAL)
+		drm_warn(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
+			 tx0, cmn, phy_name(phy));
+}
+
+static void intel_c10_pll_program(struct drm_i915_private *i915,
+				  const struct intel_crtc_state *crtc_state,
+				  struct intel_encoder *encoder)
+{
+	const struct intel_c10mpllb_state *pll_state = &crtc_state->c10mpllb_state;
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
+					 INTEL_CX0_LANE0;
+	u8 follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
+					   INTEL_CX0_LANE1;
+
+	int i;
+	struct intel_dp *intel_dp;
+	bool use_ssc = false;
+	u8 cmn0 = 0;
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
+				(!use_ssc && (i > 3 && i < 9)) ? 0 : pll_state->pll[i],
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
+int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
+				   const struct intel_c10mpllb_state *pll_state)
+{
+	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
+	unsigned int multiplier, tx_clk_div, refclk = 38400;
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
+
+	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
+				     DIV_ROUND_CLOSEST(refclk * frac_rem, frac_den),
+				     10 << (tx_clk_div + 16));
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
+	val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		intel_dp = enc_to_intel_dp(encoder);
+		ssc_enabled = intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
+			      DP_MAX_DOWNSPREAD_0_5;
+
+		if (!intel_panel_use_ssc(i915))
+			ssc_enabled = false;
+
+		/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
+		val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+	}
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     XELPDP_LANE1_PHY_CLOCK_SELECT |
+		     XELPDP_FORWARD_CLOCK_UNGATE |
+		     XELPDP_DDI_CLOCK_SELECT_MASK |
+		     XELPDP_SSC_ENABLE_PLLB, val);
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
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_BUF_CTL2(port),
+				      intel_cx0_get_powerdown_update(lane), 0,
+				      XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
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
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_BUF_CTL1(port),
+				      XELPDP_PORT_BUF_SOC_PHY_READY,
+				      XELPDP_PORT_BUF_SOC_PHY_READY,
+				      XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
+			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
+
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+		     XELPDP_LANE0_PIPE_RESET | XELPDP_LANE1_PIPE_RESET,
+		     XELPDP_LANE0_PIPE_RESET | XELPDP_LANE1_PIPE_RESET);
+
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_BUF_CTL2(port),
+				      XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,
+				      XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,
+				      XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
+			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
+
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
+		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES),
+		     intel_cx0_get_pclk_refclk_request(lane));
+
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(port),
+				      intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES),
+				      intel_cx0_get_pclk_refclk_ack(lane),
+				      XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
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
+static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
+				       enum port port, int lane_count,
+				       bool lane_reversal)
+{
+	u8 l0t1, l0t2, l1t1, l1t2;
+
+	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MSGBUS_ACCESS,
+		      MB_WRITE_COMMITTED);
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
+			/* Disable MLs 2(lane0), 3(lane1), 4(lane1) */
+			intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2),
+					l0t2 | CONTROL2_DISABLE_SINGLE_TX,
+					MB_WRITE_COMMITTED);
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
+static void intel_c10pll_enable(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
+					  INTEL_CX0_LANE0;
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
+	intel_c10_pll_program(i915, crtc_state, encoder);
+
+	/*
+	 * 5. Program the enabled and disabled owned PHY lane
+	 * transmitters over message bus
+	 */
+	intel_c10_program_phy_lane(i915, encoder->port, crtc_state->lane_count, lane_reversal);
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
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				      intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
+				      intel_cx0_get_pclk_pll_ack(maxpclk_lane),
+				      XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "Port %c PLL not locked after %dus.\n",
+			 phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US);
+
+	/*
+	 * 10. Follow the Display Voltage Frequency Switching Sequence After
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+}
+
+void intel_cx0pll_enable(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
+	intel_c10pll_enable(encoder, crtc_state);
+}
+
+static void intel_c10pll_disable(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	/* 1. Change owned PHY lane power to Disable state. */
+	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
+					    CX0_P2PG_STATE_DISABLE);
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
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				      intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
+				      intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
+				      XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
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
+		     XELPDP_DDI_CLOCK_SELECT_MASK |
+		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
+}
+
+void intel_cx0pll_disable(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
+	intel_c10pll_disable(encoder);
+}
+
+void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
+				 struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_c10mpllb_state mpllb_hw_state = { 0 };
+	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->c10mpllb_state;
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
+	struct intel_encoder *encoder;
+	struct intel_dp *intel_dp;
+	enum phy phy;
+	int i;
+	bool use_ssc = false;
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
+		if (!use_ssc && i > 3 && i < 9)
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
index 000000000000..8cf340509097
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -0,0 +1,43 @@
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
+void intel_cx0pll_enable(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state);
+void intel_cx0pll_disable(struct intel_encoder *encoder);
+void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
+				     struct intel_c10mpllb_state *pll_state);
+int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
+			      struct intel_encoder *encoder);
+void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
+				  const struct intel_c10mpllb_state *hw_state);
+int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
+				   const struct intel_c10mpllb_state *pll_state);
+void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
+				 struct intel_crtc_state *new_crtc_state);
+
+#endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index d6b3709d3762..ef629f8b14cf 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -133,4 +133,38 @@
 #define XELPDP_SSC_ENABLE_PLLA				REG_BIT(1)
 #define XELPDP_SSC_ENABLE_PLLB				REG_BIT(0)
 
+/* C10 Vendor Registers */
+#define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
+#define  C10_PLL0_FRACEN		REG_BIT8(4)
+#define  C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
+#define  C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
+
+#define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
+#define  C10_CMN0_DP_VAL		0x21
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
+/* PHY_C10_VDR_PLL0 */
+#define PLL_C10_MPLL_SSC_EN		REG_BIT8(0)
+
+/* PIPE SPEC Defined Registers */
+#define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
+#define CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
+
 #endif /* __INTEL_CX0_PHY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1f5a471a0adf..099776b62052 100644
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
@@ -3520,6 +3521,21 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
 						     &crtc_state->dpll_hw_state);
 }
 
+static void mtl_ddi_get_config(struct intel_encoder *encoder,
+			       struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
+
+	intel_c10mpllb_readout_hw_state(encoder, &crtc_state->c10mpllb_state);
+	intel_c10mpllb_dump_hw_state(i915, &crtc_state->c10mpllb_state);
+	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->c10mpllb_state);
+
+	intel_ddi_get_config(encoder, crtc_state);
+}
+
 static void dg2_ddi_get_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state)
 {
@@ -4394,7 +4410,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->cloneable = 0;
 	encoder->pipe_mask = ~0;
 
-	if (IS_DG2(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		encoder->enable_clock = intel_cx0pll_enable;
+		encoder->disable_clock = intel_cx0pll_disable;
+		encoder->get_config = mtl_ddi_get_config;
+	} else if (IS_DG2(dev_priv)) {
 		encoder->enable_clock = intel_mpllb_enable;
 		encoder->disable_clock = intel_mpllb_disable;
 		encoder->get_config = dg2_ddi_get_config;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b5618de88f03..655e1c86a1eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -47,6 +47,7 @@
 
 #include "display/intel_audio.h"
 #include "display/intel_crt.h"
+#include "display/intel_cx0_phy.h"
 #include "display/intel_ddi.h"
 #include "display/intel_display_debugfs.h"
 #include "display/intel_display_power.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1a23ecd4623a..40f157208a81 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1635,7 +1635,8 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 		return;
 
 	/* 2. Initialize all combo phys */
-	intel_combo_phy_init(dev_priv);
+	if (DISPLAY_VER(dev_priv) < 14)
+		intel_combo_phy_init(dev_priv);
 
 	/*
 	 * 3. Enable Power Well 1 (PG1).
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 8710dd41ffd4..5ebdaa8fce91 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -980,7 +980,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		bxt_verify_ddi_phy_power_wells(dev_priv);
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11 && DISPLAY_VER(dev_priv) < 14)
 		/*
 		 * DMC retains HW context only for port A, the other combo
 		 * PHY's HW context for port B is lost after DC transitions,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 32e8b2fc3cc6..fdd65781ae40 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -978,6 +978,11 @@ struct intel_link_m_n {
 	u32 link_n;
 };
 
+struct intel_c10mpllb_state {
+	u32 clock; /* in KHz */
+	u8 pll[20];
+};
+
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.
@@ -1121,6 +1126,7 @@ struct intel_crtc_state {
 	union {
 		struct intel_dpll_hw_state dpll_hw_state;
 		struct intel_mpllb_state mpllb_state;
+		struct intel_c10mpllb_state c10mpllb_state;
 	};
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index c236aafe9be0..cd6d75a4fdd4 100644
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
index 1974eb580ed1..a90d44f59ab1 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4163,7 +4163,7 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 
 	mutex_init(&dev_priv->display.dpll.lock);
 
-	if (IS_DG2(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 14 || IS_DG2(dev_priv))
 		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
 		dpll_mgr = NULL;
 	else if (IS_ALDERLAKE_P(dev_priv))
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
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8b2cf980f323..8d4b626874db 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2067,6 +2067,11 @@
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
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index be43580a6979..d00ceb6c7666 100644
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
@@ -126,6 +171,18 @@
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
-- 
2.34.1

