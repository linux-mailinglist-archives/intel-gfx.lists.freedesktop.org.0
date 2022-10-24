Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA0860B5B7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 20:38:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD76C10E724;
	Mon, 24 Oct 2022 18:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 565A710E745
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 18:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666636697; x=1698172697;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5c74+GEB6KbqWL8FrrQIu7EXkCHP7GoJ/gE4kOVZsf4=;
 b=dKNXoWyQ8LX852RTR/pxW4HIne4NdZ12ViNJXyZImj+1YwOzCoHI+VGs
 9WeLpTNyQKEuIdqv0P6hXeeKRBL6EeMMPBNeDpq7ZCjLOL8Z2B7U4Virw
 ymvxfmC1NffYKISMQCZM10urdcq9kdFzu014OeC4RRoMoBKT3NJ/f7CgW
 BbB73sfcmFtXyALh8wLALmHQumgDeC2p8y/u/Wmld6BRpsmV3RqE+PhbN
 JzqqZgWTXcHvJEFWE4pfSin5vWrhIckLV7aSP/RKH6OCqDq9MiHtDc3D3
 7QFc8T2FhLRX5CVATYUKJZ0B8cap9UdGzEgKPyPYvMeZtt8L1Oxx/jDsu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="294896189"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; d="scan'208";a="294896189"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 11:38:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="960528142"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; d="scan'208";a="960528142"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 24 Oct 2022 11:38:16 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Oct 2022 11:40:31 -0700
Message-Id: <20221024184031.613550-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/pxp: Separate PXP FW interface
 structures for both v42 and 43
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

Previously, we only used PXP FW interface version-42 structures for
PXP arbitration session on ADL/TGL products and version-43 for HuC
authentication on DG2. That worked fine despite not differentiating such
versioning of the PXP firmware interaction structures. This was okay
back then because the only commands used via version 42 was not
used via version 43 and vice versa.

With MTL, we'll need both these versions side by side for the same
commands (PXP-session) with the older platform feature support. That
said, let's create separate files to define the structures and definitions
for both version-42 and 43 of PXP FW interfaces.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 39 +++++++++++++
 .../drm/i915/pxp/intel_pxp_cmd_interface_43.h | 45 +++++++++++++++
 .../i915/pxp/intel_pxp_cmd_interface_cmn.h    | 27 +++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      | 20 +++----
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 12 ++--
 .../drm/i915/pxp/intel_pxp_tee_interface.h    | 57 -------------------
 6 files changed, 127 insertions(+), 73 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
 delete mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
