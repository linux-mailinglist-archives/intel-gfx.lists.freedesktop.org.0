Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 975D3A6A956
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 16:04:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F3910E63E;
	Thu, 20 Mar 2025 15:04:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PahKcilA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D049610E63C;
 Thu, 20 Mar 2025 15:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742483050; x=1774019050;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nQhZvnM/iPU4UTbkSMnDhFSrBJ1p8xqvPHmI5Kqmhsk=;
 b=PahKcilAGvYyro7hgXZMSIYrq17YukrJJbo8UCviO6vJ297UJ8enTk46
 wzm87s0/XaFQKBwcyhWp8HTmI+N/NWx3e0E2bA25VmHG+XCAKzfdemhW3
 6vOj+yl/WyjeSHtxHiqGjNtl0J+66m0ZAe1C+ObMsAaNaQI7nhU1kclpW
 iXBSwRXr70wCGATZpKL2arls7ghbkntnLc3BM80Fbkz8MM0e+tIcxMKDs
 saCh8niJCGZ5V6qB9lcPFN0pf1zLMmxpKQYjoNUSiT5n6UPu8WtpWt9UL
 aaabd1Smjr15LxLQiYN3czP11B4WOUzR7QrXooJS/GhaW9MdayovF3mnL A==;
X-CSE-ConnectionGUID: YTrUgeWXQWimNJ1AkMSfcg==
X-CSE-MsgGUID: xUw95vk3Ss+diK1QS4vVzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="31311157"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="31311157"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 08:04:09 -0700
X-CSE-ConnectionGUID: 1zWIiRlsTVaRc02pkrjV0Q==
X-CSE-MsgGUID: rrVnZzLfRDWOw8Aa3e4JxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="146335967"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 08:04:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 1/6] drm/i915/display: add display specific runtime PM wrappers
Date: Thu, 20 Mar 2025 17:03:55 +0200
Message-Id: <086b312367fa0fbd8de92e9764117aa7ff4a8cc5.1742483007.git.jani.nikula@intel.com>
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

Add display specific wrappers around the i915 and xe dedicated runtime
PM interfaces. There are no conversions here, just the wrappers.

Implement with_intel_display_rpm() without needing to provide a local
variable, which neatly narrows the scope and hides the type of the
wakeref cookie.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../gpu/drm/i915/display/intel_display_rpm.c  | 68 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_rpm.h  | 37 ++++++++++
 drivers/gpu/drm/xe/Makefile                   |  1 +
 drivers/gpu/drm/xe/display/xe_display_rpm.c   | 71 +++++++++++++++++++
 5 files changed, 178 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_rpm.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_rpm.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index ed05b131ed3a..c8fc271b33b7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -247,6 +247,7 @@ i915-y += \
 	display/intel_display_power_map.o \
 	display/intel_display_power_well.o \
 	display/intel_display_reset.o \
+	display/intel_display_rpm.o \
 	display/intel_display_rps.o \
 	display/intel_display_snapshot.o \
 	display/intel_display_wa.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_rpm.c b/drivers/gpu/drm/i915/display/intel_display_rpm.c
