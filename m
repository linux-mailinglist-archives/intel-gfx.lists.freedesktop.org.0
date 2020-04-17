Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FE41AE01D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 16:45:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 189776EC06;
	Fri, 17 Apr 2020 14:45:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD2E26EC23
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 14:44:59 +0000 (UTC)
IronPort-SDR: zuKRoxD3Wg9s4hFbIPBoKsGyqNHyi0xnCdG8qDzZxu4efI3xwjonSkJsFFQVuNPGpN6yuht+DK
 OEOTfiPbwdpQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 07:44:59 -0700
IronPort-SDR: M5r+QQeFOo7zbcitCwFXFsJf2Qc5KerUVhIUNFw2/i82OB7BKdDCsUYCRbdqiISn5r3xXn6dU2
 9ZvfdDHB37IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="454749611"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga005.fm.intel.com with ESMTP; 17 Apr 2020 07:44:57 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id BA5D68442BB; Fri, 17 Apr 2020 17:44:32 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 17:44:29 +0300
Message-Id: <20200417144429.20575-3-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417144429.20575-1-mika.kuoppala@linux.intel.com>
References: <20200417144429.20575-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Use indirect ctx bb to mend
 CMD_BUF_CCTL
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use indirect ctx bb to load cmd buffer control value
from context image to avoid corruption.

Testcase: igt/i915_selftest/gt_lrc
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c     | 13 +++++++++++--
 drivers/gpu/drm/i915/gt/intel_lrc_reg.h |  1 +
 drivers/gpu/drm/i915/i915_reg.h         |  1 +
 3 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 531884b9050c..45e07209ddf3 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3207,7 +3207,7 @@ gen12_emit_timestamp_wa_lrm(struct intel_context *ce, u32 *cs)
 }
 
 static u32 *
-gen12_emit_timestamp_wa_lrr(struct intel_context *ce, u32 *cs)
+gen12_emit_render_ctx_wa(struct intel_context *ce, u32 *cs)
 {
 	const u32 lrc_offset = i915_ggtt_offset(ce->state) +
 		LRC_STATE_PN * PAGE_SIZE;
@@ -3228,6 +3228,15 @@ gen12_emit_timestamp_wa_lrr(struct intel_context *ce, u32 *cs)
 	*cs++ = scratch_reg;
 	*cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(0));
 
+	*cs++ = lrm;
+	*cs++ = scratch_reg;
+	*cs++ = lrc_offset + CTX_CMD_BUF_CCTL * sizeof(u32);
+	*cs++ = 0;
+
+	*cs++ = MI_LOAD_REGISTER_REG | MI_LRI_LRM_CS_MMIO;
+	*cs++ = scratch_reg;
+	*cs++ = i915_mmio_reg_offset(RING_CMD_BUF_CCTL(0));
+
 	return cs;
 }
 
@@ -3280,7 +3289,7 @@ gen12_setup_timestamp_ctx_wa(struct intel_context *ce)
 {
 	if (ce->engine->class == RENDER_CLASS)
 		execlists_setup_indirect_ctx_bb(ce,
-					gen12_emit_timestamp_wa_lrr);
+					gen12_emit_render_ctx_wa);
 	else
 		execlists_setup_indirect_ctx_bb(ce,
 						gen12_emit_timestamp_wa_lrm);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
index bb444614f33b..6c81a3a815ac 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
@@ -27,6 +27,7 @@
 #define CTX_PDP0_UDW			(0x30 + 1)
 #define CTX_PDP0_LDW			(0x32 + 1)
 #define CTX_R_PWR_CLK_STATE		(0x42 + 1)
+#define CTX_CMD_BUF_CCTL		(0xB6 + 1)
 
 #define GEN9_CTX_RING_MI_MODE		0x54
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a24e23e9b3d0..b31ca8e4399f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2657,6 +2657,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define RING_DMA_FADD_UDW(base)	_MMIO((base) + 0x60) /* gen8+ */
 #define RING_INSTPM(base)	_MMIO((base) + 0xc0)
 #define RING_MI_MODE(base)	_MMIO((base) + 0x9c)
+#define RING_CMD_BUF_CCTL(base) _MMIO((base) + 0x84)
 #define INSTPS		_MMIO(0x2070) /* 965+ only */
 #define GEN4_INSTDONE1	_MMIO(0x207c) /* 965+ only, aka INSTDONE_2 on SNB */
 #define ACTHD_I965	_MMIO(0x2074)
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
