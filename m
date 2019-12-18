Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C854124B9A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 16:25:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59EB6E54C;
	Wed, 18 Dec 2019 15:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 751856E54C;
 Wed, 18 Dec 2019 15:25:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 07:25:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="205873248"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by orsmga007.jf.intel.com with ESMTP; 18 Dec 2019 07:25:13 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 18 Dec 2019 20:43:49 +0530
Message-Id: <20191218151350.19579-9-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191218151350.19579-1-animesh.manna@intel.com>
References: <20191218151350.19579-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915/dp: Update the pattern as per
 request
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per request from DP phy compliance test few special
test pattern need to set by source. Added function
to set pattern in DP_COMP_CTL register. It will be
called along with other test parameters like vswing,
pre-emphasis programming in atomic_commit_tail path.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 55 +++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 81eeb9bbb050..f38929db1f2e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5003,6 +5003,61 @@ static u8 intel_dp_prepare_phytest(struct intel_dp *intel_dp)
 	return DP_TEST_ACK;
 }
 
+static inline void intel_dp_phy_pattern_update(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv =
+			to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
+	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct drm_dp_phy_test_params *data =
+			&intel_dp->compliance.test_data.phytest;
+	u32 temp;
+
+	switch (data->phy_pattern) {
+	case DP_PHY_TEST_PATTERN_NONE:
+		DRM_DEBUG_KMS("Disable Phy Test Pattern\n");
+		I915_WRITE(DDI_DP_COMP_CTL(intel_dig_port->base.port), 0x0);
+		break;
+	case DP_PHY_TEST_PATTERN_D10_2:
+		DRM_DEBUG_KMS("Set D10.2 Phy Test Pattern\n");
+		I915_WRITE(DDI_DP_COMP_CTL(intel_dig_port->base.port),
+			   DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_D10_2);
+		break;
+	case DP_PHY_TEST_PATTERN_ERROR_COUNT:
+		DRM_DEBUG_KMS("Set Error Count Phy Test Pattern\n");
+		I915_WRITE(DDI_DP_COMP_CTL(intel_dig_port->base.port),
+			   DDI_DP_COMP_CTL_ENABLE |
+			   DDI_DP_COMP_CTL_SCRAMBLED_0);
+		break;
+	case DP_PHY_TEST_PATTERN_PRBS7:
+		DRM_DEBUG_KMS("Set PRBS7 Phy Test Pattern\n");
+		I915_WRITE(DDI_DP_COMP_CTL(intel_dig_port->base.port),
+			   DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_PRBS7);
+		break;
+	case DP_PHY_TEST_PATTERN_80BIT_CUSTOM:
+		DRM_DEBUG_KMS("Set 80Bit Custom Phy Test Pattern\n");
+		temp = ((data->custom80[0] << 24) | (data->custom80[1] << 16) |
+			(data->custom80[2] << 8) | (data->custom80[3]));
+		I915_WRITE(DDI_DP_COMP_PAT(intel_dig_port->base.port, 0), temp);
+		temp = ((data->custom80[4] << 24) | (data->custom80[5] << 16) |
+			(data->custom80[6] << 8) | (data->custom80[7]));
+		I915_WRITE(DDI_DP_COMP_PAT(intel_dig_port->base.port, 1), temp);
+		temp = ((data->custom80[8] << 8) | data->custom80[9]);
+		I915_WRITE(DDI_DP_COMP_PAT(intel_dig_port->base.port, 2), temp);
+		I915_WRITE(DDI_DP_COMP_CTL(intel_dig_port->base.port),
+			   DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_CUSTOM80);
+		break;
+	case DP_PHY_TEST_PATTERN_CP2520:
+		DRM_DEBUG_KMS("Set HBR2 compliance Phy Test Pattern\n");
+		temp = ((data->hbr2_reset[1] << 8) | data->hbr2_reset[0]);
+		I915_WRITE(DDI_DP_COMP_CTL(intel_dig_port->base.port),
+			   DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_HBR2 |
+			   temp);
+		break;
+	default:
+		WARN(1, "Invalid Phy Test PAttern\n");
+	}
+}
+
 static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
 {
 	u8 test_result = DP_TEST_NAK;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
