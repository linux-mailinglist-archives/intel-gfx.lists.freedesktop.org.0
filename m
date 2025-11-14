Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E601C5C90B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 11:27:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CE310EA2B;
	Fri, 14 Nov 2025 10:27:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CvFmFW35";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE4FE10EA32;
 Fri, 14 Nov 2025 10:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763116053; x=1794652053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RkysbqnQ5dQ3GRwBDBVwZz9STnFgyRjQ2YUzhWvW+5A=;
 b=CvFmFW35MLnUg37JaIXHdfZHEMaL1oEJ879HFxHVyVKF64EdRV1DQ5if
 GtD79YA7HUV7u9x4KtthTtSDjeBCna6zUXP03dj+h6JRllIP2+a3iE0F0
 2CRPA+V36gB5m8x67jbFMLT0l8uEplAb9hh8IlgMTazdqYeinxsFB4qJ4
 pHI5BsQ6NHnf9YiW6qEtlNcne/Yo3j0Y7gJMV5bOLV+lZDhW4QZ/scIkV
 p9wtPV7iI3uoAC620duSSGlkM8T5LHy+uafrw7F19sR68nHO/yq0qj8Pa
 4iPWmX8nFvytkAWQME981ShvRdrWJvAY5h5+Sa2hwpFvTiSx6/gFVEmhq g==;
X-CSE-ConnectionGUID: kCTrRWQgSZekHHQ8KqcU9w==
X-CSE-MsgGUID: MhXc8836TryqWsQiZYuu1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64415901"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="64415901"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:27:33 -0800
X-CSE-ConnectionGUID: 192VMz8zQ9+7PXmHVxaI9w==
X-CSE-MsgGUID: dd6OO+xaRlmlE11AYw0nJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="193859729"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:27:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 08/10] drm/i915/rps: postpone i915 fence check to boost
Date: Fri, 14 Nov 2025 12:26:47 +0200
Message-ID: <cea4ca198ccb5272df49c93bbfb73394912e1219.1763115899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763115899.git.jani.nikula@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
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

Make the RPS boost code independent of i915 request code by moving the
dma_fence_is_i915() check to the RPS boost call.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

I'm not actually sure what the non-i915 fences would be here, and what
kind of overhead they would cause.
---
 drivers/gpu/drm/i915/display/intel_display_rps.c | 4 ----
 drivers/gpu/drm/i915/gt/intel_rps.c              | 7 ++++++-
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index e70c4f0eab80..86e757423c0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -9,7 +9,6 @@
 #include <drm/drm_vblank.h>
 
 #include "i915_reg.h"
-#include "i915_request.h"
 #include "intel_display_core.h"
 #include "intel_display_irq.h"
 #include "intel_display_rps.h"
@@ -49,9 +48,6 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
 	if (!intel_parent_rps_available(display))
 		return;
 
-	if (!dma_fence_is_i915(fence))
-		return;
-
 	if (DISPLAY_VER(display) < 6)
 		return;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 61d746bda462..05b21de6c24b 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2917,7 +2917,12 @@ EXPORT_SYMBOL_GPL(i915_gpu_turbo_disable);
 
 static void boost(struct dma_fence *fence)
 {
-	struct i915_request *rq = to_request(fence);
+	struct i915_request *rq;
+
+	if (!dma_fence_is_i915(fence))
+		return;
+
+	rq = to_request(fence);
 
 	/*
 	 * If we missed the vblank, but the request is already running it
-- 
2.47.3

