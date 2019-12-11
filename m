Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA51511AB2A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 13:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DFBC6EB3B;
	Wed, 11 Dec 2019 12:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB5A46EB35
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 12:45:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 04:45:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="225512000"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 11 Dec 2019 04:45:57 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.135.169])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xBBCjsKh016678; Wed, 11 Dec 2019 12:45:56 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 12:45:49 +0000
Message-Id: <20191211124549.59516-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20191211124549.59516-1-michal.wajdeczko@intel.com>
References: <20191211124549.59516-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/uc: Drop explicit ggtt param in
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

There is no need to pass explicit ggtt since we already have
a trick to get parent gt from uc_fw, we only need to use it.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 380f36f9c3b1..b6aedee46f9e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -389,8 +389,9 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	return err;
 }
 
-static u32 uc_fw_ggtt_offset(struct intel_uc_fw *uc_fw, struct i915_ggtt *ggtt)
+static u32 uc_fw_ggtt_offset(struct intel_uc_fw *uc_fw)
 {
+	struct i915_ggtt *ggtt = __uc_fw_to_gt(uc_fw)->ggtt;
 	struct drm_mm_node *node = &ggtt->uc_fw;
 
 	GEM_BUG_ON(!drm_mm_node_allocated(node));
@@ -405,7 +406,7 @@ static void uc_fw_bind_ggtt(struct intel_uc_fw *uc_fw)
 	struct drm_i915_gem_object *obj = uc_fw->obj;
 	struct i915_ggtt *ggtt = __uc_fw_to_gt(uc_fw)->ggtt;
 	struct i915_vma dummy = {
-		.node.start = uc_fw_ggtt_offset(uc_fw, ggtt),
+		.node.start = uc_fw_ggtt_offset(uc_fw),
 		.node.size = obj->base.size,
 		.pages = obj->mm.pages,
 		.vm = &ggtt->vm,
@@ -424,7 +425,7 @@ static void uc_fw_unbind_ggtt(struct intel_uc_fw *uc_fw)
 {
 	struct drm_i915_gem_object *obj = uc_fw->obj;
 	struct i915_ggtt *ggtt = __uc_fw_to_gt(uc_fw)->ggtt;
-	u64 start = uc_fw_ggtt_offset(uc_fw, ggtt);
+	u64 start = uc_fw_ggtt_offset(uc_fw);
 
 	ggtt->vm.clear_range(&ggtt->vm, start, obj->base.size);
 }
@@ -443,7 +444,7 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
 
 	/* Set the source address for the uCode */
-	offset = uc_fw_ggtt_offset(uc_fw, gt->ggtt);
+	offset = uc_fw_ggtt_offset(uc_fw);
 	GEM_BUG_ON(upper_32_bits(offset) & 0xFFFF0000);
 	intel_uncore_write_fw(uncore, DMA_ADDR_0_LOW, lower_32_bits(offset));
 	intel_uncore_write_fw(uncore, DMA_ADDR_0_HIGH, upper_32_bits(offset));
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
