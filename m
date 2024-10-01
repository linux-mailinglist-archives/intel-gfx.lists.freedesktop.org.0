Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDE198BE3F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 15:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC51F10E620;
	Tue,  1 Oct 2024 13:45:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n4bi0ccz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE7EC10E620
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 13:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727790341; x=1759326341;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=34Ss9jujUsELI0/A47Q0927w8bSIONFITPywclTd0Zw=;
 b=n4bi0ccz5ym8xXacwm5gf/2yAQuFh/Y33JmwifQXQn54MJ4gpT9nBPgL
 Dow2Y81mDEwlsYkAHPUKvkULhflbfn46gny63UxOQt/9BbS429MVxrdoA
 BoX7LPBjI6fZRlbr2fmDyspt7bP3Mr5z5E5cChv/7GQ4a8c0QMFj1DoPk
 HMH5thj9S15SaOYNVyCWfm32rYqucsSsuLOA6R4cdAlsodXtfYl1Z7+pr
 cod0XKVTiYQACoXzvGDrZQgUaXVKPHVUwHM5Fc/XgsLwV4aZnxNaoM5Le
 JHKAT7trBU7RAUBdizg/BeYf2sY+L2XIYS178rbbjAxoewu8pXFapTDgO Q==;
X-CSE-ConnectionGUID: wIPn5AutRyy9E3n9fseCwA==
X-CSE-MsgGUID: ubjaCaWuTCyVFKTn1rEA9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="30810256"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="30810256"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 06:45:40 -0700
X-CSE-ConnectionGUID: HU+t/SCHRLCuTTg73nYO/A==
X-CSE-MsgGUID: vV+bcs+KT6q2NUaUkXjq7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73336408"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 01 Oct 2024 06:45:38 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@intel.com, ankit.k.nautiyal@intel.com,
 uma.shankar@intel.com
Subject: [PATCH v13 3/3] drm/i915/panelreplay: Panel replay workaround with VRR
Date: Tue,  1 Oct 2024 19:17:03 +0530
Message-ID: <20241001134703.1128487-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
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

From: Animesh Manna <animesh.manna@intel.com>

Panel Replay VSC SDP not getting sent when VRR is enabled
and W1 and W2 are 0. So Program Set Context Latency in
TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
The same is applicable for PSR1/PSR2 as well.

HSD: 14015406119

v1: Initial version.
v2: Update timings stored in adjusted_mode struct. [Ville]
v3: Add WA in compute_config(). [Ville]
v4:
- Add DISPLAY_VER() check and improve code comment. [Rodrigo]
- Introduce centralized intel_crtc_vblank_delay(). [Ville]
v5: Move to crtc_compute_config(). [Ville]
v6: Restrict DISPLAY_VER till 14. [Mitul]
v7:
- Corrected code-comment. [Mitul]
- dev_priv local variable removed. [Jani]
v8: Introduce late_compute_config() which will take care late
vblank-delay adjustment. [Ville]
v9: Implementation simplified and split into multiple patches.
v10:
- Split vrr changes and use struct intel_display in DISPLAY_VER(). [Ankit]
- Use for_each_new_intel_connector_in_state(). [Jani]
v11: Remove loop and use flipline instead of vrr.enable flag. [Ville]
v12:
- Use intel_Vrr_possible helper.
- Correct flag check for flipline.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c59d7bffbf57..a8f846b654e9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2573,6 +2573,8 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
+	intel_crtc_adjust_vblank_delay(crtc_state);
+
 	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
 		return ret;
@@ -3985,6 +3987,25 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	/*
+	 * wa_14015401596 for display versions 13, 14.
+	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
+	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled with VRR.
+	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
+	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
+	 * by 1 if both are equal.
+	 */
+	if (intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
+	    adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
+	    IS_DISPLAY_VER(display, 13, 14))
+		adjusted_mode->crtc_vblank_start += 1;
+}
+
 int intel_dotclock_calculate(int link_freq,
 			     const struct intel_link_m_n *m_n)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 1f0fed5ea7bc..e6bd03ef104d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -446,6 +446,7 @@ u8 _intel_modeset_primary_pipes(const struct intel_crtc_state *crtc_state);
 u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
+void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			       const struct intel_crtc_state *pipe_config,
 			       bool fastset);
-- 
2.46.0

