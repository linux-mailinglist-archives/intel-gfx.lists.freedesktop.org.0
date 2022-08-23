Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 429CB59D5F3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 11:10:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E07B1D5C;
	Tue, 23 Aug 2022 09:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CAD0B1D38
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 09:09:40 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 11:01:26 +0200
Message-Id: <20220823090128.488008-3-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220823090128.488008-1-maarten.lankhorst@linux.intel.com>
References: <20220823090128.488008-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Remove uncore from intel_tc.c
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

Use the intel_de macro's instead of referencing uncore directly.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 55 ++++++++-----------------
 1 file changed, 18 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 6773840f6cc7..4ee69821728d 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_power_map.h"
 #include "intel_display_types.h"
@@ -119,11 +120,9 @@ assert_tc_cold_blocked(struct intel_digital_port *dig_port)
 u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 lane_mask;
 
-	lane_mask = intel_uncore_read(uncore,
-				      PORT_TX_DFLEXDPSP(dig_port->tc_phy_fia));
+	lane_mask = intel_de_read(i915, PORT_TX_DFLEXDPSP(dig_port->tc_phy_fia));
 
 	drm_WARN_ON(&i915->drm, lane_mask == 0xffffffff);
 	assert_tc_cold_blocked(dig_port);
@@ -135,11 +134,9 @@ u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
 u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 pin_mask;
 
-	pin_mask = intel_uncore_read(uncore,
-				     PORT_TX_DFLEXPA1(dig_port->tc_phy_fia));
+	pin_mask = intel_de_read(i915, PORT_TX_DFLEXPA1(dig_port->tc_phy_fia));
 
 	drm_WARN_ON(&i915->drm, pin_mask == 0xffffffff);
 	assert_tc_cold_blocked(dig_port);
@@ -185,7 +182,6 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 val;
 
 	drm_WARN_ON(&i915->drm,
@@ -193,8 +189,7 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 
 	assert_tc_cold_blocked(dig_port);
 
-	val = intel_uncore_read(uncore,
-				PORT_TX_DFLEXDPMLE1(dig_port->tc_phy_fia));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPMLE1(dig_port->tc_phy_fia));
 	val &= ~DFLEXDPMLE1_DPMLETC_MASK(dig_port->tc_phy_fia_idx);
 
 	switch (required_lanes) {
@@ -215,8 +210,7 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 		MISSING_CASE(required_lanes);
 	}
 
-	intel_uncore_write(uncore,
-			   PORT_TX_DFLEXDPMLE1(dig_port->tc_phy_fia), val);
+	intel_de_write(i915, PORT_TX_DFLEXDPMLE1(dig_port->tc_phy_fia), val);
 }
 
 static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
@@ -245,13 +239,11 @@ static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
 static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 isr_bit = i915->hotplug.pch_hpd[dig_port->base.hpd_pin];
 	u32 mask = 0;
 	u32 val;
 
-	val = intel_uncore_read(uncore,
-				PORT_TX_DFLEXDPSP(dig_port->tc_phy_fia));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPSP(dig_port->tc_phy_fia));
 
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
@@ -265,7 +257,7 @@ static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 	if (val & TC_LIVE_STATE_TC(dig_port->tc_phy_fia_idx))
 		mask |= BIT(TC_PORT_DP_ALT);
 
-	if (intel_uncore_read(uncore, SDEISR) & isr_bit)
+	if (intel_de_read(i915, SDEISR) & isr_bit)
 		mask |= BIT(TC_PORT_LEGACY);
 
 	/* The sink can be connected only in a single mode. */
@@ -280,7 +272,6 @@ static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
 	u32 isr_bit = i915->hotplug.pch_hpd[dig_port->base.hpd_pin];
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 val, mask = 0;
 
 	/*
@@ -288,13 +279,13 @@ static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 	 * registers in IOM. Note that this doesn't apply to PHY and FIA
 	 * registers.
 	 */
-	val = intel_uncore_read(uncore, TCSS_DDI_STATUS(tc_port));
+	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
 	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT)
 		mask |= BIT(TC_PORT_DP_ALT);
 	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT)
 		mask |= BIT(TC_PORT_TBT_ALT);
 
-	if (intel_uncore_read(uncore, SDEISR) & isr_bit)
+	if (intel_de_read(i915, SDEISR) & isr_bit)
 		mask |= BIT(TC_PORT_LEGACY);
 
 	/* The sink can be connected only in a single mode. */
@@ -325,11 +316,9 @@ static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
 static bool icl_tc_phy_status_complete(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 val;
 
-	val = intel_uncore_read(uncore,
-				PORT_TX_DFLEXDPPMS(dig_port->tc_phy_fia));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPPMS(dig_port->tc_phy_fia));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY in TCCOLD, assuming not complete\n",
@@ -351,10 +340,9 @@ static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 val;
 
-	val = intel_uncore_read(uncore, TCSS_DDI_STATUS(tc_port));
+	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY in TCCOLD, assuming not complete\n",
@@ -379,11 +367,9 @@ static bool icl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 				      bool take)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 val;
 
-	val = intel_uncore_read(uncore,
-				PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY in TCCOLD, can't %s ownership\n",
@@ -396,8 +382,7 @@ static bool icl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 	if (take)
 		val |= DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx);
 
-	intel_uncore_write(uncore,
-			   PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia), val);
+	intel_de_write(i915, PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia), val);
 
 	return true;
 }
@@ -406,16 +391,15 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 				      bool take)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_uncore *uncore = &i915->uncore;
 	enum port port = dig_port->base.port;
 	u32 val;
 
-	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
+	val = intel_de_read(i915, DDI_BUF_CTL(port));
 	if (take)
 		val |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	else
 		val &= ~DDI_BUF_CTL_TC_PHY_OWNERSHIP;
-	intel_uncore_write(uncore, DDI_BUF_CTL(port), val);
+	intel_de_write(i915, DDI_BUF_CTL(port), val);
 
 	return true;
 }
@@ -433,11 +417,9 @@ static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take
 static bool icl_tc_phy_is_owned(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 val;
 
-	val = intel_uncore_read(uncore,
-				PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY in TCCOLD, assume safe mode\n",
@@ -451,11 +433,10 @@ static bool icl_tc_phy_is_owned(struct intel_digital_port *dig_port)
 static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_uncore *uncore = &i915->uncore;
 	enum port port = dig_port->base.port;
 	u32 val;
 
-	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
+	val = intel_de_read(i915, DDI_BUF_CTL(port));
 	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 }
 
@@ -877,7 +858,7 @@ tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig
 
 	mutex_lock(&dig_port->tc_lock);
 	wakeref = tc_cold_block(dig_port, &domain);
-	val = intel_uncore_read(&i915->uncore, PORT_TX_DFLEXDPSP(FIA1));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPSP(FIA1));
 	tc_cold_unblock(dig_port, domain, wakeref);
 	mutex_unlock(&dig_port->tc_lock);
 
-- 
2.34.1

