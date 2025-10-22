Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96290BFB01B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 10:56:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E7B10E711;
	Wed, 22 Oct 2025 08:56:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X/EKxyx6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA3410E712;
 Wed, 22 Oct 2025 08:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761123387; x=1792659387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dx+cPsahkA34/flx8f8JaiPKyKM8cEgn8nOz33lWs6M=;
 b=X/EKxyx6oDizil93IJv8Edsn6BKj83mXTMi4yg0KObZ26z8tE/kkZ39N
 YFVXSzdIgDDyMC4DOHN5ivug8aCo/peNMBvyqrnYGXNcbKkuNx3uQ/Vh6
 zd+Bf7BhrBHFB0xZ+B+kb1Ts+tsXOjx2hjN9DQ7/EODvAQbnYaFwHd1+p
 sRoWz1zjNEwWeGvkg5EiBfALFrqk6RK6Q+Vgnwt3euF/9X4D9Po/rswhk
 IXHTP7yDh9HPBX2kzstVhniSfFLb3FEYeC8GCivGnGxQB7jeatCqjdSjy
 aUcnhCxqVL3SLA/rcmm/hMoyKw7nW3Pqnf2Bb8naK4vKI23r4BAzhQydT Q==;
X-CSE-ConnectionGUID: yb4N6LinSCiEM0f6Bm27LA==
X-CSE-MsgGUID: C4eyYc6ZRuy+R34j1sZgtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62473572"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62473572"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:27 -0700
X-CSE-ConnectionGUID: DGntJP1bTiKV/gv+HN6dLQ==
X-CSE-MsgGUID: asFh3bOUSuebge32FVPsRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214461310"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.244.2])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 6/6] drm/xe/display: Use display parent interface for xe
 runtime pm
Date: Wed, 22 Oct 2025 11:55:48 +0300
Message-ID: <20251022085548.876150-7-jouni.hogander@intel.com>
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

Start using display parent interface for xe runtime pm.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/xe/Makefile                 |  2 +-
 drivers/gpu/drm/xe/display/xe_display_rpm.c | 73 ---------------------
 2 files changed, 1 insertion(+), 74 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.c

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 82c6b3d296769..4559fb770bf75 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -211,7 +211,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/intel_fbdev_fb.o \
 	display/xe_display.o \
 	display/xe_display_misc.o \
-	display/xe_display_rpm.o \
 	display/xe_display_wa.o \
 	display/xe_dsb_buffer.o \
 	display/xe_fb_pin.o \
@@ -256,6 +255,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_display_power.o \
 	i915-display/intel_display_power_map.o \
 	i915-display/intel_display_power_well.o \
+	i915-display/intel_display_rpm.o \
 	i915-display/intel_display_trace.o \
 	i915-display/intel_display_wa.o \
 	i915-display/intel_dkl_phy.o \
diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
deleted file mode 100644
index 3825376e98ccd..0000000000000
--- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
+++ /dev/null
@@ -1,73 +0,0 @@
-// SPDX-License-Identifier: MIT
-/* Copyright © 2025 Intel Corporation */
-
-#include "intel_display_core.h"
-#include "intel_display_rpm.h"
-#include "xe_device.h"
-#include "xe_device_types.h"
-#include "xe_pm.h"
-
-static struct xe_device *display_to_xe(struct intel_display *display)
-{
-	return to_xe_device(display->drm);
-}
-
-struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *display)
-{
-	return intel_display_rpm_get(display);
-}
-
-void intel_display_rpm_put_raw(struct intel_display *display, struct ref_tracker *wakeref)
-{
-	intel_display_rpm_put(display, wakeref);
-}
-
-struct ref_tracker *intel_display_rpm_get(struct intel_display *display)
-{
-	return xe_pm_runtime_resume_and_get(display_to_xe(display)) ? INTEL_WAKEREF_DEF : NULL;
-}
-
-struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display *display)
-{
-	return xe_pm_runtime_get_if_in_use(display_to_xe(display)) ? INTEL_WAKEREF_DEF : NULL;
-}
-
-struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display *display)
-{
-	xe_pm_runtime_get_noresume(display_to_xe(display));
-
-	return INTEL_WAKEREF_DEF;
-}
-
-void intel_display_rpm_put(struct intel_display *display, struct ref_tracker *wakeref)
-{
-	if (wakeref)
-		xe_pm_runtime_put(display_to_xe(display));
-}
-
-void intel_display_rpm_put_unchecked(struct intel_display *display)
-{
-	xe_pm_runtime_put(display_to_xe(display));
-}
-
-bool intel_display_rpm_suspended(struct intel_display *display)
-{
-	struct xe_device *xe = display_to_xe(display);
-
-	return pm_runtime_suspended(xe->drm.dev);
-}
-
-void assert_display_rpm_held(struct intel_display *display)
-{
-	/* FIXME */
-}
-
-void intel_display_rpm_assert_block(struct intel_display *display)
-{
-	/* FIXME */
-}
-
-void intel_display_rpm_assert_unblock(struct intel_display *display)
-{
-	/* FIXME */
-}
-- 
2.43.0

