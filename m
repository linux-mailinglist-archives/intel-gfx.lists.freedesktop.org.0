Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0FDA6B926
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:53:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5707010E792;
	Fri, 21 Mar 2025 10:53:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJ0qP9bK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C77810E797;
 Fri, 21 Mar 2025 10:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742554416; x=1774090416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CD22ocH7uIGNhuaBL9a/PiWDO2fL6gf5S1VgUetuRxc=;
 b=cJ0qP9bKV7ZE0XlHoxVFOJBgojhgQBcPlhqcJJh8D4YZTirhJQPQu9kV
 w2ODWhz6I4ZM9isQRVg5tVBV0HU1R4HKLVCg9FjfWsvF5lPE/LVAxUgv/
 7zCfRix2MEJl2/wI6pwa5HfjQEqxArAP8qmXoAG9zrYOPh79cCX16YVQr
 S2xOCrcxJQnGiK02KMaATeUR/+e1+Ns2ca21SPsuzaGeQwwf0YIoGIF7u
 xPqF8KpJuvlRM2ZUbbR6UT2DNSXLFpk3h8hVccR7Q11S9HhCeadBMZvMn
 TecJfgvXMkHKtD9os0r5o0+vufQDI75kssyugOSn3ER8Tj6IkQEG4pVBy w==;
X-CSE-ConnectionGUID: 86b8s2etRAiDN+m+3iH1CA==
X-CSE-MsgGUID: PLYMURXVTx629CGqThnDrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="54483933"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="54483933"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:36 -0700
X-CSE-ConnectionGUID: lnn0xKpMSaePwx4iz1A6xQ==
X-CSE-MsgGUID: K/ddmc+MToKRSS7v4aRHpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123830124"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/12] drm/i915/tc: convert intel_tc.c to struct intel_display
Date: Fri, 21 Mar 2025 12:52:52 +0200
Message-Id: <bbff21269f348ac72eb749b6cf3f692234bed9f2.1742554320.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742554320.git.jani.nikula@intel.com>
References: <cover.1742554320.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert intel_tc.c to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 265 ++++++++++++------------
 1 file changed, 127 insertions(+), 138 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b8d14ed8a56e..96cf789da05d 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -3,8 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
@@ -92,11 +92,6 @@ static struct intel_tc_port *to_tc_port(struct intel_digital_port *dig_port)
 	return dig_port->tc;
 }
 
