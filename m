Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 108446E0A7C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 11:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D9DE10EAA4;
	Thu, 13 Apr 2023 09:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA9D910EAA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 09:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681379265; x=1712915265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pU7wvfkYIpa/6V0MHw6NxMop7IYeL+b6Ie7hEBWk5aY=;
 b=dTdIq1cpKP9Hd6PCBukb6nC0a8qaf/1MkmVtpKDZtvr5oQMWMjhpcUqX
 xp/9scaT+ILOPuVXIBQPV05H3cTPzgK3mRxcEYwPGVgvCDXgQSYHXKJCK
 GTS0nyZliqnLg1Jvsp4AxXdrBDXpxWROKbabbhDbj42teeDKZXSS1Ikta
 ///NisoHeIOhJNjX4BXC/jvrtCurSG/2WumkbAhVYdILZPUZ/SlxrdZOn
 eKAaO0F/hngcQg1L1vJA+2pKM5R7J2efffu6YNvKdgq7TZap8IbIrN6YT
 12gKm4MmVKfDOZKju3ODX6hWUktUJM+s8DT0zRUNNQ3psAbQVj1T1o/yV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="371991297"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="371991297"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:47:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="639599134"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="639599134"
Received: from merkanx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.88])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:47:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 12:47:27 +0300
Message-Id: <881f50d86fd922fe39b367b688e58e7426bf377a.1681379167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/10] drm/i915/display: remove
 intel_display_commit_duplicated_state()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This seems like an unnecessary wrapper layer. Removing it will be
helpful later.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++-------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 27b47680573a..1c0149adcf49 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -701,20 +701,6 @@ intel_plane_fence_y_offset(const struct intel_plane_state *plane_state)
 	return y;
 }
 
-static int
-intel_display_commit_duplicated_state(struct intel_atomic_state *state,
-				      struct drm_modeset_acquire_ctx *ctx)
-{
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	int ret;
-
-	ret = drm_atomic_helper_commit_duplicated_state(&state->base, ctx);
-
-	drm_WARN_ON(&i915->drm, ret == -EDEADLK);
-
-	return ret;
-}
-
 static int
 __intel_display_resume(struct drm_i915_private *i915,
 		       struct drm_atomic_state *state,
@@ -722,7 +708,7 @@ __intel_display_resume(struct drm_i915_private *i915,
 {
 	struct drm_crtc_state *crtc_state;
 	struct drm_crtc *crtc;
-	int i;
+	int ret, i;
 
 	intel_modeset_setup_hw_state(i915, ctx);
 	intel_vga_redisable(i915);
@@ -748,7 +734,11 @@ __intel_display_resume(struct drm_i915_private *i915,
 	if (!HAS_GMCH(i915))
 		to_intel_atomic_state(state)->skip_intermediate_wm = true;
 
-	return intel_display_commit_duplicated_state(to_intel_atomic_state(state), ctx);
+	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
+
+	drm_WARN_ON(&i915->drm, ret == -EDEADLK);
+
+	return ret;
 }
 
 static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv)
@@ -839,10 +829,12 @@ void intel_display_finish_reset(struct drm_i915_private *i915)
 	/* reset doesn't touch the display */
 	if (!gpu_reset_clobbers_display(i915)) {
 		/* for testing only restore the display */
-		ret = intel_display_commit_duplicated_state(to_intel_atomic_state(state), ctx);
-		if (ret)
+		ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
+		if (ret) {
+			drm_WARN_ON(&i915->drm, ret == -EDEADLK);
 			drm_err(&i915->drm,
 				"Restoring old state failed with %i\n", ret);
+		}
 	} else {
 		/*
 		 * The display has been reset as well,
-- 
2.39.2

