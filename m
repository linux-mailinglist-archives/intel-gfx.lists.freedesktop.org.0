Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D30E4A5C017
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 13:05:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6707410E582;
	Tue, 11 Mar 2025 12:05:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a+AOmJQD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BA6D10E581;
 Tue, 11 Mar 2025 12:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741694752; x=1773230752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zsQYZOkv2rIWQ30ymXwkCngtY3w29Q7SBGzF0Y2cg4k=;
 b=a+AOmJQDhTck9YeL5cEOiGB1bIMe1NDpNsQIowUVqo0IslIaj5HS9Xtd
 Nth+zUgmzSqN7sx9vwzY7oRf5SLp0Vn3qCKL6MEYZWsq4FZsqlbF7mEMj
 rT+xZ5ztV0Xvv0NR9Mrz4RGe8M8qGrVwI0EblFNGKQIkFqUTk2Ctqa6fw
 vr+zszXjU0D1NbHQXeE26j04CfwvuKbXUCuiri7C7ldIqQ6vwMWOBrf1U
 NfVxW0s7UAqCXOwz4K8qRS8B1cvi2yDJ++IKY2UwEUpC3puVc5nFGv24A
 P4pUeB3K+XKROn7xjK+37zgxL5Fj5zyEVVJXDBbNpVf5rNdxzs2FhFORr g==;
X-CSE-ConnectionGUID: WA57vBYHREaqWVz5snm+PA==
X-CSE-MsgGUID: Cz1XN2yqTeuvu2PLiOoQRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="46510525"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="46510525"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 05:05:52 -0700
X-CSE-ConnectionGUID: 4fXSjWcCRzWorSkF3Xdcfw==
X-CSE-MsgGUID: TvL+ApUuSeOWRgWc+qiqug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="151108668"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 05:05:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 1/6] drm/i915/display: add display specific runtime PM wrappers
Date: Tue, 11 Mar 2025 14:05:35 +0200
Message-Id: <d9ed1f46bfd91fd5aba6214de14c2fbbe7f4114b.1741694400.git.jani.nikula@intel.com>
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

Add display specific wrappers around the i915 and xe dedicated runtime
PM interfaces. There are no conversions here, just the wrappers.

Implement with_intel_display_rpm() without needing to provide a local
variable, which neatly narrows the scope and hides the type of the
wakeref cookie.

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

