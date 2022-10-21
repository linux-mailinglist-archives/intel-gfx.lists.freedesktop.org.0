Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CE8608219
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Oct 2022 01:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95EDD10E1A6;
	Fri, 21 Oct 2022 23:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ACD010E1A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 23:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666395418; x=1697931418;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bCQDTtbMAFMGdh+nHeJyM+UQxu6p3+GuNNIrWB5HAnM=;
 b=Rf1zOCXZYHZQwV6O3t+Bh9T2Hfg//kPuQNmZINVAw1lkA2cAMwvJya7H
 RONLsj/2ecwyfJVvkTzghfAbMlIH6m041gBgA21TgUau0iBbyu+gNiZBJ
 2IuMWiO3VyRkCCNIMRFs3nFd4rr/u8fGTcWIgyyq499QhByP/0snwxvkf
 DgVMglZfgf1wGoZpkhePeFEolKCqnbrp3OyiGfRVoUJgyM7gpVFLRFsx1
 T5esf+6O1tfRcl2K3hWVQhDffhXMf1+yc5/lDWZ5hoHx/BjRVAKbZDdo9
 WOegj9o9jnx0SsN/4lXcTQw9Cr53gKEkSwadwg7XMYomuqjkwVVLJi/U5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="308814895"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="308814895"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 16:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="663940646"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="663940646"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 21 Oct 2022 16:36:57 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 16:39:12 -0700
Message-Id: <20221021233912.468966-1-alan.previn.teres.alexis@intel.com>
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
authentication on DG2. With MTL, we'll need both these capabilities
side by side with these older platform feature support. That said,
let's create separate files to define the structures and definitions
for both version-42 and 43 of PXP FW interfaces.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 39 +++++++++++++
 .../drm/i915/pxp/intel_pxp_cmd_interface_43.h | 45 +++++++++++++++
 .../i915/pxp/intel_pxp_cmd_interface_cmn.h    | 27 +++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      |  2 +-
 .../drm/i915/pxp/intel_pxp_tee_interface.h    | 57 -------------------
 5 files changed, 112 insertions(+), 58 deletions(-)
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
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 6dcebed78c8d..aabafb34fdcd 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -293,7 +293,7 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 	msg_in.header.header.api_version = PXP42_APIVER;
 	msg_in.header.header.command_id = PXP42_CMDID_INIT_SESSION;
 	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
-+	msg_in.protection_mode = PXP42_INIT_SESSION_PROTECTION_ARB;
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
-- 
2.34.1

