Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0775C6C6AAF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:20:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 431F08908B;
	Thu, 23 Mar 2023 14:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3FB610EAAE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581245; x=1711117245;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JYOzc/MfGLN0ua9wY03lxvzmYcM3JNj4C1/VWhW3Kfs=;
 b=C4Uz97Em9aiIeO/oy72WSZ2F12czFNAlE+wQrzsLsbB2xF9T+xYv+vlJ
 MNm77Qr4VSfEGZfhq838aeyNockQeT99YO/gISxQfjYj5Fi/i0akBMPrM
 DQPWAuYb+Gsgh9MaX1i4Up1c6hAjuVwgm29pbBAg5jKNFXpIIm21374AH
 yhbwB/jTXKbq8CqILSmw2S4fU0oBIXSdWQXNTElDiEkHvpOo/B6kdLQya
 72dYArLhjJcf2LVM8iIqqNbI3pOYdug5NEkokKC+/Fcr1ZBcOg0rqD3cH
 Vxtv5Z6Go7pI4hpSkcTeigO0ZOh9xSjqOtw+slED9QKUBvsYUELumPFNq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892263"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892263"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722629"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722629"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:44 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:11 +0200
Message-Id: <20230323142035.1432621-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/29] drm/i915/tc: Move TC port fields to a new
 intel_tc_port struct
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

Move the TC port specific fields from intel_digital_port to a new
intel_tc_port struct. Pass an intel_tc_port pointer to all static
functions in intel_tc.c keeping dig_port accessible for these via a
pointer stored in the new struct.

The next patch will allocate the intel_tc_port dynamically, allowing
moving the struct definition to intel_tc.c.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h  |   7 -
 .../drm/i915/display/intel_display_types.h    |  13 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 578 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_tc.h       |  26 +
 4 files changed, 335 insertions(+), 289 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 596fd3ec19838..287159bdeb0d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -164,13 +164,6 @@ enum tc_port {
 	I915_MAX_TC_PORTS
 };
 
-enum tc_port_mode {
-	TC_PORT_DISCONNECTED,
-	TC_PORT_TBT_ALT,
-	TC_PORT_DP_ALT,
-	TC_PORT_LEGACY,
-};
-
 enum aux_ch {
 	AUX_CH_NONE = -1,
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ab146b5b68bd5..0130c7b7f0232 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -54,6 +54,7 @@
 #include "intel_display_power.h"
 #include "intel_dpll_mgr.h"
 #include "intel_wm_types.h"
+#include "intel_tc.h"
 
 struct drm_printer;
 struct __intel_global_objs_state;
@@ -1780,17 +1781,7 @@ struct intel_digital_port {
 	intel_wakeref_t ddi_io_wakeref;
 	intel_wakeref_t aux_wakeref;
 
-	struct mutex tc_lock;	/* protects the TypeC port mode */
-	intel_wakeref_t tc_lock_wakeref;
-	enum intel_display_power_domain tc_lock_power_domain;
-	struct delayed_work tc_disconnect_phy_work;
-	int tc_link_refcount;
-	bool tc_legacy_port:1;
-	char tc_port_name[8];
-	enum tc_port_mode tc_mode;
-	enum tc_port_mode tc_init_mode;
-	enum phy_fia tc_phy_fia;
-	u8 tc_phy_fia_idx;
+	struct intel_tc_port tc;
 
 	/* protects num_hdcp_streams reference count, hdcp_port_data and hdcp_auth_status */
 	struct mutex hdcp_mutex;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index d2afe8b65beee..70771044a2fe8 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -15,9 +15,9 @@
 #include "intel_mg_phy_regs.h"
 #include "intel_tc.h"
 
-static u32 tc_phy_hpd_live_status(struct intel_digital_port *dig_port);
-static bool tc_phy_is_ready(struct intel_digital_port *dig_port);
-static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take);
+static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc);
+static bool tc_phy_is_ready(struct intel_tc_port *tc);
+static bool tc_phy_take_ownership(struct intel_tc_port *tc, bool take);
 
 static const char *tc_port_mode_name(enum tc_port_mode mode)
 {
@@ -34,13 +34,24 @@ static const char *tc_port_mode_name(enum tc_port_mode mode)
 	return names[mode];
 }
 
+static struct intel_tc_port *to_tc_port(struct intel_digital_port *dig_port)
+{
+	return &dig_port->tc;
+}
+
+static struct drm_i915_private *tc_to_i915(struct intel_tc_port *tc)
+{
+	return to_i915(tc->dig_port->base.base.dev);
+}
+
 static bool intel_tc_port_in_mode(struct intel_digital_port *dig_port,
 				  enum tc_port_mode mode)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 
-	return intel_phy_is_tc(i915, phy) && dig_port->tc_mode == mode;
+	return intel_phy_is_tc(i915, phy) && tc->mode == mode;
 }
 
 bool intel_tc_port_in_tbt_alt_mode(struct intel_digital_port *dig_port)
@@ -61,15 +72,17 @@ bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port)
 bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 
-	return (DISPLAY_VER(i915) == 11 && dig_port->tc_legacy_port) ||
+	return (DISPLAY_VER(i915) == 11 && tc->legacy_port) ||
 		IS_ALDERLAKE_P(i915);
 }
 
 static enum intel_display_power_domain
-tc_cold_get_power_domain(struct intel_digital_port *dig_port, enum tc_port_mode mode)
+tc_cold_get_power_domain(struct intel_tc_port *tc, enum tc_port_mode mode)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_digital_port *dig_port = tc->dig_port;
 
 	if (mode == TC_PORT_TBT_ALT || !intel_tc_cold_requires_aux_pw(dig_port))
 		return POWER_DOMAIN_TC_COLD_OFF;
@@ -78,27 +91,27 @@ tc_cold_get_power_domain(struct intel_digital_port *dig_port, enum tc_port_mode
 }
 
 static intel_wakeref_t
-tc_cold_block_in_mode(struct intel_digital_port *dig_port, enum tc_port_mode mode,
+tc_cold_block_in_mode(struct intel_tc_port *tc, enum tc_port_mode mode,
 		      enum intel_display_power_domain *domain)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 
-	*domain = tc_cold_get_power_domain(dig_port, mode);
+	*domain = tc_cold_get_power_domain(tc, mode);
 
 	return intel_display_power_get(i915, *domain);
 }
 
 static intel_wakeref_t
-tc_cold_block(struct intel_digital_port *dig_port, enum intel_display_power_domain *domain)
+tc_cold_block(struct intel_tc_port *tc, enum intel_display_power_domain *domain)
 {
-	return tc_cold_block_in_mode(dig_port, dig_port->tc_mode, domain);
+	return tc_cold_block_in_mode(tc, tc->mode, domain);
 }
 
 static void
