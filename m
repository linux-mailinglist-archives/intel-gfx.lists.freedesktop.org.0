Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDB613CE23
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 21:37:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48B9B6EA97;
	Wed, 15 Jan 2020 20:37:09 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6868D6EA97
 for <Intel-GFX@lists.freedesktop.org>; Wed, 15 Jan 2020 20:37:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 12:37:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="305617382"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga001.jf.intel.com with ESMTP; 15 Jan 2020 12:37:04 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 15 Jan 2020 12:37:04 -0800
Message-Id: <20200115203704.5630-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20200115024053.11333-1-John.C.Harrison@Intel.com>
References: <20200115024053.11333-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/guc: Update to GuC FW v40
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

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

The GuC major version has jumped from 35 to 40. This is because this
FW includes a significant re-write of the API that completely breaks
backwards compatibility for command submission. This patch is
sufficient to enable loading of the GuC and hence authentication of
the HuC. Support of command submission will follow in a much larger
patch series.

The changes required to load v40 FW are:
* An additional data structure and associated 'private_data' pointer
are now required to be setup by the driver. This is basically a
scratch area of memory that the GuC owns. The size is read from the
CSS header.

* A physical to logical engine mapping table is required to be
provided in the GuC additional data structure. This is initialized
with a 1 to 1 mapping.

* GUC_CTL_CTXINFO has been removed from the initialization params.

* The reg_state_buffer has been removed from the GuC ADS.

v2: Folded in removal of reg_state_buffer from Michal.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
CC: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c       | 18 ------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c   | 31 ++++++++++++++++++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h  | 24 +++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     | 21 +++++++------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |  6 +++-
 6 files changed, 58 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 5d00a3b2d914..e3ef742aac4a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -213,23 +213,6 @@ static u32 guc_ctl_feature_flags(struct intel_guc *guc)
 	return flags;
 }
 
-static u32 guc_ctl_ctxinfo_flags(struct intel_guc *guc)
-{
-	u32 flags = 0;
-
-	if (intel_guc_is_submission_supported(guc)) {
-		u32 ctxnum, base;
-
-		base = intel_guc_ggtt_offset(guc, guc->stage_desc_pool);
-		ctxnum = GUC_MAX_STAGE_DESCRIPTORS / 16;
-
-		base >>= PAGE_SHIFT;
-		flags |= (base << GUC_CTL_BASE_ADDR_SHIFT) |
-			(ctxnum << GUC_CTL_CTXNUM_IN16_SHIFT);
-	}
-	return flags;
-}
-
 static u32 guc_ctl_log_params_flags(struct intel_guc *guc)
 {
 	u32 offset = intel_guc_ggtt_offset(guc, guc->log.vma) >> PAGE_SHIFT;
@@ -291,7 +274,6 @@ static void guc_init_params(struct intel_guc *guc)
 
 	BUILD_BUG_ON(sizeof(guc->params) != GUC_CTL_MAX_DWORDS * sizeof(u32));
 
-	params[GUC_CTL_CTXINFO] = guc_ctl_ctxinfo_flags(guc);
 	params[GUC_CTL_LOG_PARAMS] = guc_ctl_log_params_flags(guc);
 	params[GUC_CTL_FEATURE] = guc_ctl_feature_flags(guc);
 	params[GUC_CTL_DEBUG] = guc_ctl_debug_flags(guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 101728006ae9..ba4cf89e6338 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -48,6 +48,20 @@ static void guc_ct_pool_entries_init(struct guc_ct_pool_entry *pool, u32 num)
 	memset(pool, 0, num * sizeof(*pool));
 }
 
+static void guc_mapping_table_init(struct guc_gt_system_info *system_info)
+{
+	unsigned int i, j;
+
+	/*
+	 * Initializing the physical to logical engine mapping table with a
+	 * 1 to 1 mapping. This allows the firmware to load on all platforms as
+	 * all engines are logical exposed to the user.
+	 */
+	for (i = 0; i < GUC_MAX_ENGINE_CLASSES; ++i)
+		for (j = 0; j < GUC_MAX_INSTANCES_PER_CLASS; ++j)
+			system_info->mapping_table[i][j] = j;
+}
+
 /*
  * The first 80 dwords of the register state context, containing the
  * execlists and ppgtt registers.
@@ -62,7 +76,6 @@ struct __guc_ads_blob {
 	struct guc_gt_system_info system_info;
 	struct guc_clients_info clients_info;
 	struct guc_ct_pool_entry ct_pool[GUC_CT_POOL_SIZE];
-	u8 reg_state_buffer[GUC_S3_SAVE_SPACE_PAGES * PAGE_SIZE];
 } __packed;
 
 static void __guc_ads_init(struct intel_guc *guc)
@@ -107,6 +120,8 @@ static void __guc_ads_init(struct intel_guc *guc)
 	blob->system_info.vebox_enable_mask = VEBOX_MASK(dev_priv);
 	blob->system_info.vdbox_sfc_support_mask = RUNTIME_INFO(dev_priv)->vdbox_sfc_access;
 
+	guc_mapping_table_init(&blob->system_info);
+
 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
 
 	/* Clients info  */
@@ -118,11 +133,14 @@ static void __guc_ads_init(struct intel_guc *guc)
 
 	/* ADS */
 	blob->ads.scheduler_policies = base + ptr_offset(blob, policies);
-	blob->ads.reg_state_buffer = base + ptr_offset(blob, reg_state_buffer);
 	blob->ads.reg_state_addr = base + ptr_offset(blob, reg_state);
 	blob->ads.gt_system_info = base + ptr_offset(blob, system_info);
 	blob->ads.clients_info = base + ptr_offset(blob, clients_info);
 
+	/* Private Data */
+	blob->ads.private_data = base +
+		PAGE_ALIGN(sizeof(struct __guc_ads_blob));
+
 	i915_gem_object_flush_map(guc->ads_vma->obj);
 }
 
