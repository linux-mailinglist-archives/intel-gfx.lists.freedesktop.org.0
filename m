Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3C15EF653
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 15:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3B110EA57;
	Thu, 29 Sep 2022 13:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 714A210EA4A
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 13:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664457730; x=1695993730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bIA8ru4FyJ8w+9MmFoqmn0/TjQomrcSlcK9NeAi7SsA=;
 b=NAtOb58Cuu4x/ZAiZVAllBjpmZt8aRf2HyqRiu6oIiWDwRpoMq8mrfAB
 NfwZz8AfXDmO5f+AKSjDmJJy8zFMUBxzzZSfgR3f+2gkYmVyUo77bGWl/
 mQLz1WfUR+tJWMz0E7VmbS2fHY9cKvK182aqO0rIdkzudtv3jA0LXBDdA
 hG3Xk2pMzgKS3Q9fGFmtHBygb0THilItrOBzEwAwcqLUPpv13gNE9NKpF
 N7T5ZygeJOf1/85DJri2yF1sbnORpCTPKI+7n10JBOGeg43R362Hp+Eic
 X1T9EhprEAG7hfYm8+0eTbv12U7BtAkQ9cXxWkBWTx0MFY2GRZWG8TG1A g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="365934650"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="365934650"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 06:22:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="655550439"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="655550439"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 29 Sep 2022 06:22:08 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 16:17:43 +0300
Message-Id: <20220929131747.2592092-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220929131747.2592092-1-mika.kahola@intel.com>
References: <20220929131747.2592092-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/mtl: Add Support for C10,
 C20 PHY Message Bus
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

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

XELPDP has C10 and C20 phys from Synopsys to drive displays. Each phy
has a dedicated PIPE 5.2 Message bus for configuration. This message
bus is used to configure the phy internal registers.

Bspec: 64599, 65100, 65101, 67610, 67636

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com> (v4)
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 179 +++++++++++++++++++
 1 file changed, 179 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
new file mode 100644
index 000000000000..7930b0255cfa
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -0,0 +1,179 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include "intel_de.h"
+#include "intel_uncore.h"
+
+static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, int lane)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+
+	/* Bring the phy to idle. */
+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+		       XELPDP_PORT_M2P_TRANSACTION_RESET);
+
+	/* Wait for Idle Clear. */
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+				    XELPDP_PORT_M2P_TRANSACTION_RESET,
+				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+		drm_err_once(&i915->drm, "Failed to bring PHY %c to idle. \n", phy_name(phy));
+		return;
+	}
+
+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), ~0);
+	return;
+}
+
+__maybe_unused static u8 intel_cx0_read(struct drm_i915_private *i915, enum port port,
+			 int lane, u16 addr)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+	u32 val = 0;
+	int attempts = 0;
+
+retry:
+	if (attempts == 3) {
+		drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries. Status: 0x%x\n", phy_name(phy), addr, attempts, val ?: 0);
+		return 0;
+	}
+
+	/* Wait for pending transactions.*/
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
+				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+		drm_dbg(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
+		attempts++;
+		intel_cx0_bus_reset(i915, port, lane);
+		goto retry;
+	}
+
+	/* Issue the read command. */
+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
+		       XELPDP_PORT_M2P_COMMAND_READ |
+		       XELPDP_PORT_M2P_ADDRESS(addr));
+
+	/* Wait for response ready. And read response.*/
+	if (__intel_wait_for_register(&i915->uncore,
+				      XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
+				      XELPDP_PORT_P2M_RESPONSE_READY,
+				      XELPDP_PORT_P2M_RESPONSE_READY,
+				      XELPDP_MSGBUS_TIMEOUT_FAST_US,
+				      XELPDP_MSGBUS_TIMEOUT_SLOW, &val)) {
+		drm_dbg(&i915->drm, "PHY %c Timeout waiting for Read response ACK. Status: 0x%x\n", phy_name(phy), val);
+		attempts++;
+		intel_cx0_bus_reset(i915, port, lane);
+		goto retry;
+	}
+
+	/* Check for error. */
+	if (val & XELPDP_PORT_P2M_ERROR_SET) {
+		drm_dbg(&i915->drm, "PHY %c Error occurred during read command. Status: 0x%x\n", phy_name(phy), val);
+		attempts++;
+		intel_cx0_bus_reset(i915, port, lane);
+		goto retry;
+	}
+
+	/* Check for Read Ack. */
+	if (REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, val) !=
+	    XELPDP_PORT_P2M_COMMAND_READ_ACK) {
+		drm_dbg(&i915->drm, "PHY %c Not a Read response. MSGBUS Status: 0x%x.\n", phy_name(phy), val);
+		attempts++;
+		intel_cx0_bus_reset(i915, port, lane);
+		goto retry;
+	}
+
+	/* Clear Response Ready flag.*/
+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), ~0);
+	return (u8)REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
+}
+
+static int intel_cx0_wait_cwrite_ack(struct drm_i915_private *i915,
+				      enum port port, int lane)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+	u32 val;
+
+	/* Check for write ack. */
+	if (__intel_wait_for_register(&i915->uncore,
+				      XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
+				      XELPDP_PORT_P2M_RESPONSE_READY,
+				      XELPDP_PORT_P2M_RESPONSE_READY,
+				      XELPDP_MSGBUS_TIMEOUT_FAST_US,
+				      XELPDP_MSGBUS_TIMEOUT_SLOW, &val)) {
+		drm_dbg(&i915->drm, "PHY %c Timeout waiting for Committed message ACK. Status: 0x%x\n", phy_name(phy), val);
+		return -ETIMEDOUT;
+	}
+
+	if ((REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, val) !=
+	     XELPDP_PORT_P2M_COMMAND_WRITE_ACK) || val & XELPDP_PORT_P2M_ERROR_SET) {
+		drm_dbg(&i915->drm, "PHY %c Unexpected ACK received. MSGBUS STATUS: 0x%x.\n", phy_name(phy), val);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+__maybe_unused static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
+			    int lane, u16 addr, u8 data, bool committed)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+	int attempts = 0;
+
+retry:
+	if (attempts == 3) {
+		drm_err_once(&i915->drm, "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, attempts);
+		return;
+	}
+
+	/* Wait for pending transactions.*/
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
+				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+		drm_dbg(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
+		attempts++;
+		intel_cx0_bus_reset(i915, port, lane);
+		goto retry;
+	}
+
+	/* Issue the write command. */
+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
+		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
+		       XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED) |
+		       XELPDP_PORT_M2P_DATA(data) |
+		       XELPDP_PORT_M2P_ADDRESS(addr));
+
+	/* Check for error. */
+	if (committed) {
+		if (intel_cx0_wait_cwrite_ack(i915, port, lane) < 0) {
+			attempts++;
+			intel_cx0_bus_reset(i915, port, lane);
+			goto retry;
+		}
+	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(phy, lane)) &
+			    XELPDP_PORT_P2M_ERROR_SET)) {
+		drm_dbg(&i915->drm, "PHY %c Error occurred during write command.\n", phy_name(phy));
+		attempts++;
+		intel_cx0_bus_reset(i915, port, lane);
+		goto retry;
+	}
+
+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), ~0);
+
+	return;
+}
+
+__maybe_unused static void intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
+			  int lane, u16 addr, u8 clear, u8 set, bool committed)
+{
+	u8 old, val;
+
+	old = intel_cx0_read(i915, port, lane, addr);
+	val = (old & ~clear) | set;
+
+	if (val != old)
+		intel_cx0_write(i915, port, lane, addr, val, committed);
+}
-- 
2.34.1

