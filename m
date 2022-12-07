Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED3D645FF9
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:18:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E79EE10E408;
	Wed,  7 Dec 2022 17:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A415D10E414
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670433509; x=1701969509;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hovM3VSlo4kqYg4vxOponQddO44tl2dyK6iaJpsW1tw=;
 b=cweAX/SsTo8NZMndN+vtbE/FDnGExXI32ffeupVWusf/XBY5vXbK8xar
 Enl2ZhfbdneereDHUuDhj+hhqAsf0IErKNRfdAYtvSppTbf1E32rsFoP1
 G1pJSfQMK/ulzjlRkbNk7YirxcLhpKnw7mMe05AqcynwLfKyBcF1cYvim
 fG0i+zBhbMd3kPT7wjIJkZWrhRDRvvGvHrb5U205BuxErDujmOz1nxVAN
 DKdzQHwrUvQZKAbS2Fpr2FXd2RQEhjexfBxTuOm2wTKlvIh9ZJcLg2AnP
 iXNU8UApU17kScn72+ajAJ9ZT5nWxLG8zqYz7PNtu+GyI13mmSYH7RLhx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="300368315"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="300368315"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:18:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="597039806"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="597039806"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:18:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 19:17:28 +0200
Message-Id: <8c29f4f76c2163da309ead0bf48652024f134f11.1670433372.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670433372.git.jani.nikula@intel.com>
References: <cover.1670433372.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/11] drm/i915/tc: switch to intel_de_*
 register accessors in display code
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

Avoid direct uncore use in display code.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 55 ++++++++-----------------
 1 file changed, 18 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 70624b4b2d38..f45328712bff 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_power_map.h"
 #include "intel_display_types.h"
@@ -120,11 +121,9 @@ assert_tc_cold_blocked(struct intel_digital_port *dig_port)
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
@@ -136,11 +135,9 @@ u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
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
@@ -186,7 +183,6 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 val;
 
 	drm_WARN_ON(&i915->drm,
@@ -194,8 +190,7 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 
 	assert_tc_cold_blocked(dig_port);
 
-	val = intel_uncore_read(uncore,
-				PORT_TX_DFLEXDPMLE1(dig_port->tc_phy_fia));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPMLE1(dig_port->tc_phy_fia));
 	val &= ~DFLEXDPMLE1_DPMLETC_MASK(dig_port->tc_phy_fia_idx);
 
 	switch (required_lanes) {
@@ -216,8 +211,7 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 		MISSING_CASE(required_lanes);
 	}
 
-	intel_uncore_write(uncore,
-			   PORT_TX_DFLEXDPMLE1(dig_port->tc_phy_fia), val);
+	intel_de_write(i915, PORT_TX_DFLEXDPMLE1(dig_port->tc_phy_fia), val);
 }
 
 static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
@@ -246,13 +240,11 @@ static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
 static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
 	u32 mask = 0;
 	u32 val;
 
-	val = intel_uncore_read(uncore,
-				PORT_TX_DFLEXDPSP(dig_port->tc_phy_fia));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPSP(dig_port->tc_phy_fia));
 
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
@@ -266,7 +258,7 @@ static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 	if (val & TC_LIVE_STATE_TC(dig_port->tc_phy_fia_idx))
 		mask |= BIT(TC_PORT_DP_ALT);
 
-	if (intel_uncore_read(uncore, SDEISR) & isr_bit)
+	if (intel_de_read(i915, SDEISR) & isr_bit)
 		mask |= BIT(TC_PORT_LEGACY);
 
 	/* The sink can be connected only in a single mode. */
@@ -281,7 +273,6 @@ static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
 	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 val, mask = 0;
 
 	/*
@@ -289,13 +280,13 @@ static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
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
@@ -326,11 +317,9 @@ static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
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
@@ -352,10 +341,9 @@ static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
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
@@ -380,11 +368,9 @@ static bool icl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
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
@@ -397,8 +383,7 @@ static bool icl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 	if (take)
 		val |= DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx);
 
-	intel_uncore_write(uncore,
-			   PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia), val);
+	intel_de_write(i915, PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia), val);
 
 	return true;
 }
@@ -407,11 +392,10 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 				      bool take)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_uncore *uncore = &i915->uncore;
 	enum port port = dig_port->base.port;
 
-	intel_uncore_rmw(uncore, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
-			 take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
+	intel_de_rmw(i915, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
+		     take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
 
 	return true;
 }
@@ -429,11 +413,9 @@ static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take
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
@@ -447,11 +429,10 @@ static bool icl_tc_phy_is_owned(struct intel_digital_port *dig_port)
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
 
@@ -907,7 +888,7 @@ tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig
 
 	mutex_lock(&dig_port->tc_lock);
 	wakeref = tc_cold_block(dig_port, &domain);
-	val = intel_uncore_read(&i915->uncore, PORT_TX_DFLEXDPSP(FIA1));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPSP(FIA1));
 	tc_cold_unblock(dig_port, domain, wakeref);
 	mutex_unlock(&dig_port->tc_lock);
 
-- 
2.34.1