-tc_cold_unblock(struct intel_digital_port *dig_port, enum intel_display_power_domain domain,
+tc_cold_unblock(struct intel_tc_port *tc, enum intel_display_power_domain domain,
 		intel_wakeref_t wakeref)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 
 	/*
 	 * wakeref == -1, means some error happened saving save_depot_stack but
@@ -112,73 +125,76 @@ tc_cold_unblock(struct intel_digital_port *dig_port, enum intel_display_power_do
 }
 
 static void
-assert_tc_cold_blocked(struct intel_digital_port *dig_port)
+assert_tc_cold_blocked(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 	bool enabled;
 
 	enabled = intel_display_power_is_enabled(i915,
-						 tc_cold_get_power_domain(dig_port,
-									  dig_port->tc_mode));
+						 tc_cold_get_power_domain(tc,
+									  tc->mode));
 	drm_WARN_ON(&i915->drm, !enabled);
 }
 
 static enum intel_display_power_domain
-tc_port_power_domain(struct intel_digital_port *dig_port)
+tc_port_power_domain(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum tc_port tc_port = intel_port_to_tc(i915, tc->dig_port->base.port);
 
 	return POWER_DOMAIN_PORT_DDI_LANES_TC1 + tc_port - TC_PORT_1;
 }
 
 static void
-assert_tc_port_power_enabled(struct intel_digital_port *dig_port)
+assert_tc_port_power_enabled(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 
 	drm_WARN_ON(&i915->drm,
-		    !intel_display_power_is_enabled(i915, tc_port_power_domain(dig_port)));
+		    !intel_display_power_is_enabled(i915, tc_port_power_domain(tc)));
 }
 
 u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 	u32 lane_mask;
 
-	lane_mask = intel_de_read(i915, PORT_TX_DFLEXDPSP(dig_port->tc_phy_fia));
+	lane_mask = intel_de_read(i915, PORT_TX_DFLEXDPSP(tc->phy_fia));
 
 	drm_WARN_ON(&i915->drm, lane_mask == 0xffffffff);
-	assert_tc_cold_blocked(dig_port);
+	assert_tc_cold_blocked(tc);
 
-	lane_mask &= DP_LANE_ASSIGNMENT_MASK(dig_port->tc_phy_fia_idx);
-	return lane_mask >> DP_LANE_ASSIGNMENT_SHIFT(dig_port->tc_phy_fia_idx);
+	lane_mask &= DP_LANE_ASSIGNMENT_MASK(tc->phy_fia_idx);
+	return lane_mask >> DP_LANE_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
 }
 
 u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 	u32 pin_mask;
 
-	pin_mask = intel_de_read(i915, PORT_TX_DFLEXPA1(dig_port->tc_phy_fia));
+	pin_mask = intel_de_read(i915, PORT_TX_DFLEXPA1(tc->phy_fia));
 
 	drm_WARN_ON(&i915->drm, pin_mask == 0xffffffff);
-	assert_tc_cold_blocked(dig_port);
+	assert_tc_cold_blocked(tc);
 
-	return (pin_mask & DP_PIN_ASSIGNMENT_MASK(dig_port->tc_phy_fia_idx)) >>
-	       DP_PIN_ASSIGNMENT_SHIFT(dig_port->tc_phy_fia_idx);
+	return (pin_mask & DP_PIN_ASSIGNMENT_MASK(tc->phy_fia_idx)) >>
+	       DP_PIN_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
 }
 
 int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 	intel_wakeref_t wakeref;
 	u32 lane_mask;
 
-	if (dig_port->tc_mode != TC_PORT_DP_ALT)
+	if (tc->mode != TC_PORT_DP_ALT)
 		return 4;
 
-	assert_tc_cold_blocked(dig_port);
+	assert_tc_cold_blocked(tc);
 
 	lane_mask = 0;
 	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
@@ -205,45 +221,46 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 	u32 val;
 
 	drm_WARN_ON(&i915->drm,
-		    lane_reversal && dig_port->tc_mode != TC_PORT_LEGACY);
+		    lane_reversal && tc->mode != TC_PORT_LEGACY);
 
-	assert_tc_cold_blocked(dig_port);
+	assert_tc_cold_blocked(tc);
 
-	val = intel_de_read(i915, PORT_TX_DFLEXDPMLE1(dig_port->tc_phy_fia));
-	val &= ~DFLEXDPMLE1_DPMLETC_MASK(dig_port->tc_phy_fia_idx);
+	val = intel_de_read(i915, PORT_TX_DFLEXDPMLE1(tc->phy_fia));
+	val &= ~DFLEXDPMLE1_DPMLETC_MASK(tc->phy_fia_idx);
 
 	switch (required_lanes) {
 	case 1:
 		val |= lane_reversal ?
-			DFLEXDPMLE1_DPMLETC_ML3(dig_port->tc_phy_fia_idx) :
-			DFLEXDPMLE1_DPMLETC_ML0(dig_port->tc_phy_fia_idx);
+			DFLEXDPMLE1_DPMLETC_ML3(tc->phy_fia_idx) :
+			DFLEXDPMLE1_DPMLETC_ML0(tc->phy_fia_idx);
 		break;
 	case 2:
 		val |= lane_reversal ?
-			DFLEXDPMLE1_DPMLETC_ML3_2(dig_port->tc_phy_fia_idx) :
-			DFLEXDPMLE1_DPMLETC_ML1_0(dig_port->tc_phy_fia_idx);
+			DFLEXDPMLE1_DPMLETC_ML3_2(tc->phy_fia_idx) :
+			DFLEXDPMLE1_DPMLETC_ML1_0(tc->phy_fia_idx);
 		break;
 	case 4:
-		val |= DFLEXDPMLE1_DPMLETC_ML3_0(dig_port->tc_phy_fia_idx);
+		val |= DFLEXDPMLE1_DPMLETC_ML3_0(tc->phy_fia_idx);
 		break;
 	default:
 		MISSING_CASE(required_lanes);
 	}
 
-	intel_de_write(i915, PORT_TX_DFLEXDPMLE1(dig_port->tc_phy_fia), val);
+	intel_de_write(i915, PORT_TX_DFLEXDPMLE1(tc->phy_fia), val);
 }
 
-static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
+static void tc_port_fixup_legacy_flag(struct intel_tc_port *tc,
 				      u32 live_status_mask)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 	u32 valid_hpd_mask;
 
-	if (dig_port->tc_legacy_port)
+	if (tc->legacy_port)
 		valid_hpd_mask = BIT(TC_PORT_LEGACY);
 	else
 		valid_hpd_mask = BIT(TC_PORT_DP_ALT) |
@@ -255,34 +272,35 @@ static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
 	/* If live status mismatches the VBT flag, trust the live status. */
 	drm_dbg_kms(&i915->drm,
 		    "Port %s: live status %08x mismatches the legacy port flag %08x, fixing flag\n",
-		    dig_port->tc_port_name, live_status_mask, valid_hpd_mask);
+		    tc->port_name, live_status_mask, valid_hpd_mask);
 
-	dig_port->tc_legacy_port = !dig_port->tc_legacy_port;
+	tc->legacy_port = !tc->legacy_port;
 }
 
 /**
  * ICL TC PHY handlers
  * -------------------
  */
