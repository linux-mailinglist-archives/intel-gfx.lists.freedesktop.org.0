Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7068D636D2E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 23:32:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6DA910E654;
	Wed, 23 Nov 2022 22:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1421910E656
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 22:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669242702; x=1700778702;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=J9HgDGD5IJxkimgaBXJuBD7w0at5GVRhjOLzOUBv8TQ=;
 b=XySchc1XkUhtYKUeTFQMDJcMkJu/vJ9eYlHIqRWDePBLGHdMXXvJyvwr
 IRAIF4tfJrkeCK/DOD5X+5GvRxOp/tUIsXiywoinFn5oNWAHcvXaOhjyV
 B/uasz0iboCkBnaaAsm4IsRORwFJ8bEn+3/VWsJMVRSRayNTL/B35TjYx
 KXowkcW3Ypa/wWphYSN1sKcStajjfROf5+PyT2fEiLpsQa7nVlQq8KRvE
 vKOgegOgEpxMoZDsAipAw+I4e3RtyMXcvD7Oqe4Ep6OfHGlaG0kjJQlpI
 ES4N8f5gQ3LwjNEOfTSbQdZnq7Ct2VU8NN1JWGfEHA4DPstvqbA9e8UNT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="293875383"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="293875383"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 14:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="784404457"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="784404457"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2022 14:31:40 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 14:34:09 -0800
Message-Id: <20221123223410.2846296-7-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
References: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 6/7] drm/i915/pxp: Add PXP gsccs tee-link backend
 stubs
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

Add PXP gsccs tee-link backend using empty stubs for now.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Makefile              |  3 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c | 46 ++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h | 13 ++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c   | 14 +++++--
 4 files changed, 72 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 6ed45d9145e8..05072d7a4ba4 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -320,7 +320,8 @@ i915-y += \
 	pxp/intel_pxp.o \
 	pxp/intel_pxp_tee.o \
 	pxp/intel_pxp_tee_mei.o \
-	pxp/intel_pxp_huc.o
+	pxp/intel_pxp_huc.o \
+	pxp/intel_pxp_gsccs.o
 
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp_cmd.o \
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
new file mode 100644
index 000000000000..a4243272ca73
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2022 Intel Corporation.
+ */
+
+#include "i915_drv.h"
+#include "intel_pxp.h"
+#include "intel_pxp_gsccs.h"
+
+static int gsccs_tee_send_message(struct intel_pxp *pxp,
+				  void *msg_in, size_t msg_in_size,
+				  void *msg_out, size_t msg_out_size_max,
+				  size_t *msg_out_len)
+{
+	return -ENODEV;
+}
+
+static int
+gsccs_tee_create_session(struct intel_pxp *pxp,
+			 int session_id)
+{
+	return -ENODEV;
+}
+
+static bool gsccs_tee_is_ready(struct intel_pxp *pxp)
+{
+	return false;
+}
+
+static void gsccs_tee_fini(struct intel_pxp *pxp)
+{
+}
+
+static int gsccs_tee_init(struct intel_pxp *pxp)
+{
+	return -ENODEV;
+}
+
+void intel_pxp_init_gsccs_tee_hooks(struct intel_pxp *pxp)
+{
+	pxp->tee_link.init = gsccs_tee_init;
+	pxp->tee_link.fini = gsccs_tee_fini;
+	pxp->tee_link.is_ready = gsccs_tee_is_ready;
+	pxp->tee_link.create_session = gsccs_tee_create_session;
+	pxp->tee_link.send_message = gsccs_tee_send_message;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
new file mode 100644
index 000000000000..5fb9f2c042ff
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2022, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_TEE_GSCCS_H__
+#define __INTEL_PXP_TEE_GSCCS_H__
+
+struct intel_pxp;
+
+void intel_pxp_init_gsccs_tee_hooks(struct intel_pxp *pxp);
+
+#endif /* __INTEL_PXP_TEE_GSCCS_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 1171f339643c..a4b7f6c7bc54 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "intel_pxp.h"
+#include "intel_pxp_gsccs.h"
 #include "intel_pxp_tee.h"
 #include "intel_pxp_tee_mei.h"
 
@@ -51,6 +52,11 @@ bool intel_pxp_teelink_is_ready(struct intel_pxp *pxp)
 	return false;
 }
 
+static bool gt_supports_teelink_via_gsccs(struct intel_gt *gt)
+{
+	return (HAS_ENGINE(gt, GSC0));
+}
+
 static bool gt_supports_teelink_via_mei(struct intel_gt *gt)
 {
 	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && !HAS_ENGINE(gt, GSC0));
@@ -61,11 +67,13 @@ int intel_pxp_teelink_init(struct intel_pxp *pxp)
 	struct intel_gt *gt = pxp_to_gt(pxp);
 	int ret = -ENOLINK;
 
-	if (!gt_supports_teelink_via_mei(gt))
+	if (gt_supports_teelink_via_mei(gt))
+		intel_pxp_init_mei_tee_hooks(pxp);
+	else if (gt_supports_teelink_via_gsccs(gt))
+		intel_pxp_init_gsccs_tee_hooks(pxp);
+	else
 		return -ENODEV;
 
-	intel_pxp_init_mei_tee_hooks(pxp);
-
 	if (pxp->tee_link.init)
 		ret = pxp->tee_link.init(pxp);
 	if (ret)
-- 
2.34.1

