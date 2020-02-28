Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF38172ED2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 03:29:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AD606EDBF;
	Fri, 28 Feb 2020 02:29:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 196456EDC3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 02:29:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 18:29:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="227392659"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 27 Feb 2020 18:29:37 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 18:28:39 -0800
Message-Id: <20200228022843.1936-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
References: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/uc: mark structure passed to
 checker functions as const
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

Follow-up patches will pass const objects from debugfs to some those
functions, so we need to be ready.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.h             |  6 +++---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h         | 10 +++++-----
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h      |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.h  |  6 +++---
 drivers/gpu/drm/i915/gt/uc/intel_huc.h         |  8 ++++----
 drivers/gpu/drm/i915/gt/uc/intel_uc.h          |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h       | 18 +++++++++---------
 7 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 4fac043750aa..f9fbe645478d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -18,17 +18,17 @@ struct drm_i915_private;
 		  ##__VA_ARGS__);					\
 } while (0)
 
-static inline struct intel_gt *uc_to_gt(struct intel_uc *uc)
+static inline struct intel_gt *uc_to_gt(const struct intel_uc *uc)
 {
 	return container_of(uc, struct intel_gt, uc);
 }
 
-static inline struct intel_gt *guc_to_gt(struct intel_guc *guc)
+static inline struct intel_gt *guc_to_gt(const struct intel_guc *guc)
 {
 	return container_of(guc, struct intel_gt, uc.guc);
 }
 
-static inline struct intel_gt *huc_to_gt(struct intel_huc *huc)
+static inline struct intel_gt *huc_to_gt(const struct intel_huc *huc)
 {
 	return container_of(huc, struct intel_gt, uc.huc);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 4594ccbeaa34..969147bd9973 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -138,28 +138,28 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size);
 int intel_guc_allocate_and_map_vma(struct intel_guc *guc, u32 size,
 				   struct i915_vma **out_vma, void **out_vaddr);
 
-static inline bool intel_guc_is_supported(struct intel_guc *guc)
+static inline bool intel_guc_is_supported(const struct intel_guc *guc)
 {
 	return intel_uc_fw_is_supported(&guc->fw);
 }
 
-static inline bool intel_guc_is_wanted(struct intel_guc *guc)
+static inline bool intel_guc_is_wanted(const struct intel_guc *guc)
 {
 	return intel_uc_fw_is_enabled(&guc->fw);
 }
 
-static inline bool intel_guc_is_used(struct intel_guc *guc)
+static inline bool intel_guc_is_used(const struct intel_guc *guc)
 {
 	GEM_BUG_ON(__intel_uc_fw_status(&guc->fw) == INTEL_UC_FIRMWARE_SELECTED);
 	return intel_uc_fw_is_available(&guc->fw);
 }
 
-static inline bool intel_guc_is_fw_running(struct intel_guc *guc)
+static inline bool intel_guc_is_fw_running(const struct intel_guc *guc)
 {
 	return intel_uc_fw_is_running(&guc->fw);
 }
 
-static inline bool intel_guc_is_ready(struct intel_guc *guc)
+static inline bool intel_guc_is_ready(const struct intel_guc *guc)
 {
 	return intel_guc_is_fw_running(guc) && intel_guc_ct_enabled(&guc->ct);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index 494a51a5200f..15e41a194544 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -70,7 +70,7 @@ static inline void intel_guc_ct_sanitize(struct intel_guc_ct *ct)
 	ct->enabled = false;
 }
 
