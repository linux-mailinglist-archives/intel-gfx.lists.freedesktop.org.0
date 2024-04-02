Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E769894F16
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7DB310FBDD;
	Tue,  2 Apr 2024 09:50:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ASO+a8Z/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120AD10FBDC
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051448; x=1743587448;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NE46DakIZYRP0ur6RDogBgp656H5mE3wlQyk0zGZ9XU=;
 b=ASO+a8Z/cGl/76Nw3lHiyGWJQpwFybGHDzIY8poD4DDjoENZnPrLps2i
 4bMj0tH4B/Zpo9ar45j1I5AKuJE9pV9JO44BwMesNSgTLUnTZ0PufRXcY
 cpNs+um2xyHV4vHX371qQS5wGAx2PXS0xFJL57ujRqoeMFVQhQk+mwL+t
 wsoFC5PXjzDH20p91i0O3PwIsTqkqHzUp0iNFRWnFsNYe1pqtyul2ymTp
 StXSLN27n9rZxlsuRRvDKYXlSNW84ayJxL4w9UdejkaYmxPeMK6Pp9Nm+
 B4l6dw9Md1xaXnyQaDEWUpQMLkwR66ZogR+QCXfWWchsM5zZST/D8lxhH Q==;
X-CSE-ConnectionGUID: F+PcVpM7Tt+enYimxOXOsg==
X-CSE-MsgGUID: gtuCUvIMRHaTe9tLgwV0CA==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422668"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422668"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693388"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 14/19] drm/i915/psr: Modify intel_dp_get_su_granularity to
 support panel replay
Date: Tue,  2 Apr 2024 12:50:06 +0300
Message-Id: <20240402095011.200558-15-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
References: <20240402095011.200558-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Currently intel_dp_get_su_granularity doesn't support panel replay.
This fix modifies it to support panel replay as well.

v2: rely on PSR definitions on common bits

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 62 +++++++++++++++++++++---
 1 file changed, 55 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index fdc6d699d9c2..111eb7d6bc1c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -466,6 +466,40 @@ static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
 	return val;
 }
 
+static u8 intel_dp_get_su_capability(struct intel_dp *intel_dp)
+{
+	u8 su_capability;
+
+	if (intel_dp->psr.sink_panel_replay_su_support)
+		drm_dp_dpcd_read(&intel_dp->aux,
+				 DP_PANEL_PANEL_REPLAY_X_GRANULARITY,
+				 &su_capability, 1);
+	else
+		su_capability = intel_dp->psr_dpcd[1];
+
+	return su_capability;
+}
+
+static unsigned int
+intel_dp_get_su_x_granularity_offset(struct intel_dp *intel_dp)
+{
+	return intel_dp->psr.sink_panel_replay_su_support ?
+		DP_PANEL_PANEL_REPLAY_X_GRANULARITY :
+		DP_PSR2_SU_X_GRANULARITY;
+}
+
+static unsigned int
+intel_dp_get_su_y_granularity_offset(struct intel_dp *intel_dp)
+{
+	return intel_dp->psr.sink_panel_replay_su_support ?
+		DP_PANEL_PANEL_REPLAY_Y_GRANULARITY :
+		DP_PSR2_SU_Y_GRANULARITY;
+}
+
+/*
+ * Note: Bits related to granularity are same in panel replay and psr
+ * registers. Rely on PSR definitions on these "common" bits.
+ */
 static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -473,18 +507,29 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 	u16 w;
 	u8 y;
 
-	/* If sink don't have specific granularity requirements set legacy ones */
-	if (!(intel_dp->psr_dpcd[1] & DP_PSR2_SU_GRANULARITY_REQUIRED)) {
+	/*
+	 * TODO: Do we need to take into account panel supporting both PSR and
+	 * Panel replay?
+	 */
+
+	/*
+	 * If sink don't have specific granularity requirements set legacy
+	 * ones.
+	 */
+	if (!(intel_dp_get_su_capability(intel_dp) &
+	      DP_PSR2_SU_GRANULARITY_REQUIRED)) {
 		/* As PSR2 HW sends full lines, we do not care about x granularity */
 		w = 4;
 		y = 4;
 		goto exit;
 	}
 
-	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_X_GRANULARITY, &w, 2);
+	r = drm_dp_dpcd_read(&intel_dp->aux,
+			     intel_dp_get_su_x_granularity_offset(intel_dp),
+			     &w, 2);
 	if (r != 2)
 		drm_dbg_kms(&i915->drm,
-			    "Unable to read DP_PSR2_SU_X_GRANULARITY\n");
+			    "Unable to read selective update x granularity\n");
 	/*
 	 * Spec says that if the value read is 0 the default granularity should
 	 * be used instead.
@@ -492,10 +537,12 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 	if (r != 2 || w == 0)
 		w = 4;
 
-	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_Y_GRANULARITY, &y, 1);
+	r = drm_dp_dpcd_read(&intel_dp->aux,
+			     intel_dp_get_su_y_granularity_offset(intel_dp),
+			     &y, 1);
 	if (r != 1) {
 		drm_dbg_kms(&i915->drm,
-			    "Unable to read DP_PSR2_SU_Y_GRANULARITY\n");
+			    "Unable to read selective update y granularity\n");
 		y = 4;
 	}
 	if (y == 0)
@@ -588,7 +635,8 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 	if (intel_dp->psr_dpcd[0])
 		_psr_init_dpcd(intel_dp);
 
-	if (intel_dp->psr.sink_psr2_support)
+	if (intel_dp->psr.sink_psr2_support ||
+	    intel_dp->psr.sink_panel_replay_su_support)
 		intel_dp_get_su_granularity(intel_dp);
 }
 
-- 
2.34.1

