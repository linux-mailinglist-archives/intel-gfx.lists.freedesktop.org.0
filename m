Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46574BE1A53
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 08:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A60C010E940;
	Thu, 16 Oct 2025 06:07:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I25IFbEf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFC7D10E93C;
 Thu, 16 Oct 2025 06:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760594857; x=1792130857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2fOMPUfMbYqP8z8u3cFZdqrmviamI1xOG8IId++0rRw=;
 b=I25IFbEfd8fj2/yg+ohZFDoAVJPOVddzJ8Xcj1EDecy2EqWTqn6qLwu4
 b2F5gthyOtH2pC8tcCjepl6796M/6NCBWNpo64+2+UjdDLPY2LwF3v8RR
 auLTOYaklK3kGT2AJv9JDsGkSVDyz4uwVzX0R/3d+lwrauULleAVP6uwe
 LjkgrtOEtDpAGipd9Fvw9zaSKgG0QO5cahrGEsM4hU5ibKkwT/jed7iqb
 NfKsvXCBqBd37X/3dchALiSoQCVmP7IfAhDqd/mivpCO+MB5XMJJW9ypr
 AU8xIcAbYO/xhA+bRC/HNXUYuMPKXcH23Dotr+icciVehtNMHBhm86Pn2 Q==;
X-CSE-ConnectionGUID: mqxsv+BUSQ2N4VctDLu92g==
X-CSE-MsgGUID: OV4DQcZXQFOIqHLBGxpgJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="74120432"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="74120432"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:07:37 -0700
X-CSE-ConnectionGUID: VWif8oAMTy+na9iFdj9fCw==
X-CSE-MsgGUID: PESv2/hWQGmsbrL6Jo/DTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="187650841"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:07:34 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 07/10] drm/i915/display: Introduce dp/psr_compute_config_late()
Date: Thu, 16 Oct 2025 11:24:11 +0530
Message-ID: <20251016055415.2101347-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251016055415.2101347-1-ankit.k.nautiyal@intel.com>
References: <20251016055415.2101347-1-ankit.k.nautiyal@intel.com>
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

Introduce intel_dp_compute_config_late() to handle late-stage
configuration checks for DP/eDP features. For now, it paves path for
psr_compute_config_late() to handle psr parameters that need to be
computed late.

Move the handling of psr_flag for Wa_18037818876 and setting of non-psr
pipes to intel_psr_compute_config_late() as these are the last things
to be configured for PSR features.

v2: Update dp_compute_config_late() to return int.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com> (#v1)
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  7 +++++++
 drivers/gpu/drm/i915/display/intel_dp.c  | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h  |  3 +++
 drivers/gpu/drm/i915/display/intel_psr.c | 24 +++++++++++++++---------
 drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
 5 files changed, 38 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c09aa759f4d4..870140340342 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4559,6 +4559,13 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 	struct intel_display *display = to_intel_display(encoder);
 	struct drm_connector *connector = conn_state->connector;
 	u8 port_sync_transcoders = 0;
+	int ret = 0;
+
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		ret = intel_dp_compute_config_late(encoder, crtc_state, conn_state);
+
+	if (ret)
+		return ret;
 
 	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] [CRTC:%d:%s]\n",
 		    encoder->base.base.id, encoder->base.name,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a723e846321f..7059d55687cf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6979,3 +6979,14 @@ void intel_dp_mst_resume(struct intel_display *display)
 		}
 	}
 }
+
+int intel_dp_compute_config_late(struct intel_encoder *encoder,
+				 struct intel_crtc_state *crtc_state,
+				 struct drm_connector_state *conn_state)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_psr_compute_config_late(intel_dp, crtc_state);
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b379443e0211..281ced3a3b39 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -218,5 +218,8 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
 bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
+int intel_dp_compute_config_late(struct intel_encoder *encoder,
+				 struct intel_crtc_state *crtc_state,
+				 struct drm_connector_state *conn_state);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e97dcfa7673c..383e6dc1ed63 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1785,15 +1785,6 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 
 	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
-
-	/* Wa_18037818876 */
-	if (intel_psr_needs_wa_18037818876(intel_dp, crtc_state)) {
-		crtc_state->has_psr = false;
-		drm_dbg_kms(display->drm,
-			    "PSR disabled to workaround PSR FSM hang issue\n");
-	}
-
-	intel_psr_set_non_psr_pipes(intel_dp, crtc_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -4355,3 +4346,18 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 {
 	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
 }
+
+void intel_psr_compute_config_late(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	/* Wa_18037818876 */
+	if (intel_psr_needs_wa_18037818876(intel_dp, crtc_state)) {
+		crtc_state->has_psr = false;
+		drm_dbg_kms(display->drm,
+			    "PSR disabled to workaround PSR FSM hang issue\n");
+	}
+
+	intel_psr_set_non_psr_pipes(intel_dp, crtc_state);
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

