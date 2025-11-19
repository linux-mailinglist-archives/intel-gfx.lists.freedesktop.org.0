Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C09AC6F1FA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 15:04:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFC7610E633;
	Wed, 19 Nov 2025 14:04:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aUM00+iG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E761B10E62C;
 Wed, 19 Nov 2025 14:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763561083; x=1795097083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j8kKNOh1pT/ewHt/IE6XpPl/UPQyBBipkfni9vneFCo=;
 b=aUM00+iGZfygPQBaPizCC3+KyryzIb3KVjUKvi9y68SMQORooPiEtCmI
 m4yQ8KQjLs0BQ5G7GrMKj7jV4Tp2221yQsiq+lXjZ2RXY7pY+gQuLEsO5
 qi2NbbBpbmmVyQWeFj+uLVcH1THRrN3QSIm7xWchbQ9/6zbftxvkDSw2W
 h4e9mQYsHg6jpkCFhhef3Ov9y8dP1fsUDv+KAPqpEhqu6Or8FY3DTimgv
 mkUdScwmGp8lftbj/Gg77IdK+b5yTDeVwdz/TKlF5+MZLPTLQvdZ0H8b5
 BP4rz9VWbhvh6BjgOPpvZpKF+GN2duj30FDWu7SP1kWQWxweBtEKrn6Sr w==;
X-CSE-ConnectionGUID: Bql7YxOgQGiHjJ2HcfQUYw==
X-CSE-MsgGUID: 8T5ygQ3sQ0+kTiqsSPgASw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="91077073"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="91077073"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:04:43 -0800
X-CSE-ConnectionGUID: n2BGl/QMS9Kksotfhh5Umg==
X-CSE-MsgGUID: bLzelAa7TIuGNTEPV+pOvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191191861"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:04:40 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/5] drm/i915/alpm: Simplify and align LOBF checks in pre/post
 plane update
Date: Wed, 19 Nov 2025 19:21:51 +0530
Message-ID: <20251119135152.673276-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
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

The pre_plane_update and post_plane_update hooks essentially
disable/enable lobf feature. Use the existing _is_enabling/is_disabling
logic for this in the pre_plane_update and post_plane_update paths.

Also rename the helpers to intel_alpm_lobf_{en,dis}able().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c    | 45 ++++++--------------
 drivers/gpu/drm/i915/display/intel_alpm.h    |  6 +--
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++-
 3 files changed, 41 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 5cfb9345776a..abeb70fcf92c 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -447,25 +447,17 @@ void intel_alpm_port_configure(struct intel_dp *intel_dp,
 	intel_de_write(display, PORT_ALPM_LFPS_CTL(port), lfps_ctl_val);
 }
 
-void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
-				 struct intel_crtc *crtc)
+void intel_alpm_lobf_disable(const struct intel_crtc_state *new_crtc_state)
 {
-	struct intel_display *display = to_intel_display(state);
-	const struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_display *display = to_intel_display(new_crtc_state);
+	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	struct intel_encoder *encoder;
 
 	if (DISPLAY_VER(display) < 20)
 		return;
 
-	if (crtc_state->has_lobf || crtc_state->has_lobf == old_crtc_state->has_lobf)
-		return;
-
 	for_each_intel_encoder_mask(display->drm, encoder,
-				    crtc_state->uapi.encoder_mask) {
+				    new_crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp;
 
 		if (!intel_encoder_is_dp(encoder))
@@ -476,12 +468,10 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 		if (!intel_dp_is_edp(intel_dp))
 			continue;
 
-		if (old_crtc_state->has_lobf) {
-			mutex_lock(&intel_dp->alpm.lock);
-			intel_de_write(display, ALPM_CTL(display, cpu_transcoder), 0);
-			drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n");
-			mutex_unlock(&intel_dp->alpm.lock);
-		}
+		mutex_lock(&intel_dp->alpm.lock);
+		intel_de_write(display, ALPM_CTL(display, cpu_transcoder), 0);
+		drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n");
+		mutex_unlock(&intel_dp->alpm.lock);
 	}
 }
 
