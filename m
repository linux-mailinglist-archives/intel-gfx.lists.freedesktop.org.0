Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C60D18268A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 02:17:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F9856EA0A;
	Thu, 12 Mar 2020 01:17:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 505C46E9DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 01:17:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 18:17:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,542,1574150400"; d="scan'208";a="236479635"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 11 Mar 2020 18:17:12 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 18:16:28 -0700
Message-Id: <20200312011631.15262-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
References: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915/huc: make "support huc" reflect
 HW capabilities
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

We currently initialize HuC support based on GuC being enabled in
modparam; this means that huc_is_supported() can return false on HW that
does have a HuC when enable_guc=0. The rationale for this behavior is
that HuC requires GuC for authentication and therefore is not supported
by itself. However, we do not allow defining HuC fw wthout GuC fw and
selecting HuC in modparam implicitly selects GuC as well, so we can't
actually hit a scenario where HuC is selected alone. Therefore, we can
flip the support check to reflect the HW capabilities and fw
availability, which is more intuitive and will make it cleaner to log
HuC the difference between not supported in HW and not selected.

Removing the difference between GuC and HuC also allows us to simplify
the init_early, since we don't need to differentiate the support based
on the type of uC.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c    |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c | 14 -------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h |  1 -
 drivers/gpu/drm/i915/gt/uc/intel_huc.c    |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c | 17 ---------------
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h |  1 -
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c  | 25 +++++++++++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  |  3 +--
 8 files changed, 20 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 819f09ef51fc..827d75073879 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -169,7 +169,7 @@ void intel_guc_init_early(struct intel_guc *guc)
 {
 	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 
-	intel_guc_fw_init_early(guc);
+	intel_uc_fw_init_early(&guc->fw, INTEL_UC_FW_TYPE_GUC);
 	intel_guc_ct_init_early(&guc->ct);
 	intel_guc_log_init_early(&guc->log);
 	intel_guc_submission_init_early(guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index 3a1c47d600ea..d4a87f4c9421 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -13,20 +13,6 @@
 #include "intel_guc_fw.h"
 #include "i915_drv.h"
 
-/**
- * intel_guc_fw_init_early() - initializes GuC firmware struct
- * @guc: intel_guc struct
- *
- * On platforms with GuC selects firmware for uploading
- */
-void intel_guc_fw_init_early(struct intel_guc *guc)
-{
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
-
-	intel_uc_fw_init_early(&guc->fw, INTEL_UC_FW_TYPE_GUC, HAS_GT_UC(i915),
-			       INTEL_INFO(i915)->platform, INTEL_REVID(i915));
-}
-
 static void guc_prepare_xfer(struct intel_uncore *uncore)
 {
 	u32 shim_flags = GUC_DISABLE_SRAM_INIT_TO_ZEROES |
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h
index b5ab639d7259..0b4d2a9c9435 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h
@@ -8,7 +8,6 @@
 
 struct intel_guc;
 
-void intel_guc_fw_init_early(struct intel_guc *guc);
 int intel_guc_fw_upload(struct intel_guc *guc);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index a74b65694512..d73dc21686e7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -41,7 +41,7 @@ void intel_huc_init_early(struct intel_huc *huc)
 {
 	struct drm_i915_private *i915 = huc_to_gt(huc)->i915;
 
-	intel_huc_fw_init_early(huc);
+	intel_uc_fw_init_early(&huc->fw, INTEL_UC_FW_TYPE_HUC);
 
 	if (INTEL_GEN(i915) >= 11) {
 		huc->status.reg = GEN11_HUC_KERNEL_LOAD_INFO;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
index 9cdf4cbe691c..e5ef509c70e8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
@@ -7,23 +7,6 @@
 #include "intel_huc_fw.h"
 #include "i915_drv.h"
 
-/**
- * intel_huc_fw_init_early() - initializes HuC firmware struct
- * @huc: intel_huc struct
- *
- * On platforms with HuC selects firmware for uploading
- */
-void intel_huc_fw_init_early(struct intel_huc *huc)
-{
-	struct intel_gt *gt = huc_to_gt(huc);
-	struct intel_uc *uc = &gt->uc;
-	struct drm_i915_private *i915 = gt->i915;
-
-	intel_uc_fw_init_early(&huc->fw, INTEL_UC_FW_TYPE_HUC,
-			       intel_uc_wants_guc(uc),
-			       INTEL_INFO(i915)->platform, INTEL_REVID(i915));
-}
-
 /**
  * intel_huc_fw_upload() - load HuC uCode to device
  * @huc: intel_huc structure
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h
index b791269ce923..12f264ee3e0b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h
@@ -8,7 +8,6 @@
 
 struct intel_huc;
 
-void intel_huc_fw_init_early(struct intel_huc *huc);
 int intel_huc_fw_upload(struct intel_huc *huc);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 18c755203688..fa893dd1823c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -11,16 +11,22 @@
 #include "intel_uc_fw_abi.h"
 #include "i915_drv.h"
 
-static inline struct intel_gt *__uc_fw_to_gt(struct intel_uc_fw *uc_fw)
+static inline struct intel_gt *
+____uc_fw_to_gt(struct intel_uc_fw *uc_fw, enum intel_uc_fw_type type)
 {
-	GEM_BUG_ON(uc_fw->status == INTEL_UC_FIRMWARE_UNINITIALIZED);
-	if (uc_fw->type == INTEL_UC_FW_TYPE_GUC)
+	if (type == INTEL_UC_FW_TYPE_GUC)
 		return container_of(uc_fw, struct intel_gt, uc.guc.fw);
 
-	GEM_BUG_ON(uc_fw->type != INTEL_UC_FW_TYPE_HUC);
+	GEM_BUG_ON(type != INTEL_UC_FW_TYPE_HUC);
 	return container_of(uc_fw, struct intel_gt, uc.huc.fw);
 }
 
+static inline struct intel_gt *__uc_fw_to_gt(struct intel_uc_fw *uc_fw)
+{
+	GEM_BUG_ON(uc_fw->status == INTEL_UC_FIRMWARE_UNINITIALIZED);
+	return ____uc_fw_to_gt(uc_fw, uc_fw->type);
+}
+
 #ifdef CONFIG_DRM_I915_DEBUG_GUC
 void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 			       enum intel_uc_fw_status status)
@@ -195,9 +201,10 @@ static void __uc_fw_user_override(struct intel_uc_fw *uc_fw)
  * firmware to fetch and load.
  */
 void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
-			    enum intel_uc_fw_type type, bool supported,
-			    enum intel_platform platform, u8 rev)
+			    enum intel_uc_fw_type type)
 {
+	struct drm_i915_private *i915 = ____uc_fw_to_gt(uc_fw, type)->i915;
+
 	/*
 	 * we use FIRMWARE_UNINITIALIZED to detect checks against uc_fw->status
 	 * before we're looked at the HW caps to see if we have uc support
@@ -208,8 +215,10 @@ void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
 
 	uc_fw->type = type;
 
-	if (supported) {
-		__uc_fw_auto_select(uc_fw, platform, rev);
+	if (HAS_GT_UC(i915)) {
+		__uc_fw_auto_select(uc_fw,
+				    INTEL_INFO(i915)->platform,
+				    INTEL_REVID(i915));
 		__uc_fw_user_override(uc_fw);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index 888ff0de0244..23d3a423ac0f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -239,8 +239,7 @@ static inline u32 intel_uc_fw_get_upload_size(struct intel_uc_fw *uc_fw)
 }
 
 void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
-			    enum intel_uc_fw_type type, bool supported,
-			    enum intel_platform platform, u8 rev);
+			    enum intel_uc_fw_type type);
 int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw);
 void intel_uc_fw_cleanup_fetch(struct intel_uc_fw *uc_fw);
 int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 offset, u32 dma_flags);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
