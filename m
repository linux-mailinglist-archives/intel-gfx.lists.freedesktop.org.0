Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6FE67AB54
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 09:07:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D093C10E757;
	Wed, 25 Jan 2023 08:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6324810E739;
 Wed, 25 Jan 2023 08:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674634015; x=1706170015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QXCfhri+jeWU8NbiqzbkIvFfNyid4xIirKHo58DnLzQ=;
 b=kj67OWroSwcotqDR0IVQxXkLKcuKejv6ssYD4fm+oFiJFL+Rrw43VzEp
 tkFi9e4xnY9jEGe6whFb111eUSQWzw7Ems3U3sd+D3Z19Id3StsGBNTli
 l9K3x7eg2GtJekWH1NQIq8Urie33WCGUbYDNXhiIbGK8SjfkLFGOHMkfQ
 YReZb/fqO8Rna3YtVZgMmh7IRSHK3fkEG7u3/o2gd5asqbM4ItHf+b2P3
 qbJuJ2TVACVVjhIbFmNvXTFIhTXlfRkMIY3PG0+A4p6bQk5g8g1EndjHZ
 IDuDy78Z0LyELBOSPDFMS/3Tbt2KqAI3fLqAjtIYPYNFrdTOsZ2zIvb3v w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="310079367"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="310079367"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 00:06:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="991180679"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="991180679"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 25 Jan 2023 00:06:53 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 00:06:46 -0800
Message-Id: <20230125080651.100223-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230125080651.100223-1-alan.previn.teres.alexis@intel.com>
References: <20230125080651.100223-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/8] drm/i915/pxp: Add MTL helpers to submit
 Heci-Cmd-Packet to GSC
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add helper functions into a new file for heci-packet-submission.
The helpers will handle generating the MTL GSC-CS Memory-Header
and submission of the Heci-Cmd-Packet instructions to the engine.

NOTE1: These common functions for heci-packet-submission will be used
by different i915 callers:
     1- GSC-SW-Proxy: This is pending upstream publication awaiting
        a few remaining opens
     2- MTL-HDCP: An equivalent patch has also been published at:
        https://patchwork.freedesktop.org/series/111876/. (Patch 1)
     3- PXP: This series.

NOTE2: A difference in this patch vs what is appearing is in bullet 2
above is that HDCP (and SW-Proxy) will be using priveleged submission
(GGTT and common gsc-uc-context) while PXP will be using non-priveleged
PPGTT, context and batch buffer. Therefore this patch will only slightly
overlap with the MTL-HDCP patches despite have very similar function
names (emit_foo vs emit_nonpriv_foo). This is because HECI_CMD_PKT
instructions require different flows and hw-specific code when done
via PPGTT based submission (not different from other engines). MTL-HDCP
contains the same intel_gsc_mtl_header_t structures as this but the
helpers there are different. Both add the same new file names.

