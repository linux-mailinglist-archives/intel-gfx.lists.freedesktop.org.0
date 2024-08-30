Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA989656BB
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F14910E7F9;
	Fri, 30 Aug 2024 05:08:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PcsoT8aV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB80510E7FE;
 Fri, 30 Aug 2024 05:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994536; x=1756530536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mtnlkRKpSR6WQyjlARQ6PMOPeblzB/wvoQ5bIgNViao=;
 b=PcsoT8aVgSDvO6rQrC2k4jXEDuUOMHD0bGlUdTHRiQpzd/p6lfDkPR1D
 DLEDw91xILYyhvwU64jTX0+1Xy+KYhHVY9G2HNpFLopYQCTi+vAYk88lZ
 GIH0CsOWxWh4Ow3dp9jUKZEvaxkGi/p2nZHFswXtgRixuU9jALeBg3rvu
 R4jAeleQETjOwvsQBMbYR2JUqiRpslxM3KTCDGThepWPRXJY3YP2+EVd9
 jV/oLVeOugqiIQCnwPGaS1k7waNdsqlg4fJl5NmpeadRsOl7BrYiVR3Eq
 joh3dqN/uv99ZKOYHJ3cO01lpJ+q4SGiEREl+bz3LdGp2IN0CdX6oAPqZ Q==;
X-CSE-ConnectionGUID: uzPh/nRZR6q5+7l6TpOwRg==
X-CSE-MsgGUID: 4LfWKUBOSkSCrzL4q9zKaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421703"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421703"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:56 -0700
X-CSE-ConnectionGUID: +12oFYtRTMqKZRI8scIawg==
X-CSE-MsgGUID: tpVu3+6mSH62e+jSw7l53A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610322"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 19/19] drm/i915/joiner: Use struct intel_display in
 intel_joiner_supported_pipes
Date: Fri, 30 Aug 2024 10:39:49 +0530
Message-ID: <20240830050950.2528450-20-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
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

Replace struct drm_i915_private with struct intel_display in the helper
intel_joiner_supported_pipes and its callers.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  6 ++++--
 drivers/gpu/drm/i915/display/intel_joiner.c  | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_joiner.h  |  3 +--
 3 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 22a65d66f45e..a326db662748 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5776,6 +5776,7 @@ static bool intel_pipes_need_modeset(struct intel_atomic_state *state,
 static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 				     struct intel_crtc *primary_crtc)
 {
+	struct intel_display *display = to_intel_display(primary_crtc);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *primary_crtc_state =
 		intel_atomic_get_new_crtc_state(state, primary_crtc);
@@ -5789,12 +5790,13 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 			primary_crtc->pipe != intel_joiner_get_primary_pipe(primary_crtc_state)))
 		return -EINVAL;
 
-	if (primary_crtc_state->joiner_pipes & ~intel_joiner_supported_pipes(i915)) {
+	if (primary_crtc_state->joiner_pipes & ~intel_joiner_supported_pipes(display)) {
 		drm_dbg_kms(&i915->drm,
 			    "[CRTC:%d:%s] Cannot act as joiner primary "
 			    "(need 0x%x as pipes, only 0x%x possible)\n",
 			    primary_crtc->base.base.id, primary_crtc->base.name,
-			    primary_crtc_state->joiner_pipes, intel_joiner_supported_pipes(i915));
+			    primary_crtc_state->joiner_pipes,
+			    intel_joiner_supported_pipes(display));
 		return -EINVAL;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.c b/drivers/gpu/drm/i915/display/intel_joiner.c
index 2c7477914f74..32cd0ab4e707 100644
--- a/drivers/gpu/drm/i915/display/intel_joiner.c
+++ b/drivers/gpu/drm/i915/display/intel_joiner.c
@@ -72,18 +72,18 @@ void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
 			      (pipe - primary_pipe) * width, 0);
 }
 
-u8 intel_joiner_supported_pipes(struct drm_i915_private *i915)
+u8 intel_joiner_supported_pipes(struct intel_display *display)
 {
 	u8 pipes;
 
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D);
-	else if (DISPLAY_VER(i915) >= 11)
+	else if (DISPLAY_VER(display) >= 11)
 		pipes = BIT(PIPE_B) | BIT(PIPE_C);
 	else
 		pipes = 0;
 
-	return pipes & DISPLAY_RUNTIME_INFO(i915)->pipe_mask;
+	return pipes & DISPLAY_RUNTIME_INFO(display)->pipe_mask;
 }
 
 void intel_joiner_enabled_pipes(struct intel_display *display,
@@ -96,7 +96,7 @@ void intel_joiner_enabled_pipes(struct intel_display *display,
 	*secondary_pipes = 0;
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
-					 intel_joiner_supported_pipes(i915)) {
+					 intel_joiner_supported_pipes(display)) {
 		intel_dss_get_compressed_joiner_pipes(crtc,
 						      primary_pipes,
 						      secondary_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.h b/drivers/gpu/drm/i915/display/intel_joiner.h
index 49cb2d78f4c8..698f8e55f8ea 100644
--- a/drivers/gpu/drm/i915/display/intel_joiner.h
+++ b/drivers/gpu/drm/i915/display/intel_joiner.h
@@ -10,7 +10,6 @@
 
 enum pipe;
 struct drm_display_mode;
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc_state;
 struct intel_display;
@@ -21,7 +20,7 @@ void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
 				 struct drm_display_mode *mode);
 void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state);
 void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state);
-u8 intel_joiner_supported_pipes(struct drm_i915_private *i915);
+u8 intel_joiner_supported_pipes(struct intel_display *display);
 void intel_joiner_enabled_pipes(struct intel_display *display,
 				u8 *primary_pipes, u8 *secondary_pipes);
 enum pipe intel_joiner_find_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes);
-- 
2.45.2

