Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA0B69DC6F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 09:56:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C7910E3A3;
	Tue, 21 Feb 2023 08:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B783510E3A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 08:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676969762; x=1708505762;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DxoaUifT+CK4Hb7yObhNpa8YDbSJ3A5xm2NdKM39Dqw=;
 b=ZWOSyv+qWihP4iqtecPDMZnCdfP/8TQsvhbylu+BItV3BNTXObvAos1E
 bM5vclwpqc7bRvmnRxKQZG1TIT5U63BGP2NSHkp8jc9pxB4k2M7Id/3+S
 RZdolrK4hfqgLAbc6nMx0yfV62D+YZCqYHvvXVFsX4235/MHTZ/BG9GqH
 sFblEIUU+kRGZkjBFP9SP7MA2yrHCnVjAG6omfR8qNl5oIK5S0Xjaao75
 /eWGBflqvXKAG1aUqPBsB/uSCap9GnKODVNsAkqci7GMyZ6yX3eTiP2mg
 wIujpwjkKxEY18BjJFtDqXqfpvR8fSvPSHk/aJDEJwibuKMTLUZtFA5ui Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="330303304"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="330303304"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 00:56:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="649090113"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="649090113"
Received: from etrunovx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.214.204])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 00:56:00 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 10:53:04 +0200
Message-Id: <20230221085304.3382297-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Use calculated io and fast wake
 lines
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

Currently we are using hardcoded 7 for io and fast wake lines.

According to Bspec io and fast wake times are both 42us for
DISPLAY_VER >= 12 and 50us and 32us for older platforms.

Calculate line counts for these and configure them into PSR2_CTL
accordingly

Use 45 us for the fast wake calculation as 42 seems to be too
tight based on testing.

Bspec: 49274, 4289

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7725
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 78 +++++++++++++++----
 2 files changed, 63 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9ccae7a46020..fc15f4e5d49f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1634,6 +1634,8 @@ struct intel_psr {
 	bool psr2_sel_fetch_cff_enabled;
 	bool req_psr2_sdp_prior_scanline;
 	u8 sink_sync_latency;
+	u8 io_wake_lines;
+	u8 fast_wake_lines;
 	ktime_t last_entry_attempt;
 	ktime_t last_exit;
 	bool sink_not_reliable;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2954759e9d12..059e220144ce 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -542,6 +542,14 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	val |= EDP_PSR2_FRAME_BEFORE_SU(max_t(u8, intel_dp->psr.sink_sync_latency + 1, 2));
 	val |= intel_psr2_get_tp_time(intel_dp);
 
+	if (DISPLAY_VER(dev_priv) >= 12) {
+		if (intel_dp->psr.io_wake_lines < 9 &&
+		    intel_dp->psr.fast_wake_lines < 9)
+			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
+		else
+			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_3;
+	}
+
 	/* Wa_22012278275:adl-p */
 	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
 		static const u8 map[] = {
@@ -558,31 +566,21 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		 * Still using the default IO_BUFFER_WAKE and FAST_WAKE, see
 		 * comments bellow for more information
 		 */
-		u32 tmp, lines = 7;
-
-		val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
+		u32 tmp;
 
-		tmp = map[lines - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
+		tmp = map[intel_dp->psr.io_wake_lines - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
 		tmp = tmp << TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT;
 		val |= tmp;
 
-		tmp = map[lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
+		tmp = map[intel_dp->psr.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
 		tmp = tmp << TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT;
 		val |= tmp;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		/*
-		 * TODO: 7 lines of IO_BUFFER_WAKE and FAST_WAKE are default
-		 * values from BSpec. In order to setting an optimal power
-		 * consumption, lower than 4k resolution mode needs to decrease
-		 * IO_BUFFER_WAKE and FAST_WAKE. And higher than 4K resolution
-		 * mode needs to increase IO_BUFFER_WAKE and FAST_WAKE.
-		 */
-		val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
-		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(7);
-		val |= TGL_EDP_PSR2_FAST_WAKE(7);
+		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
+		val |= TGL_EDP_PSR2_FAST_WAKE(intel_dp->psr.fast_wake_lines);
 	} else if (DISPLAY_VER(dev_priv) >= 9) {
-		val |= EDP_PSR2_IO_BUFFER_WAKE(7);
-		val |= EDP_PSR2_FAST_WAKE(7);
+		val |= EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
+		val |= EDP_PSR2_FAST_WAKE(intel_dp->psr.fast_wake_lines);
 	}
 
 	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
@@ -829,6 +827,46 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 	return true;
 }
 
+static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
+				     struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
+	u8 max_wake_lines;
+
+	if (DISPLAY_VER(i915) >= 12) {
+		io_wake_time = 42;
+		/*
+		 * According to Bspec it's 42us, but based on testing
+		 * it is not enough -> use 45 us.
+		 */
+		fast_wake_time = 45;
+		max_wake_lines = 12;
+	} else {
+		io_wake_time = 50;
+		fast_wake_time = 32;
+		max_wake_lines = 8;
+	}
+
+	io_wake_lines = intel_usecs_to_scanlines(
+		&crtc_state->uapi.adjusted_mode, io_wake_time);
+	fast_wake_lines = intel_usecs_to_scanlines(
+		&crtc_state->uapi.adjusted_mode, fast_wake_time);
+
+	if (io_wake_lines > max_wake_lines ||
+	    fast_wake_lines > max_wake_lines)
+		return false;
+
+	if (i915->params.psr_safest_params)
+		io_wake_lines = fast_wake_lines = max_wake_lines;
+
+	/* According to Bspec lower limit should be set as 7 lines. */
+	intel_dp->psr.io_wake_lines = max(io_wake_lines, 7);
+	intel_dp->psr.fast_wake_lines = max(fast_wake_lines, 7);
+
+	return true;
+}
+
 static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 				    struct intel_crtc_state *crtc_state)
 {
@@ -923,6 +961,12 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	if (!_compute_psr2_wake_times(intel_dp, crtc_state)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "PSR2 not enabled, Unable to use long enough wake times\n");
+		return false;
+	}
+
 	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
 		if (!intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
 		    !HAS_PSR_HW_TRACKING(dev_priv)) {
-- 
2.34.1

