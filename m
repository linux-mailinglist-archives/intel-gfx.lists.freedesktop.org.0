Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF22C6C6AC2
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B3610EAC1;
	Thu, 23 Mar 2023 14:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EE9810EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581260; x=1711117260;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3YBsbE4yxrxQlC41nQg9oIlHaxWn9xQIzqx98lMml7U=;
 b=dApl4TqzM/Ur1vgiw88ki8+yoO70qkeEfVYMCWyL+l/daaDU9siHFUug
 Sc81utyTah+zlccWhtDE5lXbllH0ilD0uf891DCxW6+vBtErI24b+XtP8
 n4I+MsOAQ3hWNWn7lWOddFdQ7pjqZnvnk7xARbs0xJ0ve4DF6VmcghsM6
 WMpPhwgBNQ8nnIVTm2zVwXiQBuV8GS+NfNXDJcHbCRgK/AICbsqv14G5H
 XQ21iSGh0vMuPx4tyXtGAy4RutyvPs355ymTA1Uza5d1da6dou8rL6npE
 U+Ka8q2DZJd8MrJP8Blo+cQvXfF+odJJhUPlBQuqcVkVkhUKOPUUzNayE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892328"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892328"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722702"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722702"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:59 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:26 +0200
Message-Id: <20230323142035.1432621-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/29] drm/i915/tc: Add asserts in TC PHY hooks
 that the required power is on
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

Add an assert to each TC PHY hook that their required power domain is
enabled.

While at it add a comment describing the domains used on each platform
and TC mode.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 61 +++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index e68346c5e6036..7bcd93f1f0597 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -111,6 +111,46 @@ bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port)
 	return intel_tc_port_in_mode(dig_port, TC_PORT_LEGACY);
 }
 
+/**
+ * The display power domains used for TC ports depending on the
+ * platform and TC mode (legacy, DP-alt, TBT):
+ *
+ * POWER_DOMAIN_DISPLAY_CORE:
+ * --------------------------
+ * ADLP/all modes:
+ *   - TCSS/IOM access for PHY ready state.
+ * ADLP+/all modes:
+ *   - DE/north-,south-HPD ISR access for HPD live state.
+ *
+ * POWER_DOMAIN_PORT_DDI_LANES_<port>:
+ * -----------------------------------
+ * ICL+/all modes:
+ *   - DE/DDI_BUF access for port enabled state.
+ * ADLP/all modes:
+ *   - DE/DDI_BUF access for PHY owned state.
+ *
+ * POWER_DOMAIN_AUX_USBC<TC port index>:
+ * -------------------------------------
+ * ICL/legacy mode:
+ *   - TCSS/IOM,FIA access for PHY ready, owned and HPD live state
+ *   - TCSS/PHY: block TC-cold power state for using the PHY AUX and
+ *     main lanes.
+ * ADLP/legacy, DP-alt modes:
+ *   - TCSS/PHY: block TC-cold power state for using the PHY AUX and
+ *     main lanes.
+ *
+ * POWER_DOMAIN_TC_COLD_OFF:
+ * -------------------------
+ * TGL/legacy, DP-alt modes:
+ *   - TCSS/IOM,FIA access for PHY ready, owned and HPD live state
+ *   - TCSS/PHY: block TC-cold power state for using the PHY AUX and
+ *     main lanes.
+ *
+ * ICL, TGL, ADLP/TBT mode:
+ *   - TCSS/IOM,FIA access for HPD live state
+ *   - TCSS/TBT: block TC-cold power state for using the (TBT DP-IN)
+ *     AUX and main lanes.
+ */
 bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
@@ -163,6 +203,15 @@ tc_cold_unblock(struct intel_tc_port *tc, intel_wakeref_t wakeref)
 	__tc_cold_unblock(tc, domain, wakeref);
 }
 
+static void
+assert_display_core_power_enabled(struct intel_tc_port *tc)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+
+	drm_WARN_ON(&i915->drm,
+		    !intel_display_power_is_enabled(i915, POWER_DOMAIN_DISPLAY_CORE));
+}
+
 static void
 assert_tc_cold_blocked(struct intel_tc_port *tc)
 {
@@ -378,6 +427,8 @@ static bool icl_tc_phy_is_ready(struct intel_tc_port *tc)
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	u32 val;
 
+	assert_tc_cold_blocked(tc);
+
 	val = intel_de_read(i915, PORT_TX_DFLEXDPPMS(tc->phy_fia));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
@@ -395,6 +446,8 @@ static bool icl_tc_phy_take_ownership(struct intel_tc_port *tc,
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	u32 val;
 
+	assert_tc_cold_blocked(tc);
+
 	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(tc->phy_fia));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
@@ -418,6 +471,8 @@ static bool icl_tc_phy_is_owned(struct intel_tc_port *tc)
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	u32 val;
 
+	assert_tc_cold_blocked(tc);
+
 	val = intel_de_read(i915, PORT_TX_DFLEXDPCSSS(tc->phy_fia));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
@@ -626,6 +681,8 @@ static bool adlp_tc_phy_is_ready(struct intel_tc_port *tc)
 	enum tc_port tc_port = intel_port_to_tc(i915, tc->dig_port->base.port);
 	u32 val;
 
+	assert_display_core_power_enabled(tc);
+
 	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
@@ -643,6 +700,8 @@ static bool adlp_tc_phy_take_ownership(struct intel_tc_port *tc,
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	enum port port = tc->dig_port->base.port;
 
+	assert_tc_port_power_enabled(tc);
+
 	intel_de_rmw(i915, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
 		     take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
 
@@ -655,6 +714,8 @@ static bool adlp_tc_phy_is_owned(struct intel_tc_port *tc)
 	enum port port = tc->dig_port->base.port;
 	u32 val;
 
+	assert_tc_port_power_enabled(tc);
+
 	val = intel_de_read(i915, DDI_BUF_CTL(port));
 	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 }
-- 
2.37.1

