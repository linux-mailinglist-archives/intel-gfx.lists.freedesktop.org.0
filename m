Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F136D987DAA
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 06:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9487310EC01;
	Fri, 27 Sep 2024 04:43:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MO6q2da3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6446910EC01
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 04:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727412232; x=1758948232;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+GTL+oYcSKjEMf53Gu/pWSbmdRKboTxc8/flnfF3cA4=;
 b=MO6q2da3TXaxSOpYz+/cbwGOwdtcTg3iygzM1+TjmakGtKUP97kZppxI
 dC/fxLApj9gMn+Ff331ab8h4hcHUQhMtPmmZyKxfqnbSbBEltv1JdpFR5
 6HexXm9hhZawrkMe7WCm/bjm6M54i+6wGczq/82uBbPjs78MWSc1uLf9M
 5m9hOKt/su0V+xgH/kWfN+ORSOwfMf4dNABHOBdtL328KPUHfkgCcArl/
 BtiRlhQGYfZWu69owWK+9m/xjLRgdmQEB9Oom5Q0EdW5QXX96+vIi7ncb
 EspyVqgEJ1Vc3w1QtgsuzOFjkTEum7Ka/pff0v5ykQ3NnDg4+BLuoAFnl A==;
X-CSE-ConnectionGUID: 4X2dxMfTTDOlEaI7XJ2BRQ==
X-CSE-MsgGUID: hg2g1KhpQI+pp05QaC6rnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26416943"
X-IronPort-AV: E=Sophos;i="6.11,157,1725346800"; d="scan'208";a="26416943"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 21:43:52 -0700
X-CSE-ConnectionGUID: pA+GfVSFQwOhOQMAmdgOkg==
X-CSE-MsgGUID: 07+0Aj76RK6zU1EYgVL/GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,157,1725346800"; d="scan'208";a="76463053"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 26 Sep 2024 21:43:49 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v12 2/3] drm/i915/panelreplay: Panel replay workaround with VRR
Date: Fri, 27 Sep 2024 09:55:08 +0530
Message-Id: <20240927042509.4081753-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20240927042509.4081753-1-animesh.manna@intel.com>
References: <20240927042509.4081753-1-animesh.manna@intel.com>
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

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c59d7bffbf57..bab8b2141b14 100644
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
+	if (!crtc_state->vrr.flipline && crtc_state->has_psr &&
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
2.29.0

