Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7851B186967
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 11:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC706E3E1;
	Mon, 16 Mar 2020 10:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 276366E3E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 10:49:50 +0000 (UTC)
IronPort-SDR: 2ntVOi+LrqAPJwTtrYqD2T021yGkFP5ZtOQI1FDJuhs8henhcdtS2dubN/BP2wYyPyKKF6LhB7
 fAUILMIrcR+w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 03:49:50 -0700
IronPort-SDR: Tz4kbBYA3VFAq54zozpdqc9DLGkUcwjmMibQeA6NA9D4B0mPKAaCl0MXIii/ubfp1uODt7724p
 kth2N5cyXx/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="417099536"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by orsmga005.jf.intel.com with ESMTP; 16 Mar 2020 03:49:48 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 16:07:55 +0530
Message-Id: <20200316103759.12867-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200316103759.12867-1-animesh.manna@intel.com>
References: <20200316103759.12867-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 3/7] drm/i915/dp: Made
 intel_dp_adjust_train() non-static
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

vswing/pre-emphasis adjustment calculation is needed in processing
of auto phy compliance request other than link training, so have
made non-static function.

No functional change.

v1: initial patch.
v2:
- used "intel_dp" prefix in function name. (Jani)
- used array notation instead pointer for link_status. (Ville)
v3: Scrapped the initial patch, modified commit description accordingly.
- made non-static function and used intel_dp prefix. (Jani, Manasi)

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 9 ++++-----
 drivers/gpu/drm/i915/display/intel_dp_link_training.h | 4 ++++
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a7defb37ab00..e4f1843170b7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -34,9 +34,8 @@ intel_dp_dump_link_status(const u8 link_status[DP_LINK_STATUS_SIZE])
 		      link_status[3], link_status[4], link_status[5]);
 }
 
-static void
-intel_get_adjust_train(struct intel_dp *intel_dp,
-		       const u8 link_status[DP_LINK_STATUS_SIZE])
+void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
+			       const u8 link_status[DP_LINK_STATUS_SIZE])
 {
 	u8 v = 0;
 	u8 p = 0;
@@ -219,7 +218,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
 		voltage = intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;
 
 		/* Update training set as requested by target */
-		intel_get_adjust_train(intel_dp, link_status);
+		intel_dp_get_adjust_train(intel_dp, link_status);
 		if (!intel_dp_update_link_train(intel_dp)) {
 			drm_err(&i915->drm,
 				"failed to update link training\n");
@@ -338,7 +337,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
 		}
 
 		/* Update training set as requested by target */
-		intel_get_adjust_train(intel_dp, link_status);
+		intel_dp_get_adjust_train(intel_dp, link_status);
 		if (!intel_dp_update_link_train(intel_dp)) {
 			drm_err(&i915->drm,
 				"failed to update link training\n");
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 174566adcc92..01f1dabbb060 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -6,8 +6,12 @@
 #ifndef __INTEL_DP_LINK_TRAINING_H__
 #define __INTEL_DP_LINK_TRAINING_H__
 
+#include <drm/drm_dp_helper.h>
+
 struct intel_dp;
 
+void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
+			       const u8 link_status[DP_LINK_STATUS_SIZE]);
 void intel_dp_start_link_train(struct intel_dp *intel_dp);
 void intel_dp_stop_link_train(struct intel_dp *intel_dp);
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