-static u32 icl_tc_phy_hpd_live_status(struct intel_digital_port *dig_port)
+static u32 icl_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_digital_port *dig_port = tc->dig_port;
 	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
 	u32 mask = 0;
 	u32 val;
 
-	val = intel_de_read(i915, PORT_TX_DFLEXDPSP(dig_port->tc_phy_fia));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPSP(tc->phy_fia));
 
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY in TCCOLD, nothing connected\n",
-			    dig_port->tc_port_name);
+			    tc->port_name);
 		return mask;
 	}
 
-	if (val & TC_LIVE_STATE_TBT(dig_port->tc_phy_fia_idx))
+	if (val & TC_LIVE_STATE_TBT(tc->phy_fia_idx))
 		mask |= BIT(TC_PORT_TBT_ALT);
-	if (val & TC_LIVE_STATE_TC(dig_port->tc_phy_fia_idx))
+	if (val & TC_LIVE_STATE_TC(tc->phy_fia_idx))
 		mask |= BIT(TC_PORT_DP_ALT);
 
 	if (intel_de_read(i915, SDEISR) & isr_bit)
@@ -290,7 +308,7 @@ static u32 icl_tc_phy_hpd_live_status(struct intel_digital_port *dig_port)
 
 	/* The sink can be connected only in a single mode. */
 	if (!drm_WARN_ON_ONCE(&i915->drm, hweight32(mask) > 1))
-		tc_port_fixup_legacy_flag(dig_port, mask);
+		tc_port_fixup_legacy_flag(tc, mask);
 
 	return mask;
 }
@@ -303,60 +321,60 @@ static u32 icl_tc_phy_hpd_live_status(struct intel_digital_port *dig_port)
  * owned by the TBT subsystem and so switching the ownership to display is not
  * required.
  */
-static bool icl_tc_phy_is_ready(struct intel_digital_port *dig_port)
+static bool icl_tc_phy_is_ready(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 	u32 val;
 
-	val = intel_de_read(i915, PORT_TX_DFLEXDPPMS(dig_port->tc_phy_fia));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPPMS(tc->phy_fia));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY in TCCOLD, assuming not ready\n",
-			    dig_port->tc_port_name);
+			    tc->port_name);
 		return false;
 	}
 
-	return val & DP_PHY_MODE_STATUS_COMPLETED(dig_port->tc_phy_fia_idx);
+	return val & DP_PHY_MODE_STATUS_COMPLETED(tc->phy_fia_idx);
 }
 
-static bool icl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
+static bool icl_tc_phy_take_ownership(struct intel_tc_port *tc,
 				      bool take)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 	u32 val;
 
-	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(tc->phy_fia));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY in TCCOLD, can't %s ownership\n",
-			    dig_port->tc_port_name, take ? "take" : "release");
+			    tc->port_name, take ? "take" : "release");
 
 		return false;
 	}
 
-	val &= ~DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx);
+	val &= ~DP_PHY_MODE_STATUS_NOT_SAFE(tc->phy_fia_idx);
 	if (take)
-		val |= DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx);
+		val |= DP_PHY_MODE_STATUS_NOT_SAFE(tc->phy_fia_idx);
 
-	intel_de_write(i915, PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia), val);
+	intel_de_write(i915, PORT_TX_DFLEXDPCSSS(tc->phy_fia), val);
 
 	return true;
 }
 
-static bool icl_tc_phy_is_owned(struct intel_digital_port *dig_port)
+static bool icl_tc_phy_is_owned(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 	u32 val;
 
-	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia));
+	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(tc->phy_fia));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY in TCCOLD, assume not owned\n",
-			    dig_port->tc_port_name);
+			    tc->port_name);
 		return false;
 	}
 
-	return val & DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx);
+	return val & DP_PHY_MODE_STATUS_NOT_SAFE(tc->phy_fia_idx);
 }
 
 /*
@@ -370,36 +388,37 @@ static bool icl_tc_phy_is_owned(struct intel_digital_port *dig_port)
  * connect and disconnect to cleanly transfer ownership with the controller and
  * set the type-C power state.
  */
-static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
+static void icl_tc_phy_connect(struct intel_tc_port *tc,
 			       int required_lanes)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_digital_port *dig_port = tc->dig_port;
 	u32 live_status_mask;
 	int max_lanes;
 
-	if (!tc_phy_is_ready(dig_port) &&
-	    !drm_WARN_ON(&i915->drm, dig_port->tc_legacy_port)) {
+	if (!tc_phy_is_ready(tc) &&
+	    !drm_WARN_ON(&i915->drm, tc->legacy_port)) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
-			    dig_port->tc_port_name);
+			    tc->port_name);
 		goto out_set_tbt_alt_mode;
 	}
 
-	live_status_mask = tc_phy_hpd_live_status(dig_port);
+	live_status_mask = tc_phy_hpd_live_status(tc);
 	if (!(live_status_mask & (BIT(TC_PORT_DP_ALT) | BIT(TC_PORT_LEGACY))) &&
-	    !dig_port->tc_legacy_port) {
+	    !tc->legacy_port) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY ownership not required (live status %02x)\n",
-			    dig_port->tc_port_name, live_status_mask);
+			    tc->port_name, live_status_mask);
 		goto out_set_tbt_alt_mode;
 	}
 
-	if (!tc_phy_take_ownership(dig_port, true) &&
-	    !drm_WARN_ON(&i915->drm, dig_port->tc_legacy_port))
+	if (!tc_phy_take_ownership(tc, true) &&
+	    !drm_WARN_ON(&i915->drm, tc->legacy_port))
 		goto out_set_tbt_alt_mode;
 
 	max_lanes = intel_tc_port_fia_max_lane_count(dig_port);
-	if (dig_port->tc_legacy_port) {
+	if (tc->legacy_port) {
 		drm_WARN_ON(&i915->drm, max_lanes != 4);
-		dig_port->tc_mode = TC_PORT_LEGACY;
+		tc->mode = TC_PORT_LEGACY;
 
 		return;
 	}
@@ -408,48 +427,48 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 	 * Now we have to re-check the live state, in case the port recently
 	 * became disconnected. Not necessary for legacy mode.
 	 */
-	if (!(tc_phy_hpd_live_status(dig_port) & BIT(TC_PORT_DP_ALT))) {
+	if (!(tc_phy_hpd_live_status(tc) & BIT(TC_PORT_DP_ALT))) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY sudden disconnect\n",
-			    dig_port->tc_port_name);
+			    tc->port_name);
 		goto out_release_phy;
 	}
 
 	if (max_lanes < required_lanes) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY max lanes %d < required lanes %d\n",
-			    dig_port->tc_port_name,
+			    tc->port_name,
 			    max_lanes, required_lanes);
 		goto out_release_phy;
 	}
 
