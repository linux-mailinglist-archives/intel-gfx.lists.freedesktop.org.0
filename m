Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F222741C59E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 15:28:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA8366EA71;
	Wed, 29 Sep 2021 13:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63E636EA71
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 13:28:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="310487728"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="310487728"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:28:39 -0700
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="617510899"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:28:38 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 29 Sep 2021 16:28:29 +0300
Message-Id: <20210929132833.2253961-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210921002313.1132357-8-imre.deak@intel.com>
References: <20210921002313.1132357-8-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/13] drm/i915/tc: Add a mode for the TypeC
 PHY's disconnected state
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

A follow-up change will start to disconnect/re-connect PHYs around AUX
transfers and modeset enable/disables. To prepare for that add a new
TypeC PHY disconnected mode, to help tracking the TC-cold blocking power
domain status (no power domain in disconnected state, mode dependent
power domain in connected state).

v2: Move the !disconnected mode and phy-owned asserts in
    __intel_tc_port_lock() later in the patchset, when the asserts will
    hold. (Jose)

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/display/intel_tc.c      | 22 +++++++++++++-------
 2 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index d425ee77aad71..87b96fed5e0ba 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -270,6 +270,7 @@ enum tc_port {
 };
 
 enum tc_port_mode {
+	TC_PORT_DISCONNECTED,
 	TC_PORT_TBT_ALT,
 	TC_PORT_DP_ALT,
 	TC_PORT_LEGACY,
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 6d0a1b376767a..62a3070abf0a6 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -12,13 +12,14 @@
 static const char *tc_port_mode_name(enum tc_port_mode mode)
 {
 	static const char * const names[] = {
+		[TC_PORT_DISCONNECTED] = "disconnected",
 		[TC_PORT_TBT_ALT] = "tbt-alt",
 		[TC_PORT_DP_ALT] = "dp-alt",
 		[TC_PORT_LEGACY] = "legacy",
 	};
 
 	if (WARN_ON(mode >= ARRAY_SIZE(names)))
-		mode = TC_PORT_TBT_ALT;
+		mode = TC_PORT_DISCONNECTED;
 
 	return names[mode];
 }
@@ -529,10 +530,11 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
 	case TC_PORT_LEGACY:
 	case TC_PORT_DP_ALT:
 		tc_phy_take_ownership(dig_port, false);
-		dig_port->tc_mode = TC_PORT_TBT_ALT;
-		break;
+		fallthrough;
 	case TC_PORT_TBT_ALT:
-		/* Nothing to do, we stay in TBT-alt mode */
+		dig_port->tc_mode = TC_PORT_DISCONNECTED;
+		fallthrough;
+	case TC_PORT_DISCONNECTED:
 		break;
 	default:
 		MISSING_CASE(dig_port->tc_mode);
@@ -637,31 +639,34 @@ void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_encoder *encoder = &dig_port->base;
-	intel_wakeref_t tc_cold_wref;
 	int active_links = 0;
 
 	mutex_lock(&dig_port->tc_lock);
-	tc_cold_wref = tc_cold_block(dig_port);
 
-	dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
 	if (dig_port->dp.is_mst)
 		active_links = intel_dp_mst_encoder_active_links(dig_port);
 	else if (encoder->base.crtc)
 		active_links = to_intel_crtc(encoder->base.crtc)->active;
 
+	drm_WARN_ON(&i915->drm, dig_port->tc_mode != TC_PORT_DISCONNECTED);
 	if (active_links) {
+		intel_wakeref_t tc_cold_wref = tc_cold_block(dig_port);
+
+		dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
+
 		if (!icl_tc_phy_is_connected(dig_port))
 			drm_dbg_kms(&i915->drm,
 				    "Port %s: PHY disconnected with %d active link(s)\n",
 				    dig_port->tc_port_name, active_links);
 		intel_tc_port_link_init_refcount(dig_port, active_links);
+
+		tc_cold_unblock(dig_port, tc_cold_wref);
 	}
 
 	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
 		    dig_port->tc_port_name,
 		    tc_port_mode_name(dig_port->tc_mode));
 
-	tc_cold_unblock(dig_port, tc_cold_wref);
 	mutex_unlock(&dig_port->tc_lock);
 }
 
@@ -832,6 +837,7 @@ void intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 
 	mutex_init(&dig_port->tc_lock);
 	dig_port->tc_legacy_port = is_legacy;
+	dig_port->tc_mode = TC_PORT_DISCONNECTED;
 	dig_port->tc_link_refcount = 0;
 	tc_port_load_fia_params(i915, dig_port);
 }
-- 
2.27.0