@@ -502,22 +492,13 @@ void intel_alpm_enable_sink(struct intel_dp *intel_dp,
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, val);
 }
 
-void intel_alpm_post_plane_update(struct intel_atomic_state *state,
-				  struct intel_crtc *crtc)
+void intel_alpm_lobf_enable(const struct intel_crtc_state *new_crtc_state)
 {
-	struct intel_display *display = to_intel_display(state);
-	const struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
+	struct intel_display *display = to_intel_display(new_crtc_state);
 	struct intel_encoder *encoder;
 
-	if (crtc_state->has_psr || !crtc_state->has_lobf ||
-	    crtc_state->has_lobf == old_crtc_state->has_lobf)
-		return;
-
 	for_each_intel_encoder_mask(display->drm, encoder,
-				    crtc_state->uapi.encoder_mask) {
+				    new_crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp;
 
 		if (!intel_encoder_is_dp(encoder))
@@ -526,8 +507,8 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 		intel_dp = enc_to_intel_dp(encoder);
 
 		if (intel_dp_is_edp(intel_dp)) {
-			intel_alpm_enable_sink(intel_dp, crtc_state);
-			intel_alpm_configure(intel_dp, crtc_state);
+			intel_alpm_enable_sink(intel_dp, new_crtc_state);
+			intel_alpm_configure(intel_dp, new_crtc_state);
 		}
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 14dc49fee4c3..0b2460b90465 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -25,12 +25,10 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
 void intel_alpm_enable_sink(struct intel_dp *intel_dp,
 			    const struct intel_crtc_state *crtc_state);
-void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
-				 struct intel_crtc *crtc);
+void intel_alpm_lobf_disable(const struct intel_crtc_state *new_crtc_state);
 void intel_alpm_port_configure(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state);
-void intel_alpm_post_plane_update(struct intel_atomic_state *state,
-				  struct intel_crtc *crtc);
+void intel_alpm_lobf_enable(const struct intel_crtc_state *new_crtc_state);
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
 bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
 bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 069967114bd9..ecbdc506a1fc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1009,6 +1009,27 @@ static bool intel_casf_disabling(const struct intel_crtc_state *old_crtc_state,
 	return is_disabling(hw.casf_params.casf_enable, old_crtc_state, new_crtc_state);
 }
 
+static bool intel_crtc_lobf_enabling(const struct intel_crtc_state *old_crtc_state,
+				     const struct intel_crtc_state *new_crtc_state)
+{
+	if (!new_crtc_state->hw.active)
+		return false;
+
+	if (!new_crtc_state->has_psr)
+		return false;
+
+	return is_enabling(has_lobf, old_crtc_state, new_crtc_state);
+}
+
+static bool intel_crtc_lobf_disabling(const struct intel_crtc_state *old_crtc_state,
+				      const struct intel_crtc_state *new_crtc_state)
+{
+	if (!new_crtc_state->hw.active)
+		return false;
+
+	return is_disabling(has_lobf, old_crtc_state, new_crtc_state);
+}
+
 #undef is_disabling
 #undef is_enabling
 
@@ -1056,7 +1077,8 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 			adl_scaler_ecc_unmask(new_crtc_state);
 	}
 
-	intel_alpm_post_plane_update(state, crtc);
+	if (intel_crtc_lobf_enabling(old_crtc_state, new_crtc_state))
+		intel_alpm_lobf_enable(new_crtc_state);
 
 	intel_psr_post_plane_update(state, crtc);
 }
@@ -1153,7 +1175,9 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_alpm_pre_plane_update(state, crtc);
+	if (intel_crtc_lobf_disabling(old_crtc_state, new_crtc_state))
+		intel_alpm_lobf_disable(new_crtc_state);
+
 	intel_psr_pre_plane_update(state, crtc);
 
 	if (intel_crtc_vrr_disabling(state, crtc)) {
-- 
2.45.2

