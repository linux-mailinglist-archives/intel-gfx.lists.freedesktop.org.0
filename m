Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 982CB825503
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:15:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB29D10E63E;
	Fri,  5 Jan 2024 14:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB76810E63E
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704464120; x=1736000120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E0eyoXNwXV9dVriHWNxVDWTQO1PXSYM1Rg1MBGHhFsI=;
 b=Z4smRLAZ881LNUNJsJb3pfI6l34vbrH3AVDovtH1v8J9ezrWOZmbeICd
 8jYquPRL2nrvl/H1JX+G+lb3jzp/948q/Mart1ofXkjkxu6SRc9k78/Fg
 P/4G6StXC6E/YM8NcFABLnrVs9B7E631tYvV2Lkh09JW0unAp4LEGx4Qn
 paWdGRtdsCiGak2V8suzZn6/kr74cn2hoAJwycTKhJOcoyphdJaJW0Zg3
 rQPy/ZL8j33CLiTpyrjybyX1GbSDmDs+MD8VVfY5RsIC4SR0UCUCh4Z86
 PDzYfJt5ByHwy+RYlHoHFnu63+J5BC9SughY26KKXBB1/9YxATW7YHJ9I Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="4880527"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; 
   d="scan'208";a="4880527"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:15:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="22504281"
Received: from oreshotx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.52.142])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:15:19 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/4] drm/i915/psr: Add alpm_parameters struct
Date: Fri,  5 Jan 2024 16:15:02 +0200
Message-Id: <20240105141504.2808991-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240105141504.2808991-1-jouni.hogander@intel.com>
References: <20240105141504.2808991-1-jouni.hogander@intel.com>
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
index b9b9d9f2bc0b..889a8b34b7ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1677,6 +1677,11 @@ struct intel_pps {
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
@@ -1706,8 +1711,6 @@ struct intel_psr {
 	bool psr2_sel_fetch_cff_enabled;
 	bool req_psr2_sdp_prior_scanline;
 	u8 sink_sync_latency;
-	u8 io_wake_lines;
-	u8 fast_wake_lines;
 	ktime_t last_entry_attempt;
 	ktime_t last_exit;
 	bool sink_not_reliable;
@@ -1721,6 +1724,7 @@ struct intel_psr {
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
 	u8 entry_setup_frames;
+	struct alpm_parameters alpm_params;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 54120b45958b..1709ebb31215 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -759,8 +759,8 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
 
 static int psr2_block_count_lines(struct intel_dp *intel_dp)
 {
-	return intel_dp->psr.io_wake_lines < 9 &&
-		intel_dp->psr.fast_wake_lines < 9 ? 8 : 12;
+	return intel_dp->psr.alpm_params.io_wake_lines < 9 &&
+		intel_dp->psr.alpm_params.fast_wake_lines < 9 ? 8 : 12;
 }
 
 static int psr2_block_count(struct intel_dp *intel_dp)
@@ -797,6 +797,7 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct alpm_parameters *alpm_params = &intel_dp->psr.alpm_params;
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val = EDP_PSR2_ENABLE;
 	u32 psr_val = 0;
@@ -838,17 +839,17 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
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
@@ -1098,10 +1099,11 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
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
 
@@ -1132,8 +1134,8 @@ static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
 		io_wake_lines = fast_wake_lines = max_wake_lines;
 
 	/* According to Bspec lower limit should be set as 7 lines. */
-	intel_dp->psr.io_wake_lines = max(io_wake_lines, 7);
-	intel_dp->psr.fast_wake_lines = max(fast_wake_lines, 7);
+	alpm_params->io_wake_lines = max(io_wake_lines, 7);
+	alpm_params->fast_wake_lines = max(fast_wake_lines, 7);
 
 	return true;
 }
@@ -1265,7 +1267,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!_compute_psr2_wake_times(intel_dp, crtc_state)) {
+	if (!_compute_alpm_params(intel_dp, crtc_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR2 not enabled, Unable to use long enough wake times\n");
 		return false;
-- 
2.34.1