new file mode 100644
index 000000000000..501012d3084d
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_FW_INTERFACE_42_H__
+#define __INTEL_PXP_FW_INTERFACE_42_H__
+
+#include <linux/types.h>
+#include "intel_pxp_cmd_interface_cmn.h"
+
+/* PXP API Version 42 Core Definitions */
+#define PXP42_APIVER 0x00040002
+
+/* PXP-Cmd-Op definitions */
+#define PXP42_CMDID_INIT_SESSION 0x1e
+
+/* PXP-In/Out-Cmd-Header */
+struct pxp42_cmd_header {
+	struct pxpcmn_cmd_header header;
+	u32 status;
+	/* Length of the message (excluding the header) */
+	u32 buffer_len;
+} __packed;
+
+/* PXP-Input-Packet: Create-Arb-Session */
+#define PXP42_INIT_SESSION_PROTECTION_ARB 0x2
+struct pxp42_create_arb_in {
+	struct pxp42_cmd_header header;
+	u32 protection_mode;
+	u32 session_id;
+} __packed;
+
+/* PXP-Output-Packet: Create-Arb-Session */
+struct pxp42_create_arb_out {
+	struct pxp42_cmd_header header;
+} __packed;
+
+#endif /* __INTEL_PXP_FW_INTERFACE_42_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
new file mode 100644
index 000000000000..d7d93876bbef
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2022, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_FW_INTERFACE_43_H__
+#define __INTEL_PXP_FW_INTERFACE_43_H__
+
+#include <linux/types.h>
+#include "intel_pxp_cmd_interface_cmn.h"
+
+/* PXP API Version 43 Core Definitions */
+#define PXP43_APIVER 0x00040003
+#define PXP43_MAX_HECI_IN_SIZE (32 * 1024)
+#define PXP43_MAX_HECI_OUT_SIZE (32 * 1024)
+
+/* PXP-Cmd-Op definitions */
+#define PXP43_CMDID_START_HUC_AUTH 0x0000003A
+
+/* PXP-In/Out-Cmd-Header */
+struct pxp43_cmd_header {
+	struct pxpcmn_cmd_header header;
+	u32 in_out_data;
+	/* Length of the message (excluding the header) */
+	u32 buffer_len;
+} __packed;
+
+/* PXP-Input-Packet: HUC-Authentication */
+struct pxp43_start_huc_auth_in {
+	struct pxpcmn_cmd_header header;
+	u32 status;
+	/* Length of the message (excluding the header) */
+	u32 buffer_len;
+	__le64                  huc_base_address;
+} __packed;
+
+/* PXP-Output-Packet: HUC-Authentication */
+struct pxp43_start_huc_auth_out {
+	struct pxpcmn_cmd_header header;
+	u32 status;
+	/* Length of the message (excluding the header) */
+	u32 buffer_len;
+} __packed;
+
+#endif /* __INTEL_PXP_FW_INTERFACE_43_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
new file mode 100644
index 000000000000..5c301ddc55e2
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2022, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_FW_INTERFACE_CMN_H__
+#define __INTEL_PXP_FW_INTERFACE_CMN_H__
+
+#include <linux/types.h>
+
+/*
+ * there are a lot of status codes for PXP, but we only define the cross-API
+ * common ones that we actually can handle in the kernel driver. Other failure
+ * codes should be printed to error msg for debug.
+ */
+enum pxp_status {
+	PXP_STATUS_SUCCESS = 0x0,
+	PXP_STATUS_OP_NOT_PERMITTED = 0x4013
+};
+
+/* Common PXP FW message header */
+struct pxpcmn_cmd_header {
+	u32 api_version;
+	u32 command_id;
+} __packed;
+
+#endif /* __INTEL_PXP_FW_INTERFACE_CMN_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
index 7ec36d94e758..ea8389d54963 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
@@ -13,14 +13,14 @@
 #include "intel_pxp_huc.h"
 #include "intel_pxp_tee.h"
 #include "intel_pxp_types.h"
-#include "intel_pxp_tee_interface.h"
+#include "intel_pxp_cmd_interface_43.h"
 
 int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = pxp_to_gt(pxp);
 	struct intel_huc *huc = &gt->uc.huc;
-	struct pxp_tee_start_huc_auth_in huc_in = {0};
-	struct pxp_tee_start_huc_auth_out huc_out = {0};
+	struct pxp43_start_huc_auth_in huc_in = {0};
+	struct pxp43_start_huc_auth_out huc_out = {0};
 	dma_addr_t huc_phys_addr;
 	u8 client_id = 0;
 	u8 fence_id = 0;
@@ -32,10 +32,10 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
 	huc_phys_addr = i915_gem_object_get_dma_address(huc->fw.obj, 0);
 
 	/* write the PXP message into the lmem (the sg list) */
