Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3B7C05590
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 11:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0533D10EA14;
	Fri, 24 Oct 2025 09:31:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dEjjaFK6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4482110EA14;
 Fri, 24 Oct 2025 09:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761298301; x=1792834301;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+7C8Hug1WO7PfRNZ9+Sra9gBNCtjz//EFecGfmKMQbA=;
 b=dEjjaFK6eXLw+N6qt0jbBoY9kgSpGwVYUXMwWr0btlMHSo0hYU7K58FN
 iGqvgAGpeNG6W8XvSL7Sgyx180gxbsc5g5d6uRvLfNKnp1YlgGpFvZ3eF
 /+fUrUtUbwr1l0Q7WLJ/NVAl7BtC/9va1+D6XrNEnfsdXJRoW5f0Bhy9O
 +MnV0CD5EmfzsHwYmD2T/R4TZ4V05350kUBMAZTUGXOdYip3+/JXWRlIZ
 BfNmSmYm9h5H4Rs7XcQsSvktLTH1xJ5ynXW1tFsxzR7w2blwdRtBADWWJ
 vuyoCkMJ9orme09StvwkM3MlnDpXopOjZOBY4bWTYZntZcodIsM5wRsgy g==;
X-CSE-ConnectionGUID: eGvbGmzaQWS4GM8JbRe0hw==
X-CSE-MsgGUID: Pm3wbvTnRZOadU3xdWKiuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66094781"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="66094781"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 02:31:41 -0700
X-CSE-ConnectionGUID: iajm8RTVQh2W2xxv8c47VA==
X-CSE-MsgGUID: Xj9ID9atQvO+S2vYq44G6g==
X-ExtLoop1: 1
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.40])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 02:31:40 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 5/6] drm/i915/display: Use display parent interface for
 i915 runtime pm
Date: Fri, 24 Oct 2025 12:31:12 +0300
Message-ID: <20251024093113.1119070-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251024093113.1119070-1-jouni.hogander@intel.com>
References: <20251024093113.1119070-1-jouni.hogander@intel.com>
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

Start using display parent interface for i915 runtime pm. Doing the same
for xe is done in coming changes.

v2:
  - use <> when including drm/intel/display_parent_interface.h
  - drop checks for validity of rpm function pointers

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_rpm.c  | 32 ++++++++-----------
 1 file changed, 13 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_rpm.c b/drivers/gpu/drm/i915/display/intel_display_rpm.c
index 56c4024201c16..3a6b86842b496 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rpm.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rpm.c
@@ -1,69 +1,63 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2025 Intel Corporation */
 
+#include <drm/intel/display_parent_interface.h>
+
 #include "i915_drv.h"
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
-#include "intel_runtime_pm.h"
-
-static struct intel_runtime_pm *display_to_rpm(struct intel_display *display)
-{
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	return &i915->runtime_pm;
-}
 
 struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *display)
 {
-	return intel_runtime_pm_get_raw(display_to_rpm(display));
+	return display->parent->rpm->get_raw(display->drm);
 }
 
 void intel_display_rpm_put_raw(struct intel_display *display, struct ref_tracker *wakeref)
 {
-	intel_runtime_pm_put_raw(display_to_rpm(display), wakeref);
+	display->parent->rpm->put_raw(display->drm, wakeref);
 }
 
 struct ref_tracker *intel_display_rpm_get(struct intel_display *display)
 {
-	return intel_runtime_pm_get(display_to_rpm(display));
+	return display->parent->rpm->get(display->drm);
 }
 
 struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display *display)
 {
-	return intel_runtime_pm_get_if_in_use(display_to_rpm(display));
+	return display->parent->rpm->get_if_in_use(display->drm);
 }
 
 struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display *display)
 {
-	return intel_runtime_pm_get_noresume(display_to_rpm(display));
+	return display->parent->rpm->get_noresume(display->drm);
 }
 
 void intel_display_rpm_put(struct intel_display *display, struct ref_tracker *wakeref)
 {
-	intel_runtime_pm_put(display_to_rpm(display), wakeref);
+	display->parent->rpm->put(display->drm, wakeref);
 }
 
 void intel_display_rpm_put_unchecked(struct intel_display *display)
 {
-	intel_runtime_pm_put_unchecked(display_to_rpm(display));
+	display->parent->rpm->put_unchecked(display->drm);
 }
 
 bool intel_display_rpm_suspended(struct intel_display *display)
 {
-	return intel_runtime_pm_suspended(display_to_rpm(display));
+	return display->parent->rpm->suspended(display->drm);
 }
 
 void assert_display_rpm_held(struct intel_display *display)
 {
-	assert_rpm_wakelock_held(display_to_rpm(display));
+	display->parent->rpm->assert_held(display->drm);
 }
 
 void intel_display_rpm_assert_block(struct intel_display *display)
 {
-	disable_rpm_wakeref_asserts(display_to_rpm(display));
+	display->parent->rpm->assert_block(display->drm);
 }
 
 void intel_display_rpm_assert_unblock(struct intel_display *display)
 {
-	enable_rpm_wakeref_asserts(display_to_rpm(display));
+	display->parent->rpm->assert_unblock(display->drm);
 }
-- 
2.43.0

