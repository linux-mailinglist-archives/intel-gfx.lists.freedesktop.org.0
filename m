Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F884AF1A3
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 13:31:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82CE010E4A4;
	Wed,  9 Feb 2022 12:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EE710E440
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 12:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644409888; x=1675945888;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ex0i6H0ryII1c6oJBdO0XsgUa1vujFeDA+5+GmcmYNY=;
 b=gwCljU+3KqS9WLihLvbe56mhHBEY7XbEQECeoeiCWmK46vJrS4PqKmwa
 1GU9hPpi2ncIyIesudsqt2QF+4RPvDpaLYpQ1MrEuppVFyAkeYKCEu80i
 QXt6tGpjAF/dRv/wBTXIsX1gLWlz6TOJtB14qQAjWpiM7kBvgAnAdpjaY
 KeKuPnVOsqjpipfMAAQLxP0gw9/fbRQ6wHsMCYGJnj39UbMu4KIZ0OslX
 dfLFz9ge4I6JMass2On8d69/QrBr6hZcLLe88GftifnVHzhuLKzTTx7Bc
 attQ16ACekVL7xmrpa4/q5supUnz2iA8g9hseTs/8gQtP+r4B/bjQe1N8 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="309937188"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="309937188"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 04:31:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="499952491"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.18.41])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 04:31:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 14:31:21 +0200
Message-Id: <20220209123121.3337496-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: move the DRIVER_* macros to
 i915_driver.[ch]
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The macros are more at home in i915_driver.[ch].

v2: Rebase

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |  1 +
 drivers/gpu/drm/i915/i915_driver.c            | 15 +++++++++++++
 drivers/gpu/drm/i915/i915_driver.h            |  5 +++++
 drivers/gpu/drm/i915/i915_drv.h               | 22 -------------------
 drivers/gpu/drm/i915/i915_gpu_error.c         |  1 +
 drivers/gpu/drm/i915/i915_irq.c               |  1 +
 drivers/gpu/drm/i915/i915_mitigations.c       |  1 +
 drivers/gpu/drm/i915/i915_module.c            |  1 +
 drivers/gpu/drm/i915/i915_request.c           |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    |  1 +
 10 files changed, 27 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index 6da68b38f00f..00359ec9d58b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -10,6 +10,7 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_requests.h"
 
+#include "i915_driver.h"
 #include "i915_drv.h"
 
 #if defined(CONFIG_X86)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 3d41f532a5d6..76c84b35884f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1823,6 +1823,21 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_GEM_VM_DESTROY, i915_gem_vm_destroy_ioctl, DRM_RENDER_ALLOW),
 };
 
+/*
+ * Interface history:
+ *
+ * 1.1: Original.
+ * 1.2: Add Power Management
+ * 1.3: Add vblank support
+ * 1.4: Fix cmdbuffer path, add heap destroy
+ * 1.5: Add vblank pipe configuration
+ * 1.6: - New ioctl for scheduling buffer swaps on vertical blank
+ *      - Support vertical blank on secondary display pipe
+ */
+#define DRIVER_MAJOR		1
+#define DRIVER_MINOR		6
+#define DRIVER_PATCHLEVEL	0
+
 static const struct drm_driver i915_drm_driver = {
 	/* Don't use MTRRs here; the Xserver or userspace app should
 	 * deal with them for Intel hardware.
diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i915_driver.h
index 9ef8db4aa0a6..9d11de65daaf 100644
--- a/drivers/gpu/drm/i915/i915_driver.h
+++ b/drivers/gpu/drm/i915/i915_driver.h
@@ -12,6 +12,11 @@ struct pci_dev;
 struct pci_device_id;
 struct drm_i915_private;
 
+#define DRIVER_NAME		"i915"
+#define DRIVER_DESC		"Intel Graphics"
+#define DRIVER_DATE		"20201103"
+#define DRIVER_TIMESTAMP	1604406085
+
 extern const struct dev_pm_ops i915_pm_ops;
 
 int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4ac0fcb9a4ca..6583c7f89b9a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -131,14 +131,6 @@ struct intel_overlay;
 struct intel_overlay_error_state;
 struct vlv_s0ix_state;
 
-/* General customization:
- */
-
-#define DRIVER_NAME		"i915"
-#define DRIVER_DESC		"Intel Graphics"
-#define DRIVER_DATE		"20201103"
-#define DRIVER_TIMESTAMP	1604406085
-
 /* Threshold == 5 for long IRQs, 50 for short */
 #define HPD_STORM_DEFAULT_THRESHOLD 50
 
@@ -280,20 +272,6 @@ struct drm_i915_file_private {
 	unsigned long hang_timestamp;
 };
 
-/* Interface history:
- *
- * 1.1: Original.
- * 1.2: Add Power Management
- * 1.3: Add vblank support
- * 1.4: Fix cmdbuffer path, add heap destroy
- * 1.5: Add vblank pipe configuration
- * 1.6: - New ioctl for scheduling buffer swaps on vertical blank
- *      - Support vertical blank on secondary display pipe
- */
-#define DRIVER_MAJOR		1
-#define DRIVER_MINOR		6
-#define DRIVER_PATCHLEVEL	0
-
 struct sdvo_device_mapping {
 	u8 initialized;
 	u8 dvo_port;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 127ff56c8ce6..54b2360dfd99 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -46,6 +46,7 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_regs.h"
 
+#include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_gpu_error.h"
 #include "i915_memcpy.h"
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 4e97d22ff081..fdd568ba4a16 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -49,6 +49,7 @@
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_rps.h"
 
+#include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "intel_pm.h"
diff --git a/drivers/gpu/drm/i915/i915_mitigations.c b/drivers/gpu/drm/i915/i915_mitigations.c
index 84f12598d145..def7302ef7fe 100644
--- a/drivers/gpu/drm/i915/i915_mitigations.c
+++ b/drivers/gpu/drm/i915/i915_mitigations.c
@@ -8,6 +8,7 @@
 #include <linux/slab.h>
 #include <linux/string.h>
 
+#include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_mitigations.h"
 
diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
index 4d324638aba5..65acd7bf75d0 100644
--- a/drivers/gpu/drm/i915/i915_module.c
+++ b/drivers/gpu/drm/i915/i915_module.c
@@ -9,6 +9,7 @@
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_object.h"
 #include "i915_active.h"
+#include "i915_driver.h"
 #include "i915_params.h"
 #include "i915_pci.h"
 #include "i915_perf.h"
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 55beedb2ced1..582770360ad1 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -44,6 +44,7 @@
 
 #include "i915_active.h"
 #include "i915_deps.h"
+#include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_trace.h"
 #include "intel_pm.h"
diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index 2d6d7bd13c3c..c4e932368b37 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -24,6 +24,7 @@
 #include <linux/random.h>
 
 #include "gt/intel_gt_pm.h"
+#include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_selftest.h"
 
-- 
2.30.2