-static struct drm_i915_private *tc_to_i915(struct intel_tc_port *tc)
-{
-	return to_i915(tc->dig_port->base.base.dev);
-}
-
 static bool intel_tc_port_in_mode(struct intel_digital_port *dig_port,
 				  enum tc_port_mode mode)
 {
@@ -219,10 +214,11 @@ __tc_cold_unblock(struct intel_tc_port *tc, enum intel_display_power_domain doma
 static void
 tc_cold_unblock(struct intel_tc_port *tc, intel_wakeref_t wakeref)
 {
+	struct intel_display __maybe_unused *display = to_intel_display(tc->dig_port);
 	enum intel_display_power_domain domain = tc_phy_cold_off_domain(tc);
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
-	drm_WARN_ON(&tc_to_i915(tc)->drm, tc->lock_power_domain != domain);
+	drm_WARN_ON(display->drm, tc->lock_power_domain != domain);
 #endif
 	__tc_cold_unblock(tc, domain, wakeref);
 }
@@ -266,13 +262,13 @@ assert_tc_port_power_enabled(struct intel_tc_port *tc)
 
 static u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 	u32 lane_mask;
 
-	lane_mask = intel_de_read(i915, PORT_TX_DFLEXDPSP(tc->phy_fia));
+	lane_mask = intel_de_read(display, PORT_TX_DFLEXDPSP(tc->phy_fia));
 
-	drm_WARN_ON(&i915->drm, lane_mask == 0xffffffff);
+	drm_WARN_ON(display->drm, lane_mask == 0xffffffff);
 	assert_tc_cold_blocked(tc);
 
 	lane_mask &= DP_LANE_ASSIGNMENT_MASK(tc->phy_fia_idx);
@@ -281,13 +277,13 @@ static u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
 
 u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 	u32 pin_mask;
 
-	pin_mask = intel_de_read(i915, PORT_TX_DFLEXPA1(tc->phy_fia));
+	pin_mask = intel_de_read(display, PORT_TX_DFLEXPA1(tc->phy_fia));
 
-	drm_WARN_ON(&i915->drm, pin_mask == 0xffffffff);
+	drm_WARN_ON(display->drm, pin_mask == 0xffffffff);
 	assert_tc_cold_blocked(tc);
 
 	return (pin_mask & DP_PIN_ASSIGNMENT_MASK(tc->phy_fia_idx)) >>
@@ -297,13 +293,12 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
 static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct intel_display *display = to_intel_display(dig_port);
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
 	intel_wakeref_t wakeref;
 	u32 val, pin_assignment;
 
 	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
-		val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
+		val = intel_de_read(display, TCSS_DDI_STATUS(tc_port));
 
 	pin_assignment =
 		REG_FIELD_GET(TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK, val);
@@ -369,7 +364,7 @@ static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 
 int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 
 	if (!intel_encoder_is_tc(&dig_port->base) || tc->mode != TC_PORT_DP_ALT)
@@ -377,10 +372,10 @@ int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 
 	assert_tc_cold_blocked(tc);
 
-	if (DISPLAY_VER(i915) >= 20)
+	if (DISPLAY_VER(display) >= 20)
 		return lnl_tc_port_get_max_lane_count(dig_port);
 
-	if (DISPLAY_VER(i915) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		return mtl_tc_port_get_max_lane_count(dig_port);
 
 	return intel_tc_port_get_max_lane_count(dig_port);
@@ -389,20 +384,20 @@ int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 	bool lane_reversal = dig_port->lane_reversal;
 	u32 val;
 
-	if (DISPLAY_VER(i915) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		return;
 
-	drm_WARN_ON(&i915->drm,
+	drm_WARN_ON(display->drm,
 		    lane_reversal && tc->mode != TC_PORT_LEGACY);
 
 	assert_tc_cold_blocked(tc);
 
-	val = intel_de_read(i915, PORT_TX_DFLEXDPMLE1(tc->phy_fia));
+	val = intel_de_read(display, PORT_TX_DFLEXDPMLE1(tc->phy_fia));
 	val &= ~DFLEXDPMLE1_DPMLETC_MASK(tc->phy_fia_idx);
 
 	switch (required_lanes) {
@@ -423,16 +418,16 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 		MISSING_CASE(required_lanes);
 	}
 
-	intel_de_write(i915, PORT_TX_DFLEXDPMLE1(tc->phy_fia), val);
+	intel_de_write(display, PORT_TX_DFLEXDPMLE1(tc->phy_fia), val);
 }
 
 static void tc_port_fixup_legacy_flag(struct intel_tc_port *tc,
 				      u32 live_status_mask)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	u32 valid_hpd_mask;
 
-	drm_WARN_ON(&i915->drm, tc->mode != TC_PORT_DISCONNECTED);
+	drm_WARN_ON(display->drm, tc->mode != TC_PORT_DISCONNECTED);
 
 	if (hweight32(live_status_mask) != 1)
 		return;
@@ -447,7 +442,7 @@ static void tc_port_fixup_legacy_flag(struct intel_tc_port *tc,
 		return;
 
 	/* If live status mismatches the VBT flag, trust the live status. */
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Port %s: live status %08x mismatches the legacy port flag %08x, fixing flag\n",
 		    tc->port_name, live_status_mask, valid_hpd_mask);
 
@@ -490,21 +485,20 @@ icl_tc_phy_cold_off_domain(struct intel_tc_port *tc)
 static u32 icl_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
-	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
-	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
+	u32 isr_bit = display->hotplug.pch_hpd[dig_port->base.hpd_pin];
 	intel_wakeref_t wakeref;
 	u32 fia_isr;
 	u32 pch_isr;
 	u32 mask = 0;
 
 	with_intel_display_power(display, tc_phy_cold_off_domain(tc), wakeref) {
-		fia_isr = intel_de_read(i915, PORT_TX_DFLEXDPSP(tc->phy_fia));
-		pch_isr = intel_de_read(i915, SDEISR);
+		fia_isr = intel_de_read(display, PORT_TX_DFLEXDPSP(tc->phy_fia));
+		pch_isr = intel_de_read(display, SDEISR);
 	}
 
 	if (fia_isr == 0xffffffff) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Port %s: PHY in TCCOLD, nothing connected\n",
 			    tc->port_name);
 		return mask;
@@ -531,14 +525,14 @@ static u32 icl_tc_phy_hpd_live_status(struct intel_tc_port *tc)
  */
 static bool icl_tc_phy_is_ready(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	u32 val;
 
 	assert_tc_cold_blocked(tc);
 
-	val = intel_de_read(i915, PORT_TX_DFLEXDPPMS(tc->phy_fia));
+	val = intel_de_read(display, PORT_TX_DFLEXDPPMS(tc->phy_fia));
 	if (val == 0xffffffff) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Port %s: PHY in TCCOLD, assuming not ready\n",
 			    tc->port_name);
 		return false;
@@ -550,14 +544,14 @@ static bool icl_tc_phy_is_ready(struct intel_tc_port *tc)
 static bool icl_tc_phy_take_ownership(struct intel_tc_port *tc,
 				      bool take)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	u32 val;
 
 	assert_tc_cold_blocked(tc);
 
-	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(tc->phy_fia));
+	val = intel_de_read(display, PORT_TX_DFLEXDPCSSS(tc->phy_fia));
 	if (val == 0xffffffff) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Port %s: PHY in TCCOLD, can't %s ownership\n",
 			    tc->port_name, take ? "take" : "release");
 
@@ -568,21 +562,21 @@ static bool icl_tc_phy_take_ownership(struct intel_tc_port *tc,
 	if (take)
 		val |= DP_PHY_MODE_STATUS_NOT_SAFE(tc->phy_fia_idx);
 
-	intel_de_write(i915, PORT_TX_DFLEXDPCSSS(tc->phy_fia), val);
+	intel_de_write(display, PORT_TX_DFLEXDPCSSS(tc->phy_fia), val);
 
 	return true;
 }
 
 static bool icl_tc_phy_is_owned(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	u32 val;
 
 	assert_tc_cold_blocked(tc);
 
-	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(tc->phy_fia));
+	val = intel_de_read(display, PORT_TX_DFLEXDPCSSS(tc->phy_fia));
 	if (val == 0xffffffff) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Port %s: PHY in TCCOLD, assume not owned\n",
 			    tc->port_name);
 		return false;
