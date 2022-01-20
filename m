Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D984495661
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 23:35:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C46010E63D;
	Thu, 20 Jan 2022 22:35:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B5610E3DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 22:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642718097; x=1674254097;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7A4Nqw/jnpD71GICUw07ypYaqxBaTGhpywvkQvht1+A=;
 b=IFX2U/ehE2uqMC9yEA8rHriOILtMzJmTyIheRI31An5h65yZLwSwQ6vQ
 j9OBIOjC4bSq2Dtqz3NSIlzpkIFDfjevA+I8X/wqYd9eYrbzsnzXwhoDx
 yqz3iCJIvaw9Ny4LYFaVh2t/u64hlxN/yJ4x2NC0gzLX+vUGJ7eT6S1g/
 XyzHktOhyNc6AgZuGmU951mNxKoXTtbojK5QxhM+6wFj+K2W85kcspzjU
 N8TTLUawF3MEv6UPw3kRyd/PSYGrZZ3XW8KR7fFQjQIYmamCquwppqxCr
 h4A2Mb1d1t+ZetDtTH2BSpedxvlv7rHUcmmDutdzkB457L9hmtt59pv6f A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="243078570"
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="243078570"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 14:34:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="475712802"
Received: from cgbowman-desktop.jf.intel.com ([10.7.199.58])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 14:34:14 -0800
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jan 2022 14:16:52 -0800
Message-Id: <20220120221652.207255-2-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220120221652.207255-1-casey.g.bowman@intel.com>
References: <20220120221652.207255-1-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 1/1] i915/drm: Split out x86 and arm64
 functionality
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
Cc: ville.syrjala@intel.com, wayne.boyer@intel.com, jani.nikula@intel.com,
 lucas.demarchi@intel.com, daniel.vetter@intel.com, michael.cheng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some x86 checks are unnecessary on arm64 systems, so they
are being split out to avoid being used. There may be
further arm64 implementations created in the future for
this area, so it's better to split this out now.

Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
---
 drivers/gpu/drm/i915/Makefile              |  4 +++
 drivers/gpu/drm/i915/i915_drv.h            |  6 +---
 drivers/gpu/drm/i915/i915_platform.h       | 16 +++++++++++
 drivers/gpu/drm/i915/i915_platform_arm64.c | 33 ++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_platform_x86.c   | 33 ++++++++++++++++++++++
 5 files changed, 87 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_platform.h
 create mode 100644 drivers/gpu/drm/i915/i915_platform_arm64.c
 create mode 100644 drivers/gpu/drm/i915/i915_platform_x86.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 213c5f9fae32..dd66fe57934d 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -320,6 +320,10 @@ i915-y += intel_gvt.o
 include $(src)/gvt/Makefile
 endif
 
+# Architecture-specific calls
+i915-$(CONFIG_X86)   += i915_platform_x86.o
+i915-$(CONFIG_ARM64) += i915_platform_arm64.o
+
 obj-$(CONFIG_DRM_I915) += i915.o
 obj-$(CONFIG_DRM_I915_GVT_KVMGT) += gvt/kvmgt.o
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 290dfd40c7b3..e688270c8257 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -107,6 +107,7 @@
 #include "gt/intel_timeline.h"
 #include "i915_vma.h"
 
+#include "i915_platform.h"
 
 /* General customization:
  */
@@ -1543,11 +1544,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
 	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
 
-static inline bool run_as_guest(void)
-{
-	return !hypervisor_is_type(X86_HYPER_NATIVE);
-}
-
 #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
 					      IS_ALDERLAKE_S(dev_priv))
 
diff --git a/drivers/gpu/drm/i915/i915_platform.h b/drivers/gpu/drm/i915/i915_platform.h
new file mode 100644
index 000000000000..300f93d20f58
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_platform.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef _I915_PLATFORM_
+#define _I915_PLATFORM_
+
+#include <linux/types.h>
+#include <linux/bug.h>
+
+/* Start of i915_drv functionality */
+bool run_as_guest(void);
+/* End of i915_drv functionality */
+
+#endif
diff --git a/drivers/gpu/drm/i915/i915_platform_arm64.c b/drivers/gpu/drm/i915/i915_platform_arm64.c
new file mode 100644
index 000000000000..95692c4dc75f
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_platform_arm64.c
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+/*
+ * Read before adding/removing content!
+ *
+ * Ensure that all functions defined here are also defined
+ * in the i915_platform_x86.c file.
+ *
+ * If the function is a dummy function, be sure to add
+ * a DRM_WARN() call to note that the function is a
+ * dummy function to users so that we can better track
+ * any issues that arise due to changes in either file.
+ *
+ * Also be sure to label Start/End of sections where
+ * functions originate from. These files will host
+ * architecture-specific content from a myriad of files,
+ * labeling the sections will help devs keep track of
+ * where the calls interact.
+ */
+
+#include "i915_platform.h"
+
+/* Start of i915_drv functionality */
+/* Intel VT-d is not used on ARM64 systems */
+bool run_as_guest(void)
+{
+	WARN(1, "%s not supported on arm64 platforms.", __func__);
+	return false;
+}
+/* End of i915_drv functionality */
diff --git a/drivers/gpu/drm/i915/i915_platform_x86.c b/drivers/gpu/drm/i915/i915_platform_x86.c
new file mode 100644
index 000000000000..9a7174ad2147
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_platform_x86.c
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+/*
+ * Read before adding/removing content!
+ *
+ * Ensure that all functions defined here are also defined
+ * in the i915_platform_arm64.c file.
+ *
+ * If the function is a dummy function, be sure to add
+ * a DRM_WARN() call to note that the function is a
+ * dummy function to users so that we can better track
+ * any issues that arise due to changes in either file.
+ *
+ * Also be sure to label Start/End of sections where
+ * functions originate from. These files will host
+ * architecture-specific content from a myriad of files,
+ * labeling the sections will help devs keep track of
+ * where the calls interact.
+ */
+
+#include "i915_platform.h"
+
+#include <asm/hypervisor.h>
+
+/* Start of i915_drv functionality */
+bool run_as_guest(void)
+{
+	return !hypervisor_is_type(X86_HYPER_NATIVE);
+}
+/* End of i915_drv functionality */
-- 
2.25.1

