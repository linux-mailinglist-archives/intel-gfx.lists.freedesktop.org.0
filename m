Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F08B96001
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 15:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F06110E612;
	Tue, 23 Sep 2025 13:24:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TAvP9q/f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A963610E60C;
 Tue, 23 Sep 2025 13:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758633854; x=1790169854;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XbCbLQkdI9a2gBqYLTj7sixPLS6yvsp0h+Iij4QTHuE=;
 b=TAvP9q/fXg0xUjqHvBp+/nveDeLBN51AA4GsGZpcA9x2LbQOWgbtoDM9
 EZALgGzcf0nyJ9Rsqv3LVFQEMFYvU2aibFpaWeBCk4rnzrRB8TL3zkd/r
 I4f+nWfqlH/L7+es0rWJIx1yESDvS3zZ4/jkdF3AnQx7HOjiNUA3YI7Aj
 grl7WDYSjR3H1iy02bo5qDO2nsdh/Bp0Tb05pUnu0aOWQRoM9Gbp/obP8
 of6FzOlEKB2y45Y7rTdH0dBmeDQcYfSN8q4YFxj7XyOQvmFO+ELzQ6QZY
 Ga0NS7vFIM0emb1WSjRJf/iY7W9lZ2fx/MEL8V1Y5pQtHMQasO3bAqnud w==;
X-CSE-ConnectionGUID: B9J1+nzMTJu8E/DX8OunlA==
X-CSE-MsgGUID: U522nChSQOWrPqtUxNKkPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48480557"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="48480557"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:13 -0700
X-CSE-ConnectionGUID: kks85ipAQoWvLIHbbtDGCg==
X-CSE-MsgGUID: nY3Pms6GQaKipbVnqva04g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207689558"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/9] drm/i915/vrr: s/intel_vrr_vblank_delay/intel_vrr_scl_delay
Date: Tue, 23 Sep 2025 18:40:39 +0530
Message-ID: <20250923131043.2628282-6-ankit.k.nautiyal@intel.com>
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

The helper intel_vrr_vblank_delay() is used to account for scl lines
+ extra_vblank_delay (for ICL/TGL case) for:
- evasion logic for vrr case
- to wait for SCL+ lines after send push operation.

Rename the helper to intel_vrr_scl_delay since we are interested in the
SCL+ lines for the VRR cases.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
 drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_vrr.h    | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index dee44d45b668..ca31e928ecb0 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -128,7 +128,7 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
 		 * scanline until the delayed vblank occurs after
 		 * TRANS_PUSH has been written.
 		 */
-		return intel_vrr_vblank_delay(crtc_state) + 1;
+		return intel_vrr_scl_delay(crtc_state) + 1;
 	else
 		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
 }
@@ -723,7 +723,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
 
 	if (pre_commit_is_vrr_active(state, crtc)) {
-		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
+		int vblank_delay = intel_vrr_scl_delay(crtc_state);
 
 		end = intel_vrr_vmin_vblank_start(crtc_state);
 		start = end - vblank_delay - latency;
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index c15234c1d96e..9441b7bacd27 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -681,7 +681,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 		else
 			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
 
-		vblank_delay = intel_vrr_vblank_delay(crtc_state);
+		vblank_delay = intel_vrr_scl_delay(crtc_state);
 	} else {
 		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 1b90eaa6a776..40e256bce3cb 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -92,7 +92,7 @@ static int intel_vrr_extra_vblank_delay(struct intel_display *display)
 	return DISPLAY_VER(display) < 13 ? 1 : 0;
 }
 
-int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
+int intel_vrr_scl_delay(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 38bf9996b883..b72e90b4abe5 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -35,7 +35,7 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
-int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
+int intel_vrr_scl_delay(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
-- 
2.45.2

