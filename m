Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1170642368
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 08:07:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D4D510E103;
	Mon,  5 Dec 2022 07:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ABAC10E12B
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 07:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670224022; x=1701760022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7DVEpI4LcIcS2SLxh+kgIEcL9opIxdGubrZZPuHbegk=;
 b=krYqvLHZHAwlbFzTBg/GFusTF5rQbQgLqR6dkQm0LyIJDvo4MRK4C//M
 3F8FZyix/tXckQMY0EG9rQK1uWGh8+t8ykDBVn8ZoVF/+ij/1m7FMMY7w
 L/G9F+i8QUamtotabx9KYg3IxcEUoeZtODJthM9VSKzSSsaIh5XhkXULW
 7Hyqe4DeOEjxCLSVwtKL/I7njdi8AdKMH096VBXCn0/rC/bSMXcNCeVpy
 mWa025Rz5AJAOtVJ7DhHUOqzWrIOwH5lJMsmWaQo+bb1m23+pys9pnLMk
 rRWUivebpejZ4jGb5ckphJVG8u7oREYpeEQf4MeYDaWt0DwCAj2p+In/5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="317423679"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="317423679"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 23:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="676489383"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="676489383"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 04 Dec 2022 23:07:00 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Dec 2022 12:35:41 +0530
Message-Id: <20221205070543.2510309-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221205070543.2510309-1-suraj.kandpal@intel.com>
References: <20221205070543.2510309-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-*8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/13] drm/i915/gsc: Create GSC request
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
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h    |  5 ++
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h  | 42 +++++++++++++
 4 files changed, 108 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h

diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 49ebda141266..15c3122456e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -439,6 +439,8 @@
 #define GSC_FW_LOAD GSC_INSTR(1, 0, 2)
 #define   HECI1_FW_LIMIT_VALID (1<<31)
 
+#define GSC_HECI_CMD_PKT GSC_INSTR(0, 0, 6)
+
 /*
  * Used to convert any address to canonical form.
  * Starting from gen8, some commands (e.g. STATE_BASE_ADDRESS,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index 5dad3c19c445..a2163f930f5b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -29,6 +29,35 @@ static bool gsc_init_done(struct intel_uncore *uncore)
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
+	u32* cs;
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
@@ -48,7 +77,12 @@ static int emit_gsc_fw_load(struct i915_request *rq, struct intel_gsc_uc *gsc)
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
@@ -67,7 +101,11 @@ static int gsc_fw_load(struct intel_gsc_uc *gsc)
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
 
@@ -88,12 +126,30 @@ static int gsc_fw_load(struct intel_gsc_uc *gsc)
 
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
index d714e5e69a6d..49feb72c5464 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
@@ -6,8 +6,13 @@
 #ifndef _INTEL_GSC_FW_H_
 #define _INTEL_GSC_FW_H_
 
+#include <linux/types.h>
+
 struct intel_gsc_uc;
 
 int intel_gsc_fw_upload(struct intel_gsc_uc *gsc);
 
+int intel_gsc_fw_heci_send(struct intel_gsc_uc *gsc, u64 addr_in, u32 size_in,
+			   u64 addr_out, u32 size_out);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h
new file mode 100644
index 000000000000..3e588b4f022a
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h
@@ -0,0 +1,42 @@
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
+struct intel_gsc_mtl_header
+{
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