@@ -619,30 +613,30 @@ static void icl_tc_phy_get_hw_state(struct intel_tc_port *tc)
 static bool tc_phy_verify_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
 						int required_lanes)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	int max_lanes;
 
 	max_lanes = intel_tc_port_max_lane_count(dig_port);
 	if (tc->mode == TC_PORT_LEGACY) {
-		drm_WARN_ON(&i915->drm, max_lanes != 4);
+		drm_WARN_ON(display->drm, max_lanes != 4);
 		return true;
 	}
 
-	drm_WARN_ON(&i915->drm, tc->mode != TC_PORT_DP_ALT);
+	drm_WARN_ON(display->drm, tc->mode != TC_PORT_DP_ALT);
 
 	/*
 	 * Now we have to re-check the live state, in case the port recently
 	 * became disconnected. Not necessary for legacy mode.
 	 */
 	if (!(tc_phy_hpd_live_status(tc) & BIT(TC_PORT_DP_ALT))) {
-		drm_dbg_kms(&i915->drm, "Port %s: PHY sudden disconnect\n",
+		drm_dbg_kms(display->drm, "Port %s: PHY sudden disconnect\n",
 			    tc->port_name);
 		return false;
 	}
 
 	if (max_lanes < required_lanes) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Port %s: PHY max lanes %d < required lanes %d\n",
 			    tc->port_name,
 			    max_lanes, required_lanes);
@@ -655,7 +649,7 @@ static bool tc_phy_verify_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
 static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 			       int required_lanes)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 
 	tc->lock_wakeref = tc_cold_block(tc);
 
