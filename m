Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C83A3B9988C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 13:05:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDD7410E706;
	Wed, 24 Sep 2025 11:05:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AF9T60qC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DC9E10E6F7;
 Wed, 24 Sep 2025 11:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758711936; x=1790247936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zifqW9DMyI/EaivpvlfvwR7h7l1ysdFjVYXXhL2SrXQ=;
 b=AF9T60qCq3YoLaJ4KnSF9+d+Yd3Ras1wL8+q7EZGBV5VaLIA8biDxy5a
 obG/ecsx7yqExvccPL1k1PNFpVVIhm0Xg9KyUtwuvP7eeP1INZbyzDYkz
 x61I7oC/7whpkKyG0Gzz28FDlXgehwt1NoR5z67K14h3b9LF6/jC5fgnE
 I1pCNtTKv9udIHDg7cJ41Y8mTtxtzyv7WytryKgRQYS8vEquueD+DdU3K
 QZQOJoklRL0uyeE2TJEMOcE2/nY5IJTUzY3GEazNFyHpgWSP/vANZov5R
 5/46a+OlrruXZT3NjpWkAHiYzEPRFtgtUhqQ46ixDb/8m09Ogeb1Z6nX0 g==;
X-CSE-ConnectionGUID: 82sWpAofSISdiqncwRqxtw==
X-CSE-MsgGUID: Up/tIbURSJGSN22NdQfkmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71247842"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71247842"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:05:06 -0700
X-CSE-ConnectionGUID: AZbAdWNESd+eLYI5U5zWcg==
X-CSE-MsgGUID: QqfyVtOQTeS0tvaXmxm8XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176944153"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:05:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 9/9] drm/i915/display: Drop intel_vrr_vblank_delay and use
 set_context_latency
Date: Wed, 24 Sep 2025 16:21:29 +0530
Message-ID: <20250924105129.2771196-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
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

The helper intel_vrr_vblank_delay() was used to keep track of the SCL
lines + the extra vblank delay required for ICL/TGL.
This was used to wait for sufficient lines for:
-push send bit to clear for VRR case
-evasion to delay the commit.

For first case we are using safe window scanline wait and with that we
just need to wait for SCL lines, we do not need to wait for the extra
vblank delay required for ICL/TGL. For the second case, we actually
do not need to wait for extra lines before the undelayed vblank, if we
are already in the safe window.

To sum up, SCL lines is sufficient for both cases.

So drop the helper intel_vrr_vblank_delay and just use
crtc_state->set_context_latency instead.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
 drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c    | 8 --------
 drivers/gpu/drm/i915/display/intel_vrr.h    | 1 -
 4 files changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 3cb4c9be146f..c183209d7663 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -128,7 +128,7 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
 		 * scanline until the delayed vblank occurs after
 		 * TRANS_PUSH has been written.
 		 */
-		return intel_vrr_vblank_delay(crtc_state) + 1;
+		return crtc_state->set_context_latency + 1;
 	else
 		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
 }
@@ -723,7 +723,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
 
 	if (pre_commit_is_vrr_active(state, crtc)) {
-		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
+		int vblank_delay = crtc_state->set_context_latency;
 
 		end = intel_vrr_vmin_vblank_start(crtc_state);
 		start = end - vblank_delay - latency;
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index c15234c1d96e..0b7fcc05e64c 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -681,7 +681,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 		else
 			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
 
-		vblank_delay = intel_vrr_vblank_delay(crtc_state);
+		vblank_delay = crtc_state->set_context_latency;
 	} else {
 		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e29b4050a9df..6d3f9e3de1f1 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -92,14 +92,6 @@ static int intel_vrr_extra_vblank_delay(struct intel_display *display)
 	return DISPLAY_VER(display) < 13 ? 1 : 0;
 }
 
-int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-
-	return crtc_state->set_context_latency +
-		intel_vrr_extra_vblank_delay(display);
-}
-
 static int intel_vrr_vmin_flipline_offset(struct intel_display *display)
 {
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 239e4f94725c..cfd027118b60 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -35,7 +35,6 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
-int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
-- 
2.45.2

