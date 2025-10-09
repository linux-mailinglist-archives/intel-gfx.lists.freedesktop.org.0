Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC9CBC83CA
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 11:14:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8BE10E99A;
	Thu,  9 Oct 2025 09:14:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mj3Ul/6Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBBD510E998;
 Thu,  9 Oct 2025 09:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760001274; x=1791537274;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tbgH1Si8iTQGFbGAIomWVDAJp62h04JXCe1aj/XBUzs=;
 b=Mj3Ul/6YH0T0nCAONRbJKwTwqn4U+odEv9J8bhFGJrUy5Hhtgjn/0dJc
 4aBbCU5Y8cr7lKNrjhwN9adcc59Blgevg7QWRTMMuZkEcbL8Wj08FQFrj
 WUK1dtGXGq0nmBgEh5npvL9wyGYb58bpxMGxdsDGpOQUo6M85iox5U8uL
 pj4R8weNgMyxyw5jv7NoA5q9ZwQfqxxVeIeM3z+JlH8RCljYu8vr4nBKd
 YyFOIzXFErLk1BsVspVGT2YqsZJ8hObX0whjiMMGTHsbX9ZFq7JMVg3D8
 sYXf3UeksvIg3n+ScbrnpVSBPjZAhGydrFzPTaxOVY2dWBXdW/eGjhksa A==;
X-CSE-ConnectionGUID: GCI7PunsQauqOXFUeGINnQ==
X-CSE-MsgGUID: Wc2lW+ShTL6VEkUl8SD2qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62123494"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62123494"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 02:14:33 -0700
X-CSE-ConnectionGUID: NWwIGk0mSWGjSM//rADZew==
X-CSE-MsgGUID: w3uPSzjmROi59io5Rgy6zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="179918065"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 02:14:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 5/8] drm/i915/display: Check if final vblank is sufficient for
 PSR features
Date: Thu,  9 Oct 2025 14:30:59 +0530
Message-ID: <20251009090102.850344-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
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

Currently, wake line latency checks rely on the vblank length,
which does not account for either the extra vblank delay for icl/tgl or for
the optimized guardband which will come into picture later at some point.

Introduce intel_dp_compute_config_late() to handle late-stage
configuration checks for DP/eDP features. For now, it validates whether the
final vblank (with extra vblank delay) or guardband is sufficient to
support wake line latencies required by Panel Replay and PSR2 selective
update.

Check if vblank is sufficient for PSR features, and disable them if their
wake requirements cannot be accomodated.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c  |  9 +++++
 drivers/gpu/drm/i915/display/intel_dp.h  |  3 ++
 drivers/gpu/drm/i915/display/intel_psr.c | 51 ++++++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_psr.h |  2 +
 5 files changed, 60 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c09aa759f4d4..94c593bbedf4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4560,6 +4560,9 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 	struct drm_connector *connector = conn_state->connector;
 	u8 port_sync_transcoders = 0;
 
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		intel_dp_compute_config_late(encoder, crtc_state, conn_state);
+
 	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] [CRTC:%d:%s]\n",
 		    encoder->base.base.id, encoder->base.name,
 		    crtc_state->uapi.crtc->base.id, crtc_state->uapi.crtc->name);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a723e846321f..e481ff4c4959 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6979,3 +6979,12 @@ void intel_dp_mst_resume(struct intel_display *display)
 		}
 	}
 }
+
+void intel_dp_compute_config_late(struct intel_encoder *encoder,
+				  struct intel_crtc_state *crtc_state,
+				  struct drm_connector_state *conn_state)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_psr_compute_config_late(intel_dp, crtc_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b379443e0211..0d9573ca44cb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -218,5 +218,8 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
 bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
+void intel_dp_compute_config_late(struct intel_encoder *encoder,
+				  struct intel_crtc_state *crtc_state,
+				  struct drm_connector_state *conn_state);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 212bd244beed..dcab4127b399 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1405,6 +1405,20 @@ int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state
 		return 1;
 }
 
+static bool _wake_lines_fit_into_vblank(const struct intel_crtc_state *crtc_state,
+					int vblank,
+					int wake_lines)
+{
+	if (crtc_state->req_psr2_sdp_prior_scanline)
+		vblank -= 1;
+
+	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
+	if (vblank < wake_lines)
+		return false;
+
+	return true;
+}
+
 static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 				       const struct intel_crtc_state *crtc_state,
 				       bool aux_less,
@@ -1428,14 +1442,7 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 					       crtc_state->alpm_state.fast_wake_lines) :
 			crtc_state->alpm_state.io_wake_lines;
 
-	if (crtc_state->req_psr2_sdp_prior_scanline)
-		vblank -= 1;
-
-	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
-	if (vblank < wake_lines)
-		return false;
-
-	return true;
+	return _wake_lines_fit_into_vblank(crtc_state, vblank, wake_lines);
 }
 
 static bool alpm_config_valid(struct intel_dp *intel_dp,
@@ -4346,3 +4353,31 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 {
 	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
 }
+
+void intel_psr_compute_config_late(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	int vblank = intel_crtc_vblank_length(crtc_state);
+	int aux_less_wake_lines = crtc_state->alpm_state.aux_less_wake_lines;
+	int wake_lines = DISPLAY_VER(display) < 20 ?
+			 psr2_block_count_lines(crtc_state->alpm_state.io_wake_lines,
+						crtc_state->alpm_state.fast_wake_lines) :
+			 crtc_state->alpm_state.io_wake_lines;
+
+	if (intel_psr_needs_alpm_aux_less(intel_dp, crtc_state) &&
+	    !_wake_lines_fit_into_vblank(crtc_state, vblank, aux_less_wake_lines)) {
+		drm_dbg_kms(display->drm,
+			    "Disabling Panel replay: vblank insufficient for wakelines = %d\n",
+			    aux_less_wake_lines);
+		crtc_state->has_panel_replay = false;
+	}
+
+	if (crtc_state->has_sel_update &&
+	    !_wake_lines_fit_into_vblank(crtc_state, vblank, wake_lines)) {
+		drm_dbg_kms(display->drm,
+			    "Disabling Selective Update: vblank insufficient for wakelines = %d\n",
+			    wake_lines);
+		crtc_state->has_sel_update = false;
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 9147996d6c9e..b17ce312dc37 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -83,5 +83,7 @@ void intel_psr_debugfs_register(struct intel_display *display);
 bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
 bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 				   const struct intel_crtc_state *crtc_state);
+void intel_psr_compute_config_late(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.45.2

