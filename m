Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C0841C59D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 15:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F53D6EA77;
	Wed, 29 Sep 2021 13:28:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 321D26EA6E
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 13:28:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="310487723"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="310487723"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:28:38 -0700
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="617510890"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:28:37 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 29 Sep 2021 16:28:28 +0300
Message-Id: <20210929132833.2253961-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210921002313.1132357-5-imre.deak@intel.com>
References: <20210921002313.1132357-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/13] drm/i915/tc: Check for DP-alt,
 legacy sinks before taking PHY ownership
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

On ADL-P the PHY ready/complete flag is always set even in TBT-alt mode.
To avoid taking the PHY ownership and the following spurious "PHY sudden
disconnect" messages on this platform when connecting the PHY in TBT
mode, check if there is any DP-alt or legacy sink connected before
taking the ownership.

v2: (Jose)
- Fix debug message clarifying that a TBT sink can be connected.
- Add comments describing the PHY complete HW flag semantic differences
  between adl-p and other platforms.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 0d3555437b0b1..4e5ff823a3a30 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -270,6 +270,14 @@ static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
 	return icl_tc_port_live_status_mask(dig_port);
 }
 
+/*
+ * Return the PHY status complete flag indicating that display can acquire the
+ * PHY ownership. The IOM firmware sets this flag when a DP-alt or legacy sink
+ * is connected and it's ready to switch the ownership to display. The flag
+ * will be left cleared when a TBT-alt sink is connected, where the PHY is
+ * owned by the TBT subsystem and so switching the ownership to display is not
+ * required.
+ */
 static bool icl_tc_phy_status_complete(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
@@ -288,6 +296,13 @@ static bool icl_tc_phy_status_complete(struct intel_digital_port *dig_port)
 	return val & DP_PHY_MODE_STATUS_COMPLETED(dig_port->tc_phy_fia_idx);
 }
 
+/*
+ * Return the PHY status complete flag indicating that display can acquire the
+ * PHY ownership. The IOM firmware sets this flag when it's ready to switch
+ * the ownership to display, regardless of what sink is connected (TBT-alt,
+ * DP-alt, legacy or nothing). For TBT-alt sinks the PHY is owned by the TBT
+ * subsystem and so switching the ownership to display is not required.
+ */
 static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
@@ -424,6 +439,7 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 			       int required_lanes)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	u32 live_status_mask;
 	int max_lanes;
 
 	if (!tc_phy_status_complete(dig_port)) {
@@ -432,6 +448,13 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 		goto out_set_tbt_alt_mode;
 	}
 
+	live_status_mask = tc_port_live_status_mask(dig_port);
+	if (!(live_status_mask & (BIT(TC_PORT_DP_ALT) | BIT(TC_PORT_LEGACY)))) {
+		drm_dbg_kms(&i915->drm, "Port %s: PHY ownership not required (live status %02x)\n",
+			    dig_port->tc_port_name, live_status_mask);
+		goto out_set_tbt_alt_mode;
+	}
+
 	if (!tc_phy_take_ownership(dig_port, true) &&
 	    !drm_WARN_ON(&i915->drm, dig_port->tc_legacy_port))
 		goto out_set_tbt_alt_mode;
-- 
2.27.0

