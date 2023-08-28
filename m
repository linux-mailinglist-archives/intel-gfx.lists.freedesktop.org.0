Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B780778B685
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 19:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA52510E330;
	Mon, 28 Aug 2023 17:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6355D10E31E
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 17:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693244083; x=1724780083;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MIg/a3iZD2895h0b8CvmQo9ckTSj2umo1AwQh1el9nY=;
 b=I6B92VeOCL1f4JYus1GjaX2fXKMfM86fylLvwdJ7OyaTCcvkrCWMUqQh
 IwQ/fECxKwfG5B2fZvwWgnxZJ3E0ouMeTBJ5oeWjL2t/PQCgRVy8ZtBek
 GW7zlGh+Y0V+MYIpF7vG2uBxV27+paXdz/xvXgwnhcMr6tfGGdeUx7oea
 aU5xc/iB+thYszgSCbNeNBWdAkr1w2kCWXujt6BLZfpeq+fSwj9tKU6T3
 U/tbBi2gU4PUQ8E7rpFrdQnIsLtGi0XzUSGg0UZAto4AZdX2rSmHO4cV3
 9yFrDSvtcPaV/31xTCB3tPiPL5BtkdQ6H12mebwhbo8WQmTrO6CkhbpoX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="406154744"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="406154744"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 10:34:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="882006086"
Received: from kelvin-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.209.140.209])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 10:34:46 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 14:34:05 -0300
Message-ID: <20230828173405.59812-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbus timeout
 threshold
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

We have experienced timeout issues when accessing C20 SRAM registers.
Experimentation showed that bumping the message bus timer threshold
helped on getting display Type-C connection on the C20 PHY to work.

While the timeout is still under investigation with the HW team, having
logic to allow forward progress (with the proper warnings) seems useful.
Thus, let's bump the threshold when a timeout is detected.

The maximum value of 0x200 pclk cycles was somewhat arbitrary - 2x the
default value. That value was successfully tested on real hardware that
was displaying timeouts otherwise.

BSpec: 65156
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 41 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 12 ++++++
 2 files changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index dd489b50ad60..55d2333032e3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -5,6 +5,7 @@
 
 #include <linux/log2.h>
 #include <linux/math64.h>
+#include <linux/minmax.h>
 #include "i915_reg.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
@@ -29,6 +30,8 @@
 #define INTEL_CX0_LANE1		BIT(1)
 #define INTEL_CX0_BOTH_LANES	(INTEL_CX0_LANE1 | INTEL_CX0_LANE0)
 
+#define INTEL_CX0_MSGBUS_TIMER_VAL_MAX	0x200
+
 bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
 {
 	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0) && phy < PHY_C)
@@ -119,6 +122,43 @@ static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, i
 	intel_clear_response_ready_flag(i915, port, lane);
 }
 
+/*
+ * Check if there was a timeout detected by the hardware in the message bus
+ * and bump the threshold if so.
+ */
+static void intel_cx0_bus_check_and_bump_timer(struct drm_i915_private *i915,
+					       enum port port, int lane)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+	i915_reg_t reg;
+	u32 val;
+	u32 timer_val;
+
+	reg = XELPDP_PORT_MSGBUS_TIMER(port, lane);
+	val = intel_de_read(i915, reg);
+
+	if (!(val & XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT)) {
+		drm_warn(&i915->drm,
+			 "PHY %c lane %d: hardware did not detect a timeout\n",
+			 phy_name(phy), lane);
+		return;
+	}
+
+	timer_val = REG_FIELD_GET(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val);
+
+	if (timer_val == INTEL_CX0_MSGBUS_TIMER_VAL_MAX)
+		return;
+
+	timer_val = min(2 * timer_val, (u32)INTEL_CX0_MSGBUS_TIMER_VAL_MAX);
+	val &= ~XELPDP_PORT_MSGBUS_TIMER_VAL_MASK;
+	val |= REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, timer_val);
+
+	drm_dbg_kms(&i915->drm,
+		    "PHY %c lane %d: increasing msgbus timer threshold to %#x\n",
+		    phy_name(phy), lane, timer_val);
+	intel_de_write(i915, reg, val);
+}
+
 static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 				  int command, int lane, u32 *val)
 {
@@ -132,6 +172,7 @@ static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 					 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
 		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
 			    phy_name(phy), *val);
+		intel_cx0_bus_check_and_bump_timer(i915, port, lane);
 		intel_cx0_bus_reset(i915, port, lane);
 		return -ETIMEDOUT;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index cb5d1be2ba19..17cc3385aabb 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -110,6 +110,18 @@
 #define   CX0_P4PG_STATE_DISABLE			0xC
 #define   CX0_P2_STATE_RESET				0x2
 
+#define _XELPDP_PORT_MSGBUS_TIMER_LN0_A			0x640d8
+#define _XELPDP_PORT_MSGBUS_TIMER_LN0_B			0x641d8
+#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1		0x16f258
+#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2		0x16f458
+#define XELPDP_PORT_MSGBUS_TIMER(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_MSGBUS_TIMER_LN0_A, \
+										 _XELPDP_PORT_MSGBUS_TIMER_LN0_B, \
+										 _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1, \
+										 _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)
+#define   XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT		REG_BIT(31)
+#define   XELPDP_PORT_MSGBUS_TIMER_VAL_MASK		REG_GENMASK(23, 0)
+
 #define _XELPDP_PORT_CLOCK_CTL_A			0x640E0
 #define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
 #define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
-- 
2.41.0

