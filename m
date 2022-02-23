Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F524C1926
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 17:56:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C26EC10F195;
	Wed, 23 Feb 2022 16:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BD6210F18F
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 16:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645635379; x=1677171379;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dnNTlhGRUbU1ZQcs8KSkPI8yJjpGX2tIvdLp6ze/3w8=;
 b=NSdp4rmNaB3cqUzldKLMYvoDvB2h47VrK12Jf7d6g9jTiz9lkzZLlI2w
 2ZDFcY/+G4llNMmyTHskd2oRkQY5saushSEcXfTffI2g6HUxYK55rSDsh
 +zGQ37DffPsiCbX2P02OLSoZx8dWsIRm9EaX0cKdXgau2A5u06mit+7nK
 6KvLfYJEUFB8FiP4FruTLQlEnRcA/g3vhIxcsCVzIQCmBGbHcJlqnjrII
 gPlCahNERQG7MH/7/SoY9507UUzQ33lMIgDn7xqQQ9azRfK+VbKSARFa4
 N3grWmJ/czEka4Dz3lzlTX/Awz+yFNo932cvpxYiJwtyZUzV5/PPRWUOc A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="251759227"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="251759227"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 08:54:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="508513240"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 08:54:29 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 08:54:21 -0800
Message-Id: <20220223165421.3949883-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Skip output init on PHY
 calibration failure
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If one of our PHYs fails to complete calibration, we should skip the
general initialization of the corresponding output.  Most likely this is
going to happen on outputs that don't actually exist on the board; in
theory we should have already decided to skip this output based on the
VBT, but we can't always rely on the VBT being accurate.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  8 ++++++--
 drivers/gpu/drm/i915/i915_drv.h               | 12 ++++++++++--
 3 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e4260806c2a4..b71035a5db85 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4308,6 +4308,14 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		return;
 	}
 
+	if (intel_phy_is_snps(dev_priv, phy) &&
+	    dev_priv->snps_phy_failed_calibration & BIT(phy)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "SNPS PHY %c failed to calibrate after 25ms; output will not be used.\n",
+			    phy_name(phy));
+		return;
+	}
+
 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
 	if (!dig_port)
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 7e6245b97fed..0dd4775e8195 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -32,10 +32,14 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
 		if (!intel_phy_is_snps(i915, phy))
 			continue;
 
+		/*
+		 * If calibration does not complete successfully, we'll remember
+		 * which phy was affected and skip setup of the corresponding
+		 * output later.
+		 */
 		if (intel_de_wait_for_clear(i915, DG2_PHY_MISC(phy),
 					    DG2_PHY_DP_TX_ACK_MASK, 25))
-			drm_err(&i915->drm, "SNPS PHY %c failed to calibrate after 25ms.\n",
-				phy_name(phy));
+			i915->snps_phy_failed_calibration |= BIT(phy);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1c2f4ae4ebf9..a9d5823d7e78 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -837,8 +837,16 @@ struct drm_i915_private {
 
 	bool irq_enabled;
 
-	/* perform PHY state sanity checks? */
-	bool chv_phy_assert[2];
+	union {
+		/* perform PHY state sanity checks? */
+		bool chv_phy_assert[2];
+
+		/*
+		 * DG2: Mask of PHYs that were not calibrated by the firmware
+		 * and should not be used.
+		 */
+		u8 snps_phy_failed_calibration;
+	};
 
 	bool ipc_enabled;
 
-- 
2.34.1

