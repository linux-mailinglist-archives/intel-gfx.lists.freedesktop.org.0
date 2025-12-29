Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 206F1CE69D8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Dec 2025 12:55:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A482210E413;
	Mon, 29 Dec 2025 11:55:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G1VXxup2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC1110E413;
 Mon, 29 Dec 2025 11:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767009299; x=1798545299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bx+sneStMkTnCa12vmg4cO3y9wS9D/Ga+GpIAWy5mLE=;
 b=G1VXxup2wxf9l3jUzVu21x7MMcVVE2OL5e8iFppuXzY7Q+vQ+ChMFpfi
 e/GI/fbxr5rTcq2+C8za8mnIq4AdT85B+ZD5iJqjnUG4Vkuib2yOYAMW+
 QsTQy6YzhfwLlNi4RF5n6LqywMxkHGmQaJkPVzpPeH8NjM/y3d7UCIHvX
 MPTz2u63ehhdYjBmtY3u7LqR1cexuEH/6OlxopNcX2ei0c9aOOCR3iFhp
 k/6uqPKsl9/4BbevhtavpBMzcf2U/Z0lfHcvNeAcAYjtubGy0NBim8jz6
 9k9WdqrX6v6TGi8A06GUjabRIj0nrxs9SJkjdRbQrYYhB66/sARUxAUXe g==;
X-CSE-ConnectionGUID: o/xpjxxXS32+YnSIFBYnkQ==
X-CSE-MsgGUID: ECyG3v1WRamGAzzqeWwfMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11655"; a="68593150"
X-IronPort-AV: E=Sophos;i="6.21,185,1763452800"; d="scan'208";a="68593150"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 03:54:59 -0800
X-CSE-ConnectionGUID: 7zKrPqycRJydfuQbWcskZA==
X-CSE-MsgGUID: koyA/+YvTkCJHx3sTaCyVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,185,1763452800"; d="scan'208";a="201176738"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.147])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 03:54:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 1/3] drm/i915: drop i915 param from i915_fence{,
 _context}_timeout()
Date: Mon, 29 Dec 2025 13:54:43 +0200
Message-ID: <dce86cb031d523a95a96ed2bf9c93bb28e6b20ab.1767009044.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767009044.git.jani.nikula@intel.com>
References: <cover.1767009044.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

The i915_fence_context_timeout() and i915_fence_timeout() functions both
have the struct drm_i915_private parameter, which is unused. It's likely
in preparation for something that just didn't end up happening.

Remove them, dropping the last struct drm_i915_private usage for xe
display build.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c         |  4 +---
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c          |  2 +-
 drivers/gpu/drm/i915/i915_config.c                   |  3 +--
 drivers/gpu/drm/i915/i915_config.h                   | 10 +++-------
 drivers/gpu/drm/i915/i915_request.c                  |  3 +--
 drivers/gpu/drm/xe/compat-i915-headers/i915_config.h |  5 +----
 6 files changed, 8 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cd482e5ff929..0819236a797c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -50,7 +50,6 @@
 #include "g4x_hdmi.h"
 #include "hsw_ips.h"
 #include "i915_config.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "i9xx_plane.h"
 #include "i9xx_plane_regs.h"
@@ -7154,7 +7153,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 
 static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
 {
-	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
 	struct drm_plane *plane;
 	struct drm_plane_state *new_plane_state;
 	long ret;
@@ -7163,7 +7161,7 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
 	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
 		if (new_plane_state->fence) {
 			ret = dma_fence_wait_timeout(new_plane_state->fence, false,
-						     i915_fence_timeout(i915));
+						     i915_fence_timeout());
 			if (ret <= 0)
 				break;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
index c4854c5b4e0f..c1deea20c28a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
@@ -113,7 +113,7 @@ bool i915_gem_clflush_object(struct drm_i915_gem_object *obj,
 	if (clflush) {
 		i915_sw_fence_await_reservation(&clflush->base.chain,
 						obj->base.resv, true,
-						i915_fence_timeout(i915),
+						i915_fence_timeout(),
 						I915_FENCE_GFP);
 		dma_resv_add_fence(obj->base.resv, &clflush->base.dma,
 				   DMA_RESV_USAGE_KERNEL);
diff --git a/drivers/gpu/drm/i915/i915_config.c b/drivers/gpu/drm/i915/i915_config.c
index 3cb615ffa96d..9e13b1be407c 100644
--- a/drivers/gpu/drm/i915/i915_config.c
+++ b/drivers/gpu/drm/i915/i915_config.c
@@ -8,8 +8,7 @@
 #include "i915_config.h"
 #include "i915_jiffies.h"
 
-unsigned long
-i915_fence_context_timeout(const struct drm_i915_private *i915, u64 context)
+unsigned long i915_fence_context_timeout(u64 context)
 {
 	if (CONFIG_DRM_I915_FENCE_TIMEOUT && context)
 		return msecs_to_jiffies_timeout(CONFIG_DRM_I915_FENCE_TIMEOUT);
diff --git a/drivers/gpu/drm/i915/i915_config.h b/drivers/gpu/drm/i915/i915_config.h
index 10e18b036489..f386328d9e95 100644
--- a/drivers/gpu/drm/i915/i915_config.h
+++ b/drivers/gpu/drm/i915/i915_config.h
@@ -9,15 +9,11 @@
 #include <linux/types.h>
 #include <linux/limits.h>
 
-struct drm_i915_private;
+unsigned long i915_fence_context_timeout(u64 context);
 
-unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
-					 u64 context);
-
-static inline unsigned long
-i915_fence_timeout(const struct drm_i915_private *i915)
+static inline unsigned long i915_fence_timeout(void)
 {
-	return i915_fence_context_timeout(i915, U64_MAX);
+	return i915_fence_context_timeout(U64_MAX);
 }
 
 #endif /* __I915_CONFIG_H__ */
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 4399941236cb..d2c7b1090df0 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1351,8 +1351,7 @@ __i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
 {
 	mark_external(rq);
 	return i915_sw_fence_await_dma_fence(&rq->submit, fence,
-					     i915_fence_context_timeout(rq->i915,
-									fence->context),
+					     i915_fence_context_timeout(fence->context),
 					     I915_FENCE_GFP);
 }
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h
index e835bea08d1b..d4522203e2dd 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h
@@ -8,10 +8,7 @@
 
 #include <linux/sched.h>
 
-struct drm_i915_private;
-
-static inline unsigned long
-i915_fence_timeout(const struct drm_i915_private *i915)
+static inline unsigned long i915_fence_timeout(void)
 {
 	return MAX_SCHEDULE_TIMEOUT;
 }
-- 
2.47.3

