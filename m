Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9214129F5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 02:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC3A66E8C9;
	Tue, 21 Sep 2021 00:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 620D66E8C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 00:23:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="203410800"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="203410800"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:32 -0700
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="549183755"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:30 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 21 Sep 2021 03:23:11 +0300
Message-Id: <20210921002313.1132357-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210921002313.1132357-1-imre.deak@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/13] drm/i915/tc: Fix TypeC PHY
 connect/disconnect logic on ADL-P
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

So far TC-cold was blocked only for the duration of TypeC mode resets.
The DP-alt and legacy modes require TC-cold to be blocked also whenever
the port is in use (AUX transfers, enable modeset), and this was ensured
by the held PHY ownership flag. On ADL-P this doesn't work, since the
PHY ownership flag is in a register backed by the PW#2 power well.
Whenever this power well is disabled the ownership flag is cleared by
the HW under the driver.

The only way to cleanly release and re-acquire the PHY ownership flag
and also allow for power saving (by disabling the display power wells
and reaching DC5/6 states) is to hold the TC-cold blocking power domains
while the PHY is connected and disconnect/reconnect the PHY on-demand
around AUX transfers and modeset enable/disables. Let's do that,
disconnecting a PHY with a 1 sec delay after it becomes idle. For
consistency do this on all platforms and TypeC modes.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  7 +-
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_tc.c       | 87 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_tc.h       |  2 +-
 4 files changed, 60 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b9194d6a4dfe7..b509d5f2d5f0e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4019,8 +4019,11 @@ static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 
 	intel_dp_encoder_flush_work(encoder);
+	if (intel_phy_is_tc(i915, phy))
+		intel_tc_port_flush_work(dig_port);
 	intel_display_power_flush_work(i915);
 
 	drm_encoder_cleanup(encoder);
@@ -4445,7 +4448,7 @@ static void intel_ddi_encoder_suspend(struct intel_encoder *encoder)
 	if (!intel_phy_is_tc(i915, phy))
 		return;
 
-	intel_tc_port_disconnect_phy(dig_port);
+	intel_tc_port_flush_work(dig_port);
 }
 
 static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
@@ -4460,7 +4463,7 @@ static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
 	if (!intel_phy_is_tc(i915, phy))
 		return;
 
-	intel_tc_port_disconnect_phy(dig_port);
+	intel_tc_port_flush_work(dig_port);
 }
 
 #define port_tc_name(port) ((port) - PORT_TC1 + '1')
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 08a73ffded957..53509f6ae3d10 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1667,6 +1667,7 @@ struct intel_digital_port {
 	struct mutex tc_lock;	/* protects the TypeC port mode */
 	intel_wakeref_t tc_lock_wakeref;
 	enum intel_display_power_domain tc_lock_power_domain;
+	struct delayed_work tc_disconnect_phy_work;
 	int tc_link_refcount;
 	bool tc_legacy_port:1;
 	char tc_port_name[8];
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 8d799cf7ccefd..3fefd00e04685 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -645,6 +645,13 @@ static void intel_tc_port_update_mode(struct intel_digital_port *dig_port,
 
 	intel_tc_port_reset_mode(dig_port, required_lanes, force_disconnect);
 
+	/* Get power domain matching the new mode after reset. */
+	tc_cold_unblock(dig_port, dig_port->tc_lock_power_domain,
+			fetch_and_zero(&dig_port->tc_lock_wakeref));
+	if (dig_port->tc_mode != TC_PORT_DISCONNECTED)
+		dig_port->tc_lock_wakeref = tc_cold_block(dig_port,
+							  &dig_port->tc_lock_power_domain);
+
 	tc_cold_unblock(dig_port, domain, wref);
 }
 
@@ -672,6 +679,7 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 		active_links = to_intel_crtc(encoder->base.crtc)->active;
 
 	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_DISCONNECTED);
+	drm_WARN_ON(&i915->drm, dig_port->tc_lock_wakeref);
 	if (active_links) {
 		enum intel_display_power_domain domain;
 		intel_wakeref_t tc_cold_wref = tc_cold_block(dig_port, &domain);
@@ -684,6 +692,9 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 				    dig_port->tc_port_name, active_links);
 		intel_tc_port_link_init_refcount(dig_port, active_links);
 
+		dig_port->tc_lock_wakeref = tc_cold_block(dig_port,
+							  &dig_port->tc_lock_power_domain);
+
 		tc_cold_unblock(dig_port, domain, tc_cold_wref);
 	}
 
@@ -724,60 +735,67 @@ bool intel_tc_port_connected(struct intel_encoder *encoder)
 }
 
 static void __intel_tc_port_lock(struct intel_digital_port *dig_port,
-				 int required_lanes, bool force_disconnect)
+				 int required_lanes)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	intel_wakeref_t wakeref;
-
-	wakeref = intel_display_power_get(i915, POWER_DOMAIN_DISPLAY_CORE);
 
 	mutex_lock(&dig_port->tc_lock);
 
+	cancel_delayed_work(&dig_port->tc_disconnect_phy_work);
 
 	if (!dig_port->tc_link_refcount)
 		intel_tc_port_update_mode(dig_port, required_lanes,
-					  force_disconnect);
+					  false);
 
 	drm_WARN_ON(&i915->drm, dig_port->tc_mode == TC_PORT_DISCONNECTED);
 	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_TBT_ALT &&
 				!tc_phy_is_owned(dig_port));
