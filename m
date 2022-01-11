Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D15848A717
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 06:16:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45414112AFA;
	Tue, 11 Jan 2022 05:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8343E10F906
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 05:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641878165; x=1673414165;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xi9f6dKFMT6LEfIPyQULfXQAspQnlvG2Nn2OQuzSyeQ=;
 b=HmZ6e3qIhMTrNW986TEqw4cFG7Mrl2gOf3hyIgG3Rz/kM3NSn9OxkD+c
 k1jlqb6YQjJltv/LOkD3gVIZwUuhtEGtV7mTgI7Sd8B8qNpupUEBJsK7t
 4K250BxLCtu+oaFBxMWoxEyGwlm5ejPLkJNpsoAVlsAFFqn6fUSmM0z2r
 66GQt8ZvQ3L2ZCjWvIjLb9eIntJSKzEVtOzWehR9HunGcTkXDLzekgIXp
 K6L0tIRgewjcq7mM3n8EL6P3345JTtCelG0wfUV+Ph2Af9VdtY/EyliOw
 WDX97ux9TrYq8iMAJBIB6OLToBJrYRvhJcj5sky3h6Gw8yEimDBxdtk4p w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="243358337"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="243358337"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="474399144"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 21:15:50 -0800
Message-Id: <20220111051600.3429104-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220111051600.3429104-1-matthew.d.roper@intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/11] drm/i915: Use parameterized GPR
 register definitions everywhere
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we have an engine-parameterized macro GEN8_RING_CS_GPR, let's use
that in place of the HSW_CS_GPR and BCS_GPR register definitions.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 68 ++++++++++++++------------
 drivers/gpu/drm/i915/i915_reg.h        |  8 ---
 2 files changed, 36 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 9c90740520a9..a804373bcd17 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -592,6 +592,10 @@ struct drm_i915_reg_descriptor {
 	{ .addr = _reg(idx) }, \
 	{ .addr = _reg ## _UDW(idx) }
 
+#define REG64_BASE_IDX(_reg, base, idx) \
+	{ .addr = _reg(base, idx) }, \
+	{ .addr = _reg ## _UDW(base, idx) }
+
 static const struct drm_i915_reg_descriptor gen7_render_regs[] = {
 	REG64(GPGPU_THREADS_DISPATCHED),
 	REG64(HS_INVOCATION_COUNT),
@@ -637,22 +641,22 @@ static const struct drm_i915_reg_descriptor gen7_render_regs[] = {
 };
 
 static const struct drm_i915_reg_descriptor hsw_render_regs[] = {
-	REG64_IDX(HSW_CS_GPR, 0),
-	REG64_IDX(HSW_CS_GPR, 1),
-	REG64_IDX(HSW_CS_GPR, 2),
-	REG64_IDX(HSW_CS_GPR, 3),
-	REG64_IDX(HSW_CS_GPR, 4),
-	REG64_IDX(HSW_CS_GPR, 5),
-	REG64_IDX(HSW_CS_GPR, 6),
-	REG64_IDX(HSW_CS_GPR, 7),
-	REG64_IDX(HSW_CS_GPR, 8),
-	REG64_IDX(HSW_CS_GPR, 9),
-	REG64_IDX(HSW_CS_GPR, 10),
-	REG64_IDX(HSW_CS_GPR, 11),
-	REG64_IDX(HSW_CS_GPR, 12),
-	REG64_IDX(HSW_CS_GPR, 13),
-	REG64_IDX(HSW_CS_GPR, 14),
-	REG64_IDX(HSW_CS_GPR, 15),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 0),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 1),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 2),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 3),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 4),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 5),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 6),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 7),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 8),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 9),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 10),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 11),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 12),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 13),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 14),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, RENDER_RING_BASE, 15),
 	REG32(HSW_SCRATCH1,
 	      .mask = ~HSW_SCRATCH1_L3_DATA_ATOMICS_DISABLE,
 	      .value = 0),
@@ -675,22 +679,22 @@ static const struct drm_i915_reg_descriptor gen9_blt_regs[] = {
 	REG32(BCS_SWCTRL),
 	REG64_IDX(RING_TIMESTAMP, BLT_RING_BASE),
 	REG32_IDX(RING_CTX_TIMESTAMP, BLT_RING_BASE),
-	REG64_IDX(BCS_GPR, 0),
-	REG64_IDX(BCS_GPR, 1),
-	REG64_IDX(BCS_GPR, 2),
-	REG64_IDX(BCS_GPR, 3),
-	REG64_IDX(BCS_GPR, 4),
-	REG64_IDX(BCS_GPR, 5),
-	REG64_IDX(BCS_GPR, 6),
-	REG64_IDX(BCS_GPR, 7),
-	REG64_IDX(BCS_GPR, 8),
-	REG64_IDX(BCS_GPR, 9),
-	REG64_IDX(BCS_GPR, 10),
-	REG64_IDX(BCS_GPR, 11),
-	REG64_IDX(BCS_GPR, 12),
-	REG64_IDX(BCS_GPR, 13),
-	REG64_IDX(BCS_GPR, 14),
-	REG64_IDX(BCS_GPR, 15),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 0),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 1),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 2),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 3),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 4),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 5),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 6),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 7),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 8),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 9),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 10),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 11),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 12),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 13),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 14),
+	REG64_BASE_IDX(GEN8_RING_CS_GPR, BLT_RING_BASE, 15),
 };
 
 #undef REG64
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 61ade07068c8..149cf4d25569 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -521,10 +521,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   BCS_SRC_Y REG_BIT(0)
 #define   BCS_DST_Y REG_BIT(1)
 
-/* There are 16 GPR registers */
-#define BCS_GPR(n)	_MMIO(0x22600 + (n) * 8)
-#define BCS_GPR_UDW(n)	_MMIO(0x22600 + (n) * 8 + 4)
-
 #define GPGPU_THREADS_DISPATCHED        _MMIO(0x2290)
 #define GPGPU_THREADS_DISPATCHED_UDW	_MMIO(0x2290 + 4)
 #define HS_INVOCATION_COUNT             _MMIO(0x2300)
@@ -568,10 +564,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN7_GPGPU_DISPATCHDIMY         _MMIO(0x2504)
 #define GEN7_GPGPU_DISPATCHDIMZ         _MMIO(0x2508)
 
-/* There are the 16 64-bit CS General Purpose Registers */
-#define HSW_CS_GPR(n)                   _MMIO(0x2600 + (n) * 8)
-#define HSW_CS_GPR_UDW(n)               _MMIO(0x2600 + (n) * 8 + 4)
-
 #define GEN7_OACONTROL _MMIO(0x2360)
 #define  GEN7_OACONTROL_CTX_MASK	    0xFFFFF000
 #define  GEN7_OACONTROL_TIMER_PERIOD_MASK   0x3F
-- 
2.34.1

