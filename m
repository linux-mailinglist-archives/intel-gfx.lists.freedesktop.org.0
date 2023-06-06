Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E091723544
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 04:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0FCA10E1F7;
	Tue,  6 Jun 2023 02:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2606910E1EB;
 Tue,  6 Jun 2023 02:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686018255; x=1717554255;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fhmEWUbbJimu2uwfObX/jO4AIk+sI2kaji/CKmndGi4=;
 b=BMjqa79kHUi8MSILrv8CvM2aoxnQNB+Pu3kllJYmAgqHHAuliC+afoyN
 TMb5mR5eNPE386pWagtS9oQvoKcDse04lycZngbJDVi9PkOO9uHUQP5aE
 LfwGAg56JN1glKmejJh42jIkCP22eiswc+1ptsH8U/N2sIfui8gXiu9iy
 g3YLWIMT5naFf6+fZxK1SAci+oJKBV6zxUxNDr00mV6jI+DhWupHthmP4
 opPEQMm788DBcZYJTkHUPMDlyhWY8oi+PGuNeXOmmazHGD/Ur39U01gAk
 vUix0PioNr8gfb72gWYuIzxSp2wHTGc+Ttpgq+VskT0ONKO/jAE4YN/Ta A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="358995787"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="358995787"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 19:24:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="712019557"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="712019557"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 19:24:14 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Jun 2023 19:24:00 -0700
Message-Id: <20230606022402.2048235-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230606022402.2048235-1-daniele.ceraolospurio@intel.com>
References: <20230606022402.2048235-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915/mtl/gsc: query the GSC FW for
 its compatibility version
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The compatibility version is queried via an MKHI command. Right now, the
only existing interface is 1.0
This is basically the interface version for the GSC FW, so the plan is
to use it as the main tracked version, including for the binary naming
in the fetch code.

v2: use define for the object size (Alan)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com> #v1
---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c     | 95 ++++++++++++++++++-
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 50 ++++++----
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |  1 +
 4 files changed, 127 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index 953c155b5170..7d48d59011c8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -11,6 +11,7 @@
 #include "gt/intel_ring.h"
 #include "intel_gsc_binary_headers.h"
 #include "intel_gsc_fw.h"
+#include "intel_gsc_uc_heci_cmd_submit.h"
 
 #define GSC_FW_STATUS_REG			_MMIO(0x116C40)
 #define GSC_FW_CURRENT_STATE			REG_GENMASK(3, 0)
@@ -298,6 +299,88 @@ static int gsc_fw_wait(struct intel_gt *gt)
 				       500);
 }
 
