Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8603881818C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 07:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFDE110E400;
	Tue, 19 Dec 2023 06:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D418910E18E
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 06:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702967560; x=1734503560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nG/+ACQGWaNQ0Rnp2UjPAU3hR+rPMcMd7529uiSpn6Q=;
 b=XHLRMG5WbHyOZoTkTf6L35TdefkNEdudCCb7Oy2xSPjAmzUKgDlddOo1
 g5giIlz9eVytSyk3okPuo/M/hcnb/n3zcOyYXSojD5t7wlbFwBZG4Bb7m
 YGLvS+4LhNNRxir7Sc8rPmWq1m3fs/KuDU77y3aVXsQscAK8VTzM/AdB1
 eUV+0eExQ23LzRfThgd/m1KTCMaW6ojCWqxOiM4LOj7E04BWctt3e5t7q
 ldWwJ6cO/veUA1ExqPChKZSfq6UT+OTaisSLy2dWL2PQeJhX4WHGd0KOc
 0hgKJ3vRdbcx1Gx1a5nvGEYLmRXD6yfx6TvTdiU4YdS4wcawhJw6TD7bq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2466444"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; 
   d="scan'208";a="2466444"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 22:32:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="17836835"
Received: from amoested-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.33.246])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 22:32:38 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/psr: Add alpm_parameters struct
Date: Tue, 19 Dec 2023 08:32:19 +0200
Message-Id: <20231219063221.505982-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231219063221.505982-1-jouni.hogander@intel.com>
References: <20231219063221.505982-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  8 ++++--
 drivers/gpu/drm/i915/display/intel_psr.c      | 28 ++++++++++---------
 2 files changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3fdd8a517983..78473c99b869 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1678,6 +1678,11 @@ struct intel_pps {
 	struct edp_power_seq bios_pps_delays;
 };
 
+struct alpm_parameters {
+	u8 io_wake_lines;
+	u8 fast_wake_lines;
+};
+
 struct intel_psr {
 	/* Mutex for PSR state of the transcoder */
 	struct mutex lock;
@@ -1708,8 +1713,6 @@ struct intel_psr {
 	bool psr2_sel_fetch_cff_enabled;
 	bool req_psr2_sdp_prior_scanline;
 	u8 sink_sync_latency;
-	u8 io_wake_lines;
-	u8 fast_wake_lines;
 	ktime_t last_entry_attempt;
 	ktime_t last_exit;
 	bool sink_not_reliable;
@@ -1723,6 +1726,7 @@ struct intel_psr {
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
 	u8 entry_setup_frames;
+	struct alpm_parameters alpm_params;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b6e2e70e1290..8b1c2a1c7e94 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -762,8 +762,8 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
 
 static int psr2_block_count_lines(struct intel_dp *intel_dp)
 {
-	return intel_dp->psr.io_wake_lines < 9 &&
-		intel_dp->psr.fast_wake_lines < 9 ? 8 : 12;
+	return intel_dp->psr.alpm_params.io_wake_lines < 9 &&
+		intel_dp->psr.alpm_params.fast_wake_lines < 9 ? 8 : 12;
 }
 
 static int psr2_block_count(struct intel_dp *intel_dp)
@@ -800,6 +800,7 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct alpm_parameters *alpm_params = &intel_dp->psr.alpm_params;
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val = EDP_PSR2_ENABLE;
 	u32 psr_val = 0;
@@ -841,17 +842,17 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		 */
 		int tmp;
 
-		tmp = map[intel_dp->psr.io_wake_lines - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
+		tmp = map[alpm_params->io_wake_lines - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
 		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(tmp + TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES);
 
-		tmp = map[intel_dp->psr.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
+		tmp = map[alpm_params->fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
 		val |= TGL_EDP_PSR2_FAST_WAKE(tmp + TGL_EDP_PSR2_FAST_WAKE_MIN_LINES);
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
-		val |= TGL_EDP_PSR2_FAST_WAKE(intel_dp->psr.fast_wake_lines);
+		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(alpm_params->io_wake_lines);
+		val |= TGL_EDP_PSR2_FAST_WAKE(alpm_params->fast_wake_lines);
 	} else if (DISPLAY_VER(dev_priv) >= 9) {
-		val |= EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
-		val |= EDP_PSR2_FAST_WAKE(intel_dp->psr.fast_wake_lines);
+		val |= EDP_PSR2_IO_BUFFER_WAKE(alpm_params->io_wake_lines);
+		val |= EDP_PSR2_FAST_WAKE(alpm_params->fast_wake_lines);
 	}
 
 	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
@@ -1101,10 +1102,11 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 	return true;
 }
 
-static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
-				     struct intel_crtc_state *crtc_state)
+static bool _compute_alpm_params(struct intel_dp *intel_dp,
+				 struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct alpm_parameters *alpm_params = &intel_dp->psr.alpm_params;
 	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
 	u8 max_wake_lines;
 
@@ -1135,8 +1137,8 @@ static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
 		io_wake_lines = fast_wake_lines = max_wake_lines;
 
 	/* According to Bspec lower limit should be set as 7 lines. */
-	intel_dp->psr.io_wake_lines = max(io_wake_lines, 7);
-	intel_dp->psr.fast_wake_lines = max(fast_wake_lines, 7);
+	alpm_params->io_wake_lines = max(io_wake_lines, 7);
+	alpm_params->fast_wake_lines = max(fast_wake_lines, 7);
 
 	return true;
 }
@@ -1268,7 +1270,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!_compute_psr2_wake_times(intel_dp, crtc_state)) {
+	if (!_compute_alpm_params(intel_dp, crtc_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR2 not enabled, Unable to use long enough wake times\n");
 		return false;
-- 
2.34.1

