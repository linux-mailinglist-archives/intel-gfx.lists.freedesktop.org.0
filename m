Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4966573F8EE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 11:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6C210E2CC;
	Tue, 27 Jun 2023 09:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C65BD10E2CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 09:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687859035; x=1719395035;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Jg2GI2Kn7oUUZzoB5vL7MjhKYMVntThNmdujuHVo5A=;
 b=oA/7b1vP6BV5tHNslenraxw5qltSsHPsTGAq0wEqFK/2xiM2gzuX+rDB
 Bwj1p06XxobzjpxqRJoayy7siSKOxcKFjE5MVvwJBxwHb8uq0UpVXnfGv
 b6MSIQbt1JBh9xuMw0MWZLvOTHMHDeB4Gngt+nqTAycpL3pvZ1syf4+oF
 +03yEHIUFKv6an7Edd+f5Rja/GT5mQVVLR4LwWkgcLgQZEgVdtewO97xu
 svNk7hQRWMC8KNMWFNQWL/ILJvkaGdOrZiLvGyB89v5nvOXjNuXYxbFMn
 UV0tdI6oG9OcdxWQaSTIBcvet/OD+7rAaiIeXEVg2sR8seO74F2W5H852 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="341116463"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="341116463"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 02:43:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="666635796"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="666635796"
Received: from aamakine-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.217.123])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 02:43:52 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>
Date: Tue, 27 Jun 2023 11:43:24 +0200
Message-Id: <20230627094327.134775-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230627094327.134775-1-andi.shyti@linux.intel.com>
References: <20230627094327.134775-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/gt: Cleanup aux invalidation
 registers
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the 'NV' definition postfix that is supposed to be INV.

Take the chance to also order properly the registers based on
their address and call the GEN12_GFX_CCS_AUX_INV address as
GEN12_CCS_AUX_INV like all the other similar registers.

Remove also VD1, VD3 and VE1 registers that don't exist.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.8+
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c |  8 ++++----
 drivers/gpu/drm/i915/gt/intel_gt_regs.h  | 14 ++++++--------
 drivers/gpu/drm/i915/gt/intel_lrc.c      |  6 +++---
 3 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 23857cc08eca1..563efee055602 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -287,8 +287,8 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 
 		if (!HAS_FLAT_CCS(rq->engine->i915)) {
 			/* hsdes: 1809175790 */
-			cs = gen12_emit_aux_table_inv(rq->engine->gt,
-						      cs, GEN12_GFX_CCS_AUX_NV);
+			cs = gen12_emit_aux_table_inv(rq->engine->gt, cs,
+						      GEN12_CCS_AUX_INV);
 		}
 
 		*cs++ = preparser_disable(false);
@@ -348,10 +348,10 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
 	if (aux_inv) { /* hsdes: 1809175790 */
 		if (rq->engine->class == VIDEO_DECODE_CLASS)
 			cs = gen12_emit_aux_table_inv(rq->engine->gt,
-						      cs, GEN12_VD0_AUX_NV);
+						      cs, GEN12_VD0_AUX_INV);
 		else
 			cs = gen12_emit_aux_table_inv(rq->engine->gt,
-						      cs, GEN12_VE0_AUX_NV);
+						      cs, GEN12_VE0_AUX_INV);
 	}
 
 	if (mode & EMIT_INVALIDATE)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 718cb2c80f79e..78b67a5336afc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -332,9 +332,10 @@
 #define GEN8_PRIVATE_PAT_HI			_MMIO(0x40e0 + 4)
 #define GEN10_PAT_INDEX(index)			_MMIO(0x40e0 + (index) * 4)
 #define BSD_HWS_PGA_GEN7			_MMIO(0x4180)
-#define GEN12_GFX_CCS_AUX_NV			_MMIO(0x4208)
-#define GEN12_VD0_AUX_NV			_MMIO(0x4218)
-#define GEN12_VD1_AUX_NV			_MMIO(0x4228)
+
+#define GEN12_CCS_AUX_INV			_MMIO(0x4208)
+#define GEN12_VD0_AUX_INV			_MMIO(0x4218)
+#define GEN12_VE0_AUX_INV			_MMIO(0x4238)
 
 #define GEN8_RTCR				_MMIO(0x4260)
 #define GEN8_M1TCR				_MMIO(0x4264)
@@ -342,14 +343,11 @@
 #define GEN8_BTCR				_MMIO(0x426c)
 #define GEN8_VTCR				_MMIO(0x4270)
 
-#define GEN12_VD2_AUX_NV			_MMIO(0x4298)
-#define GEN12_VD3_AUX_NV			_MMIO(0x42a8)
-#define GEN12_VE0_AUX_NV			_MMIO(0x4238)
-
 #define BLT_HWS_PGA_GEN7			_MMIO(0x4280)
 
-#define GEN12_VE1_AUX_NV			_MMIO(0x42b8)
+#define GEN12_VD2_AUX_INV			_MMIO(0x4298)
 #define   AUX_INV				REG_BIT(0)
+
 #define VEBOX_HWS_PGA_GEN7			_MMIO(0x4380)
 
 #define GEN12_AUX_ERR_DBG			_MMIO(0x43f4)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index a4ec20aaafe28..325f3dbfb90e6 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1367,7 +1367,7 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 	/* hsdes: 1809175790 */
 	if (!HAS_FLAT_CCS(ce->engine->i915))
 		cs = gen12_emit_aux_table_inv(ce->engine->gt,
-					      cs, GEN12_GFX_CCS_AUX_NV);
+					      cs, GEN12_CCS_AUX_INV);
 
 	/* Wa_16014892111 */
 	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
@@ -1396,10 +1396,10 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
 	if (!HAS_FLAT_CCS(ce->engine->i915)) {
 		if (ce->engine->class == VIDEO_DECODE_CLASS)
 			cs = gen12_emit_aux_table_inv(ce->engine->gt,
-						      cs, GEN12_VD0_AUX_NV);
+						      cs, GEN12_VD0_AUX_INV);
 		else if (ce->engine->class == VIDEO_ENHANCEMENT_CLASS)
 			cs = gen12_emit_aux_table_inv(ce->engine->gt,
-						      cs, GEN12_VE0_AUX_NV);
+						      cs, GEN12_VE0_AUX_INV);
 	}
 
 	return cs;
-- 
2.40.1

