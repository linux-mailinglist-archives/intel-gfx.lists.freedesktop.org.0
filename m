Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAF21376E2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 20:23:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9746EA92;
	Fri, 10 Jan 2020 19:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB9696EA91
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 19:23:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 11:23:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="224287326"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 10 Jan 2020 11:23:43 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00AJNgFW023314; Fri, 10 Jan 2020 19:23:43 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 19:23:35 +0000
Message-Id: <20200110192335.23264-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200110162930.88968-2-michal.wajdeczko@intel.com>
References: <20200110162930.88968-2-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/4] drm/i915/uc: Add ops to intel_uc
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of spreading multiple conditionals across the uC code
to find out current mode of uC operation, start using predefined
set of function pointers that reflect that mode.

Begin with pair of init_hw/fini_hw functions that are responsible
for uC hardware initialization and cleanup.

v2: drop ops_none, use macro to generate ops helpers
v3: reuse __uc_check_hw to avoid redundant comment

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 46 +++++++++++++++++++++------
 drivers/gpu/drm/i915/gt/uc/intel_uc.h | 21 ++++++++++--
 2 files changed, 55 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 3ffc6267f96e..5e9b3fa7bc74 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -12,6 +12,19 @@
 
 #include "i915_drv.h"
 
+static int __uc_check_hw(struct intel_uc *uc);
+static int __uc_init_hw(struct intel_uc *uc);
+static void __uc_fini_hw(struct intel_uc *uc);
+
+static const struct intel_uc_ops uc_ops_off = {
+	.init_hw = __uc_check_hw,
+};
+
+static const struct intel_uc_ops uc_ops_on = {
+	.init_hw = __uc_init_hw,
+	.fini_hw = __uc_fini_hw,
+};
+
 /* Reset GuC providing us with fresh state for both GuC and HuC.
  */
 static int __intel_uc_reset_hw(struct intel_uc *uc)
@@ -89,6 +102,11 @@ void intel_uc_init_early(struct intel_uc *uc)
 	intel_huc_init_early(&uc->huc);
 
 	__confirm_options(uc);
+
+	if (intel_uc_uses_guc(uc))
+		uc->ops = &uc_ops_on;
+	else
+		uc->ops = &uc_ops_off;
 }
 
 void intel_uc_driver_late_release(struct intel_uc *uc)
@@ -380,13 +398,8 @@ static bool uc_is_wopcm_locked(struct intel_uc *uc)
 	       (intel_uncore_read(uncore, DMA_GUC_WOPCM_OFFSET) & GUC_WOPCM_OFFSET_VALID);
 }
 
-int intel_uc_init_hw(struct intel_uc *uc)
+static int __uc_check_hw(struct intel_uc *uc)
 {
-	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
-	struct intel_guc *guc = &uc->guc;
-	struct intel_huc *huc = &uc->huc;
-	int ret, attempts;
-
 	if (!intel_uc_supports_guc(uc))
 		return 0;
 
@@ -395,11 +408,24 @@ int intel_uc_init_hw(struct intel_uc *uc)
 	 * before on this system after reboot, otherwise we risk GPU hangs.
 	 * To check if GuC was loaded before we look at WOPCM registers.
 	 */
-	if (!intel_uc_uses_guc(uc) && !uc_is_wopcm_locked(uc))
-		return 0;
+	if (uc_is_wopcm_locked(uc))
+		return -EIO;
+
+	return 0;
+}
+
+static int __uc_init_hw(struct intel_uc *uc)
+{
+	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
+	struct intel_guc *guc = &uc->guc;
+	struct intel_huc *huc = &uc->huc;
+	int ret, attempts;
+
+	GEM_BUG_ON(!intel_uc_supports_guc(uc));
+	GEM_BUG_ON(!intel_uc_uses_guc(uc));
 
 	if (!intel_uc_fw_is_available(&guc->fw)) {
-		ret = uc_is_wopcm_locked(uc) ||
+		ret = __uc_check_hw(uc) ||
 		      intel_uc_fw_is_overridden(&guc->fw) ||
 		      intel_uc_supports_guc_submission(uc) ?
 		      intel_uc_fw_status_to_error(guc->fw.status) : 0;
@@ -495,7 +521,7 @@ int intel_uc_init_hw(struct intel_uc *uc)
 	return -EIO;
 }
 
-void intel_uc_fini_hw(struct intel_uc *uc)
+static void __uc_fini_hw(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 527995c21196..d5c2d4cf1d38 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -10,7 +10,15 @@
 #include "intel_huc.h"
 #include "i915_params.h"
 
+struct intel_uc;
+
+struct intel_uc_ops {
+	int (*init_hw)(struct intel_uc *uc);
+	void (*fini_hw)(struct intel_uc *uc);
+};
+
 struct intel_uc {
+	struct intel_uc_ops const *ops;
 	struct intel_guc guc;
 	struct intel_huc huc;
 
@@ -25,8 +33,6 @@ void intel_uc_fetch_firmwares(struct intel_uc *uc);
 void intel_uc_cleanup_firmwares(struct intel_uc *uc);
 void intel_uc_sanitize(struct intel_uc *uc);
 void intel_uc_init(struct intel_uc *uc);
-int intel_uc_init_hw(struct intel_uc *uc);
-void intel_uc_fini_hw(struct intel_uc *uc);
 void intel_uc_fini(struct intel_uc *uc);
 void intel_uc_reset_prepare(struct intel_uc *uc);
 void intel_uc_suspend(struct intel_uc *uc);
@@ -64,4 +70,15 @@ static inline bool intel_uc_uses_huc(struct intel_uc *uc)
 	return intel_huc_is_enabled(&uc->huc);
 }
 
+#define intel_uc_ops_function(_NAME, _OPS, _TYPE, _RET) \
+static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
+{ \
+	if (uc->ops->_OPS) \
+		return uc->ops->_OPS(uc); \
+	return _RET; \
+}
+intel_uc_ops_function(init_hw, init_hw, int, 0);
+intel_uc_ops_function(fini_hw, fini_hw, void, );
+#undef intel_uc_ops_function
+
 #endif
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