-
-	drm_WARN_ON(&i915->drm, dig_port->tc_lock_wakeref);
-	dig_port->tc_lock_wakeref = wakeref;
 }
 
 void intel_tc_port_lock(struct intel_digital_port *dig_port)
 {
-	__intel_tc_port_lock(dig_port, 1, false);
-}
-
-void intel_tc_port_unlock(struct intel_digital_port *dig_port)
-{
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	intel_wakeref_t wakeref = fetch_and_zero(&dig_port->tc_lock_wakeref);
-
-	mutex_unlock(&dig_port->tc_lock);
-
-	intel_display_power_put_async(i915, POWER_DOMAIN_DISPLAY_CORE,
-				      wakeref);
+	__intel_tc_port_lock(dig_port, 1);
 }
 
 /**
- * intel_tc_port_disconnect_phy: disconnect TypeC PHY from display port
+ * intel_tc_port_disconnect_phy_work: disconnect TypeC PHY from display port
  * @dig_port: digital port
  *
  * Disconnect the given digital port from its TypeC PHY (handing back the
- * control of the PHY to the TypeC subsystem). The only purpose of this
- * function is to force the disconnect even with a TypeC display output still
- * plugged to the TypeC connector, which is required by the TypeC firmwares
- * during system suspend and shutdown. Otherwise - during the unplug event
- * handling - the PHY ownership is released automatically by
- * intel_tc_port_reset_mode(), when calling this function is not required.
+ * control of the PHY to the TypeC subsystem). This will happen in a delayed
+ * manner after each aux transactions and modeset disables.
  */
-void intel_tc_port_disconnect_phy(struct intel_digital_port *dig_port)
+static void intel_tc_port_disconnect_phy_work(struct work_struct *work)
 {
-	__intel_tc_port_lock(dig_port, 1, true);
-	intel_tc_port_unlock(dig_port);
+	struct intel_digital_port *dig_port =
+		container_of(work, struct intel_digital_port, tc_disconnect_phy_work.work);
+
+	mutex_lock(&dig_port->tc_lock);
+
+	if (!dig_port->tc_link_refcount)
+		intel_tc_port_update_mode(dig_port, 1, true);
+
+	mutex_unlock(&dig_port->tc_lock);
+}
+
+/**
+ * intel_tc_port_flush_work: flush the work disconnecting the PHY
+ * @dig_port: digital port
+ *
+ * Flush the delayed work disconnecting an idle PHY.
+ */
+void intel_tc_port_flush_work(struct intel_digital_port *dig_port)
+{
+	flush_delayed_work(&dig_port->tc_disconnect_phy_work);
+}
+
+void intel_tc_port_unlock(struct intel_digital_port *dig_port)
+{
+	if (!dig_port->tc_link_refcount && dig_port->tc_mode != TC_PORT_DISCONNECTED)
+		queue_delayed_work(system_unbound_wq, &dig_port->tc_disconnect_phy_work,
+				   msecs_to_jiffies(1000));
+
+	mutex_unlock(&dig_port->tc_lock);
 }
 
 bool intel_tc_port_ref_held(struct intel_digital_port *dig_port)
@@ -789,16 +807,16 @@ bool intel_tc_port_ref_held(struct intel_digital_port *dig_port)
 void intel_tc_port_get_link(struct intel_digital_port *dig_port,
 			    int required_lanes)
 {
-	__intel_tc_port_lock(dig_port, required_lanes, false);
+	__intel_tc_port_lock(dig_port, required_lanes);
 	dig_port->tc_link_refcount++;
 	intel_tc_port_unlock(dig_port);
 }
 
 void intel_tc_port_put_link(struct intel_digital_port *dig_port)
 {
-	mutex_lock(&dig_port->tc_lock);
-	dig_port->tc_link_refcount--;
-	mutex_unlock(&dig_port->tc_lock);
+	intel_tc_port_lock(dig_port);
+	--dig_port->tc_link_refcount;
+	intel_tc_port_unlock(dig_port);
 }
 
 static bool
@@ -854,6 +872,7 @@ void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 		 "%c/TC#%d", port_name(port), tc_port + 1);
 
 	mutex_init(&dig_port->tc_lock);
+	INIT_DELAYED_WORK(&dig_port->tc_disconnect_phy_work, intel_tc_port_disconnect_phy_work);
 	dig_port->tc_legacy_port = is_legacy;
 	dig_port->tc_mode = TC_PORT_DISCONNECTED;
 	dig_port->tc_link_refcount = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index 0fdcddb4fc870..6b47b29f551c9 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -17,7 +17,6 @@ bool intel_tc_port_in_dp_alt_mode(struct intel_digital_port *dig_port);
 bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port);
 
 bool intel_tc_port_connected(struct intel_encoder *encoder);
-void intel_tc_port_disconnect_phy(struct intel_digital_port *dig_port);
 
 u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port);
 u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port);
@@ -28,6 +27,7 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 void intel_tc_port_sanitize(struct intel_digital_port *dig_port);
 void intel_tc_port_lock(struct intel_digital_port *dig_port);
 void intel_tc_port_unlock(struct intel_digital_port *dig_port);
+void intel_tc_port_flush_work(struct intel_digital_port *dig_port);
 void intel_tc_port_get_link(struct intel_digital_port *dig_port,
 			    int required_lanes);
 void intel_tc_port_put_link(struct intel_digital_port *dig_port);
-- 
2.27.0