@@ -135,11 +153,13 @@ static void __guc_ads_init(struct intel_guc *guc)
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
 
@@ -169,4 +189,9 @@ void intel_guc_ads_reset(struct intel_guc *guc)
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
index a6b733c146c9..48f77b67de8f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -62,12 +62,7 @@
 #define GUC_STAGE_DESC_ATTR_PCH		BIT(6)
 #define GUC_STAGE_DESC_ATTR_TERMINATED	BIT(7)
 
-/* New GuC control data */
-#define GUC_CTL_CTXINFO			0
-#define   GUC_CTL_CTXNUM_IN16_SHIFT	0
-#define   GUC_CTL_BASE_ADDR_SHIFT	12
-
-#define GUC_CTL_LOG_PARAMS		1
+#define GUC_CTL_LOG_PARAMS		0
 #define   GUC_LOG_VALID			(1 << 0)
 #define   GUC_LOG_NOTIFY_ON_HALF_FULL	(1 << 1)
 #define   GUC_LOG_ALLOC_IN_MEGABYTE	(1 << 3)
@@ -79,11 +74,11 @@
 #define   GUC_LOG_ISR_MASK	        (0x7 << GUC_LOG_ISR_SHIFT)
 #define   GUC_LOG_BUF_ADDR_SHIFT	12
 
-#define GUC_CTL_WA			2
-#define GUC_CTL_FEATURE			3
+#define GUC_CTL_WA			1
+#define GUC_CTL_FEATURE			2
 #define   GUC_CTL_DISABLE_SCHEDULER	(1 << 14)
 
-#define GUC_CTL_DEBUG			4
+#define GUC_CTL_DEBUG			3
 #define   GUC_LOG_VERBOSITY_SHIFT	0
 #define   GUC_LOG_VERBOSITY_LOW		(0 << GUC_LOG_VERBOSITY_SHIFT)
 #define   GUC_LOG_VERBOSITY_MED		(1 << GUC_LOG_VERBOSITY_SHIFT)
@@ -97,7 +92,7 @@
 #define   GUC_LOG_DISABLED		(1 << 6)
 #define   GUC_PROFILE_ENABLED		(1 << 7)
 
