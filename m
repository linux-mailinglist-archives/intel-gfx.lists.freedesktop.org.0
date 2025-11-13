Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53548C58820
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 16:53:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE8410E872;
	Thu, 13 Nov 2025 15:53:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QFzxWkSK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4597D10E86E;
 Thu, 13 Nov 2025 15:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763049221; x=1794585221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ePMDDV/UcEF+aYyrhHE/LGjhKltznZJVITRU9GAn8Fc=;
 b=QFzxWkSKf8uET7gDGp8w1GWK5NqC9pIH6LhSX0CYtpdGRhTvAwDf7AQe
 dgzzUs7o8ViDXlloJK/c7t2rAK0Yn5w35GxShUqGbxvlk7y6pvb09/TRJ
 ogCn59SrAu6G0Of5lLN3CgNKHTYySUUO/4EqY0hR0t+k50RbjpM7KJlum
 o+InUxXLn4/FdwtiLfG0xCyt1Al21nC7jLgaHh8RH56btvPGf2izZnS7N
 vea8xhrqWhUhmLw3fou075LH6cBw5F9HVVo024/7pP0DkfptnIFXbV7BY
 QYLOJfULajW5Qv6qZSjgI/jeQ3I3me5nD2CsWYM5H27ohkM0goYoZoH9A g==;
X-CSE-ConnectionGUID: Acsc+7sISGqLBQGWGPfD5A==
X-CSE-MsgGUID: uocIfRcSQ8iFEkS0TC0fMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="76592768"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="76592768"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:53:40 -0800
X-CSE-ConnectionGUID: wGK8JpAqTY+ehdpuoS43dw==
X-CSE-MsgGUID: CbHDPh1XR4W4WuUKl4Y7MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="189175584"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:53:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2] drm/i915/display: stop using the configurable fence timeout
Date: Thu, 13 Nov 2025 17:53:32 +0200
Message-ID: <20251113155332.789554-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251112155612.8320-1-jani.nikula@intel.com>
References: <20251112155612.8320-1-jani.nikula@intel.com>
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
MAX_SCHEDULE_TIMEOUT. Unify the behaviour by switching to
dma_fence_wait() which defaults to MAX_SCHEDULE_TIMEOUT.

As dma_fence_wait() returns 0 when the fence was signaled, update the
return value check.

v2: Use dma_fence_wait(), fix return value check (Maarten)

Reviewed-by: Maarten Lankhorst <dev@lankhorst.se>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

I am not sure about all the implications here. I'm just wondering if we
need to go through all the trouble of adding an interface to query this
from the parent driver.
---
 drivers/gpu/drm/i915/display/intel_display.c  |  7 ++-----
 .../drm/xe/compat-i915-headers/i915_config.h  | 19 -------------------
 2 files changed, 2 insertions(+), 24 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_config.h

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 069967114bd9..18d2f326d7f4 100644
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
@@ -7160,7 +7159,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 
 static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
 {
-	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
 	struct drm_plane *plane;
 	struct drm_plane_state *new_plane_state;
 	long ret;
@@ -7168,9 +7166,8 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
 
 	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
 		if (new_plane_state->fence) {
-			ret = dma_fence_wait_timeout(new_plane_state->fence, false,
-						     i915_fence_timeout(i915));
-			if (ret <= 0)
+			ret = dma_fence_wait(new_plane_state->fence, false);
+			if (ret < 0)
 				break;
 
 			dma_fence_put(new_plane_state->fence);
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

