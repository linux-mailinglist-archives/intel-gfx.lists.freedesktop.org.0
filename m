Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F3BA918BD
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 12:05:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16EEF10EA8D;
	Thu, 17 Apr 2025 10:05:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AuS9JFBP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE0310EA8D;
 Thu, 17 Apr 2025 10:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744884301; x=1776420301;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CErMAk4BgjA7o2kcQZK9V31AkndWD78tdbtzAv5NxZs=;
 b=AuS9JFBPSAKkPI2tLjSzm6j5IyKHhMr/qNBjMUngzzvkZ3lGJVdXbiqD
 RlqmzCccQWsoJ7qnKd1c4yT9gkDsoGzRqa/836LdbPMFcZQfRA9G0BL9O
 x+rYvYkbzI2cYWQ0CXyYx3/Sz9ff1N6Xr0vRDGbnoaVPiZjMDXFvYjySY
 VU+Au4GPN+b6iN65nBTkQyB1Sfo1lYUYGY4JhKZ146HCpLWIz1JBdErE1
 KE+GQuDZ4H4jBhVKn+kTXok3vQFA46YLuh/FjJb/oZiZee8hkmGwn78EG
 0j3mJnWQO7n0UU5aqqIp8hLL03hYIhAwgwcrABi2SPct4oc2oNhir6yee g==;
X-CSE-ConnectionGUID: OEZL18tCTSGXHOTVEh6Buw==
X-CSE-MsgGUID: fiPby3jjRiy9bCAS46lPRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57106705"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="57106705"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 03:05:01 -0700
X-CSE-ConnectionGUID: evVMuruvS3SPBUIpPkv4Jw==
X-CSE-MsgGUID: V/jsgRwjRrCWiCJa8yhczQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="130745354"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa007.fm.intel.com with ESMTP; 17 Apr 2025 03:04:59 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 06/10] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Date: Thu, 17 Apr 2025 15:11:19 +0530
Message-Id: <20250417094123.1662424-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250417094123.1662424-1-animesh.manna@intel.com>
References: <20250417094123.1662424-1-animesh.manna@intel.com>
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

For every commit the dependent condition for LOBF is checked
and accordingly update has_lobf flag which will be used
to update the ALPM_CTL register during commit.

v1: Initial version.
v2: Avoid reading h/w register without has_lobf check. [Jani]
v3: Update LOBF in post plane update instead of separate function. [Jouni]
v4:
- Add lobf disable print. [Jouni]
- Simplify condition check for enabling/disabling lobf. [Jouni]
v5: Disable LOBF in pre_plane_update(). [Jouni]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c    | 43 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h    |  2 +
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 3 files changed, 45 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 01949b90c0c3..3fbe8eca1301 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -376,15 +376,56 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 	intel_dp->alpm_parameters.transcoder = crtc_state->cpu_transcoder;
 }
 
+void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_encoder *encoder;
+	u32 alpm_ctl;
+
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	if (crtc_state->has_lobf)
+		return;
+
+	for_each_intel_encoder_mask(display->drm, encoder,
+				    crtc_state->uapi.encoder_mask) {
+		struct intel_dp *intel_dp;
+
+		if (!intel_encoder_is_dp(encoder))
+			continue;
+
+		intel_dp = enc_to_intel_dp(encoder);
+
+		if (!intel_dp_is_edp(intel_dp))
+			continue;
+
+		alpm_ctl = intel_de_read(display, ALPM_CTL(display, cpu_transcoder));
+
+		if (alpm_ctl & ALPM_CTL_LOBF_ENABLE) {
+			alpm_ctl &= ~ALPM_CTL_LOBF_ENABLE;
+			intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
+			drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n");
+		}
+	}
+}
+
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if (!crtc_state->has_lobf && !crtc_state->has_psr)
+	if ((!crtc_state->has_lobf ||
+	     crtc_state->has_lobf == old_crtc_state->has_lobf) && !crtc_state->has_psr)
 		return;
 
 	for_each_intel_encoder_mask(display->drm, encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 91f51fb24f98..77bae022a0ea 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -23,6 +23,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 				    struct drm_connector_state *conn_state);
 void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
+void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc);
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 96a95bc9d5bf..f91401ebdd1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1177,6 +1177,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
+	intel_alpm_pre_plane_update(state, crtc);
 	intel_psr_pre_plane_update(state, crtc);
 
 	if (intel_crtc_vrr_disabling(state, crtc)) {
-- 
2.29.0

