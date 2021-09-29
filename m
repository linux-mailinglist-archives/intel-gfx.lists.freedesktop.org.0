Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BD341C5A0
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 15:29:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38DA6EA7A;
	Wed, 29 Sep 2021 13:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E01A6EA71
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 13:28:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="310487732"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="310487732"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:28:40 -0700
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="617510907"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:28:39 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 29 Sep 2021 16:28:30 +0300
Message-Id: <20210929132833.2253961-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210921002313.1132357-9-imre.deak@intel.com>
References: <20210921002313.1132357-9-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/13] drm/i915/tc: Refactor TC-cold
 block/unblock helpers
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

A follow-up change will select the TC-cold blocking power domain based
on the TypeC mode, prepare for that here.

Also bring intel_tc_cold_requires_aux_pw() earlier to its logical place
for readability.

No functional change.

v2: Add code comment about IOM reg accesses in TCCOLD. (Jose)

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_tc.c       | 68 ++++++++++++-------
 2 files changed, 44 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9413ebae15f57..f41fdc376a516 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1662,8 +1662,10 @@ struct intel_digital_port {
 	enum intel_display_power_domain ddi_io_power_domain;
 	intel_wakeref_t ddi_io_wakeref;
 	intel_wakeref_t aux_wakeref;
+
 	struct mutex tc_lock;	/* protects the TypeC port mode */
 	intel_wakeref_t tc_lock_wakeref;
+	enum intel_display_power_domain tc_lock_power_domain;
 	int tc_link_refcount;
 	bool tc_legacy_port:1;
 	char tc_port_name[8];
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 62a3070abf0a6..69c917fce03e4 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -48,8 +48,16 @@ bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port)
 	return intel_tc_port_in_mode(dig_port, TC_PORT_LEGACY);
 }
 
+bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
+	return (DISPLAY_VER(i915) == 11 && dig_port->tc_legacy_port) ||
+		IS_ALDERLAKE_P(i915);
+}
+
 static enum intel_display_power_domain
-tc_cold_get_power_domain(struct intel_digital_port *dig_port)
+tc_cold_get_power_domain(struct intel_digital_port *dig_port, enum tc_port_mode mode)
 {
 	if (intel_tc_cold_requires_aux_pw(dig_port))
 		return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
@@ -58,23 +66,30 @@ tc_cold_get_power_domain(struct intel_digital_port *dig_port)
 }
 
 static intel_wakeref_t
-tc_cold_block(struct intel_digital_port *dig_port)
+tc_cold_block_in_mode(struct intel_digital_port *dig_port, enum tc_port_mode mode,
+		      enum intel_display_power_domain *domain)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum intel_display_power_domain domain;
 
 	if (DISPLAY_VER(i915) == 11 && !dig_port->tc_legacy_port)
 		return 0;
 
-	domain = tc_cold_get_power_domain(dig_port);
-	return intel_display_power_get(i915, domain);
+	*domain = tc_cold_get_power_domain(dig_port, mode);
+
+	return intel_display_power_get(i915, *domain);
+}
+
+static intel_wakeref_t
+tc_cold_block(struct intel_digital_port *dig_port, enum intel_display_power_domain *domain)
+{
+	return tc_cold_block_in_mode(dig_port, dig_port->tc_mode, domain);
 }
 
 static void
-tc_cold_unblock(struct intel_digital_port *dig_port, intel_wakeref_t wakeref)
+tc_cold_unblock(struct intel_digital_port *dig_port, enum intel_display_power_domain domain,
+		intel_wakeref_t wakeref)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum intel_display_power_domain domain;
 
 	/*
 	 * wakeref == -1, means some error happened saving save_depot_stack but
@@ -84,8 +99,7 @@ tc_cold_unblock(struct intel_digital_port *dig_port, intel_wakeref_t wakeref)
 	if (wakeref == 0)
 		return;
 
-	domain = tc_cold_get_power_domain(dig_port);
-	intel_display_power_put_async(i915, domain, wakeref);
+	intel_display_power_put(i915, domain, wakeref);
 }
 
 static void
@@ -98,7 +112,8 @@ assert_tc_cold_blocked(struct intel_digital_port *dig_port)
 		return;
 
 	enabled = intel_display_power_is_enabled(i915,
-						 tc_cold_get_power_domain(dig_port));
+						 tc_cold_get_power_domain(dig_port,
+									  dig_port->tc_mode));
 	drm_WARN_ON(&i915->drm, !enabled);
 }
 
@@ -269,6 +284,11 @@ static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 	struct intel_uncore *uncore = &i915->uncore;
 	u32 val, mask = 0;
 
+	/*
+	 * On ADL-P HW/FW will wake from TCCOLD to complete the read access of
+	 * registers in IOM. Note that this doesn't apply to PHY and FIA
+	 * registers.
+	 */
 	val = intel_uncore_read(uncore, TCSS_DDI_STATUS(tc_port));
 	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT)
 		mask |= BIT(TC_PORT_DP_ALT);
