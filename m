Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BR/MTajb2l7DgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:45:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7331346977
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:45:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1236310E622;
	Tue, 20 Jan 2026 15:45:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UpnOkGGo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67EC110E622;
 Tue, 20 Jan 2026 15:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768923955; x=1800459955;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ymv9OQ8OGnPR1dn2JyYfQCstcAoEgBqMNgpumDV3fXg=;
 b=UpnOkGGodp2Qn3NeXCK3y4bYVXCA4lXJI+gKfpaUCEfszljGZ6uc3ddv
 10t08kAEiPqm3lNuugB4SUM65PZYA3QCXXNdYAF4gYOkHWFX8bWDEZDkL
 C0EIWcSGklwaMS+QaJKtVDi5LyFYu944GUla8hM9Rxe/wDbPWIv1aGElo
 UCl7qx6wNgg7gRR9qSBcTnQnUuerWbUNHtUV/2SlIprtcyJFbj1QX3OAq
 YSM5y0ftq9fUWGn0m97QolGBq0BaWZvRYDk4jsIreA7FRP55leXLIFX/t
 BhIPg1HoMHKL33dmvhdpePWNiIPx4jbldCrxFxh7O3T72vbelqDCdBOeg w==;
X-CSE-ConnectionGUID: SAaXGvQeQjuULICnYKcR/A==
X-CSE-MsgGUID: FmXONoArSIKKwV9tiE/6kA==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70040644"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70040644"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:45:55 -0800
X-CSE-ConnectionGUID: AeWWbbmeRD+OAJlB88B+2g==
X-CSE-MsgGUID: GBucNJ1gRN2qIFaSK5l75A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="211004162"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:45:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 2/2] drm/{i915, xe}/dsb: move DSB buffer to parent interface
Date: Tue, 20 Jan 2026 17:45:41 +0200
Message-ID: <df117c862a6d34dae340e4a85c2482b4e29c8884.1768923917.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768923917.git.jani.nikula@intel.com>
References: <cover.1768923917.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-]
X-Rspamd-Queue-Id: 7331346977
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the DSB buffer handling to the display parent interface, making
display more independent of i915 and xe driver implementations.

Since the DSB parent interface is only called from intel_dsb.c, add the
wrappers there with smaller visibility instead of the usual
intel_parent.[ch], and using struct intel_dsb as the context parameter
for convenience.

Unfortunately, memset() being a macro in linux/fortify-string.h, we
can't use that as the function pointer name. dsb->memset() would be
using the macro and leading to build failures. Therefore, use .fill()
for the memset() functionality.

v2: s/memset/fill/

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c      | 92 ++++++++++++++-----
 .../gpu/drm/i915/display/intel_dsb_buffer.h   | 22 -----
 drivers/gpu/drm/i915/i915_driver.c            |  2 +
 drivers/gpu/drm/i915/i915_dsb_buffer.c        | 28 ++++--
 drivers/gpu/drm/i915/i915_dsb_buffer.h        |  9 ++
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c    | 28 ++++--
 drivers/gpu/drm/xe/display/xe_dsb_buffer.h    |  9 ++
 include/drm/intel/display_parent_interface.h  | 14 +++
 9 files changed, 146 insertions(+), 60 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.h
 create mode 100644 drivers/gpu/drm/i915/i915_dsb_buffer.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_dsb_buffer.h

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 91060e2a5762..cf5fb30cab83 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -8,6 +8,7 @@
 
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "intel_crtc.h"
 #include "intel_de.h"
@@ -15,7 +16,6 @@
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dsb.h"
-#include "intel_dsb_buffer.h"
 #include "intel_dsb_regs.h"
 #include "intel_vblank.h"
 #include "intel_vrr.h"
@@ -75,6 +75,57 @@ struct intel_dsb {
  * writes). There are no registers reads possible with DSB HW engine.
  */
 
