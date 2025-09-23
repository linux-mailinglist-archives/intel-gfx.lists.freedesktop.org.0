Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F80B96007
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 15:24:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67DD210E13C;
	Tue, 23 Sep 2025 13:24:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mSpNMMiy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01A1A10E615;
 Tue, 23 Sep 2025 13:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758633857; x=1790169857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/l/NrnFaGGjxvmpdf7vzm1dnmW2Kqh/NyybzNztwer4=;
 b=mSpNMMiyrpSp6bnmaW1sZN6qWRmIhbf5WBMtRHDxrOusYfAsyEkmNij5
 OsYajxTjttMg8AycizsLDyieNdO7HlQM+HsJBQ+sHvZO/J4DXDOu4N+Gz
 w9vFGAs1zyQRqDjtO0YN/k5jA6hvowk0dovmirA0Wly7GHwfbs0xItGzV
 /CUCFVmGx8ACmtvvLRPjaans0jIfO9wrOmKONkabxPQ5GVscTOGSfosV+
 xglyQfUtGNPF02sKHL35guPy1SwszXFlVxM7ibfRizC/OQ926P41qbR4N
 DajocXnjJ95MarpWPsnYa7HTgUG60d6+pns65Blcu+g68qxpb+pYxJy/2 g==;
X-CSE-ConnectionGUID: qArpNmA3TpyX9hDwp7Wlvg==
X-CSE-MsgGUID: ibnedSA0QKOPqBvHGEoljg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48480566"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="48480566"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:17 -0700
X-CSE-ConnectionGUID: d6Rza6G+SMSM4DiKAyguUg==
X-CSE-MsgGUID: bLfhB45TRX+cCEpL04yrHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207689571"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 7/9] drm/i915/display: Wait for scl start instead of
 dsb_wait_vblanks
Date: Tue, 23 Sep 2025 18:40:41 +0530
Message-ID: <20250923131043.2628282-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
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

Until LNL, intel_dsb_wait_vblanks() waits for the undelayed vblank start.
However, from PTL onwards, it waits for the start of the safe window,
defined by the number of lines programmed in TRANS_SET_CONTEXT_LATENCY.
This change was introduced to move the SCL window out of the vblank region,
supporting modes with higher refresh rates and smaller vblanks.

As a result, on PTL+ platforms, the DSB wait for vblank completes exactly
SCL lines earlier than the undelayed vblank start. Since we use
intel_dsb_wait_vblanks() to time the send push operation, this causes
issues when SCL lines are non-zero.

So instruct the DSB to wait from (undelayed vblank start - SCL) to
(delayed vblank start - SCL) in the helper to wait for delayed vblank.

v2:
- Use helpers for safe window start/end. (Ville)
- Move the extra wait inside the helper to wait for delayed vblank. (Ville)
- Update the commit message.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h |  2 ++
 3 files changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 0584a9597327..e118ba4a0bb7 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -815,6 +815,23 @@ void intel_dsb_chain(struct intel_atomic_state *state,
 			 wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0);
 }
 
+static
+void intel_dsb_wait_for_scl_start(struct intel_atomic_state *state,
+				  struct intel_dsb *dsb)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	const struct intel_crtc_state *crtc_state =
+		intel_pre_commit_crtc_state(state, crtc);
+	int start, end;
+
+	if (!pre_commit_is_vrr_active(state, crtc))
+		return;
+
+	start = intel_vrr_safe_window_start(crtc_state);
+	end = intel_vrr_safe_window_end(crtc_state);
+	intel_dsb_wait_scanline_out(state, dsb, start, end);
+}
+
 void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
 				       struct intel_dsb *dsb)
 {
@@ -824,6 +841,7 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
 	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
 					     dsb_vblank_delay(state, crtc));
 
+	intel_dsb_wait_for_scl_start(state, dsb);
 	intel_dsb_wait_usec(dsb, usecs);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 40e256bce3cb..8f851d3a3f44 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -800,3 +800,20 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
+
+int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (DISPLAY_VER(display) >= 30)
+		return crtc_state->hw.adjusted_mode.crtc_vdisplay -
+		       crtc_state->set_context_latency;
+
+	return crtc_state->hw.adjusted_mode.crtc_vdisplay;
+}
+
+int intel_vrr_safe_window_end(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_vmin_vblank_start(crtc_state) -
+	       crtc_state->set_context_latency;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index b72e90b4abe5..a304b6c41103 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -41,5 +41,7 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
+int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
+int intel_vrr_safe_window_end(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

