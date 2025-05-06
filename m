Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 391A4AAC896
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 16:49:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 874FD10E6B6;
	Tue,  6 May 2025 14:49:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MvAKEaro";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A508B10E6B5;
 Tue,  6 May 2025 14:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746542976; x=1778078976;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a7aGUmTtI/P4B/2PeFR6kELT1TMbpve/krk64Ua4Gpk=;
 b=MvAKEaroiwss3fj794hQar5Crlwzl2nAnL68J2VoFvhUluARswJ07YWi
 Y6/QgMuPeMcfv2Y3SMmh6fkNftfvGkskuEoLMiHE4k+SzR4RO+OidU0ob
 OrNr5XDY5hBdCmcurUhclrCxCBtPyx0iet0YdfHwIl3oIC8MZwhBvTq9N
 iOTOUR9qHwAA/1tBrZ0kvCMZ5Za0qR7CnOXkimds2ug4fMZcYPXoOcKqF
 KOP/FNoXTiStdZNtzNecpZbE2IjDmJ8R8H0Jk+g+JOg6GSbkdDN5f6J2d
 wccSebwXWMHHY1HFd2vbRlQuBg8iu+fNQ8cI6crUwP80oYmgkFryq4xfX A==;
X-CSE-ConnectionGUID: oGZRqzPYQUK55zSI2n2Mog==
X-CSE-MsgGUID: G0yP02t1RV65QS+W5MABTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="47476943"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="47476943"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:49:36 -0700
X-CSE-ConnectionGUID: T2f4k246QyKXoYrxAwkf7Q==
X-CSE-MsgGUID: 4KKN1IjTTT+v0wMN52l7Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135519533"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.171])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:49:34 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/3] drm/i915/alpm: Disable ALPM rework
Date: Tue,  6 May 2025 17:49:11 +0300
Message-ID: <20250506144912.1848606-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250506144912.1848606-1-jouni.hogander@intel.com>
References: <20250506144912.1848606-1-jouni.hogander@intel.com>
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

Currently only LOBF is disabled in pre_plane_update. This patch is
disabling ALPM completely if LOBF or PSR doesn't need it.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c    | 63 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 2 files changed, 30 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 2fdf13515feb..4d57bd517dfa 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -388,6 +388,30 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 	intel_dp->alpm_parameters.transcoder = crtc_state->cpu_transcoder;
 }
 
+void intel_alpm_disable(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->alpm_parameters.transcoder;
+
+	if (DISPLAY_VER(display) < 20 || !intel_dp->alpm_dpcd)
+		return;
+
+	mutex_lock(&intel_dp->alpm_parameters.lock);
+
+	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
+		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
+		     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+
+	intel_de_rmw(display,
+		     PORT_ALPM_CTL(cpu_transcoder),
+		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+
+	drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, 0);
+
+	drm_dbg_kms(display->drm, "Disabling ALPM\n");
+	mutex_unlock(&intel_dp->alpm_parameters.lock);
+}
+
 void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
@@ -396,15 +420,11 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct intel_encoder *encoder;
 
 	if (DISPLAY_VER(display) < 20)
 		return;
 
-	if (crtc_state->has_lobf || crtc_state->has_lobf == old_crtc_state->has_lobf)
-		return;
-
 	for_each_intel_encoder_mask(display->drm, encoder,
 				    crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp;
@@ -417,12 +437,11 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 		if (!intel_dp_is_edp(intel_dp))
 			continue;
 
-		if (old_crtc_state->has_lobf) {
-			mutex_lock(&intel_dp->alpm_parameters.lock);
-			intel_de_write(display, ALPM_CTL(display, cpu_transcoder), 0);
-			drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n");
-			mutex_unlock(&intel_dp->alpm_parameters.lock);
-		}
+		if (crtc_state->has_lobf || intel_psr_needs_alpm(intel_dp, crtc_state) ||
+		    (!old_crtc_state->has_lobf && !intel_psr_needs_alpm(intel_dp, old_crtc_state)))
+			continue;
+
+		intel_alpm_disable(intel_dp);
 	}
 }
 
@@ -551,30 +570,6 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 			    connector, &i915_edp_lobf_info_fops);
 }
 
-void intel_alpm_disable(struct intel_dp *intel_dp)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	enum transcoder cpu_transcoder = intel_dp->alpm_parameters.transcoder;
-
-	if (DISPLAY_VER(display) < 20 || !intel_dp->alpm_dpcd)
-		return;
-
-	mutex_lock(&intel_dp->alpm_parameters.lock);
-
-	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
-		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
-		     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
-
-	intel_de_rmw(display,
-		     PORT_ALPM_CTL(cpu_transcoder),
-		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
-
-	drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, 0);
-
-	drm_dbg_kms(display->drm, "Disabling ALPM\n");
-	mutex_unlock(&intel_dp->alpm_parameters.lock);
-}
-
 bool intel_alpm_get_error(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 287110e4e435..37490fb6fc7b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1176,8 +1176,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_alpm_pre_plane_update(state, crtc);
 	intel_psr_pre_plane_update(state, crtc);
+	intel_alpm_pre_plane_update(state, crtc);
 
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
-- 
2.43.0