+/*
+ * DSB buffer parent interface calls are here instead of intel_parent.[ch]
+ * because they're not used outside of intel_dsb.c.
+ */
+static u32 dsb_buffer_ggtt_offset(struct intel_dsb *dsb)
+{
+	struct intel_display *display = to_intel_display(dsb->crtc);
+
+	return display->parent->dsb->ggtt_offset(dsb->dsb_buf);
+}
+
+static void dsb_buffer_write(struct intel_dsb *dsb, u32 idx, u32 val)
+{
+	struct intel_display *display = to_intel_display(dsb->crtc);
+
+	display->parent->dsb->write(dsb->dsb_buf, idx, val);
+}
+
+static u32 dsb_buffer_read(struct intel_dsb *dsb, u32 idx)
+{
+	struct intel_display *display = to_intel_display(dsb->crtc);
+
+	return display->parent->dsb->read(dsb->dsb_buf, idx);
+}
+
+static void dsb_buffer_fill(struct intel_dsb *dsb, u32 idx, u32 val, size_t size)
+{
+	struct intel_display *display = to_intel_display(dsb->crtc);
+
+	display->parent->dsb->fill(dsb->dsb_buf, idx, val, size);
+}
+
+static struct intel_dsb_buffer *dsb_buffer_create(struct intel_display *display, size_t size)
+{
+	return display->parent->dsb->create(display->drm, size);
+}
+
+static void dsb_buffer_cleanup(struct intel_dsb *dsb)
+{
+	struct intel_display *display = to_intel_display(dsb->crtc);
+
+	display->parent->dsb->cleanup(dsb->dsb_buf);
+}
+
+static void dsb_buffer_flush_map(struct intel_dsb *dsb)
+{
+	struct intel_display *display = to_intel_display(dsb->crtc);
+
+	display->parent->dsb->flush_map(dsb->dsb_buf);
+}
+
 /* DSB opcodes. */
 #define DSB_OPCODE_SHIFT		24
 #define DSB_OPCODE_NOOP			0x0
@@ -211,10 +262,10 @@ static void intel_dsb_dump(struct intel_dsb *dsb)
 	for (i = 0; i < ALIGN(dsb->free_pos, 64 / 4); i += 4)
 		drm_dbg_kms(display->drm,
 			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n", i * 4,
-			    intel_dsb_buffer_read(dsb->dsb_buf, i),
-			    intel_dsb_buffer_read(dsb->dsb_buf, i + 1),
-			    intel_dsb_buffer_read(dsb->dsb_buf, i + 2),
-			    intel_dsb_buffer_read(dsb->dsb_buf, i + 3));
+			    dsb_buffer_read(dsb, i),
+			    dsb_buffer_read(dsb, i + 1),
+			    dsb_buffer_read(dsb, i + 2),
+			    dsb_buffer_read(dsb, i + 3));
 	drm_dbg_kms(display->drm, "}\n");
 }
 
@@ -231,12 +282,12 @@ unsigned int intel_dsb_size(struct intel_dsb *dsb)
 
 unsigned int intel_dsb_head(struct intel_dsb *dsb)
 {
-	return intel_dsb_buffer_ggtt_offset(dsb->dsb_buf);
+	return dsb_buffer_ggtt_offset(dsb);
 }
 
 static unsigned int intel_dsb_tail(struct intel_dsb *dsb)
 {
-	return intel_dsb_buffer_ggtt_offset(dsb->dsb_buf) + intel_dsb_size(dsb);
+	return dsb_buffer_ggtt_offset(dsb) + intel_dsb_size(dsb);
 }
 
 static void intel_dsb_ins_align(struct intel_dsb *dsb)
@@ -263,8 +314,8 @@ static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
 	dsb->ins[0] = ldw;
 	dsb->ins[1] = udw;
 
-	intel_dsb_buffer_write(dsb->dsb_buf, dsb->free_pos++, dsb->ins[0]);
-	intel_dsb_buffer_write(dsb->dsb_buf, dsb->free_pos++, dsb->ins[1]);
+	dsb_buffer_write(dsb, dsb->free_pos++, dsb->ins[0]);
+	dsb_buffer_write(dsb, dsb->free_pos++, dsb->ins[1]);
 }
 
 static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
