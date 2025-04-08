Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFADA7FEBD
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 13:15:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1EBB10E663;
	Tue,  8 Apr 2025 11:15:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kxq/mvYU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D5510E661;
 Tue,  8 Apr 2025 11:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744110943; x=1775646943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hr8e+gyrDYvVWnYtttP1dVh+Rj6nKMUGG6hx8TlljY0=;
 b=kxq/mvYU6usgu3EURs1HlcNEJWkE047eXJRFl5CQbTwBn7x2f9ZwlPUH
 zx8Mytn2XwGTV5wjt28Sn9x+22IiU2TwwESK3ukAbnA9qNkYUd5R2Ey2e
 Djo1ODQ+lseOZShtA7rPozuEUW86ZvPh3nY4UkM4cbj9ZprKDLcxRWVso
 1F+CnJup9H9ZR7iHxWKhs02Lkv7ukPrs+FzdnvYxaCWt5HDkoL41woJeo
 LI9IZDOy0XSQjRvw1dDsBG8Nv/WS77Smo3ObuUld/dF9x3u9lQsZpZTdV
 tJhWT84geTBm5b2TlXgBO7gQYxFhgZdNegh6yDwpXhPi4KP8tvXYMxPje Q==;
X-CSE-ConnectionGUID: Woxffg/ITyijc9Z16L1/PA==
X-CSE-MsgGUID: 7DYVo+mQRMCjqh2hPQP2+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45655921"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45655921"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:15:43 -0700
X-CSE-ConnectionGUID: BTbBqqaJThm+7E7rdeew1w==
X-CSE-MsgGUID: WE0q8N+yR5Kc/NsqfNojyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="133209979"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 08 Apr 2025 04:15:41 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Date: Tue,  8 Apr 2025 16:30:15 +0530
Message-Id: <20250408110022.1907802-5-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 52 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  2 +
 2 files changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 0de15e3a9a56..2cda6fc7857b 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -93,6 +93,9 @@ struct intel_dsb {
 /* see DSB_REG_VALUE_MASK */
 #define DSB_OPCODE_POLL			0xA
 /* see DSB_REG_VALUE_MASK */
+#define DSB_OPCODE_GOSUB		0xC /* ptl+ */
+#define   DSB_GOSUB_HEAD_SHIFT		26
+#define   DSB_GOSUB_TAIL_SHIFT		0
 
 static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
@@ -533,6 +536,55 @@ static void intel_dsb_align_tail(struct intel_dsb *dsb)
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
+	head_tail = ((u64)(intel_dsb_head(sub_dsb) >> 6) << DSB_GOSUB_HEAD_SHIFT) |
+		((u64)(intel_dsb_tail(sub_dsb) >> 6) << DSB_GOSUB_TAIL_SHIFT);
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