+struct intel_gsc_mkhi_header {
+	u8  group_id;
+#define MKHI_GROUP_ID_GFX_SRV 0x30
+
+	u8  command;
+#define MKHI_GFX_SRV_GET_HOST_COMPATIBILITY_VERSION (0x42)
+
+	u8  reserved;
+	u8  result;
+} __packed;
+
+struct mtl_gsc_ver_msg_in {
+	struct intel_gsc_mtl_header header;
+	struct intel_gsc_mkhi_header mkhi;
+} __packed;
+
+struct mtl_gsc_ver_msg_out {
+	struct intel_gsc_mtl_header header;
+	struct intel_gsc_mkhi_header mkhi;
+	u16 proj_major;
+	u16 compat_major;
+	u16 compat_minor;
+	u16 reserved[5];
+} __packed;
+
+#define GSC_VER_PKT_SZ SZ_4K
+
+static int gsc_fw_query_compatibility_version(struct intel_gsc_uc *gsc)
+{
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	struct mtl_gsc_ver_msg_in *msg_in;
+	struct mtl_gsc_ver_msg_out *msg_out;
+	struct i915_vma *vma;
+	u64 offset;
+	void *vaddr;
+	int err;
+
+	err = intel_guc_allocate_and_map_vma(&gt->uc.guc, GSC_VER_PKT_SZ * 2,
+					     &vma, &vaddr);
+	if (err) {
+		gt_err(gt, "failed to allocate vma for GSC version query\n");
+		return err;
+	}
+
+	offset = i915_ggtt_offset(vma);
+	msg_in = vaddr;
+	msg_out = vaddr + GSC_VER_PKT_SZ;
+
+	intel_gsc_uc_heci_cmd_emit_mtl_header(&msg_in->header,
+					      HECI_MEADDRESS_MKHI,
+					      sizeof(*msg_in), 0);
+	msg_in->mkhi.group_id = MKHI_GROUP_ID_GFX_SRV;
+	msg_in->mkhi.command = MKHI_GFX_SRV_GET_HOST_COMPATIBILITY_VERSION;
+
+	err = intel_gsc_uc_heci_cmd_submit_packet(&gt->uc.gsc,
+						  offset,
+						  sizeof(*msg_in),
+						  offset + GSC_VER_PKT_SZ,
+						  GSC_VER_PKT_SZ);
+	if (err) {
+		gt_err(gt,
+		       "failed to submit GSC request for compatibility version: %d\n",
+		       err);
+		goto out_vma;
+	}
+
+	if (msg_out->header.message_size != sizeof(*msg_out)) {
+		gt_err(gt, "invalid GSC reply length %u [expected %zu], s=0x%x, f=0x%x, r=0x%x\n",
+			msg_out->header.message_size, sizeof(*msg_out),
+			msg_out->header.status, msg_out->header.flags, msg_out->mkhi.result);
+		err = -EPROTO;
+		goto out_vma;
+	}
+
+	gsc->fw.file_selected.ver.major = msg_out->compat_major;
+	gsc->fw.file_selected.ver.minor = msg_out->compat_minor;
+
+out_vma:
+	i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
+	return err;
+}
+
 int intel_gsc_uc_fw_upload(struct intel_gsc_uc *gsc)
 {
 	struct intel_gt *gt = gsc_uc_to_gt(gsc);
@@ -355,11 +438,21 @@ int intel_gsc_uc_fw_upload(struct intel_gsc_uc *gsc)
 	if (err)
 		goto fail;
 
+	err = gsc_fw_query_compatibility_version(gsc);
+	if (err)
+		goto fail;
+
+	/* we only support compatibility version 1.0 at the moment */
+	err = intel_uc_check_file_version(gsc_fw, NULL);
+	if (err)
+		goto fail;
+
 	/* FW is not fully operational until we enable SW proxy */
 	intel_uc_fw_change_status(gsc_fw, INTEL_UC_FIRMWARE_TRANSFERRED);
 
-	gt_info(gt, "Loaded GSC firmware %s (r%u.%u.%u.%u, svn%u)\n",
+	gt_info(gt, "Loaded GSC firmware %s (cv%u.%u, r%u.%u.%u.%u, svn %u)\n",
 		gsc_fw->file_selected.path,
+		gsc_fw->file_selected.ver.major, gsc_fw->file_selected.ver.minor,
 		gsc->release.major, gsc->release.minor,
 		gsc->release.patch, gsc->release.build,
 		gsc->security_version);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
index ef70e304904a..09d3fbdad05a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
@@ -17,6 +17,7 @@ struct intel_gsc_mtl_header {
 #define GSC_HECI_VALIDITY_MARKER 0xA578875A
 
 	u8 heci_client_id;
+#define HECI_MEADDRESS_MKHI 7
 #define HECI_MEADDRESS_PROXY 10
 #define HECI_MEADDRESS_PXP 17
 #define HECI_MEADDRESS_HDCP 18
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 5374a275daa7..d408856ae4c0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -787,6 +787,34 @@ static int try_firmware_load(struct intel_uc_fw *uc_fw, const struct firmware **
 	return 0;
 }
 
+int intel_uc_check_file_version(struct intel_uc_fw *uc_fw, bool *old_ver)
+{
+	struct intel_gt *gt = __uc_fw_to_gt(uc_fw);
+	struct intel_uc_fw_file *wanted = &uc_fw->file_wanted;
+	struct intel_uc_fw_file *selected = &uc_fw->file_selected;
+
+	if (!wanted->ver.major || !selected->ver.major)
+		return 0;
+
+	/* Check the file's major version was as it claimed */
+	if (selected->ver.major != wanted->ver.major) {
+		UNEXPECTED(gt, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
+			   intel_uc_fw_type_repr(uc_fw->type), selected->path,
+			   selected->ver.major, selected->ver.minor,
+			   wanted->ver.major, wanted->ver.minor);
+		if (!intel_uc_fw_is_overridden(uc_fw))
+			return -ENOEXEC;
+	} else if (old_ver) {
+		if (selected->ver.minor < wanted->ver.minor)
+			*old_ver = true;
+		else if ((selected->ver.minor == wanted->ver.minor) &&
+			 (selected->ver.patch < wanted->ver.patch))
+			*old_ver = true;
+	}
+
+	return 0;
+}
+
 /**
  * intel_uc_fw_fetch - fetch uC firmware
  * @uc_fw: uC firmware
@@ -854,25 +882,9 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 			goto fail;
 	}
 
-	if (uc_fw->file_wanted.ver.major && uc_fw->file_selected.ver.major) {
-		/* Check the file's major version was as it claimed */
-		if (uc_fw->file_selected.ver.major != uc_fw->file_wanted.ver.major) {
-			UNEXPECTED(gt, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
-				   intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
-				   uc_fw->file_selected.ver.major, uc_fw->file_selected.ver.minor,
-				   uc_fw->file_wanted.ver.major, uc_fw->file_wanted.ver.minor);
-			if (!intel_uc_fw_is_overridden(uc_fw)) {
-				err = -ENOEXEC;
-				goto fail;
-			}
-		} else {
-			if (uc_fw->file_selected.ver.minor < uc_fw->file_wanted.ver.minor)
-				old_ver = true;
-			else if ((uc_fw->file_selected.ver.minor == uc_fw->file_wanted.ver.minor) &&
-				 (uc_fw->file_selected.ver.patch < uc_fw->file_wanted.ver.patch))
-				old_ver = true;
-		}
-	}
+	err = intel_uc_check_file_version(uc_fw, &old_ver);
+	if (err)
+		goto fail;
 
 	if (old_ver && uc_fw->file_selected.ver.major) {
 		/* Preserve the version that was really wanted */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index 8f0df23a8c3d..9a431726c8d5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -292,6 +292,7 @@ static inline u32 intel_uc_fw_get_upload_size(struct intel_uc_fw *uc_fw)
 
 void intel_uc_fw_version_from_gsc_manifest(struct intel_uc_fw_ver *ver,
 					   const void *data);
+int intel_uc_check_file_version(struct intel_uc_fw *uc_fw, bool *old_ver);
 void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
 			    enum intel_uc_fw_type type,
 			    bool needs_ggtt_mapping);
-- 
2.40.0

