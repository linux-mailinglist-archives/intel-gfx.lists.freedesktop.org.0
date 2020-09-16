Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DCF26C5AF
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 19:17:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7CF06EA81;
	Wed, 16 Sep 2020 17:17:02 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01DF56EA85
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 17:16:54 +0000 (UTC)
IronPort-SDR: cxfGmOiyTtWpeGI/uNUPqvbrIvu6HgEHmBjY4AgXGoWNzJrQ9fagPrkHPtrFu8LiZxBP5eK3u4
 yG4FJLtnzseA==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139534265"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="139534265"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 10:16:54 -0700
IronPort-SDR: f/TArcJFpKlL519s/j0FK0MlpcKVkO81b+TKXTlRHwnYr1x4qGfi+mSq4qdDj59V2T0rDDX6iA
 vHsc1iQcZnxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="287259440"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2020 10:16:54 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 16 Sep 2020 10:16:44 -0700
Message-Id: <20200916171653.2021483-4-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 03/12] drm/i915/guc: Setup private_data pointer
 in GuC ADS
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

From: Matthew Brost <matthew.brost@intel.com>

The new GuC requires the additional data structure and associated
'private_data' pointer to be setup. This is basically a scratch area
of memory that the GuC owns. The size is read from the CSS header.

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c   | 13 ++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h  |  3 ++-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  3 +++
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |  6 +++++-
 5 files changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 57954c6360e0..7c16ade44b2b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -146,6 +146,10 @@ static void __guc_ads_init(struct intel_guc *guc)
 	blob->ads.gt_system_info = base + ptr_offset(blob, system_info);
 	blob->ads.clients_info = base + ptr_offset(blob, clients_info);
 
+	/* Private Data */
+	blob->ads.private_data = base +
+		PAGE_ALIGN(sizeof(struct __guc_ads_blob));
+
 	i915_gem_object_flush_map(guc->ads_vma->obj);
 }
 
@@ -158,11 +162,13 @@ static void __guc_ads_init(struct intel_guc *guc)
  */
 int intel_guc_ads_create(struct intel_guc *guc)
 {
-	const u32 size = PAGE_ALIGN(sizeof(struct __guc_ads_blob));
+	u32 size = PAGE_ALIGN(sizeof(struct __guc_ads_blob));
 	int ret;
 
 	GEM_BUG_ON(guc->ads_vma);
 
+	size += PAGE_ALIGN(guc->fw.private_data_size);
+
 	ret = intel_guc_allocate_and_map_vma(guc, size, &guc->ads_vma,
 					     (void **)&guc->ads_blob);
 
@@ -192,4 +198,9 @@ void intel_guc_ads_reset(struct intel_guc *guc)
 	if (!guc->ads_vma)
 		return;
 	__guc_ads_init(guc);
+
+	if (guc->fw.private_data_size)
+		memset((void *)guc->ads_blob +
+		       PAGE_ALIGN(sizeof(struct __guc_ads_blob)), 0,
+		       PAGE_ALIGN(guc->fw.private_data_size));
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index e283156624b5..fa19c9d248f2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -419,7 +419,8 @@ struct guc_ads {
 	u32 control_data;
 	u32 golden_context_lrca[GUC_MAX_ENGINE_CLASSES];
 	u32 eng_state_size[GUC_MAX_ENGINE_CLASSES];
-	u32 reserved[16];
+	u32 private_data;
+	u32 reserved[15];
 } __packed;
 
 /* GuC logging structures */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 80e8b6c3bc8c..1928ce94faf8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -371,6 +371,9 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 		}
 	}
 
+	if (uc_fw->type == INTEL_UC_FW_TYPE_GUC)
+		uc_fw->private_data_size = css->private_data_size;
+
 	obj = i915_gem_object_create_shmem_from_data(i915, fw->data, fw->size);
 	if (IS_ERR(obj)) {
 		err = PTR_ERR(obj);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index 23d3a423ac0f..99bb1fe1af66 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -88,6 +88,8 @@ struct intel_uc_fw {
 
 	u32 rsa_size;
 	u32 ucode_size;
+
+	u32 private_data_size;
 };
 
 #ifdef CONFIG_DRM_I915_DEBUG_GUC
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
index 029214cdedd5..e41ffc7a7fbc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
@@ -69,7 +69,11 @@ struct uc_css_header {
 #define CSS_SW_VERSION_UC_MAJOR		(0xFF << 16)
 #define CSS_SW_VERSION_UC_MINOR		(0xFF << 8)
 #define CSS_SW_VERSION_UC_PATCH		(0xFF << 0)
-	u32 reserved[14];
+	u32 reserved0[13];
+	union {
+		u32 private_data_size; /* only applies to GuC */
+		u32 reserved1;
+	};
 	u32 header_info;
 } __packed;
 static_assert(sizeof(struct uc_css_header) == 128);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
