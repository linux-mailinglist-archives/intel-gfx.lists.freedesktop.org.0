Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD8964C58B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 10:09:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 536FA10E38D;
	Wed, 14 Dec 2022 09:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9B5C890FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 09:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671008941; x=1702544941;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UcEu9H8V4qvXcXOi4PSM1710TvIhtvCEI+JsV0Yyk68=;
 b=AaUDpYC15p1YuoPwK4afW4icH1SnlL30GFtbbqEJxFUlKS3dVQsgleCo
 XmtxJ7w/+AEc4jK/22MHVx7Y1Q8SnrsupJyl5TJwaLWiimivYABndtqeV
 0v9B0PFpil87PL0DdYTDC+I1UQol+VstS11UPdu6u3wdqQxf8dp/01sKL
 e719RRhaoaLzKIDxsDmIjbUTI6/Qg3ismWKwrns2N1dO/FD7WJTQSfemC
 UKe6ea+Bq6s1VkLqlVZaMCUA6EnIfkj754fDT7JPOvKVtl12a1HPAJgWN
 ov4U+b12ug11HckXZuiqbKzWwrXTJE5az/D97frDSMvRB7pN6fe/d03Fj g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="317054623"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="317054623"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 01:09:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="681458390"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="681458390"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2022 01:08:59 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Dec 2022 14:37:52 +0530
Message-Id: <20221214090758.3040356-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221214090758.3040356-1-suraj.kandpal@intel.com>
References: <20221214090758.3040356-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/7] drm/i915/gsc: Create GSC request
 submission mechanism
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
Cc: jani.nikula@intel.com, Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

HDCP and PXP will require a common function to allow it to
submit commands to the gsc cs. Also adding the gsc mtl header
that needs to be added on to the existing payloads of HDCP
and PXP.

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Suraj Kandpal<suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c    | 62 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h    |  3 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h  | 41 +++++++++++++
 4 files changed, 105 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h

diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 2af1ae3831df..454179884801 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -439,6 +439,8 @@
 #define GSC_FW_LOAD GSC_INSTR(1, 0, 2)
 #define   HECI1_FW_LIMIT_VALID (1 << 31)
 
+#define GSC_HECI_CMD_PKT GSC_INSTR(0, 0, 6)
+
 /*
  * Used to convert any address to canonical form.
  * Starting from gen8, some commands (e.g. STATE_BASE_ADDRESS,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index e73d4440c5e8..f00e88fdb5d2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -30,6 +30,35 @@ bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc)
 	return fw_status & GSC_FW_INIT_COMPLETE_BIT;
 }
 
+struct gsc_heci_pkt {
+	u64 addr_in;
+	u32 size_in;
+	u64 addr_out;
+	u32 size_out;
+};
+
+static int emit_gsc_heci_pkt(struct i915_request *rq, struct gsc_heci_pkt *pkt)
+{
+	u32 *cs;
+
+	cs = intel_ring_begin(rq, 8);
+	if (IS_ERR(cs))
+		return PTR_ERR(cs);
+
+	*cs++ = GSC_HECI_CMD_PKT;
+	*cs++ = lower_32_bits(pkt->addr_in);
+	*cs++ = upper_32_bits(pkt->addr_in);
+	*cs++ = pkt->size_in;
+	*cs++ = lower_32_bits(pkt->addr_out);
+	*cs++ = upper_32_bits(pkt->addr_out);
+	*cs++ = pkt->size_out;
+	*cs++ = 0;
+
+	intel_ring_advance(rq, cs);
+
+	return 0;
+}
+
 static int emit_gsc_fw_load(struct i915_request *rq, struct intel_gsc_uc *gsc)
 {
 	u32 offset = i915_ggtt_offset(gsc->local);
@@ -49,7 +78,12 @@ static int emit_gsc_fw_load(struct i915_request *rq, struct intel_gsc_uc *gsc)
 	return 0;
 }
 
-static int gsc_fw_load(struct intel_gsc_uc *gsc)
+/*
+ * Our submissions to GSC are going to be either a FW load or an heci pkt, but
+ * all the request emission logic is the same so we can use a common func and
+ * just add the correct cmd
+ */
+static int submit_to_gsc_fw(struct intel_gsc_uc *gsc, struct gsc_heci_pkt *pkt)
 {
 	struct intel_context *ce = gsc->ce;
 	struct i915_request *rq;
@@ -68,7 +102,11 @@ static int gsc_fw_load(struct intel_gsc_uc *gsc)
 			goto out_rq;
 	}
 
-	err = emit_gsc_fw_load(rq, gsc);
+	if (pkt)
+		err = emit_gsc_heci_pkt(rq, pkt);
+	else
+		err = emit_gsc_fw_load(rq, gsc);
+
 	if (err)
 		goto out_rq;
 
@@ -89,12 +127,30 @@ static int gsc_fw_load(struct intel_gsc_uc *gsc)
 
 	if (err)
 		drm_err(&gsc_uc_to_gt(gsc)->i915->drm,
-			"Request submission for GSC load failed (%d)\n",
+			"Request submission for GSC failed (%d)\n",
 			err);
 
 	return err;
 }
 
+static int gsc_fw_load(struct intel_gsc_uc *gsc)
+{
+	return submit_to_gsc_fw(gsc, NULL);
+}
+
+int intel_gsc_fw_heci_send(struct intel_gsc_uc *gsc, u64 addr_in, u32 size_in,
+			   u64 addr_out, u32 size_out)
+{
+	struct gsc_heci_pkt pkt = {
+	.addr_in = addr_in,
+	.size_in = size_in,
+	.addr_out = addr_out,
+	.size_out = size_out
+	};
+
+	return submit_to_gsc_fw(gsc, &pkt);
+}
+
 static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
 {
 	struct intel_gt *gt = gsc_uc_to_gt(gsc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
index 4b5dbb44afb4..4a75c3dec669 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
@@ -12,4 +12,7 @@ struct intel_gsc_uc;
 
 int intel_gsc_uc_fw_upload(struct intel_gsc_uc *gsc);
 bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc);
+int intel_gsc_fw_heci_send(struct intel_gsc_uc *gsc, u64 addr_in, u32 size_in,
+			   u64 addr_out, u32 size_out);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h
new file mode 100644
index 000000000000..1c2a04d092a8
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef _INTEL_GSC_FWIF_H_
+#define _INTEL_GSC_FWIF_H_
+
+#include <linux/types.h>
+
+struct intel_gsc_mtl_header {
+	u32 validity_marker;
+#define GSC_HECI_VALIDITY_MARKER 0xA578875A
+
+	u8 gsc_address;
+#define HECI_MEADDRESS_PXP 17
+#define HECI_MEADDRESS_HDCP 18
+
+	u8 reserved1;
+
+	u16 header_version;
+#define MTL_GSC_HEADER_VERSION 1
+
+	u64 host_session_handle;
+	u64 gsc_message_handle;
+
+	u32 message_size; /* lower 20 bits only, upper 12 are reserved */
+
+	/*
+	 * Flags mask:
+	 * Bit 0: Pending
+	 * Bit 1: Session Cleanup;
+	 * Bits 2-15: Flags
+	 * Bits 16-31: Extension Size
+	 */
+	u32 flags;
+
+	u32 status;
+} __packed;
+
+#endif
-- 
2.25.1

