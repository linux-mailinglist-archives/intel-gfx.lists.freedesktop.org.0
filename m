Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D197222EF5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 01:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2486ED1F;
	Thu, 16 Jul 2020 23:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4B66ED1F
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 23:27:00 +0000 (UTC)
IronPort-SDR: nfZ9F+WoX1faK/Gy154XFpcDsfmR8pxvoIh5qsRk95NQElHpNRUk+AXXtsPcSZ2WBPzTJaPwQy
 qjV6vxmp3WcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="149494642"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="149494642"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 16:27:00 -0700
IronPort-SDR: isBqRTAVyuw0rF4pAzIcKx5lZHoBmUg27BgQgbnoRC3vx2sJT/AKu82+oc3usycHS0teP8Qmwz
 Ng3FFuFliUGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="300394182"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga002.jf.intel.com with ESMTP; 16 Jul 2020 16:27:00 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 16:28:59 -0700
Message-Id: <20200716232900.28414-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200716232900.28414-1-manasi.d.navare@intel.com>
References: <20200716232900.28414-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display/dp: Hacks for testing link
 training fail errors
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

Keep the link rate const at 2.7 Gpbs, lane count =4 and do not
fallback on link training. See if kms_atomic_transition test passes
in constant configuration

Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c               | 7 +++++--
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 6 +++---
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d6295eb20b63..070d8f83a28a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -425,6 +425,9 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 		intel_dp->common_rates[0] = 162000;
 		intel_dp->num_common_rates = 1;
 	}
+	/* Hack for VLK-7806 testing */
+	intel_dp->common_rates[0] = 270000;
+	intel_dp->num_common_rates = 1;
 }
 
 static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
@@ -2284,8 +2287,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	limits.min_clock = 0;
 	limits.max_clock = common_len - 1;
 
-	limits.min_lane_count = 1;
-	limits.max_lane_count = intel_dp_max_lane_count(intel_dp);
+	limits.min_lane_count = 4;
+	limits.max_lane_count = 4;/*intel_dp_max_lane_count(intel_dp);*/
 
 	limits.min_bpp = intel_dp_min_bpp(pipe_config);
 	limits.max_bpp = intel_dp_compute_bpp(intel_dp, pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f2c8b56be9ea..0653ace2b62a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -415,12 +415,12 @@ intel_dp_start_link_train(struct intel_dp *intel_dp)
 		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
 			    "Link Training failed with HOBL active, not enabling it from now on");
 		intel_dp->hobl_failed = true;
-	} else if (intel_dp_get_link_train_fallback_values(intel_dp,
+	}/* else if (intel_dp_get_link_train_fallback_values(intel_dp,
 							   intel_dp->link_rate,
 							   intel_dp->lane_count)) {
 		return;
-	}
+		}*/
 
 	/* Schedule a Hotplug Uevent to userspace to start modeset */
-	schedule_work(&intel_connector->modeset_retry_work);
+	//schedule_work(&intel_connector->modeset_retry_work);
 }
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
