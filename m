Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D9B6C6AB2
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81B710EAB0;
	Thu, 23 Mar 2023 14:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0D610EAB0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581250; x=1711117250;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0QQzqufCDhxfKFNCUsANYukRmk2us3KOmUW8pYIiRYc=;
 b=Rq9Iv/yI3ndRO5WNbqvq+hMXcVJyJjtFF3Q/X1tbE8lw7hfwIJutycC9
 wQb1LuqpcXPA83zxU6cP1lMolOwvvRuDVkTAVY368iFu90EnxrLHrk9CR
 v0lCc3WLaKBxrhNNbCxRLVv8F0XtKRfF791ur65v2K72jraCbwSwCKXL0
 5LGIiRWCIK+Eb0MdU+MCygPUZdjQiWCyzDoopnu2sAF+tJZk8gOIk4Tw1
 fUyxIzjC/FVpNrMAKg06uKdc/P7IvUsluuN3cH9ltkMibOwv/5SpY+sM2
 j6OhcDO15HIiQ4pNNk4azLgxNEFdipST3UfCx6uyp5F3xVMnqYns0/Opu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892280"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892280"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722652"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722652"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:16 +0200
Message-Id: <20230323142035.1432621-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/29] drm/i915/tc: Add TC PHY hook to read out
 the PHY HW state
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

Add a TC PHY hook to read out the PHY HW state on each platform, move
the common parts to the generic helper.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 34 +++++++++++++++++--------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 7d64cb310ca3e..aa39810962592 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -28,6 +28,7 @@ struct intel_tc_phy_ops {
 	u32 (*hpd_live_status)(struct intel_tc_port *tc);
 	bool (*is_ready)(struct intel_tc_port *tc);
 	bool (*is_owned)(struct intel_tc_port *tc);
+	void (*get_hw_state)(struct intel_tc_port *tc);
 };
 
 struct intel_tc_port {
@@ -51,6 +52,7 @@ struct intel_tc_port {
 static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc);
 static bool tc_phy_is_ready(struct intel_tc_port *tc);
 static bool tc_phy_take_ownership(struct intel_tc_port *tc, bool take);
+static enum tc_port_mode tc_phy_get_current_mode(struct intel_tc_port *tc);
 
 static const char *tc_port_mode_name(enum tc_port_mode mode)
 {
@@ -407,6 +409,20 @@ static bool icl_tc_phy_is_owned(struct intel_tc_port *tc)
 	return val & DP_PHY_MODE_STATUS_NOT_SAFE(tc->phy_fia_idx);
 }
 
+static void icl_tc_phy_get_hw_state(struct intel_tc_port *tc)
+{
+	enum intel_display_power_domain domain;
+	intel_wakeref_t tc_cold_wref;
+
+	tc_cold_wref = tc_cold_block(tc, &domain);
+
+	tc->mode = tc_phy_get_current_mode(tc);
+	if (tc->mode != TC_PORT_DISCONNECTED)
+		tc->lock_wakeref = tc_cold_block(tc, &tc->lock_power_domain);
+
+	tc_cold_unblock(tc, domain, tc_cold_wref);
+}
+
 /*
  * This function implements the first part of the Connect Flow described by our
  * specification, Gen11 TypeC Programming chapter. The rest of the flow (reading
@@ -506,6 +522,7 @@ static const struct intel_tc_phy_ops icl_tc_phy_ops = {
 	.hpd_live_status = icl_tc_phy_hpd_live_status,
 	.is_ready = icl_tc_phy_is_ready,
 	.is_owned = icl_tc_phy_is_owned,
+	.get_hw_state = icl_tc_phy_get_hw_state,
 };
 
 /**
@@ -587,6 +604,7 @@ static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
 	.hpd_live_status = adlp_tc_phy_hpd_live_status,
 	.is_ready = adlp_tc_phy_is_ready,
 	.is_owned = adlp_tc_phy_is_owned,
+	.get_hw_state = icl_tc_phy_get_hw_state,
 };
 
 /**
@@ -617,6 +635,11 @@ static bool tc_phy_is_owned(struct intel_tc_port *tc)
 	return tc->phy_ops->is_owned(tc);
 }
 
+static void tc_phy_get_hw_state(struct intel_tc_port *tc)
+{
+	tc->phy_ops->get_hw_state(tc);
+}
+
 static bool tc_phy_take_ownership(struct intel_tc_port *tc, bool take)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
@@ -889,8 +912,6 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
-	intel_wakeref_t tc_cold_wref;
-	enum intel_display_power_domain domain;
 	bool update_mode = false;
 
 	mutex_lock(&tc->lock);
@@ -899,17 +920,12 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 	drm_WARN_ON(&i915->drm, tc->lock_wakeref);
 	drm_WARN_ON(&i915->drm, tc->link_refcount);
 
-	tc_cold_wref = tc_cold_block(tc, &domain);
-
-	tc->mode = tc_phy_get_current_mode(tc);
+	tc_phy_get_hw_state(tc);
 	/*
 	 * Save the initial mode for the state check in
 	 * intel_tc_port_sanitize_mode().
 	 */
 	tc->init_mode = tc->mode;
-	if (tc->mode != TC_PORT_DISCONNECTED)
-		tc->lock_wakeref =
-			tc_cold_block(tc, &tc->lock_power_domain);
 
 	/*
 	 * The PHY needs to be connected for AUX to work during HW readout and
@@ -938,8 +954,6 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 	/* Prevent changing tc->mode until intel_tc_port_sanitize_mode() is called. */
 	__intel_tc_port_get_link(tc);
 
-	tc_cold_unblock(tc, domain, tc_cold_wref);
-
 	mutex_unlock(&tc->lock);
 }
 
-- 
2.37.1

