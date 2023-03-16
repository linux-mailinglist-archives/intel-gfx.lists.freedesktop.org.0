Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 150006BD112
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA07410ECEB;
	Thu, 16 Mar 2023 13:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C6E10E1F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974038; x=1710510038;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GoypTTEcBBQyXFp5jsVk9UfJo8QPScnIxbPm9CdEMBY=;
 b=NUkuQAcCNGipGVb51z9h7nnf++uRAy8VeL3wI0WnqNz4zuDc4ZeeR/CV
 fIrJToOOvGv7oLa9t5X/sxZ3keKmaspQeMlzQvlKSbURNH1VCdFgzd20m
 Setz0QNxoOw12GMnZdI/jmfzQj2NzymiGDWiW4ZsH9r5GSlTOsTUmVnQR
 +SJ0uK1GM7x68ejvlMOe7c6SOL86uYxu2TbUNwhb5alwRn6OAKExEsWL6
 8301gq37eMFzxFWOaQcoTCyX38bUnRz1V1Vvfls8Vy+jC0tuuI0cCyeHC
 F+8x0PjpyYmR+aoTIUZV4cPYRgcWDMd6rztFpLqiFepn94nHmi6WmojUW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524779"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524779"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171282"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171282"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:37 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:20 +0200
Message-Id: <20230316131724.359612-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/14] drm/i915/tc: Make the TC mode readout
 consistent in all PHY states
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

For consistency detect the initial TC mode in the PHY owned state the
same way this is done in the not owned state (w/o changing the
behavior). While at it, add more details to the PHY state debug print.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 43 +++++++++++++++++++------
 1 file changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 35e6339caa32f..5d040f0c5f630 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -619,6 +619,26 @@ tc_phy_hpd_live_mode(struct intel_digital_port *dig_port)
 	return hpd_mask_to_tc_mode(live_status_mask);
 }
 
+static enum tc_port_mode
+get_tc_mode_in_phy_owned_state(struct intel_digital_port *dig_port,
+			       enum tc_port_mode live_mode)
+{
+	switch (live_mode) {
+	case TC_PORT_LEGACY:
+	case TC_PORT_DP_ALT:
+		return live_mode;
+	default:
+		MISSING_CASE(live_mode);
+		fallthrough;
+	case TC_PORT_TBT_ALT:
+	case TC_PORT_DISCONNECTED:
+		if (dig_port->tc_legacy_port)
+			return TC_PORT_LEGACY;
+		else
+			return TC_PORT_DP_ALT;
+	}
+}
+
 static enum tc_port_mode
 get_tc_mode_in_phy_not_owned_state(struct intel_digital_port *dig_port,
 				   enum tc_port_mode live_mode)
@@ -660,13 +680,20 @@ intel_tc_port_get_current_mode(struct intel_digital_port *dig_port)
 	phy_is_ready = tc_phy_status_complete(dig_port);
 	phy_is_owned = tc_phy_is_owned(dig_port);
 
-	if (!tc_phy_is_ready_and_owned(dig_port, phy_is_ready, phy_is_owned))
-		return get_tc_mode_in_phy_not_owned_state(dig_port, live_mode);
+	if (!tc_phy_is_ready_and_owned(dig_port, phy_is_ready, phy_is_owned)) {
+		mode = get_tc_mode_in_phy_not_owned_state(dig_port, live_mode);
+	} else {
+		drm_WARN_ON(&i915->drm, live_mode == TC_PORT_TBT_ALT);
+		mode = get_tc_mode_in_phy_owned_state(dig_port, live_mode);
+	}
 
-	mode = dig_port->tc_legacy_port ? TC_PORT_LEGACY : TC_PORT_DP_ALT;
-	if (live_mode != TC_PORT_DISCONNECTED &&
-	    !drm_WARN_ON(&i915->drm, live_mode == TC_PORT_TBT_ALT))
-		mode = live_mode;
+	drm_dbg_kms(&i915->drm,
+		    "Port %s: PHY mode: %s (ready: %s, owned: %s, HPD: %s)\n",
+		    dig_port->tc_port_name,
+		    tc_port_mode_name(mode),
+		    str_yes_no(phy_is_ready),
+		    str_yes_no(phy_is_owned),
+		    tc_port_mode_name(live_mode));
 
 	return mode;
 }
@@ -842,10 +869,6 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 
 	tc_cold_unblock(dig_port, domain, tc_cold_wref);
 
-	drm_dbg_kms(&i915->drm, "Port %s: init mode (%s)\n",
-		    dig_port->tc_port_name,
-		    tc_port_mode_name(dig_port->tc_mode));
-
 	mutex_unlock(&dig_port->tc_lock);
 }
 
-- 
2.37.1

