Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3816A98659
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:47:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3875610E662;
	Wed, 23 Apr 2025 09:46:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nRjVJflT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944DF10E65E;
 Wed, 23 Apr 2025 09:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745401617; x=1776937617;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ojfu8yjGFX8SyEswIgHqCjkoDkzPTaa8Bj+y7pN+X7Q=;
 b=nRjVJflTT5q5Fn9eFY1Xdpmyyck4AqsJFqoMK8/5MVsEQKxeOKAkmksW
 h3KV7Vx4syqN5DHnzsn4pYyVOkxj5q1yQ4TLOCOXHIaNIL1O65AB994li
 /iiFKsiWIcJ4YFIbohiKSx5h5XadnwvA3gDqX0gFlhexdqbX9T9BeV2tW
 PpTuI81gz6XQUEjhpO84dwzno0YDL4cNn0909U943oL7w/79FzFaYZZ0n
 5eQ3wYGJnExHbnoTkT/d4hqN5L1zuGYWhkeUsACHSwZBLj20/jL7AW4Yz
 I8tB9aCDwvwg7/3WvbFJKORhNlG11M3oF78lOJW04cpKh9HyCN4+I77vV Q==;
X-CSE-ConnectionGUID: cOm5jXpoQNGW3apmaT5h5w==
X-CSE-MsgGUID: B+qDTWERRkOjfBw4ECpiQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="58357971"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="58357971"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:46:57 -0700
X-CSE-ConnectionGUID: SzLBsXq2SGKUEpiaVIm25g==
X-CSE-MsgGUID: S8f4zhMkQtGxhJjky1tHIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132811164"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 23 Apr 2025 02:46:55 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 06/11] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Date: Wed, 23 Apr 2025 14:53:29 +0530
Message-Id: <20250423092334.2294483-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250423092334.2294483-1-animesh.manna@intel.com>
References: <20250423092334.2294483-1-animesh.manna@intel.com>
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
v6: use lobf flag of old_crtc_state and write 0 into ALPM_CTL. [Jouni]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c    | 41 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h    |  2 +
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 3 files changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 01949b90c0c3..d38e729682ce 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -376,15 +376,54 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 	intel_dp->alpm_parameters.transcoder = crtc_state->cpu_transcoder;
 }
 
+void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_encoder *encoder;
+
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	if (crtc_state->has_lobf || crtc_state->has_lobf == old_crtc_state->has_lobf)
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
+		if (old_crtc_state->has_lobf) {
+			intel_de_write(display, ALPM_CTL(display, cpu_transcoder), 0);
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
index a7bff82c989d..35b1aaca2959 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1176,6 +1176,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
+	intel_alpm_pre_plane_update(state, crtc);
 	intel_psr_pre_plane_update(state, crtc);
 
 	if (intel_crtc_vrr_disabling(state, crtc)) {
-- 
2.29.0

