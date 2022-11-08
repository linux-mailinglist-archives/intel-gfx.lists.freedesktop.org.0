Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2370A62066E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 03:04:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B9DB10E40E;
	Tue,  8 Nov 2022 02:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82C4A10E404
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 02:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667873027; x=1699409027;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=A0pTL7IOb7vaIC+jhcfXaRkDT6JEpTUwf1VAZdwgKq8=;
 b=Tncy89Mi8RFlf65reJ0uDX+UKH3fneLxRHGJl3cbUCEMFX8NEhiRIhN0
 eCZVIeMT3ZsBMK4kt6YM90vn0kL8+gx8FCuqGe3XF011jovjSF/nWeTZ9
 xEvGXS/h+wHQItuWWkZNR463U4U69/v5zTqHf0IeSxd4AzHs1KyPzojU0
 QnHtz9EAK/ZOrAjLeVlrypbUdPBjBIEjP0gEs6bMA5JC5v5A1kQuLjR3h
 a/TCnCliMSZypBzUhvEAaHMlfv6GNqil6IHKh9IsjqH3GVIfJrU/bBJe6
 izoo8HrD+1I5qG69Bp+xsL4KX3QbAEZffR24Nu2rsJYKlu7RZBwaBTGhZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="374850073"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="374850073"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 18:03:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="614097247"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="614097247"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 18:03:04 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 18:05:56 -0800
Message-Id: <20221108020600.3575467-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
References: <20221108020600.3575467-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 3/7] drm/i915/uc: use different ggtt pin offsets
 for uc loads
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Our current FW loading process is the same for all FWs:

- Pin FW to GGTT at the start of the ggtt->uc_fw node
- Load the FW
- Unpin

This worked because we didn't have a case where 2 FWs would be loaded on
the same GGTT at the same time. On MTL, however, this can happen if both
GTs are reset at the same time, so we can't pin everything in the same
spot and we need to use separate offset. For simplicity, instead of
calculating the exact required size, we reserve a 2MB slot for each fw.

v2: fail fetch if FW is > 2MBs, improve comments (John)
v3: more comment improvements (John)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 32 +++++++++++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h | 14 +++++++++++
 2 files changed, 43 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index de2843dc1307..81e06d71c1a8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -575,6 +575,17 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	err = firmware_request_nowarn(&fw, uc_fw->file_selected.path, dev);
 	memcpy(&file_ideal, &uc_fw->file_wanted, sizeof(file_ideal));
 
+	if (!err && fw->size > INTEL_UC_RSVD_GGTT_PER_FW) {
+		drm_err(&i915->drm,
+			"%s firmware %s: size (%zuKB) exceeds max supported size (%uKB)\n",
+			intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
+			fw->size / SZ_1K, INTEL_UC_RSVD_GGTT_PER_FW / SZ_1K);
+
+		/* try to find another blob to load */
+		release_firmware(fw);
+		err = -ENOENT;
+	}
+
 	/* Any error is terminal if overriding. Don't bother searching for older versions */
 	if (err && intel_uc_fw_is_overridden(uc_fw))
 		goto fail;
@@ -677,14 +688,30 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 
 static u32 uc_fw_ggtt_offset(struct intel_uc_fw *uc_fw)
 {
-	struct i915_ggtt *ggtt = __uc_fw_to_gt(uc_fw)->ggtt;
+	struct intel_gt *gt = __uc_fw_to_gt(uc_fw);
+	struct i915_ggtt *ggtt = gt->ggtt;
 	struct drm_mm_node *node = &ggtt->uc_fw;
+	u32 offset = uc_fw->type * INTEL_UC_RSVD_GGTT_PER_FW;
+
+	/*
+	 * The media GT shares the GGTT with the root GT, which means that
+	 * we need to use different offsets for the binaries on the media GT.
+	 * To keep the math simple, we use 8MB for the root tile and 8MB for
+	 * the media one. This will need to be updated if we ever have more
+	 * than 1 media GT.
+	 */
+	BUILD_BUG_ON(INTEL_UC_FW_NUM_TYPES * INTEL_UC_RSVD_GGTT_PER_FW > SZ_8M);
+	GEM_BUG_ON(gt->type == GT_MEDIA && gt->info.id > 1);
+	if (gt->type == GT_MEDIA)
+		offset += SZ_8M;
 
 	GEM_BUG_ON(!drm_mm_node_allocated(node));
 	GEM_BUG_ON(upper_32_bits(node->start));
 	GEM_BUG_ON(upper_32_bits(node->start + node->size - 1));
+	GEM_BUG_ON(offset + uc_fw->obj->base.size > node->size);
+	GEM_BUG_ON(uc_fw->obj->base.size > INTEL_UC_RSVD_GGTT_PER_FW);
 
-	return lower_32_bits(node->start);
+	return lower_32_bits(node->start + offset);
 }
 
 static void uc_fw_bind_ggtt(struct intel_uc_fw *uc_fw)
@@ -699,7 +726,6 @@ static void uc_fw_bind_ggtt(struct intel_uc_fw *uc_fw)
 	dummy->bi.pages = obj->mm.pages;
 
 	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
-	GEM_BUG_ON(dummy->node_size > ggtt->uc_fw.size);
 
 	/* uc_fw->obj cache domains were not controlled across suspend */
 	if (i915_gem_object_has_struct_page(obj))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index cb586f7df270..bc898ba5355d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -6,6 +6,7 @@
 #ifndef _INTEL_UC_FW_H_
 #define _INTEL_UC_FW_H_
 
+#include <linux/sizes.h>
 #include <linux/types.h>
 #include "intel_uc_fw_abi.h"
 #include "intel_device_info.h"
@@ -114,6 +115,19 @@ struct intel_uc_fw {
 						     (uc)->fw.file_selected.minor_ver, \
 						     (uc)->fw.file_selected.patch_ver))
 
+/*
+ * When we load the uC binaries, we pin them in a reserved section at the top of
+ * the GGTT, which is ~18 MBs. On multi-GT systems where the GTs share the GGTT,
+ * we also need to make sure that each binary is pinned to a unique location
+ * during load, because the different GT can go through the FW load at the same
+ * time (see uc_fw_ggtt_offset() for details).
+ * Given that the available space is much greater than what is required by the
+ * binaries, to keep things simple instead of dynamically partitioning the
+ * reserved section to make space for all the blobs we can just reserve a static
+ * chunk for each binary.
+ */
+#define INTEL_UC_RSVD_GGTT_PER_FW SZ_2M
+
 #ifdef CONFIG_DRM_I915_DEBUG_GUC
 void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 			       enum intel_uc_fw_status status);
-- 
2.37.3

