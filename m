Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE3F12D1E4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:25:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22EF289FA9;
	Mon, 30 Dec 2019 16:25:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC8C89F99;
 Mon, 30 Dec 2019 16:25:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 08:25:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,375,1571727600"; d="scan'208";a="251418006"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2019 08:25:38 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 30 Dec 2019 21:45:17 +0530
Message-Id: <20191230161523.32222-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191230161523.32222-1-animesh.manna@intel.com>
References: <20191230161523.32222-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/9] drm/i915/dp: Move vswing/pre-emphasis
 adjustment calculation
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com, harry.wentland@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

vswing/pre-emphasis adjustment calculation is needed in processing
of auto phy compliance request other than link training, so moved
the same function in intel_dp.c.

No functional change.

v1: initial patch.
v2:
- used "intel_dp" prefix in function name. (Jani)
- used array notation instead pointer for link_status. (Ville)

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 34 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |  4 +++
 .../drm/i915/display/intel_dp_link_training.c | 36 ++-----------------
 3 files changed, 40 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 991f343579ef..2a27ee106089 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4110,6 +4110,40 @@ ivb_cpu_edp_signal_levels(u8 train_set)
 	}
 }
 
+void
+intel_dp_get_adjust_train(struct intel_dp *intel_dp,
+			  const u8 link_status[DP_LINK_STATUS_SIZE])
+{
+	u8 v = 0;
+	u8 p = 0;
+	int lane;
+	u8 voltage_max;
+	u8 preemph_max;
+
+	for (lane = 0; lane < intel_dp->lane_count; lane++) {
+		u8 this_v = drm_dp_get_adjust_request_voltage(link_status,
+							      lane);
+		u8 this_p = drm_dp_get_adjust_request_pre_emphasis(link_status,
+								   lane);
+
+		if (this_v > v)
+			v = this_v;
+		if (this_p > p)
+			p = this_p;
+	}
+
+	voltage_max = intel_dp_voltage_max(intel_dp);
+	if (v >= voltage_max)
+		v = voltage_max | DP_TRAIN_MAX_SWING_REACHED;
+
+	preemph_max = intel_dp_pre_emphasis_max(intel_dp, v);
+	if (p >= preemph_max)
+		p = preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
+
+	for (lane = 0; lane < 4; lane++)
+		intel_dp->train_set[lane] = v | p;
+}
+
 void
 intel_dp_set_signal_levels(struct intel_dp *intel_dp)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3da166054788..83eadc87af26 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 #include <drm/i915_drm.h>
+#include <drm/drm_dp_helper.h>
 
 #include "i915_reg.h"
 
@@ -91,6 +92,9 @@ void
 intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 				       u8 dp_train_pat);
 void
+intel_dp_get_adjust_train(struct intel_dp *intel_dp,
+			  const u8 link_status[DP_LINK_STATUS_SIZE]);
+void
 intel_dp_set_signal_levels(struct intel_dp *intel_dp);
 void intel_dp_set_idle_link_train(struct intel_dp *intel_dp);
 u8
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 2a1130dd1ad0..e8ff9e279800 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -34,38 +34,6 @@ intel_dp_dump_link_status(const u8 link_status[DP_LINK_STATUS_SIZE])
 		      link_status[3], link_status[4], link_status[5]);
 }
 
-static void
-intel_get_adjust_train(struct intel_dp *intel_dp,
-		       const u8 link_status[DP_LINK_STATUS_SIZE])
-{
-	u8 v = 0;
-	u8 p = 0;
-	int lane;
-	u8 voltage_max;
-	u8 preemph_max;
-
-	for (lane = 0; lane < intel_dp->lane_count; lane++) {
-		u8 this_v = drm_dp_get_adjust_request_voltage(link_status, lane);
-		u8 this_p = drm_dp_get_adjust_request_pre_emphasis(link_status, lane);
-
-		if (this_v > v)
-			v = this_v;
-		if (this_p > p)
-			p = this_p;
-	}
-
-	voltage_max = intel_dp_voltage_max(intel_dp);
-	if (v >= voltage_max)
-		v = voltage_max | DP_TRAIN_MAX_SWING_REACHED;
-
-	preemph_max = intel_dp_pre_emphasis_max(intel_dp, v);
-	if (p >= preemph_max)
-		p = preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
-
-	for (lane = 0; lane < 4; lane++)
-		intel_dp->train_set[lane] = v | p;
-}
-
 static bool
 intel_dp_set_link_train(struct intel_dp *intel_dp,
 			u8 dp_train_pat)
@@ -215,7 +183,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
 		voltage = intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;
 
 		/* Update training set as requested by target */
-		intel_get_adjust_train(intel_dp, link_status);
+		intel_dp_get_adjust_train(intel_dp, link_status);
 		if (!intel_dp_update_link_train(intel_dp)) {
 			DRM_ERROR("failed to update link training\n");
 			return false;
@@ -325,7 +293,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
 		}
 
 		/* Update training set as requested by target */
-		intel_get_adjust_train(intel_dp, link_status);
+		intel_dp_get_adjust_train(intel_dp, link_status);
 		if (!intel_dp_update_link_train(intel_dp)) {
 			DRM_ERROR("failed to update link training\n");
 			break;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
