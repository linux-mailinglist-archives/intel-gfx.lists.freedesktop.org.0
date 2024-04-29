Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D0A8B576C
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 14:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9679810F3E4;
	Mon, 29 Apr 2024 12:08:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YJOVjuLY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E3B310F3E4
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 12:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714392503; x=1745928503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n5I6w6VyyN0X+4+UTF0VGb16HvCjdBWf5HUy0sPfZ28=;
 b=YJOVjuLYRsPrP+CDp8krWAv9Bwyq0gmWkqgCAqX2Y+SObVZ5CSAKbw86
 Rg4Qm+AfYc9cVzJPogsOnaLTWVd1oBtKFgP3jw/G5R48iRffDXtpNNCTo
 1FeqD6W4TXXO5SPqu/KCQXerDCb3ND8e5++i9hc/dTz08xWTP9GCYH4/Q
 8GE41HgPBVgqaC6OsG1rBUt8GJ2s24Ri5aApNC6RUdPv3FWQZOHmZdnvW
 ycffP4qhXOZ1PWZSejER7FioCod0R11UHwOZsNxKYe3C5ahBk2n+h7ze1
 DMIkxLqQ6AlX9JvaKz1XpxOoa0Yo51EqBkeVTzHklfFiEHvED/jHMDryl w==;
X-CSE-ConnectionGUID: JpX4AOZqTAqJI/YXSGQo1A==
X-CSE-MsgGUID: z6kFOCCMRrmTvkNjLDSw2A==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="21455446"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="21455446"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:08:23 -0700
X-CSE-ConnectionGUID: E+UlKA1qT8iYrQITzpVleg==
X-CSE-MsgGUID: rKqZ/kkTQoWqWrZAAkEuPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26074471"
Received: from domelchx-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.208.96])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:08:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 06/11] drm/i915/psr: Modify intel_dp_get_su_granularity to
 support panel replay
Date: Mon, 29 Apr 2024 15:07:50 +0300
Message-Id: <20240429120755.3990652-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240429120755.3990652-1-jouni.hogander@intel.com>
References: <20240429120755.3990652-1-jouni.hogander@intel.com>
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

v3: use correct offset for DP_PANEL_PANEL_REPLAY_CAPABILITY
v2: rely on PSR definitions on common bits

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 62 +++++++++++++++++++++---
 1 file changed, 55 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b94f8e33ed1f..807423db3a13 100644
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
+				 DP_PANEL_PANEL_REPLAY_CAPABILITY,
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

