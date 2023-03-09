Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FED16B1D0E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 08:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C974F10E7A6;
	Thu,  9 Mar 2023 07:55:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A92110E7A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 07:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678348523; x=1709884523;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9QHJEndz+q15lN/R5IEunuS/2ghdE9EjsDsSaN28l1c=;
 b=mnrM+hV1wr7gtaGSDfOsrxiO2JgQQcGOl9gyJUJuknwb+o6OiLbGF2zT
 91q/VRgSTHcIxmBOhaDhPlSF5VT03SWuJgjOn0RTpdbuT2qULbGjYaDMf
 Jw0FRsm4EL1FpY62505+yjnQucAeCSZV7MOxVt+dnsKs2z+W0IzbuRsEK
 HCfR/2siwUlQaMxWzRjrgnDo4GVw7IJBk8dmU+Z4SmLs4nf7OFwqC42RA
 bJiWnHRPbRqUP8bfou47SJ3kd6B6/dQSVzRvquP9vs5ZOj0SYyp3qeq4S
 6JNAFKza2P/KW2Ze4OhiiojEFfc3LvtQLSbeQyByZNV4oGNDlhiJ+TWOy Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="398960437"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="398960437"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 23:55:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="707510391"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="707510391"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 08 Mar 2023 23:55:20 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Mar 2023 13:24:18 +0530
Message-Id: <20230309075423.409402-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230309075423.409402-1-suraj.kandpal@intel.com>
References: <20230309075423.409402-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 1/6] drm/i915/gsc: Create GSC request
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

--v4
-Seprate gsc load and heci cmd submission into different
functions in different files for better scalability [Alan]
-Rename gsc address field [Alan]

--v5
-remove extra line is intel_gsc_fw.h [Uma]

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Suraj Kandpal<suraj.kandpal@intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  2 +
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c | 94 +++++++++++++++++++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h | 45 +++++++++
 4 files changed, 142 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 8e46f57e4569..8c6b3808c49f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -195,6 +195,7 @@ i915-y += \
 i915-y += \
 	  gt/uc/intel_gsc_fw.o \
 	  gt/uc/intel_gsc_uc.o \
+	  gt/uc/intel_gsc_uc_heci_cmd_submit.o\
 	  gt/uc/intel_guc.o \
 	  gt/uc/intel_guc_ads.o \
 	  gt/uc/intel_guc_capture.o \
diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index e10507fa71ce..5d143e2a8db0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -440,6 +440,8 @@
 #define GSC_FW_LOAD GSC_INSTR(1, 0, 2)
 #define   HECI1_FW_LIMIT_VALID (1 << 31)
 
+#define GSC_HECI_CMD_PKT GSC_INSTR(0, 0, 6)
+
 /*
  * Used to convert any address to canonical form.
  * Starting from gen8, some commands (e.g. STATE_BASE_ADDRESS,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
new file mode 100644
index 000000000000..be2424af521d
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
@@ -0,0 +1,94 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include "gt/intel_engine_pm.h"
+#include "gt/intel_gpu_commands.h"
+#include "gt/intel_gt.h"
+#include "gt/intel_ring.h"
+#include "intel_gsc_uc_heci_cmd_submit.h"
+
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
+int intel_gsc_uc_heci_cmd_submit_packet(struct intel_gsc_uc *gsc, u64 addr_in,
+					u32 size_in, u64 addr_out,
+					u32 size_out)
+{
+	struct intel_context *ce = gsc->ce;
+	struct i915_request *rq;
+	struct gsc_heci_pkt pkt = {
+	.addr_in = addr_in,
+	.size_in = size_in,
+	.addr_out = addr_out,
+	.size_out = size_out
+	};
+	int err;
+
+	if (!ce)
+		return -ENODEV;
+
+	rq = i915_request_create(ce);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	if (ce->engine->emit_init_breadcrumb) {
+		err = ce->engine->emit_init_breadcrumb(rq);
+		if (err)
+			goto out_rq;
+	}
+
+	err = emit_gsc_heci_pkt(rq, &pkt);
+
+	if (err)
+		goto out_rq;
+
+	err = ce->engine->emit_flush(rq, 0);
+
+out_rq:
+	i915_request_get(rq);
+
+	if (unlikely(err))
+		i915_request_set_error_once(rq, err);
+
+	i915_request_add(rq);
+
+	if (!err && i915_request_wait(rq, 0, msecs_to_jiffies(500)) < 0)
+		err = -ETIME;
+
+	i915_request_put(rq);
+
+	if (err)
+		drm_err(&gsc_uc_to_gt(gsc)->i915->drm,
+			"Request submission for GSC heci cmd failed (%d)\n",
+			err);
+
+	return err;
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
new file mode 100644
index 000000000000..cf610dfca7a5
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef _INTEL_GSC_UC_HECI_CMD_SUBMIT_H_
+#define _INTEL_GSC_UC_HECI_CMD_SUBMIT_H_
+
+#include <linux/types.h>
+
+struct intel_gsc_uc;
+struct intel_gsc_mtl_header {
+	u32 validity_marker;
+#define GSC_HECI_VALIDITY_MARKER 0xA578875A
+
+	u8 heci_client_id;
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
+int intel_gsc_uc_heci_cmd_submit_packet(struct intel_gsc_uc *gsc,
+					u64 addr_in, u32 size_in,
+					u64 addr_out, u32 size_out);
+#endif
-- 
2.25.1

