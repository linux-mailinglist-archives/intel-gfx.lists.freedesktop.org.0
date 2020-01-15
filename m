Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA6313B6EC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 02:32:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4932F6E81D;
	Wed, 15 Jan 2020 01:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D37296E81D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 01:32:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 17:32:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; d="scan'208";a="305337582"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 14 Jan 2020 17:32:37 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 17:31:41 -0800
Message-Id: <20200115013143.34961-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/guc: Apply new uC status tracking
 to GuC submission as well
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

To be able to differentiate the before and after of our commitment to
GuC submission, which will be used in follow-up patches to early set-up
the submission structures.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 12 ++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 17 +++++++++--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  9 ++----
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 14 ++++-----
 drivers/gpu/drm/i915/gt/uc/intel_uc.h         | 29 +++++++------------
 drivers/gpu/drm/i915/gvt/scheduler.c          |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  6 ----
 drivers/gpu/drm/i915/intel_gvt.c              |  2 +-
 8 files changed, 42 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index c46f5ae77348..58884e06e548 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -207,7 +207,7 @@ static u32 guc_ctl_feature_flags(struct intel_guc *guc)
 {
 	u32 flags = 0;
 
-	if (!intel_guc_is_submission_supported(guc))
+	if (!intel_guc_submission_is_used(guc))
 		flags |= GUC_CTL_DISABLE_SCHEDULER;
 
 	return flags;
@@ -217,7 +217,7 @@ static u32 guc_ctl_ctxinfo_flags(struct intel_guc *guc)
 {
 	u32 flags = 0;
 
-	if (intel_guc_is_submission_supported(guc)) {
+	if (intel_guc_submission_is_used(guc)) {
 		u32 ctxnum, base;
 
 		base = intel_guc_ggtt_offset(guc, guc->stage_desc_pool);
@@ -348,7 +348,7 @@ int intel_guc_init(struct intel_guc *guc)
 	if (ret)
 		goto err_ads;
 
-	if (intel_guc_is_submission_supported(guc)) {
+	if (intel_guc_submission_is_used(guc)) {
 		/*
 		 * This is stuff we need to have available at fw load time
 		 * if we are planning to enable submission later
@@ -389,7 +389,7 @@ void intel_guc_fini(struct intel_guc *guc)
 
 	i915_ggtt_disable_guc(gt->ggtt);
 
-	if (intel_guc_is_submission_supported(guc))
+	if (intel_guc_submission_is_used(guc))
 		intel_guc_submission_fini(guc);
 
 	intel_guc_ct_fini(&guc->ct);
@@ -544,7 +544,7 @@ int intel_guc_suspend(struct intel_guc *guc)
 	 * If GuC communication is enabled but submission is not supported,
 	 * we do not need to suspend the GuC.
 	 */
-	if (!intel_guc_submission_is_enabled(guc))
+	if (!intel_guc_submission_is_used(guc) || !intel_guc_is_running(guc))
 		return 0;
 
 	/*
@@ -609,7 +609,7 @@ int intel_guc_resume(struct intel_guc *guc)
 	 * we do not need to resume the GuC but we do need to enable the
 	 * GuC communication on resume (above).
 	 */
-	if (!intel_guc_submission_is_enabled(guc))
+	if (!intel_guc_submission_is_used(guc) || !intel_guc_is_running(guc))
 		return 0;
 
 	return intel_guc_send(guc, action, ARRAY_SIZE(action));
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index f9e0be843992..1ad446f4a022 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -39,7 +39,7 @@ struct intel_guc {
 		void (*disable)(struct intel_guc *guc);
 	} interrupts;
 
-	bool submission_supported;
+	bool submission_selected;
 
 	struct i915_vma *ads_vma;
 	struct __guc_ads_blob *ads_blob;
@@ -167,9 +167,20 @@ static inline int intel_guc_sanitize(struct intel_guc *guc)
 	return 0;
 }
 
-static inline bool intel_guc_is_submission_supported(struct intel_guc *guc)
+static inline bool intel_guc_submission_is_supported(struct intel_guc *guc)
 {
-	return guc->submission_supported;
+	/* XXX: GuC submission is unavailable for now */
+	return false;
+}
+
+static inline bool intel_guc_submission_is_wanted(struct intel_guc *guc)
+{
+	return guc->submission_selected;
+}
+
+static inline bool intel_guc_submission_is_used(struct intel_guc *guc)
+{
+	return intel_guc_is_used(guc) && intel_guc_submission_is_wanted(guc);
 }
 
 static inline void intel_guc_enable_msg(struct intel_guc *guc, u32 mask)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 9e42324fdecd..1beaa77f9bb6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -660,12 +660,9 @@ void intel_guc_submission_disable(struct intel_guc *guc)
 	guc_proc_desc_fini(guc);
 }
 
-static bool __guc_submission_support(struct intel_guc *guc)
+static bool __guc_submission_selected(struct intel_guc *guc)
 {
-	/* XXX: GuC submission is unavailable for now */
-	return false;
-
-	if (!intel_guc_is_supported(guc))
+	if (!intel_guc_submission_is_supported(guc))
 		return false;
 
 	return i915_modparams.enable_guc & ENABLE_GUC_SUBMISSION;
@@ -673,7 +670,7 @@ static bool __guc_submission_support(struct intel_guc *guc)
 
 void intel_guc_submission_init_early(struct intel_guc *guc)
 {
-	guc->submission_supported = __guc_submission_support(guc);
+	guc->submission_selected = __guc_submission_selected(guc);
 }
 
 bool intel_engine_in_guc_submission_mode(const struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index d57b731952ef..7e112d4ebdc5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -49,7 +49,7 @@ static void __confirm_options(struct intel_uc *uc)
 			     "enable_guc=%d (guc:%s submission:%s huc:%s)\n",
 			     i915_modparams.enable_guc,
 			     yesno(intel_uc_wants_guc(uc)),
-			     yesno(intel_uc_uses_guc_submission(uc)),
+			     yesno(intel_uc_wants_guc_submission(uc)),
 			     yesno(intel_uc_wants_huc(uc)));
 
 	if (i915_modparams.enable_guc == -1)
@@ -57,7 +57,7 @@ static void __confirm_options(struct intel_uc *uc)
 
 	if (i915_modparams.enable_guc == 0) {
 		GEM_BUG_ON(intel_uc_wants_guc(uc));
-		GEM_BUG_ON(intel_uc_uses_guc_submission(uc));
+		GEM_BUG_ON(intel_uc_wants_guc_submission(uc));
 		GEM_BUG_ON(intel_uc_wants_huc(uc));
 		return;
 	}
@@ -288,7 +288,7 @@ static int __uc_init(struct intel_uc *uc)
 		return -ENOMEM;
 
 	/* XXX: GuC submission is unavailable for now */
-	GEM_BUG_ON(intel_uc_supports_guc_submission(uc));
+	GEM_BUG_ON(intel_uc_uses_guc_submission(uc));
 
 	ret = intel_guc_init(guc);
 	if (ret)
@@ -420,7 +420,7 @@ static int __uc_init_hw(struct intel_uc *uc)
 	if (!intel_uc_fw_is_available(&guc->fw)) {
 		ret = __uc_check_hw(uc) ||
 		      intel_uc_fw_is_overridden(&guc->fw) ||
-		      intel_uc_supports_guc_submission(uc) ?
+		      intel_uc_wants_guc_submission(uc) ?
 		      intel_uc_fw_status_to_error(guc->fw.status) : 0;
 		goto err_out;
 	}
@@ -472,14 +472,14 @@ static int __uc_init_hw(struct intel_uc *uc)
 	if (ret)
 		goto err_communication;
 
-	if (intel_uc_supports_guc_submission(uc))
+	if (intel_uc_uses_guc_submission(uc))
 		intel_guc_submission_enable(guc);
 
 	dev_info(i915->drm.dev, "%s firmware %s version %u.%u %s:%s\n",
 		 intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_GUC), guc->fw.path,
 		 guc->fw.major_ver_found, guc->fw.minor_ver_found,
 		 "submission",
-		 enableddisabled(intel_uc_supports_guc_submission(uc)));
+		 enableddisabled(intel_uc_uses_guc_submission(uc)));
 
 	if (intel_uc_uses_huc(uc)) {
 		dev_info(i915->drm.dev, "%s firmware %s version %u.%u %s:%s\n",
@@ -521,7 +521,7 @@ static void __uc_fini_hw(struct intel_uc *uc)
 	if (!intel_guc_is_running(guc))
 		return;
 
-	if (intel_uc_supports_guc_submission(uc))
+	if (intel_uc_uses_guc_submission(uc))
 		intel_guc_submission_disable(guc);
 
 	if (guc_communication_enabled(guc))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 2d9f17196761..78350cdc2d63 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -61,33 +61,24 @@ int intel_uc_runtime_resume(struct intel_uc *uc);
  * - In use: wanted and firmware found on the system.
  */
 
-#define __uc_state_checker(x, state, required) \
-static inline bool intel_uc_##state##_##x(struct intel_uc *uc) \
+#define __uc_state_checker(x, func, state, required) \
+static inline bool intel_uc_##state##_##func(struct intel_uc *uc) \
 { \
-	return intel_##x##_is_##required(&uc->x); \
+	return intel_##func##_is_##required(&uc->x); \
 }
 
-#define uc_state_checkers(x) \
-__uc_state_checker(x, supports, supported) \
-__uc_state_checker(x, wants, wanted) \
-__uc_state_checker(x, uses, used)
+#define uc_state_checkers(x, func) \
+__uc_state_checker(x, func, supports, supported) \
+__uc_state_checker(x, func, wants, wanted) \
+__uc_state_checker(x, func, uses, used)
 
-uc_state_checkers(guc);
-uc_state_checkers(huc);
+uc_state_checkers(guc, guc);
+uc_state_checkers(huc, huc);
+uc_state_checkers(guc, guc_submission);
 
 #undef uc_state_checkers
 #undef __uc_state_checker
 
-static inline bool intel_uc_supports_guc_submission(struct intel_uc *uc)
-{
-	return intel_guc_is_submission_supported(&uc->guc);
-}
-
-static inline bool intel_uc_uses_guc_submission(struct intel_uc *uc)
-{
-	return intel_guc_is_submission_supported(&uc->guc);
-}
-
 #define intel_uc_ops_function(_NAME, _OPS, _TYPE, _RET) \
 static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
 { \
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 5fe00ee6bd1b..e8c0885df978 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -1247,7 +1247,7 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 		intel_context_set_single_submission(ce);
 
 		/* Max ring buffer size */
-		if (!intel_uc_uses_guc_submission(&engine->gt->uc)) {
+		if (!intel_uc_wants_guc_submission(&engine->gt->uc)) {
 			const unsigned int ring_size = 512 * SZ_4K;
 
 			ce->ring = __intel_context_ring_size(ring_size);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 24d581c63667..b1469625c85a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2042,10 +2042,4 @@ i915_coherent_map_type(struct drm_i915_private *i915)
 	return HAS_LLC(i915) ? I915_MAP_WB : I915_MAP_WC;
 }
 
-static inline bool intel_guc_submission_is_enabled(struct intel_guc *guc)
-{
-	return intel_guc_is_submission_supported(guc) &&
-		intel_guc_is_running(guc);
-}
-
 #endif
diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
index 481c6de9f4d6..8f1ed15c0ed8 100644
--- a/drivers/gpu/drm/i915/intel_gvt.c
+++ b/drivers/gpu/drm/i915/intel_gvt.c
@@ -103,7 +103,7 @@ int intel_gvt_init(struct drm_i915_private *dev_priv)
 		return 0;
 	}
 
-	if (intel_uc_uses_guc_submission(&dev_priv->gt.uc)) {
+	if (intel_uc_wants_guc_submission(&dev_priv->gt.uc)) {
 		DRM_ERROR("i915 GVT-g loading failed due to Graphics virtualization is not yet supported with GuC submission\n");
 		return -EIO;
 	}
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