@@ -335,13 +386,12 @@ void intel_dsb_reg_write_indexed(struct intel_dsb *dsb,
 
 	/* Update the count */
 	dsb->ins[0]++;
-	intel_dsb_buffer_write(dsb->dsb_buf, dsb->ins_start_offset + 0,
-			       dsb->ins[0]);
+	dsb_buffer_write(dsb, dsb->ins_start_offset + 0, dsb->ins[0]);
 
-	intel_dsb_buffer_write(dsb->dsb_buf, dsb->free_pos++, val);
+	dsb_buffer_write(dsb, dsb->free_pos++, val);
 	/* if number of data words is odd, then the last dword should be 0.*/
 	if (dsb->free_pos & 0x1)
-		intel_dsb_buffer_write(dsb->dsb_buf, dsb->free_pos, 0);
+		dsb_buffer_write(dsb, dsb->free_pos, 0);
 }
 
 void intel_dsb_reg_write(struct intel_dsb *dsb,
@@ -521,8 +571,7 @@ static void intel_dsb_align_tail(struct intel_dsb *dsb)
 	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
 
 	if (aligned_tail > tail)
-		intel_dsb_buffer_memset(dsb->dsb_buf, dsb->free_pos, 0,
-					aligned_tail - tail);
+		dsb_buffer_fill(dsb, dsb->free_pos, 0, aligned_tail - tail);
 
 	dsb->free_pos = aligned_tail / 4;
 }
@@ -541,8 +590,7 @@ static void intel_dsb_gosub_align(struct intel_dsb *dsb)
 	 * "Ensure GOSUB is not placed in cacheline QW slot 6 or 7 (numbered 0-7)"
 	 */
 	if (aligned_tail - tail <= 2 * 8)
-		intel_dsb_buffer_memset(dsb->dsb_buf, dsb->free_pos, 0,
-					aligned_tail - tail);
+		dsb_buffer_fill(dsb, dsb->free_pos, 0, aligned_tail - tail);
 
 	dsb->free_pos = aligned_tail / 4;
 }
@@ -606,14 +654,14 @@ void intel_dsb_gosub_finish(struct intel_dsb *dsb)
 	 */
 	intel_dsb_noop(dsb, 8);
 
-	intel_dsb_buffer_flush_map(dsb->dsb_buf);
+	dsb_buffer_flush_map(dsb);
 }
 
 void intel_dsb_finish(struct intel_dsb *dsb)
 {
 	intel_dsb_align_tail(dsb);
 
-	intel_dsb_buffer_flush_map(dsb->dsb_buf);
+	dsb_buffer_flush_map(dsb);
 }
 
 static u32 dsb_error_int_status(struct intel_display *display)
@@ -917,7 +965,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 			      !is_busy,
 			      100, 1000, false);
 	if (ret) {
-		u32 offset = intel_dsb_buffer_ggtt_offset(dsb->dsb_buf);
+		u32 offset = dsb_buffer_ggtt_offset(dsb);
 
 		intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id),
 				  DSB_ENABLE | DSB_HALT);
@@ -983,7 +1031,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	/* ~1 qword per instruction, full cachelines */
 	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
 
-	dsb_buf = intel_dsb_buffer_create(display->drm, size);
+	dsb_buf = dsb_buffer_create(display, size);
 	if (IS_ERR(dsb_buf))
 		goto out_put_rpm;
 
@@ -1021,7 +1069,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
  */
 void intel_dsb_cleanup(struct intel_dsb *dsb)
 {
-	intel_dsb_buffer_cleanup(dsb->dsb_buf);
+	dsb_buffer_cleanup(dsb);
 	kfree(dsb);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
deleted file mode 100644
index f4577d1f25cd..000000000000
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef _INTEL_DSB_BUFFER_H
-#define _INTEL_DSB_BUFFER_H
-
-#include <linux/types.h>
-
-struct drm_device;
-struct intel_dsb_buffer;
-
-u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf);
-void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val);
-u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx);
-void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, size_t size);
-struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t size);
-void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf);
-void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf);
-
-#endif
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f0105c5b49a7..1e087dfe03d0 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -93,6 +93,7 @@
 #include "i915_driver.h"
 #include "i915_drm_client.h"
 #include "i915_drv.h"
+#include "i915_dsb_buffer.h"
 #include "i915_edram.h"
 #include "i915_file_private.h"
 #include "i915_getparam.h"
