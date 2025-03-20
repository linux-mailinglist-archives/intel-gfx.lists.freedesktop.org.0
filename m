Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1FAA6A95B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 16:04:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23F3910E647;
	Thu, 20 Mar 2025 15:04:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3l0sam/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57F0010E643;
 Thu, 20 Mar 2025 15:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742483070; x=1774019070;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z1CEB6DOR+sf2p5WbydoEPTgbVmoBxfI2bA0Ls5S1tQ=;
 b=k3l0sam/lntGBB0kgdwk1NNwxOSqlbmQ9Qxn3KrrvTGz038pXO77NFuA
 edF3YZAr+kf23GSDNENql60hcTRSpDcUecIVJIxHkovauR7yDlhSxsRj8
 r36LMfZzZNmcnk9aODvjN05W1fXow/uHURuc7eOPKUFBjvjQ4CUd+whSy
 p9DCUVSJTs5nswmr0ztDRBP83uR1jCXn9XhzSji0VOOseGgMD5elxjB2B
 YzDCnu8UP9e2wsDsnPJrkQaxxWskdGYf1UIYNG+BgwKYDP8O6aHpjo3UV
 e6elZ0VhJwrSyqTXhx/4hUgdSACCThw4A4e1NTjEAHayy6lpNsNxS00uG w==;
X-CSE-ConnectionGUID: 0loHBDlYQnGPDhacAKdrxQ==
X-CSE-MsgGUID: /3mbGNbLTbKkj6QLga/CAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="43852669"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="43852669"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 08:04:30 -0700
X-CSE-ConnectionGUID: Vgc7P8B4T3KK/vznwOw47A==
X-CSE-MsgGUID: ZeRJ8HamS4yA2cw57diTig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,262,1736841600"; d="scan'208";a="123578343"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 08:04:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 6/6] drm/xe/compat: remove intel_runtime_pm.h
Date: Thu, 20 Mar 2025 17:04:00 +0200
Message-Id: <037ed1f38c96715c76514e9eb7069b896ce06ba1.1742483007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742483007.git.jani.nikula@intel.com>
References: <cover.1742483007.git.jani.nikula@intel.com>
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

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
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

