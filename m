Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EA64EA9F8
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 11:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD1610E7F9;
	Tue, 29 Mar 2022 09:02:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 066EF10E7F9;
 Tue, 29 Mar 2022 09:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648544536; x=1680080536;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xsUVgZLN4xt6V7lHW36MOcdwqe2Z0K+c3KA+wTAVsxY=;
 b=aTBU5WjUpmA4d9VzW1z//n84Qhxond14ynyKG/+NKNRgH/fLCjOICHLR
 pGbtnMQHenuYaqgpU64oauu7KZmYSD/IEJWDWWTmojonSPRR/hLOOdVT5
 W9baU2lHdOQJtmqe3Xf4HNTt3AUGFAYBrNyDfSe1DP44f9x2oBLgLzls2
 GwQ3vCS7aZ3LdgV7ww8J6TtpePcPnAAQG1JrnYdKXNJgNk4UtrVSPd5cT
 EISHzcgw1obXDTrOWo51UMBy+QQQ4m7tbzCbFzM85yKHnRzh5IUimMFXg
 swJoQzNZCbjTPee4LV2eaMk1PE2PTJDBGvtOk84q6t2b+ArAPiHe6fYfq A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="239133467"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="239133467"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 02:02:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="719448614"
Received: from aburakov-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.216.20])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 02:02:13 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 10:02:04 +0100
Message-Id: <20220329090204.2324499-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v2] drm/i915: Move intel_vtd_active and
 run_as_guest to i915_utils
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Continuation of the effort to declutter i915_drv.h.

Also, component specific helpers which consult the iommu/virtualization
helpers moved to respective component source/header files as appropriate.

v2:
 * s/dev_priv/i915/ in intel_scanout_needs_vtd_wa. (Lucas)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_display.c |  8 ++++-
 drivers/gpu/drm/i915/display/intel_display.h |  2 ++
 drivers/gpu/drm/i915/display/intel_fbc.c     |  3 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c   |  3 +-
 drivers/gpu/drm/i915/gem/i915_gemfs.c        |  3 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c         |  5 +--
 drivers/gpu/drm/i915/gt/intel_gtt.c          | 12 +++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h          |  2 ++
 drivers/gpu/drm/i915/i915_debugfs.c          |  1 +
 drivers/gpu/drm/i915/i915_driver.c           |  3 +-
 drivers/gpu/drm/i915/i915_driver.h           |  4 +++
 drivers/gpu/drm/i915/i915_drv.h              | 37 --------------------
 drivers/gpu/drm/i915/i915_gpu_error.c        |  3 +-
 drivers/gpu/drm/i915/i915_utils.c            | 11 ++++++
 drivers/gpu/drm/i915/i915_utils.h            |  8 +++++
 drivers/gpu/drm/i915/intel_device_info.c     |  3 +-
 drivers/gpu/drm/i915/intel_pch.c             |  3 +-
 18 files changed, 66 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index ac11ff19e47d..c93454f46d30 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -6,6 +6,7 @@
 #include <drm/drm_atomic_state_helper.h>
 
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
@@ -649,7 +650,7 @@ static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
 	for_each_pipe(dev_priv, pipe)
 		data_rate += bw_state->data_rate[pipe];
 
-	if (DISPLAY_VER(dev_priv) >= 13 && intel_vtd_active(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 13 && i915_vtd_active(dev_priv))
 		data_rate = DIV_ROUND_UP(data_rate * 105, 100);
 
 	return data_rate;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index dc6e21e4ef0b..3432d25b1d88 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -77,6 +77,7 @@
 #include "g4x_hdmi.h"
 #include "hsw_ips.h"
 #include "i915_drv.h"
+#include "i915_utils.h"
 #include "icl_dsi.h"
 #include "intel_acpi.h"
 #include "intel_atomic.h"
@@ -1197,7 +1198,7 @@ static bool needs_async_flip_vtd_wa(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	return crtc_state->uapi.async_flip && intel_vtd_active(i915) &&
+	return crtc_state->uapi.async_flip && i915_vtd_active(i915) &&
 		(DISPLAY_VER(i915) == 9 || IS_BROADWELL(i915) || IS_HASWELL(i915));
 }
 
@@ -10699,3 +10700,8 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
 	acpi_video_unregister();
 	intel_opregion_unregister(i915);
 }
