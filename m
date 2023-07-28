Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F363766DB2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 14:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC2510E6D6;
	Fri, 28 Jul 2023 12:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9330D10E6D6
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 12:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690549043; x=1722085043;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wTzhepz2XIxVBEGwvnIjNFp6LcbqDUmHO/7sryhihcc=;
 b=kDZ/wB80fEMchbe9uM0uhwHWUnWMYRJ6ewCpTBMzaE6PEnI3K2e4Ie7W
 jSvhpNaQ6Dh+mWAV3QmKmth7Vfbxb26ehLyyEpV6hwoXGe4wuH7o12zF0
 jrcYqitpZhi0whkG+V36iJyC76/k3tQu/njxEO3zKsE2LWy0REqQMNzgV
 KVnYWRFmPJPu8uTRyPowkryW2GK0dHRUMJmPfo+3yo7sKiGZsKY47bsRy
 xpqn1jwfZ4n4kqOUD8QOBYYL/ZMzLGm2Dv9WTVXfxo00AssafPyxHA4yH
 ZvQya+0/oL3rJFw8UYi5z4LW0ExRdY4PciWNTxM+2HRyVCunqFJI8E/D5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="358612291"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="358612291"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 05:56:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="727473117"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="727473117"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga002.jf.intel.com with ESMTP; 28 Jul 2023 05:56:26 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jul 2023 18:16:06 +0530
Message-Id: <20230728124609.2911830-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20230728124609.2911830-1-animesh.manna@intel.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/6] drm/i915/psr: Move psr specific dpcd
 init into own function
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

From: Jouni Högander <jouni.hogander@intel.com>

This patch is preparing adding panel replay specific dpcd init.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 39 +++++++++++++-----------
 1 file changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 04ab034a8d57..9fbcb4b93f11 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -472,27 +472,22 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 	intel_dp->psr.su_y_granularity = y;
 }
 
-void intel_psr_init_dpcd(struct intel_dp *intel_dp)
+static void _psr_init_dpcd(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv =
+	struct drm_i915_private *i915 =
 		to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
 
-	drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
-			 sizeof(intel_dp->psr_dpcd));
-
-	if (!intel_dp->psr_dpcd[0])
-		return;
-	drm_dbg_kms(&dev_priv->drm, "eDP panel supports PSR version %x\n",
+	drm_dbg_kms(&i915->drm, "eDP panel supports PSR version %x\n",
 		    intel_dp->psr_dpcd[0]);
 
 	if (drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_NO_PSR)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "PSR support not currently available for this panel\n");
 		return;
 	}
 
 	if (!(intel_dp->edp_dpcd[1] & DP_EDP_SET_POWER_CAP)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "Panel lacks power state control, PSR cannot be enabled\n");
 		return;
 	}
@@ -501,7 +496,7 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 	intel_dp->psr.sink_sync_latency =
 		intel_dp_get_sink_sync_latency(intel_dp);
 
-	if (DISPLAY_VER(dev_priv) >= 9 &&
+	if (DISPLAY_VER(i915) >= 9 &&
 	    (intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_IS_SUPPORTED)) {
 		bool y_req = intel_dp->psr_dpcd[1] &
 			     DP_PSR2_SU_Y_COORDINATE_REQUIRED;
@@ -519,14 +514,24 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 		 * GTC first.
 		 */
 		intel_dp->psr.sink_psr2_support = y_req && alpm;
-		drm_dbg_kms(&dev_priv->drm, "PSR2 %ssupported\n",
+		drm_dbg_kms(&i915->drm, "PSR2 %ssupported\n",
 			    intel_dp->psr.sink_psr2_support ? "" : "not ");
+	}
+}
 
-		if (intel_dp->psr.sink_psr2_support) {
-			intel_dp->psr.colorimetry_support =
-				intel_dp_get_colorimetry_status(intel_dp);
-			intel_dp_get_su_granularity(intel_dp);
-		}
+void intel_psr_init_dpcd(struct intel_dp *intel_dp)
+{
+	drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
+			 sizeof(intel_dp->psr_dpcd));
+
+	if (intel_dp->psr_dpcd[0])
+		_psr_init_dpcd(intel_dp);
+	/* TODO: Add PR case here */
+
+	if (intel_dp->psr.sink_psr2_support) {
+		intel_dp->psr.colorimetry_support =
+			intel_dp_get_colorimetry_status(intel_dp);
+		intel_dp_get_su_granularity(intel_dp);
 	}
 }
 
-- 
2.29.0