@@ -664,8 +658,8 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 
 	if ((!tc_phy_is_ready(tc) ||
 	     !icl_tc_phy_take_ownership(tc, true)) &&
-	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
-		drm_dbg_kms(&i915->drm, "Port %s: can't take PHY ownership (ready %s)\n",
+	    !drm_WARN_ON(display->drm, tc->mode == TC_PORT_LEGACY)) {
+		drm_dbg_kms(display->drm, "Port %s: can't take PHY ownership (ready %s)\n",
 			    tc->port_name,
 			    str_yes_no(tc_phy_is_ready(tc)));
 		goto out_unblock_tc_cold;
@@ -733,14 +727,13 @@ tgl_tc_phy_cold_off_domain(struct intel_tc_port *tc)
 static void tgl_tc_phy_init(struct intel_tc_port *tc)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
-	struct drm_i915_private *i915 = tc_to_i915(tc);
 	intel_wakeref_t wakeref;
 	u32 val;
 
 	with_intel_display_power(display, tc_phy_cold_off_domain(tc), wakeref)
-		val = intel_de_read(i915, PORT_TX_DFLEXDPSP(FIA1));
+		val = intel_de_read(display, PORT_TX_DFLEXDPSP(FIA1));
 
-	drm_WARN_ON(&i915->drm, val == 0xffffffff);
+	drm_WARN_ON(display->drm, val == 0xffffffff);
 
 	tc_phy_load_fia_params(tc, val & MODULAR_FIA_MASK);
 }
@@ -775,19 +768,18 @@ adlp_tc_phy_cold_off_domain(struct intel_tc_port *tc)
 static u32 adlp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
-	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	enum hpd_pin hpd_pin = dig_port->base.hpd_pin;
-	u32 cpu_isr_bits = i915->display.hotplug.hpd[hpd_pin];
-	u32 pch_isr_bit = i915->display.hotplug.pch_hpd[hpd_pin];
+	u32 cpu_isr_bits = display->hotplug.hpd[hpd_pin];
+	u32 pch_isr_bit = display->hotplug.pch_hpd[hpd_pin];
 	intel_wakeref_t wakeref;
 	u32 cpu_isr;
 	u32 pch_isr;
 	u32 mask = 0;
 
 	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
-		cpu_isr = intel_de_read(i915, GEN11_DE_HPD_ISR);
-		pch_isr = intel_de_read(i915, SDEISR);
+		cpu_isr = intel_de_read(display, GEN11_DE_HPD_ISR);
+		pch_isr = intel_de_read(display, SDEISR);
 	}
 
 	if (cpu_isr & (cpu_isr_bits & GEN11_DE_TC_HOTPLUG_MASK))
@@ -810,15 +802,15 @@ static u32 adlp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
  */
 static bool adlp_tc_phy_is_ready(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum tc_port tc_port = intel_encoder_to_tc(&tc->dig_port->base);
 	u32 val;
 
 	assert_display_core_power_enabled(tc);
 
-	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
+	val = intel_de_read(display, TCSS_DDI_STATUS(tc_port));
 	if (val == 0xffffffff) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Port %s: PHY in TCCOLD, assuming not ready\n",
 			    tc->port_name);
 		return false;
@@ -830,12 +822,12 @@ static bool adlp_tc_phy_is_ready(struct intel_tc_port *tc)
 static bool adlp_tc_phy_take_ownership(struct intel_tc_port *tc,
 				       bool take)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum port port = tc->dig_port->base.port;
 
 	assert_tc_port_power_enabled(tc);
 
