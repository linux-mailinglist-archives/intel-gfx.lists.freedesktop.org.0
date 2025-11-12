Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF461C53368
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 16:56:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50CC610E773;
	Wed, 12 Nov 2025 15:56:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L8o5UC9T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70D710E770;
 Wed, 12 Nov 2025 15:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762962978; x=1794498978;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4WvT4mRs5IHfPzPF5vtmCzfWUZUmVIu3MIks61qLIxE=;
 b=L8o5UC9T+YnPGR94WMYl9NIEYW0Xm/QLPjHTe1+AEttjESMyjTuUfWcq
 yml9tTWe7Kwvf8jqaJttGtAj+Q5NuhQ4JxbqAl5cGO0GxM7yLZRBtao1w
 ED40IBZiisRDxqGvlRfP9bAWj4Od9eQWDL83d88PlY+F+dW55YcEwukhg
 E4YXU/6vie1fXbndi/4wcTDcwaX3LtD4J5z4Kx/6E4A0wItG43eUhyEa5
 gFBxpp3Dh1lubAxJWtRUkB5l2XzHic/Mt2dLJtWnaJVZvY2YmUrOe4XSo
 x3/rAxawDzoK0rlmDHfR7cjpMfmNmV0zDj34ahdrol3Wkpm8f14vdROEX g==;
X-CSE-ConnectionGUID: mVhJ/TUlR2q4GMEL8Hcosg==
X-CSE-MsgGUID: mYD+x24FRhiR+uuddYkG8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="65123744"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="65123744"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 07:56:18 -0800
X-CSE-ConnectionGUID: TXaIXE5zQNmAb7ZRoDC1qQ==
X-CSE-MsgGUID: I9wC842sTz2UQaKIPEL2Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="189988443"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 07:56:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Maarten Lankhorst <dev@lankhorst.se>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915/display: stop using the configurable fence timeout
Date: Wed, 12 Nov 2025 17:56:12 +0200
Message-ID: <20251112155612.8320-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

i915 has the Kconfig option DRM_I915_FENCE_TIMEOUT, defaulting to 10
seconds. xe doesn't use it, instead defaulting to
MAX_SCHEDULE_TIMEOUT. Do the same for i915.

Cc: Maarten Lankhorst <dev@lankhorst.se>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

I am not sure about all the implications here. I'm just wondering if we
need to go through all the trouble of adding an interface to query this
from the parent driver.
---
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +---
 .../drm/xe/compat-i915-headers/i915_config.h  | 19 -------------------
 2 files changed, 1 insertion(+), 22 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_config.h

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6bca186608ce..cc502dfe8aff 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -49,7 +49,6 @@
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
 #include "hsw_ips.h"
-#include "i915_config.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i9xx_plane.h"
@@ -7150,7 +7149,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 
 static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
 {
-	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
 	struct drm_plane *plane;
 	struct drm_plane_state *new_plane_state;
 	long ret;
@@ -7159,7 +7157,7 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
 	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
 		if (new_plane_state->fence) {
 			ret = dma_fence_wait_timeout(new_plane_state->fence, false,
-						     i915_fence_timeout(i915));
+						     MAX_SCHEDULE_TIMEOUT);
 			if (ret <= 0)
 				break;
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h
deleted file mode 100644
index e835bea08d1b..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h
+++ /dev/null
@@ -1,19 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __I915_CONFIG_H__
-#define __I915_CONFIG_H__
-
-#include <linux/sched.h>
-
-struct drm_i915_private;
-
-static inline unsigned long
-i915_fence_timeout(const struct drm_i915_private *i915)
-{
-	return MAX_SCHEDULE_TIMEOUT;
-}
-
-#endif /* __I915_CONFIG_H__ */
-- 
2.47.3

