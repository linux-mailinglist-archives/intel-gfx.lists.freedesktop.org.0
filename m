Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0FA5E6987
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 19:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854CE10E26E;
	Thu, 22 Sep 2022 17:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C62D10E26E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 17:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663867312; x=1695403312;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9vUAqp0l8zZZY4A1YKmnfmnTat9zi+xLeImUJlCGg7I=;
 b=BsTWhUCwU7mOBLrbehDRZqSMiTefVLcyQyLAaWkv7qRkYHIGnMNWBHhD
 9gGj0NGHIP9bBF1pL25ISg5wZYLvn+fjKV2i5kqInEh7WMMVpaQhva9Ma
 AudOBqDBxbH+z4PxJ9L1U6hDj3gk5AhmEGMFWNOLbZ5q39u8xKH0u2nLF
 4mM6supwYJjM0OUd6dM5e011h9BbByw4j6H7m9yMrCctpfg0tryo2llvA
 bafQcD8e6aoej7EEHya88zM7vjp14vLbXJwS8ELeFqsmBMD983+9HE3bO
 VnSJUZr6NPaPRJ0CGFhvx/oJUOTmNsGt8h8D+d+bCyW6339cPIDXCZ8xu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="287454676"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="287454676"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 10:21:51 -0700
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="653062265"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 10:21:51 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 20:21:48 +0300
Message-Id: <20220922172148.2913088-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix TypeC mode initialization during
 system resume
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

During system resume DP MST requires AUX to be working already before
the HW state readout of the given encoder. Since AUX requires the
encoder/PHY TypeC mode to be initialized, which atm only happens during
HW state readout, these AUX transfers can change the TypeC mode
incorrectly (disconnecting the PHY for an enabled encoder) and trigger
the state check WARNs in intel_tc_port_sanitize().

Fix this by initializing the TypeC mode earlier both during driver
loading and system resume and making sure that the mode can't change
until the encoder's state is read out. While at it add the missing
DocBook comments and rename
intel_tc_port_sanitize()->intel_tc_port_sanitize_mode() for consistency.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  8 ++-
 drivers/gpu/drm/i915/display/intel_tc.c  | 68 ++++++++++++++++++------
 drivers/gpu/drm/i915/display/intel_tc.h  |  3 +-
 3 files changed, 61 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 643832d55c282..5ce5e885694c8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3591,7 +3591,7 @@ static void intel_ddi_sync_state(struct intel_encoder *encoder,
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
 	if (intel_phy_is_tc(i915, phy))
-		intel_tc_port_sanitize(enc_to_dig_port(encoder));
+		intel_tc_port_sanitize_mode(enc_to_dig_port(encoder));
 
 	if (crtc_state && intel_crtc_has_dp_encoder(crtc_state))
 		intel_dp_sync_state(encoder, crtc_state);
@@ -3789,11 +3789,17 @@ static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 
 static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
+	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 
 	intel_dp->reset_link_params = true;
 
 	intel_pps_encoder_reset(intel_dp);
+
+	if (intel_phy_is_tc(i915, phy))
+		intel_tc_port_init_mode(dig_port);
 }
 
 static const struct drm_encoder_funcs intel_ddi_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index e5af955b5600f..b0aa1edd83028 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -687,18 +687,58 @@ static void
 intel_tc_port_link_init_refcount(struct intel_digital_port *dig_port,
 				 int refcount)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-
-	drm_WARN_ON(&i915->drm, dig_port->tc_link_refcount);
 	dig_port->tc_link_refcount = refcount;
 }
 
-void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
+/**
+ * intel_tc_port_init_mode: Read out HW state and init the given port's TypeC mode
+ * @dig_port: digital port
+ *
+ * Read out the HW state and initialize the TypeC mode of @dig_port. The mode
+ * will be locked until intel_tc_port_sanitize_mode() is called.
+ */
+void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_encoder *encoder = &dig_port->base;
 	intel_wakeref_t tc_cold_wref;
 	enum intel_display_power_domain domain;
