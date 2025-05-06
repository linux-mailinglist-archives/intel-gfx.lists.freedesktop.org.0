Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A09AAB9AA
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 09:01:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 876B110E5A1;
	Tue,  6 May 2025 07:01:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ksjs+/lS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7843310E583;
 Tue,  6 May 2025 07:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746514904; x=1778050904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oFf2l/L5jeD3M5gTgQHx+Krg6GZe72YrdifbYQbtN4E=;
 b=Ksjs+/lSKWRtodNMy3jVqEGrE2/mmBwHSCyYJwQpkvjFtsaQSyGLdTlU
 0MrX16sb/g/7xaiGiVkmljnlpWX4zPeM3EEhFz7vFooM1IOpNI1wQZBa5
 ZooUAWKyYX5UN/emD1LdO4ieCN0j0UMOAMMNnd4CnYdn4FocYQdQKwqbZ
 T+equPnnHYazKLcERP/iaP25PkQ3xSABkXB0wvieYgN5Jyhb6hfHCaGTM
 T3J0NNXtEMqyqXEKwSzc5wukn+uuKOZ8c0h2IgxOT0Fsou7DQmEFlgqVh
 eTb/LxzAJcN4quYKJNuLbEf/+Ac/9UucbDKH+yhgQzTYpoOfH6a1/1cNG Q==;
X-CSE-ConnectionGUID: 8CgKHn29SqSUpabf/hFWKQ==
X-CSE-MsgGUID: 9NaP9FakQN2l4DU2HqUKCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="48067988"
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="48067988"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 00:01:14 -0700
X-CSE-ConnectionGUID: jt1FCiBwR1S4z+3Lv0SdTQ==
X-CSE-MsgGUID: D+VuHwM3SQGZlOco4ywSgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="140273121"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.171])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 00:01:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/4] drm/i915/alpm: Disable ALPM rework
Date: Tue,  6 May 2025 10:00:28 +0300
Message-ID: <20250506070029.1326368-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250506070029.1326368-1-jouni.hogander@intel.com>
References: <20250506070029.1326368-1-jouni.hogander@intel.com>
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
 drivers/gpu/drm/i915/display/intel_alpm.c    | 53 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 2 files changed, 25 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 2454f78fc416..6431f7ee82d5 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -388,6 +388,25 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
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
+	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), 0);
+	intel_de_write(display, PORT_ALPM_CTL(dp_to_dig_port(intel_dp)->base.port), 0);
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
@@ -396,15 +415,11 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
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
@@ -417,12 +432,11 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
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
 
@@ -551,25 +565,6 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
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
-	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), 0);
-	intel_de_write(display, PORT_ALPM_CTL(dp_to_dig_port(intel_dp)->base.port), 0);
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

