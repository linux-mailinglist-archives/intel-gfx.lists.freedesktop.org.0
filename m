Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 599D2A4BA09
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 09:57:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1D4F10E381;
	Mon,  3 Mar 2025 08:57:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gRXMT+WZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7915010E168;
 Mon,  3 Mar 2025 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740992253; x=1772528253;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K8QYRv43gvciYPX0lQdIMXFWNPma39Lk4UtvVwy+yGE=;
 b=gRXMT+WZ4QNXAPohic/VHLzCX7o1HbmLYDEXqd53gUMXfvXZkdObZ0Br
 jVvBG9EnCLi809HFX3lKMlkhFdpyVXVaTuYz6IM7dojgXuvazcAZc7qYl
 bNd8kR5kZ8SI3wg2FHayod9+FWu3BGnzx90uEyrNhVr7QMH8/JcA9X3an
 N6j4H0LxkjYSLflsyzH480glXi08LaYjcoY/5WgFMXm7cFtkVhRzFpUMn
 0HWu42PfZhKWEIJDuuStfdcuPZ3o+uI63sXF6uj0mice1So4+nXxxykkK
 YSueYPwZSwZnaGQb+r5KZR93FaSOR2UxZol4NStHopGO5j4TNDB5jGrlD A==;
X-CSE-ConnectionGUID: 4ouehOldQKu5IHsOyjtQQQ==
X-CSE-MsgGUID: 9g3xnfKfS7q2ci4hO/CciA==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="41770025"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="41770025"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 00:57:33 -0800
X-CSE-ConnectionGUID: +d7VqHifS4aDryxZ1vSMaw==
X-CSE-MsgGUID: o2gcd+RRR2OnlUfFET6y4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="117949536"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa007.fm.intel.com with ESMTP; 03 Mar 2025 00:57:31 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v5 1/8] drm/i915/lobf: Add lobf enablement in post plane update
Date: Mon,  3 Mar 2025 14:05:15 +0530
Message-Id: <20250303083522.845224-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250303083522.845224-1-animesh.manna@intel.com>
References: <20250303083522.845224-1-animesh.manna@intel.com>
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

Enablement of LOBF is added in post plane update whenever
has_lobf flag is set. As LOBF can be enabled in non-psr
case as well so adding in post plane update. There is no
change of configuring alpm with psr path.

v1: Initial version.
v2: Use encoder-mask to find the associated encoder from
crtc-state. [Jani]
v3: Remove alpm_configure from intel_psr.c. [Jouni]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
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
index b795de186602..8aca6bf64e6d 100644
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
@@ -1048,6 +1049,8 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
+	intel_alpm_post_plane_update(state, crtc);
+
 	intel_psr_post_plane_update(state, crtc);
 
 	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4e938bad808c..c1dd9c739fd4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1903,9 +1903,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
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

