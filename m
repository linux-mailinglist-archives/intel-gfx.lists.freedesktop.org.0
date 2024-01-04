Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4F7823FD7
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 11:49:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C526710E435;
	Thu,  4 Jan 2024 10:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2F0B10E435
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 10:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704365385; x=1735901385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v9vAkzAYqNYg7SdxbQp+Lft6RZdCR7hqtpEzLqy3RuA=;
 b=ChyHQL6bNugdZ2YqK+bGjq+Wi5sNZvie08dyys8VBqGUwXFXzyFKqW/G
 /2LerrLl0EoAtrMiKcc2YWaQvKx3pqLs7wUlVNUYFWHgtb/WK5TEZVYks
 H9/Yb7Q2dGLlsgRwtye3Lmasjl8l9vxxMcwJwqgqFc1zLp46TPG4Qrzck
 IZET9xkV9O6xT+/VTI9OJ7bdd9WjKd6Fzq7vwiXx/1qw3IDpeoFRwUU9V
 dn5uKhka5pnOz93ZEL3sNKil00WVehevD5E2ceMATQL2IwcYmpeuDaN09
 fQy4ujaFmbnmGVW4JJO0Jy0rrvKOFt3Wt/0V44Yfhv32O2n/nXWoXzhvJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="396928129"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="396928129"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="923863696"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="923863696"
Received: from jstopfor-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.226])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:43 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/12] drm/i915/psr: Modify intel_dp_get_su_granularity to
 support panel replay
Date: Thu,  4 Jan 2024 12:48:20 +0200
Message-Id: <20240104104821.1822988-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240104104821.1822988-1-jouni.hogander@intel.com>
References: <20240104104821.1822988-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 59 +++++++++++++++++++++---
 1 file changed, 53 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f3f9522787e7..1e76e5a4a0cd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -465,6 +465,42 @@ static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
 	return val;
 }
 
+static u8 intel_dp_get_su_capability(struct intel_dp *intel_dp)
+{
+	u8 su_capability;
+
+	if (intel_dp->psr.sink_panel_replay_su_support)
+		drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_X_GRANULARITY,
+				 &su_capability, 1);
+	else
+		su_capability = intel_dp->psr_dpcd[1];
+
+	return su_capability;
+}
+
+static u8 intel_dp_get_su_ganularity_required_bit(struct intel_dp *intel_dp)
+{
+	return intel_dp->psr.sink_panel_replay_su_support ?
+		DP_PANEL_PANEL_REPLAY_SU_GRANULARITY_REQUIRED :
+		DP_PSR2_SU_GRANULARITY_REQUIRED;
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
 static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -472,18 +508,26 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 	u16 w;
 	u8 y;
 
+	/*
+	 * TODO: Do we need to take into account panel supporting both PSR and
+	 * Panel replay?
+	 */
+
 	/* If sink don't have specific granularity requirements set legacy ones */
-	if (!(intel_dp->psr_dpcd[1] & DP_PSR2_SU_GRANULARITY_REQUIRED)) {
+	if (!(intel_dp_get_su_capability(intel_dp) &
+	      intel_dp_get_su_ganularity_required_bit(intel_dp))) {
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
@@ -491,10 +535,12 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
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
@@ -587,7 +633,8 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 	if (intel_dp->psr_dpcd[0])
 		_psr_init_dpcd(intel_dp);
 
-	if (intel_dp->psr.sink_psr2_support)
+	if (intel_dp->psr.sink_psr2_support ||
+	    intel_dp->psr.sink_panel_replay_su_support)
 		intel_dp_get_su_granularity(intel_dp);
 }
 
-- 
2.34.1

