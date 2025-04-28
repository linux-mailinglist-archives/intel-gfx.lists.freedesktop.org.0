Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F10A9EDC0
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 12:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 220C210E3EC;
	Mon, 28 Apr 2025 10:21:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X1kAsZZ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A7210E3EC;
 Mon, 28 Apr 2025 10:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745835710; x=1777371710;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Upnd9scjzRI+RgklU80Xj4//8eTo3te5prip+GVBoD4=;
 b=X1kAsZZ5vMHzpcB4MfXKU+9Sy+++ub2XCaL5vIJ9/KOwKRO31p9LSTpS
 pIYkaJfdSJFyes2tfsZ+gvAzwfM9It3HkyDSwM0IkoiVWlirSga9z4nxh
 SklcKCwerDCt5jJ/8DwRIii3pkJAfPWXPq7EGbFGET9inqyaS2HQL7SI7
 4F24YNNSaEYE3Cd41qYaDvieVZu7IMBuy5clcURw0Vh4BwSuikSo4Y3Hb
 Nyg6BKsWhxWjwrqNL6+GBE74d/U98XkGFcFJE0fDZmQPGAKDRLBCIWVk4
 ePtNWADu6EtVU5tXXMMW+pXOYh4HJqCQ9iCaoqyM+LNGb27a0CNwjHAc/ w==;
X-CSE-ConnectionGUID: BsnLHRvcQ4y5HnOVxAVc+Q==
X-CSE-MsgGUID: AiqLeEUjRxOyDiM1JQ5U3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="57618048"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="57618048"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 03:21:50 -0700
X-CSE-ConnectionGUID: gaP8bwOKTdC2+k+D/VfTzw==
X-CSE-MsgGUID: vhJ035xNS6a7RFA2UIaDyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="164555247"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa001.fm.intel.com with ESMTP; 28 Apr 2025 03:21:48 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH] drm/i915/alpm: Introduce has_alpm to simplify alpm check in
 enable/disable
Date: Mon, 28 Apr 2025 15:28:38 +0530
Message-Id: <20250428095838.3154962-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Simplify alpm check in enable/disable with has_alpm.
Add a check for alpm during lobf disable which can be enabled
with panel replay/psr2.

Suggested-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 23 +++++++++++++------
 .../drm/i915/display/intel_display_types.h    |  3 +++
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 ++
 3 files changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 1bf08b80c23f..aa3f442bf8bd 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -322,6 +322,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 
 	crtc_state->has_lobf = (context_latency + guardband) >
 		(first_sdp_position + waketime_in_lines);
+
+	crtc_state->has_alpm |= crtc_state->has_lobf;
 }
 
 static void lnl_alpm_configure(struct intel_dp *intel_dp,
@@ -332,8 +334,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
 	u32 alpm_ctl;
 
-	if (DISPLAY_VER(display) < 20 || (!intel_psr_needs_alpm(intel_dp, crtc_state) &&
-					  !crtc_state->has_lobf))
+	if (DISPLAY_VER(display) < 20 || !crtc_state->has_alpm)
 		return;
 
 	mutex_lock(&intel_dp->alpm_parameters.lock);
@@ -417,12 +418,20 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 		if (!intel_dp_is_edp(intel_dp))
 			continue;
 
-		if (old_crtc_state->has_lobf) {
-			mutex_lock(&intel_dp->alpm_parameters.lock);
+		mutex_lock(&intel_dp->alpm_parameters.lock);
+		if (crtc_state->has_alpm) {
+			u32 alpm_ctl = intel_de_read(display, ALPM_CTL(display, cpu_transcoder));
+			if (alpm_ctl & ALPM_CTL_LOBF_ENABLE) {
+				alpm_ctl &= ~ALPM_CTL_LOBF_ENABLE;
+				intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
+				drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n");
+			}
+		} else {
 			intel_de_write(display, ALPM_CTL(display, cpu_transcoder), 0);
-			drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n");
-			mutex_unlock(&intel_dp->alpm_parameters.lock);
+			drm_dbg_kms(display->drm,
+				    "Link off between frames (LOBF) with ALPM disabled\n");
 		}
+		mutex_unlock(&intel_dp->alpm_parameters.lock);
 	}
 }
 
@@ -431,7 +440,7 @@ static void intel_alpm_enable_sink(struct intel_dp *intel_dp,
 {
 	u8 val;
 
-	if (!intel_psr_needs_alpm(intel_dp, crtc_state) && !crtc_state->has_lobf)
+	if (!crtc_state->has_alpm)
 		return;
 
 	val = DP_ALPM_ENABLE | DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7415564d058a..6edcfa5d9c41 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1328,6 +1328,9 @@ struct intel_crtc_state {
 
 	/* LOBF flag */
 	bool has_lobf;
+
+	/* ALPM flag */
+	bool has_alpm;
 };
 
 enum intel_pipe_crc_source {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ccd66bbc72f7..e643f36057f8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1707,6 +1707,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 
 	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
 
+	crtc_state->has_alpm = intel_psr_needs_alpm(intel_dp, crtc_state);
+
 	/* Wa_18037818876 */
 	if (intel_psr_needs_wa_18037818876(intel_dp, crtc_state)) {
 		crtc_state->has_psr = false;
-- 
2.29.0