-static inline bool intel_guc_ct_enabled(struct intel_guc_ct *ct)
+static inline bool intel_guc_ct_enabled(const struct intel_guc_ct *ct)
 {
 	return ct->enabled;
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
index 4cf9d3e50263..be96a476550b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
@@ -21,18 +21,18 @@ int intel_guc_preempt_work_create(struct intel_guc *guc);
 void intel_guc_preempt_work_destroy(struct intel_guc *guc);
 bool intel_engine_in_guc_submission_mode(const struct intel_engine_cs *engine);
 
-static inline bool intel_guc_submission_is_supported(struct intel_guc *guc)
+static inline bool intel_guc_submission_is_supported(const struct intel_guc *guc)
 {
 	/* XXX: GuC submission is unavailable for now */
 	return false;
 }
 
-static inline bool intel_guc_submission_is_wanted(struct intel_guc *guc)
+static inline bool intel_guc_submission_is_wanted(const struct intel_guc *guc)
 {
 	return guc->submission_selected;
 }
 
-static inline bool intel_guc_submission_is_used(struct intel_guc *guc)
+static inline bool intel_guc_submission_is_used(const struct intel_guc *guc)
 {
 	return intel_guc_is_used(guc) && intel_guc_submission_is_wanted(guc);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
index a40b9cfc6c22..19651b46d6a4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
@@ -36,23 +36,23 @@ static inline int intel_huc_sanitize(struct intel_huc *huc)
 	return 0;
 }
 
-static inline bool intel_huc_is_supported(struct intel_huc *huc)
+static inline bool intel_huc_is_supported(const struct intel_huc *huc)
 {
 	return intel_uc_fw_is_supported(&huc->fw);
 }
 
-static inline bool intel_huc_is_wanted(struct intel_huc *huc)
+static inline bool intel_huc_is_wanted(const struct intel_huc *huc)
 {
 	return intel_uc_fw_is_enabled(&huc->fw);
 }
 
-static inline bool intel_huc_is_used(struct intel_huc *huc)
+static inline bool intel_huc_is_used(const struct intel_huc *huc)
 {
 	GEM_BUG_ON(__intel_uc_fw_status(&huc->fw) == INTEL_UC_FIRMWARE_SELECTED);
 	return intel_uc_fw_is_available(&huc->fw);
 }
 
-static inline bool intel_huc_is_authenticated(struct intel_huc *huc)
+static inline bool intel_huc_is_authenticated(const struct intel_huc *huc)
 {
 	return intel_uc_fw_is_running(&huc->fw);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 5ae7b50b7dc1..2f7d3028af08 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -63,7 +63,7 @@ int intel_uc_runtime_resume(struct intel_uc *uc);
  */
 
 #define __uc_state_checker(x, func, state, required) \
-static inline bool intel_uc_##state##_##func(struct intel_uc *uc) \
+static inline bool intel_uc_##state##_##func(const struct intel_uc *uc) \
 { \
 	return intel_##func##_is_##required(&uc->x); \
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index 888ff0de0244..704b7b0fd710 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -169,39 +169,39 @@ static inline const char *intel_uc_fw_type_repr(enum intel_uc_fw_type type)
 }
 
 static inline enum intel_uc_fw_status
-__intel_uc_fw_status(struct intel_uc_fw *uc_fw)
+__intel_uc_fw_status(const struct intel_uc_fw *uc_fw)
 {
 	/* shouldn't call this before checking hw/blob availability */
 	GEM_BUG_ON(uc_fw->status == INTEL_UC_FIRMWARE_UNINITIALIZED);
 	return uc_fw->status;
 }
 
-static inline bool intel_uc_fw_is_supported(struct intel_uc_fw *uc_fw)
+static inline bool intel_uc_fw_is_supported(const struct intel_uc_fw *uc_fw)
 {
 	return __intel_uc_fw_status(uc_fw) != INTEL_UC_FIRMWARE_NOT_SUPPORTED;
 }
 
-static inline bool intel_uc_fw_is_enabled(struct intel_uc_fw *uc_fw)
+static inline bool intel_uc_fw_is_enabled(const struct intel_uc_fw *uc_fw)
 {
 	return __intel_uc_fw_status(uc_fw) > INTEL_UC_FIRMWARE_DISABLED;
 }
 
-static inline bool intel_uc_fw_is_available(struct intel_uc_fw *uc_fw)
+static inline bool intel_uc_fw_is_available(const struct intel_uc_fw *uc_fw)
 {
 	return __intel_uc_fw_status(uc_fw) >= INTEL_UC_FIRMWARE_AVAILABLE;
 }
 
-static inline bool intel_uc_fw_is_loadable(struct intel_uc_fw *uc_fw)
+static inline bool intel_uc_fw_is_loadable(const struct intel_uc_fw *uc_fw)
 {
 	return __intel_uc_fw_status(uc_fw) >= INTEL_UC_FIRMWARE_LOADABLE;
 }
 
-static inline bool intel_uc_fw_is_loaded(struct intel_uc_fw *uc_fw)
+static inline bool intel_uc_fw_is_loaded(const struct intel_uc_fw *uc_fw)
 {
 	return __intel_uc_fw_status(uc_fw) >= INTEL_UC_FIRMWARE_TRANSFERRED;
 }
 
-static inline bool intel_uc_fw_is_running(struct intel_uc_fw *uc_fw)
+static inline bool intel_uc_fw_is_running(const struct intel_uc_fw *uc_fw)
 {
 	return __intel_uc_fw_status(uc_fw) == INTEL_UC_FIRMWARE_RUNNING;
 }
@@ -217,7 +217,7 @@ static inline void intel_uc_fw_sanitize(struct intel_uc_fw *uc_fw)
 		intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_LOADABLE);
 }
 
-static inline u32 __intel_uc_fw_get_upload_size(struct intel_uc_fw *uc_fw)
+static inline u32 __intel_uc_fw_get_upload_size(const struct intel_uc_fw *uc_fw)
 {
 	return sizeof(struct uc_css_header) + uc_fw->ucode_size;
 }
@@ -230,7 +230,7 @@ static inline u32 __intel_uc_fw_get_upload_size(struct intel_uc_fw *uc_fw)
  *
  * Return: Upload firmware size, or zero on firmware fetch failure.
  */
-static inline u32 intel_uc_fw_get_upload_size(struct intel_uc_fw *uc_fw)
+static inline u32 intel_uc_fw_get_upload_size(const struct intel_uc_fw *uc_fw)
 {
 	if (!intel_uc_fw_is_available(uc_fw))
 		return 0;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
