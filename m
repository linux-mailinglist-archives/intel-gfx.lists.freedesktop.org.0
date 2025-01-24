Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BA8A1B89E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3BFC10E9C9;
	Fri, 24 Jan 2025 15:12:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Udz1B1us";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEBF210E9BD;
 Fri, 24 Jan 2025 15:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731568; x=1769267568;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jc9sQKIQsZz90WUwDE5HbwdPfPdAnklRQ3RB8MSYFT4=;
 b=Udz1B1usTrbV7/BZ5uMNoweWLGHT+TLqqSwmTaAMe0RpCxWHD/ixs3aF
 n52nhTxjG8HMn9OiVYhOD5qChd7lVs/btci+C0UocpfOpmd2NASxdQswA
 5yJhvBXiFQAu9gIu8ew8a3Gfb+y+zcmPu80aVIn+cCaylG8LHrvTbQLKr
 rgwsF2hzyb32GitDbWcVFT7WW/PAQ9juDUwD+jPN1zZNf0V73mDw0qtUh
 Sw2jjP3weucZPc/RNCAI56GutHqlxJYOnW15yymsTCKpG/Qh5pUYRTtyK
 +r089DGEIjFb4Uqk9tNDAXUzCahB2TahrR7A/9ly57z8hjagFX1IjauKl w==;
X-CSE-ConnectionGUID: OVfGw9v8RFKJwltShBgtCg==
X-CSE-MsgGUID: UQ+Gkc8ZQUmLX6oeS/8J5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177501"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177501"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:48 -0800
X-CSE-ConnectionGUID: Ib8k4YeySdS9nsYzqFBObg==
X-CSE-MsgGUID: jVcbatJ2SD+Y43GjLpBX1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221640"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:46 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 31/35] drm/i915/vrr: Always set vrr vmax/vmin/flipline in
 vrr_{enable/disable}
Date: Fri, 24 Jan 2025 20:30:16 +0530
Message-ID: <20250124150020.2271747-32-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

To work seamlessly between variable and fixed timings,
intel_vrr_{enable,disable}() should just flip between the fixed and
variable timings in vmin/flipline/vmax.

The idea is to just do this for all the platforms, regardless of whether
we also toggle the VRR_CTL enable bit there.

For platforms for which vrr timing generator is always set, VRR_CTL
enable bit does not need to toggle, so modify the vrr_{enable/disable}
for this.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  5 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c     | 44 ++++++++++++--------
 drivers/gpu/drm/i915/display/intel_vrr.h     |  4 +-
 3 files changed, 31 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7bdd41158a93..a0d6360f4cda 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1310,7 +1310,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	intel_psr_pre_plane_update(state, crtc);
 
 	if (intel_crtc_vrr_disabling(state, crtc)) {
-		intel_vrr_disable(old_crtc_state);
+		intel_vrr_disable(old_crtc_state, false);
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
 
@@ -1751,6 +1751,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (crtc_state->has_pch_encoder) {
@@ -7161,7 +7162,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 		skl_detach_scalers(new_crtc_state);
 
 	if (intel_crtc_vrr_enabling(state, crtc))
-		intel_vrr_enable(new_crtc_state);
+		intel_vrr_enable(new_crtc_state, false);
 }
 
 static void intel_enable_crtc(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index ccc40867c10a..10a9bcb8daae 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -496,7 +496,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
 }
 
-void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
+void intel_vrr_enable(const struct intel_crtc_state *crtc_state, bool always_use_vrr_tg)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -507,21 +507,25 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (!intel_vrrtg_is_enabled(crtc_state))
 		return;
 
-	if (intel_vrr_use_push(crtc_state))
-		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-			       TRANS_PUSH_EN);
+	intel_vrr_set_transcoder_timings(crtc_state);
 
-	if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
-			       trans_vrr_ctl(crtc_state));
-	} else {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	if (!always_use_vrr_tg) {
+		if (intel_vrr_use_push(crtc_state))
+			intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
+				       TRANS_PUSH_EN);
+
+		if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
+			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
+				       trans_vrr_ctl(crtc_state));
+		} else {
+			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+		}
 	}
 }
 
-void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
+void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state, bool always_use_vrr_tg)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
@@ -532,12 +536,16 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!intel_vrrtg_is_enabled(old_crtc_state))
 		return;
 
-	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-		       trans_vrr_ctl(old_crtc_state));
-	intel_de_wait_for_clear(display,
-				TRANS_VRR_STATUS(display, cpu_transcoder),
-				VRR_STATUS_VRR_EN_LIVE, 1000);
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+	if (!always_use_vrr_tg) {
+		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+			       trans_vrr_ctl(old_crtc_state));
+		intel_de_wait_for_clear(display,
+					TRANS_VRR_STATUS(display, cpu_transcoder),
+					VRR_STATUS_VRR_EN_LIVE, 1000);
+		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+	}
+
+	intel_vrr_set_transcoder_timings(old_crtc_state);
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 8d53aab3590d..da6a86cee0e8 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -22,11 +22,11 @@ void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
 void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
 void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
-void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
+void intel_vrr_enable(const struct intel_crtc_state *crtc_state, bool always_use_vrr_tg);
 void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
-void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
+void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state, bool always_use_vrr_tg);
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
-- 
2.45.2

