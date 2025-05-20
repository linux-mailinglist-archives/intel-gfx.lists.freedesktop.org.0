Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 114BAABD194
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:14:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FE7710E57B;
	Tue, 20 May 2025 08:14:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l6IhAyUL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA3410E578;
 Tue, 20 May 2025 08:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747728848; x=1779264848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mHN4qGYyidU7Kqkt2J7HYlasdNbwU+OgG8zl2nSw2To=;
 b=l6IhAyULjRUaQZzRUWFphq2xIWkYMaGSV12RNCIYY7St3DPc5MiMaj+2
 imLwA2eXq0Vw4+lvPoDmM9S+Fc0FbthahAsStg3efhCO+LHnSPxy8ada6
 /H/vZrqCqecrhmfX21nVjzIwf4zLFgRXiCqqXbre+WAq1ik3xyadHGECT
 /7P3+o/b2GVztxHR+JgBc/lQyZLn1atexdqnr+iXXy5ne0a4roR3ImlwW
 wsGDgN/0uAfjEbqm9Cq04WN0T9HPumQT5DizmKwWJ6TsrpnX6SOSsgJ+Q
 J1cN+0TzPmnEPmVQROFlMhzRaQjEdxyxzpPvwaeNL6YEPV84zPHyfEMgs Q==;
X-CSE-ConnectionGUID: KW1LwpNPTB6IgrSeP2u/Eg==
X-CSE-MsgGUID: 3q235s5QQ1mJScufRCvsmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="48764837"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="48764837"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:14:08 -0700
X-CSE-ConnectionGUID: fMdVYXF4Svy6EA7wO4RoWw==
X-CSE-MsgGUID: utvR4hw8QCWoKVu7EtjQ4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144476000"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 20 May 2025 01:14:06 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v7 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Date: Tue, 20 May 2025 13:25:30 +0530
Message-Id: <20250520075537.4074010-5-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
References: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add support for the new GOSUB DSB instruction (available on ptl+),
which instructs the DSB to jump to a different buffer, executie
the commands there, and then return execution to the next
instruction in the original buffer.

There are a few alignment related workarounds that need to
be dealt with when emitting GOSUB instruction.

v2: Right shift head and tail pointer passed to gosub command (chaitanya)
v3: Add macro for right shifting head/tail pointers (Animesh)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 57 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  2 +
 2 files changed, 59 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 9b2de4e7e681..dad483d4b1cf 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -93,6 +93,10 @@ struct intel_dsb {
 /* see DSB_REG_VALUE_MASK */
 #define DSB_OPCODE_POLL			0xA
 /* see DSB_REG_VALUE_MASK */
+#define DSB_OPCODE_GOSUB		0xC /* ptl+ */
+#define   DSB_GOSUB_HEAD_SHIFT		26
+#define   DSB_GOSUB_TAIL_SHIFT		0
+#define   DSB_GOSUB_CONVERT_ADDR(x)	((x) >> 6)
 
 static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
@@ -533,6 +537,59 @@ static void intel_dsb_align_tail(struct intel_dsb *dsb)
 	dsb->free_pos = aligned_tail / 4;
 }
 
+static void intel_dsb_gosub_align(struct intel_dsb *dsb)
+{
+	u32 aligned_tail, tail;
+
+	intel_dsb_ins_align(dsb);
+
+	tail = dsb->free_pos * 4;
+	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
+
+	/*
+	 * "The GOSUB instruction cannot be placed in
+	 *  cacheline QW slot 6 or 7 (numbered 0-7)"
+	 */
+	if (aligned_tail - tail <= 2 * 8)
+		intel_dsb_buffer_memset(&dsb->dsb_buf, dsb->free_pos, 0,
+					aligned_tail - tail);
+
+	dsb->free_pos = aligned_tail / 4;
+}
+
+void intel_dsb_gosub(struct intel_dsb *dsb,
+		     struct intel_dsb *sub_dsb)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	struct intel_display *display = to_intel_display(crtc->base.dev);
+	unsigned int head, tail;
+	u64 head_tail;
+
+	if (drm_WARN_ON(display->drm, dsb->id != sub_dsb->id))
+		return;
+
+	if (!assert_dsb_tail_is_aligned(sub_dsb))
+		return;
+
+	intel_dsb_gosub_align(dsb);
+
+	head = intel_dsb_head(sub_dsb);
+	tail = intel_dsb_tail(sub_dsb);
+
+	head_tail = ((u64)(DSB_GOSUB_CONVERT_ADDR(head)) << DSB_GOSUB_HEAD_SHIFT) |
+		((u64)(DSB_GOSUB_CONVERT_ADDR(tail)) << DSB_GOSUB_TAIL_SHIFT);
+
+	intel_dsb_emit(dsb, lower_32_bits(head_tail),
+		       (DSB_OPCODE_GOSUB << DSB_OPCODE_SHIFT) |
+		       upper_32_bits(head_tail));
+
+	/*
+	 * "NOTE: the instructions within the cacheline
+	 *  FOLLOWING the GOSUB instruction must be NOPs."
+	 */
+	intel_dsb_align_tail(dsb);
+}
+
 void intel_dsb_finish(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index e843c52bf97c..8b2cf0a7b7e6 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -57,6 +57,8 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 void intel_dsb_poll(struct intel_dsb *dsb,
 		    i915_reg_t reg, u32 mask, u32 val,
 		    int wait_us, int count);
+void intel_dsb_gosub(struct intel_dsb *dsb,
+		     struct intel_dsb *sub_dsb);
 void intel_dsb_chain(struct intel_atomic_state *state,
 		     struct intel_dsb *dsb,
 		     struct intel_dsb *chained_dsb,
-- 
2.25.1

