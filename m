Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A141BFB01E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 10:56:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82AA210E715;
	Wed, 22 Oct 2025 08:56:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y1Bwcwkl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E758C10E711;
 Wed, 22 Oct 2025 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761123386; x=1792659386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8/J9rmhRamgtEpmMm88vR3TqkweJQTQCZn9alDY0Yvo=;
 b=Y1BwcwkleCkRrCusilyIztXvt39azW+p0CbL6atQdDwgxmuxp26EDrM0
 P7EmcbGbFZ1Hvis5IbLWQ9HgRG6FMCqyvNEg6ymT9HwhlL+GUVrrziFrE
 ztgsmfBUf6A3z0O+IyTwPbRW3Q8Qo/4gxCyowOkD80c2YExgHym2p1ToA
 A8SZ60Y30rbnkd/nUP3yUEA6B9PU9dalHIYuoETHvEjPjNrH7+4tH/13L
 iM/L5hxsmEI/5UHzzqj2tt4Xy8a3z1+Ydh0NBgZSsXkbX/spF3TyB2AJy
 i7I/s1UY+KeNNUfbMT59ekINIU8GVIXyxqMjXltsYB45888gMy1444E+u w==;
X-CSE-ConnectionGUID: JPv40ceeRIi0HbXmtg2otg==
X-CSE-MsgGUID: CNqwyOUsQgaHwE1tp7jonQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62473571"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62473571"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:25 -0700
X-CSE-ConnectionGUID: smn4c3HRRLG5dHSn5CVgEQ==
X-CSE-MsgGUID: 7MvMSuIoTvSgORiV3HDqHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214461306"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.244.2])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 5/6] drm/i915/display: Use display parent interface for i915
 runtime pm
Date: Wed, 22 Oct 2025 11:55:47 +0300
Message-ID: <20251022085548.876150-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251022085548.876150-1-jouni.hogander@intel.com>
References: <20251022085548.876150-1-jouni.hogander@intel.com>
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

Start using  display parent interface for i915 runtime pm. Doing the same
for xe is done in coming changes.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_rpm.c  | 43 +++++++++++--------
 1 file changed, 24 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_rpm.c b/drivers/gpu/drm/i915/display/intel_display_rpm.c
index 56c4024201c16..622646814e0bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rpm.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rpm.c
@@ -4,66 +4,71 @@
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
+#include "drm/intel/display_parent_interface.h"
 
 struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *display)
 {
-	return intel_runtime_pm_get_raw(display_to_rpm(display));
+	return display->parent->rpm && display->parent->rpm->get_raw ?
+		display->parent->rpm->get_raw(display->drm) : NULL;
 }
 
 void intel_display_rpm_put_raw(struct intel_display *display, struct ref_tracker *wakeref)
 {
-	intel_runtime_pm_put_raw(display_to_rpm(display), wakeref);
+	if (display->parent->rpm && display->parent->rpm->put_raw)
+		display->parent->rpm->put_raw(display->drm, wakeref);
 }
 
 struct ref_tracker *intel_display_rpm_get(struct intel_display *display)
 {
-	return intel_runtime_pm_get(display_to_rpm(display));
+	return display->parent->rpm && display->parent->rpm->get ?
+		display->parent->rpm->get(display->drm) : NULL;
+
 }
 
 struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display *display)
 {
-	return intel_runtime_pm_get_if_in_use(display_to_rpm(display));
+	return display->parent->rpm && display->parent->rpm->get_if_in_use ?
+		display->parent->rpm->get_if_in_use(display->drm) : NULL;
 }
 
 struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display *display)
 {
-	return intel_runtime_pm_get_noresume(display_to_rpm(display));
+	return display->parent->rpm && display->parent->rpm->get_noresume ?
+		display->parent->rpm->get_noresume(display->drm) : NULL;
 }
 
 void intel_display_rpm_put(struct intel_display *display, struct ref_tracker *wakeref)
 {
-	intel_runtime_pm_put(display_to_rpm(display), wakeref);
+	if (display->parent->rpm && display->parent->rpm->put)
+		display->parent->rpm->put(display->drm, wakeref);
 }
 
 void intel_display_rpm_put_unchecked(struct intel_display *display)
 {
-	intel_runtime_pm_put_unchecked(display_to_rpm(display));
+	if (display->parent->rpm && display->parent->rpm->put_unchecked)
+		display->parent->rpm->put_unchecked(display->drm);
 }
 
 bool intel_display_rpm_suspended(struct intel_display *display)
 {
-	return intel_runtime_pm_suspended(display_to_rpm(display));
+	return display->parent->rpm && display->parent->rpm->suspended ?
+		display->parent->rpm->suspended(display->drm) : false;
 }
 
 void assert_display_rpm_held(struct intel_display *display)
 {
-	assert_rpm_wakelock_held(display_to_rpm(display));
+	if (display->parent->rpm && display->parent->rpm->assert_held)
+		display->parent->rpm->assert_held(display->drm);
 }
 
 void intel_display_rpm_assert_block(struct intel_display *display)
 {
-	disable_rpm_wakeref_asserts(display_to_rpm(display));
+	if (display->parent->rpm && display->parent->rpm->assert_block)
+		display->parent->rpm->assert_block(display->drm);
 }
 
 void intel_display_rpm_assert_unblock(struct intel_display *display)
 {
-	enable_rpm_wakeref_asserts(display_to_rpm(display));
+	if (display->parent->rpm && display->parent->rpm->assert_block)
+		display->parent->rpm->assert_unblock(display->drm);
 }
-- 
2.43.0

