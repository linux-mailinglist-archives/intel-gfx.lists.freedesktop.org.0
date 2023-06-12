Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6AC72CDA5
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jun 2023 20:15:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3757F10E2B9;
	Mon, 12 Jun 2023 18:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0568D10E209
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 18:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686593743; x=1718129743;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r4dt11hdw1REhaKCOFYgprY+M8G7UrL427tPQGG9Xo8=;
 b=Ny5cYm0/OqO1ZyAY0ocJ/Sta9BidGsIj0x1JdaJt0K0Qs1gRxxMQa/qx
 gML5/ubGUHDJGRIGzzi8oFMa2J+XoL72yx7HbfezJp8gXGFuFkXAXGR8d
 sw12H2NlgY3N0pAfKXwSgje8v6anuy9d5HI+CW+1Ujs8WB3myo9KK7mU7
 /xq5qgUUSlGih2aZxHFuTSifFkDRUCk2/4yTpcQ81bKo/B1wNCowk0QJ9
 3Xsp8S1c7Yk/GEjCCU5tgiAKVyiLDKHYEA9CR0/0AXTjBkCqUPzJZmz/o
 uL68zhcmk6FvPWL7VN2HpffLkgL5qFpjUGTH1b5LdQaJJDi0QYZvLZ+7D g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="337761473"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="337761473"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 11:15:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="661678794"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="661678794"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 11:15:42 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jun 2023 11:15:27 -0700
Message-Id: <20230612181529.2222451-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230612181529.2222451-1-daniele.ceraolospurio@intel.com>
References: <20230612181529.2222451-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/4] drm/i915/mtl/gsc: extract release and security
 versions from the gsc binary
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

The release and security versions of the GSC binary are not used at
runtime to decide interface compatibility (there is a separate version
for that), but they're still useful for debug, so it is still worth
extracting them and printing them out in dmesg.

To get to these version, we need to navigate through various headers in
the binary. See in-code comment for details.

v2: fix and improve size checks when crawling the binary header, add
comment about the different version, wrap the partition base/offset
pairs in the GSC header in a struct (Alan)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../drm/i915/gt/uc/intel_gsc_binary_headers.h |  75 ++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c     | 157 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h     |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h     |  18 ++
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  13 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  30 +++-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |   3 +
 7 files changed, 271 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_binary_headers.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_binary_headers.h
index 714f0c256118..6d009a905269 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_binary_headers.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_binary_headers.h
@@ -8,6 +8,74 @@
 
 #include <linux/types.h>
 
+struct intel_gsc_version {
+	u16 major;
+	u16 minor;
+	u16 hotfix;
+	u16 build;
+} __packed;
+
+struct intel_gsc_partition {
+	u32 offset;
+	u32 size;
+} __packed;
+
+struct intel_gsc_layout_pointers {
+	u8 rom_bypass_vector[16];
+
+	/* size of pointers layout not including ROM bypass vector */
+	u16 size;
+
+	/*
+	 * bit0: Backup copy of layout pointers exist
+	 * bits1-15: reserved
+	 */
+	u8 flags;
+
+	u8 reserved;
+
+	u32 crc32;
+
+	struct intel_gsc_partition datap;
+	struct intel_gsc_partition boot1;
+	struct intel_gsc_partition boot2;
+	struct intel_gsc_partition boot3;
+	struct intel_gsc_partition boot4;
+	struct intel_gsc_partition boot5;
+	struct intel_gsc_partition temp_pages;
+} __packed;
+
+/* Boot partition structures */
+struct intel_gsc_bpdt_header {
+	u32 signature;
+#define INTEL_GSC_BPDT_HEADER_SIGNATURE 0x000055AA
+
+	u16 descriptor_count; /* num of entries after the header */
+
+	u8 version;
+	u8 configuration;
+
+	u32 crc32;
+
+	u32 build_version;
+	struct intel_gsc_version tool_version;
+} __packed;
+
+struct intel_gsc_bpdt_entry {
+	/*
+	 * Bits 0-15: BPDT entry type
+	 * Bits 16-17: reserved
+	 * Bit 18: code sub-partition
+	 * Bits 19-31: reserved
+	 */
+	u32 type;
+#define INTEL_GSC_BPDT_ENTRY_TYPE_MASK GENMASK(15, 0)
+#define INTEL_GSC_BPDT_ENTRY_TYPE_GSC_RBE 0x1
+
+	u32 sub_partition_offset; /* from the base of the BPDT header */
+	u32 sub_partition_size;
+} __packed;
+
 /* Code partition directory (CPD) structures */
 struct intel_gsc_cpd_header_v2 {
 	u32 header_marker;
@@ -44,13 +112,6 @@ struct intel_gsc_cpd_entry {
 	u8 reserved[4];
 } __packed;
 
-struct intel_gsc_version {
-	u16 major;
-	u16 minor;
-	u16 hotfix;
-	u16 build;
-} __packed;
-
 struct intel_gsc_manifest_header {
 	u32 header_type; /* 0x4 for manifest type */
 	u32 header_length; /* in dwords */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index e6fa7745ff77..4c728ba6f4f7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -9,6 +9,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_print.h"
 #include "gt/intel_ring.h"
+#include "intel_gsc_binary_headers.h"
 #include "intel_gsc_fw.h"
 
 #define GSC_FW_STATUS_REG			_MMIO(0x116C40)
@@ -48,6 +49,156 @@ bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc)
 	return gsc_uc_get_fw_status(gsc_uc_to_gt(gsc)->uncore) & GSC_FW_INIT_COMPLETE_BIT;
 }
 
