Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D941B6C6AC9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14D44882D0;
	Thu, 23 Mar 2023 14:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 488E810EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581258; x=1711117258;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aXrDnw3hNq4YQM2g1o2+BXq+iUV7sNrvG/kVz5IoDFY=;
 b=NUjyC4k1u97PlH7C+Rzj3nc0Pl2EwrNRyOrVr48QH9gzQAkYlSeWkkDy
 kD7vCCln3dwp9mMTxnXuqgp34cbFTnHrz0nNn27Llfjuz/m9Sj7UTZF/W
 qeZ9I6L5IAjb+UThn1tqGicrnzsTqUzAjeIDVRosvGD5wPBwQfFIg/u7z
 Y67vNq7frhLDARs92ObAUwpWt2mdITl+lEuQ0ubPOvX9r360OxKe7yyiP
 BqVK4S5yinkMVitczvndYMUxhr83QPiWhmvPXbax66liiQWdGlNVWh2PT
 kzpgJ0plSzdbbk/Qk3UHgV0wSnTuUKmySTWhyxW8zcsUaVvgqWJ4WjqAm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892318"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892318"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722693"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722693"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:57 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:24 +0200
Message-Id: <20230323142035.1432621-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/29] drm/i915/tc: Drop
 tc_cold_block()/unblock()'s power domain parameter
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

Simplify tc_cold_block()/unblock() by dropping their power domain
parameter. The power domain depends on the current TC mode, which -
after the previous patch - can't change while the PHY is connected,
holding a TC-cold-off power domain reference. Based on this the domain
can be deducted from the current TC mode instead of having to pass this
as a parameter.

Blocking TC-cold for the PHY HW readout happens before the current TC
mode is determined, so here the initial power domain must be still
manually passed.

For debugging still keep track of the domain used for tc_cold_block()
and verify that it remained the same until tc_cold_unblock().

While at it rename tc_cold_get_power_domain() to
tc_phy_cold_off_domain(), reflecting the name of platform specific hook
added in the next patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 61 +++++++++++++++----------
 1 file changed, 37 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 21c6ef8064883..943660044e37a 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -40,7 +40,9 @@ struct intel_tc_port {
 
 	struct mutex lock;	/* protects the TypeC port mode */
 	intel_wakeref_t lock_wakeref;
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 	enum intel_display_power_domain lock_power_domain;
+#endif
 	struct delayed_work disconnect_phy_work;
 	int link_refcount;
 	bool legacy_port:1;
@@ -116,43 +118,60 @@ bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
 }
 
 static enum intel_display_power_domain
-tc_cold_get_power_domain(struct intel_tc_port *tc, enum tc_port_mode mode)
+tc_phy_cold_off_domain(struct intel_tc_port *tc)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
 
-	if (mode == TC_PORT_TBT_ALT || !intel_tc_cold_requires_aux_pw(dig_port))
+	if (tc->mode == TC_PORT_TBT_ALT || !intel_tc_cold_requires_aux_pw(dig_port))
 		return POWER_DOMAIN_TC_COLD_OFF;
 
 	return intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
 }
 
 static intel_wakeref_t
-tc_cold_block_in_mode(struct intel_tc_port *tc, enum tc_port_mode mode,
-		      enum intel_display_power_domain *domain)
+__tc_cold_block(struct intel_tc_port *tc, enum intel_display_power_domain *domain)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 
-	*domain = tc_cold_get_power_domain(tc, mode);
+	*domain = tc_phy_cold_off_domain(tc);
 
 	return intel_display_power_get(i915, *domain);
 }
 
 static intel_wakeref_t
-tc_cold_block(struct intel_tc_port *tc, enum intel_display_power_domain *domain)
+tc_cold_block(struct intel_tc_port *tc)
 {
-	return tc_cold_block_in_mode(tc, tc->mode, domain);
+	enum intel_display_power_domain domain;
+	intel_wakeref_t wakeref;
+
+	wakeref = __tc_cold_block(tc, &domain);
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
+	tc->lock_power_domain = domain;
+#endif
+	return wakeref;
 }
 
 static void