NOTE3: Additional clarity about the heci-cmd-pkt layout and where the
       common helpers come in:
     - On MTL, when an i915 subsystem needs to send a command request
       to the security firmware, it will send that via the GSC-
       engine-command-streamer.
     - However those commands, (lets call them "gsc_specific_fw_api"
       calls), are not understood by the GSC command streamer hw.
     - The GSC CS only looks at the GSC_HECI_CMD_PKT instruction and
       passes it along to the GSC firmware.
     - The GSC FW on the other hand needs additional metadata to know
       which usage service is being called (PXP, HDCP, proxy, etc) along
       with session specific info. Thus an extra header called GSC-CS
       HECI Memory Header, (C) in below diagram is prepended before
       the FW specific API, (D).
     - Thus, the structural layout of the request submitted would
       need to look like the diagram below (for non-priv PXP).
     - In the diagram, the common helper for HDCP, (GSC-Sw-Proxy) and
       PXP (i.e. new function intel_gsc_uc_heci_cmd_emit_mtl_header)
       will populate blob (C) while additional helpers, different for
       PPGGTT (this patch) vs GGTT (HDCP series) will populate
       blobs (A) and (B) below.
      ___________________________________________________________
 (A)  |  MI_BATCH_BUFFER_START (ppgtt, batchbuff-addr, ...)     |
      |     |                                                   |
      |    _|________________________________________________   |
      | (B)| GSC_HECI_CMD_PKT (pkt-addr-in, pkt-size-in,    |   |
      |    |                   pkt-addr-out, pkt-size-out)  |--------
      |    | MI_BATCH_BUFFER_END                            |   |   |
      |    |________________________________________________|   |   |
      |                                                         |   |
      |_________________________________________________________|   |
                                                                    |
            ---------------------------------------------------------
            |
           \|/
      ______V___________________________________________
      |   _________________________________________    |
      |(C)|                                       |    |
      |   | struct intel_gsc_mtl_header {         |    |
      |   |   validity marker                     |    |
      |   |   heci_clent_id                       |    |
      |   |   ...                                 |    |
      |   |  }                                    |    |
      |   |_______________________________________|    |
      |(D)|                                       |    |
      |   | struct gsc_fw_specific_api_foobar {   |    |
      |   |     ...                               |    |
      |   |     For an example, see               |    |
      |   |     'struct pxp43_create_arb_in' at   |    |
      |   |     intel_pxp_cmd_interface_43.h      |    |
      |   |                                       |    |
      |   | }                                     |    |
      |   |  Struture depends on command type     |    |
      |   | struct gsc_fw_specific_api_foobar {   |    |
      |   |_______________________________________|    |
      |________________________________________________|

That said, this patch provides basic helpers but leaves the
PXP subsystem (i.e. the caller) to handle (D) and everything
else such as input/output size verification or handling the
responses from security firmware (for example, requiring a retry).

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   2 +
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c | 110 ++++++++++++++++++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |  76 ++++++++++++
 4 files changed, 189 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 5fcbc049ebb3..602b9856b982 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -194,6 +194,7 @@ i915-y += \
 i915-y += \
 	  gt/uc/intel_gsc_fw.o \
 	  gt/uc/intel_gsc_uc.o \
+	  gt/uc/intel_gsc_uc_heci_cmd_submit.o \
 	  gt/uc/intel_guc.o \
 	  gt/uc/intel_guc_ads.o \
 	  gt/uc/intel_guc_capture.o \
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
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
new file mode 100644
index 000000000000..2dd593a8bacd
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include <linux/types.h>
+
+#include "gt/intel_context.h"
+#include "gt/intel_gpu_commands.h"
+#include "gt/intel_gt.h"
+#include "gt/intel_ring.h"
+
+#include "i915_drv.h"
+#include "i915_vma.h"
+
+#include "intel_gsc_fw.h"
+#include "intel_gsc_uc.h"
+#include "intel_gsc_uc_heci_cmd_submit.h"
+
+void intel_gsc_uc_heci_cmd_emit_mtl_header(struct intel_gsc_mtl_header *header,
+					   u8 heci_client_id, u32 message_size,
+					   u64 host_session_id)
+{
+	host_session_id &= ~GSC_HECI_HOST_SESSION_USAGE_MASK;
+	if (heci_client_id == GSC_HECI_MEADDRESS_PXP)
+		host_session_id |= GSC_HECI_SESSION_PXP_SINGLE;
+
+	header->validity_marker = GSC_HECI_VALIDITY_MARKER;
+	header->heci_client_id = heci_client_id;
+	header->host_session_handle = host_session_id;
+	header->header_version = MTL_GSC_HECI_HEADER_VERSION;
+	header->message_size = message_size;
+}
+
+static void
+emit_gsc_heci_pkt_nonpriv(u32 *cmd, struct intel_gsc_heci_non_priv_pkt *pkt)
+{
+	*cmd++ = GSC_HECI_CMD_PKT;
+	*cmd++ = lower_32_bits(pkt->addr_in);
+	*cmd++ = upper_32_bits(pkt->addr_in);
+	*cmd++ = pkt->size_in;
+	*cmd++ = lower_32_bits(pkt->addr_out);
+	*cmd++ = upper_32_bits(pkt->addr_out);
+	*cmd++ = pkt->size_out;
+	*cmd++ = 0;
+	*cmd++ = MI_BATCH_BUFFER_END;
+}
+
+int
+intel_gsc_uc_heci_cmd_submit_nonpriv(struct intel_gsc_uc *gsc,
+				     struct intel_context *ce,
+				     struct intel_gsc_heci_non_priv_pkt *pkt,
+				     u32 *cmd, int timeout_ms)
+{
+	struct intel_engine_cs *eng;
+	struct i915_request *rq;
+	int err;
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	emit_gsc_heci_pkt_nonpriv(cmd, pkt);
+
+	i915_vma_lock(pkt->bb_vma);
+	err = i915_vma_move_to_active(pkt->bb_vma, rq, EXEC_OBJECT_WRITE);
+	i915_vma_unlock(pkt->bb_vma);
+	if (err)
+		return err;
+
+	i915_vma_lock(pkt->heci_pkt_vma);
+	err = i915_vma_move_to_active(pkt->heci_pkt_vma, rq, EXEC_OBJECT_WRITE);
+	i915_vma_unlock(pkt->heci_pkt_vma);
+	if (err)
+		return err;
+
+	eng = rq->context->engine;
+	if (eng->emit_init_breadcrumb) {
+		err = eng->emit_init_breadcrumb(rq);
+		if (err)
+			goto out_rq;
+	}
+
+	err = eng->emit_bb_start(rq, i915_vma_offset(pkt->bb_vma), PAGE_SIZE, 0);
+	if (err)
+		goto out_rq;
+
+	err = ce->engine->emit_flush(rq, 0);
+	if (err)
+		drm_err(&gsc_uc_to_gt(gsc)->i915->drm,
+			"Failed emit-flush for gsc-heci-non-priv-pkterr=%d\n", err);
+
+out_rq:
+	i915_request_get(rq);
+
+	if (unlikely(err))
+		i915_request_set_error_once(rq, err);
+
+	i915_request_add(rq);
+
+	if (!err) {
+		if (i915_request_wait(rq, I915_WAIT_INTERRUPTIBLE,
+				      msecs_to_jiffies(timeout_ms)) < 0)
+			err = -ETIME;
+	}
+
+	i915_request_put(rq);
+
+	return err;
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
new file mode 100644
index 000000000000..c709a5fdeb3c
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
@@ -0,0 +1,76 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef _INTEL_GSC_UC_HECI_CMD_H_
+#define _INTEL_GSC_UC_HECI_CMD_H_
+
+#include <linux/types.h>
+
+struct i915_vma;
+struct intel_context;
+struct intel_gsc_uc;
+
+struct intel_gsc_mtl_header {
+	u32 validity_marker;
+#define GSC_HECI_VALIDITY_MARKER 0xA578875A
+
+	u8 heci_client_id;
+#define GSC_HECI_MEADDRESS_PXP 17
+#define GSC_HECI_MEADDRESS_HDCP 18
+
+	u8 reserved1;
+
+	u16 header_version;
+#define MTL_GSC_HECI_HEADER_VERSION 1
+
+	/*
+	 * The HW specs allows software to define the host_session_handle
+	 * however it likes as long as its unique per user-process and usage
+	 * session. Here we can use the upper bits to differentiate PXP
+	 * from HDCP usages (providing some debuggability ease) while the
+	 * caller provides the rest of the bits
+	 */
+	u64 host_session_handle;
+#define GSC_HECI_HOST_SESSION_USAGE_MASK REG_GENMASK64(63, 60)
+#define GSC_HECI_SESSION_PXP_SINGLE BIT_ULL(60)
+
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
+#define GSC_HECI_FLAG_MSG_PENDING	BIT(0)
+#define GSC_HECI_FLAG_MSG_CLEANUP	BIT(1)
+
+	u32 status;
+} __packed;
+
+struct intel_gsc_heci_non_priv_pkt {
+	u64 addr_in;
+	u32 size_in;
+	u64 addr_out;
+	u32 size_out;
+	struct i915_vma *heci_pkt_vma;
+	struct i915_vma *bb_vma;
+};
+
+void
+intel_gsc_uc_heci_cmd_emit_mtl_header(struct intel_gsc_mtl_header *header,
+				      u8 heci_client_id, u32 msg_size,
+				      u64 host_session_id);
+
+int
+intel_gsc_uc_heci_cmd_submit_nonpriv(struct intel_gsc_uc *gsc,
+				     struct intel_context *ce,
+				     struct intel_gsc_heci_non_priv_pkt *pkt,
+				     u32 *cs, int timeout_ms);
+#endif
-- 
2.39.0

