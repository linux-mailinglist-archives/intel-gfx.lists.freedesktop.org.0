Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DD46C6AC1
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5CF210EAD0;
	Thu, 23 Mar 2023 14:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39A7710EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581261; x=1711117261;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Jr1+Ic+l9qgZ0seRrrWEjBIZFMZv6HkgEeSU/zZItbE=;
 b=YSyHlcHdcBP8iAkBv6Ds3twNXNFJebd/ZWkDaOSUoFctIVeO6j+m10Iv
 1VUB6DatTVSRyCLBE5D1a49MIvPiqk+aEW2HoE7b26AFBzSqeVb2VRyoi
 rHS95RN66CGYzm055QzdsG2XwIRJo0judmRzU94I42V8AVoQISZjilaty
 oE70seTmq/saPw24WXb0wfXabds/mnsW+i4mQ315oJ793I9x8tQ5qKEUI
 6q7Kj2g+7/bNm5zx5Hj9wTnnOgsOcMOYa4cneDb95ROZdZ1w5LvGHt9Oz
 qaX8vDzYEhYR+hK8rmM6NKfAQpQuzyE9H4iNudJMA3YYrz7KiLuOUxXHt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892332"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892332"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722709"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722709"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:00 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:27 +0200
Message-Id: <20230323142035.1432621-22-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 21/29] drm/i915/tc: Add TC PHY hook to init the
 PHY
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

Add a hook for platform specific PHY initialization. Move the detection
of modular FIAs to the TGL handler, skipping this on ADLP+ where the
FIAs are always modular, not requiring a detection.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c  | 96 ++++++++++++++----------
 drivers/gpu/drm/i915/i915_pci.c          |  3 -
 drivers/gpu/drm/i915/intel_device_info.h |  1 -
 3 files changed, 56 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 7bcd93f1f0597..8f159ded501f8 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -32,6 +32,7 @@ struct intel_tc_phy_ops {
 	void (*get_hw_state)(struct intel_tc_port *tc);
 	bool (*connect)(struct intel_tc_port *tc, int required_lanes);
 	void (*disconnect)(struct intel_tc_port *tc);
+	void (*init)(struct intel_tc_port *tc);
 };
 
 struct intel_tc_port {
@@ -370,6 +371,25 @@ static void tc_port_fixup_legacy_flag(struct intel_tc_port *tc,
 	tc->legacy_port = !tc->legacy_port;
 }
 
+static void tc_phy_load_fia_params(struct intel_tc_port *tc, bool modular_fia)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum port port = tc->dig_port->base.port;
+	enum tc_port tc_port = intel_port_to_tc(i915, port);
+
+	/*
+	 * Each Modular FIA instance houses 2 TC ports. In SOC that has more
+	 * than two TC ports, there are multiple instances of Modular FIA.
+	 */
+	if (modular_fia) {
+		tc->phy_fia = tc_port / 2;
+		tc->phy_fia_idx = tc_port % 2;
+	} else {
+		tc->phy_fia = FIA1;
+		tc->phy_fia_idx = tc_port;
+	}
+}
+
 /**
  * ICL TC PHY handlers
  * -------------------
@@ -597,6 +617,11 @@ static void icl_tc_phy_disconnect(struct intel_tc_port *tc)
 	}
 }
 
+static void icl_tc_phy_init(struct intel_tc_port *tc)
+{
+	tc_phy_load_fia_params(tc, false);
+}
+
 static const struct intel_tc_phy_ops icl_tc_phy_ops = {
 	.cold_off_domain = icl_tc_phy_cold_off_domain,
 	.hpd_live_status = icl_tc_phy_hpd_live_status,
@@ -605,6 +630,7 @@ static const struct intel_tc_phy_ops icl_tc_phy_ops = {
 	.get_hw_state = icl_tc_phy_get_hw_state,
 	.connect = icl_tc_phy_connect,
 	.disconnect = icl_tc_phy_disconnect,
+	.init = icl_tc_phy_init,
 };
 
 /**
@@ -617,6 +643,20 @@ tgl_tc_phy_cold_off_domain(struct intel_tc_port *tc)
 	return POWER_DOMAIN_TC_COLD_OFF;
 }
 
+static void tgl_tc_phy_init(struct intel_tc_port *tc)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	intel_wakeref_t wakeref;
+	u32 val;
+
+	with_intel_display_power(i915, tc_phy_cold_off_domain(tc), wakeref)
+		val = intel_de_read(i915, PORT_TX_DFLEXDPSP(FIA1));
+
+	drm_WARN_ON(&i915->drm, val == 0xffffffff);
+
+	tc_phy_load_fia_params(tc, val & MODULAR_FIA_MASK);
+}
+
 static const struct intel_tc_phy_ops tgl_tc_phy_ops = {
 	.cold_off_domain = tgl_tc_phy_cold_off_domain,
 	.hpd_live_status = icl_tc_phy_hpd_live_status,
@@ -625,6 +665,7 @@ static const struct intel_tc_phy_ops tgl_tc_phy_ops = {
 	.get_hw_state = icl_tc_phy_get_hw_state,
 	.connect = icl_tc_phy_connect,
 	.disconnect = icl_tc_phy_disconnect,
+	.init = tgl_tc_phy_init,
 };
 
 /**
@@ -720,6 +761,11 @@ static bool adlp_tc_phy_is_owned(struct intel_tc_port *tc)
 	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 }
 
+static void adlp_tc_phy_init(struct intel_tc_port *tc)
+{
+	tc_phy_load_fia_params(tc, true);
+}
+
 static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
 	.cold_off_domain = adlp_tc_phy_cold_off_domain,
 	.hpd_live_status = adlp_tc_phy_hpd_live_status,
@@ -728,6 +774,7 @@ static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
 	.get_hw_state = icl_tc_phy_get_hw_state,
 	.connect = icl_tc_phy_connect,
 	.disconnect = icl_tc_phy_disconnect,
+	.init = adlp_tc_phy_init,
 };
 
 /**
@@ -972,6 +1019,13 @@ static void tc_phy_disconnect(struct intel_tc_port *tc)
 	}
 }
 
+static void tc_phy_init(struct intel_tc_port *tc)
+{
+	mutex_lock(&tc->lock);
+	tc->phy_ops->init(tc);
+	mutex_unlock(&tc->lock);
+}
+
 static void intel_tc_port_reset_mode(struct intel_tc_port *tc,
 				     int required_lanes, bool force_disconnect)
 {
@@ -1292,45 +1346,6 @@ void intel_tc_port_put_link(struct intel_digital_port *dig_port)
 	intel_tc_port_flush_work(dig_port);
 }
 
-static bool
-tc_has_modular_fia(struct drm_i915_private *i915, struct intel_tc_port *tc)
-{
-	intel_wakeref_t wakeref;
-	u32 val;
-
-	if (!INTEL_INFO(i915)->display.has_modular_fia)
-		return false;
-
-	mutex_lock(&tc->lock);
-	wakeref = tc_cold_block(tc);
-	val = intel_de_read(i915, PORT_TX_DFLEXDPSP(FIA1));
-	tc_cold_unblock(tc, wakeref);
-	mutex_unlock(&tc->lock);
-
-	drm_WARN_ON(&i915->drm, val == 0xffffffff);
-
-	return val & MODULAR_FIA_MASK;
-}
-
-static void
-tc_port_load_fia_params(struct drm_i915_private *i915, struct intel_tc_port *tc)
-{
-	enum port port = tc->dig_port->base.port;
-	enum tc_port tc_port = intel_port_to_tc(i915, port);
-
-	/*
-	 * Each Modular FIA instance houses 2 TC ports. In SOC that has more
-	 * than two TC ports, there are multiple instances of Modular FIA.
-	 */
-	if (tc_has_modular_fia(i915, tc)) {
-		tc->phy_fia = tc_port / 2;
-		tc->phy_fia_idx = tc_port % 2;
-	} else {
-		tc->phy_fia = FIA1;
-		tc->phy_fia_idx = tc_port;
-	}
-}
-
 int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
