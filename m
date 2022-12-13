Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07DA64AEC4
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 05:57:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F20F110E1A8;
	Tue, 13 Dec 2022 04:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 451CA10E1A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 04:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670907388; x=1702443388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zn5n3vzMru5rlLOs2oTQBURvwg5dVQnpah+opy2u6I0=;
 b=T3MdPObdOK+34eAj65ynknxSx7Jtn2a8/GsaTtu7+xSoVgKybax4ti2V
 m68PWurc5NAQr8DCNlcg/k6MXke5YOT8ANLIISjzXV8X65CqlBw1Buksf
 v5AEHbTj1SSGku9Fqi91CFmrSJ7DMJ50rZgj77Of1Cb754lBeKcUFlNZ1
 33V6ld+aH5alaZVFbF6oy9Cn/pdtywTU12KOzYPKOxKNhCzzDo/e+yauc
 M2r4cjyLy4aca0h5Y9JW+R81EgMVj5CDwef5t/FTh1/TJxZDHqA9NvWBz
 qHNDuODN16RM4/tWolpu8d1UrIFWbCEQai3QTnW3Ig9s/tq0r/1zBvhNv g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="315677931"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="315677931"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 20:56:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="822748138"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="822748138"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 12 Dec 2022 20:56:20 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Dec 2022 10:25:10 +0530
Message-Id: <20221213045516.2609109-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221213045516.2609109-1-suraj.kandpal@intel.com>
References: <20221213045516.2609109-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utgf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/gsc: Create GSC request submission
 mechanism
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
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
index 000000000000..d0d298c47ad5
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