@@ -764,6 +765,7 @@ static bool vgpu_active(struct drm_device *drm)
 }
 
 static const struct intel_display_parent_interface parent = {
+	.dsb = &i915_display_dsb_interface,
 	.hdcp = &i915_display_hdcp_interface,
 	.initial_plane = &i915_display_initial_plane_interface,
 	.irq = &i915_display_irq_interface,
diff --git a/drivers/gpu/drm/i915/i915_dsb_buffer.c b/drivers/gpu/drm/i915/i915_dsb_buffer.c
index de30d3896f4a..884ccb2bc283 100644
--- a/drivers/gpu/drm/i915/i915_dsb_buffer.c
+++ b/drivers/gpu/drm/i915/i915_dsb_buffer.c
@@ -3,10 +3,12 @@
  * Copyright 2023, Intel Corporation.
  */
 
-#include "display/intel_dsb_buffer.h"
+#include <drm/intel/display_parent_interface.h>
+
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 #include "i915_drv.h"
+#include "i915_dsb_buffer.h"
 #include "i915_vma.h"
 
 struct intel_dsb_buffer {
@@ -15,29 +17,29 @@ struct intel_dsb_buffer {
 	size_t buf_size;
 };
 
-u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
+static u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
 {
 	return i915_ggtt_offset(dsb_buf->vma);
 }
 
-void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val)
+static void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val)
 {
 	dsb_buf->cmd_buf[idx] = val;
 }
 
-u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)
+static u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)
 {
 	return dsb_buf->cmd_buf[idx];
 }
 
-void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, size_t size)
+static void intel_dsb_buffer_fill(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, size_t size)
 {
 	WARN_ON(idx > (dsb_buf->buf_size - size) / sizeof(*dsb_buf->cmd_buf));
 
 	memset(&dsb_buf->cmd_buf[idx], val, size);
 }
 
-struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t size)
+static struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t size)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct intel_dsb_buffer *dsb_buf;
@@ -93,13 +95,23 @@ struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t
 	return ERR_PTR(ret);
 }
 
-void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
+static void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
 {
 	i915_vma_unpin_and_release(&dsb_buf->vma, I915_VMA_RELEASE_MAP);
 	kfree(dsb_buf);
 }
 
-void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
+static void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
 {
 	i915_gem_object_flush_map(dsb_buf->vma->obj);
 }
+
+const struct intel_display_dsb_interface i915_display_dsb_interface = {
+	.ggtt_offset = intel_dsb_buffer_ggtt_offset,
+	.write = intel_dsb_buffer_write,
+	.read = intel_dsb_buffer_read,
+	.fill = intel_dsb_buffer_fill,
+	.create = intel_dsb_buffer_create,
+	.cleanup = intel_dsb_buffer_cleanup,
+	.flush_map = intel_dsb_buffer_flush_map,
+};
diff --git a/drivers/gpu/drm/i915/i915_dsb_buffer.h b/drivers/gpu/drm/i915/i915_dsb_buffer.h
new file mode 100644
index 000000000000..a01b4d8de947
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_dsb_buffer.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef __I915_DSB_BUFFER_H__
+#define __I915_DSB_BUFFER_H__
+
+extern const struct intel_display_dsb_interface i915_display_dsb_interface;
+
+#endif /* __I915_DSB_BUFFER_H__ */
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index f8a831b5dc7d..c640fe3d8490 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -36,6 +36,7 @@
 #include "intel_opregion.h"
 #include "skl_watermark.h"
 #include "xe_display_rpm.h"
+#include "xe_dsb_buffer.h"
 #include "xe_hdcp_gsc.h"
 #include "xe_initial_plane.h"
 #include "xe_module.h"
@@ -538,6 +539,7 @@ static const struct intel_display_irq_interface xe_display_irq_interface = {
 };
 
 static const struct intel_display_parent_interface parent = {
+	.dsb = &xe_display_dsb_interface,
 	.hdcp = &xe_display_hdcp_interface,
 	.initial_plane = &xe_display_initial_plane_interface,
 	.irq = &xe_display_irq_interface,
diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
index fa0acb11eaad..fdb0e8a93745 100644
--- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
+++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
@@ -3,10 +3,12 @@
  * Copyright 2023, Intel Corporation.
  */
 
-#include "intel_dsb_buffer.h"
+#include <drm/intel/display_parent_interface.h>
+
 #include "xe_bo.h"
 #include "xe_device.h"
 #include "xe_device_types.h"
+#include "xe_dsb_buffer.h"
 
 struct intel_dsb_buffer {
 	u32 *cmd_buf;
@@ -14,29 +16,29 @@ struct intel_dsb_buffer {
 	size_t buf_size;
 };
 
-u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
+static u32 xe_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
 {
 	return xe_bo_ggtt_addr(dsb_buf->bo);
 }
 
-void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val)
+static void xe_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val)
 {
 	iosys_map_wr(&dsb_buf->bo->vmap, idx * 4, u32, val);
 }
 
