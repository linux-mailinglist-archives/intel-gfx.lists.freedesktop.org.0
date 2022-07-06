Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5430B5686F9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 13:44:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC159113BD3;
	Wed,  6 Jul 2022 11:44:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C07A810F26A
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jul 2022 11:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657107865; x=1688643865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IIP6k0bRVrxB3OsHNXK8aVtomJZmLlBiWC2bCvZta00=;
 b=namLOi9gcs1NBZur1thXFrg1I0iignliw62ruxHh+V4UaraJnq7OiLt5
 FZA/R3XkmXZpZdEkMqig5Sft0a8xTNjx5LCIpj/HKpjX7yQvH8aQ6ULUH
 WN/k4OQ78Oe4gNE+uvW8/Y2PHDjWS0iuoryr5+pOoidb7deNtLBqhrjyw
 69J4KlMXI0+GWmMs+FhJSTWpJ1ylrwEkNt6/y5qoIEHvmOE571M+Qj4E0
 5s+ZBlywXzmC7fLOOA4Sga/XTPysWTMjtooWvHYJi9OqCIx5VzB0/Ejgz
 snZ3Dgb/52j/V9xj6umL4Je0ywTiZ5J4q/IzJBA0/aEjhD9xmodRbVfqQ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="284459551"
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="284459551"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 04:44:25 -0700
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="650630202"
Received: from sannilnx.jer.intel.com ([10.12.26.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 04:44:22 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Wed,  6 Jul 2022 14:43:39 +0300
Message-Id: <20220706114345.1128018-9-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220706114345.1128018-1-alexander.usyskin@intel.com>
References: <20220706114345.1128018-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 08/14] mei: bus: export common mkhi
 definitions into a separate header
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
Cc: linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vitaly Lubart <vitaly.lubart@intel.com>

Exported common mkhi definitions from bus-fixup.c into a separate
header file mkhi.h for other driver usage.

Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/misc/mei/bus-fixup.c | 32 ++-----------------------
 drivers/misc/mei/mkhi.h      | 45 ++++++++++++++++++++++++++++++++++++
 2 files changed, 47 insertions(+), 30 deletions(-)
 create mode 100644 drivers/misc/mei/mkhi.h

diff --git a/drivers/misc/mei/bus-fixup.c b/drivers/misc/mei/bus-fixup.c
index 24e91a9ea558..190691abddc9 100644
--- a/drivers/misc/mei/bus-fixup.c
+++ b/drivers/misc/mei/bus-fixup.c
@@ -15,6 +15,7 @@
 
 #include "mei_dev.h"
 #include "client.h"
+#include "mkhi.h"
 
 #define MEI_UUID_NFC_INFO UUID_LE(0xd2de1625, 0x382d, 0x417d, \
 			0x48, 0xa4, 0xef, 0xab, 0xba, 0x8a, 0x12, 0x06)
@@ -80,6 +81,7 @@ static void whitelist(struct mei_cl_device *cldev)
 }
 
 #define OSTYPE_LINUX    2
+
 struct mei_os_ver {
 	__le16 build;
 	__le16 reserved1;
@@ -89,20 +91,6 @@ struct mei_os_ver {
 	u8  reserved2;
 } __packed;
 
-#define MKHI_FEATURE_PTT 0x10
-
-struct mkhi_rule_id {
-	__le16 rule_type;
-	u8 feature_id;
-	u8 reserved;
-} __packed;
-
-struct mkhi_fwcaps {
-	struct mkhi_rule_id id;
-	u8 len;
-	u8 data[];
-} __packed;
-
 struct mkhi_fw_ver_block {
 	u16 minor;
 	u8 major;
@@ -115,22 +103,6 @@ struct mkhi_fw_ver {
 	struct mkhi_fw_ver_block ver[MEI_MAX_FW_VER_BLOCKS];
 } __packed;
 
-#define MKHI_FWCAPS_GROUP_ID 0x3
-#define MKHI_FWCAPS_SET_OS_VER_APP_RULE_CMD 6
-#define MKHI_GEN_GROUP_ID 0xFF
-#define MKHI_GEN_GET_FW_VERSION_CMD 0x2
-struct mkhi_msg_hdr {
-	u8  group_id;
-	u8  command;
-	u8  reserved;
-	u8  result;
-} __packed;
-
-struct mkhi_msg {
-	struct mkhi_msg_hdr hdr;
-	u8 data[];
-} __packed;
-
 #define MKHI_OSVER_BUF_LEN (sizeof(struct mkhi_msg_hdr) + \
 			    sizeof(struct mkhi_fwcaps) + \
 			    sizeof(struct mei_os_ver))
diff --git a/drivers/misc/mei/mkhi.h b/drivers/misc/mei/mkhi.h
new file mode 100644
index 000000000000..27a9b476904e
--- /dev/null
+++ b/drivers/misc/mei/mkhi.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2003-2020, Intel Corporation. All rights reserved.
+ * Intel Management Engine Interface (Intel MEI) Linux driver
+ */
+
+#ifndef _MEI_MKHI_H_
+#define _MEI_MKHI_H_
+
+#include "mei_dev.h"
+
+#define MKHI_FEATURE_PTT 0x10
+
+#define MKHI_FWCAPS_GROUP_ID 0x3
+#define MKHI_FWCAPS_SET_OS_VER_APP_RULE_CMD 6
+#define MKHI_GEN_GROUP_ID 0xFF
+#define MKHI_GEN_GET_FW_VERSION_CMD 0x2
+
+#define MCHI_GROUP_ID  0xA
+
+struct mkhi_rule_id {
+	__le16 rule_type;
+	u8 feature_id;
+	u8 reserved;
+} __packed;
+
+struct mkhi_fwcaps {
+	struct mkhi_rule_id id;
+	u8 len;
+	u8 data[];
+} __packed;
+
+struct mkhi_msg_hdr {
+	u8  group_id;
+	u8  command;
+	u8  reserved;
+	u8  result;
+} __packed;
+
+struct mkhi_msg {
+	struct mkhi_msg_hdr hdr;
+	u8 data[];
+} __packed;
+
+#endif /* _MEI_MKHI_H_ */
-- 
2.34.1