-#define GUC_CTL_ADS			5
+#define GUC_CTL_ADS			4
 #define   GUC_ADS_ADDR_SHIFT		1
 #define   GUC_ADS_ADDR_MASK		(0xFFFFF << GUC_ADS_ADDR_SHIFT)
 
@@ -369,7 +364,9 @@ struct guc_gt_system_info {
 	u32 vdbox_enable_mask;
 	u32 vdbox_sfc_support_mask;
 	u32 vebox_enable_mask;
-	u32 reserved[9];
+	u32 reserved1;
+	u8 mapping_table[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
+	u32 reserved2[8];
 } __packed;
 
 /* Clients info */
@@ -391,14 +388,15 @@ struct guc_clients_info {
 /* GuC Additional Data Struct */
 struct guc_ads {
 	u32 reg_state_addr;
-	u32 reg_state_buffer;
+	u32 reserved0;
 	u32 scheduler_policies;
 	u32 gt_system_info;
 	u32 clients_info;
 	u32 control_data;
 	u32 golden_context_lrca[GUC_MAX_ENGINE_CLASSES];
 	u32 eng_state_size[GUC_MAX_ENGINE_CLASSES];
-	u32 reserved[16];
+	u32 private_data;
+	u32 reserved[15];
 } __packed;
 
 /* GuC logging structures */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 8ee0a0c7f447..791edd6db6bc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -43,15 +43,15 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * features.
  */
 #define INTEL_UC_FIRMWARE_DEFS(fw_def, guc_def, huc_def) \
-	fw_def(TIGERLAKE,   0, guc_def(tgl, 35, 2, 0), huc_def(tgl,  7, 0, 3)) \
-	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 33, 0, 4), huc_def(ehl,  9, 0, 0)) \
-	fw_def(ICELAKE,     0, guc_def(icl, 33, 0, 0), huc_def(icl,  9, 0, 0)) \
-	fw_def(COFFEELAKE,  5, guc_def(cml, 33, 0, 0), huc_def(cml,  4, 0, 0)) \
-	fw_def(COFFEELAKE,  0, guc_def(kbl, 33, 0, 0), huc_def(kbl,  4, 0, 0)) \
-	fw_def(GEMINILAKE,  0, guc_def(glk, 33, 0, 0), huc_def(glk,  4, 0, 0)) \
-	fw_def(KABYLAKE,    0, guc_def(kbl, 33, 0, 0), huc_def(kbl,  4, 0, 0)) \
-	fw_def(BROXTON,     0, guc_def(bxt, 33, 0, 0), huc_def(bxt,  2, 0, 0)) \
-	fw_def(SKYLAKE,     0, guc_def(skl, 33, 0, 0), huc_def(skl,  2, 0, 0))
+	fw_def(TIGERLAKE,   0, guc_def(tgl, 40, 0, 0), huc_def(tgl,  7, 0, 3)) \
+	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 40, 0, 0), huc_def(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,     0, guc_def(icl, 40, 0, 0), huc_def(icl,  9, 0, 0)) \
+	fw_def(COFFEELAKE,  5, guc_def(cml, 40, 0, 0), huc_def(cml,  4, 0, 0)) \
+	fw_def(COFFEELAKE,  0, guc_def(kbl, 40, 0, 0), huc_def(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,  0, guc_def(glk, 40, 0, 0), huc_def(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,    0, guc_def(kbl, 40, 0, 0), huc_def(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,     0, guc_def(bxt, 40, 0, 0), huc_def(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,     0, guc_def(skl, 40, 0, 0), huc_def(skl,  2, 0, 0))
 
 #define __MAKE_UC_FW_PATH(prefix_, name_, major_, minor_, patch_) \
 	"i915/" \
@@ -362,6 +362,9 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 		}
 	}
 
+	if (uc_fw->type == INTEL_UC_FW_TYPE_GUC)
+		uc_fw->private_data_size = css->private_data_size;
+
 	obj = i915_gem_object_create_shmem_from_data(i915, fw->data, fw->size);
 	if (IS_ERR(obj)) {
 		err = PTR_ERR(obj);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index 1f30543d0d2d..7e6a21847660 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -84,6 +84,8 @@ struct intel_uc_fw {
 
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
2.21.0.5.gaeb582a983

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