-	intel_de_rmw(i915, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
+	intel_de_rmw(display, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
 		     take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
 
 	return true;
@@ -843,13 +835,13 @@ static bool adlp_tc_phy_take_ownership(struct intel_tc_port *tc,
 
 static bool adlp_tc_phy_is_owned(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum port port = tc->dig_port->base.port;
 	u32 val;
 
 	assert_tc_port_power_enabled(tc);
 
-	val = intel_de_read(i915, DDI_BUF_CTL(port));
+	val = intel_de_read(display, DDI_BUF_CTL(port));
 	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 }
 
@@ -872,7 +864,6 @@ static void adlp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
-	struct drm_i915_private *i915 = tc_to_i915(tc);
 	enum intel_display_power_domain port_power_domain =
 		tc_port_power_domain(tc);
 	intel_wakeref_t port_wakeref;
@@ -885,15 +876,15 @@ static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 	port_wakeref = intel_display_power_get(display, port_power_domain);
 
 	if (!adlp_tc_phy_take_ownership(tc, true) &&
-	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
-		drm_dbg_kms(&i915->drm, "Port %s: can't take PHY ownership\n",
+	    !drm_WARN_ON(display->drm, tc->mode == TC_PORT_LEGACY)) {
+		drm_dbg_kms(display->drm, "Port %s: can't take PHY ownership\n",
 			    tc->port_name);
 		goto out_put_port_power;
 	}
 
 	if (!tc_phy_is_ready(tc) &&
-	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
-		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
+	    !drm_WARN_ON(display->drm, tc->mode == TC_PORT_LEGACY)) {
+		drm_dbg_kms(display->drm, "Port %s: PHY not ready\n",
 			    tc->port_name);
 		goto out_release_phy;
 	}
@@ -965,19 +956,18 @@ static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
 static u32 xelpdp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
-	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	enum hpd_pin hpd_pin = dig_port->base.hpd_pin;
-	u32 pica_isr_bits = i915->display.hotplug.hpd[hpd_pin];
-	u32 pch_isr_bit = i915->display.hotplug.pch_hpd[hpd_pin];
+	u32 pica_isr_bits = display->hotplug.hpd[hpd_pin];
+	u32 pch_isr_bit = display->hotplug.pch_hpd[hpd_pin];
 	intel_wakeref_t wakeref;
 	u32 pica_isr;
 	u32 pch_isr;
 	u32 mask = 0;
 
 	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
-		pica_isr = intel_de_read(i915, PICAINTERRUPT_ISR);
-		pch_isr = intel_de_read(i915, SDEISR);
+		pica_isr = intel_de_read(display, PICAINTERRUPT_ISR);
+		pch_isr = intel_de_read(display, SDEISR);
 	}
 
 	if (pica_isr & (pica_isr_bits & XELPDP_DP_ALT_HOTPLUG_MASK))
@@ -994,22 +984,22 @@ static u32 xelpdp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 static bool
 xelpdp_tc_phy_tcss_power_is_enabled(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum port port = tc->dig_port->base.port;
-	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
+	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
 
 	assert_tc_cold_blocked(tc);
 
-	return intel_de_read(i915, reg) & XELPDP_TCSS_POWER_STATE;
+	return intel_de_read(display, reg) & XELPDP_TCSS_POWER_STATE;
 }
 
 static bool
 xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 
 	if (wait_for(xelpdp_tc_phy_tcss_power_is_enabled(tc) == enabled, 5)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Port %s: timeout waiting for TCSS power to get %s\n",
 			    str_enabled_disabled(enabled),
 			    tc->port_name);
@@ -1069,7 +1059,7 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
 
 static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 
 	__xelpdp_tc_phy_enable_tcss_power(tc, enable);
 
@@ -1082,7 +1072,7 @@ static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enabl
 	return true;
 
 out_disable:
-	if (drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY))
+	if (drm_WARN_ON(display->drm, tc->mode == TC_PORT_LEGACY))
 		return false;
 
 	if (!enable)
@@ -1096,35 +1086,35 @@ static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enabl
 
 static void xelpdp_tc_phy_take_ownership(struct intel_tc_port *tc, bool take)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum port port = tc->dig_port->base.port;
-	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
+	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
 	u32 val;
 
 	assert_tc_cold_blocked(tc);
 
-	val = intel_de_read(i915, reg);
+	val = intel_de_read(display, reg);
 	if (take)
 		val |= XELPDP_TC_PHY_OWNERSHIP;
 	else
 		val &= ~XELPDP_TC_PHY_OWNERSHIP;
-	intel_de_write(i915, reg, val);
+	intel_de_write(display, reg, val);
 }
 
 static bool xelpdp_tc_phy_is_owned(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum port port = tc->dig_port->base.port;
-	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
+	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
 
 	assert_tc_cold_blocked(tc);
 
-	return intel_de_read(i915, reg) & XELPDP_TC_PHY_OWNERSHIP;
+	return intel_de_read(display, reg) & XELPDP_TC_PHY_OWNERSHIP;
 }
 
 static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	intel_wakeref_t tc_cold_wref;
 	enum intel_display_power_domain domain;
 
@@ -1134,7 +1124,7 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	if (tc->mode != TC_PORT_DISCONNECTED)
 		tc->lock_wakeref = tc_cold_block(tc);
 
-	drm_WARN_ON(&i915->drm,
+	drm_WARN_ON(display->drm,
 		    (tc->mode == TC_PORT_DP_ALT || tc->mode == TC_PORT_LEGACY) &&
 		    !xelpdp_tc_phy_tcss_power_is_enabled(tc));
 
@@ -1207,13 +1197,13 @@ tc_phy_cold_off_domain(struct intel_tc_port *tc)
 
 static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	u32 mask;
 
 	mask = tc->phy_ops->hpd_live_status(tc);
 
 	/* The sink can be connected only in a single mode. */
-	drm_WARN_ON_ONCE(&i915->drm, hweight32(mask) > 1);
+	drm_WARN_ON_ONCE(display->drm, hweight32(mask) > 1);
 
 	return mask;
 }
@@ -1236,9 +1226,9 @@ static void tc_phy_get_hw_state(struct intel_tc_port *tc)
 static bool tc_phy_is_ready_and_owned(struct intel_tc_port *tc,
 				      bool phy_is_ready, bool phy_is_owned)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 
-	drm_WARN_ON(&i915->drm, phy_is_owned && !phy_is_ready);
+	drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
 
 	return phy_is_ready && phy_is_owned;
 }
