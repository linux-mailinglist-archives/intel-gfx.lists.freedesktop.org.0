Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70291C223EA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 21:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E327810EA25;
	Thu, 30 Oct 2025 20:29:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JkwIkYan";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 578DF10EA23;
 Thu, 30 Oct 2025 20:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761856139; x=1793392139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ojYQ2/R9npGpOA5Ggpq7wQ5Qzeenc5ylk/mwMI51Xvs=;
 b=JkwIkYanjoKZl5eyFkKTSqEUIeyTXaZH+nvgHg9OlhAUJV73moOGLVwB
 msu1VIAScfyZZluHXakf2Rj49kfA4h3s+SSn8K6lnC/a6CW4XyF0mMMK7
 3+93Lcc3FQmxPgIbL31rs5ARbqnD2R2Sqa4RIz/j33mfo5nxb6aCHYSXl
 NhA+WBgEPJhIRkgyMHjfLEbhmHtXiw7Udek05tKOQNpVWkrorxidf0qe4
 kdTwOv654B5Gaw4AeEwe17HR9N4DOrpPnE4EbdPGjQEmZJvWac/RyoMOA
 VkZGJhBr+ewPvqiGtlY8grLg+OPcFOit6UgRauVunvIfyM4NAVx/lvT13 A==;
X-CSE-ConnectionGUID: S4d00XhJTiC7pz9MWJaSJA==
X-CSE-MsgGUID: oJPm/hrHSBiWBHkyt2iIPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="63032455"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="63032455"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 13:28:59 -0700
X-CSE-ConnectionGUID: XX/eGnOfSme2k+absLGo5Q==
X-CSE-MsgGUID: KY7RvK6+QH6eXBpYNFY3vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="216706830"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 13:28:58 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 6/6] drm/xe/display: Use display parent interface for xe
 runtime pm
Date: Thu, 30 Oct 2025 22:28:36 +0200
Message-ID: <20251030202836.1815680-7-jouni.hogander@intel.com>
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

Start using display parent interface for xe runtime pm.

v2: keep xe_display_rpm.c

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/xe/Makefile                 |  1 +
 drivers/gpu/drm/xe/display/xe_display_rpm.c | 65 ---------------------
 2 files changed, 1 insertion(+), 65 deletions(-)

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 82c6b3d296769..a39caed9f3d35 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -256,6 +256,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_display_power.o \
 	i915-display/intel_display_power_map.o \
 	i915-display/intel_display_power_well.o \
+	i915-display/intel_display_rpm.o \
 	i915-display/intel_display_trace.o \
 	i915-display/intel_display_wa.o \
 	i915-display/intel_dkl_phy.o \
diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
index cae4e2fd36c70..340f658848121 100644
--- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
+++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
@@ -9,71 +9,6 @@
 #include "xe_device_types.h"
 #include "xe_pm.h"
 
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
-
 static struct ref_tracker *xe_display_rpm_get(const struct drm_device *drm)
 {
 	return xe_pm_runtime_resume_and_get(to_xe_device(drm)) ? INTEL_WAKEREF_DEF : NULL;
-- 
2.43.0