@@ -650,7 +670,8 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 
 	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_DISCONNECTED);
 	if (active_links) {
-		intel_wakeref_t tc_cold_wref = tc_cold_block(dig_port);
+		enum intel_display_power_domain domain;
+		intel_wakeref_t tc_cold_wref = tc_cold_block(dig_port, &domain);
 
 		dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
 
@@ -660,7 +681,7 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 				    dig_port->tc_port_name, active_links);
 		intel_tc_port_link_init_refcount(dig_port, active_links);
 
-		tc_cold_unblock(dig_port, tc_cold_wref);
+		tc_cold_unblock(dig_port, domain, tc_cold_wref);
 	}
 
 	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
@@ -689,15 +710,16 @@ bool intel_tc_port_connected(struct intel_encoder *encoder)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_connected;
+	enum intel_display_power_domain domain;
 	intel_wakeref_t tc_cold_wref;
 
 	intel_tc_port_lock(dig_port);
-	tc_cold_wref = tc_cold_block(dig_port);
+	tc_cold_wref = tc_cold_block(dig_port, &domain);
 
 	is_connected = tc_port_live_status_mask(dig_port) &
 		       BIT(dig_port->tc_mode);
 
-	tc_cold_unblock(dig_port, tc_cold_wref);
+	tc_cold_unblock(dig_port, domain, tc_cold_wref);
 	intel_tc_port_unlock(dig_port);
 
 	return is_connected;
@@ -714,15 +736,16 @@ static void __intel_tc_port_lock(struct intel_digital_port *dig_port,
 	mutex_lock(&dig_port->tc_lock);
 
 	if (!dig_port->tc_link_refcount) {
+		enum intel_display_power_domain domain;
 		intel_wakeref_t tc_cold_wref;
 
-		tc_cold_wref = tc_cold_block(dig_port);
+		tc_cold_wref = tc_cold_block(dig_port, &domain);
 
 		if (force_disconnect || intel_tc_port_needs_reset(dig_port))
 			intel_tc_port_reset_mode(dig_port, required_lanes,
 						 force_disconnect);
 
-		tc_cold_unblock(dig_port, tc_cold_wref);
+		tc_cold_unblock(dig_port, domain, tc_cold_wref);
 	}
 
 	drm_WARN_ON(&i915->drm, dig_port->tc_lock_wakeref);
@@ -787,6 +810,7 @@ void intel_tc_port_put_link(struct intel_digital_port *dig_port)
 static bool
 tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig_port)
 {
+	enum intel_display_power_domain domain;
 	intel_wakeref_t wakeref;
 	u32 val;
 
@@ -794,9 +818,9 @@ tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig
 		return false;
 
 	mutex_lock(&dig_port->tc_lock);
-	wakeref = tc_cold_block(dig_port);
+	wakeref = tc_cold_block(dig_port, &domain);
 	val = intel_uncore_read(&i915->uncore, PORT_TX_DFLEXDPSP(FIA1));
-	tc_cold_unblock(dig_port, wakeref);
+	tc_cold_unblock(dig_port, domain, wakeref);
 	mutex_unlock(&dig_port->tc_lock);
 
 	drm_WARN_ON(&i915->drm, val == 0xffffffff);
@@ -841,11 +865,3 @@ void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 	dig_port->tc_link_refcount = 0;
 	tc_port_load_fia_params(i915, dig_port);
 }
-
-bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
-{
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-
-	return (DISPLAY_VER(i915) == 11 && dig_port->tc_legacy_port) ||
-		IS_ALDERLAKE_P(i915);
-}
-- 
2.27.0

