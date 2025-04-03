Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 705BAA7A073
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA38E10E982;
	Thu,  3 Apr 2025 09:51:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cYoQf3Di";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2B8410E982;
 Thu,  3 Apr 2025 09:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743673872; x=1775209872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6sbv+vHiq+H5stflvJer8dVcKK0wXijNnXEae2QMMJg=;
 b=cYoQf3DiUFmHdZl+cmvBSEHB8l2tqLk0eEQn8Cr/oFoqG2lTesfVw3Nu
 LgsjiklgdnkkXY68WQBzf/X6ejacawEpaBBuLiYKbJ9o4NKsUV6uRgtCA
 NLNl/8VNJQzy+3Fs3uHEYj4MKkO2YfRIm7dZqTCkZH4VXgM4Vmff6kir3
 EhUlU7R1z6ON02+MuI4jqxpvPGXpeBT2KVZkgmXdO3Hz2qw2pcbH0sXz5
 tTdC6wAlpGckmp8T5vMBa7OLma3RMdQrNdbI/KqEancHcEwowq7pgzJuM
 zIS487PISmd40+JXR25H9m5GEtb524Ym2s8SjgDdycwJ6YSY126lMaVKx g==;
X-CSE-ConnectionGUID: buQBl0EyR6yKVvYeoAL+ug==
X-CSE-MsgGUID: m7eZoTItSf+UH9AYzFNVKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45196629"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45196629"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:51:11 -0700
X-CSE-ConnectionGUID: TRlC/bpGRqSpbOO2k3KObA==
X-CSE-MsgGUID: ic6fOKcfTeawJz0WRJ4oAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127463693"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 03 Apr 2025 02:51:09 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 1/8] drm/i915/lobf: Add lobf enablement in post plane update
Date: Thu,  3 Apr 2025 14:58:18 +0530
Message-Id: <20250403092825.484347-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250403092825.484347-1-animesh.manna@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
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

Enablement of LOBF is added in post plane update whenever
has_lobf flag is set. As LOBF can be enabled in non-psr
case as well so adding in post plane update. There is no
change of configuring alpm with psr path.

v1: Initial version.
v2: Use encoder-mask to find the associated encoder from
crtc-state. [Jani]
v3: Remove alpm_configure from intel_psr.c. [Jouni]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c    | 25 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_alpm.h    |  4 ++++
 drivers/gpu/drm/i915/display/intel_display.c |  3 +++
 drivers/gpu/drm/i915/display/intel_psr.c     |  3 ---
 4 files changed, 32 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 55f3ae1e68c9..354510bb437d 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -367,6 +367,31 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 	lnl_alpm_configure(intel_dp, crtc_state);
 }
 
+void intel_alpm_post_plane_update(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_encoder *encoder;
+
+	if (!crtc_state->has_lobf && !crtc_state->has_psr)
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
+		if (intel_dp_is_edp(intel_dp))
+			intel_alpm_configure(intel_dp, crtc_state);
+	}
+}
+
 static int i915_edp_lobf_info_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = m->private;
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 8c409b10dce6..2f862b0476a8 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -12,6 +12,8 @@ struct intel_dp;
 struct intel_crtc_state;
 struct drm_connector_state;
 struct intel_connector;
+struct intel_atomic_state;
+struct intel_crtc;
 
 void intel_alpm_init_dpcd(struct intel_dp *intel_dp);
 bool intel_alpm_compute_params(struct intel_dp *intel_dp,
@@ -21,6 +23,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 				    struct drm_connector_state *conn_state);
 void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
+void intel_alpm_post_plane_update(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc);
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
 bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
 bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c540e2cae1f0..f8da7dca2eff 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -55,6 +55,7 @@
 #include "i9xx_plane.h"
 #include "i9xx_plane_regs.h"
 #include "i9xx_wm.h"
+#include "intel_alpm.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_audio.h"
@@ -1078,6 +1079,8 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (audio_enabling(old_crtc_state, new_crtc_state))
 		intel_encoders_audio_enable(state, crtc);
 
+	intel_alpm_post_plane_update(state, crtc);
+
 	intel_psr_post_plane_update(state, crtc);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index eef48c014112..7ad4a01e0378 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1893,9 +1893,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			     intel_dp->psr.psr2_sel_fetch_enabled ?
 			     IGNORE_PSR2_HW_TRACKING : 0);
 
-	if (intel_dp_is_edp(intel_dp))
-		intel_alpm_configure(intel_dp, crtc_state);
-
 	/*
 	 * Wa_16013835468
 	 * Wa_14015648006
-- 
2.29.0