-	dig_port->tc_mode = TC_PORT_DP_ALT;
+	tc->mode = TC_PORT_DP_ALT;
 
 	return;
 
 out_release_phy:
-	tc_phy_take_ownership(dig_port, false);
+	tc_phy_take_ownership(tc, false);
 out_set_tbt_alt_mode:
-	dig_port->tc_mode = TC_PORT_TBT_ALT;
+	tc->mode = TC_PORT_TBT_ALT;
 }
 
 /*
  * See the comment at the connect function. This implements the Disconnect
  * Flow.
  */
-static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
+static void icl_tc_phy_disconnect(struct intel_tc_port *tc)
 {
-	switch (dig_port->tc_mode) {
+	switch (tc->mode) {
 	case TC_PORT_LEGACY:
 	case TC_PORT_DP_ALT:
-		tc_phy_take_ownership(dig_port, false);
+		tc_phy_take_ownership(tc, false);
 		fallthrough;
 	case TC_PORT_TBT_ALT:
-		dig_port->tc_mode = TC_PORT_DISCONNECTED;
+		tc->mode = TC_PORT_DISCONNECTED;
 		fallthrough;
 	case TC_PORT_DISCONNECTED:
 		break;
 	default:
-		MISSING_CASE(dig_port->tc_mode);
+		MISSING_CASE(tc->mode);
 	}
 }
 
@@ -457,9 +476,10 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
  * ADLP TC PHY handlers
  * --------------------
  */
-static u32 adlp_tc_phy_hpd_live_status(struct intel_digital_port *dig_port)
+static u32 adlp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_digital_port *dig_port = tc->dig_port;
 	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
 	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
 	u32 val, mask = 0;
@@ -480,7 +500,7 @@ static u32 adlp_tc_phy_hpd_live_status(struct intel_digital_port *dig_port)
 
 	/* The sink can be connected only in a single mode. */
 	if (!drm_WARN_ON(&i915->drm, hweight32(mask) > 1))
-		tc_port_fixup_legacy_flag(dig_port, mask);
+		tc_port_fixup_legacy_flag(tc, mask);
 
 	return mask;
 }
@@ -492,28 +512,28 @@ static u32 adlp_tc_phy_hpd_live_status(struct intel_digital_port *dig_port)
  * DP-alt, legacy or nothing). For TBT-alt sinks the PHY is owned by the TBT
  * subsystem and so switching the ownership to display is not required.
  */
-static bool adlp_tc_phy_is_ready(struct intel_digital_port *dig_port)
+static bool adlp_tc_phy_is_ready(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum tc_port tc_port = intel_port_to_tc(i915, tc->dig_port->base.port);
 	u32 val;
 
 	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY in TCCOLD, assuming not ready\n",
-			    dig_port->tc_port_name);
+			    tc->port_name);
 		return false;
 	}
 
 	return val & TCSS_DDI_STATUS_READY;
 }
 
-static bool adlp_tc_phy_take_ownership(struct intel_digital_port *dig_port,
+static bool adlp_tc_phy_take_ownership(struct intel_tc_port *tc,
 				       bool take)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum port port = dig_port->base.port;
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum port port = tc->dig_port->base.port;
 
 	intel_de_rmw(i915, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
 		     take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
@@ -521,10 +541,10 @@ static bool adlp_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 	return true;
 }
 
-static bool adlp_tc_phy_is_owned(struct intel_digital_port *dig_port)
+static bool adlp_tc_phy_is_owned(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum port port = dig_port->base.port;
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum port port = tc->dig_port->base.port;
 	u32 val;
 
 	val = intel_de_read(i915, DDI_BUF_CTL(port));
@@ -535,73 +555,73 @@ static bool adlp_tc_phy_is_owned(struct intel_digital_port *dig_port)
  * Generic TC PHY handlers
  * -----------------------
  */
-static u32 tc_phy_hpd_live_status(struct intel_digital_port *dig_port)
+static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 
 	if (IS_ALDERLAKE_P(i915))
-		return adlp_tc_phy_hpd_live_status(dig_port);
+		return adlp_tc_phy_hpd_live_status(tc);
 
-	return icl_tc_phy_hpd_live_status(dig_port);
+	return icl_tc_phy_hpd_live_status(tc);
 }
 
-static bool tc_phy_is_ready(struct intel_digital_port *dig_port)
+static bool tc_phy_is_ready(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 
 	if (IS_ALDERLAKE_P(i915))
-		return adlp_tc_phy_is_ready(dig_port);
+		return adlp_tc_phy_is_ready(tc);
 
-	return icl_tc_phy_is_ready(dig_port);
+	return icl_tc_phy_is_ready(tc);
 }
 
-static bool tc_phy_is_owned(struct intel_digital_port *dig_port)
+static bool tc_phy_is_owned(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 
 	if (IS_ALDERLAKE_P(i915))
-		return adlp_tc_phy_is_owned(dig_port);
+		return adlp_tc_phy_is_owned(tc);
 
-	return icl_tc_phy_is_owned(dig_port);
+	return icl_tc_phy_is_owned(tc);
 }
 
-static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take)
+static bool tc_phy_take_ownership(struct intel_tc_port *tc, bool take)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 
 	if (IS_ALDERLAKE_P(i915))
-		return adlp_tc_phy_take_ownership(dig_port, take);
+		return adlp_tc_phy_take_ownership(tc, take);
 
-	return icl_tc_phy_take_ownership(dig_port, take);
+	return icl_tc_phy_take_ownership(tc, take);
 }
 
-static bool tc_phy_is_ready_and_owned(struct intel_digital_port *dig_port,
+static bool tc_phy_is_ready_and_owned(struct intel_tc_port *tc,
 				      bool phy_is_ready, bool phy_is_owned)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 
 	drm_WARN_ON(&i915->drm, phy_is_owned && !phy_is_ready);
 
 	return phy_is_ready && phy_is_owned;
 }
 
-static bool tc_phy_is_connected(struct intel_digital_port *dig_port,
+static bool tc_phy_is_connected(struct intel_tc_port *tc,
 				enum icl_port_dpll_id port_pll_type)
 {
-	struct intel_encoder *encoder = &dig_port->base;
+	struct intel_encoder *encoder = &tc->dig_port->base;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	bool phy_is_ready = tc_phy_is_ready(dig_port);
-	bool phy_is_owned = tc_phy_is_owned(dig_port);
+	bool phy_is_ready = tc_phy_is_ready(tc);
+	bool phy_is_owned = tc_phy_is_owned(tc);
 	bool is_connected;
 
-	if (tc_phy_is_ready_and_owned(dig_port, phy_is_ready, phy_is_owned))
+	if (tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned))
 		is_connected = port_pll_type == ICL_PORT_DPLL_MG_PHY;
 	else
 		is_connected = port_pll_type == ICL_PORT_DPLL_DEFAULT;
 
 	drm_dbg_kms(&i915->drm,
 		    "Port %s: PHY connected: %s (ready: %s, owned: %s, pll_type: %s)\n",
-		    dig_port->tc_port_name,
+		    tc->port_name,
 		    str_yes_no(is_connected),
 		    str_yes_no(phy_is_ready),
 		    str_yes_no(phy_is_owned),
@@ -610,13 +630,13 @@ static bool tc_phy_is_connected(struct intel_digital_port *dig_port,
 	return is_connected;
 }
 
-static void tc_phy_wait_for_ready(struct intel_digital_port *dig_port)
+static void tc_phy_wait_for_ready(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 
-	if (wait_for(tc_phy_is_ready(dig_port), 100))
+	if (wait_for(tc_phy_is_ready(tc), 100))
 		drm_err(&i915->drm, "Port %s: timeout waiting for PHY ready\n",
-			dig_port->tc_port_name);
+			tc->port_name);
 }
 
 static enum tc_port_mode
@@ -629,15 +649,15 @@ hpd_mask_to_tc_mode(u32 live_status_mask)
 }
 
 static enum tc_port_mode
