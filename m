Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42553A5C01D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 13:06:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB3810E587;
	Tue, 11 Mar 2025 12:06:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K6Uv48t0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A753810E587;
 Tue, 11 Mar 2025 12:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741694777; x=1773230777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Lc1W4BfcjEo1OeTRfe3amTD/6ZN6ykHHBsUcNYDUU+8=;
 b=K6Uv48t0oR0wBmwmUYW/PgXPTnHcdy8MFauYcSu/dV6W483LPjqLf9ii
 wHQfFyjwpZ93uaSUcXKiFXoUcW49ihf+oqObdalS3GDor+D2dz6qgG+dO
 GGESq8W8x+YGWqw8ivhLFbFEWQVplzL6PQddO2ebfphGkHlF7zr9sufgM
 urdvvPnUXyyc/KtbUErrq3UXBaCn2HrRWDnbdEKGZ3HrnM0HMJOHLF8Nd
 UZFQiC3MDq7521c8+FAScTeUsD4290gUliTrHJMurPiUHM3wgF0qT7lbF
 wsEThWePWgefp9XmVM/ida07j76tdRK/fY7wFk+NYFu4QootDFnINrFrT Q==;
X-CSE-ConnectionGUID: BZbeYQraRgelzFhe2i7aqQ==
X-CSE-MsgGUID: rFd2Ret8T6aX4zl1ShZLXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="46638483"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="46638483"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 05:06:17 -0700
X-CSE-ConnectionGUID: mhut5/FUQdaObInkoIqZLw==
X-CSE-MsgGUID: gOktkCoZRtqSURN04x9HJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125341184"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 05:06:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 6/6] drm/xe/compat: remove intel_runtime_pm.h
Date: Tue, 11 Mar 2025 14:05:40 +0200
Message-Id: <d86c76bd309c30f287d5baf36513796f39bdf0e5.1741694400.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741694400.git.jani.nikula@intel.com>
References: <cover.1741694400.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Now that all display code has been converted to display specific runtime
PM interfaces, there's no need for the compat header anymore.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 -
 .../xe/compat-i915-headers/intel_runtime_pm.h | 76 -------------------
 2 files changed, 77 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index dfec5108d2c3..f89bd5e3520d 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -13,7 +13,6 @@
 #include <drm/drm_drv.h>
 
 #include "i915_utils.h"
-#include "intel_runtime_pm.h"
 #include "xe_device.h" /* for xe_device_has_flat_ccs() */
 #include "xe_device_types.h"
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
deleted file mode 100644
index 274042bff1be..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
+++ /dev/null
@@ -1,76 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __INTEL_RUNTIME_PM_H__
-#define __INTEL_RUNTIME_PM_H__
-
-#include "intel_wakeref.h"
-#include "xe_device_types.h"
-#include "xe_pm.h"
-
-#define intel_runtime_pm xe_runtime_pm
-
-static inline void disable_rpm_wakeref_asserts(void *rpm)
-{
-}
-
-static inline void enable_rpm_wakeref_asserts(void *rpm)
-{
-}
-
-static inline bool
-intel_runtime_pm_suspended(struct xe_runtime_pm *pm)
-{
-	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
-
-	return pm_runtime_suspended(xe->drm.dev);
-}
-
-static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
-{
-	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
-
-	return xe_pm_runtime_resume_and_get(xe) ? INTEL_WAKEREF_DEF : NULL;
-}
-
-static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_pm *pm)
-{
-	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
-
-	return xe_pm_runtime_get_if_in_use(xe) ? INTEL_WAKEREF_DEF : NULL;
-}
-
-static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
-{
-	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
-
-	xe_pm_runtime_get_noresume(xe);
-
-	return INTEL_WAKEREF_DEF;
-}
-
-static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
-{
-	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
-
-	xe_pm_runtime_put(xe);
-}
-
-static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, intel_wakeref_t wakeref)
-{
-	if (wakeref)
-		intel_runtime_pm_put_unchecked(pm);
-}
-
-#define intel_runtime_pm_get_raw intel_runtime_pm_get
-#define intel_runtime_pm_put_raw intel_runtime_pm_put
-#define assert_rpm_wakelock_held(x) do { } while (0)
-#define assert_rpm_raw_wakeref_held(x) do { } while (0)
-
-#define with_intel_runtime_pm(rpm, wf) \
-	for ((wf) = intel_runtime_pm_get(rpm); (wf); \
-	     intel_runtime_pm_put((rpm), (wf)), (wf) = NULL)
-
-#endif
-- 
2.39.5

