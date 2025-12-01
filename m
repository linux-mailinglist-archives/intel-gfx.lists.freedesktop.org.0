Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7FBC9883A
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 18:27:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC0910E436;
	Mon,  1 Dec 2025 17:27:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LlzXHOa3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77C0510E435;
 Mon,  1 Dec 2025 17:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764610057; x=1796146057;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l65bSD/Tu6NmXBTmzdd84o0lODnaxUPdqCc8lFY4uHI=;
 b=LlzXHOa3Qbm4BUMDZLHNlEayNIX0VC3oyT09lxrHD4XmI0iafnuMHrpB
 /+4CZ9F1tdWH0sjfbMaFnkdWiIkvJoAV20U/UyB/GqrhOwsSt65weSYPn
 sjKpQ45i17oTOdiK+XlS8F+7e2a0RsHJxBOlyr0MuyOh8ofz7Zc8Bycza
 uhyI7bd1xFHfPwD6FPZBgJdj8+Ks7Xq4OOLdFVWw6rsmEBlkaLhi3yHur
 jaWBEEYiw+9rbY/qK1iESKap8dros5oS2wfxBQEK/aolawB77zOY83TsJ
 jknUmkPf8n7dWoXCoOj9VSNgSukExT062yOflQ1VYWcpQtYQIufHImSt0 w==;
X-CSE-ConnectionGUID: FR+1SpAsSyuZQD1gwKPNEg==
X-CSE-MsgGUID: H8RUsMt2QmqxR/7eU0+DIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="70172122"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="70172122"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 09:27:37 -0800
X-CSE-ConnectionGUID: fk7NOiuJRTesf/buSGzuLw==
X-CSE-MsgGUID: 7zvw3y2jTuumSaAgF08h+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="194334132"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.132])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 09:27:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/{i915,
 xe}/display: make pxp key check part of bo interface
Date: Mon,  1 Dec 2025 19:27:30 +0200
Message-ID: <20251201172730.2154668-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Add intel_bo_key_check() next to intel_bo_is_protected() where it feels
like it belongs, and drop the extra pxp compat header.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bo.c       |  6 ++++
 drivers/gpu/drm/i915/display/intel_bo.h       |  1 +
 .../drm/i915/display/skl_universal_plane.c    |  3 +-
 .../xe/compat-i915-headers/pxp/intel_pxp.h    | 29 -------------------
 drivers/gpu/drm/xe/display/intel_bo.c         |  8 ++++-
 5 files changed, 15 insertions(+), 32 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h

diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index f3687eb63467..8f372b33d48b 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -6,6 +6,7 @@
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_object.h"
 #include "gem/i915_gem_object_frontbuffer.h"
+#include "pxp/intel_pxp.h"
 #include "i915_debugfs.h"
 #include "intel_bo.h"
 
@@ -29,6 +30,11 @@ bool intel_bo_is_protected(struct drm_gem_object *obj)
 	return i915_gem_object_is_protected(to_intel_bo(obj));
 }
 
+int intel_bo_key_check(struct drm_gem_object *obj)
+{
+	return intel_pxp_key_check(obj, false);
+}
+
 int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
 {
 	return i915_gem_fb_mmap(to_intel_bo(obj), vma);
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index fc05f680dc76..516a3836a6bc 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -16,6 +16,7 @@ bool intel_bo_is_tiled(struct drm_gem_object *obj);
 bool intel_bo_is_userptr(struct drm_gem_object *obj);
 bool intel_bo_is_shmem(struct drm_gem_object *obj);
 bool intel_bo_is_protected(struct drm_gem_object *obj);
+int intel_bo_key_check(struct drm_gem_object *obj);
 int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma);
 int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size);
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 6880f9d89a4e..d38582af6b39 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -9,7 +9,6 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_print.h>
 
-#include "pxp/intel_pxp.h"
 #include "intel_bo.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
@@ -2290,7 +2289,7 @@ static void check_protection(struct intel_plane_state *plane_state)
 	if (DISPLAY_VER(display) < 11)
 		return;
 
-	plane_state->decrypt = intel_pxp_key_check(obj, false) == 0;
+	plane_state->decrypt = intel_bo_key_check(obj) == 0;
 	plane_state->force_black = intel_bo_is_protected(obj) &&
 		!plane_state->decrypt;
 }
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h b/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
deleted file mode 100644
index 97fd0ddf0b3a..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
+++ /dev/null
@@ -1,29 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __INTEL_PXP_H__
-#define __INTEL_PXP_H__
-
-#include <linux/errno.h>
-#include <linux/types.h>
-
-#include "xe_pxp.h"
-
-struct drm_gem_object;
-
-static inline int intel_pxp_key_check(struct drm_gem_object *obj, bool assign)
-{
-	/*
-	 * The assign variable is used in i915 to assign the key to the BO at
-	 * first submission time. In Xe the key is instead assigned at BO
-	 * creation time, so the assign variable must always be false.
-	 */
-	if (assign)
-		return -EINVAL;
-
-	return xe_pxp_obj_key_check(obj);
-}
-
-#endif
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
index bad2243b9114..e8049a255d21 100644
--- a/drivers/gpu/drm/xe/display/intel_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_bo.c
@@ -3,9 +3,10 @@
 
 #include <drm/drm_gem.h>
 
-#include "xe_bo.h"
 #include "intel_bo.h"
 #include "intel_frontbuffer.h"
+#include "xe_bo.h"
+#include "xe_pxp.h"
 
 bool intel_bo_is_tiled(struct drm_gem_object *obj)
 {
@@ -29,6 +30,11 @@ bool intel_bo_is_protected(struct drm_gem_object *obj)
 	return xe_bo_is_protected(gem_to_xe_bo(obj));
 }
 
+int intel_bo_key_check(struct drm_gem_object *obj)
+{
+	return xe_pxp_obj_key_check(obj);
+}
+
 int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
 {
 	return drm_gem_prime_mmap(obj, vma);
-- 
2.47.3