-tc_phy_hpd_live_mode(struct intel_digital_port *dig_port)
+tc_phy_hpd_live_mode(struct intel_tc_port *tc)
 {
-	u32 live_status_mask = tc_phy_hpd_live_status(dig_port);
+	u32 live_status_mask = tc_phy_hpd_live_status(tc);
 
 	return hpd_mask_to_tc_mode(live_status_mask);
 }
 
 static enum tc_port_mode
-get_tc_mode_in_phy_owned_state(struct intel_digital_port *dig_port,
+get_tc_mode_in_phy_owned_state(struct intel_tc_port *tc,
 			       enum tc_port_mode live_mode)
 {
 	switch (live_mode) {
@@ -649,7 +669,7 @@ get_tc_mode_in_phy_owned_state(struct intel_digital_port *dig_port,
 		fallthrough;
 	case TC_PORT_TBT_ALT:
 	case TC_PORT_DISCONNECTED:
-		if (dig_port->tc_legacy_port)
+		if (tc->legacy_port)
 			return TC_PORT_LEGACY;
 		else
 			return TC_PORT_DP_ALT;
@@ -657,7 +677,7 @@ get_tc_mode_in_phy_owned_state(struct intel_digital_port *dig_port,
 }
 
 static enum tc_port_mode
-get_tc_mode_in_phy_not_owned_state(struct intel_digital_port *dig_port,
+get_tc_mode_in_phy_not_owned_state(struct intel_tc_port *tc,
 				   enum tc_port_mode live_mode)
 {
 	switch (live_mode) {
@@ -670,7 +690,7 @@ get_tc_mode_in_phy_not_owned_state(struct intel_digital_port *dig_port,
 		MISSING_CASE(live_mode);
 		fallthrough;
 	case TC_PORT_DISCONNECTED:
-		if (dig_port->tc_legacy_port)
+		if (tc->legacy_port)
 			return TC_PORT_DISCONNECTED;
 		else
 			return TC_PORT_TBT_ALT;
@@ -678,10 +698,10 @@ get_tc_mode_in_phy_not_owned_state(struct intel_digital_port *dig_port,
 }
 
 static enum tc_port_mode
-tc_phy_get_current_mode(struct intel_digital_port *dig_port)
+tc_phy_get_current_mode(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum tc_port_mode live_mode = tc_phy_hpd_live_mode(dig_port);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum tc_port_mode live_mode = tc_phy_hpd_live_mode(tc);
 	bool phy_is_ready;
 	bool phy_is_owned;
 	enum tc_port_mode mode;
@@ -691,22 +711,22 @@ tc_phy_get_current_mode(struct intel_digital_port *dig_port)
 	 * and system resume whether or not a sink is connected. Wait here for
 	 * the initialization to get ready.
 	 */
-	if (dig_port->tc_legacy_port)
-		tc_phy_wait_for_ready(dig_port);
+	if (tc->legacy_port)
+		tc_phy_wait_for_ready(tc);
 
-	phy_is_ready = tc_phy_is_ready(dig_port);
-	phy_is_owned = tc_phy_is_owned(dig_port);
+	phy_is_ready = tc_phy_is_ready(tc);
+	phy_is_owned = tc_phy_is_owned(tc);
 
-	if (!tc_phy_is_ready_and_owned(dig_port, phy_is_ready, phy_is_owned)) {
-		mode = get_tc_mode_in_phy_not_owned_state(dig_port, live_mode);
+	if (!tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned)) {
+		mode = get_tc_mode_in_phy_not_owned_state(tc, live_mode);
 	} else {
 		drm_WARN_ON(&i915->drm, live_mode == TC_PORT_TBT_ALT);
-		mode = get_tc_mode_in_phy_owned_state(dig_port, live_mode);
+		mode = get_tc_mode_in_phy_owned_state(tc, live_mode);
 	}
 
 	drm_dbg_kms(&i915->drm,
 		    "Port %s: PHY mode: %s (ready: %s, owned: %s, HPD: %s)\n",
-		    dig_port->tc_port_name,
+		    tc->port_name,
 		    tc_port_mode_name(mode),
 		    str_yes_no(phy_is_ready),
 		    str_yes_no(phy_is_owned),
@@ -715,38 +735,39 @@ tc_phy_get_current_mode(struct intel_digital_port *dig_port)
 	return mode;
 }
 
-static enum tc_port_mode default_tc_mode(struct intel_digital_port *dig_port)
+static enum tc_port_mode default_tc_mode(struct intel_tc_port *tc)
 {
-	if (dig_port->tc_legacy_port)
+	if (tc->legacy_port)
 		return TC_PORT_LEGACY;
 
 	return TC_PORT_TBT_ALT;
 }
 
 static enum tc_port_mode
-hpd_mask_to_target_mode(struct intel_digital_port *dig_port, u32 live_status_mask)
+hpd_mask_to_target_mode(struct intel_tc_port *tc, u32 live_status_mask)
 {
 	enum tc_port_mode mode = hpd_mask_to_tc_mode(live_status_mask);
 
 	if (mode != TC_PORT_DISCONNECTED)
 		return mode;
 
-	return default_tc_mode(dig_port);
+	return default_tc_mode(tc);
 }
 
 static enum tc_port_mode
-tc_phy_get_target_mode(struct intel_digital_port *dig_port)
+tc_phy_get_target_mode(struct intel_tc_port *tc)
 {
-	u32 live_status_mask = tc_phy_hpd_live_status(dig_port);
+	u32 live_status_mask = tc_phy_hpd_live_status(tc);
 
-	return hpd_mask_to_target_mode(dig_port, live_status_mask);
+	return hpd_mask_to_target_mode(tc, live_status_mask);
 }
 
-static void intel_tc_port_reset_mode(struct intel_digital_port *dig_port,
+static void intel_tc_port_reset_mode(struct intel_tc_port *tc,
 				     int required_lanes, bool force_disconnect)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum tc_port_mode old_tc_mode = dig_port->tc_mode;
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_digital_port *dig_port = tc->dig_port;
+	enum tc_port_mode old_tc_mode = tc->mode;
 
 	intel_display_power_flush_work(i915);
 	if (!intel_tc_cold_requires_aux_pw(dig_port)) {
@@ -758,22 +779,22 @@ static void intel_tc_port_reset_mode(struct intel_digital_port *dig_port,
 		drm_WARN_ON(&i915->drm, aux_powered);
 	}
 
-	icl_tc_phy_disconnect(dig_port);
+	icl_tc_phy_disconnect(tc);
 	if (!force_disconnect)
-		icl_tc_phy_connect(dig_port, required_lanes);
+		icl_tc_phy_connect(tc, required_lanes);
 
 	drm_dbg_kms(&i915->drm, "Port %s: TC port mode reset (%s -> %s)\n",
-		    dig_port->tc_port_name,
+		    tc->port_name,
 		    tc_port_mode_name(old_tc_mode),
-		    tc_port_mode_name(dig_port->tc_mode));
+		    tc_port_mode_name(tc->mode));
 }
 
-static bool intel_tc_port_needs_reset(struct intel_digital_port *dig_port)
+static bool intel_tc_port_needs_reset(struct intel_tc_port *tc)
 {
-	return tc_phy_get_target_mode(dig_port) != dig_port->tc_mode;
+	return tc_phy_get_target_mode(tc) != tc->mode;
 }
 
-static void intel_tc_port_update_mode(struct intel_digital_port *dig_port,
+static void intel_tc_port_update_mode(struct intel_tc_port *tc,
 				      int required_lanes, bool force_disconnect)
 {
 	enum intel_display_power_domain domain;
@@ -782,44 +803,44 @@ static void intel_tc_port_update_mode(struct intel_digital_port *dig_port,
 
 	if (!needs_reset) {
 		/* Get power domain required to check the hotplug live status. */
-		wref = tc_cold_block(dig_port, &domain);
-		needs_reset = intel_tc_port_needs_reset(dig_port);
-		tc_cold_unblock(dig_port, domain, wref);
+		wref = tc_cold_block(tc, &domain);
+		needs_reset = intel_tc_port_needs_reset(tc);
+		tc_cold_unblock(tc, domain, wref);
 	}
 
 	if (!needs_reset)
 		return;
 
 	/* Get power domain required for resetting the mode. */
-	wref = tc_cold_block_in_mode(dig_port, TC_PORT_DISCONNECTED, &domain);
+	wref = tc_cold_block_in_mode(tc, TC_PORT_DISCONNECTED, &domain);
 
-	intel_tc_port_reset_mode(dig_port, required_lanes, force_disconnect);
+	intel_tc_port_reset_mode(tc, required_lanes, force_disconnect);
 
 	/* Get power domain matching the new mode after reset. */
-	tc_cold_unblock(dig_port, dig_port->tc_lock_power_domain,
-			fetch_and_zero(&dig_port->tc_lock_wakeref));
-	if (dig_port->tc_mode != TC_PORT_DISCONNECTED)
-		dig_port->tc_lock_wakeref = tc_cold_block(dig_port,
-							  &dig_port->tc_lock_power_domain);
+	tc_cold_unblock(tc, tc->lock_power_domain,
+			fetch_and_zero(&tc->lock_wakeref));
+	if (tc->mode != TC_PORT_DISCONNECTED)
+		tc->lock_wakeref = tc_cold_block(tc, &tc->lock_power_domain);
 
-	tc_cold_unblock(dig_port, domain, wref);
+	tc_cold_unblock(tc, domain, wref);
 }
 
-static void __intel_tc_port_get_link(struct intel_digital_port *dig_port)
+static void __intel_tc_port_get_link(struct intel_tc_port *tc)
 {
-	dig_port->tc_link_refcount++;
+	tc->link_refcount++;
 }
 
-static void __intel_tc_port_put_link(struct intel_digital_port *dig_port)
+static void __intel_tc_port_put_link(struct intel_tc_port *tc)
 {
-	dig_port->tc_link_refcount--;
+	tc->link_refcount--;
 }
 
-static bool tc_port_is_enabled(struct intel_digital_port *dig_port)
+static bool tc_port_is_enabled(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_digital_port *dig_port = tc->dig_port;
 
-	assert_tc_port_power_enabled(dig_port);
+	assert_tc_port_power_enabled(tc);
 
 	return intel_de_read(i915, DDI_BUF_CTL(dig_port->base.port)) &
 	       DDI_BUF_CTL_ENABLE;
@@ -835,27 +856,28 @@ static bool tc_port_is_enabled(struct intel_digital_port *dig_port)
 void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 	intel_wakeref_t tc_cold_wref;
 	enum intel_display_power_domain domain;
 	bool update_mode = false;
 
-	mutex_lock(&dig_port->tc_lock);
+	mutex_lock(&tc->lock);
 
-	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_DISCONNECTED);
-	drm_WARN_ON(&i915->drm, dig_port->tc_lock_wakeref);
-	drm_WARN_ON(&i915->drm, dig_port->tc_link_refcount);
+	drm_WARN_ON(&i915->drm, tc->mode != TC_PORT_DISCONNECTED);
+	drm_WARN_ON(&i915->drm, tc->lock_wakeref);
+	drm_WARN_ON(&i915->drm, tc->link_refcount);
 
-	tc_cold_wref = tc_cold_block(dig_port, &domain);
+	tc_cold_wref = tc_cold_block(tc, &domain);
 
-	dig_port->tc_mode = tc_phy_get_current_mode(dig_port);
+	tc->mode = tc_phy_get_current_mode(tc);
 	/*
 	 * Save the initial mode for the state check in
 	 * intel_tc_port_sanitize_mode().
 	 */
-	dig_port->tc_init_mode = dig_port->tc_mode;
-	if (dig_port->tc_mode != TC_PORT_DISCONNECTED)
-		dig_port->tc_lock_wakeref =
-			tc_cold_block(dig_port, &dig_port->tc_lock_power_domain);
+	tc->init_mode = tc->mode;
+	if (tc->mode != TC_PORT_DISCONNECTED)
+		tc->lock_wakeref =
+			tc_cold_block(tc, &tc->lock_power_domain);
 
 	/*
 	 * The PHY needs to be connected for AUX to work during HW readout and
@@ -868,31 +890,32 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 	 * cause a problem as the PHY ownership state is ignored by the
 	 * IOM/TCSS firmware (only display can own the PHY in that case).
 	 */
-	if (!tc_port_is_enabled(dig_port)) {
+	if (!tc_port_is_enabled(tc)) {
 		update_mode = true;
-	} else if (dig_port->tc_mode == TC_PORT_DISCONNECTED) {
-		drm_WARN_ON(&i915->drm, !dig_port->tc_legacy_port);
+	} else if (tc->mode == TC_PORT_DISCONNECTED) {
+		drm_WARN_ON(&i915->drm, !tc->legacy_port);
 		drm_err(&i915->drm,
 			"Port %s: PHY disconnected on enabled port, connecting it\n",
-			dig_port->tc_port_name);
+			tc->port_name);
 		update_mode = true;
 	}
 
 	if (update_mode)
-		intel_tc_port_update_mode(dig_port, 1, false);
+		intel_tc_port_update_mode(tc, 1, false);
 
-	/* Prevent changing dig_port->tc_mode until intel_tc_port_sanitize_mode() is called. */
-	__intel_tc_port_get_link(dig_port);
+	/* Prevent changing tc->mode until intel_tc_port_sanitize_mode() is called. */
+	__intel_tc_port_get_link(tc);
 
-	tc_cold_unblock(dig_port, domain, tc_cold_wref);
+	tc_cold_unblock(tc, domain, tc_cold_wref);
 
-	mutex_unlock(&dig_port->tc_lock);
+	mutex_unlock(&tc->lock);
 }
 
-static bool tc_port_has_active_links(struct intel_digital_port *dig_port,
+static bool tc_port_has_active_links(struct intel_tc_port *tc,
 				     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_digital_port *dig_port = tc->dig_port;
 	enum icl_port_dpll_id pll_type = ICL_PORT_DPLL_DEFAULT;
 	int active_links = 0;
 
@@ -904,10 +927,10 @@ static bool tc_port_has_active_links(struct intel_digital_port *dig_port,
 		active_links = 1;
 	}
 
-	if (active_links && !tc_phy_is_connected(dig_port, pll_type))
+	if (active_links && !tc_phy_is_connected(tc, pll_type))
 		drm_err(&i915->drm,
 			"Port %s: PHY disconnected with %d active link(s)\n",
-			dig_port->tc_port_name, active_links);
+			tc->port_name, active_links);
 
 	return active_links;
 }
@@ -928,35 +951,36 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 
-	mutex_lock(&dig_port->tc_lock);
+	mutex_lock(&tc->lock);
 
-	drm_WARN_ON(&i915->drm, dig_port->tc_link_refcount != 1);
-	if (!tc_port_has_active_links(dig_port, crtc_state)) {
+	drm_WARN_ON(&i915->drm, tc->link_refcount != 1);
+	if (!tc_port_has_active_links(tc, crtc_state)) {
 		/*
 		 * TBT-alt is the default mode in any case the PHY ownership is not
 		 * held (regardless of the sink's connected live state), so
 		 * we'll just switch to disconnected mode from it here without
 		 * a note.
 		 */
-		if (dig_port->tc_init_mode != TC_PORT_TBT_ALT &&
-		    dig_port->tc_init_mode != TC_PORT_DISCONNECTED)
+		if (tc->init_mode != TC_PORT_TBT_ALT &&
+		    tc->init_mode != TC_PORT_DISCONNECTED)
 			drm_dbg_kms(&i915->drm,
 				    "Port %s: PHY left in %s mode on disabled port, disconnecting it\n",
-				    dig_port->tc_port_name,
-				    tc_port_mode_name(dig_port->tc_init_mode));
-		icl_tc_phy_disconnect(dig_port);
-		__intel_tc_port_put_link(dig_port);
+				    tc->port_name,
+				    tc_port_mode_name(tc->init_mode));
+		icl_tc_phy_disconnect(tc);
+		__intel_tc_port_put_link(tc);
 
-		tc_cold_unblock(dig_port, dig_port->tc_lock_power_domain,
-				fetch_and_zero(&dig_port->tc_lock_wakeref));
+		tc_cold_unblock(tc, tc->lock_power_domain,
+				fetch_and_zero(&tc->lock_wakeref));
 	}
 
 	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
-		    dig_port->tc_port_name,
-		    tc_port_mode_name(dig_port->tc_mode));
+		    tc->port_name,
+		    tc_port_mode_name(tc->mode));
 
-	mutex_unlock(&dig_port->tc_lock);
+	mutex_unlock(&tc->lock);
 }
 
 /*
@@ -973,10 +997,11 @@ bool intel_tc_port_connected_locked(struct intel_encoder *encoder)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 
 	drm_WARN_ON(&i915->drm, !intel_tc_port_ref_held(dig_port));
 
-	return tc_phy_hpd_live_status(dig_port) & BIT(dig_port->tc_mode);
+	return tc_phy_hpd_live_status(tc) & BIT(tc->mode);
 }
 
 bool intel_tc_port_connected(struct intel_encoder *encoder)
@@ -991,27 +1016,27 @@ bool intel_tc_port_connected(struct intel_encoder *encoder)
 	return is_connected;
 }
 
-static void __intel_tc_port_lock(struct intel_digital_port *dig_port,
+static void __intel_tc_port_lock(struct intel_tc_port *tc,
 				 int required_lanes)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct drm_i915_private *i915 = tc_to_i915(tc);
 
-	mutex_lock(&dig_port->tc_lock);
+	mutex_lock(&tc->lock);
 
-	cancel_delayed_work(&dig_port->tc_disconnect_phy_work);
+	cancel_delayed_work(&tc->disconnect_phy_work);
 
-	if (!dig_port->tc_link_refcount)
-		intel_tc_port_update_mode(dig_port, required_lanes,
+	if (!tc->link_refcount)
+		intel_tc_port_update_mode(tc, required_lanes,
 					  false);
 
-	drm_WARN_ON(&i915->drm, dig_port->tc_mode == TC_PORT_DISCONNECTED);
-	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_TBT_ALT &&
-				!tc_phy_is_owned(dig_port));
+	drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_DISCONNECTED);
+	drm_WARN_ON(&i915->drm, tc->mode != TC_PORT_TBT_ALT &&
+				!tc_phy_is_owned(tc));
 }
 
 void intel_tc_port_lock(struct intel_digital_port *dig_port)
 {
-	__intel_tc_port_lock(dig_port, 1);
+	__intel_tc_port_lock(to_tc_port(dig_port), 1);
 }
 
 /**
@@ -1024,15 +1049,15 @@ void intel_tc_port_lock(struct intel_digital_port *dig_port)
  */
 static void intel_tc_port_disconnect_phy_work(struct work_struct *work)
 {
-	struct intel_digital_port *dig_port =
-		container_of(work, struct intel_digital_port, tc_disconnect_phy_work.work);
+	struct intel_tc_port *tc =
+		container_of(work, struct intel_tc_port, disconnect_phy_work.work);
 
-	mutex_lock(&dig_port->tc_lock);
+	mutex_lock(&tc->lock);
 
-	if (!dig_port->tc_link_refcount)
-		intel_tc_port_update_mode(dig_port, 1, true);
+	if (!tc->link_refcount)
+		intel_tc_port_update_mode(tc, 1, true);
 
-	mutex_unlock(&dig_port->tc_lock);
+	mutex_unlock(&tc->lock);
 }
 
 /**
@@ -1043,36 +1068,44 @@ static void intel_tc_port_disconnect_phy_work(struct work_struct *work)
  */
 void intel_tc_port_flush_work(struct intel_digital_port *dig_port)
 {
-	flush_delayed_work(&dig_port->tc_disconnect_phy_work);
+	flush_delayed_work(&to_tc_port(dig_port)->disconnect_phy_work);
 }
 
 void intel_tc_port_unlock(struct intel_digital_port *dig_port)
 {
-	if (!dig_port->tc_link_refcount && dig_port->tc_mode != TC_PORT_DISCONNECTED)
-		queue_delayed_work(system_unbound_wq, &dig_port->tc_disconnect_phy_work,
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
+	if (!tc->link_refcount && tc->mode != TC_PORT_DISCONNECTED)
+		queue_delayed_work(system_unbound_wq, &tc->disconnect_phy_work,
 				   msecs_to_jiffies(1000));
 
-	mutex_unlock(&dig_port->tc_lock);
+	mutex_unlock(&tc->lock);
 }
 
 bool intel_tc_port_ref_held(struct intel_digital_port *dig_port)
 {
-	return mutex_is_locked(&dig_port->tc_lock) ||
-	       dig_port->tc_link_refcount;
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
+	return mutex_is_locked(&tc->lock) ||
+	       tc->link_refcount;
 }
 
 void intel_tc_port_get_link(struct intel_digital_port *dig_port,
 			    int required_lanes)
 {
-	__intel_tc_port_lock(dig_port, required_lanes);
-	__intel_tc_port_get_link(dig_port);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
+	__intel_tc_port_lock(tc, required_lanes);
+	__intel_tc_port_get_link(tc);
 	intel_tc_port_unlock(dig_port);
 }
 
 void intel_tc_port_put_link(struct intel_digital_port *dig_port)
 {
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
 	intel_tc_port_lock(dig_port);
-	__intel_tc_port_put_link(dig_port);
+	__intel_tc_port_put_link(tc);
 	intel_tc_port_unlock(dig_port);
 
 	/*
@@ -1085,7 +1118,7 @@ void intel_tc_port_put_link(struct intel_digital_port *dig_port)
 }
 
 static bool
-tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig_port)
+tc_has_modular_fia(struct drm_i915_private *i915, struct intel_tc_port *tc)
 {
 	enum intel_display_power_domain domain;
 	intel_wakeref_t wakeref;
@@ -1094,11 +1127,11 @@ tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig
 	if (!INTEL_INFO(i915)->display.has_modular_fia)
 		return false;
 
-	mutex_lock(&dig_port->tc_lock);
-	wakeref = tc_cold_block(dig_port, &domain);
+	mutex_lock(&tc->lock);
+	wakeref = tc_cold_block(tc, &domain);
 	val = intel_de_read(i915, PORT_TX_DFLEXDPSP(FIA1));
-	tc_cold_unblock(dig_port, domain, wakeref);
-	mutex_unlock(&dig_port->tc_lock);
+	tc_cold_unblock(tc, domain, wakeref);
+	mutex_unlock(&tc->lock);
 
 	drm_WARN_ON(&i915->drm, val == 0xffffffff);
 
@@ -1106,42 +1139,45 @@ tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig
 }
 
 static void
-tc_port_load_fia_params(struct drm_i915_private *i915, struct intel_digital_port *dig_port)
+tc_port_load_fia_params(struct drm_i915_private *i915, struct intel_tc_port *tc)
 {
-	enum port port = dig_port->base.port;
+	enum port port = tc->dig_port->base.port;
 	enum tc_port tc_port = intel_port_to_tc(i915, port);
 
 	/*
 	 * Each Modular FIA instance houses 2 TC ports. In SOC that has more
 	 * than two TC ports, there are multiple instances of Modular FIA.
 	 */
-	if (tc_has_modular_fia(i915, dig_port)) {
-		dig_port->tc_phy_fia = tc_port / 2;
-		dig_port->tc_phy_fia_idx = tc_port % 2;
+	if (tc_has_modular_fia(i915, tc)) {
+		tc->phy_fia = tc_port / 2;
+		tc->phy_fia_idx = tc_port % 2;
 	} else {
-		dig_port->tc_phy_fia = FIA1;
-		dig_port->tc_phy_fia_idx = tc_port;
+		tc->phy_fia = FIA1;
+		tc->phy_fia_idx = tc_port;
 	}
 }
 
 void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 	enum port port = dig_port->base.port;
 	enum tc_port tc_port = intel_port_to_tc(i915, port);
 
 	if (drm_WARN_ON(&i915->drm, tc_port == TC_PORT_NONE))
 		return;
 
-	snprintf(dig_port->tc_port_name, sizeof(dig_port->tc_port_name),
+	tc->dig_port = dig_port;
+
+	snprintf(tc->port_name, sizeof(tc->port_name),
 		 "%c/TC#%d", port_name(port), tc_port + 1);
 
-	mutex_init(&dig_port->tc_lock);
-	INIT_DELAYED_WORK(&dig_port->tc_disconnect_phy_work, intel_tc_port_disconnect_phy_work);
-	dig_port->tc_legacy_port = is_legacy;
-	dig_port->tc_mode = TC_PORT_DISCONNECTED;
-	dig_port->tc_link_refcount = 0;
-	tc_port_load_fia_params(i915, dig_port);
+	mutex_init(&tc->lock);
+	INIT_DELAYED_WORK(&tc->disconnect_phy_work, intel_tc_port_disconnect_phy_work);
+	tc->legacy_port = is_legacy;
+	tc->mode = TC_PORT_DISCONNECTED;
+	tc->link_refcount = 0;
+	tc_port_load_fia_params(i915, tc);
 
 	intel_tc_port_init_mode(dig_port);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index 79667d977508c..cc3a7fd4ac102 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -9,10 +9,36 @@
 #include <linux/mutex.h>
 #include <linux/types.h>
 
+#include "intel_display.h"
+#include "intel_display_power.h"
+#include "intel_wakeref.h"
+
 struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_encoder;
 
+enum tc_port_mode {
+	TC_PORT_DISCONNECTED,
+	TC_PORT_TBT_ALT,
+	TC_PORT_DP_ALT,
+	TC_PORT_LEGACY,
+};
+
+struct intel_tc_port {
+	struct intel_digital_port *dig_port;
+	struct mutex lock;	/* protects the TypeC port mode */
+	intel_wakeref_t lock_wakeref;
+	enum intel_display_power_domain lock_power_domain;
+	struct delayed_work disconnect_phy_work;
+	int link_refcount;
+	bool legacy_port:1;
+	char port_name[8];
+	enum tc_port_mode mode;
+	enum tc_port_mode init_mode;
+	enum phy_fia phy_fia;
+	u8 phy_fia_idx;
+};
+
 bool intel_tc_port_in_tbt_alt_mode(struct intel_digital_port *dig_port);
 bool intel_tc_port_in_dp_alt_mode(struct intel_digital_port *dig_port);
 bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port);
-- 
2.37.1