new file mode 100644
index 000000000000..48da67dd0136
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_rpm.c
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include "i915_drv.h"
+#include "intel_display_rpm.h"
+#include "intel_runtime_pm.h"
+
+static struct intel_runtime_pm *display_to_rpm(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	return &i915->runtime_pm;
+}
+
+struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *display)
+{
+	return intel_runtime_pm_get_raw(display_to_rpm(display));
+}
+
+void intel_display_rpm_put_raw(struct intel_display *display, struct ref_tracker *wakeref)
+{
+	intel_runtime_pm_put_raw(display_to_rpm(display), wakeref);
+}
+
+struct ref_tracker *intel_display_rpm_get(struct intel_display *display)
+{
+	return intel_runtime_pm_get(display_to_rpm(display));
+}
+
+struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display *display)
+{
+	return intel_runtime_pm_get_if_in_use(display_to_rpm(display));
+}
+
+struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display *display)
+{
+	return intel_runtime_pm_get_noresume(display_to_rpm(display));
+}
+
+void intel_display_rpm_put(struct intel_display *display, struct ref_tracker *wakeref)
+{
+	intel_runtime_pm_put(display_to_rpm(display), wakeref);
+}
+
+void intel_display_rpm_put_unchecked(struct intel_display *display)
+{
+	intel_runtime_pm_put_unchecked(display_to_rpm(display));
+}
+
+bool intel_display_rpm_suspended(struct intel_display *display)
+{
+	return intel_runtime_pm_suspended(display_to_rpm(display));
+}
+
+void assert_display_rpm_held(struct intel_display *display)
+{
+	assert_rpm_wakelock_held(display_to_rpm(display));
+}
+
+void intel_display_rpm_assert_block(struct intel_display *display)
+{
+	disable_rpm_wakeref_asserts(display_to_rpm(display));
+}
+
+void intel_display_rpm_assert_unblock(struct intel_display *display)
+{
+	enable_rpm_wakeref_asserts(display_to_rpm(display));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_rpm.h b/drivers/gpu/drm/i915/display/intel_display_rpm.h
new file mode 100644
index 000000000000..6ef48515f84b
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_rpm.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __INTEL_DISPLAY_RPM__
+#define __INTEL_DISPLAY_RPM__
+
+#include <linux/types.h>
+
+struct intel_display;
+struct ref_tracker;
+
+struct ref_tracker *intel_display_rpm_get(struct intel_display *display);
+void intel_display_rpm_put(struct intel_display *display, struct ref_tracker *wakeref);
+
+#define __with_intel_display_rpm(__display, __wakeref) \
+	for (struct ref_tracker *(__wakeref) = intel_display_rpm_get(__display); (__wakeref); \
+	     intel_display_rpm_put((__display), (__wakeref)), (__wakeref) = NULL)
+
+#define with_intel_display_rpm(__display) \
+	__with_intel_display_rpm((__display), __UNIQUE_ID(wakeref))
+
+/* Only for special cases. */
+bool intel_display_rpm_suspended(struct intel_display *display);
+
+void assert_display_rpm_held(struct intel_display *display);
+void intel_display_rpm_assert_block(struct intel_display *display);
+void intel_display_rpm_assert_unblock(struct intel_display *display);
+
+/* Only for display power implementation. */
+struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *display);
+void intel_display_rpm_put_raw(struct intel_display *display, struct ref_tracker *wakeref);
+
+struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display *display);
+struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display *display);
+void intel_display_rpm_put_unchecked(struct intel_display *display);
+
+#endif /* __INTEL_DISPLAY_RPM__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 9699b08585f7..cd464fe26eb8 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -185,6 +185,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/intel_fbdev_fb.o \
 	display/xe_display.o \
 	display/xe_display_misc.o \
+	display/xe_display_rpm.o \
 	display/xe_display_rps.o \
 	display/xe_display_wa.o \
 	display/xe_dsb_buffer.o \
diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
new file mode 100644
index 000000000000..1955153aadba
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include "intel_display_rpm.h"
+#include "xe_device_types.h"
+#include "xe_pm.h"
+
+static struct xe_device *display_to_xe(struct intel_display *display)
+{
+	return container_of(display, struct xe_device, display);
+}
+
+struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *display)
+{
+	return intel_display_rpm_get(display);
+}
+
+void intel_display_rpm_put_raw(struct intel_display *display, struct ref_tracker *wakeref)
+{
+	intel_display_rpm_put(display, wakeref);
+}
+
+struct ref_tracker *intel_display_rpm_get(struct intel_display *display)
+{
+	return xe_pm_runtime_resume_and_get(display_to_xe(display)) ? INTEL_WAKEREF_DEF : NULL;
+}
+
+struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display *display)
+{
+	return xe_pm_runtime_get_if_in_use(display_to_xe(display)) ? INTEL_WAKEREF_DEF : NULL;
+}
+
+struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display *display)
+{
+	xe_pm_runtime_get_noresume(display_to_xe(display));
+
+	return INTEL_WAKEREF_DEF;
+}
+
+void intel_display_rpm_put(struct intel_display *display, struct ref_tracker *wakeref)
+{
+	if (wakeref)
+		xe_pm_runtime_put(display_to_xe(display));
+}
+
+void intel_display_rpm_put_unchecked(struct intel_display *display)
+{
+	xe_pm_runtime_put(display_to_xe(display));
+}
+
+bool intel_display_rpm_suspended(struct intel_display *display)
+{
+	struct xe_device *xe = display_to_xe(display);
+
+	return pm_runtime_suspended(xe->drm.dev);
+}
+
+void assert_display_rpm_held(struct intel_display *display)
+{
+	/* FIXME */
+}
+
+void intel_display_rpm_assert_block(struct intel_display *display)
+{
+	/* FIXME */
+}
+
+void intel_display_rpm_assert_unblock(struct intel_display *display)
+{
+	/* FIXME */
+}
-- 
2.39.5

