Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1A7A4BE6F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 12:27:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9ED10E23B;
	Mon,  3 Mar 2025 11:27:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D11NYn2v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CEC110E23B;
 Mon,  3 Mar 2025 11:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741001272; x=1772537272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bm1d5AXogawxWijxQ7OLmGpqdVoTCsz4J3fHy7Em7Hk=;
 b=D11NYn2vEjTiuQawUBi06SyIH9XpmIDWoTrG4C3qI8x7fn0kDolJyegB
 YFuibO9S/28fbM+LM++qn2dsnn59fnJ3F1q2I4v3ZdArVHLRbv+ixUZVE
 d95gCe3vESIIrZGMrV1CFU1C1XVKjEzoPnHEk3kJNY2TfM//8sdpFIuwl
 dkIoXACMphZXxQfIlJxjdAZpLjdxmepE6iUZEmJhxV4LQHArhR5mvr6ym
 rnxEl03/4y2I3zAvkMy3AxrZetE7OnoOH7gUodnZnkEJJIWt9HzrVcmV+
 Dwo8PliB4Pc+rYdh2MCZs9IUUODUqbazrL384WNAg4S0E2pJk3kpobG4v w==;
X-CSE-ConnectionGUID: rEttZho/QJKfC/X8H9M6/A==
X-CSE-MsgGUID: jGElI61AQ8unraVQNVSi0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="45524677"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="45524677"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:52 -0800
X-CSE-ConnectionGUID: 27sxf3CySeu6yD6xefPqWQ==
X-CSE-MsgGUID: V9IzaHewS+6lhrEmXwcpDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148875964"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	matthew.d.roper@intel.com
Subject: [PATCH v3 7/8] drm/i915/reset: pass test only parameter to
 intel_display_reset_finish()
Date: Mon,  3 Mar 2025 13:27:09 +0200
Message-Id: <a36481db334fedcde50ae0e66c4d57825cae8cb7.1741001054.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741001054.git.jani.nikula@intel.com>
References: <cover.1741001054.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Deduplicate the gpu_reset_clobbers_display() part by passing the
information in from gt side.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_reset.c | 12 ++----------
 drivers/gpu/drm/i915/display/intel_display_reset.h |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c              |  2 +-
 3 files changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index c48d822db58e..d5ce0ac43377 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -14,14 +14,6 @@
 #include "intel_hotplug.h"
 #include "intel_pps.h"
 
-static bool gpu_reset_clobbers_display(struct intel_display *display)
-{
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	return (INTEL_INFO(i915)->gpu_reset_clobbers_display &&
-		intel_has_gpu_reset(to_gt(i915)));
-}
-
 bool intel_display_reset_test(struct intel_display *display)
 {
 	return display->params.force_reset_modeset_test;
@@ -83,7 +75,7 @@ bool intel_display_reset_prepare(struct intel_display *display)
 	return true;
 }
 
-void intel_display_reset_finish(struct intel_display *display)
+void intel_display_reset_finish(struct intel_display *display, bool test_only)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
@@ -98,7 +90,7 @@ void intel_display_reset_finish(struct intel_display *display)
 		goto unlock;
 
 	/* reset doesn't touch the display */
-	if (!gpu_reset_clobbers_display(display)) {
+	if (test_only) {
 		/* for testing only restore the display */
 		ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
 		if (ret) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
index 311b5af8ca0c..f518147199a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -12,6 +12,6 @@ struct intel_display;
 
 bool intel_display_reset_test(struct intel_display *display);
 bool intel_display_reset_prepare(struct intel_display *display);
-void intel_display_reset_finish(struct intel_display *display);
+void intel_display_reset_finish(struct intel_display *display, bool test_only);
 
 #endif /* __INTEL_RESET_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index d4f2829477b4..0f12752d0f24 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1434,7 +1434,7 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 		intel_gt_reset(gt, engine_mask, reason);
 
 		if (reset_display)
-			intel_display_reset_finish(display);
+			intel_display_reset_finish(display, !need_display_reset);
 	}
 
 	if (!test_bit(I915_WEDGED, &gt->reset.flags))
-- 
2.39.5