+static inline u32 cpd_entry_offset(const struct intel_gsc_cpd_entry *entry)
+{
+	return entry->offset & INTEL_GSC_CPD_ENTRY_OFFSET_MASK;
+}
+
+int intel_gsc_fw_get_binary_info(struct intel_uc_fw *gsc_fw, const void *data, size_t size)
+{
+	struct intel_gsc_uc *gsc = container_of(gsc_fw, struct intel_gsc_uc, fw);
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	const struct intel_gsc_layout_pointers *layout = data;
+	const struct intel_gsc_bpdt_header *bpdt_header = NULL;
+	const struct intel_gsc_bpdt_entry *bpdt_entry = NULL;
+	const struct intel_gsc_cpd_header_v2 *cpd_header = NULL;
+	const struct intel_gsc_cpd_entry *cpd_entry = NULL;
+	const struct intel_gsc_manifest_header *manifest;
+	size_t min_size = sizeof(*layout);
+	int i;
+
+	if (size < min_size) {
+		gt_err(gt, "GSC FW too small! %zu < %zu\n", size, min_size);
+		return -ENODATA;
+	}
+
+	/*
+	 * The GSC binary starts with the pointer layout, which contains the
+	 * locations of the various partitions of the binary. The one we're
+	 * interested in to get the version is the boot1 partition, where we can
+	 * find a BPDT header followed by entries, one of which points to the
+	 * RBE sub-section of the partition. From here, we can parse the CPD
+	 * header and the following entries to find the manifest location
+	 * (entry identified by the "RBEP.man" name), from which we can finally
+	 * extract the version.
+	 *
+	 * --------------------------------------------------
+	 * [  intel_gsc_layout_pointers                     ]
+	 * [      ...                                       ]
+	 * [      boot1.offset  >---------------------------]------o
+	 * [      ...                                       ]      |
+	 * --------------------------------------------------      |
+	 *                                                         |
+	 * --------------------------------------------------      |
+	 * [  intel_gsc_bpdt_header                         ]<-----o
+	 * --------------------------------------------------
+	 * [  intel_gsc_bpdt_entry[]                        ]
+	 * [      entry1                                    ]
+	 * [      ...                                       ]
+	 * [      entryX                                    ]
+	 * [          type == GSC_RBE                       ]
+	 * [          offset  >-----------------------------]------o
+	 * [      ...                                       ]      |
+	 * --------------------------------------------------      |
+	 *                                                         |
+	 * --------------------------------------------------      |
+	 * [  intel_gsc_cpd_header_v2                       ]<-----o
+	 * --------------------------------------------------
+	 * [  intel_gsc_cpd_entry[]                         ]
+	 * [      entry1                                    ]
+	 * [      ...                                       ]
+	 * [      entryX                                    ]
+	 * [          "RBEP.man"                            ]
+	 * [           ...                                  ]
+	 * [           offset  >----------------------------]------o
+	 * [      ...                                       ]      |
+	 * --------------------------------------------------      |
+	 *                                                         |
+	 * --------------------------------------------------      |
+	 * [ intel_gsc_manifest_header                      ]<-----o
+	 * [  ...                                           ]
+	 * [  intel_gsc_version     fw_version              ]
+	 * [  ...                                           ]
+	 * --------------------------------------------------
+	 */
+
+	min_size = layout->boot1.offset + layout->boot1.size;
+	if (size < min_size) {
+		gt_err(gt, "GSC FW too small for boot section! %zu < %zu\n",
+		       size, min_size);
+		return -ENODATA;
+	}
+
+	min_size = sizeof(*bpdt_header);
+	if (layout->boot1.size < min_size) {
+		gt_err(gt, "GSC FW boot section too small for BPDT header: %u < %zu\n",
+		       layout->boot1.size, min_size);
+		return -ENODATA;
+	}
+
+	bpdt_header = data + layout->boot1.offset;
+	if (bpdt_header->signature != INTEL_GSC_BPDT_HEADER_SIGNATURE) {
+		gt_err(gt, "invalid signature for BPDT header: 0x%08x!\n",
+		       bpdt_header->signature);
+		return -EINVAL;
+	}
+
+	min_size += sizeof(*bpdt_entry) * bpdt_header->descriptor_count;
+	if (layout->boot1.size < min_size) {
+		gt_err(gt, "GSC FW boot section too small for BPDT entries: %u < %zu\n",
+		       layout->boot1.size, min_size);
+		return -ENODATA;
+	}
+
+	bpdt_entry = (void *)bpdt_header + sizeof(*bpdt_header);
+	for (i = 0; i < bpdt_header->descriptor_count; i++, bpdt_entry++) {
+		if ((bpdt_entry->type & INTEL_GSC_BPDT_ENTRY_TYPE_MASK) !=
+		    INTEL_GSC_BPDT_ENTRY_TYPE_GSC_RBE)
+			continue;
+
+		cpd_header = (void *)bpdt_header + bpdt_entry->sub_partition_offset;
+		min_size = bpdt_entry->sub_partition_offset + sizeof(*cpd_header);
+		break;
+	}
+
+	if (!cpd_header) {
+		gt_err(gt, "couldn't find CPD header in GSC binary!\n");
+		return -ENODATA;
+	}
+
+	if (layout->boot1.size < min_size) {
+		gt_err(gt, "GSC FW boot section too small for CPD header: %u < %zu\n",
+		       layout->boot1.size, min_size);
+		return -ENODATA;
+	}
+
+	if (cpd_header->header_marker != INTEL_GSC_CPD_HEADER_MARKER) {
+		gt_err(gt, "invalid marker for CPD header in GSC bin: 0x%08x!\n",
+		       cpd_header->header_marker);
+		return -EINVAL;
+	}
+
+	min_size += sizeof(*cpd_entry) * cpd_header->num_of_entries;
+	if (layout->boot1.size < min_size) {
+		gt_err(gt, "GSC FW boot section too small for CPD entries: %u < %zu\n",
+		       layout->boot1.size, min_size);
+		return -ENODATA;
+	}
+
+	cpd_entry = (void *)cpd_header + cpd_header->header_length;
+	for (i = 0; i < cpd_header->num_of_entries; i++, cpd_entry++) {
+		if (strcmp(cpd_entry->name, "RBEP.man") == 0) {
+			manifest = (void *)cpd_header + cpd_entry_offset(cpd_entry);
+			intel_uc_fw_version_from_gsc_manifest(&gsc->release,
+							      manifest);
+			gsc->security_version = manifest->security_version;
+			break;
+		}
+	}
+
+	return 0;
+}
+
 static int emit_gsc_fw_load(struct i915_request *rq, struct intel_gsc_uc *gsc)
 {
 	u32 offset = i915_ggtt_offset(gsc->local);
@@ -212,7 +363,11 @@ int intel_gsc_uc_fw_upload(struct intel_gsc_uc *gsc)
 	/* FW is not fully operational until we enable SW proxy */
 	intel_uc_fw_change_status(gsc_fw, INTEL_UC_FIRMWARE_TRANSFERRED);
 
-	gt_info(gt, "Loaded GSC firmware %s\n", gsc_fw->file_selected.path);
+	gt_info(gt, "Loaded GSC firmware %s (r%u.%u.%u.%u, svn%u)\n",
+		gsc_fw->file_selected.path,
+		gsc->release.major, gsc->release.minor,
+		gsc->release.patch, gsc->release.build,
+		gsc->security_version);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
index fff8928218df..8d7b9e4f1ffc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
@@ -9,8 +9,10 @@
 #include <linux/types.h>
 
 struct intel_gsc_uc;
+struct intel_uc_fw;
 struct intel_uncore;
 
+int intel_gsc_fw_get_binary_info(struct intel_uc_fw *gsc_fw, const void *data, size_t size);
 int intel_gsc_uc_fw_upload(struct intel_gsc_uc *gsc);
 bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc);
 bool intel_gsc_uc_fw_proxy_init_done(struct intel_gsc_uc *gsc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
index c01286dddbdb..81df6c929d5f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
@@ -17,6 +17,24 @@ struct intel_gsc_uc {
 	struct intel_uc_fw fw;
 
 	/* GSC-specific additions */
+
+	/*
+	 * The GSC has 3 version numbers:
+	 * - Release version (incremented with each build)
+	 * - Security version (incremented on security fix)
+	 * - Compatibility version (incremented on interface change)
+	 *
+	 * The one we care about to use the binary is the last one, so that's
+	 * the one we save inside the intel_uc_fw structure. The other two
+	 * versions are only used for debug/info purposes, so we save them here.
+	 *
+	 * Note that the release and security versions are available in the
+	 * binary header, while the compatibility version must be queried after
+	 * loading the binary.
+	 */
+	struct intel_uc_fw_ver release;
+	u32 security_version;
+
 	struct i915_vma *local; /* private memory for GSC usage */
 	void __iomem *local_vaddr; /* pointer to access the private memory */
 	struct intel_context *ce; /* for submission to GSC FW via GSC engine */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
index e608152fecfc..48f506a26e6d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
@@ -107,15 +107,6 @@ int intel_huc_fw_auth_via_gsccs(struct intel_huc *huc)
 	return err;
 }
 
-static void get_version_from_gsc_manifest(struct intel_uc_fw_ver *ver, const void *data)
-{
-	const struct intel_gsc_manifest_header *manifest = data;
-
-	ver->major = manifest->fw_version.major;
-	ver->minor = manifest->fw_version.minor;
-	ver->patch = manifest->fw_version.hotfix;
-}
-
 static bool css_valid(const void *data, size_t size)
 {
 	const struct uc_css_header *css = data;
@@ -227,8 +218,8 @@ int intel_huc_fw_get_binary_info(struct intel_uc_fw *huc_fw, const void *data, s
 
 	for (i = 0; i < header->num_of_entries; i++, entry++) {
 		if (strcmp(entry->name, "HUCP.man") == 0)
-			get_version_from_gsc_manifest(&huc_fw->file_selected.ver,
-						      data + entry_offset(entry));
+			intel_uc_fw_version_from_gsc_manifest(&huc_fw->file_selected.ver,
+							      data + entry_offset(entry));
 
 		if (strcmp(entry->name, "huc_fw") == 0) {
 			u32 offset = entry_offset(entry);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 944725e62414..5374a275daa7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -12,6 +12,8 @@
 
 #include "gem/i915_gem_lmem.h"
 #include "gt/intel_gt_print.h"
+#include "intel_gsc_binary_headers.h"
+#include "intel_gsc_fw.h"
 #include "intel_uc_fw.h"
 #include "intel_uc_fw_abi.h"
 #include "i915_drv.h"
@@ -468,6 +470,17 @@ static void __uc_fw_user_override(struct drm_i915_private *i915, struct intel_uc
 	}
 }
 
+void intel_uc_fw_version_from_gsc_manifest(struct intel_uc_fw_ver *ver,
+					   const void *data)
+{
+	const struct intel_gsc_manifest_header *manifest = data;
+
+	ver->major = manifest->fw_version.major;
+	ver->minor = manifest->fw_version.minor;
+	ver->patch = manifest->fw_version.hotfix;
+	ver->build = manifest->fw_version.build;
+}
+
 /**
  * intel_uc_fw_init_early - initialize the uC object and select the firmware
  * @uc_fw: uC firmware
@@ -668,13 +681,18 @@ static int check_gsc_manifest(struct intel_gt *gt,
 			      const struct firmware *fw,
 			      struct intel_uc_fw *uc_fw)
 {
-	if (uc_fw->type != INTEL_UC_FW_TYPE_HUC) {
-		gt_err(gt, "trying to GSC-parse a non-HuC binary");
+	switch (uc_fw->type) {
+	case INTEL_UC_FW_TYPE_HUC:
+		intel_huc_fw_get_binary_info(uc_fw, fw->data, fw->size);
+		break;
+	case INTEL_UC_FW_TYPE_GSC:
+		intel_gsc_fw_get_binary_info(uc_fw, fw->data, fw->size);
+		break;
+	default:
+		MISSING_CASE(uc_fw->type);
 		return -EINVAL;
 	}
 
-	intel_huc_fw_get_binary_info(uc_fw, fw->data, fw->size);
-
 	if (uc_fw->dma_start_offset) {
 		u32 delta = uc_fw->dma_start_offset;
 
@@ -734,10 +752,6 @@ static int check_fw_header(struct intel_gt *gt,
 {
 	int err = 0;
 
-	/* GSC FW version is queried after the FW is loaded */
-	if (uc_fw->type == INTEL_UC_FW_TYPE_GSC)
-		return 0;
-
 	if (uc_fw->has_gsc_headers)
 		err = check_gsc_manifest(gt, fw, uc_fw);
 	else
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index 054f02811971..8f0df23a8c3d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -70,6 +70,7 @@ struct intel_uc_fw_ver {
 	u32 major;
 	u32 minor;
 	u32 patch;
+	u32 build;
 };
 
 /*
@@ -289,6 +290,8 @@ static inline u32 intel_uc_fw_get_upload_size(struct intel_uc_fw *uc_fw)
 	return __intel_uc_fw_get_upload_size(uc_fw);
 }
 
+void intel_uc_fw_version_from_gsc_manifest(struct intel_uc_fw_ver *ver,
+					   const void *data);
 void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
 			    enum intel_uc_fw_type type,
 			    bool needs_ggtt_mapping);
-- 
2.40.0

