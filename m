Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE2CC223E7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 21:29:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57AC310EA20;
	Thu, 30 Oct 2025 20:28:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FGocUBhG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBB4310EA20;
 Thu, 30 Oct 2025 20:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761856136; x=1793392136;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1/KGDWsQEPzQwYzdmZvjCwHWISXue8X7zMo66YOYTHI=;
 b=FGocUBhGFG1uCJwmUiN5mMrni3tlZaWWT7zZPtK6SKpUI682Hxsgvh3f
 yiqRLhLKzyltFICYEHViaSPrvGA3G9T24pkH/d6FW9MgaLdobA1Pnvz/i
 WGszWFq1XMH2YFychfUk74U4s4J0usTr94pl/08mifbHvUB9S6nvRNBJ/
 0ma6LkaUnTmcuNcDxc5spWCy9FOJYAHxTZTVShtvyG8EVlN/SWIC+ZUkv
 CW1GatmJ6sVrglpR/lbXIKaGhJNKHowmoVOfGk/in2yHKIlhYM7tmJkld
 utp+gCEDKsRFrigiQslmYnfzH3Nw6E1FUyLSd+bcrNfy9z0IUKy/aX2S7 g==;
X-CSE-ConnectionGUID: e/ADkeAYRGKYPnkDfBL40A==
X-CSE-MsgGUID: A0gtPCSyRwOOpCvYyqkU+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="63032450"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="63032450"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 13:28:55 -0700
X-CSE-ConnectionGUID: PI12cHwoRmSQRhA1e72reQ==
X-CSE-MsgGUID: 7Q1S4Y5BRnaCiOcdryjJ9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="216706817"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 13:28:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 4/6] drm/xe/display: Runtime pm wrappers for display parent
 interface
Date: Thu, 30 Oct 2025 22:28:34 +0200
Message-ID: <20251030202836.1815680-5-jouni.hogander@intel.com>
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

Implement runtime pm wrappers for xe driver and add them into display
parent interface.

v3:
  - drop useless include
  - drop xe_display_rpm_{get, put}_raw
v2:
  - move xe_display_rpm_interface code into xe_display_rpm.c
  - rename xe_rpm as xe_display_rpm

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c     |  2 +
 drivers/gpu/drm/xe/display/xe_display_rpm.c | 66 +++++++++++++++++++++
 drivers/gpu/drm/xe/display/xe_display_rpm.h | 11 ++++
 3 files changed, 79 insertions(+)
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.h

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 0e38c96eb6def..8b0afa2702161 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -35,6 +35,7 @@
 #include "intel_hotplug.h"
 #include "intel_opregion.h"
 #include "skl_watermark.h"
+#include "xe_display_rpm.h"
 #include "xe_module.h"
 
 /* Ensure drm and display members are placed properly. */
@@ -516,6 +517,7 @@ static void display_device_remove(struct drm_device *dev, void *arg)
 }
 
 static const struct intel_display_parent_interface parent = {
+	.rpm = &xe_display_rpm_interface,
 };
 
 /**
diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
index 3825376e98ccd..cae4e2fd36c70 100644
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
@@ -71,3 +73,67 @@ void intel_display_rpm_assert_unblock(struct intel_display *display)
 {
 	/* FIXME */
 }
+
+static struct ref_tracker *xe_display_rpm_get(const struct drm_device *drm)
+{
+	return xe_pm_runtime_resume_and_get(to_xe_device(drm)) ? INTEL_WAKEREF_DEF : NULL;
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
+	.get_raw = xe_display_rpm_get,
+	.get_if_in_use = xe_display_rpm_get_if_in_use,
+	.get_noresume = xe_display_rpm_get_noresume,
+	.put = xe_display_rpm_put,
+	.put_raw = xe_display_rpm_put,
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

