Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F23C901D45
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 10:51:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8EED10E37D;
	Mon, 10 Jun 2024 08:51:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hEnWZjL9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A15BE10E37D
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 08:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718009473; x=1749545473;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O6NbGqR14/TkVAyIaWk3MYdTMvUxF9/uG6us2dY3dR4=;
 b=hEnWZjL9mkcAKJ3GaKnHhyKUmaO7bpSSL72pwmGd1HxEigM8Z7cMD0dA
 JcDSb2uOeprjNelQ4ed8CfKXLzQTbpUJI9ytAAOk6Clx5YlxknvSt9Bgs
 atjysGIvVBl+GHJt95R0qWtXDXqhT2Km7AbbZQ2Hln8YmjG1TrYpXNEaa
 l9T6dJfER0qT+DIXl9mIx4gPVmx634L3fFtLD+ZE+qz+S2hDU95V7vz+9
 beOulMGSdYcXNqX0h+G4FjthqKvLk9yCYsdttjlkVcps4pbyIgm6dHZ4j
 9clKzjl3aRps5kB6ekmc7v9C50H7NessBGLVneWWXH7d3eBw1lnvvSsra A==;
X-CSE-ConnectionGUID: L0VDyWU1R82Zp+U1+6oGow==
X-CSE-MsgGUID: 1VfRErHyToqc10sRxnvB6A==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14455022"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14455022"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 01:51:12 -0700
X-CSE-ConnectionGUID: ySH6vAd9RRGG+GatKx2IfA==
X-CSE-MsgGUID: 1K5wr2FcRUKKjVj+LFVH+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43941234"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa005.jf.intel.com with ESMTP; 10 Jun 2024 01:51:10 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v6] drm/i915/panelreplay: Panel replay workaround with VRR
Date: Mon, 10 Jun 2024 14:04:41 +0530
Message-Id: <20240610083441.2421326-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

HSD: 14015406119

v1: Initial version.
v2: Update timings stored in adjusted_mode struct. [Ville]
v3: Add WA in compute_config(). [Ville]
v4:
- Add DISPLAY_VER() check and improve code comment. [Rodrigo]
- Introduce centralized intel_crtc_vblank_delay(). [Ville]
v5: Move to crtc_compute_config(). [Ville]
v6: Restrict DISPLAY_VER till 14. [Mitul]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c608329dac42..96dd5938229b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2504,10 +2504,15 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 static int intel_crtc_compute_config(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
+	/* wa_14015401596: display versions 13, 14 */
+	if (IS_DISPLAY_VER(dev_priv, 13, 14))
+		intel_crtc_vblank_delay(crtc_state);
+
 	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
 		return ret;
@@ -3917,6 +3922,23 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state)
+{
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	/*
+	 * wa_14015401596 for display versions >= 13.
+	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
+	 * to at least a value of 1 when Panel Replay is enabled with VRR.
+	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
+	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
+	 * by 1 if both are equal.
+	 */
+	if (crtc_state->vrr.enable && crtc_state->has_panel_replay &&
+	    adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay)
+		adjusted_mode->crtc_vblank_start += 1;
+}
+
 int intel_dotclock_calculate(int link_freq,
 			     const struct intel_link_m_n *m_n)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 56d1c0e3e62c..d426dd9f7f87 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -428,6 +428,7 @@ bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
+void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			       const struct intel_crtc_state *pipe_config,
 			       bool fastset);
-- 
2.29.0

