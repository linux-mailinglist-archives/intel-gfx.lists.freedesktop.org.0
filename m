Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F54741C5A1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 15:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C396EA7C;
	Wed, 29 Sep 2021 13:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8DB06EA71
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 13:28:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="310487738"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="310487738"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:28:41 -0700
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="617510922"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:28:40 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 29 Sep 2021 16:28:31 +0300
Message-Id: <20210929132833.2253961-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210921002313.1132357-10-imre.deak@intel.com>
References: <20210921002313.1132357-10-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/13] drm/i915/tc: Avoid using legacy AUX PW
 in TBT mode
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

For the ADL-P TBT mode the spec doesn't require blocking TC-cold by
using the legacy AUX power domain. To avoid the timeouts that this would
cause during PHY disconnect/reconnect sequences (which will be more
frequent after a follow-up change) use the TC_COLD_OFF power domain in
TBT mode on all platforms. On TGL this power domain blocks TC-cold via a
PUNIT command, while on other platforms the domain just takes a runtime
PM reference.

If the HPD live status indicates that the port mode needs to be reset
- for instance after switching from TBT to a DP-alt sink - still take
the AUX domain, since the IOM firmware handshake requires this.

v2: Rebased on v2 of the previous patch.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 55 ++++++++++++++++---------
 1 file changed, 36 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 69c917fce03e4..2df4d0beb6368 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -59,10 +59,10 @@ bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
 static enum intel_display_power_domain
 tc_cold_get_power_domain(struct intel_digital_port *dig_port, enum tc_port_mode mode)
 {
-	if (intel_tc_cold_requires_aux_pw(dig_port))
-		return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
-	else
+	if (mode == TC_PORT_TBT_ALT || !intel_tc_cold_requires_aux_pw(dig_port))
 		return POWER_DOMAIN_TC_COLD_OFF;
+
+	return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
 }
 
 static intel_wakeref_t
@@ -645,6 +645,36 @@ static void intel_tc_port_reset_mode(struct intel_digital_port *dig_port,
 		    tc_port_mode_name(dig_port->tc_mode));
 }
 
+static bool intel_tc_port_needs_reset(struct intel_digital_port *dig_port)
+{
+	return intel_tc_port_get_target_mode(dig_port) != dig_port->tc_mode;
+}
+
+static void intel_tc_port_update_mode(struct intel_digital_port *dig_port,
+				      int required_lanes, bool force_disconnect)
+{
+	enum intel_display_power_domain domain;
+	intel_wakeref_t wref;
+	bool needs_reset = force_disconnect;
+
+	if (!needs_reset) {
+		/* Get power domain required to check the hotplug live status. */
+		wref = tc_cold_block(dig_port, &domain);
+		needs_reset = intel_tc_port_needs_reset(dig_port);
+		tc_cold_unblock(dig_port, domain, wref);
+	}
+
+	if (!needs_reset)
+		return;
+
+	/* Get power domain required for resetting the mode. */
+	wref = tc_cold_block_in_mode(dig_port, TC_PORT_DISCONNECTED, &domain);
+
+	intel_tc_port_reset_mode(dig_port, required_lanes, force_disconnect);
+
+	tc_cold_unblock(dig_port, domain, wref);
+}
+
 static void
 intel_tc_port_link_init_refcount(struct intel_digital_port *dig_port,
 				 int refcount)
@@ -691,11 +721,6 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 	mutex_unlock(&dig_port->tc_lock);
 }
 
-static bool intel_tc_port_needs_reset(struct intel_digital_port *dig_port)
-{
-	return intel_tc_port_get_target_mode(dig_port) != dig_port->tc_mode;
-}
-
 /*
  * The type-C ports are different because even when they are connected, they may
  * not be available/usable by the graphics driver: see the comment on
@@ -735,18 +760,10 @@ static void __intel_tc_port_lock(struct intel_digital_port *dig_port,
 
 	mutex_lock(&dig_port->tc_lock);
 
-	if (!dig_port->tc_link_refcount) {
-		enum intel_display_power_domain domain;
-		intel_wakeref_t tc_cold_wref;
 
-		tc_cold_wref = tc_cold_block(dig_port, &domain);
-
-		if (force_disconnect || intel_tc_port_needs_reset(dig_port))
-			intel_tc_port_reset_mode(dig_port, required_lanes,
-						 force_disconnect);
-
-		tc_cold_unblock(dig_port, domain, tc_cold_wref);
-	}
+	if (!dig_port->tc_link_refcount)
+		intel_tc_port_update_mode(dig_port, required_lanes,
+					  force_disconnect);
 
 	drm_WARN_ON(&i915->drm, dig_port->tc_lock_wakeref);
 	dig_port->tc_lock_wakeref = wakeref;
-- 
2.27.0

