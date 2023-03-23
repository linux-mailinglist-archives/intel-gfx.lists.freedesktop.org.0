Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D43FF6C6ABF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF4D510EAC9;
	Thu, 23 Mar 2023 14:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607AD10EAB0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581255; x=1711117255;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=keEVMvuBgCmxEQFl9Zp1ee3NAy7Z/HRbtLZqeDndDsg=;
 b=lRlQYZsaA0GpMhZUCAzS+Y61Sqy7DE7roruLhSsDeziB8qfA/cwtpOQU
 HLMHdorkRVW5IC9NMQl/+kTF1RYl1v6qYYx9cwuJxoQXK01YjOGFS4KCr
 t/Xz58A414v8vUhse4XDBL2q3GkkHDwm/EZn39j6yjsz9SXBkWr7i+D7i
 31e8m5cxYWjvf/AWlUf+kjHA7sa5rIwFOwzMDovY/rvq6JWIWkFN6PN1y
 vvjO4a7gYhNnDQSX3IvZnlEc2wpG96IsWfyzh5nwLLz3MBvLzlpcw1yoQ
 Ft08X9VE06aeymzjXgRsXZWVvvT3P/q08MaalBMj6DSYkxKwTjVX7BuFD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892302"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892302"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722677"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722677"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:54 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:21 +0200
Message-Id: <20230323142035.1432621-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/29] drm/i915/tc: Check TC mode instead of the
 VBT legacy flag
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

After the previous patch the TC mode in the connect/disconnect functions
is always in sync with the VBT legacy port flag, so for consistency with
the rest of the function check the TC mode instead of the VBT flag.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index e61daa40356b5..e8bd54d1582bc 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -449,7 +449,7 @@ static bool tc_phy_verify_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
 	int max_lanes;
 
 	max_lanes = intel_tc_port_fia_max_lane_count(dig_port);
-	if (tc->legacy_port) {
+	if (tc->mode == TC_PORT_LEGACY) {
 		drm_WARN_ON(&i915->drm, max_lanes != 4);
 		return true;
 	}
@@ -485,16 +485,15 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 	if (tc->mode == TC_PORT_TBT_ALT)
 		return true;
 
-	if (!tc_phy_is_ready(tc) &&
-	    !drm_WARN_ON(&i915->drm, tc->legacy_port)) {
-		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
-			    tc->port_name);
+	if ((!tc_phy_is_ready(tc) ||
+	     !tc_phy_take_ownership(tc, true)) &&
+	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
+		drm_dbg_kms(&i915->drm, "Port %s: can't take PHY ownership (ready %s)\n",
+			    tc->port_name,
+			    str_yes_no(tc_phy_is_ready(tc)));
 		return false;
 	}
 
-	if (!tc_phy_take_ownership(tc, true) &&
-	    !drm_WARN_ON(&i915->drm, tc->legacy_port))
-		return false;
 
 	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
 		goto out_release_phy;
-- 
2.37.1

