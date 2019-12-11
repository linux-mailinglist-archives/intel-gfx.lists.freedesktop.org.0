Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1C911AB28
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 13:46:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8D66EB36;
	Wed, 11 Dec 2019 12:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F6C6EB2F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 12:45:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 04:45:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="264866215"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Dec 2019 04:45:55 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.135.169])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xBBCjsKf016678; Wed, 11 Dec 2019 12:45:54 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 12:45:47 +0000
Message-Id: <20191211124549.59516-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20191211124549.59516-1-michal.wajdeczko@intel.com>
References: <20191211124549.59516-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/uc: Drop explicit i915 param in
 some uc_fw functions
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

There is no need to pass explicit i915 since we already have
a debug trick to get parent gt from uc_fw, we only need to
make this trick available on non-debug builds.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c    |  5 ++---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 15 +++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h |  2 +-
 3 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index c6519066a0f6..f42952403c0b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -267,18 +267,17 @@ static void guc_disable_communication(struct intel_guc *guc)
 
 void intel_uc_fetch_firmwares(struct intel_uc *uc)
 {
-	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
 	int err;
 
 	if (!intel_uc_uses_guc(uc))
 		return;
 
-	err = intel_uc_fw_fetch(&uc->guc.fw, i915);
+	err = intel_uc_fw_fetch(&uc->guc.fw);
 	if (err)
 		return;
 
 	if (intel_uc_uses_huc(uc))
-		intel_uc_fw_fetch(&uc->huc.fw, i915);
+		intel_uc_fw_fetch(&uc->huc.fw);
 }
 
 void intel_uc_cleanup_firmwares(struct intel_uc *uc)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 66a30ab7044a..512ee012fd05 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -11,7 +11,6 @@
 #include "intel_uc_fw_abi.h"
 #include "i915_drv.h"
 
-#ifdef CONFIG_DRM_I915_DEBUG_GUC
 static inline struct intel_gt *__uc_fw_to_gt(struct intel_uc_fw *uc_fw)
 {
 	GEM_BUG_ON(uc_fw->status == INTEL_UC_FIRMWARE_UNINITIALIZED);
@@ -22,6 +21,7 @@ static inline struct intel_gt *__uc_fw_to_gt(struct intel_uc_fw *uc_fw)
 	return container_of(uc_fw, struct intel_gt, uc.huc.fw);
 }
 
+#ifdef CONFIG_DRM_I915_DEBUG_GUC
 void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 			       enum intel_uc_fw_status status)
 {
@@ -219,10 +219,9 @@ void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
 				  INTEL_UC_FIRMWARE_NOT_SUPPORTED);
 }
 
-static void __force_fw_fetch_failures(struct intel_uc_fw *uc_fw,
-				      struct drm_i915_private *i915,
-				      int e)
+static void __force_fw_fetch_failures(struct intel_uc_fw *uc_fw, int e)
 {
+	struct drm_i915_private *i915 = __uc_fw_to_gt(uc_fw)->i915;
 	bool user = e == -EINVAL;
 
 	if (i915_inject_probe_error(i915, e)) {
@@ -260,14 +259,14 @@ static void __force_fw_fetch_failures(struct intel_uc_fw *uc_fw,
 /**
  * intel_uc_fw_fetch - fetch uC firmware
  * @uc_fw: uC firmware
- * @i915: device private
  *
  * Fetch uC firmware into GEM obj.
  *
  * Return: 0 on success, a negative errno code on failure.
  */
-int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw, struct drm_i915_private *i915)
+int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 {
+	struct drm_i915_private *i915 = __uc_fw_to_gt(uc_fw)->i915;
 	struct device *dev = i915->drm.dev;
 	struct drm_i915_gem_object *obj;
 	const struct firmware *fw = NULL;
@@ -282,8 +281,8 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw, struct drm_i915_private *i915)
 	if (err)
 		return err;
 
-	__force_fw_fetch_failures(uc_fw, i915, -EINVAL);
-	__force_fw_fetch_failures(uc_fw, i915, -ESTALE);
+	__force_fw_fetch_failures(uc_fw, -EINVAL);
+	__force_fw_fetch_failures(uc_fw, -ESTALE);
 
 	err = request_firmware(&fw, uc_fw->path, dev);
 	if (err)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index 7a0a5989afc9..ddf2b34139c1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -229,7 +229,7 @@ static inline u32 intel_uc_fw_get_upload_size(struct intel_uc_fw *uc_fw)
 void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
 			    enum intel_uc_fw_type type, bool supported,
 			    enum intel_platform platform, u8 rev);
-int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw, struct drm_i915_private *i915);
+int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw);
 void intel_uc_fw_cleanup_fetch(struct intel_uc_fw *uc_fw);
 int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, struct intel_gt *gt,
 		       u32 wopcm_offset, u32 dma_flags);
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
