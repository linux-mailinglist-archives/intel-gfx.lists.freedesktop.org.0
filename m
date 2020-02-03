Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A2315136F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 00:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2F506ED5C;
	Mon,  3 Feb 2020 23:41:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F4BF6ED5C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 23:41:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 15:29:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="225317627"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 03 Feb 2020 15:29:11 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 15:28:34 -0800
Message-Id: <20200203232838.14822-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/10] drm/i915/uc: Improve tracking of uC
 init status
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

To be able to setup GuC submission functions during engine init we need
to commit to using GuC as soon as possible.
Currently, the only thing that can stop us from using the
microcontrollers once we've fetched the blobs is a fundamental
error (e.g. OOM); given that if we hit such an error we can't really
fall-back to anything, we can "officialize" the FW fetching completion
as the moment at which we're committing to using GuC.

To better differentiate this case, the uses_guc check, which indicates
that GuC is supported and was selected in modparam, is renamed to
wants_guc and a new uses_guc is introduced to represent the case were
we're committed to using the GuC. Note that uses_guc does still not imply
that the blob is actually loaded on the HW (is_running is the check for
that). Also, since we need to have attempted the fetch for the result
of uses_guc to be meaningful, we need to make sure we've moved away
from INTEL_UC_FIRMWARE_SELECTED.

All the GuC changes have been mirrored on the HuC for coherency.

v2: split fetch return changes and new macros to their own patches,
    support HuC only if GuC is wanted, improve "used" state
    description (Michal)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Fernando Pacheco <fernando.pacheco@intel.com> #v1
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h    |  8 +++++++-
 drivers/gpu/drm/i915/gt/uc/intel_huc.h    |  8 +++++++-
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c     | 23 ++++++++++++----------
 drivers/gpu/drm/i915/gt/uc/intel_uc.h     | 24 ++++++++++++++++++++++-
 5 files changed, 51 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 7ca9e5159f05..f6b33745ae0b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -143,11 +143,17 @@ static inline bool intel_guc_is_supported(struct intel_guc *guc)
 	return intel_uc_fw_is_supported(&guc->fw);
 }
 
-static inline bool intel_guc_is_enabled(struct intel_guc *guc)
+static inline bool intel_guc_is_wanted(struct intel_guc *guc)
 {
 	return intel_uc_fw_is_enabled(&guc->fw);
 }
 
+static inline bool intel_guc_is_used(struct intel_guc *guc)
+{
+	GEM_BUG_ON(__intel_uc_fw_status(&guc->fw) == INTEL_UC_FIRMWARE_SELECTED);
+	return intel_uc_fw_is_available(&guc->fw);
+}
+
 static inline bool intel_guc_is_fw_running(struct intel_guc *guc)
 {
 	return intel_uc_fw_is_running(&guc->fw);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
index 644c059fe01d..a40b9cfc6c22 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
@@ -41,11 +41,17 @@ static inline bool intel_huc_is_supported(struct intel_huc *huc)
 	return intel_uc_fw_is_supported(&huc->fw);
 }
 
-static inline bool intel_huc_is_enabled(struct intel_huc *huc)
+static inline bool intel_huc_is_wanted(struct intel_huc *huc)
 {
 	return intel_uc_fw_is_enabled(&huc->fw);
 }
 
+static inline bool intel_huc_is_used(struct intel_huc *huc)
+{
+	GEM_BUG_ON(__intel_uc_fw_status(&huc->fw) == INTEL_UC_FIRMWARE_SELECTED);
+	return intel_uc_fw_is_available(&huc->fw);
+}
+
 static inline bool intel_huc_is_authenticated(struct intel_huc *huc)
 {
 	return intel_uc_fw_is_running(&huc->fw);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
index eee193bf2cc4..9cdf4cbe691c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
@@ -20,7 +20,7 @@ void intel_huc_fw_init_early(struct intel_huc *huc)
 	struct drm_i915_private *i915 = gt->i915;
 
 	intel_uc_fw_init_early(&huc->fw, INTEL_UC_FW_TYPE_HUC,
-			       intel_uc_uses_guc(uc),
+			       intel_uc_wants_guc(uc),
 			       INTEL_INFO(i915)->platform, INTEL_REVID(i915));
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index affc4d6f9ead..654d7c0c757a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -48,17 +48,17 @@ static void __confirm_options(struct intel_uc *uc)
 	DRM_DEV_DEBUG_DRIVER(i915->drm.dev,
 			     "enable_guc=%d (guc:%s submission:%s huc:%s)\n",
 			     i915_modparams.enable_guc,
-			     yesno(intel_uc_uses_guc(uc)),
+			     yesno(intel_uc_wants_guc(uc)),
 			     yesno(intel_uc_uses_guc_submission(uc)),
-			     yesno(intel_uc_uses_huc(uc)));
+			     yesno(intel_uc_wants_huc(uc)));
 
 	if (i915_modparams.enable_guc == -1)
 		return;
 
 	if (i915_modparams.enable_guc == 0) {
-		GEM_BUG_ON(intel_uc_uses_guc(uc));
+		GEM_BUG_ON(intel_uc_wants_guc(uc));
 		GEM_BUG_ON(intel_uc_uses_guc_submission(uc));
-		GEM_BUG_ON(intel_uc_uses_huc(uc));
+		GEM_BUG_ON(intel_uc_wants_huc(uc));
 		return;
 	}
 