-	huc_in.header.api_version = PXP_TEE_43_APIVER;
-	huc_in.header.command_id  = PXP_TEE_43_START_HUC_AUTH;
-	huc_in.header.status      = 0;
-	huc_in.header.buffer_len  = sizeof(huc_in.huc_base_address);
+	huc_in.header.api_version = PXP43_APIVER;
+	huc_in.header.command_id  = PXP43_CMDID_START_HUC_AUTH;
+	huc_in.status             = 0;
+	huc_in.buffer_len         = sizeof(huc_in.huc_base_address);
 	huc_in.huc_base_address   = huc_phys_addr;
 
 	err = intel_pxp_tee_stream_message(pxp, client_id, fence_id,
@@ -57,11 +57,11 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
 	 * returned with HuC not loaded we'll still catch it when we check the
 	 * authentication bit later.
 	 */
-	if (huc_out.header.status != PXP_STATUS_SUCCESS &&
-	    huc_out.header.status != PXP_STATUS_OP_NOT_PERMITTED) {
+	if (huc_out.status != PXP_STATUS_SUCCESS &&
+	    huc_out.status != PXP_STATUS_OP_NOT_PERMITTED) {
 		drm_err(&gt->i915->drm,
 			"HuC load failed with GSC error = 0x%x\n",
-			huc_out.header.status);
+			huc_out.status);
 		return -EPROTO;
 	}
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 052fd2f9a583..7226becc0a82 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -14,7 +14,7 @@
 #include "intel_pxp.h"
 #include "intel_pxp_session.h"
 #include "intel_pxp_tee.h"
-#include "intel_pxp_tee_interface.h"
+#include "intel_pxp_cmd_interface_42.h"
 #include "intel_pxp_huc.h"
 
 static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
@@ -286,14 +286,14 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 					 int arb_session_id)
 {
 	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
-	struct pxp_tee_create_arb_in msg_in = {0};
-	struct pxp_tee_create_arb_out msg_out = {0};
+	struct pxp42_create_arb_in msg_in = {0};
+	struct pxp42_create_arb_out msg_out = {0};
 	int ret;
 
-	msg_in.header.api_version = PXP_TEE_APIVER;
-	msg_in.header.command_id = PXP_TEE_ARB_CMDID;
+	msg_in.header.header.api_version = PXP42_APIVER;
+	msg_in.header.header.command_id = PXP42_CMDID_INIT_SESSION;
 	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
-	msg_in.protection_mode = PXP_TEE_ARB_PROTECTION_MODE;
+	msg_in.protection_mode = PXP42_INIT_SESSION_PROTECTION_ARB;
 	msg_in.session_id = arb_session_id;
 
 	ret = intel_pxp_tee_io_message(pxp,
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
deleted file mode 100644
index 7edc1760f142..000000000000
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
+++ /dev/null
@@ -1,57 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright(c) 2020-2022, Intel Corporation. All rights reserved.
- */
-
-#ifndef __INTEL_PXP_TEE_INTERFACE_H__
-#define __INTEL_PXP_TEE_INTERFACE_H__
-
-#include <linux/types.h>
-
-#define PXP_TEE_APIVER 0x40002
-#define PXP_TEE_43_APIVER 0x00040003
-#define PXP_TEE_ARB_CMDID 0x1e
-#define PXP_TEE_ARB_PROTECTION_MODE 0x2
-#define PXP_TEE_43_START_HUC_AUTH   0x0000003A
-
-/*
- * there are a lot of status codes for PXP, but we only define the ones we
- * actually can handle in the driver. other failure codes will be printed to
- * error msg for debug.
- */
-enum pxp_status {
-	PXP_STATUS_SUCCESS = 0x0,
-	PXP_STATUS_OP_NOT_PERMITTED = 0x4013
-};
-
-/* PXP TEE message header */
-struct pxp_tee_cmd_header {
-	u32 api_version;
-	u32 command_id;
-	u32 status;
-	/* Length of the message (excluding the header) */
-	u32 buffer_len;
-} __packed;
-
-/* PXP TEE message input to create a arbitrary session */
-struct pxp_tee_create_arb_in {
-	struct pxp_tee_cmd_header header;
-	u32 protection_mode;
-	u32 session_id;
-} __packed;
-
-/* PXP TEE message output to create a arbitrary session */
-struct pxp_tee_create_arb_out {
-	struct pxp_tee_cmd_header header;
-} __packed;
-
-struct pxp_tee_start_huc_auth_in {
-	struct pxp_tee_cmd_header header;
-	__le64                    huc_base_address;
-};
-
-struct pxp_tee_start_huc_auth_out {
-	struct pxp_tee_cmd_header header;
-};
-
-#endif /* __INTEL_PXP_TEE_INTERFACE_H__ */

base-commit: 92b40b6e1d54d68a766c1545b9ace3e2eccad94a
-- 
2.34.1

