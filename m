Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0368C78D5D1
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 14:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6670F10E512;
	Wed, 30 Aug 2023 12:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E7410E512
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 12:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693397744; x=1724933744;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sLZOmGE4LF9sliSY2vcI+/ssjc9kIZzRVpOYhG0zaqs=;
 b=g6X//mpqz/OTey7zqKOOLKILnO6Lk0rAageAvyEs9K6SlCPHa6Lle+km
 LgvKDa46Lp+We/8J3INhC1PP/bAwU5qarRJyif4kY0qHw81t4C0ioBUGe
 crwls4/yNt9l0VKF4XsgzwP/MH+Nso62TBDQz1Io+E656/q6J63pXXYrn
 Pz5ab+F0YYZkiW8eOtTYns8E51lhjccCGRPNzCP0QH0ZRkOhZl6bN35Li
 o4q2g1mfPPtdECSvQVmJfYvQ6JkbjcEnUS567+aVroIT1Zejlojoekg+E
 fJ3culQJTa/ZUp8fLbOGErZrPjzt35zE7D8+jUz0cYronsqomVcad9ztt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="406624395"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="406624395"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 05:15:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="912766447"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="912766447"
Received: from dssollar-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.212.36.135])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 05:15:37 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 09:15:24 -0300
Message-ID: <20230830121524.15101-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/cx0: Check and increase msgbus
 timeout threshold
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have experienced timeout issues when going through the sequence to
access C20 SRAM registers. Experimentation showed that bumping the
message bus timer threshold helped on getting display Type-C connection
on the C20 PHY to work.

While the timeout is still under investigation with the HW team, having
logic to allow forward progress (with the proper warnings) seems useful.
Thus, let's bump the threshold when a timeout is detected.

The bumped value of 0x200 pclk cycles was somewhat arbitrary - 2x the
default value. That value was successfully tested on real hardware that
was displaying timeouts otherwise.

v2:
  - Reword commit message to indicate that access to C20 SRAM registers
    is not direct. (Radhakrishna)
  - Prefer not to use REG_FIELD_PREP() in intel_cx0_phy.c.
    (Radhakrishna)
  - Simplify intel_cx0_bus_check_and_bump_timer() to use a fixed bumped
    value instead of progressively increasing the threshold. (Mika)

BSpec: 65156
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 39 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 13 +++++++
 2 files changed, 52 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index dd489b50ad60..ffc6b54be12b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -29,6 +29,8 @@
 #define INTEL_CX0_LANE1		BIT(1)
 #define INTEL_CX0_BOTH_LANES	(INTEL_CX0_LANE1 | INTEL_CX0_LANE0)
 
+#define INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL	0x200
+
 bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
 {
 	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0) && phy < PHY_C)
@@ -119,6 +121,42 @@ static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, i
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
+	if (timer_val == INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL)
+		return;
+
+	val &= ~XELPDP_PORT_MSGBUS_TIMER_VAL_MASK;
+	val |= XELPDP_PORT_MSGBUS_TIMER_VAL(INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL);
+
+	drm_dbg_kms(&i915->drm,
+		    "PHY %c lane %d: increasing msgbus timer threshold to %#x\n",
+		    phy_name(phy), lane, INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL);
+	intel_de_write(i915, reg, val);
+}
+
 static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 				  int command, int lane, u32 *val)
 {
@@ -132,6 +170,7 @@ static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 					 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
 		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
 			    phy_name(phy), *val);
+		intel_cx0_bus_check_and_bump_timer(i915, port, lane);
 		intel_cx0_bus_reset(i915, port, lane);
 		return -ETIMEDOUT;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index cb5d1be2ba19..b2db4cc366d6 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -110,6 +110,19 @@
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
+#define   XELPDP_PORT_MSGBUS_TIMER_VAL(val)		REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val)
+
 #define _XELPDP_PORT_CLOCK_CTL_A			0x640E0
 #define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
 #define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
-- 
2.41.0

