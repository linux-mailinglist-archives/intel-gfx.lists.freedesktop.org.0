Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D859B41C8
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 06:19:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5019510E15E;
	Tue, 29 Oct 2024 05:19:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g/Ek3eWk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF99110E15E
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 05:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730179182; x=1761715182;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p+4cjyzPL3tmL6PY1VYIgSUudyCB2xr37HIg4kJSKGA=;
 b=g/Ek3eWkPJMyDRpqzPR/AARYX1F3jMvBcSlUI0XxLAFaQXZ0EutDh2Z8
 iLc2xAv1obEu0odLAcO1QoUGTYXhV6pwQGVBUd9Gja0O2sCEqt4iLGLcz
 jRgJkSdh3JkWeR7Q7UR3BlGgLjVPRl26Kjfo/XO1GbIB3iIXm93oYUsDP
 NTCm105iULjcihaTiMvKHYQeTf1MuXczEL5lq3bh1UVJWNOSL/mzAz4oH
 Xt7Xjh/pu0WR5Kzkz3DOxuKNgtYqUqQt05PRwyCY0K6koEf1ShU4rveTO
 NIkgDUXU+HbGTGgSecrSj8BaspMADjMmgZi+HGisc6E/tyejzSAq7VVII Q==;
X-CSE-ConnectionGUID: cze7cJnDQeauYy5JVyLp6Q==
X-CSE-MsgGUID: orvyccBiR3KhZPMG6VuQrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29987549"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29987549"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 22:19:42 -0700
X-CSE-ConnectionGUID: V2SW1KkdTkO4jTEWPWR/xQ==
X-CSE-MsgGUID: W+qEjkElSdye2bVoT4HY+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="82168506"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 28 Oct 2024 22:19:41 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	Animesh Manna <animesh.manna@intel.com>
Subject: [RFC] drm/i915/psr: Disable psr1 if setup_time > vblank
Date: Tue, 29 Oct 2024 10:30:30 +0530
Message-Id: <20241029050030.1413662-1-animesh.manna@intel.com>
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

Issue is seen when PSR enabled with setup frames and when try to disable
PSR at SRDONACK State (0x1). PSR FSM is stuck at SRDONACK(0x1) for more
than 5 seconds. Issue not seen with Setup frames disabled. Currently
disable psr1 if setuptime > vblank to workaround the above issue.

HSD: 16024594674

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4176163ec19a..887fa8a8f878 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1640,6 +1640,15 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
+static bool intel_psr_needs_wa_18037818876(struct intel_dp *intel_dp,
+					   struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	return ((DISPLAY_VER(display) == 20) && intel_dp->psr.entry_setup_frames > 0 &&
+		!crtc_state->has_sel_update);
+}
+
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state)
@@ -1686,6 +1695,10 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 
 	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
+
+	/* Wa_18037818876 */
+	if (intel_psr_needs_wa_18037818876(intel_dp, crtc_state))
+		crtc_state->has_psr = false;
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
-- 
2.29.0

