Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3A76C6ACA
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5153410EAAC;
	Thu, 23 Mar 2023 14:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5672810EAB8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581256; x=1711117256;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=v/mqPEQov4JBHS9ICzOOSFa8RgorgKlOu2gOhIJmOsE=;
 b=npWIitRo/tG9QwpSlL63m8Ihjfd5n4ggfbQmoxj2HMbm5FlhOKZCpMFI
 qAGVAjnE4dn+8lEIOTitR6vCyHv8Vx4ihabfmUtwG8VF3aBFNrn9xAMR9
 2SSFPyCq/N1budrJBMMU7wTg6gwQa1dWpF2vm3xbBhLtC9rWiFOaeMkIS
 Uot7GwP5/h9+E9HY5ZlYV/LQA15Q+eHWum13LYQ96+Z0n59vQhFQjZCxG
 QPPSWytb/uJ2C2RDS+N+BTU3bNYm0Hh+pILfM3WKaglt2dHuhVRyDu7oW
 vZNvy0Y5wIJ1UCCHYBUZXFBv8FsnOFPy2JdaZMoVxKLNQ+VJOysfzXlD1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892308"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892308"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722678"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722678"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:55 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:22 +0200
Message-Id: <20230323142035.1432621-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/29] drm/i915/tc: Block/unblock TC-cold in the
 PHY connect/disconnect hooks
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

Move blocking/unblocking the TC-cold power state to the platform
specific PHY connect / disconnect hooks. This allows for adjusting the
connect/disconnect sequence as required for each platform.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 43 ++++++++-----------------
 1 file changed, 13 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index e8bd54d1582bc..253ab30c34f7a 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -482,6 +482,8 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 
+	tc->lock_wakeref = tc_cold_block(tc, &tc->lock_power_domain);
+
 	if (tc->mode == TC_PORT_TBT_ALT)
 		return true;
 
@@ -491,7 +493,7 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 		drm_dbg_kms(&i915->drm, "Port %s: can't take PHY ownership (ready %s)\n",
 			    tc->port_name,
 			    str_yes_no(tc_phy_is_ready(tc)));
-		return false;
+		goto out_unblock_tc_cold;
 	}
 
 
@@ -502,6 +504,10 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 
 out_release_phy:
 	tc_phy_take_ownership(tc, false);
+out_unblock_tc_cold:
+	tc_cold_unblock(tc,
+			tc->lock_power_domain,
+			fetch_and_zero(&tc->lock_wakeref));
 
 	return false;
 }
@@ -518,6 +524,9 @@ static void icl_tc_phy_disconnect(struct intel_tc_port *tc)
 		tc_phy_take_ownership(tc, false);
 		fallthrough;
 	case TC_PORT_TBT_ALT:
+		tc_cold_unblock(tc,
+				tc->lock_power_domain,
+				fetch_and_zero(&tc->lock_wakeref));
 		break;
 	default:
 		MISSING_CASE(tc->mode);
@@ -888,32 +897,9 @@ static bool intel_tc_port_needs_reset(struct intel_tc_port *tc)
 static void intel_tc_port_update_mode(struct intel_tc_port *tc,
 				      int required_lanes, bool force_disconnect)
 {
-	enum intel_display_power_domain domain;
-	intel_wakeref_t wref;
-	bool needs_reset = force_disconnect;
-
-	if (!needs_reset) {
-		/* Get power domain required to check the hotplug live status. */
-		wref = tc_cold_block(tc, &domain);
-		needs_reset = intel_tc_port_needs_reset(tc);
-		tc_cold_unblock(tc, domain, wref);
-	}
-
-	if (!needs_reset)
-		return;
-
-	/* Get power domain required for resetting the mode. */
-	wref = tc_cold_block_in_mode(tc, TC_PORT_DISCONNECTED, &domain);
-
-	intel_tc_port_reset_mode(tc, required_lanes, force_disconnect);
-
-	/* Get power domain matching the new mode after reset. */
-	tc_cold_unblock(tc, tc->lock_power_domain,
-			fetch_and_zero(&tc->lock_wakeref));
-	if (tc->mode != TC_PORT_DISCONNECTED)
-		tc->lock_wakeref = tc_cold_block(tc, &tc->lock_power_domain);
-
-	tc_cold_unblock(tc, domain, wref);
+	if (force_disconnect ||
+	    intel_tc_port_needs_reset(tc))
+		intel_tc_port_reset_mode(tc, required_lanes, force_disconnect);
 }
 
 static void __intel_tc_port_get_link(struct intel_tc_port *tc)
@@ -1053,9 +1039,6 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
 				    tc_port_mode_name(tc->init_mode));
 		tc_phy_disconnect(tc);
 		__intel_tc_port_put_link(tc);
-
-		tc_cold_unblock(tc, tc->lock_power_domain,
-				fetch_and_zero(&tc->lock_wakeref));
 	}
 
 	drm_dbg_kms(&i915->drm, "Port %s: sanitize mode (%s)\n",
-- 
2.37.1

