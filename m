Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DC1A42116
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:42:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E24CB10E416;
	Mon, 24 Feb 2025 13:41:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OVwSf2Ev";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8003F10E16F;
 Mon, 24 Feb 2025 08:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740385861; x=1771921861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UhJnyZQAmYp51S7+xXobOPO+SAbtuf0ISc6GkV6bFgg=;
 b=OVwSf2EvNzYtlt8TcEIn65mJJqb+fpUf38B7fCiBp/uqdrPTLBof1ueD
 0CEObljnh9NWB1JSE6hpU7X46nYtG461xbdCT61OYVsw+7Jx3kUa6r6s7
 H7LAQjrV1o+W2Ovz9JEZBYnxHYUX1FpmnXxN8JoXOtplbob2z9YRt33o/
 5F41qQTkbFizWPFbIeyBbZFGl1W5f+ufGulkZL1rT9G/1H3+Bbqt5vCce
 Q+CHJj+uCVt7lyL1KhPh9fLEij6G5iON9dl8UOoRlLX2fGzyphAkEsluq
 3Mw6LF065XClic/xEis5Z9SDgaEIY+zxpl7ArPJXEKY48/GRCFVW0Jb/B w==;
X-CSE-ConnectionGUID: isJGxe4nSjypjfqAzhPElA==
X-CSE-MsgGUID: eTJ6iasiQVSbuCzxHOS17A==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="41250279"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41250279"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 00:31:01 -0800
X-CSE-ConnectionGUID: ulMXkH1wQF2i+ZGwo3cPBw==
X-CSE-MsgGUID: gysoDZRARMW6mmxOt3VN6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116630732"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 24 Feb 2025 00:30:58 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change in dependent
 parameters
Date: Mon, 24 Feb 2025 13:38:43 +0530
Message-Id: <20250224080847.326350-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250224080847.326350-1-animesh.manna@intel.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
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
index 1438e125cde1..83719ee1721c 100644
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
index 91f51fb24f98..c6efd25c2062 100644
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
index 26aa32d4d50e..44258ba0d951 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -37,6 +37,7 @@
 #include "icl_dsi.h"
 #include "intel_alpm.h"
 #include "intel_audio.h"
+#include "intel_alpm.h"
 #include "intel_audio_regs.h"
 #include "intel_backlight.h"
 #include "intel_combo_phy.h"
@@ -3621,6 +3622,7 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 	intel_ddi_set_dp_msa(crtc_state, conn_state);
 
 	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
+	intel_alpm_lobf_update(crtc_state);
 
 	intel_backlight_update(state, encoder, crtc_state, conn_state);
 	drm_connector_update_privacy_screen(conn_state);
-- 
2.29.0

