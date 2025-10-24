Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAFDC0558A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 11:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A093510EA0D;
	Fri, 24 Oct 2025 09:31:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jFWvMS7X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34C7710EA0D;
 Fri, 24 Oct 2025 09:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761298298; x=1792834298;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=If6+MxNY/rJOUV5fZ/4KGDze+fQYJMK7v5QZ4GzVb0Y=;
 b=jFWvMS7X/I6TUw2u/cJ4VbrK+oOc6Rz8vPR89YJy2ajCdBJBUVVL+J5b
 amgpaoo7tEVQp/pjUEs8aU8cbZTx1EEzMhKEUH6CX2iwqkMCqNnDDLGLs
 FCO/h/WTJ8NZDRH7VMvlabPanIh4Inm07HvZ4iCSmPWOV0eWfnenA/A/1
 xqPB7pMxXPylbHjLRo1YfUv7MboXS7EdP0937ol+isxa78+9/5e+XN05g
 Drr3VeJwFkB/rob+pNJ8LOqcEr9FpYWiBjxZvcv59+xQP7GfAO2y2pwjv
 mUhP3TwG0H/10JzgNEQHT+fCmYpSG8oTuZb5k/7hVImTRTxH2XWXRQskq A==;
X-CSE-ConnectionGUID: Skv4XKltQDeonfZOf565MQ==
X-CSE-MsgGUID: 9klzxs4JSZGn3M7dEWcDhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66094775"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="66094775"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 02:31:38 -0700
X-CSE-ConnectionGUID: Bny9dFoiQAyKd3otUXy93Q==
X-CSE-MsgGUID: 8dqcICT+Q3ua/KbZAHCqCg==
X-ExtLoop1: 1
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.40])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 02:31:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/6] drm/i915/display: Runtime pm wrappers for display
 parent interface
Date: Fri, 24 Oct 2025 12:31:10 +0300
Message-ID: <20251024093113.1119070-4-jouni.hogander@intel.com>
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

Implement runtime pm wrappers for i915 driver and add them into display
parent interface.

v2:
  - move i915 display rpm interface implementation to intel_runtime_pm.c
  - rename intel_display as i915_display

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c      |  1 +
 drivers/gpu/drm/i915/intel_runtime_pm.c | 77 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_runtime_pm.h |  3 +
 3 files changed, 81 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b295326eb4331..c97b767719176 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -740,6 +740,7 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 }
 
 static const struct intel_display_parent_interface parent = {
+	.rpm = &i915_display_rpm_interface,
 };
 
 const struct intel_display_parent_interface *i915_driver_parent_interface(void)
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 7ce3e6de0c197..d11c2814b787b 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -29,6 +29,7 @@
 #include <linux/pm_runtime.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "i915_drv.h"
 #include "i915_trace.h"
@@ -177,6 +178,82 @@ static intel_wakeref_t __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
 	return track_intel_runtime_pm_wakeref(rpm);
 }
 
+static struct intel_runtime_pm *drm_to_rpm(const struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	return &i915->runtime_pm;
+}
+
+static struct ref_tracker *i915_display_rpm_get(const struct drm_device *drm)
+{
+	return intel_runtime_pm_get(drm_to_rpm(drm));
+}
+
+static struct ref_tracker *i915_display_rpm_get_raw(const struct drm_device *drm)
+{
+	return intel_runtime_pm_get_raw(drm_to_rpm(drm));
+}
+
+static struct ref_tracker *i915_display_rpm_get_if_in_use(const struct drm_device *drm)
+{
+	return intel_runtime_pm_get_if_in_use(drm_to_rpm(drm));
+}
+
+static struct ref_tracker *i915_display_rpm_get_noresume(const struct drm_device *drm)
+{
+	return intel_runtime_pm_get_noresume(drm_to_rpm(drm));
+}
+
+static void i915_display_rpm_put(const struct drm_device *drm, struct ref_tracker *wakeref)
+{
+	intel_runtime_pm_put(drm_to_rpm(drm), wakeref);
+}
+
+static void i915_display_rpm_put_raw(const struct drm_device *drm, struct ref_tracker *wakeref)
+{
+	intel_runtime_pm_put_raw(drm_to_rpm(drm), wakeref);
+}
+
+static void i915_display_rpm_put_unchecked(const struct drm_device *drm)
+{
+	intel_runtime_pm_put_unchecked(drm_to_rpm(drm));
+}
+
+static bool i915_display_rpm_suspended(const struct drm_device *drm)
+{
+	return intel_runtime_pm_suspended(drm_to_rpm(drm));
+}
+
+static void i915_display_rpm_assert_held(const struct drm_device *drm)
+{
+	assert_rpm_wakelock_held(drm_to_rpm(drm));
+}
+
+static void i915_display_rpm_assert_block(const struct drm_device *drm)
+{
+	disable_rpm_wakeref_asserts(drm_to_rpm(drm));
+}
+
+static void i915_display_rpm_assert_unblock(const struct drm_device *drm)
+{
+	enable_rpm_wakeref_asserts(drm_to_rpm(drm));
+}
+
+const struct intel_display_rpm_interface i915_display_rpm_interface = {
+	.get = i915_display_rpm_get,
+	.get_raw = i915_display_rpm_get_raw,
+	.get_if_in_use = i915_display_rpm_get_if_in_use,
+	.get_noresume = i915_display_rpm_get_noresume,
+	.put = i915_display_rpm_put,
+	.put_raw = i915_display_rpm_put_raw,
+	.put_unchecked = i915_display_rpm_put_unchecked,
+	.suspended = i915_display_rpm_suspended,
+	.assert_held = i915_display_rpm_assert_held,
+	.assert_block = i915_display_rpm_assert_block,
+	.assert_unblock = i915_display_rpm_assert_unblock
+};
+
 /**
  * intel_runtime_pm_get_raw - grab a raw runtime pm reference
  * @rpm: the intel_runtime_pm structure
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index 7428bd8fa67f4..ed6c43b17f9ae 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -14,6 +14,7 @@
 struct device;
 struct drm_i915_private;
 struct drm_printer;
+struct intel_display_rpm_interface;
 
 /*
  * This struct helps tracking the state needed for runtime PM, which puts the
@@ -226,4 +227,6 @@ static inline void print_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
 }
 #endif
 
+extern const struct intel_display_rpm_interface i915_display_rpm_interface;
+
 #endif /* __INTEL_RUNTIME_PM_H__ */
-- 
2.43.0