+
+bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
+{
+	return DISPLAY_VER(i915) >= 6 && i915_vtd_active(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 8513703086b7..867fa248f042 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -694,4 +694,6 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
 #define I915_STATE_WARN_ON(x)						\
 	I915_STATE_WARN((x), "%s", "WARN_ON(" __stringify(x) ")")
 
+bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 142280b6ce6d..b653f3ba7c66 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -43,6 +43,7 @@
 #include <drm/drm_fourcc.h>
 
 #include "i915_drv.h"
+#include "i915_utils.h"
 #include "i915_vgpu.h"
 #include "intel_cdclk.h"
 #include "intel_de.h"
@@ -1643,7 +1644,7 @@ static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
 static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
 {
 	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
-	if (intel_vtd_active(i915) &&
+	if (i915_vtd_active(i915) &&
 	    (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
 		drm_info(&i915->drm,
 			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 143f61aaa867..47b5e0e342ab 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -17,6 +17,7 @@
 #include "i915_drv.h"
 #include "i915_gem_stolen.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "i915_vgpu.h"
 #include "intel_mchbar_regs.h"
 
@@ -403,7 +404,7 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 		return 0;
 	}
 
-	if (intel_vtd_active(i915) && GRAPHICS_VER(i915) < 8) {
+	if (i915_vtd_active(i915) && GRAPHICS_VER(i915) < 8) {
 		drm_notice(&i915->drm,
 			   "%s, disabling use of stolen memory\n",
 			   "DMAR active");
diff --git a/drivers/gpu/drm/i915/gem/i915_gemfs.c b/drivers/gpu/drm/i915/gem/i915_gemfs.c
index 7271fbf813fa..ee87874e59dc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gemfs.c
+++ b/drivers/gpu/drm/i915/gem/i915_gemfs.c
@@ -9,6 +9,7 @@
 
 #include "i915_drv.h"
 #include "i915_gemfs.h"
+#include "i915_utils.h"
 
 int i915_gemfs_init(struct drm_i915_private *i915)
 {
@@ -32,7 +33,7 @@ int i915_gemfs_init(struct drm_i915_private *i915)
 	 */
 
 	opts = NULL;
-	if (intel_vtd_active(i915)) {
+	if (i915_vtd_active(i915)) {
 		if (IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE)) {
 			opts = huge_opt;
 			drm_info(&i915->drm,
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 04191fe2ee34..86b2cd2a9f34 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -18,6 +18,7 @@
 #include "intel_gt_regs.h"
 #include "i915_drv.h"
 #include "i915_scatterlist.h"
+#include "i915_utils.h"
 #include "i915_vgpu.h"
 
 #include "intel_gtt.h"
@@ -104,7 +105,7 @@ static bool needs_idle_maps(struct drm_i915_private *i915)
 	 * Query intel_iommu to see if we need the workaround. Presumably that
 	 * was loaded first.
 	 */
-	if (!intel_vtd_active(i915))
+	if (!i915_vtd_active(i915))
 		return false;
 
 	if (GRAPHICS_VER(i915) == 5 && IS_MOBILE(i915))
@@ -1258,7 +1259,7 @@ int i915_ggtt_probe_hw(struct drm_i915_private *i915)
 	if (ret)
 		return ret;
 
-	if (intel_vtd_active(i915))
+	if (i915_vtd_active(i915))
 		drm_info(&i915->drm, "VT-d active for gfx access\n");
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 719fd31eee80..b67831833c9a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -13,10 +13,22 @@
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 #include "i915_trace.h"
+#include "i915_utils.h"
 #include "intel_gt.h"
 #include "intel_gt_regs.h"
 #include "intel_gtt.h"
 
+
+static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
+{
+	return IS_BROXTON(i915) && i915_vtd_active(i915);
+}
+
+bool intel_vm_no_concurrent_access_wa(struct drm_i915_private *i915)
+{
+	return IS_CHERRYVIEW(i915) || intel_ggtt_update_needs_vtd_wa(i915);
+}
+
 struct drm_i915_gem_object *alloc_pt_lmem(struct i915_address_space *vm, int sz)
 {
 	struct drm_i915_gem_object *obj;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 4529b5e9f6e6..5922e2cf4d8d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -382,6 +382,8 @@ struct i915_ppgtt {
 #define i915_is_dpt(vm) ((vm)->is_dpt)
 #define i915_is_ggtt_or_dpt(vm) (i915_is_ggtt(vm) || i915_is_dpt(vm))
 
+bool intel_vm_no_concurrent_access_wa(struct drm_i915_private *i915);
+
 int __must_check
 i915_vm_lock_objects(struct i915_address_space *vm, struct i915_gem_ww_ctx *ww);
 
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 445b4da23950..94e5c29d2ee3 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -48,6 +48,7 @@
 
 #include "i915_debugfs.h"
 #include "i915_debugfs_params.h"
+#include "i915_driver.h"
 #include "i915_irq.h"
 #include "i915_scheduler.h"
 #include "intel_mchbar_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 64e6f76861f9..15808ecc421a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -88,6 +88,7 @@
 #include "i915_suspend.h"
 #include "i915_switcheroo.h"
 #include "i915_sysfs.h"
+#include "i915_utils.h"
 #include "i915_vgpu.h"
 #include "intel_dram.h"
 #include "intel_gvt.h"
@@ -744,7 +745,7 @@ void
 i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p)
 {
 	drm_printf(p, "iommu: %s\n",
-		   str_enabled_disabled(intel_vtd_active(i915)));
+		   str_enabled_disabled(i915_vtd_active(i915)));
 }
 
 static void i915_welcome_messages(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i915_driver.h
index 9d11de65daaf..44ec543d92cb 100644
--- a/drivers/gpu/drm/i915/i915_driver.h
+++ b/drivers/gpu/drm/i915/i915_driver.h
@@ -11,6 +11,7 @@
 struct pci_dev;
 struct pci_device_id;
 struct drm_i915_private;
+struct drm_printer;
 
 #define DRIVER_NAME		"i915"
 #define DRIVER_DESC		"Intel Graphics"
@@ -26,4 +27,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915);
 int i915_driver_resume_switcheroo(struct drm_i915_private *i915);
 int i915_driver_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state);
 
+void
+i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
+
 #endif /* __I915_DRIVER_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 217c09422711..799f386a7ef2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -32,9 +32,6 @@
 
 #include <uapi/drm/i915_drm.h>
 
-#include <asm/hypervisor.h>
-
-#include <linux/intel-iommu.h>
 #include <linux/pm_qos.h>
 
 #include <drm/drm_connector.h>
@@ -1387,43 +1384,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_PERCTX_PREEMPT_CTRL(i915) \
 	((GRAPHICS_VER(i915) >= 9) &&  GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
 
-static inline bool run_as_guest(void)
-{
-	return !hypervisor_is_type(X86_HYPER_NATIVE);
-}
-
 #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
 					      IS_ALDERLAKE_S(dev_priv))
 
-static inline bool intel_vtd_active(struct drm_i915_private *i915)
-{
-	if (device_iommu_mapped(i915->drm.dev))
-		return true;
-
-	/* Running as a guest, we assume the host is enforcing VT'd */
-	return run_as_guest();
-}
-
-void
-i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
-
-static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *dev_priv)
-{
-	return DISPLAY_VER(dev_priv) >= 6 && intel_vtd_active(dev_priv);
-}
-
-static inline bool
-intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
-{
-	return IS_BROXTON(i915) && intel_vtd_active(i915);
-}
-
-static inline bool
-intel_vm_no_concurrent_access_wa(struct drm_i915_private *i915)
-{
-	return IS_CHERRYVIEW(i915) || intel_ggtt_update_needs_vtd_wa(i915);
-}
-
 /* i915_gem.c */
 void i915_gem_init_early(struct drm_i915_private *dev_priv);
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 795f91a88d1d..5478b1dd26bd 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -55,6 +55,7 @@
 #include "i915_gpu_error.h"
 #include "i915_memcpy.h"
 #include "i915_scatterlist.h"
+#include "i915_utils.h"
 
 #define ALLOW_FAIL (__GFP_KSWAPD_RECLAIM | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
 #define ATOMIC_MAYFAIL (GFP_ATOMIC | __GFP_NOWARN)
@@ -1892,7 +1893,7 @@ static void capture_gen(struct i915_gpu_coredump *error)
 	error->wakelock = atomic_read(&i915->runtime_pm.wakeref_count);
 	error->suspended = i915->runtime_pm.suspended;
 
-	error->iommu = intel_vtd_active(i915);
+	error->iommu = i915_vtd_active(i915);
 	error->reset_count = i915_reset_count(&i915->gpu_error);
 	error->suspend_count = i915->suspend_count;
 
diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
index f9e780dee9de..29fd02bf5ea8 100644
--- a/drivers/gpu/drm/i915/i915_utils.c
+++ b/drivers/gpu/drm/i915/i915_utils.c
@@ -3,6 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/device.h>
+
 #include <drm/drm_drv.h>
 
 #include "i915_drv.h"
@@ -114,3 +116,12 @@ void set_timer_ms(struct timer_list *t, unsigned long timeout)
 	/* Keep t->expires = 0 reserved to indicate a canceled timer. */
 	mod_timer(t, jiffies + timeout ?: 1);
 }
+
+bool i915_vtd_active(struct drm_i915_private *i915)
+{
+	if (device_iommu_mapped(i915->drm.dev))
+		return true;
+
+	/* Running as a guest, we assume the host is enforcing VT'd */
+	return i915_run_as_guest();
+}
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 3ff9611ff81c..b2d89c43f24d 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -32,6 +32,7 @@
 #include <linux/types.h>
 #include <linux/workqueue.h>
 #include <linux/sched/clock.h>
+#include <asm/hypervisor.h>
 
 struct drm_i915_private;
 struct timer_list;
@@ -425,4 +426,11 @@ static inline bool timer_expired(const struct timer_list *t)
 	return timer_active(t) && !timer_pending(t);
 }
 
+static inline bool i915_run_as_guest(void)
+{
+	return !hypervisor_is_type(X86_HYPER_NATIVE);
+}
+
+bool i915_vtd_active(struct drm_i915_private *i915);
+
 #endif /* !__I915_UTILS_H */
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 8d458226f478..da30be07544d 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -31,6 +31,7 @@
 #include "display/intel_de.h"
 #include "intel_device_info.h"
 #include "i915_drv.h"
+#include "i915_utils.h"
 
 #define PLATFORM_NAME(x) [INTEL_##x] = #x
 static const char * const platform_names[] = {
@@ -389,7 +390,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			info->display.has_dsc = 0;
 	}
 
-	if (GRAPHICS_VER(dev_priv) == 6 && intel_vtd_active(dev_priv)) {
+	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
 		drm_info(&dev_priv->drm,
 			 "Disabling ppGTT for VT-d support\n");
 		info->ppgtt_type = INTEL_PPGTT_NONE;
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index 4cce044efde2..e2b2bbdc0714 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_utils.h"
 #include "intel_pch.h"
 
 /* Map PCH device id to PCH type, or PCH_NONE if unknown. */
@@ -256,7 +257,7 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 		dev_priv->pch_type = PCH_NOP;
 		dev_priv->pch_id = 0;
 	} else if (!pch) {
-		if (run_as_guest() && HAS_DISPLAY(dev_priv)) {
+		if (i915_run_as_guest() && HAS_DISPLAY(dev_priv)) {
 			intel_virt_detect_pch(dev_priv, &id, &pch_type);
 			dev_priv->pch_type = pch_type;
 			dev_priv->pch_id = id;
-- 
2.32.0

