Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAF47AF19D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 19:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85F5E10E407;
	Tue, 26 Sep 2023 17:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F61F10E41A
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 17:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695748563; x=1727284563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pJoa+1qQ6yRE8YaxmdNh8e+yQhpksPntX86DgSljQ00=;
 b=FDhEQEdRREidms0m2KIZjq7bSHYEm1fIez6WZL5hwuhwd4wWT/d3I2m/
 BYGBc4iB1A+6AtruItOwGq91bj+a1Src9quzI5MsRJjGQ/FXyFXSXyBLX
 YSGBIXa9keOLcJsMf4aiUHsuQTXnPFKnyGn/WBYOWnWzWQ94yM1kJGCUU
 cuwD2U2swWAA+aRlOGCnKQVMsbjONv92uXQrMaQ9Q8+1IDlqm/tKvcJ4X
 yAUia4ecZTacgK7szzSoNXYZ3ggK0Ag5arq9SILQAkBK+Ng8gV2QVZkRQ
 8TW9DPvFq9VJvCsYNAnnFcRKaJhkeMvdR03OiGpLTa5ps/Kt/FtnsgkxT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="385469018"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="385469018"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 10:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; 
   d="scan'208";a="232788"
Received: from wagnert-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.202])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 10:15:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Sep 2023 20:15:41 +0300
Message-Id: <ac2fd92acc1975d5ae746fdc8dcdc2e6ed8bcfa0.1695747484.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695747484.git.jani.nikula@intel.com>
References: <cover.1695747484.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/3] drm/i915: rough ideas for further separating
 display code from the rest
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Long term goal: Separate display code from struct drm_i915_private and
i915_drv.h, and everything in them.

First step, draft some ideas how we could use struct intel_display as
the main device structure for display, while struct drm_device remains
in struct drm_i915_private (or, in the case of xe, in struct xe_device).

To get at struct drm_device * given a struct intel_display *, simply
store a backpointer.

To get at struct intel_display * given a struct drm_device *, require
storing a struct intel_display * right after struct drm_device in
memory. It's slightly hackish, but devm_drm_dev_alloc() facilitates
defining the enclosing struct as we wish.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h    | 16 ++++++++++++++++
 .../gpu/drm/i915/display/intel_display_device.c  | 13 +++++++++++++
 drivers/gpu/drm/i915/i915_drv.h                  | 11 ++++++++++-
 3 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 53e5c33e08c3..a5463a9b5f54 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -14,6 +14,7 @@
 #include <linux/workqueue.h>
 
 #include <drm/drm_connector.h>
+#include <drm/drm_device.h>
 #include <drm/drm_modeset_lock.h>
 
 #include "intel_cdclk.h"
@@ -267,6 +268,9 @@ struct intel_wm {
 };
 
 struct intel_display {
+	/* drm device backpointer */
+	struct drm_device *drm;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
@@ -521,4 +525,16 @@ struct intel_display {
 	struct intel_wm wm;
 };
 
+/* FIXME: could be placed somewhere else to avoid drm/drm_device.h include */
+static inline struct intel_display *to_intel_display(const struct drm_device *drm)
+{
+	/*
+	 * Assume there's a pointer to struct intel_display in memory right
+	 * after struct drm_device.
+	 */
+	struct intel_display **p = (struct intel_display **)(drm + 1);
+
+	return *p;
+}
+
 #endif /* __INTEL_DISPLAY_CORE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a6a18eae7ae8..b90da136ac65 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -921,6 +921,19 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	const struct intel_display_device_info *info;
 	u16 ver, rel, step;
 
+	/*
+	 * These are here for now to do them as early as possible. i915 has just
+	 * been allocated, drm isn't even initialized yet, but we have the
+	 * pointer.
+	 *
+	 * Later on, the display probe would allocate struct intel_display
+	 * itself, and return the pointer to the caller, for whom struct
+	 * intel_display would be an opaque type, a cookie to be passed on to
+	 * display functions.
+	 */
+	i915->__intel_display_private = &i915->display;
+	i915->display.drm = &i915->drm;
+
 	if (HAS_GMD_ID(i915))
 		info = probe_gmdid_display(i915, &ver, &rel, &step);
 	else
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 511eba3bbdba..10770fb5f429 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -193,7 +193,16 @@ struct i915_selftest_stash {
 };
 
 struct drm_i915_private {
-	struct drm_device drm;
+	struct {
+		struct drm_device drm;
+
+		/*
+		 * Display private data. Do *not* access directly. Must be
+		 * placed right after drm_device to facilitate getting to it
+		 * given a drm device pointer.
+		 */
+		struct intel_display *__intel_display_private;
+	} __packed;
 
 	struct intel_display display;
 
-- 
2.39.2

