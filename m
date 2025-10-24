Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 931D9C0558D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 11:31:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87DC10EA11;
	Fri, 24 Oct 2025 09:31:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y/7jhghl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C560610EA11;
 Fri, 24 Oct 2025 09:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761298299; x=1792834299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XJcvvPcfOAShzAmHc+3E10wQXRx9eAkkytLUXwdDjn0=;
 b=Y/7jhghl0MGGF+fZMWXk1ZUFQ6KGyOJMmZ2SI27xzUJRM6iExtWIT4VC
 1hIlymRDEKCJpYjBhmG7HO0BAZvqUgno65lT1gWPGeyT7+XBAS1fZ4nVp
 WH5yOTXd6FDJ1x/t7JZ/gCNqKqpgUPhaInzx19B4rNJDYmnM1opJIjmT6
 R/hSa16ekDGfV4aS1HjS4q48oMxba+0771j8HsEhNyZJ3/jNSoNRY969k
 0qtI8pqkcEyeXK57X/94CEKaio3dZ8Awhxbwn9ZgUoLhp9KkTohgz8S5X
 ba8uh1Qh4oXG2tsM+UKcUsKFBDgCby1p51+kTIWM1XfzYFhIvvLQb7twf w==;
X-CSE-ConnectionGUID: n08xEpZzRx+b/DDmjqstTQ==
X-CSE-MsgGUID: x6A66itnS7e/sfI3yceNAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66094780"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="66094780"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 02:31:39 -0700
X-CSE-ConnectionGUID: +BshAK8DQeakJ4cTHz26kg==
X-CSE-MsgGUID: t6qp3J/eTOa7oycnepFYvA==
X-ExtLoop1: 1
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.40])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 02:31:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 4/6] drm/xe/display: Runtime pm wrappers for display parent
 interface
Date: Fri, 24 Oct 2025 12:31:11 +0300
Message-ID: <20251024093113.1119070-5-jouni.hogander@intel.com>
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

Implement runtime pm wrappers for xe driver and add them into display
parent interface.

v2:
  - move xe_display_rpm_interface code into xe_display_rpm.c
  - rename xe_rpm as xe_display_rpm

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c     |  3 +
 drivers/gpu/drm/xe/display/xe_display_rpm.c | 76 +++++++++++++++++++++
 drivers/gpu/drm/xe/display/xe_display_rpm.h | 11 +++
 3 files changed, 90 insertions(+)
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.h

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 0e38c96eb6def..be7f3c7ef5c3f 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -35,7 +35,9 @@
 #include "intel_hotplug.h"
 #include "intel_opregion.h"
 #include "skl_watermark.h"
+#include "xe_display_rpm.h"
 #include "xe_module.h"
+#include "xe_pm.h"
 
 /* Ensure drm and display members are placed properly. */
 INTEL_DISPLAY_MEMBER_STATIC_ASSERT(struct xe_device, drm, display);
@@ -516,6 +518,7 @@ static void display_device_remove(struct drm_device *dev, void *arg)
 }
 
 static const struct intel_display_parent_interface parent = {
+	.rpm = &xe_display_rpm_interface,
 };
 
 /**
diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
index 3825376e98ccd..72a351e26a008 100644
--- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
+++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2025 Intel Corporation */
 
+#include <drm/intel/display_parent_interface.h>
+
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "xe_device.h"
@@ -71,3 +73,77 @@ void intel_display_rpm_assert_unblock(struct intel_display *display)
 {
 	/* FIXME */
 }
+
+static struct ref_tracker *xe_display_rpm_get(const struct drm_device *drm)
+{
+	return xe_pm_runtime_resume_and_get(to_xe_device(drm)) ? INTEL_WAKEREF_DEF : NULL;
+}
+
+static struct ref_tracker *xe_display_rpm_get_raw(const struct drm_device *drm)
+{
+	return xe_display_rpm_get(drm);
+}
+
+static struct ref_tracker *xe_display_rpm_get_if_in_use(const struct drm_device *drm)
+{
+	return xe_pm_runtime_get_if_in_use(to_xe_device(drm)) ? INTEL_WAKEREF_DEF : NULL;
+}
+
+static struct ref_tracker *xe_display_rpm_get_noresume(const struct drm_device *drm)
+{
+	xe_pm_runtime_get_noresume(to_xe_device(drm));
+
+	return INTEL_WAKEREF_DEF;
+}
+
+static void xe_display_rpm_put(const struct drm_device *drm, struct ref_tracker *wakeref)
+{
+	if (wakeref)
+		xe_pm_runtime_put(to_xe_device(drm));
+}
+
+static void xe_display_rpm_put_raw(const struct drm_device *drm, struct ref_tracker *wakeref)
+{
+	xe_display_rpm_put(drm, wakeref);
+}
+
+static void xe_display_rpm_put_unchecked(const struct drm_device *drm)
+{
+	xe_pm_runtime_put(to_xe_device(drm));
+}
+
+static bool xe_display_rpm_suspended(const struct drm_device *drm)
+{
+	struct xe_device *xe = to_xe_device(drm);
+
+	return pm_runtime_suspended(xe->drm.dev);
+}
+
+static void xe_display_rpm_assert_held(const struct drm_device *drm)
+{
+	/* FIXME */
+}
+
+static void xe_display_rpm_assert_block(const struct drm_device *drm)
+{
+	/* FIXME */
+}
+
+static void xe_display_rpm_assert_unblock(const struct drm_device *drm)
+{
+	/* FIXME */
+}
+
+const struct intel_display_rpm_interface xe_display_rpm_interface = {
+	.get = xe_display_rpm_get,
+	.get_raw = xe_display_rpm_get_raw,
+	.get_if_in_use = xe_display_rpm_get_if_in_use,
+	.get_noresume = xe_display_rpm_get_noresume,
+	.put = xe_display_rpm_put,
+	.put_raw = xe_display_rpm_put_raw,
+	.put_unchecked = xe_display_rpm_put_unchecked,
+	.suspended = xe_display_rpm_suspended,
+	.assert_held = xe_display_rpm_assert_held,
+	.assert_block = xe_display_rpm_assert_block,
+	.assert_unblock = xe_display_rpm_assert_unblock
+};
diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.h b/drivers/gpu/drm/xe/display/xe_display_rpm.h
new file mode 100644
index 0000000000000..0bf9d31e87c17
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_display_rpm.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#ifndef _XE_DISPLAY_RPM_H_
+#define _XE_DISPLAY_RPM_H_
+
+extern const struct intel_display_rpm_interface xe_display_rpm_interface;
+
+#endif /* _XE_DISPLAY_RPM_H_ */
-- 
2.43.0

