Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F41954B1C12
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 03:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD8710E9B6;
	Fri, 11 Feb 2022 02:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A037410E9B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 02:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644545716; x=1676081716;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H0vpWZbByfkmetVEWJHHlsJJTzsWabYbOfOLcfPkTbE=;
 b=VfPVUarlxZxU3j5qa3JOhm/wBubgm5mpmq+A5Gp9LL+LMufMheU46zV/
 MCinNp0ht5bVBSelNlJRzapMXBmNqCjKq1z5S8FsnQzVNO7+3PlmnyCAV
 vmOot68trdOi4F+2bOKAWqrSb01uAmA4LfmFM5V0t2lUFnYJf2yYR+Clh
 Ly4eUQ/gNDOPCaRj93h5qoxU9wBL+rfBKe/mnxPU27VAh3dS5u8BDPsFd
 m8sJiav8pWdTUQ+O4S49BnpQh/srvxsSRTtKmQIFGfqt4yp2H0jfuigmD
 LRa55JBwZfQOsns9IufJ4+D+aUx537D8iXR3kBvRmMWJqgI+gbx5uM6kc Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="274196301"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="274196301"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 18:15:16 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="623073698"
Received: from dparker1-mobl.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.254.46.173])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 18:15:16 -0800
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 18:15:10 -0800
Message-Id: <20220211021510.202602-2-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211021510.202602-1-casey.g.bowman@intel.com>
References: <20220211021510.202602-1-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH v2 1/1] i915/drm: Split out x86 and arm64
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
Cc: michael.cheng@intel.com, jani.nikula@intel.com, lucas.demarchi@intel.com,
 daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some x86 checks are unnecessary on arm64 systems, so they
are being split out to avoid being used.

We are starting the split with run_as_guest(), which has
an x86-specific usage, while on arm64, we aren't using it.

The split reflects the way the kernel currently handles
platform-specific libraries, but these calls are localized
to i915.

Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
---
 drivers/gpu/drm/i915/Makefile                         |  3 +++
 drivers/gpu/drm/i915/i915_drv.h                       |  7 ++-----
 drivers/gpu/drm/i915/platforms/Makefile               |  8 ++++++++
 .../arm64/include/platform/i915_hypervisor.h          | 11 +++++++++++
 .../platforms/x86/include/platform/i915_hypervisor.h  |  9 +++++++++
 5 files changed, 33 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/platforms/Makefile
 create mode 100644 drivers/gpu/drm/i915/platforms/arm64/include/platform/i915_hypervisor.h
 create mode 100644 drivers/gpu/drm/i915/platforms/x86/include/platform/i915_hypervisor.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 16cab8db012a..f69ed0c10e80 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -29,6 +29,9 @@ subdir-ccflags-y += -I$(srctree)/$(src)
 
 # Please keep these build lists sorted!
 
+# arch support
+include $(src)/platforms/Makefile
+
 # core driver code
 i915-y += i915_driver.o \
 	  i915_config.o \
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 78fa3340101b..ba2cfb4d9830 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -87,6 +87,8 @@
 #include "gt/intel_workarounds.h"
 #include "gt/uc/intel_uc.h"
 
+#include "platform/i915_hypervisor.h"
+
 #include "intel_device_info.h"
 #include "intel_memory_region.h"
 #include "intel_pch.h"
@@ -1498,11 +1500,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
 	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
 
-static inline bool run_as_guest(void)
-{
-	return !hypervisor_is_type(X86_HYPER_NATIVE);
-}
-
 #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
 					      IS_ALDERLAKE_S(dev_priv))
 
diff --git a/drivers/gpu/drm/i915/platforms/Makefile b/drivers/gpu/drm/i915/platforms/Makefile
new file mode 100644
index 000000000000..03250b5704ea
--- /dev/null
+++ b/drivers/gpu/drm/i915/platforms/Makefile
@@ -0,0 +1,8 @@
+ifdef CONFIG_X86
+ccflags-y += -I $(srctree)/$(src)/platforms/x86/include/
+endif
+
+ifdef CONFIG_ARM64
+ccflags-y += -I $(srctree)/$(src)/platforms/arm64/include/
+endif
+
diff --git a/drivers/gpu/drm/i915/platforms/arm64/include/platform/i915_hypervisor.h b/drivers/gpu/drm/i915/platforms/arm64/include/platform/i915_hypervisor.h
new file mode 100644
index 000000000000..cd9050711dce
--- /dev/null
+++ b/drivers/gpu/drm/i915/platforms/arm64/include/platform/i915_hypervisor.h
@@ -0,0 +1,11 @@
+#ifndef _I915_HYPERVISOR_
+#define _I915_HYPERVISOR_
+
+
+/* Not supported for arm64, so we return  */
+static inline bool run_as_guest(void)
+{
+	return false;
+}
+
+#endif
diff --git a/drivers/gpu/drm/i915/platforms/x86/include/platform/i915_hypervisor.h b/drivers/gpu/drm/i915/platforms/x86/include/platform/i915_hypervisor.h
new file mode 100644
index 000000000000..5eab54f5e09f
--- /dev/null
+++ b/drivers/gpu/drm/i915/platforms/x86/include/platform/i915_hypervisor.h
@@ -0,0 +1,9 @@
+#ifndef _I915_HYPERVISOR_
+#define _I915_HYPERVISOR_
+
+static inline bool run_as_guest(void)
+{
+	return !hypervisor_is_type(X86_HYPER_NATIVE);
+}
+
+#endif
-- 
2.25.1

