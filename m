Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2EB6C6ABC
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A25B10EAC5;
	Thu, 23 Mar 2023 14:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DD4010EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581265; x=1711117265;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/B/Q8A47sNGDIVdGo7Qyli+Rdyg6nI/wobaOZRKFSDg=;
 b=Jsx10RZ/occvEAqajv44Yz5lqPzKoBs4KZxQ5qIad1T/97xUQVER5BzR
 fyoRYi+dCO34iVxF7u3ZzsqhgQsWR2PGrwJ+omTMkHcpaGyXlUpvjYeOO
 cBl7WjpkETWDommi1CTKs+M3sxHfKEE6cudTSSpHMz/2bLKWhUPeIjvTK
 RG87BXTG9FvoTcP6I2F0c7+gFuEW6Y8OmPE0AddyKWMpLnEChl8ytqGi1
 7JkNb+jqLL7Q5GY5fRSwXMtsMfvnaR85JpkjUs5gjIWn3kMRinXpTUxj9
 AMGPyBe48ixrjvGFvzF1m4elUjV1G/2MIiCIYPmZwg15TVVrFJbCZP9T7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892346"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892346"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722739"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722739"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:04 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:31 +0200
Message-Id: <20230323142035.1432621-26-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 25/29] drm/i915/adlp/tc: Align the
 connect/disconnect PHY sequence with bspec
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

Bspec has updated the TC connect/disconnect sequences, add the required
platform hooks for these.

The difference wrt. the old sequence is the order of taking the PHY
ownership - while holding a port power reference this requires - and
blocking the TC-cold power state.

Bspec: 49294

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 111 ++++++++++++++++++++----
 1 file changed, 94 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index f202ba324fd0a..36454ec5e8e09 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -59,7 +59,6 @@ static enum intel_display_power_domain
 tc_phy_cold_off_domain(struct intel_tc_port *);
 static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc);
 static bool tc_phy_is_ready(struct intel_tc_port *tc);
-static bool tc_phy_take_ownership(struct intel_tc_port *tc, bool take);
 static enum tc_port_mode tc_phy_get_current_mode(struct intel_tc_port *tc);
 
 static const char *tc_port_mode_name(enum tc_port_mode mode)
@@ -581,7 +580,7 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 		return true;
 
 	if ((!tc_phy_is_ready(tc) ||
-	     !tc_phy_take_ownership(tc, true)) &&
+	     !icl_tc_phy_take_ownership(tc, true)) &&
 	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
 		drm_dbg_kms(&i915->drm, "Port %s: can't take PHY ownership (ready %s)\n",
 			    tc->port_name,
@@ -596,7 +595,7 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 	return true;
 
 out_release_phy:
-	tc_phy_take_ownership(tc, false);
+	icl_tc_phy_take_ownership(tc, false);
 out_unblock_tc_cold:
 	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
 
@@ -612,7 +611,7 @@ static void icl_tc_phy_disconnect(struct intel_tc_port *tc)
 	switch (tc->mode) {
 	case TC_PORT_LEGACY:
 	case TC_PORT_DP_ALT:
-		tc_phy_take_ownership(tc, false);
+		icl_tc_phy_take_ownership(tc, false);
 		fallthrough;
 	case TC_PORT_TBT_ALT:
 		tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
@@ -769,6 +768,94 @@ static bool adlp_tc_phy_is_owned(struct intel_tc_port *tc)
 	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 }
 
+static void adlp_tc_phy_get_hw_state(struct intel_tc_port *tc)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum intel_display_power_domain port_power_domain =
+		tc_port_power_domain(tc);
+	intel_wakeref_t port_wakeref;
+
+	port_wakeref = intel_display_power_get(i915, port_power_domain);
+
+	tc->mode = tc_phy_get_current_mode(tc);
+	if (tc->mode != TC_PORT_DISCONNECTED)
+		tc->lock_wakeref = tc_cold_block(tc);
+
+	intel_display_power_put(i915, port_power_domain, port_wakeref);
+}
+
+static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum intel_display_power_domain port_power_domain =
+		tc_port_power_domain(tc);
+	intel_wakeref_t port_wakeref;
+
+	if (tc->mode == TC_PORT_TBT_ALT) {
+		tc->lock_wakeref = tc_cold_block(tc);
+		return true;
+	}
+
+	port_wakeref = intel_display_power_get(i915, port_power_domain);
+
+	if (!adlp_tc_phy_take_ownership(tc, true) &&
+	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
+		drm_dbg_kms(&i915->drm, "Port %s: can't take PHY ownership\n",
+			    tc->port_name);
+		goto out_put_port_power;
+	}
+
+	if (!tc_phy_is_ready(tc) &&
+	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
+		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
+			    tc->port_name);
+		goto out_release_phy;
+	}
+
+	tc->lock_wakeref = tc_cold_block(tc);
+
+	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
+		goto out_unblock_tc_cold;
+
+	intel_display_power_put(i915, port_power_domain, port_wakeref);
+
+	return true;
+
+out_unblock_tc_cold:
+	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
+out_release_phy:
+	adlp_tc_phy_take_ownership(tc, false);
+out_put_port_power:
+	intel_display_power_put(i915, port_power_domain, port_wakeref);
+
+	return false;
+}
+
+static void adlp_tc_phy_disconnect(struct intel_tc_port *tc)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum intel_display_power_domain port_power_domain =
+		tc_port_power_domain(tc);
+	intel_wakeref_t port_wakeref;
+
+	port_wakeref = intel_display_power_get(i915, port_power_domain);
+
+	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
+
+	switch (tc->mode) {
+	case TC_PORT_LEGACY:
+	case TC_PORT_DP_ALT:
+		adlp_tc_phy_take_ownership(tc, false);
+		fallthrough;
+	case TC_PORT_TBT_ALT:
+		break;
+	default:
+		MISSING_CASE(tc->mode);
+	}
+
+	intel_display_power_put(i915, port_power_domain, port_wakeref);
+}
+
 static void adlp_tc_phy_init(struct intel_tc_port *tc)
 {
 	tc_phy_load_fia_params(tc, true);
@@ -779,9 +866,9 @@ static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
 	.hpd_live_status = adlp_tc_phy_hpd_live_status,
 	.is_ready = adlp_tc_phy_is_ready,
 	.is_owned = adlp_tc_phy_is_owned,
-	.get_hw_state = icl_tc_phy_get_hw_state,
-	.connect = icl_tc_phy_connect,
-	.disconnect = icl_tc_phy_disconnect,
+	.get_hw_state = adlp_tc_phy_get_hw_state,
+	.connect = adlp_tc_phy_connect,
+	.disconnect = adlp_tc_phy_disconnect,
 	.init = adlp_tc_phy_init,
 };
 
@@ -823,16 +910,6 @@ static void tc_phy_get_hw_state(struct intel_tc_port *tc)
 	tc->phy_ops->get_hw_state(tc);
 }
 
-static bool tc_phy_take_ownership(struct intel_tc_port *tc, bool take)
-{
-	struct drm_i915_private *i915 = tc_to_i915(tc);
-
-	if (IS_ALDERLAKE_P(i915))
-		return adlp_tc_phy_take_ownership(tc, take);
-
-	return icl_tc_phy_take_ownership(tc, take);
-}
-
 static bool tc_phy_is_ready_and_owned(struct intel_tc_port *tc,
 				      bool phy_is_ready, bool phy_is_owned)
 {
-- 
2.37.1

