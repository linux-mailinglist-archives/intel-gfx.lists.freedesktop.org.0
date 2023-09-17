Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6968C7A3DD0
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Sep 2023 23:19:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B7610E15E;
	Sun, 17 Sep 2023 21:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B05FD10E102;
 Sun, 17 Sep 2023 21:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694985577; x=1726521577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D1kD/FFNikgO4R93gD+k7WxryDbZfY/Xi/MczS6HTzU=;
 b=datuLeIN3iMQLE5IS1M/DkLKM7IU2rEaelcA8LqT6sT9MF8lztb2k8Cb
 v9a3RoRLwoyDpse8QjdRH/M/EEukqQ2vPQJolmyIMUlwYNGh59YkZXLll
 lFZCR/p+hJVjauxIRmjgH68ObKfJWs2ozDB1sBH1h5CkU/9BmmMP7WDRC
 0ADVz05iCVDvgrv6VDn9jmDo2RCmfAPzsi3BAEaCAe1VLBZO9D+EYnewG
 1GaVV8kggNf3m1uhis2O7WX2erP939WHKAgoTI6yX2W0QQTlIfx0C03ku
 Fy1YnAmks0nIDPoV6iewGyrNr0Js293w6yz1GpkF/oE2cKgP0jNl7mQrS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="410487905"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="410487905"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 14:19:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="860825086"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="860825086"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga002.fm.intel.com with ESMTP; 17 Sep 2023 14:19:36 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 17 Sep 2023 14:19:31 -0700
Message-Id: <20230917211933.1407559-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230917211933.1407559-1-alan.previn.teres.alexis@intel.com>
References: <20230917211933.1407559-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 1/3] drm/i915/pxp/mtl: Update pxp-firmware
 response timeout
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update the max GSC-fw response time to match updated internal
fw specs. Because this response time is an SLA on the firmware,
not inclusive of i915->GuC->HW handoff latency, when submitting
requests to the GSC fw via intel_gsc_uc_heci_cmd_submit helpers,
start the count after the request hits the GSC command streamer.
Also, move GSC_REPLY_LATENCY_MS definition from pxp header to
intel_gsc_uc_heci_cmd_submit.h since its for any GSC HECI packet.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Vivaik Balasubrawmanian <vivaik.balasubrawmanian@intel.com>
---
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c | 20 +++++++++++++++++--
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |  6 ++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c    |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h    | 10 ++++------
 4 files changed, 29 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
index 89ed5ee9cded..2fde5c360cff 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
@@ -81,8 +81,17 @@ int intel_gsc_uc_heci_cmd_submit_packet(struct intel_gsc_uc *gsc, u64 addr_in,
 
 	i915_request_add(rq);
 
-	if (!err && i915_request_wait(rq, 0, msecs_to_jiffies(500)) < 0)
-		err = -ETIME;
+	if (!err) {
+		/*
+		 * Start timeout for i915_request_wait only after considering one possible
+		 * pending GSC-HECI submission cycle on the other (non-privileged) path.
+		 */
+		if (wait_for(i915_request_started(rq), GSC_HECI_REPLY_LATENCY_MS))
+			drm_dbg(&gsc_uc_to_gt(gsc)->i915->drm,
+				"Delay in gsc-heci-priv submission to gsccs-hw");
+		if (i915_request_wait(rq, 0, msecs_to_jiffies(GSC_HECI_REPLY_LATENCY_MS)) < 0)
+			err = -ETIME;
+	}
 
 	i915_request_put(rq);
 
@@ -186,6 +195,13 @@ intel_gsc_uc_heci_cmd_submit_nonpriv(struct intel_gsc_uc *gsc,
 	i915_request_add(rq);
 
 	if (!err) {
+		/*
+		 * Start timeout for i915_request_wait only after considering one possible
+		 * pending GSC-HECI submission cycle on the other (privileged) path.
+		 */
+		if (wait_for(i915_request_started(rq), GSC_HECI_REPLY_LATENCY_MS))
+			drm_dbg(&gsc_uc_to_gt(gsc)->i915->drm,
+				"Delay in gsc-heci-non-priv submission to gsccs-hw");
 		if (i915_request_wait(rq, I915_WAIT_INTERRUPTIBLE,
 				      msecs_to_jiffies(timeout_ms)) < 0)
 			err = -ETIME;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
index 09d3fbdad05a..c4308291c003 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
@@ -12,6 +12,12 @@ struct i915_vma;
 struct intel_context;
 struct intel_gsc_uc;
 
+#define GSC_HECI_REPLY_LATENCY_MS 500
+/*
+ * Max FW response time is 500ms, but this should be counted from the time the
+ * command has hit the GSC-CS hardware, not the preceding handoff to GuC CTB.
+ */
+
 struct intel_gsc_mtl_header {
 	u32 validity_marker;
 #define GSC_HECI_VALIDITY_MARKER 0xA578875A
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
index b4ce7ca9b49d..27402ecf0457 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -112,7 +112,7 @@ gsccs_send_message(struct intel_pxp *pxp,
 
 	ret = intel_gsc_uc_heci_cmd_submit_nonpriv(&gt->uc.gsc,
 						   exec_res->ce, &pkt, exec_res->bb_vaddr,
-						   GSC_REPLY_LATENCY_MS);
+						   GSC_HECI_REPLY_LATENCY_MS);
 	if (ret) {
 		drm_err(&i915->drm, "failed to send gsc PXP msg (%d)\n", ret);
 		goto unlock;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
index 298ad38e6c7d..9aae779c4da3 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
@@ -8,16 +8,14 @@
 
 #include <linux/types.h>
 
+#include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
+
 struct intel_pxp;
 
-#define GSC_REPLY_LATENCY_MS 210
-/*
- * Max FW response time is 200ms, to which we add 10ms to account for overhead
- * such as request preparation, GuC submission to hw and pipeline completion times.
- */
 #define GSC_PENDING_RETRY_MAXCOUNT 40
 #define GSC_PENDING_RETRY_PAUSE_MS 50
-#define GSCFW_MAX_ROUND_TRIP_LATENCY_MS (GSC_PENDING_RETRY_MAXCOUNT * GSC_PENDING_RETRY_PAUSE_MS)
+#define GSCFW_MAX_ROUND_TRIP_LATENCY_MS (GSC_HECI_REPLY_LATENCY_MS + \
+					 (GSC_PENDING_RETRY_MAXCOUNT * GSC_PENDING_RETRY_PAUSE_MS))
 
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_gsccs_fini(struct intel_pxp *pxp);
-- 
2.39.0

