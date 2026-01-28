Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPjuFr8bemlS2QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:22:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F50DA2B0B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:22:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 873C110E6EF;
	Wed, 28 Jan 2026 14:22:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ei//P66A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58FEE10E6E0;
 Wed, 28 Jan 2026 14:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769610171; x=1801146171;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M+GQ5zXyu5X5UPP5XF7y2MT2PazTZuptTCjYjxH30A4=;
 b=ei//P66ARKWpZ26JfF0rUidNhUn3KXKqDZOG0MNXtvP2YBsqTC/LIbcc
 eWQVWbbcxBK8+bxMQ9al3rr3mrGUzPgc5alhjkXIuib+PmztfF0a0j1QM
 mAvFXw8T5X3U5zgqZ3sHwiS5tFOJfczURYtHW3PL55srZkBGZlFbI2xkG
 kLl7YelRrle2SbDTOzqmsREulfoGAqlGB6k6TdbEOo3ab/BqXCd8vsvMd
 fepr2V+6eNXi/p7ehwqx9J5L4Dt0Jkjzrln1IpyBr1k+qcPd7tqxCvAlC
 GadpEaavaQlTinvDhp30PGE2SlFcOiHoboRVfWsrVwVBmlMve/S+Ee+sI w==;
X-CSE-ConnectionGUID: U7pjkLpmQWSqsKTm26+vaA==
X-CSE-MsgGUID: uN/fpe+9Si2NwZxBUOMPtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="58400936"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="58400936"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:22:51 -0800
X-CSE-ConnectionGUID: vvEELva0QUWT7r9XR9aNCg==
X-CSE-MsgGUID: oCpqtnBdSLW9lzjQc5ozkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="245881383"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:22:49 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/16] drm/i915/dp: Introduce helper to check pixel rate
 against dotclock limits
Date: Wed, 28 Jan 2026 19:36:31 +0530
Message-ID: <20260128140636.3527799-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 0F50DA2B0B
X-Rspamd-Action: no action

Add intel_dp_pixel_rate_fits_dotclk() helper, that checks the
required pixel rate against platform dotclock limit.
With joined pipes the effective dotclock limit depends upon the number
of joined pipes.

Call the helper from the mode_valid phase and from the compute_config
phase where we need to check the limits for the given target clock for a
given joiner candidate.

v2: Rename the helper to intel_dp_dotclk_valid(). (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 23 ++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 14 ++++++-------
 3 files changed, 27 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9bbd37ebd2ea..655688c8e6ef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1449,6 +1449,18 @@ bool intel_dp_can_join(struct intel_display *display,
 	}
 }
 
+bool intel_dp_dotclk_valid(struct intel_display *display,
+			   int target_clock,
+			   int num_joined_pipes)
+{
+	int max_dotclk = display->cdclk.max_dotclk_freq;
+	int effective_dotclk_limit;
+
+	effective_dotclk_limit = max_dotclk * num_joined_pipes;
+
+	return target_clock <= effective_dotclk_limit;
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *_connector,
 		    const struct drm_display_mode *mode)
@@ -1511,7 +1523,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	 * over candidate pipe counts and evaluate each combination.
 	 */
 	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
-		int max_dotclk = display->cdclk.max_dotclk_freq;
 
 		status = MODE_CLOCK_HIGH;
 
@@ -1582,9 +1593,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		if (status != MODE_OK)
 			continue;
 
-		max_dotclk *= num_joined_pipes;
-
-		if (target_clock <= max_dotclk) {
+		if (intel_dp_dotclk_valid(display,
+					  target_clock,
+					  num_joined_pipes)) {
 			status = MODE_OK;
 			break;
 		}
@@ -2870,7 +2881,9 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 
 	max_dotclk *= num_joined_pipes;
 
-	if (adjusted_mode->crtc_clock > max_dotclk)
+	if (!intel_dp_dotclk_valid(display,
+				   adjusted_mode->crtc_clock,
+				   num_joined_pipes))
 		return -EINVAL;
 
 	drm_dbg_kms(display->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 6d409c1998c9..78fa8eaba4ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -228,5 +228,8 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 int intel_dp_max_hdisplay_per_pipe(struct intel_display *display);
 bool intel_dp_can_join(struct intel_display *display,
 		       int num_joined_pipes);
+bool intel_dp_dotclk_valid(struct intel_display *display,
+			   int target_clock,
+			   int num_joined_pipes);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7a83af89ef03..f433a01dcfcb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -702,7 +702,6 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 	pipe_config->has_pch_encoder = false;
 
 	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
-		int max_dotclk = display->cdclk.max_dotclk_freq;
 
 		ret = -EINVAL;
 
@@ -732,9 +731,9 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 		if (ret)
 			continue;
 
-		max_dotclk *= num_joined_pipes;
-
-		if (adjusted_mode->clock <= max_dotclk) {
+		if (intel_dp_dotclk_valid(display,
+					  adjusted_mode->clock,
+					  num_joined_pipes)) {
 			ret = 0;
 			break;
 		}
@@ -1532,7 +1531,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	}
 
 	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
-		int max_dotclk = display->cdclk.max_dotclk_freq;
 
 		*status = MODE_CLOCK_HIGH;
 
@@ -1580,9 +1578,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		if (*status != MODE_OK)
 			continue;
 
-		max_dotclk *= num_joined_pipes;
-
-		if (mode->clock <= max_dotclk) {
+		if (intel_dp_dotclk_valid(display,
+					  mode->clock,
+					  num_joined_pipes)) {
 			*status = MODE_OK;
 			break;
 		}
-- 
2.45.2

