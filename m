Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0941562088A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 05:54:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D75310E479;
	Tue,  8 Nov 2022 04:54:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D248B10E479
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 04:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667883254; x=1699419254;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MWhBba4M1gEXY88h3qRJJ2bNkUxbxraeuFEtXaPQc+o=;
 b=JOGarlgWv3UdY8BkeLqKLIXQQbv23bVc2wIvdY0M6ReHtk3QBDxXmDm6
 QZO/6UfofBwelkoRUf4IpwCTfOansTwm11cePdfQZtd/j9OMZ2eabIRIs
 n6Nk0PDjYLLRyFe8Q8ZO58SmbpJG1klyNqJSCypADA/cLeTbmmhz2WbiT
 0wOE2HsVJo+a1iFF65eLqRz/N5frEx3dCh4jCM9nqI7LqsK2qiftRHRCZ
 hHyu+1UfeE2UxJPVxCXuMzuXEoy1+mLwAAM8/VHLrpjt1V0Fxr+H7+HlE
 4XSf2je+R3Hu4ycSjaqToKAAON5IY7IVuIUCuQh0HbNzIxxyIF0D+s/Zd g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="374875739"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="374875739"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 20:54:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="965436275"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="965436275"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 07 Nov 2022 20:54:13 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 20:56:28 -0800
Message-Id: <20221108045628.4187260-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221108045628.4187260-1-alan.previn.teres.alexis@intel.com>
References: <20221108045628.4187260-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/1] drm/i915/pxp: Separate PXP FW interface
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
 .../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 28 +++++++++
 .../drm/i915/pxp/intel_pxp_cmd_interface_43.h | 26 +++++++++
 .../i915/pxp/intel_pxp_cmd_interface_cmn.h    | 35 ++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      | 10 ++--
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 12 ++--
 .../drm/i915/pxp/intel_pxp_tee_interface.h    | 57 -------------------
 6 files changed, 100 insertions(+), 68 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
 delete mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
new file mode 100644
index 000000000000..739f9072fa5f
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
@@ -0,0 +1,28 @@
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
+/* PXP-Opcode for Init Session */
+#define PXP42_CMDID_INIT_SESSION 0x1e
+
+/* PXP-Input-Packet: Init Session (Arb-Session) */
+struct pxp42_create_arb_in {
+	struct pxp_cmd_header header;
+	u32 protection_mode;
+#define PXP42_ARB_SESSION_MODE_HEAVY 0x2
+	u32 session_id;
+} __packed;
+
+/* PXP-Output-Packet: Init Session */
+struct pxp42_create_arb_out {
+	struct pxp_cmd_header header;
+} __packed;
+
+#endif /* __INTEL_PXP_FW_INTERFACE_42_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
new file mode 100644
index 000000000000..ad67e3f49c20
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
@@ -0,0 +1,26 @@
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
+/* PXP-Cmd-Op definitions */
+#define PXP43_CMDID_START_HUC_AUTH 0x0000003A
+
+/* PXP-Input-Packet: HUC-Authentication */
+struct pxp43_start_huc_auth_in {
+	struct pxp_cmd_header header;
+	__le64 huc_base_address;
+} __packed;
+
+/* PXP-Output-Packet: HUC-Authentication */
+struct pxp43_start_huc_auth_out {
+	struct pxp_cmd_header header;
+} __packed;
+
+#endif /* __INTEL_PXP_FW_INTERFACE_43_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
new file mode 100644
index 000000000000..c2f23394f9b8
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
@@ -0,0 +1,35 @@
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
+#define PXP_APIVER(x, y) (((x) & 0xFFFF) << 16 | ((y) & 0xFFFF))
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
+struct pxp_cmd_header {
+	u32 api_version;
+	u32 command_id;
+	union {
+		u32 status; /* out */
+		u32 stream_id; /* in */
+	};
+	/* Length of the message (excluding the header) */
+	u32 buffer_len;
+} __packed;
+
+#endif /* __INTEL_PXP_FW_INTERFACE_CMN_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
index 7ec36d94e758..ed27e3524afc 100644
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
@@ -32,8 +32,8 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
 	huc_phys_addr = i915_gem_object_get_dma_address(huc->fw.obj, 0);
 
 	/* write the PXP message into the lmem (the sg list) */
-	huc_in.header.api_version = PXP_TEE_43_APIVER;
-	huc_in.header.command_id  = PXP_TEE_43_START_HUC_AUTH;
+	huc_in.header.api_version = PXP_APIVER(4, 3);
+	huc_in.header.command_id  = PXP43_CMDID_START_HUC_AUTH;
 	huc_in.header.status      = 0;
 	huc_in.header.buffer_len  = sizeof(huc_in.huc_base_address);
 	huc_in.huc_base_address   = huc_phys_addr;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 052fd2f9a583..b0c9170b1395 100644
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
+	msg_in.header.api_version = PXP_APIVER(4, 2);
+	msg_in.header.command_id = PXP42_CMDID_INIT_SESSION;
 	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
-	msg_in.protection_mode = PXP_TEE_ARB_PROTECTION_MODE;
+	msg_in.protection_mode = PXP42_ARB_SESSION_MODE_HEAVY;
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
-- 
2.34.1

