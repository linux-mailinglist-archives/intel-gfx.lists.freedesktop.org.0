Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9E66E1F83
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:42:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50D6110ECAB;
	Fri, 14 Apr 2023 09:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1E3F10E16C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681465333; x=1713001333;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pvdLk5mAWutlT2YmM9iDGKUUa9RUqHeibfIj5F4TxHs=;
 b=Us33FSDarekaUxO8bPfZmE3OViMIRDVrF0iyEqJe2LaERMZLIvo/Lr7P
 2ofd6vLkR4Vq2OTYzjutanQuiVMnolkfFlqS177YgXwU03lUCSM480Xz6
 4KMUjJylu80WqhDJyEo8tUr/dLQTQTrpTyDuTScVfZNX1h4nzBrLawFk8
 hOqP9ZpGzWIMgHADCoHc0guhIx2jjTGc1BYAO6HrmQIr4gnQ7xY0z1Tvk
 nF/zxLSOSymwzmXFj/lbIGGFya55UcgEJKTfW+iVvOSAYJXRmZlZT9lA/
 sGYiekAy7v/p6TLQBV5Zui1V2JUARcCAa/Gvb2fpAhk740NenV4c5XXfc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="324054398"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="324054398"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="754397522"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="754397522"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Apr 2023 12:41:53 +0300
Message-Id: <a38f08e259221d71314ce6d764431147b0fba218.1681465222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681465222.git.jani.nikula@intel.com>
References: <cover.1681465222.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/10] drm/i915/display: remove
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This seems like an unnecessary wrapper layer. Removing it will be
helpful later.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++-------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0334565cec82..1efa40691a62 100644
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

