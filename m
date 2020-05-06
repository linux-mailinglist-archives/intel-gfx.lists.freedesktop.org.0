Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D072A1C7597
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 17:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D192895E2;
	Wed,  6 May 2020 15:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 106F9895E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 15:59:53 +0000 (UTC)
IronPort-SDR: iAwy2jSUdzqjw909PI/IBAeKvhWt/cl3SMk5EAv+HdDQlsbjY264sZv0krxaA9kjt+AF6zi7dJ
 wA5V9rShJR1A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 08:59:36 -0700
IronPort-SDR: Dw7XxqGWunrfjITaR93T9uXo3n3u1iA3cGZ5HC/wV9JDhuSU/BzU/DZljm8xYbngtJ+Pk2CdR/
 nGtikSnccwHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,359,1583222400"; d="scan'208";a="339050410"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 06 May 2020 08:59:34 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 63C2F84076E; Wed,  6 May 2020 18:58:56 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 18:58:55 +0300
Message-Id: <20200506155855.347-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506144734.29297-4-mika.kuoppala@linux.intel.com>
References: <20200506144734.29297-4-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/gen12: Invalidate aux table
 entries forcibly
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
Cc: Yang A Shi <yang.a.shi@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Aux table invalidation can fail on update. So
next access may cause memory access to be into stale entry.

Proposed workaround is to invalidate entries between
all batchbuffers.

v2: correct register address (Yang)

References bspec#43904, hsdes#1809175790
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Chuansheng Liu <chuansheng.liu@intel.com>
Cc: Rafael Antognolli <rafael.antognolli@intel.com>
Cc: Yang A Shi <yang.a.shi@intel.com>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 16 +++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h     |  2 ++
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index e1235d504837..bbdb0e2a4571 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4539,6 +4539,17 @@ static u32 preparser_disable(bool state)
 	return MI_ARB_CHECK | 1 << 8 | state;
 }
 
+static u32 *
+gen12_emit_aux_table_inv(struct i915_request *rq, u32 *cs)
+{
+	*cs++ = MI_LOAD_REGISTER_IMM(1);
+	*cs++ = i915_mmio_reg_offset(GEN12_GFX_CCS_AUX_NV);
+	*cs++ = AUX_INV;
+	*cs++ = MI_NOOP;
+
+	return cs;
+}
+
 static int gen12_emit_flush_render(struct i915_request *request,
 				   u32 mode)
 {
@@ -4587,7 +4598,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
 
 		flags |= PIPE_CONTROL_CS_STALL;
 
-		cs = intel_ring_begin(request, 8);
+		cs = intel_ring_begin(request, 8 + 4);
 		if (IS_ERR(cs))
 			return PTR_ERR(cs);
 
@@ -4600,6 +4611,9 @@ static int gen12_emit_flush_render(struct i915_request *request,
 
 		cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
 
+		/* hsdes: 1809175790 */
+		cs = gen12_emit_aux_table_inv(request, cs);
+
 		*cs++ = preparser_disable(false);
 		intel_ring_advance(request, cs);
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index fde54b86ea20..5168cde0596f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2526,6 +2526,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define HSW_GTT_CACHE_EN	_MMIO(0x4024)
 #define   GTT_CACHE_EN_ALL	0xF0007FFF
 #define GEN7_WR_WATERMARK	_MMIO(0x4028)
+#define GEN12_GFX_CCS_AUX_NV	_MMIO(0x4208)
+#define   AUX_INV		REG_BIT(0)
 #define GEN7_GFX_PRIO_CTRL	_MMIO(0x402C)
 #define ARB_MODE		_MMIO(0x4030)
 #define   ARB_MODE_SWIZZLE_SNB	(1 << 4)
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
