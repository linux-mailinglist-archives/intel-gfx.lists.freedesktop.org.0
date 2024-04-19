Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 862848AAE2E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 14:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C4910FE95;
	Fri, 19 Apr 2024 12:12:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qttxbi3G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183F510FE80
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 12:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713528725; x=1745064725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fkV/5twY6uJVtp92CwnPAjreTXVkNWH5NcLkvNmP3dU=;
 b=Qttxbi3GZBrIKyLQX2gs64K7lXI9Oj9Ph0RZSZZtyMoCrYbjJgueiyw5
 MIxi0nvaxFQkxlyBsIvi3+27rKrRCqd/zAmZQZH5ylk97VuEgzgSmaSKv
 NcqEFT59+Rha7CWYOE+qxDMAahBKuRlcrEbr5EnOQkktmUGGTlBSpxOHW
 Yf/U3XVjSc4REDNei9UyBJz0a2gW58U6gfKcruimzQErbFNEl5VmBaNIn
 Bu4kkGha7ENqt7Cl1EqWiEXbuDX8D7iwbWNH8Zmmse2ryuPOMDDy9W+Y2
 yqD3sY5DyWu9D6Fkruy6ipxXH+QgKXSGNgkbFTmBgtaWOovF9Y5kIiBlL A==;
X-CSE-ConnectionGUID: dNrFJ1wISdiSvOWCW2xCsw==
X-CSE-MsgGUID: Mr8tcS7FTrqTKVcqt8r8HA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19735931"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="19735931"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:12:05 -0700
X-CSE-ConnectionGUID: QVOzSBU9SCOKENAWCUL3mg==
X-CSE-MsgGUID: +ZWk1ruVTz61vXWu1aMg6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28149527"
Received: from mkuznet1-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.63.13])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:12:04 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 06/11] drm/i915/psr: Modify intel_dp_get_su_granularity to
 support panel replay
Date: Fri, 19 Apr 2024 15:11:36 +0300
Message-Id: <20240419121141.2665945-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240419121141.2665945-1-jouni.hogander@intel.com>
References: <20240419121141.2665945-1-jouni.hogander@intel.com>
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
index b94f8e33ed1f..29400fac13c2 100644
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

