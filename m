Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DC86BD109
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABECD10E20E;
	Thu, 16 Mar 2023 13:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FE7510E1EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974029; x=1710510029;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wag4D54rGrmvQo3xrWj85Gis9nZqnkHPc8hmW6ZUIdM=;
 b=cejaHTVFFfRlQkA4S7512+d3JuVqt5zSSJqG+g3FaAvkN4umY7iCjyhb
 DieLtym59Nz49i1UxHCf3dNrVsbKI5y+gfj0MWFeAyWOvPDIjaANDPkEd
 k1aYx3CSEWh391Hrn4L1zLHC8swhpxOmX+NoL5D/tNejaQJWU5GuPYXKb
 WadPPJcPoku8Vw7HfVJprZ9zBaOQyoFjYBrwxsYgOmHjcW7jIB+n/cVUL
 j8XZskLu0gl0oFW3W0tH0Rlj77j/H2/FJ6nZgyolZ6saPKHvcufuqSS2c
 o36Cy0r5bal3SWWSeAn5+T4d/fKJGJ5RBzziIcG7grbitRSGMXfky0ufx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524690"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524690"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171277"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171277"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:16 +0200
Message-Id: <20230316131724.359612-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/14] drm/i915/tc: Factor out helpers
 converting HPD mask to TC mode
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

Factor out helpers used later in the patchset to convert an HPD
status mask to TC mode or target TC mode.

No functional changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 44 ++++++++++++++++++-------
 1 file changed, 33 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 2116c82831a53..002e142cc746f 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -591,11 +591,28 @@ static void tc_phy_wait_for_ready(struct intel_digital_port *dig_port)
 			dig_port->tc_port_name);
 }
 
+static enum tc_port_mode
+hpd_mask_to_tc_mode(u32 live_status_mask)
+{
+	if (live_status_mask)
+		return fls(live_status_mask) - 1;
+
+	return TC_PORT_DISCONNECTED;
+}
+
+static enum tc_port_mode
+tc_phy_hpd_live_mode(struct intel_digital_port *dig_port)
+{
+	u32 live_status_mask = tc_port_live_status_mask(dig_port);
+
+	return hpd_mask_to_tc_mode(live_status_mask);
+}
+
 static enum tc_port_mode
 intel_tc_port_get_current_mode(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	u32 live_status_mask = tc_port_live_status_mask(dig_port);
+	enum tc_port_mode live_mode = tc_phy_hpd_live_mode(dig_port);
 	enum tc_port_mode mode;
 
 	/*
@@ -611,27 +628,32 @@ intel_tc_port_get_current_mode(struct intel_digital_port *dig_port)
 		return TC_PORT_TBT_ALT;
 
 	mode = dig_port->tc_legacy_port ? TC_PORT_LEGACY : TC_PORT_DP_ALT;
-	if (live_status_mask) {
-		enum tc_port_mode live_mode = fls(live_status_mask) - 1;
-
-		if (!drm_WARN_ON(&i915->drm, live_mode == TC_PORT_TBT_ALT))
-			mode = live_mode;
-	}
+	if (live_mode != TC_PORT_DISCONNECTED &&
+	    !drm_WARN_ON(&i915->drm, live_mode == TC_PORT_TBT_ALT))
+		mode = live_mode;
 
 	return mode;
 }
 
 static enum tc_port_mode
-intel_tc_port_get_target_mode(struct intel_digital_port *dig_port)
+hpd_mask_to_target_mode(u32 live_status_mask)
 {
-	u32 live_status_mask = tc_port_live_status_mask(dig_port);
+	enum tc_port_mode mode = hpd_mask_to_tc_mode(live_status_mask);
 
-	if (live_status_mask)
-		return fls(live_status_mask) - 1;
+	if (mode != TC_PORT_DISCONNECTED)
+		return mode;
 
 	return TC_PORT_TBT_ALT;
 }
 
+static enum tc_port_mode
+intel_tc_port_get_target_mode(struct intel_digital_port *dig_port)
+{
+	u32 live_status_mask = tc_port_live_status_mask(dig_port);
+
+	return hpd_mask_to_target_mode(live_status_mask);
+}
+
 static void intel_tc_port_reset_mode(struct intel_digital_port *dig_port,
 				     int required_lanes, bool force_disconnect)
 {
-- 
2.37.1

