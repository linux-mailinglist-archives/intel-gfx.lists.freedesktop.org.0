Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2128154588E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 01:21:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6BD012B22F;
	Thu,  9 Jun 2022 23:21:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8948512B06C
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 23:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654816869; x=1686352869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B4co9E3DIVVd7UsO3dQiXeDUGX1CuQcfI+FAjCtLsno=;
 b=attf2/8gNPa9Hboz6el4/DX46MyC7dQ24u+PQFIkN5xGhp0rySZBryU+
 4fZ+wJCOchhAXVbPfRfJZGBvwKyLMRj/d/eEI7/e2QhKQs8Hf884l7Gzj
 yLElrvBNiHrqageQtWG0NEJ3Jn1PLPPVuXVvqxsN0sXzofVd31k1ePVwk
 6p/J0MVheGKFmQRbzM6zPd0S8H3QtZ4PCv4bXAjo9eCchzupTgyvGIqHF
 iWhCTpOaIl2bjVHPec+ac3gnLaOcv9IPUg9y19OFqqhGor5BFxYDdIzNd
 MY6FJsNMG5MW4Lm7yUCH+ekHVG6qF45Lpte7enpXMRbGzGT5FQ9zRsGIF Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="278257628"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="278257628"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="908586453"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:07 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jun 2022 16:19:49 -0700
Message-Id: <20220609231955.3632596-10-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/15] drm/i915/pxp: add huc authentication and
 loading command
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
Cc: Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

Add support for loading HuC via a pxp stream command.

Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  3 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      | 69 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.h      | 15 ++++
 .../drm/i915/pxp/intel_pxp_tee_interface.h    | 21 ++++++
 4 files changed, 107 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 5d3aa4807def..8d90e653958c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -306,7 +306,8 @@ i915-y += i915_perf.o
 # Protected execution platform (PXP) support. Base support is required for HuC
 i915-y += \
 	pxp/intel_pxp.o \
-	pxp/intel_pxp_tee.o
+	pxp/intel_pxp_tee.o \
+	pxp/intel_pxp_huc.o
 
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp_cmd.o \
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
new file mode 100644
index 000000000000..6d25f436f329
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2021, Intel Corporation. All rights reserved.
+ */
+
+#include "drm/i915_drm.h"
+#include "i915_drv.h"
+
+#include "gem/i915_gem_region.h"
+#include "gt/intel_gt.h"
+
+#include "intel_pxp.h"
+#include "intel_pxp_huc.h"
+#include "intel_pxp_tee.h"
+#include "intel_pxp_types.h"
+#include "intel_pxp_tee_interface.h"
+
+int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
+{
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_huc *huc = &gt->uc.huc;
+	struct pxp_tee_start_huc_auth_in huc_in = {0};
+	struct pxp_tee_start_huc_auth_out huc_out = {0};
+	dma_addr_t huc_phys_addr;
+	u8 client_id = 0;
+	u8 fence_id = 0;
+	int err;
+
+	if (!pxp->pxp_component)
+		return -ENODEV;
+
+	huc_phys_addr = i915_gem_object_get_dma_address(huc->fw.obj, 0);
+
+	/* write the PXP message into the lmem (the sg list) */
+	huc_in.header.api_version = PXP_TEE_43_APIVER;
+	huc_in.header.command_id  = PXP_TEE_43_START_HUC_AUTH;
+	huc_in.header.status      = 0;
+	huc_in.header.buffer_len  = sizeof(huc_in.huc_base_address);
+	huc_in.huc_base_address   = huc_phys_addr;
+
+	err = intel_pxp_tee_stream_message(pxp, client_id, fence_id,
+					   &huc_in, sizeof(huc_in),
+					   &huc_out, sizeof(huc_out));
+	if (err < 0) {
+		drm_err(&gt->i915->drm,
+			"Failed to send HuC load and auth command to GSC [%d]!\n",
+			err);
+		return err;
+	}
+
+	/*
+	 * HuC does sometimes survive suspend/resume (it depends on how "deep"
+	 * a sleep state the device reaches) so we can end up here on resume
+	 * with HuC already loaded, in which case the GSC will return
+	 * PXP_STATUS_OP_NOT_PERMITTED. We can therefore consider the GuC
+	 * correctly transferred in this scenario; if the same error is ever
+	 * returned with HuC not loaded we'll still catch it when we check the
+	 * authentication bit later.
+	 */
+	if (huc_out.header.status != PXP_STATUS_SUCCESS &&
+	    huc_out.header.status != PXP_STATUS_OP_NOT_PERMITTED) {
+		drm_err(&gt->i915->drm,
+			"HuC load failed with GSC error = 0x%x\n",
+			huc_out.header.status);
+		return -EPROTO;
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.h b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.h
new file mode 100644
index 000000000000..6cf2d00548c0
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2021, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_HUC_H__
+#define __INTEL_PXP_HUC_H__
+
+#include <linux/types.h>
+
+struct intel_pxp;
+
+int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp);
+
+#endif /* __INTEL_PXP_HUC_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
index 36e9b0868f5c..1de98959a89d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
@@ -9,8 +9,20 @@
 #include <linux/types.h>
 
 #define PXP_TEE_APIVER 0x40002
+#define PXP_TEE_43_APIVER 0x00040003
 #define PXP_TEE_ARB_CMDID 0x1e
 #define PXP_TEE_ARB_PROTECTION_MODE 0x2
+#define PXP_TEE_43_START_HUC_AUTH   0x0000003A
+
+/*
+ * there are a lot of status codes for PXP, but we only define the ones we
+ * actually can handle in the driver. other failure codes will be printed to
+ * error msg for debug.
+ */
+enum pxp_status {
+	PXP_STATUS_SUCCESS = 0x0,
+	PXP_STATUS_OP_NOT_PERMITTED = 0x4013
+};
 
 /* PXP TEE message header */
 struct pxp_tee_cmd_header {
@@ -33,4 +45,13 @@ struct pxp_tee_create_arb_out {
 	struct pxp_tee_cmd_header header;
 } __packed;
 
+struct pxp_tee_start_huc_auth_in {
+	struct pxp_tee_cmd_header header;
+	__le64                    huc_base_address;
+};
+
+struct pxp_tee_start_huc_auth_out {
+	struct pxp_tee_cmd_header header;
+};
+
 #endif /* __INTEL_PXP_TEE_INTERFACE_H__ */
-- 
2.25.1