-tc_cold_unblock(struct intel_tc_port *tc, enum intel_display_power_domain domain,
-		intel_wakeref_t wakeref)
+__tc_cold_unblock(struct intel_tc_port *tc, enum intel_display_power_domain domain,
+		  intel_wakeref_t wakeref)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 
 	intel_display_power_put(i915, domain, wakeref);
 }
 
+static void
+tc_cold_unblock(struct intel_tc_port *tc, intel_wakeref_t wakeref)
+{
+	enum intel_display_power_domain domain = tc_phy_cold_off_domain(tc);
+
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
+	drm_WARN_ON(&tc_to_i915(tc)->drm, tc->lock_power_domain != domain);
+#endif
+	__tc_cold_unblock(tc, domain, wakeref);
+}
+
 static void
 assert_tc_cold_blocked(struct intel_tc_port *tc)
 {
@@ -160,8 +179,7 @@ assert_tc_cold_blocked(struct intel_tc_port *tc)
 	bool enabled;
 
 	enabled = intel_display_power_is_enabled(i915,
-						 tc_cold_get_power_domain(tc,
-									  tc->mode));
+						 tc_phy_cold_off_domain(tc));
 	drm_WARN_ON(&i915->drm, !enabled);
 }
 
@@ -413,13 +431,13 @@ static void icl_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	enum intel_display_power_domain domain;
 	intel_wakeref_t tc_cold_wref;
 
-	tc_cold_wref = tc_cold_block(tc, &domain);
+	tc_cold_wref = __tc_cold_block(tc, &domain);
 
 	tc->mode = tc_phy_get_current_mode(tc);
 	if (tc->mode != TC_PORT_DISCONNECTED)
-		tc->lock_wakeref = tc_cold_block(tc, &tc->lock_power_domain);
+		tc->lock_wakeref = tc_cold_block(tc);
 
-	tc_cold_unblock(tc, domain, tc_cold_wref);
+	__tc_cold_unblock(tc, domain, tc_cold_wref);
 }
 
 /*
@@ -474,7 +492,7 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 
-	tc->lock_wakeref = tc_cold_block(tc, &tc->lock_power_domain);
+	tc->lock_wakeref = tc_cold_block(tc);
 
 	if (tc->mode == TC_PORT_TBT_ALT)
 		return true;
@@ -497,9 +515,7 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 out_release_phy:
 	tc_phy_take_ownership(tc, false);
 out_unblock_tc_cold:
-	tc_cold_unblock(tc,
-			tc->lock_power_domain,
-			fetch_and_zero(&tc->lock_wakeref));
+	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
 
 	return false;
 }
@@ -516,9 +532,7 @@ static void icl_tc_phy_disconnect(struct intel_tc_port *tc)
 		tc_phy_take_ownership(tc, false);
 		fallthrough;
 	case TC_PORT_TBT_ALT:
-		tc_cold_unblock(tc,
-				tc->lock_power_domain,
-				fetch_and_zero(&tc->lock_wakeref));
+		tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
 		break;
 	default:
 		MISSING_CASE(tc->mode);
@@ -1177,7 +1191,6 @@ void intel_tc_port_put_link(struct intel_digital_port *dig_port)
 static bool
 tc_has_modular_fia(struct drm_i915_private *i915, struct intel_tc_port *tc)
 {
-	enum intel_display_power_domain domain;
 	intel_wakeref_t wakeref;
 	u32 val;
 
@@ -1185,9 +1198,9 @@ tc_has_modular_fia(struct drm_i915_private *i915, struct intel_tc_port *tc)
 		return false;
 
 	mutex_lock(&tc->lock);
-	wakeref = tc_cold_block(tc, &domain);
+	wakeref = tc_cold_block(tc);
 	val = intel_de_read(i915, PORT_TX_DFLEXDPSP(FIA1));
-	tc_cold_unblock(tc, domain, wakeref);
+	tc_cold_unblock(tc, wakeref);
 	mutex_unlock(&tc->lock);
 
 	drm_WARN_ON(&i915->drm, val == 0xffffffff);
-- 
2.37.1

