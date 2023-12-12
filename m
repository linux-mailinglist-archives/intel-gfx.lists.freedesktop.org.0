Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C257880EB0E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 12:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C5710E1D8;
	Tue, 12 Dec 2023 11:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA20310E1D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Dec 2023 11:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702382278; x=1733918278;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qDZaMMkxVQNlm4BM0ASV6DvKk7NP6gqJQ9RurfmXpu8=;
 b=M9EOIKGOatQ/RK/p/ATqrk1OvISOl72txn7ZK+ixzS11jHtMO3L6apHK
 ftBuNAms92d6sO1c4XD6ikBgfcx4hsLSMW1oqgfiVv5Ayw8vQUFv+3xCq
 Dt9ZU/gOtb54JcooV8Ef+YPcA2TJ2OXpZHqINwZi/2l01ENmCI80ubGk8
 2jHH3vIrx7HMRbrTX1uMdEQTlQHFdalnz6NQfUz1LCIvu4JzjA1pKe1cU
 UWBqX58dIXXDQ1pcOsIO04QMINM+A/D5zdUT0al+tA2dnsiGSddEi/PhA
 DSwiDzyGW44viyiiM8rU9gKyg5rEQNfvL8giFSWfkhpvHvNyxR+G2kL3H g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="385205240"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="385205240"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 03:57:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="1104880487"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="1104880487"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga005.fm.intel.com with ESMTP; 12 Dec 2023 03:57:56 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2] drm/i915/display: Wait for PHY readiness not needed for
 disabling sequence
Date: Tue, 12 Dec 2023 13:51:30 +0200
Message-Id: <20231212115130.485911-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

When going through the disconnection flow we don't need to wait for PHY
readiness and hence we can skip the wait part. For disabling the function
returns false as an indicator that the power is not enabled. After all,
we are not even using the return value when Type-C is disconnecting.

v2: Cleanup for increased readibility (Imre)

BSpec: 65380

For VLK-53734

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index f64d348a969e..dcf05e00e505 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1030,18 +1030,25 @@ static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enabl
 
 	__xelpdp_tc_phy_enable_tcss_power(tc, enable);
 
-	if ((!tc_phy_wait_for_ready(tc) ||
-	     !xelpdp_tc_phy_wait_for_tcss_power(tc, enable)) &&
-	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
-		if (enable) {
-			__xelpdp_tc_phy_enable_tcss_power(tc, false);
-			xelpdp_tc_phy_wait_for_tcss_power(tc, false);
-		}
+	if (enable && !tc_phy_wait_for_ready(tc))
+		goto out_disable;
 
-		return false;
-	}
+	if (!xelpdp_tc_phy_wait_for_tcss_power(tc, enable))
+		goto out_disable;
 
 	return true;
+
+out_disable:
+	if (drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY))
+		return false;
+
+	if (!enable)
+		return false;
+
+	__xelpdp_tc_phy_enable_tcss_power(tc, false);
+	xelpdp_tc_phy_wait_for_tcss_power(tc, false);
+
+	return false;
 }
 
 static void xelpdp_tc_phy_take_ownership(struct intel_tc_port *tc, bool take)
-- 
2.34.1