@@ -1363,7 +1378,8 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 	tc->legacy_port = is_legacy;
 	tc->mode = TC_PORT_DISCONNECTED;
 	tc->link_refcount = 0;
-	tc_port_load_fia_params(i915, tc);
+
+	tc_phy_init(tc);
 
 	intel_tc_port_init_mode(dig_port);
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index a8d942b16223f..bbc4d62e490e5 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -896,7 +896,6 @@ static const struct intel_device_info jsl_info = {
 static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_TIGERLAKE),
-	.display.has_modular_fia = 1,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 };
@@ -996,7 +995,6 @@ static const struct intel_device_info adl_p_info = {
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
 			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
 	.display.has_cdclk_crawl = 1,
-	.display.has_modular_fia = 1,
 	.display.has_psr_hw_tracking = 0,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
@@ -1143,7 +1141,6 @@ static const struct intel_device_info mtl_info = {
 	.__runtime.graphics.ip.rel = 70,
 	.__runtime.media.ip.ver = 13,
 	PLATFORM(INTEL_METEORLAKE),
-	.display.has_modular_fia = 1,
 	.extra_gt_list = xelpmp_extra_gt,
 	.has_flat_ccs = 0,
 	.has_gmd_id = 1,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index b30cc8b97c3a5..dd8b17c155669 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -192,7 +192,6 @@ enum intel_ppgtt_type {
 	func(has_hotplug); \
 	func(has_hti); \
 	func(has_ipc); \
-	func(has_modular_fia); \
 	func(has_overlay); \
 	func(has_psr); \
 	func(has_psr_hw_tracking); \
-- 
2.37.1

