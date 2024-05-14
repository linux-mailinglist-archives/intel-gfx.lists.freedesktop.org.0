Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3BA8C5756
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 15:47:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352B410E7AF;
	Tue, 14 May 2024 13:47:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R81A86YS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 074F810EA14
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 13:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715694464; x=1747230464;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mvyUEijiR99KfwWicKjMasJ+7OQ3qOx+OjxpZqVAuEY=;
 b=R81A86YSJc2B+Y5Un2cMvTxC+CGfNuES6/gih5sNrz35P3BOw8yppYft
 KU7owUs1BITIZEWLAvExDKBMJcXADqKx97qB240XxTEAba5zSidknAj8q
 s4WXjpSmr6rsGmVWxp3EsQdt370nhvXaI6taXJw2cjNrVgDME4X/Q63/N
 /cuLRMt6x+yOCqDeCprh1ZbXpBLihQiddrQvGPuxI+leLfAjN1W+4O56H
 5tjtpCbM1OlBIYwWchD7K6F/hf1+13zv0XxsfNzvqobBlHJa0B1arcJGG
 /jcE9Yw9552scAWtv6/V6949+GU6fO4wrkdYLt+WmIuvWQ4S9smdZdgRM Q==;
X-CSE-ConnectionGUID: 9iPgvsAHRVG/t0Z/nln8Ug==
X-CSE-MsgGUID: JSjtUIqmSPOzGK85klO+gg==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11497662"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11497662"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 06:47:44 -0700
X-CSE-ConnectionGUID: YaBR1+yYSOaOzw6rdzWNpA==
X-CSE-MsgGUID: WyEYoHnOS+yaH5ZsWnNCYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="61863563"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa001.fm.intel.com with ESMTP; 14 May 2024 06:47:41 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v5] drm/i915/panelreplay: Panel replay workaround with VRR
Date: Tue, 14 May 2024 19:01:43 +0530
Message-Id: <20240514133143.718389-1-animesh.manna@intel.com>
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

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef986b508431..0664c9478c68 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2497,10 +2497,15 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 static int intel_crtc_compute_config(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
+	/* wa_14015401596: display versions 13, 14 */
+	if (DISPLAY_VER(dev_priv) >= 13)
+		intel_crtc_vblank_delay(crtc_state);
+
 	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
 		return ret;
@@ -3889,6 +3894,23 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
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

