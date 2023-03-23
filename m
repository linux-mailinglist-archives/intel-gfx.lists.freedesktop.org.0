Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7146C6AB5
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDADF10EABF;
	Thu, 23 Mar 2023 14:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 570EA10EAB0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581252; x=1711117252;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2WH9Y0GLszjASqmAn6vrpK8TGtnGk2PlpeU+bdgMyuw=;
 b=n8l0IQ7VGUjm7m5UpvLXzMB8MRZccRSIfCXGCpJnKC7wJt/sUi6FylsT
 icUQmDxu/taCYjSnUfF+HlyUZldTF6zWmyOz4eQNV/H+PBmxSdt9m7keB
 1KkQOGMjNmDReiybheN2S3fWQ9pa/yeHeJhIXZHcg4/qU+Id8+aF03lEW
 2KOD1u2o/8ejpQq7wkKyWsssdRC5P34HvkXHSacNsTuuRJvyO6ULVom4R
 sGvGXXNv57l/iyK7iLuTHYerdHVKncPqGiutw59dkhOge+w7VAIOxS2NG
 iuW74KWHvjR3yqumecs0yi8PcAPc+uDfKield6bBDhfhsoJFoSsM+MrQp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892288"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892288"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722659"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722659"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:51 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:18 +0200
Message-Id: <20230323142035.1432621-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/29] drm/i915/tc: Factor out
 tc_phy_verify_legacy_or_dp_alt_mode()
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

Factor out a function verifying the PHY connected state in legacy or
DP-alt mode. This is common to all platforms, which can be reused in
platform specific connect hooks added in follow-up patches.

No functional changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 47 +++++++++++++++----------
 1 file changed, 29 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 9179f86287ab0..ee4db9d0eb978 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -434,27 +434,13 @@ static void icl_tc_phy_get_hw_state(struct intel_tc_port *tc)
  * connect and disconnect to cleanly transfer ownership with the controller and
  * set the type-C power state.
  */
-static bool icl_tc_phy_connect(struct intel_tc_port *tc,
-			       int required_lanes)
+static bool tc_phy_verify_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
+						int required_lanes)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	int max_lanes;
 
-	if (tc->mode == TC_PORT_TBT_ALT)
-		return true;
-
-	if (!tc_phy_is_ready(tc) &&
-	    !drm_WARN_ON(&i915->drm, tc->legacy_port)) {
-		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
-			    tc->port_name);
-		return false;
-	}
-
-	if (!tc_phy_take_ownership(tc, true) &&
-	    !drm_WARN_ON(&i915->drm, tc->legacy_port))
-		return false;
-
 	max_lanes = intel_tc_port_fia_max_lane_count(dig_port);
 	if (tc->legacy_port) {
 		drm_WARN_ON(&i915->drm, max_lanes != 4);
@@ -470,7 +456,7 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 	if (!(tc_phy_hpd_live_status(tc) & BIT(TC_PORT_DP_ALT))) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY sudden disconnect\n",
 			    tc->port_name);
-		goto out_release_phy;
+		return false;
 	}
 
 	if (max_lanes < required_lanes) {
@@ -478,9 +464,34 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 			    "Port %s: PHY max lanes %d < required lanes %d\n",
 			    tc->port_name,
 			    max_lanes, required_lanes);
-		goto out_release_phy;
+		return false;
+	}
+
+	return true;
+}
+
+static bool icl_tc_phy_connect(struct intel_tc_port *tc,
+			       int required_lanes)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+
+	if (tc->mode == TC_PORT_TBT_ALT)
+		return true;
+
+	if (!tc_phy_is_ready(tc) &&
+	    !drm_WARN_ON(&i915->drm, tc->legacy_port)) {
+		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
+			    tc->port_name);
+		return false;
 	}
 
+	if (!tc_phy_take_ownership(tc, true) &&
+	    !drm_WARN_ON(&i915->drm, tc->legacy_port))
+		return false;
+
+	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
+		goto out_release_phy;
+
 	return true;
 
 out_release_phy:
-- 
2.37.1

