Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8302E88F6DB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 05:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0529910EFD5;
	Thu, 28 Mar 2024 04:59:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YmIKuwiO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C38810EFD5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 04:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711601941; x=1743137941;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DTjTYZcHTop9H/vtjBDkXFT3yh1aKksQ3+XoPdwCkCA=;
 b=YmIKuwiOzeC+YIgKfeBsguQcsPbDfc82O2iVSwxqeDVC1B+oDZymZp5K
 zhUUNeFaivNN9Coc77KDyokmcZWKq2hs2m5C5IEEI582DAH956QWrzkuG
 Y23olTwDYoom3Pc/4W+K/1p6+qrX+sM8SzMFsQ/dFvpsr9WYtY7xtwBWJ
 pC83RE2NV51dy9+eFct7XBuf2A9SFMg1CT4lnV7FUhGQfwdCZ1eaBBCr8
 5hsVUQ6BRGYyrOJ24i8KagY9kCvnuou8ZaJhRJGpxhRh66AbS1jCOKURc
 o9jNXSpz7bWQiOs3askJoUecGT9cGhKzrJTfVWaJlWHAPV+0eGTS9OOST g==;
X-CSE-ConnectionGUID: ofP0ovhPTGa9FBORLhR4tQ==
X-CSE-MsgGUID: HzMtmK2CTxG/DQxzHxkqAA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="24228223"
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; d="scan'208";a="24228223"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 21:59:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; d="scan'208";a="16531365"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa007.fm.intel.com with ESMTP; 27 Mar 2024 21:58:58 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4] drm/i915/panelreplay: Panel replay workaround with VRR
Date: Thu, 28 Mar 2024 10:13:54 +0530
Message-Id: <20240328044354.1871391-1-animesh.manna@intel.com>
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

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c     |  4 ++++
 3 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 00ac65a14029..7f5c42a14196 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3840,6 +3840,23 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
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
index f4a0773f0fca..23315eced41e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -413,6 +413,7 @@ bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
+void intel_crtc_vblank_delay(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			       const struct intel_crtc_state *pipe_config,
 			       bool fastset);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 72cadad09db5..fccef5434e9c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1430,6 +1430,10 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (!(crtc_state->has_panel_replay || crtc_state->has_psr))
 		return;
 
+	/* wa_14015401596: display versions 13, 14 */
+	if (DISPLAY_VER(dev_priv) >= 13)
+		intel_crtc_vblank_delay(crtc_state);
+
 	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
 }
 
-- 
2.29.0

