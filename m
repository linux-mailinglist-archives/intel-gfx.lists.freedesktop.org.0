Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F8D6C6AC3
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6D610EACB;
	Thu, 23 Mar 2023 14:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4053510EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581259; x=1711117259;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3Wkn4K+Q5ROEcAGmXw//64zIYmnCHlGq5P/qHa6S+Dw=;
 b=YrA77OMbrxmbtkxLeilv9YmjqolYizWMpgVO4ut15FtsUr74Rq/xghLB
 KCByLI31Ipu/bn3oG9NEXwXB/T1l+hYsFWic1NBs+E1zzKkP55RTHcimn
 KiB6lUOziSGNMbtlSny2NBJI/U3XPQKmO5B1iQbCKsFjps71q5b58dcMr
 pf2YFuitLcfrfwTtCTHzwoHG2V3Y7CVvszq0ljSB5lt0cCcIFvmDg5OoC
 IbCFYKV4Aso+TVuZ7UAU+3aW8ucFDjMWKuRWHy9U1KMYec5t25YnEbDTX
 uwW/mB//iVqGKAqXeHBmEvzaikHQHcSyc5p9h1fVwdY03sFEjmHs54y5a g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892321"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892321"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722698"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722698"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:58 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:25 +0200
Message-Id: <20230323142035.1432621-20-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/29] drm/i915/tc: Add TC PHY hook to get the
 TC-cold blocking power domain
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

Instead of the corresponding if ladder, add a TC PHY hook to get the
platform and TC mode specific power domain used for blocking the TC-cold
power state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 73 ++++++++++++++++++++-----
 1 file changed, 59 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 943660044e37a..e68346c5e6036 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -25,6 +25,7 @@ enum tc_port_mode {
 struct intel_tc_port;
 
 struct intel_tc_phy_ops {
+	enum intel_display_power_domain (*cold_off_domain)(struct intel_tc_port *tc);
 	u32 (*hpd_live_status)(struct intel_tc_port *tc);
 	bool (*is_ready)(struct intel_tc_port *tc);
 	bool (*is_owned)(struct intel_tc_port *tc);
@@ -53,6 +54,8 @@ struct intel_tc_port {
 	u8 phy_fia_idx;
 };
 
+static enum intel_display_power_domain
+tc_phy_cold_off_domain(struct intel_tc_port *);
 static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc);
 static bool tc_phy_is_ready(struct intel_tc_port *tc);
 static bool tc_phy_take_ownership(struct intel_tc_port *tc, bool take);
@@ -113,20 +116,8 @@ bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 
-	return (DISPLAY_VER(i915) == 11 && tc->legacy_port) ||
-		IS_ALDERLAKE_P(i915);
-}
-
-static enum intel_display_power_domain
-tc_phy_cold_off_domain(struct intel_tc_port *tc)
-{
-	struct drm_i915_private *i915 = tc_to_i915(tc);
-	struct intel_digital_port *dig_port = tc->dig_port;
-
-	if (tc->mode == TC_PORT_TBT_ALT || !intel_tc_cold_requires_aux_pw(dig_port))
-		return POWER_DOMAIN_TC_COLD_OFF;
-
-	return intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
+	return tc_phy_cold_off_domain(tc) ==
+	       intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
 }
 
 static intel_wakeref_t
@@ -334,6 +325,18 @@ static void tc_port_fixup_legacy_flag(struct intel_tc_port *tc,
  * ICL TC PHY handlers
  * -------------------
  */
+static enum intel_display_power_domain
+icl_tc_phy_cold_off_domain(struct intel_tc_port *tc)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_digital_port *dig_port = tc->dig_port;
+
+	if (tc->legacy_port)
+		return intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
+
+	return POWER_DOMAIN_TC_COLD_OFF;
+}
+
 static u32 icl_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
@@ -540,6 +543,27 @@ static void icl_tc_phy_disconnect(struct intel_tc_port *tc)
 }
 
 static const struct intel_tc_phy_ops icl_tc_phy_ops = {
+	.cold_off_domain = icl_tc_phy_cold_off_domain,
+	.hpd_live_status = icl_tc_phy_hpd_live_status,
+	.is_ready = icl_tc_phy_is_ready,
+	.is_owned = icl_tc_phy_is_owned,
+	.get_hw_state = icl_tc_phy_get_hw_state,
+	.connect = icl_tc_phy_connect,
+	.disconnect = icl_tc_phy_disconnect,
+};
+
+/**
+ * TGL TC PHY handlers
+ * -------------------
+ */
+static enum intel_display_power_domain
+tgl_tc_phy_cold_off_domain(struct intel_tc_port *tc)
+{
+	return POWER_DOMAIN_TC_COLD_OFF;
+}
+
+static const struct intel_tc_phy_ops tgl_tc_phy_ops = {
+	.cold_off_domain = tgl_tc_phy_cold_off_domain,
 	.hpd_live_status = icl_tc_phy_hpd_live_status,
 	.is_ready = icl_tc_phy_is_ready,
 	.is_owned = icl_tc_phy_is_owned,
@@ -552,6 +576,18 @@ static const struct intel_tc_phy_ops icl_tc_phy_ops = {
  * ADLP TC PHY handlers
  * --------------------
  */
+static enum intel_display_power_domain
+adlp_tc_phy_cold_off_domain(struct intel_tc_port *tc)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_digital_port *dig_port = tc->dig_port;
+
+	if (tc->mode != TC_PORT_TBT_ALT)
+		return intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
+
+	return POWER_DOMAIN_TC_COLD_OFF;
+}
+
 static u32 adlp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
@@ -624,6 +660,7 @@ static bool adlp_tc_phy_is_owned(struct intel_tc_port *tc)
 }
 
 static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
+	.cold_off_domain = adlp_tc_phy_cold_off_domain,
 	.hpd_live_status = adlp_tc_phy_hpd_live_status,
 	.is_ready = adlp_tc_phy_is_ready,
 	.is_owned = adlp_tc_phy_is_owned,
@@ -636,6 +673,12 @@ static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
  * Generic TC PHY handlers
  * -----------------------
  */
+static enum intel_display_power_domain
+tc_phy_cold_off_domain(struct intel_tc_port *tc)
+{
+	return tc->phy_ops->cold_off_domain(tc);
+}
+
 static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
@@ -1246,6 +1289,8 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 
 	if (DISPLAY_VER(i915) >= 13)
 		tc->phy_ops = &adlp_tc_phy_ops;
+	else if (DISPLAY_VER(i915) >= 12)
+		tc->phy_ops = &tgl_tc_phy_ops;
 	else
 		tc->phy_ops = &icl_tc_phy_ops;
 
-- 
2.37.1

