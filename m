Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B3411AB29
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 13:46:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 874EC6EB35;
	Wed, 11 Dec 2019 12:46:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D8BD6EB35
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 12:45:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 04:45:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="238530394"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 11 Dec 2019 04:45:56 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.135.169])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xBBCjsKg016678; Wed, 11 Dec 2019 12:45:55 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 12:45:48 +0000
Message-Id: <20191211124549.59516-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20191211124549.59516-1-michal.wajdeczko@intel.com>
References: <20191211124549.59516-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/uc: Drop explicit gt param in some
 uc_fw functions
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

There is no need to pass explicit gt since we already have
a trick to get parent gt from uc_fw, we only need to use it.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c  | 29 ++++++++++-------------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  |  3 +--
 4 files changed, 16 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index 5528224448f6..3a1c47d600ea 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -149,7 +149,7 @@ int intel_guc_fw_upload(struct intel_guc *guc)
 	 * Current uCode expects the code to be loaded at 8k; locations below
 	 * this are used for the stack.
 	 */
-	ret = intel_uc_fw_upload(&guc->fw, gt, 0x2000, UOS_MOVE);
+	ret = intel_uc_fw_upload(&guc->fw, 0x2000, UOS_MOVE);
 	if (ret)
 		goto out;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
index d654340d4d03..eee193bf2cc4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
@@ -39,5 +39,5 @@ void intel_huc_fw_init_early(struct intel_huc *huc)
 int intel_huc_fw_upload(struct intel_huc *huc)
 {
 	/* HW doesn't look at destination address for HuC, so set it to 0 */
-	return intel_uc_fw_upload(&huc->fw, huc_to_gt(huc), 0, HUC_UKERNEL);
+	return intel_uc_fw_upload(&huc->fw, 0, HUC_UKERNEL);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 512ee012fd05..380f36f9c3b1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -400,11 +400,10 @@ static u32 uc_fw_ggtt_offset(struct intel_uc_fw *uc_fw, struct i915_ggtt *ggtt)
 	return lower_32_bits(node->start);
 }
 
-static void intel_uc_fw_ggtt_bind(struct intel_uc_fw *uc_fw,
-				  struct intel_gt *gt)
+static void uc_fw_bind_ggtt(struct intel_uc_fw *uc_fw)
 {
 	struct drm_i915_gem_object *obj = uc_fw->obj;
-	struct i915_ggtt *ggtt = gt->ggtt;
+	struct i915_ggtt *ggtt = __uc_fw_to_gt(uc_fw)->ggtt;
 	struct i915_vma dummy = {
 		.node.start = uc_fw_ggtt_offset(uc_fw, ggtt),
 		.node.size = obj->base.size,
@@ -421,19 +420,18 @@ static void intel_uc_fw_ggtt_bind(struct intel_uc_fw *uc_fw,
 	ggtt->vm.insert_entries(&ggtt->vm, &dummy, I915_CACHE_NONE, 0);
 }
 
-static void intel_uc_fw_ggtt_unbind(struct intel_uc_fw *uc_fw,
-				    struct intel_gt *gt)
+static void uc_fw_unbind_ggtt(struct intel_uc_fw *uc_fw)
 {
 	struct drm_i915_gem_object *obj = uc_fw->obj;
-	struct i915_ggtt *ggtt = gt->ggtt;
+	struct i915_ggtt *ggtt = __uc_fw_to_gt(uc_fw)->ggtt;
 	u64 start = uc_fw_ggtt_offset(uc_fw, ggtt);
 
 	ggtt->vm.clear_range(&ggtt->vm, start, obj->base.size);
 }
 
-static int uc_fw_xfer(struct intel_uc_fw *uc_fw, struct intel_gt *gt,
-		      u32 wopcm_offset, u32 dma_flags)
+static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 {
+	struct intel_gt *gt = __uc_fw_to_gt(uc_fw);
 	struct intel_uncore *uncore = gt->uncore;
 	u64 offset;
 	int ret;
@@ -451,7 +449,7 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, struct intel_gt *gt,
 	intel_uncore_write_fw(uncore, DMA_ADDR_0_HIGH, upper_32_bits(offset));
 
 	/* Set the DMA destination */
-	intel_uncore_write_fw(uncore, DMA_ADDR_1_LOW, wopcm_offset);
+	intel_uncore_write_fw(uncore, DMA_ADDR_1_LOW, dst_offset);
 	intel_uncore_write_fw(uncore, DMA_ADDR_1_HIGH, DMA_ADDRESS_SPACE_WOPCM);
 
 	/*
@@ -483,17 +481,16 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, struct intel_gt *gt,
 /**
  * intel_uc_fw_upload - load uC firmware using custom loader
  * @uc_fw: uC firmware
- * @gt: the intel_gt structure
- * @wopcm_offset: destination offset in wopcm
+ * @dst_offset: destination offset
  * @dma_flags: flags for flags for dma ctrl
  *
  * Loads uC firmware and updates internal flags.
  *
  * Return: 0 on success, non-zero on failure.
  */
-int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, struct intel_gt *gt,
-		       u32 wopcm_offset, u32 dma_flags)
+int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 {
+	struct intel_gt *gt = __uc_fw_to_gt(uc_fw);
 	int err;
 
 	/* make sure the status was cleared the last time we reset the uc */
@@ -507,9 +504,9 @@ int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, struct intel_gt *gt,
 		return -ENOEXEC;
 
 	/* Call custom loader */
-	intel_uc_fw_ggtt_bind(uc_fw, gt);
-	err = uc_fw_xfer(uc_fw, gt, wopcm_offset, dma_flags);
-	intel_uc_fw_ggtt_unbind(uc_fw, gt);
+	uc_fw_bind_ggtt(uc_fw);
+	err = uc_fw_xfer(uc_fw, dst_offset, dma_flags);
+	uc_fw_unbind_ggtt(uc_fw);
 	if (err)
 		goto fail;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index ddf2b34139c1..1f30543d0d2d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -231,8 +231,7 @@ void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
 			    enum intel_platform platform, u8 rev);
 int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw);
 void intel_uc_fw_cleanup_fetch(struct intel_uc_fw *uc_fw);
-int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, struct intel_gt *gt,
-		       u32 wopcm_offset, u32 dma_flags);
+int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 offset, u32 dma_flags);
 int intel_uc_fw_init(struct intel_uc_fw *uc_fw);
 void intel_uc_fw_fini(struct intel_uc_fw *uc_fw);
 size_t intel_uc_fw_copy_rsa(struct intel_uc_fw *uc_fw, void *dst, u32 max_len);
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