@@ -93,7 +93,7 @@ void intel_uc_init_early(struct intel_uc *uc)
 
 	__confirm_options(uc);
 
-	if (intel_uc_uses_guc(uc))
+	if (intel_uc_wants_guc(uc))
 		uc->ops = &uc_ops_on;
 	else
 		uc->ops = &uc_ops_off;
@@ -257,13 +257,13 @@ static void __uc_fetch_firmwares(struct intel_uc *uc)
 {
 	int err;
 
-	GEM_BUG_ON(!intel_uc_uses_guc(uc));
+	GEM_BUG_ON(!intel_uc_wants_guc(uc));
 
 	err = intel_uc_fw_fetch(&uc->guc.fw);
 	if (err)
 		return;
 
-	if (intel_uc_uses_huc(uc))
+	if (intel_uc_wants_huc(uc))
 		intel_uc_fw_fetch(&uc->huc.fw);
 }
 
@@ -279,7 +279,10 @@ static void __uc_init(struct intel_uc *uc)
 	struct intel_huc *huc = &uc->huc;
 	int ret;
 
-	GEM_BUG_ON(!intel_uc_uses_guc(uc));
+	GEM_BUG_ON(!intel_uc_wants_guc(uc));
+
+	if (!intel_uc_uses_guc(uc))
+		return;
 
 	/* XXX: GuC submission is unavailable for now */
 	GEM_BUG_ON(intel_uc_supports_guc_submission(uc));
@@ -322,7 +325,7 @@ static int uc_init_wopcm(struct intel_uc *uc)
 	struct intel_uncore *uncore = gt->uncore;
 	u32 base = intel_wopcm_guc_base(&gt->i915->wopcm);
 	u32 size = intel_wopcm_guc_size(&gt->i915->wopcm);
-	u32 huc_agent = intel_uc_uses_huc(uc) ? HUC_LOADING_AGENT_GUC : 0;
+	u32 huc_agent = intel_uc_wants_huc(uc) ? HUC_LOADING_AGENT_GUC : 0;
 	u32 mask;
 	int err;
 
@@ -402,7 +405,7 @@ static int __uc_init_hw(struct intel_uc *uc)
 	int ret, attempts;
 
 	GEM_BUG_ON(!intel_uc_supports_guc(uc));
-	GEM_BUG_ON(!intel_uc_uses_guc(uc));
+	GEM_BUG_ON(!intel_uc_wants_guc(uc));
 
 	if (!intel_uc_fw_is_available(&guc->fw)) {
 		ret = __uc_check_hw(uc) ||
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 2ce993ceb60a..a41aaf353f88 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -40,6 +40,27 @@ void intel_uc_runtime_suspend(struct intel_uc *uc);
 int intel_uc_resume(struct intel_uc *uc);
 int intel_uc_runtime_resume(struct intel_uc *uc);
 
+/*
+ * We need to know as early as possible if we're going to use GuC or not to
+ * take the correct setup paths. Additionally, once we've started loading the
+ * GuC, it is unsafe to keep executing without it because some parts of the HW,
+ * a subset of which is not cleaned on GT reset, will start expecting the GuC FW
+ * to be running.
+ * To solve both these requirements, we commit to using the microcontrollers if
+ * the relevant modparam is set and the blobs are found on the system. At this
+ * stage, the only thing that can stop us from attempting to load the blobs on
+ * the HW and use them is a fundamental issue (e.g. no memory for our
+ * structures); if we hit such a problem during driver load we're broken even
+ * without GuC, so there is no point in trying to fall back.
+ *
+ * Given the above, we can be in one of 4 states, with the last one implying
+ * we're committed to using the microcontroller:
+ * - Not supported: not available in HW and/or firmware not defined.
+ * - Supported: available in HW and firmware defined.
+ * - Wanted: supported + enabled in modparam.
+ * - In use: wanted + firmware found on the system and successfully fetched.
+ */
+
 #define __uc_state_checker(x, state, required) \
 static inline bool intel_uc_##state##_##x(struct intel_uc *uc) \
 { \
@@ -48,7 +69,8 @@ static inline bool intel_uc_##state##_##x(struct intel_uc *uc) \
 
 #define uc_state_checkers(x) \
 __uc_state_checker(x, supports, supported) \
-__uc_state_checker(x, uses, enabled)
+__uc_state_checker(x, wants, wanted) \
+__uc_state_checker(x, uses, used)
 
 uc_state_checkers(guc);
 uc_state_checkers(huc);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
