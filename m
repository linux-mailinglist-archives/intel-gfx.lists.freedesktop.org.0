Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F35226BD110
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A6D810ECCF;
	Thu, 16 Mar 2023 13:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE91E10E1F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974037; x=1710510037;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gqPBmgY4e6GpCAT+EsPFZJLqACgLw7jvkGj3tBF8JoU=;
 b=PkKTSfCyjQ7BQA0tQhB3Yrame4w8IZcPBX6KArg7hrrHNk8tZskpeNm5
 tHFcKPXXGZ0b7Txyv7OpL7KY89mYISs5XAfc1qHl3zspQijmsTnURtwl2
 wSb0bcEd3hE9+ypBRFf3CFIufP2S27n4HS+3lp6FFu4Sgjzna2NIPEy41
 27iKadyAUF9opzzYKh3yi1oECjMBjUBLugHqfVxy+c6uER30hedESUK5k
 VPEkqkmnNjKp/d8Ah2mvh5dL9NkmZIx0yBq15mUsSP4kdI0sexzTYwsHW
 +u0f/vbVWimu3mWQYbQnkdSegdfo7Md2cwNqSZeoJbvC/1ycdJ70fIn8K A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524755"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524755"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171281"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171281"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:35 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:19 +0200
Message-Id: <20230316131724.359612-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/14] drm/i915/tc: Fix initial TC mode on
 disabled legacy ports
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

Atm, a TC port's initial mode will be read out as TBT mode in any case
the PHY ownership is not held. This isn't correct for legacy ports which
should be used only in legacy mode.

Fix the above initial mode to be disconnected mode for a legacy port and
TBT mode for DP-alt/TBT ports. Determine the port type by checking first
the HPD state and then the legacy VBT flag (so the HPD state can correct
a bogus VBT flag). If a sink is connected on a disabled port the PHY
will get also connected (switching it to legacy mode on a legacy port).

Also connect the PHY on a legacy port if it's enabled but BIOS
incorrectly left it in the disconnected state for some reason.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 67 ++++++++++++++++++++++---
 1 file changed, 61 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index f66129494cc40..35e6339caa32f 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -558,6 +558,16 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
 	}
 }
 
+static bool tc_phy_is_ready_and_owned(struct intel_digital_port *dig_port,
+				      bool phy_is_ready, bool phy_is_owned)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
+	drm_WARN_ON(&i915->drm, phy_is_owned && !phy_is_ready);
+
+	return phy_is_ready && phy_is_owned;
+}
+
 static bool icl_tc_phy_is_connected(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
@@ -609,11 +619,34 @@ tc_phy_hpd_live_mode(struct intel_digital_port *dig_port)
 	return hpd_mask_to_tc_mode(live_status_mask);
 }
 
+static enum tc_port_mode
+get_tc_mode_in_phy_not_owned_state(struct intel_digital_port *dig_port,
+				   enum tc_port_mode live_mode)
+{
+	switch (live_mode) {
+	case TC_PORT_LEGACY:
+		return TC_PORT_DISCONNECTED;
+	case TC_PORT_DP_ALT:
+	case TC_PORT_TBT_ALT:
+		return TC_PORT_TBT_ALT;
+	default:
+		MISSING_CASE(live_mode);
+		fallthrough;
+	case TC_PORT_DISCONNECTED:
+		if (dig_port->tc_legacy_port)
+			return TC_PORT_DISCONNECTED;
+		else
+			return TC_PORT_TBT_ALT;
+	}
+}
+
 static enum tc_port_mode
 intel_tc_port_get_current_mode(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum tc_port_mode live_mode = tc_phy_hpd_live_mode(dig_port);
+	bool phy_is_ready;
+	bool phy_is_owned;
 	enum tc_port_mode mode;
 
 	/*
@@ -624,9 +657,11 @@ intel_tc_port_get_current_mode(struct intel_digital_port *dig_port)
 	if (dig_port->tc_legacy_port)
 		tc_phy_wait_for_ready(dig_port);
 
-	if (!tc_phy_is_owned(dig_port) ||
-	    drm_WARN_ON(&i915->drm, !tc_phy_status_complete(dig_port)))
-		return TC_PORT_TBT_ALT;
+	phy_is_ready = tc_phy_status_complete(dig_port);
+	phy_is_owned = tc_phy_is_owned(dig_port);
+
+	if (!tc_phy_is_ready_and_owned(dig_port, phy_is_ready, phy_is_owned))
+		return get_tc_mode_in_phy_not_owned_state(dig_port, live_mode);
 
 	mode = dig_port->tc_legacy_port ? TC_PORT_LEGACY : TC_PORT_DP_ALT;
 	if (live_mode != TC_PORT_DISCONNECTED &&
@@ -758,6 +793,7 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	intel_wakeref_t tc_cold_wref;
 	enum intel_display_power_domain domain;
+	bool update_mode = false;
 
 	mutex_lock(&dig_port->tc_lock);
 
@@ -773,14 +809,32 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 	 * intel_tc_port_sanitize_mode().
 	 */
 	dig_port->tc_init_mode = dig_port->tc_mode;
-	dig_port->tc_lock_wakeref = tc_cold_block(dig_port, &dig_port->tc_lock_power_domain);
+	if (dig_port->tc_mode != TC_PORT_DISCONNECTED)
+		dig_port->tc_lock_wakeref =
+			tc_cold_block(dig_port, &dig_port->tc_lock_power_domain);
 
 	/*
 	 * The PHY needs to be connected for AUX to work during HW readout and
 	 * MST topology resume, but the PHY mode can only be changed if the
 	 * port is disabled.
+	 *
+	 * An exception is the case where BIOS leaves the PHY incorrectly
+	 * disconnected on an enabled legacy port. Work around that by
+	 * connecting the PHY even though the port is enabled. This doesn't
+	 * cause a problem as the PHY ownership state is ignored by the
+	 * IOM/TCSS firmware (only display can own the PHY in that case).
 	 */
-	if (!tc_port_is_enabled(dig_port))
+	if (!tc_port_is_enabled(dig_port)) {
+		update_mode = true;
+	} else if (dig_port->tc_mode == TC_PORT_DISCONNECTED) {
+		drm_WARN_ON(&i915->drm, !dig_port->tc_legacy_port);
+		drm_err(&i915->drm,
+			"Port %s: PHY disconnected on enabled port, connecting it\n",
+			dig_port->tc_port_name);
+		update_mode = true;
+	}
+
+	if (update_mode)
 		intel_tc_port_update_mode(dig_port, 1, false);
 
 	/* Prevent changing dig_port->tc_mode until intel_tc_port_sanitize_mode() is called. */
@@ -831,7 +885,8 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
 		 * we'll just switch to disconnected mode from it here without
 		 * a note.
 		 */
-		if (dig_port->tc_init_mode != TC_PORT_TBT_ALT)
+		if (dig_port->tc_init_mode != TC_PORT_TBT_ALT &&
+		    dig_port->tc_init_mode != TC_PORT_DISCONNECTED)
 			drm_dbg_kms(&i915->drm,
 				    "Port %s: PHY left in %s mode on disabled port, disconnecting it\n",
 				    dig_port->tc_port_name,
-- 
2.37.1