+
+	mutex_lock(&dig_port->tc_lock);
+
+	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_DISCONNECTED);
+	drm_WARN_ON(&i915->drm, dig_port->tc_lock_wakeref);
+	drm_WARN_ON(&i915->drm, dig_port->tc_link_refcount);
+
+	tc_cold_wref = tc_cold_block(dig_port, &domain);
+
+	dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
+	/* Prevent changing dig_port->tc_mode until intel_tc_port_sanitize_mode() is called. */
+	intel_tc_port_link_init_refcount(dig_port, 1);
+	dig_port->tc_lock_wakeref = tc_cold_block(dig_port, &dig_port->tc_lock_power_domain);
+
+	tc_cold_unblock(dig_port, domain, tc_cold_wref);
+
+	drm_dbg_kms(&i915->drm, "Port %s: init mode (%s)\n",
+		    dig_port->tc_port_name,
+		    tc_port_mode_name(dig_port->tc_mode));
+
+	mutex_unlock(&dig_port->tc_lock);
+}
+
+/**
+ * intel_tc_port_sanitize_mode: Sanitize the given port's TypeC mode
+ * @dig_port: digital port
+ *
+ * Sanitize @dig_port's TypeC mode wrt. the encoder's state right after driver
+ * loading and system resume:
+ * If the encoder is enabled keep the TypeC mode/PHY connected state locked until
+ * the encoder is disabled.
+ * If the encoder is disabled make sure the PHY is disconnected.
+ */
+void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_encoder *encoder = &dig_port->base;
 	int active_links = 0;
 
 	mutex_lock(&dig_port->tc_lock);
@@ -708,21 +748,14 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 	else if (encoder->base.crtc)
 		active_links = to_intel_crtc(encoder->base.crtc)->active;
 
-	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_DISCONNECTED);
-	drm_WARN_ON(&i915->drm, dig_port->tc_lock_wakeref);
+	drm_WARN_ON(&i915->drm, dig_port->tc_link_refcount != 1);
+	intel_tc_port_link_init_refcount(dig_port, active_links);
 
-	tc_cold_wref = tc_cold_block(dig_port, &domain);
-
-	dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
 	if (active_links) {
 		if (!icl_tc_phy_is_connected(dig_port))
 			drm_dbg_kms(&i915->drm,
 				    "Port %s: PHY disconnected with %d active link(s)\n",
 				    dig_port->tc_port_name, active_links);
-		intel_tc_port_link_init_refcount(dig_port, active_links);
-
-		dig_port->tc_lock_wakeref = tc_cold_block(dig_port,
-							  &dig_port->tc_lock_power_domain);
 	} else {
 		/*
 		 * TBT-alt is the default mode in any case the PHY ownership is not
@@ -736,9 +769,10 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 				    dig_port->tc_port_name,
 				    tc_port_mode_name(dig_port->tc_mode));
 		icl_tc_phy_disconnect(dig_port);
-	}
 
-	tc_cold_unblock(dig_port, domain, tc_cold_wref);
+		tc_cold_unblock(dig_port, dig_port->tc_lock_power_domain,
+				fetch_and_zero(&dig_port->tc_lock_wakeref));
+	}
 
 	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
 		    dig_port->tc_port_name,
@@ -923,4 +957,6 @@ void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 	dig_port->tc_mode = TC_PORT_DISCONNECTED;
 	dig_port->tc_link_refcount = 0;
 	tc_port_load_fia_params(i915, dig_port);
+
+	intel_tc_port_init_mode(dig_port);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index 6b47b29f551c9..d54082e2d5e8d 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -24,7 +24,8 @@ int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port);
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes);
 
-void intel_tc_port_sanitize(struct intel_digital_port *dig_port);
+void intel_tc_port_init_mode(struct intel_digital_port *dig_port);
+void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port);
 void intel_tc_port_lock(struct intel_digital_port *dig_port);
 void intel_tc_port_unlock(struct intel_digital_port *dig_port);
 void intel_tc_port_flush_work(struct intel_digital_port *dig_port);
-- 
2.37.1