@@ -1246,8 +1236,7 @@ static bool tc_phy_is_ready_and_owned(struct intel_tc_port *tc,
 static bool tc_phy_is_connected(struct intel_tc_port *tc,
 				enum icl_port_dpll_id port_pll_type)
 {
-	struct intel_encoder *encoder = &tc->dig_port->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	bool phy_is_ready = tc_phy_is_ready(tc);
 	bool phy_is_owned = tc_phy_is_owned(tc);
 	bool is_connected;
@@ -1257,7 +1246,7 @@ static bool tc_phy_is_connected(struct intel_tc_port *tc,
 	else
 		is_connected = port_pll_type == ICL_PORT_DPLL_DEFAULT;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Port %s: PHY connected: %s (ready: %s, owned: %s, pll_type: %s)\n",
 		    tc->port_name,
 		    str_yes_no(is_connected),
@@ -1270,10 +1259,10 @@ static bool tc_phy_is_connected(struct intel_tc_port *tc,
 
 static bool tc_phy_wait_for_ready(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 
 	if (wait_for(tc_phy_is_ready(tc), 500)) {
-		drm_err(&i915->drm, "Port %s: timeout waiting for PHY ready\n",
+		drm_err(display->drm, "Port %s: timeout waiting for PHY ready\n",
 			tc->port_name);
 
 		return false;
@@ -1343,7 +1332,7 @@ get_tc_mode_in_phy_not_owned_state(struct intel_tc_port *tc,
 static enum tc_port_mode
 tc_phy_get_current_mode(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum tc_port_mode live_mode = tc_phy_hpd_live_mode(tc);
 	bool phy_is_ready;
 	bool phy_is_owned;
@@ -1363,11 +1352,11 @@ tc_phy_get_current_mode(struct intel_tc_port *tc)
 	if (!tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned)) {
 		mode = get_tc_mode_in_phy_not_owned_state(tc, live_mode);
 	} else {
-		drm_WARN_ON(&i915->drm, live_mode == TC_PORT_TBT_ALT);
+		drm_WARN_ON(display->drm, live_mode == TC_PORT_TBT_ALT);
 		mode = get_tc_mode_in_phy_owned_state(tc, live_mode);
 	}
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Port %s: PHY mode: %s (ready: %s, owned: %s, HPD: %s)\n",
 		    tc->port_name,
 		    tc_port_mode_name(mode),
@@ -1407,7 +1396,7 @@ tc_phy_get_target_mode(struct intel_tc_port *tc)
 
 static void tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	u32 live_status_mask = tc_phy_hpd_live_status(tc);
 	bool connected;
 
@@ -1421,7 +1410,7 @@ static void tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 		connected = tc->phy_ops->connect(tc, required_lanes);
 	}
 
-	drm_WARN_ON(&i915->drm, !connected);
+	drm_WARN_ON(display->drm, !connected);
 }
 
 static void tc_phy_disconnect(struct intel_tc_port *tc)
@@ -1491,12 +1480,12 @@ static void __intel_tc_port_put_link(struct intel_tc_port *tc)
 
 static bool tc_port_is_enabled(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct intel_digital_port *dig_port = tc->dig_port;
 
 	assert_tc_port_power_enabled(tc);
 
-	return intel_de_read(i915, DDI_BUF_CTL(dig_port->base.port)) &
+	return intel_de_read(display, DDI_BUF_CTL(dig_port->base.port)) &
 	       DDI_BUF_CTL_ENABLE;
 }
 
@@ -1509,15 +1498,15 @@ static bool tc_port_is_enabled(struct intel_tc_port *tc)
  */
 void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 	bool update_mode = false;
 
 	mutex_lock(&tc->lock);
 
-	drm_WARN_ON(&i915->drm, tc->mode != TC_PORT_DISCONNECTED);
-	drm_WARN_ON(&i915->drm, tc->lock_wakeref);
-	drm_WARN_ON(&i915->drm, tc->link_refcount);
+	drm_WARN_ON(display->drm, tc->mode != TC_PORT_DISCONNECTED);
+	drm_WARN_ON(display->drm, tc->lock_wakeref);
+	drm_WARN_ON(display->drm, tc->link_refcount);
 
 	tc_phy_get_hw_state(tc);
 	/*
@@ -1540,8 +1529,8 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 	if (!tc_port_is_enabled(tc)) {
 		update_mode = true;
 	} else if (tc->mode == TC_PORT_DISCONNECTED) {
-		drm_WARN_ON(&i915->drm, !tc->legacy_port);
-		drm_err(&i915->drm,
+		drm_WARN_ON(display->drm, !tc->legacy_port);
+		drm_err(display->drm,
 			"Port %s: PHY disconnected on enabled port, connecting it\n",
 			tc->port_name);
 		update_mode = true;
@@ -1559,7 +1548,7 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 static bool tc_port_has_active_links(struct intel_tc_port *tc,
 				     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	enum icl_port_dpll_id pll_type = ICL_PORT_DPLL_DEFAULT;
 	int active_links = 0;
@@ -1573,7 +1562,7 @@ static bool tc_port_has_active_links(struct intel_tc_port *tc,
 	}
 
 	if (active_links && !tc_phy_is_connected(tc, pll_type))
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"Port %s: PHY disconnected with %d active link(s)\n",
 			tc->port_name, active_links);
 
@@ -1595,12 +1584,12 @@ static bool tc_port_has_active_links(struct intel_tc_port *tc,
 void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
 				 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 
 	mutex_lock(&tc->lock);
 
-	drm_WARN_ON(&i915->drm, tc->link_refcount != 1);
+	drm_WARN_ON(display->drm, tc->link_refcount != 1);
 	if (!tc_port_has_active_links(tc, crtc_state)) {
 		/*
 		 * TBT-alt is the default mode in any case the PHY ownership is not
@@ -1610,7 +1599,7 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
 		 */
 		if (tc->init_mode != TC_PORT_TBT_ALT &&
 		    tc->init_mode != TC_PORT_DISCONNECTED)
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Port %s: PHY left in %s mode on disabled port, disconnecting it\n",
 				    tc->port_name,
 				    tc_port_mode_name(tc->init_mode));
@@ -1618,7 +1607,7 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
 		__intel_tc_port_put_link(tc);
 	}
 
-	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
+	drm_dbg_kms(display->drm, "Port %s: sanitize mode (%s)\n",
 		    tc->port_name,
 		    tc_port_mode_name(tc->mode));
 
@@ -1637,12 +1626,12 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
  */
 bool intel_tc_port_connected(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 	u32 mask = ~0;
 
-	drm_WARN_ON(&i915->drm, !intel_tc_port_ref_held(dig_port));
+	drm_WARN_ON(display->drm, !intel_tc_port_ref_held(dig_port));
 
 	if (tc->mode != TC_PORT_DISCONNECTED)
 		mask = BIT(tc->mode);
@@ -1677,14 +1666,14 @@ static int reset_link_commit(struct intel_tc_port *tc,
 			     struct intel_atomic_state *state,
 			     struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	struct intel_dp *intel_dp = enc_to_intel_dp(&dig_port->base);
 	struct intel_crtc *crtc;
 	u8 pipe_mask;
 	int ret;
 
-	ret = drm_modeset_lock(&i915->drm.mode_config.connection_mutex, ctx);
+	ret = drm_modeset_lock(&display->drm->mode_config.connection_mutex, ctx);
 	if (ret)
 		return ret;
 
@@ -1695,7 +1684,7 @@ static int reset_link_commit(struct intel_tc_port *tc,
 	if (!pipe_mask)
 		return 0;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
 		struct intel_crtc_state *crtc_state;
 
 		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
@@ -1713,13 +1702,13 @@ static int reset_link_commit(struct intel_tc_port *tc,
 
 static int reset_link(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct drm_modeset_acquire_ctx ctx;
 	struct drm_atomic_state *_state;
 	struct intel_atomic_state *state;
 	int ret;
 
-	_state = drm_atomic_state_alloc(&i915->drm);
+	_state = drm_atomic_state_alloc(display->drm);
 	if (!_state)
 		return -ENOMEM;
 
@@ -1738,21 +1727,21 @@ static void intel_tc_port_link_reset_work(struct work_struct *work)
 {
 	struct intel_tc_port *tc =
 		container_of(work, struct intel_tc_port, link_reset_work.work);
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	int ret;
 
 	if (!__intel_tc_port_link_needs_reset(tc))
 		return;
 
-	mutex_lock(&i915->drm.mode_config.mutex);
+	mutex_lock(&display->drm->mode_config.mutex);
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Port %s: TypeC DP-alt sink disconnected, resetting link\n",
 		    tc->port_name);
 	ret = reset_link(tc);
-	drm_WARN_ON(&i915->drm, ret);
+	drm_WARN_ON(display->drm, ret);
 
-	mutex_unlock(&i915->drm.mode_config.mutex);
+	mutex_unlock(&display->drm->mode_config.mutex);
 }
 
 bool intel_tc_port_link_reset(struct intel_digital_port *dig_port)
@@ -1780,7 +1769,7 @@ void intel_tc_port_link_cancel_reset_work(struct intel_digital_port *dig_port)
 static void __intel_tc_port_lock(struct intel_tc_port *tc,
 				 int required_lanes)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 
 	mutex_lock(&tc->lock);
 
@@ -1790,8 +1779,8 @@ static void __intel_tc_port_lock(struct intel_tc_port *tc,
 		intel_tc_port_update_mode(tc, required_lanes,
 					  false);
 
-	drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_DISCONNECTED);
-	drm_WARN_ON(&i915->drm, tc->mode != TC_PORT_TBT_ALT &&
+	drm_WARN_ON(display->drm, tc->mode == TC_PORT_DISCONNECTED);
+	drm_WARN_ON(display->drm, tc->mode != TC_PORT_TBT_ALT &&
 				!tc_phy_is_owned(tc));
 }
 
@@ -1885,12 +1874,12 @@ void intel_tc_port_put_link(struct intel_digital_port *dig_port)
 
 int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc;
 	enum port port = dig_port->base.port;
 	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
 
-	if (drm_WARN_ON(&i915->drm, tc_port == TC_PORT_NONE))
+	if (drm_WARN_ON(display->drm, tc_port == TC_PORT_NONE))
 		return -EINVAL;
 
 	tc = kzalloc(sizeof(*tc), GFP_KERNEL);
@@ -1900,11 +1889,11 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 	dig_port->tc = tc;
 	tc->dig_port = dig_port;
 
-	if (DISPLAY_VER(i915) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		tc->phy_ops = &xelpdp_tc_phy_ops;
-	else if (DISPLAY_VER(i915) >= 13)
+	else if (DISPLAY_VER(display) >= 13)
 		tc->phy_ops = &adlp_tc_phy_ops;
-	else if (DISPLAY_VER(i915) >= 12)
+	else if (DISPLAY_VER(display) >= 12)
 		tc->phy_ops = &tgl_tc_phy_ops;
 	else
 		tc->phy_ops = &icl_tc_phy_ops;
-- 
2.39.5

