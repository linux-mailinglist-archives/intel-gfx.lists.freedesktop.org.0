Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAE9C223E4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 21:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 411F810EA1C;
	Thu, 30 Oct 2025 20:28:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qn8VrcDU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A134510EA20;
 Thu, 30 Oct 2025 20:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761856137; x=1793392137;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LOeYVkXybH2o67yL6WZYl5EKqP0BO+fbxBwudAw/yFo=;
 b=Qn8VrcDU9d7G6Fsz/uUwSDNQ/5CNQNZ6dgHeGqecTJZ46+8vdUK1lpXj
 EsXKvEapVqHw6EcK+gS/KymNKMPaDf3mxhbp/JiHVzch4imPE2G9T70bb
 wogj+7aMZCBrXcEVu3qncO1WiKJubEpJRaEfXLjtGsLv3Zx87Ujt3s3oY
 iID1U9G5kIgubXz4SajlCHtGix/6msLnykNe2DomqMzlNinnwHJcX/bYk
 1WJIj1jFYU6hhTHyeG1lCIheuPdTJdp6A5HSR0gug9/1jzcIXGuRLj7Fs
 QT3A8ECqM4RZUgB5XlEGCvAi/wAlghpyd1UyZzCeUBKr8I1E+p6qxjGNY w==;
X-CSE-ConnectionGUID: Nn40wk0ZR0yZusceHHQ2PQ==
X-CSE-MsgGUID: 1OMfmAgtSEOR0YtWkPiLFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="63032454"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="63032454"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 13:28:57 -0700
X-CSE-ConnectionGUID: u6VoVuFaTj+haPzoB3mZNQ==
X-CSE-MsgGUID: VhDhhQc+Rmemc5/hiae6Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="216706823"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 13:28:56 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 5/6] drm/i915/display: Use display parent interface for
 i915 runtime pm
Date: Thu, 30 Oct 2025 22:28:35 +0200
Message-ID: <20251030202836.1815680-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030202836.1815680-1-jouni.hogander@intel.com>
References: <20251030202836.1815680-1-jouni.hogander@intel.com>
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

v3:
  - remove useless include
v2:
  - use <> when including drm/intel/display_parent_interface.h
  - drop checks for validity of rpm function pointers

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_rpm.c  | 33 ++++++++-----------
 1 file changed, 13 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_rpm.c b/drivers/gpu/drm/i915/display/intel_display_rpm.c
index 56c4024201c16..0a331f89b4db5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rpm.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rpm.c
@@ -1,69 +1,62 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2025 Intel Corporation */
 
-#include "i915_drv.h"
+#include <drm/intel/display_parent_interface.h>
+
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