-u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)
+static u32 xe_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)
 {
 	return iosys_map_rd(&dsb_buf->bo->vmap, idx * 4, u32);
 }
 
-void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, size_t size)
+static void xe_dsb_buffer_fill(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, size_t size)
 {
 	WARN_ON(idx > (dsb_buf->buf_size - size) / sizeof(*dsb_buf->cmd_buf));
 
 	iosys_map_memset(&dsb_buf->bo->vmap, idx * 4, val, size);
 }
 
-struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t size)
+static struct intel_dsb_buffer *xe_dsb_buffer_create(struct drm_device *drm, size_t size)
 {
 	struct xe_device *xe = to_xe_device(drm);
 	struct intel_dsb_buffer *dsb_buf;
@@ -69,13 +71,13 @@ struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t
 	return ERR_PTR(ret);
 }
 
-void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
+static void xe_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
 {
 	xe_bo_unpin_map_no_vm(dsb_buf->bo);
 	kfree(dsb_buf);
 }
 
-void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
+static void xe_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
 {
 	struct xe_device *xe = dsb_buf->bo->tile->xe;
 
@@ -86,3 +88,13 @@ void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
 	xe_device_wmb(xe);
 	xe_device_l2_flush(xe);
 }
+
+const struct intel_display_dsb_interface xe_display_dsb_interface = {
+	.ggtt_offset = xe_dsb_buffer_ggtt_offset,
+	.write = xe_dsb_buffer_write,
+	.read = xe_dsb_buffer_read,
+	.fill = xe_dsb_buffer_fill,
+	.create = xe_dsb_buffer_create,
+	.cleanup = xe_dsb_buffer_cleanup,
+	.flush_map = xe_dsb_buffer_flush_map,
+};
diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.h b/drivers/gpu/drm/xe/display/xe_dsb_buffer.h
new file mode 100644
index 000000000000..2e4772187016
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef __XE_DSB_BUFFER_H__
+#define __XE_DSB_BUFFER_H__
+
+extern const struct intel_display_dsb_interface xe_display_dsb_interface;
+
+#endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index ce946859a3a9..cd091120731c 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -14,6 +14,7 @@ struct drm_gem_object;
 struct drm_plane_state;
 struct drm_scanout_buffer;
 struct i915_vma;
+struct intel_dsb_buffer;
 struct intel_hdcp_gsc_context;
 struct intel_initial_plane_config;
 struct intel_panic;
@@ -22,6 +23,16 @@ struct ref_tracker;
 
 /* Keep struct definitions sorted */
 
+struct intel_display_dsb_interface {
+	u32 (*ggtt_offset)(struct intel_dsb_buffer *dsb_buf);
+	void (*write)(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val);
+	u32 (*read)(struct intel_dsb_buffer *dsb_buf, u32 idx);
+	void (*fill)(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, size_t size);
+	struct intel_dsb_buffer *(*create)(struct drm_device *drm, size_t size);
+	void (*cleanup)(struct intel_dsb_buffer *dsb_buf);
+	void (*flush_map)(struct intel_dsb_buffer *dsb_buf);
+};
+
 struct intel_display_hdcp_interface {
 	ssize_t (*gsc_msg_send)(struct intel_hdcp_gsc_context *gsc_context,
 				void *msg_in, size_t msg_in_len,
@@ -106,6 +117,9 @@ struct intel_display_stolen_interface {
  * check the optional pointers.
  */
 struct intel_display_parent_interface {
+	/** @dsb: DSB buffer interface */
+	const struct intel_display_dsb_interface *dsb;
+
 	/** @hdcp: HDCP GSC interface */
 	const struct intel_display_hdcp_interface *hdcp;
 
-- 
2.47.3

