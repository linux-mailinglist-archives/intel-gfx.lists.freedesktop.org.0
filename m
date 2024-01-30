Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EC884225A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 12:11:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F425112F8E;
	Tue, 30 Jan 2024 11:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C73610F895
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 11:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706613111; x=1738149111;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HVdR6qX3qd7q69O6Z+baGJFSCeswU1gBEBjo7LRyWIk=;
 b=bplASR4UeNs0lIBlRgKdlo7XyzRYhC+mf7j6daUmsdJMNS39hLHM/eoD
 soytSsQQrqlpGqb8/5GzEOHWHuMEYLycmFDxBmfebZU8WzrWZ75oUDwh9
 PGc3Yg2ve6dNARykpS88O4hczo/jGZRPQK2dL8ZtnpFHLE3mHYc7m2K/R
 NnFWWLpSp7mY83C9vUHKbpFxlhzgGas0miGbu+LVQA259aPv3w0w8wrK7
 L8Rxu1YNDyNocI1RtFksvOV9Tqx1ateXPmMroCQVvMliQUKe94B8njH6z
 KEQUQDr+qcR03gS3vhiY/YMsLII+EKXFE78x6uXtyadvy39s3QKOH+PqT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="402877167"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="402877167"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 03:11:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="858461214"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="858461214"
Received: from swilyman-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.41.112])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 03:11:49 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 2/4] drm/i915/psr: Add alpm_parameters struct
Date: Tue, 30 Jan 2024 13:11:28 +0200
Message-Id: <20240130111130.3298779-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240130111130.3298779-1-jouni.hogander@intel.com>
References: <20240130111130.3298779-1-jouni.hogander@intel.com>
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

Add new alpm_parameters struct into intel_psr for all calculated
alpm parameters.

v2: Move alpm_parameters struct definition to intel_psr struct

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  8 ++++--
 drivers/gpu/drm/i915/display/intel_psr.c      | 28 ++++++++++---------
 2 files changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ae2e8cff9d69..ff6cd30b2b76 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1710,8 +1710,12 @@ struct intel_psr {
 	bool psr2_sel_fetch_cff_enabled;
 	bool req_psr2_sdp_prior_scanline;
 	u8 sink_sync_latency;
-	u8 io_wake_lines;
-	u8 fast_wake_lines;
+
+	struct {
+		u8 io_wake_lines;
+		u8 fast_wake_lines;
+	} alpm_parameters;
+
 	ktime_t last_entry_attempt;
 	ktime_t last_exit;
 	bool sink_not_reliable;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1010b8c405df..4bca1107997f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -779,8 +779,8 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
 
 static int psr2_block_count_lines(struct intel_dp *intel_dp)
 {
-	return intel_dp->psr.io_wake_lines < 9 &&
-		intel_dp->psr.fast_wake_lines < 9 ? 8 : 12;
+	return intel_dp->psr.alpm_parameters.io_wake_lines < 9 &&
+		intel_dp->psr.alpm_parameters.fast_wake_lines < 9 ? 8 : 12;
 }
 
 static int psr2_block_count(struct intel_dp *intel_dp)
@@ -817,6 +817,7 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_psr *psr = &intel_dp->psr;
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val = EDP_PSR2_ENABLE;
 	u32 psr_val = 0;
@@ -858,17 +859,18 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		 */
 		int tmp;
 
-		tmp = map[intel_dp->psr.io_wake_lines - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
+		tmp = map[psr->alpm_parameters.io_wake_lines -
+			  TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
 		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(tmp + TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES);
 
-		tmp = map[intel_dp->psr.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
+		tmp = map[psr->alpm_parameters.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
 		val |= TGL_EDP_PSR2_FAST_WAKE(tmp + TGL_EDP_PSR2_FAST_WAKE_MIN_LINES);
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
-		val |= TGL_EDP_PSR2_FAST_WAKE(intel_dp->psr.fast_wake_lines);
+		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(psr->alpm_parameters.io_wake_lines);
+		val |= TGL_EDP_PSR2_FAST_WAKE(psr->alpm_parameters.fast_wake_lines);
 	} else if (DISPLAY_VER(dev_priv) >= 9) {
-		val |= EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
-		val |= EDP_PSR2_FAST_WAKE(intel_dp->psr.fast_wake_lines);
+		val |= EDP_PSR2_IO_BUFFER_WAKE(psr->alpm_parameters.io_wake_lines);
+		val |= EDP_PSR2_FAST_WAKE(psr->alpm_parameters.fast_wake_lines);
 	}
 
 	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
@@ -1124,8 +1126,8 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 	return true;
 }
 
-static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
-				     struct intel_crtc_state *crtc_state)
+static bool _compute_alpm_params(struct intel_dp *intel_dp,
+				 struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
@@ -1158,8 +1160,8 @@ static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
 		io_wake_lines = fast_wake_lines = max_wake_lines;
 
 	/* According to Bspec lower limit should be set as 7 lines. */
-	intel_dp->psr.io_wake_lines = max(io_wake_lines, 7);
-	intel_dp->psr.fast_wake_lines = max(fast_wake_lines, 7);
+	intel_dp->psr.alpm_parameters.io_wake_lines = max(io_wake_lines, 7);
+	intel_dp->psr.alpm_parameters.fast_wake_lines = max(fast_wake_lines, 7);
 
 	return true;
 }
@@ -1291,7 +1293,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!_compute_psr2_wake_times(intel_dp, crtc_state)) {
+	if (!_compute_alpm_params(intel_dp, crtc_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR2 not enabled, Unable to use long enough wake times\n");
 		return false;
-- 
2.34.1

