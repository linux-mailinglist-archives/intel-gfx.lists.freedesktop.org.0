Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 224CCA01E94
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 05:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B99D710E574;
	Mon,  6 Jan 2025 04:36:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gMquTvil";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1412A10E577;
 Mon,  6 Jan 2025 04:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736138184; x=1767674184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NLnPU8Sp0QaJ+YhQFHl0iS1hsqyMn8fn1sTNDwhCeao=;
 b=gMquTvil5O8ExOm7pAAGWY94/P3hpI4Kz8h0fU8OUCUkilpRV0q7aD0x
 fwx/N0uV3EJvXNQBq+5B8+t9HV+U7y4xTfdBiOK27gJy1w8pwvVKiGJ+/
 1zl5HyrVfH8II+8QwCt592VVCiYAMsBP7KzHqyCbyPR23ocs7MMUTweL7
 K2j/NxNgp83NnGKlsVsYpKO5aKFh8Vo4G3iOF0yWvWdlOSylXgI2310jM
 FuNRhguY6NJlX8K0+Scd0iSygml7nlLNb19I9onIc5F6ZgrkQ1X9A0gar
 8D6hNi44rF8iGiu9ld3nNgU44V1/IBY46wJN0POygKROCOiFFRh8gtcEe Q==;
X-CSE-ConnectionGUID: qagPeOIYQFC1SnQTtR24ow==
X-CSE-MsgGUID: VkLr8uVMRLe59vva2d2s4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="23880600"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="23880600"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 20:36:24 -0800
X-CSE-ConnectionGUID: tTOiUUPYRpmEBBa5fHlP3A==
X-CSE-MsgGUID: qoq4IIRQT1ayGKmWflZhOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="107306366"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa004.jf.intel.com with ESMTP; 05 Jan 2025 20:36:21 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v3 3/6] drm/i915/lobf: Update lobf if any change in dependent
 parameters
Date: Mon,  6 Jan 2025 09:45:13 +0530
Message-Id: <20250106041516.924101-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250106041516.924101-1-animesh.manna@intel.com>
References: <20250106041516.924101-1-animesh.manna@intel.com>
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

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_alpm.h |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
 3 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index f31f94a9c99a..197c67363f0e 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -312,6 +312,22 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 		(first_sdp_position + waketime_in_lines);
 }
 
+void intel_alpm_lobf_update(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 alpm_ctl;
+
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	alpm_ctl = intel_de_read(display, ALPM_CTL(display, cpu_transcoder));
+	if (alpm_ctl & ALPM_CTL_LOBF_ENABLE && !crtc_state->has_lobf) {
+		alpm_ctl &= ~ALPM_CTL_LOBF_ENABLE;
+		intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
+	}
+}
+
 static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 2f862b0476a8..485e511629fb 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -23,6 +23,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 				    struct drm_connector_state *conn_state);
 void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
+void intel_alpm_lobf_update(const struct intel_crtc_state *crtc_state);
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 36aaa82f4536..cfdbe8013db6 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -35,6 +35,7 @@
 #include "i915_reg.h"
 #include "icl_dsi.h"
 #include "intel_audio.h"
+#include "intel_alpm.h"
 #include "intel_audio_regs.h"
 #include "intel_backlight.h"
 #include "intel_combo_phy.h"
@@ -3543,6 +3544,7 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 	intel_ddi_set_dp_msa(crtc_state, conn_state);
 
 	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
+	intel_alpm_lobf_update(crtc_state);
 
 	intel_backlight_update(state, encoder, crtc_state, conn_state);
 	drm_connector_update_privacy_screen(conn_state);
-- 
2.29.0

