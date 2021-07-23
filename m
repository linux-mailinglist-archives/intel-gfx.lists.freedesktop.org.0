Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0693D3EF7
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:42:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 718F66FB9A;
	Fri, 23 Jul 2021 17:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 245C96FB98
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:42:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="199127494"
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="199127494"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="463229048"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 10:42:14 -0700
Message-Id: <20210723174239.1551352-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210723174239.1551352-1-matthew.d.roper@intel.com>
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 05/30] drm/i915/xehp: Xe_HP forcewake support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement Xe_HP forcewake handling.  While we're at it, let's reorder to
the forcewake assignment if/else ladder to match our usual driver
conventions.

Co-authored-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  |   4 +
 drivers/gpu/drm/i915/intel_uncore.c           | 336 +++++++++++++++---
 drivers/gpu/drm/i915/intel_uncore.h           |  14 +-
 drivers/gpu/drm/i915/selftests/intel_uncore.c |   2 +
 4 files changed, 302 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 87cedaeb4bf8..be99a74e6e09 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3357,6 +3357,10 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 			i915_mmio_reg_offset(RING_EXECLIST_SQ_CONTENTS(base));
 		execlists->ctrl_reg = uncore->regs +
 			i915_mmio_reg_offset(RING_EXECLIST_CONTROL(base));
+
+		engine->fw_domain = intel_uncore_forcewake_for_reg(engine->uncore,
+				    RING_EXECLIST_CONTROL(engine->mmio_base),
+				    FW_REG_WRITE);
 	} else {
 		execlists->submit_reg = uncore->regs +
 			i915_mmio_reg_offset(RING_ELSP(base));
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index ee1c6fbc3d97..8cf53f54559d 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -24,6 +24,8 @@
 #include <linux/pm_runtime.h>
 #include <asm/iosf_mbi.h>
 
+#include "gt/intel_lrc_reg.h" /* for shadow reg list */
+
 #include "i915_drv.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
@@ -68,8 +70,14 @@ static const char * const forcewake_domain_names[] = {
 	"vdbox1",
 	"vdbox2",
 	"vdbox3",
+	"vdbox4",
+	"vdbox5",
+	"vdbox6",
+	"vdbox7",
 	"vebox0",
 	"vebox1",
+	"vebox2",
+	"vebox3",
 };
 
 const char *
@@ -952,30 +960,80 @@ static const i915_reg_t gen8_shadowed_regs[] = {
 };
 
 static const i915_reg_t gen11_shadowed_regs[] = {
-	RING_TAIL(RENDER_RING_BASE),		/* 0x2000 (base) */
-	GEN6_RPNSWREQ,				/* 0xA008 */
-	GEN6_RC_VIDEO_FREQ,			/* 0xA00C */
-	RING_TAIL(BLT_RING_BASE),		/* 0x22000 (base) */
-	RING_TAIL(GEN11_BSD_RING_BASE),		/* 0x1C0000 (base) */
-	RING_TAIL(GEN11_BSD2_RING_BASE),	/* 0x1C4000 (base) */
-	RING_TAIL(GEN11_VEBOX_RING_BASE),	/* 0x1C8000 (base) */
-	RING_TAIL(GEN11_BSD3_RING_BASE),	/* 0x1D0000 (base) */
-	RING_TAIL(GEN11_BSD4_RING_BASE),	/* 0x1D4000 (base) */
-	RING_TAIL(GEN11_VEBOX2_RING_BASE),	/* 0x1D8000 (base) */
+	RING_TAIL(RENDER_RING_BASE),			/* 0x2000 (base) */
+	RING_EXECLIST_CONTROL(RENDER_RING_BASE),        /* 0x2550 */
+	GEN6_RPNSWREQ,					/* 0xA008 */
+	GEN6_RC_VIDEO_FREQ,				/* 0xA00C */
+	RING_TAIL(BLT_RING_BASE),			/* 0x22000 (base) */
+	RING_EXECLIST_CONTROL(BLT_RING_BASE),		/* 0x22550 */
+	RING_TAIL(GEN11_BSD_RING_BASE),			/* 0x1C0000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_BSD_RING_BASE),	/* 0x1C0550 */
+	RING_TAIL(GEN11_BSD2_RING_BASE),		/* 0x1C4000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_BSD2_RING_BASE),	/* 0x1C4550 */
+	RING_TAIL(GEN11_VEBOX_RING_BASE),		/* 0x1C8000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_VEBOX_RING_BASE),	/* 0x1C8550 */
+	RING_TAIL(GEN11_BSD3_RING_BASE),		/* 0x1D0000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_BSD3_RING_BASE),	/* 0x1D0550 */
+	RING_TAIL(GEN11_BSD4_RING_BASE),		/* 0x1D4000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_BSD4_RING_BASE),	/* 0x1D4550 */
+	RING_TAIL(GEN11_VEBOX2_RING_BASE),		/* 0x1D8000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_VEBOX2_RING_BASE),	/* 0x1D8550 */
 	/* TODO: Other registers are not yet used */
 };
 
 static const i915_reg_t gen12_shadowed_regs[] = {
-	RING_TAIL(RENDER_RING_BASE),		/* 0x2000 (base) */
-	GEN6_RPNSWREQ,				/* 0xA008 */
-	GEN6_RC_VIDEO_FREQ,			/* 0xA00C */
-	RING_TAIL(BLT_RING_BASE),		/* 0x22000 (base) */
-	RING_TAIL(GEN11_BSD_RING_BASE),		/* 0x1C0000 (base) */
-	RING_TAIL(GEN11_BSD2_RING_BASE),	/* 0x1C4000 (base) */
-	RING_TAIL(GEN11_VEBOX_RING_BASE),	/* 0x1C8000 (base) */
-	RING_TAIL(GEN11_BSD3_RING_BASE),	/* 0x1D0000 (base) */
-	RING_TAIL(GEN11_BSD4_RING_BASE),	/* 0x1D4000 (base) */
-	RING_TAIL(GEN11_VEBOX2_RING_BASE),	/* 0x1D8000 (base) */
+	RING_TAIL(RENDER_RING_BASE),			/* 0x2000 (base) */
+	RING_EXECLIST_CONTROL(RENDER_RING_BASE),	/* 0x2550 */
+	GEN6_RPNSWREQ,					/* 0xA008 */
+	GEN6_RC_VIDEO_FREQ,				/* 0xA00C */
+	RING_TAIL(BLT_RING_BASE),			/* 0x22000 (base) */
+	RING_EXECLIST_CONTROL(BLT_RING_BASE),		/* 0x22550 */
+	RING_TAIL(GEN11_BSD_RING_BASE),			/* 0x1C0000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_BSD_RING_BASE),	/* 0x1C0550 */
+	RING_TAIL(GEN11_BSD2_RING_BASE),		/* 0x1C4000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_BSD2_RING_BASE),	/* 0x1C4550 */
+	RING_TAIL(GEN11_VEBOX_RING_BASE),		/* 0x1C8000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_VEBOX_RING_BASE),	/* 0x1C8550 */
+	RING_TAIL(GEN11_BSD3_RING_BASE),		/* 0x1D0000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_BSD3_RING_BASE),	/* 0x1D0550 */
+	RING_TAIL(GEN11_BSD4_RING_BASE),		/* 0x1D4000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_BSD4_RING_BASE),	/* 0x1D4550 */
+	RING_TAIL(GEN11_VEBOX2_RING_BASE),		/* 0x1D8000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_VEBOX2_RING_BASE),	/* 0x1D8550 */
+	/* TODO: Other registers are not yet used */
+};
+
+static const i915_reg_t xehp_shadowed_regs[] = {
+	RING_TAIL(RENDER_RING_BASE),			/* 0x2000 (base) */
+	RING_EXECLIST_CONTROL(RENDER_RING_BASE),        /* 0x2550 */
+	GEN6_RPNSWREQ,					/* 0xA008 */
+	GEN6_RC_VIDEO_FREQ,				/* 0xA00C */
+	RING_TAIL(BLT_RING_BASE),			/* 0x22000 (base) */
+	RING_EXECLIST_CONTROL(BLT_RING_BASE),		/* 0x22550 */
+	RING_TAIL(GEN11_BSD_RING_BASE),			/* 0x1C0000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_BSD_RING_BASE),	/* 0x1C0550 */
+	RING_TAIL(GEN11_BSD2_RING_BASE),		/* 0x1C4000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_BSD2_RING_BASE),	/* 0x1C4550 */
+	RING_TAIL(GEN11_VEBOX_RING_BASE),		/* 0x1C8000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_VEBOX_RING_BASE),	/* 0x1C8550 */
+	RING_TAIL(GEN11_BSD3_RING_BASE),		/* 0x1D0000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_BSD3_RING_BASE),	/* 0x1D0550 */
+	RING_TAIL(GEN11_BSD4_RING_BASE),		/* 0x1D4000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_BSD4_RING_BASE),	/* 0x1D4550 */
+	RING_TAIL(GEN11_VEBOX2_RING_BASE),		/* 0x1D8000 (base) */
+	RING_EXECLIST_CONTROL(GEN11_VEBOX2_RING_BASE),	/* 0x1D8550 */
+	RING_TAIL(XEHP_BSD5_RING_BASE),			/* 0x1E0000 (base) */
+	RING_EXECLIST_CONTROL(XEHP_BSD5_RING_BASE),	/* 0x1E0550 */
+	RING_TAIL(XEHP_BSD6_RING_BASE),			/* 0x1E4000 (base) */
+	RING_EXECLIST_CONTROL(XEHP_BSD6_RING_BASE),	/* 0x1E4550 */
+	RING_TAIL(XEHP_VEBOX3_RING_BASE),		/* 0x1E8000 (base) */
+	RING_EXECLIST_CONTROL(XEHP_VEBOX3_RING_BASE),	/* 0x1E8550 */
+	RING_TAIL(XEHP_BSD7_RING_BASE),			/* 0x1F0000 (base) */
+	RING_EXECLIST_CONTROL(XEHP_BSD7_RING_BASE),	/* 0x1F0550 */
+	RING_TAIL(XEHP_BSD8_RING_BASE),			/* 0x1F4000 (base) */
+	RING_EXECLIST_CONTROL(XEHP_BSD8_RING_BASE),	/* 0x1F4550 */
+	RING_TAIL(XEHP_VEBOX4_RING_BASE),		/* 0x1F8000 (base) */
+	RING_EXECLIST_CONTROL(XEHP_VEBOX4_RING_BASE),	/* 0x1F8550 */
 	/* TODO: Other registers are not yet used */
 };
 
@@ -991,17 +1049,18 @@ static int mmio_reg_cmp(u32 key, const i915_reg_t *reg)
 		return 0;
 }
 
-#define __is_genX_shadowed(x) \
-static bool is_gen##x##_shadowed(u32 offset) \
+#define __is_X_shadowed(x) \
+static bool is_##x##_shadowed(u32 offset) \
 { \
-	const i915_reg_t *regs = gen##x##_shadowed_regs; \
-	return BSEARCH(offset, regs, ARRAY_SIZE(gen##x##_shadowed_regs), \
+	const i915_reg_t *regs = x##_shadowed_regs; \
+	return BSEARCH(offset, regs, ARRAY_SIZE(x##_shadowed_regs), \
 		       mmio_reg_cmp); \
 }
 
-__is_genX_shadowed(8)
-__is_genX_shadowed(11)
-__is_genX_shadowed(12)
+__is_X_shadowed(gen8)
+__is_X_shadowed(gen11)
+__is_X_shadowed(gen12)
+__is_X_shadowed(xehp)
 
 static enum forcewake_domains
 gen6_reg_write_fw_domains(struct intel_uncore *uncore, i915_reg_t reg)
@@ -1065,6 +1124,15 @@ static const struct intel_forcewake_range __chv_fw_ranges[] = {
 	__fwd; \
 })
 
+#define __xehp_fwtable_reg_write_fw_domains(uncore, offset) \
+({ \
+	enum forcewake_domains __fwd = 0; \
+	const u32 __offset = (offset); \
+	if (!is_xehp_shadowed(__offset)) \
+		__fwd = find_fw_domain(uncore, __offset); \
+	__fwd; \
+})
+
 /* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
 static const struct intel_forcewake_range __gen9_fw_ranges[] = {
 	GEN_FW_RANGE(0x0, 0xaff, FORCEWAKE_GT),
@@ -1249,6 +1317,145 @@ static const struct intel_forcewake_range __gen12_fw_ranges[] = {
 		0x1d3f00 - 0x1d3fff: VD2 */
 };
 
+/* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
+static const struct intel_forcewake_range __xehp_fw_ranges[] = {
+	GEN_FW_RANGE(0x0, 0x1fff, 0), /*
+		  0x0 -  0xaff: reserved
+		0xb00 - 0x1fff: always on */
+	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x2700, 0x4aff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x4b00, 0x51ff, 0), /*
+		0x4b00 - 0x4fff: reserved
+		0x5000 - 0x51ff: always on */
+	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x8000, 0x813f, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x8160, 0x81ff, 0), /*
+		0x8160 - 0x817f: reserved
+		0x8180 - 0x81ff: always on */
+	GEN_FW_RANGE(0x8200, 0x82ff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x8500, 0x94cf, FORCEWAKE_GT), /*
+		0x8500 - 0x87ff: gt
+		0x8800 - 0x8fff: reserved
+		0x9000 - 0x947f: gt
+		0x9480 - 0x94cf: reserved */
+	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x9560, 0x97ff, 0), /*
+		0x9560 - 0x95ff: always on
+		0x9600 - 0x97ff: reserved */
+	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
+		0x9800 - 0xb4ff: gt
+		0xb500 - 0xbfff: reserved
+		0xc000 - 0xcfff: gt */
+	GEN_FW_RANGE(0xd000, 0xd7ff, 0),
+	GEN_FW_RANGE(0xd800, 0xdbff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0xdc00, 0xdcff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
+		0xdd00 - 0xddff: gt
+		0xde00 - 0xde7f: reserved */
+	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
+		0xde80 - 0xdfff: render
+		0xe000 - 0xe0ff: reserved
+		0xe100 - 0xe8ff: render */
+	GEN_FW_RANGE(0xe900, 0xffff, FORCEWAKE_GT), /*
+		0xe900 - 0xe9ff: gt
+		0xea00 - 0xefff: reserved
+		0xf000 - 0xffff: gt */
+	GEN_FW_RANGE(0x10000, 0x13fff, 0), /*
+		0x10000 - 0x11fff: reserved
+		0x12000 - 0x127ff: always on
+		0x12800 - 0x13fff: reserved */
+	GEN_FW_RANGE(0x14000, 0x141ff, FORCEWAKE_MEDIA_VDBOX0),
+	GEN_FW_RANGE(0x14200, 0x143ff, FORCEWAKE_MEDIA_VDBOX2),
+	GEN_FW_RANGE(0x14400, 0x145ff, FORCEWAKE_MEDIA_VDBOX4),
+	GEN_FW_RANGE(0x14600, 0x147ff, FORCEWAKE_MEDIA_VDBOX6),
+	GEN_FW_RANGE(0x14800, 0x1ffff, FORCEWAKE_RENDER), /*
+		0x14800 - 0x14fff: render
+		0x15000 - 0x16dff: reserved
+		0x16e00 - 0x1ffff: render */
+	GEN_FW_RANGE(0x20000, 0x21fff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x20000 - 0x20fff: VD0
+		0x21000 - 0x21fff: reserved */
+	GEN_FW_RANGE(0x22000, 0x23fff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*
+		0x24000 - 0x2407f: always on
+		0x24080 - 0x2417f: reserved */
+	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_GT), /*
+		0x24180 - 0x241ff: gt
+		0x24200 - 0x249ff: reserved */
+	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER), /*
+		0x24a00 - 0x24a7f: render
+		0x24a80 - 0x251ff: reserved */
+	GEN_FW_RANGE(0x25200, 0x25fff, FORCEWAKE_GT), /*
+		0x25200 - 0x252ff: gt
+		0x25300 - 0x25fff: reserved */
+	GEN_FW_RANGE(0x26000, 0x2ffff, FORCEWAKE_RENDER), /*
+		0x26000 - 0x27fff: render
+		0x28000 - 0x29fff: reserved
+		0x2a000 - 0x2ffff: undocumented */
+	GEN_FW_RANGE(0x30000, 0x3ffff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x40000, 0x1bffff, 0),
+	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1c0000 - 0x1c2bff: VD0
+		0x1c2c00 - 0x1c2cff: reserved
+		0x1c2d00 - 0x1c2dff: VD0
+		0x1c2e00 - 0x1c3eff: reserved
+		0x1c3f00 - 0x1c3fff: VD0 */
+	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1), /*
+		0x1c4000 - 0x1c6bff: VD1
+		0x1c6c00 - 0x1c6cff: reserved
+		0x1c6d00 - 0x1c6dff: VD1
+		0x1c6e00 - 0x1c7fff: reserved */
+	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*
+		0x1c8000 - 0x1ca0ff: VE0
+		0x1ca100 - 0x1cbfff: reserved */
+	GEN_FW_RANGE(0x1cc000, 0x1ccfff, FORCEWAKE_MEDIA_VDBOX0),
+	GEN_FW_RANGE(0x1cd000, 0x1cdfff, FORCEWAKE_MEDIA_VDBOX2),
+	GEN_FW_RANGE(0x1ce000, 0x1cefff, FORCEWAKE_MEDIA_VDBOX4),
+	GEN_FW_RANGE(0x1cf000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX6),
+	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x1d0000 - 0x1d2bff: VD2
+		0x1d2c00 - 0x1d2cff: reserved
+		0x1d2d00 - 0x1d2dff: VD2
+		0x1d2e00 - 0x1d3eff: reserved
+		0x1d3f00 - 0x1d3fff: VD2 */
+	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3), /*
+		0x1d4000 - 0x1d6bff: VD3
+		0x1d6c00 - 0x1d6cff: reserved
+		0x1d6d00 - 0x1d6dff: VD3
+		0x1d6e00 - 0x1d7fff: reserved */
+	GEN_FW_RANGE(0x1d8000, 0x1dffff, FORCEWAKE_MEDIA_VEBOX1), /*
+		0x1d8000 - 0x1da0ff: VE1
+		0x1da100 - 0x1dffff: reserved */
+	GEN_FW_RANGE(0x1e0000, 0x1e3fff, FORCEWAKE_MEDIA_VDBOX4), /*
+		0x1e0000 - 0x1e2bff: VD4
+		0x1e2c00 - 0x1e2cff: reserved
+		0x1e2d00 - 0x1e2dff: VD4
+		0x1e2e00 - 0x1e3eff: reserved
+		0x1e3f00 - 0x1e3fff: VD4 */
+	GEN_FW_RANGE(0x1e4000, 0x1e7fff, FORCEWAKE_MEDIA_VDBOX5), /*
+		0x1e4000 - 0x1e6bff: VD5
+		0x1e6c00 - 0x1e6cff: reserved
+		0x1e6d00 - 0x1e6dff: VD5
+		0x1e6e00 - 0x1e7fff: reserved */
+	GEN_FW_RANGE(0x1e8000, 0x1effff, FORCEWAKE_MEDIA_VEBOX2), /*
+		0x1e8000 - 0x1ea0ff: VE2
+		0x1ea100 - 0x1effff: reserved */
+	GEN_FW_RANGE(0x1f0000, 0x1f3fff, FORCEWAKE_MEDIA_VDBOX6), /*
+		0x1f0000 - 0x1f2bff: VD6
+		0x1f2c00 - 0x1f2cff: reserved
+		0x1f2d00 - 0x1f2dff: VD6
+		0x1f2e00 - 0x1f3eff: reserved
+		0x1f3f00 - 0x1f3fff: VD6 */
+	GEN_FW_RANGE(0x1f4000, 0x1f7fff, FORCEWAKE_MEDIA_VDBOX7), /*
+		0x1f4000 - 0x1f6bff: VD7
+		0x1f6c00 - 0x1f6cff: reserved
+		0x1f6d00 - 0x1f6dff: VD7
+		0x1f6e00 - 0x1f7fff: reserved */
+	GEN_FW_RANGE(0x1f8000, 0x1fa0ff, FORCEWAKE_MEDIA_VEBOX3),
+};
+
 static void
 ilk_dummy_write(struct intel_uncore *uncore)
 {
@@ -1502,6 +1709,7 @@ __gen_write(func, 8) \
 __gen_write(func, 16) \
 __gen_write(func, 32)
 
+__gen_reg_write_funcs(xehp_fwtable);
 __gen_reg_write_funcs(gen12_fwtable);
 __gen_reg_write_funcs(gen11_fwtable);
 __gen_reg_write_funcs(fwtable);
@@ -1582,8 +1790,14 @@ static int __fw_domain_init(struct intel_uncore *uncore,
 	BUILD_BUG_ON(FORCEWAKE_MEDIA_VDBOX1 != (1 << FW_DOMAIN_ID_MEDIA_VDBOX1));
 	BUILD_BUG_ON(FORCEWAKE_MEDIA_VDBOX2 != (1 << FW_DOMAIN_ID_MEDIA_VDBOX2));
 	BUILD_BUG_ON(FORCEWAKE_MEDIA_VDBOX3 != (1 << FW_DOMAIN_ID_MEDIA_VDBOX3));
+	BUILD_BUG_ON(FORCEWAKE_MEDIA_VDBOX4 != (1 << FW_DOMAIN_ID_MEDIA_VDBOX4));
+	BUILD_BUG_ON(FORCEWAKE_MEDIA_VDBOX5 != (1 << FW_DOMAIN_ID_MEDIA_VDBOX5));
+	BUILD_BUG_ON(FORCEWAKE_MEDIA_VDBOX6 != (1 << FW_DOMAIN_ID_MEDIA_VDBOX6));
+	BUILD_BUG_ON(FORCEWAKE_MEDIA_VDBOX7 != (1 << FW_DOMAIN_ID_MEDIA_VDBOX7));
 	BUILD_BUG_ON(FORCEWAKE_MEDIA_VEBOX0 != (1 << FW_DOMAIN_ID_MEDIA_VEBOX0));
 	BUILD_BUG_ON(FORCEWAKE_MEDIA_VEBOX1 != (1 << FW_DOMAIN_ID_MEDIA_VEBOX1));
+	BUILD_BUG_ON(FORCEWAKE_MEDIA_VEBOX2 != (1 << FW_DOMAIN_ID_MEDIA_VEBOX2));
+	BUILD_BUG_ON(FORCEWAKE_MEDIA_VEBOX3 != (1 << FW_DOMAIN_ID_MEDIA_VEBOX3));
 
 	d->mask = BIT(domain_id);
 
@@ -1870,36 +2084,36 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 		return ret;
 	forcewake_early_sanitize(uncore, 0);
 
-	if (IS_GRAPHICS_VER(i915, 6, 7)) {
-		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen6);
-
-		if (IS_VALLEYVIEW(i915)) {
-			ASSIGN_FW_DOMAINS_TABLE(uncore, __vlv_fw_ranges);
-			ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
-		} else {
-			ASSIGN_READ_MMIO_VFUNCS(uncore, gen6);
-		}
-	} else if (GRAPHICS_VER(i915) == 8) {
-		if (IS_CHERRYVIEW(i915)) {
-			ASSIGN_FW_DOMAINS_TABLE(uncore, __chv_fw_ranges);
-			ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
-			ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
-		} else {
-			ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen8);
-			ASSIGN_READ_MMIO_VFUNCS(uncore, gen6);
-		}
-	} else if (IS_GRAPHICS_VER(i915, 9, 10)) {
-		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen9_fw_ranges);
-		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
-		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
-	} else if (GRAPHICS_VER(i915) == 11) {
-		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen11_fw_ranges);
-		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen11_fwtable);
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+		ASSIGN_FW_DOMAINS_TABLE(uncore, __xehp_fw_ranges);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, xehp_fwtable);
 		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
-	} else {
+	} else if (GRAPHICS_VER(i915) >= 12) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen12_fw_ranges);
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen12_fwtable);
 		ASSIGN_READ_MMIO_VFUNCS(uncore, gen12_fwtable);
+	} else if (GRAPHICS_VER(i915) == 11) {
+		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen11_fw_ranges);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen11_fwtable);
+		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
+	} else if (IS_GRAPHICS_VER(i915, 9, 10)) {
+		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen9_fw_ranges);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
+		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
+	} else if (IS_CHERRYVIEW(i915)) {
+		ASSIGN_FW_DOMAINS_TABLE(uncore, __chv_fw_ranges);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
+		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
+	} else if (GRAPHICS_VER(i915) == 8) {
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen8);
+		ASSIGN_READ_MMIO_VFUNCS(uncore, gen6);
+	} else if (IS_VALLEYVIEW(i915)) {
+		ASSIGN_FW_DOMAINS_TABLE(uncore, __vlv_fw_ranges);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen6);
+		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
+	} else if (IS_GRAPHICS_VER(i915, 6, 7)) {
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen6);
+		ASSIGN_READ_MMIO_VFUNCS(uncore, gen6);
 	}
 
 	uncore->pmic_bus_access_nb.notifier_call = i915_pmic_bus_access_notifier;
@@ -1988,6 +2202,22 @@ void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
 		if (HAS_ENGINE(gt, _VCS(i)))
 			continue;
 
+		/*
+		 * Starting with XeHP, the power well for an even-numbered
+		 * VDBOX is also used for shared units within the
+		 * media slice such as SFC.  So even if the engine
+		 * itself is fused off, we still need to initialize
+		 * the forcewake domain if any of the other engines
+		 * in the same media slice are present.
+		 */
+		if (GRAPHICS_VER_FULL(uncore->i915) >= IP_VER(12, 50) && i % 2 == 0) {
+			if ((i + 1 < I915_MAX_VCS) && HAS_ENGINE(gt, _VCS(i + 1)))
+				continue;
+
+			if (HAS_ENGINE(gt, _VECS(i / 2)))
+				continue;
+		}
+
 		if (fw_domains & BIT(domain_id))
 			fw_domain_fini(uncore, domain_id);
 	}
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index a18bdb57af7b..3c0b0a8b5250 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -52,8 +52,14 @@ enum forcewake_domain_id {
 	FW_DOMAIN_ID_MEDIA_VDBOX1,
 	FW_DOMAIN_ID_MEDIA_VDBOX2,
 	FW_DOMAIN_ID_MEDIA_VDBOX3,
+	FW_DOMAIN_ID_MEDIA_VDBOX4,
+	FW_DOMAIN_ID_MEDIA_VDBOX5,
+	FW_DOMAIN_ID_MEDIA_VDBOX6,
+	FW_DOMAIN_ID_MEDIA_VDBOX7,
 	FW_DOMAIN_ID_MEDIA_VEBOX0,
 	FW_DOMAIN_ID_MEDIA_VEBOX1,
+	FW_DOMAIN_ID_MEDIA_VEBOX2,
+	FW_DOMAIN_ID_MEDIA_VEBOX3,
 
 	FW_DOMAIN_ID_COUNT
 };
@@ -66,10 +72,16 @@ enum forcewake_domains {
 	FORCEWAKE_MEDIA_VDBOX1	= BIT(FW_DOMAIN_ID_MEDIA_VDBOX1),
 	FORCEWAKE_MEDIA_VDBOX2	= BIT(FW_DOMAIN_ID_MEDIA_VDBOX2),
 	FORCEWAKE_MEDIA_VDBOX3	= BIT(FW_DOMAIN_ID_MEDIA_VDBOX3),
+	FORCEWAKE_MEDIA_VDBOX4	= BIT(FW_DOMAIN_ID_MEDIA_VDBOX4),
+	FORCEWAKE_MEDIA_VDBOX5	= BIT(FW_DOMAIN_ID_MEDIA_VDBOX5),
+	FORCEWAKE_MEDIA_VDBOX6	= BIT(FW_DOMAIN_ID_MEDIA_VDBOX6),
+	FORCEWAKE_MEDIA_VDBOX7	= BIT(FW_DOMAIN_ID_MEDIA_VDBOX7),
 	FORCEWAKE_MEDIA_VEBOX0	= BIT(FW_DOMAIN_ID_MEDIA_VEBOX0),
 	FORCEWAKE_MEDIA_VEBOX1	= BIT(FW_DOMAIN_ID_MEDIA_VEBOX1),
+	FORCEWAKE_MEDIA_VEBOX2	= BIT(FW_DOMAIN_ID_MEDIA_VEBOX2),
+	FORCEWAKE_MEDIA_VEBOX3	= BIT(FW_DOMAIN_ID_MEDIA_VEBOX3),
 
-	FORCEWAKE_ALL = BIT(FW_DOMAIN_ID_COUNT) - 1
+	FORCEWAKE_ALL = BIT(FW_DOMAIN_ID_COUNT) - 1,
 };
 
 struct intel_uncore_funcs {
diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index 8ef9e6a4ad05..720b60853f8b 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -68,6 +68,7 @@ static int intel_shadow_table_check(void)
 		{ gen8_shadowed_regs, ARRAY_SIZE(gen8_shadowed_regs) },
 		{ gen11_shadowed_regs, ARRAY_SIZE(gen11_shadowed_regs) },
 		{ gen12_shadowed_regs, ARRAY_SIZE(gen12_shadowed_regs) },
+		{ xehp_shadowed_regs, ARRAY_SIZE(xehp_shadowed_regs) },
 	};
 	const i915_reg_t *reg;
 	unsigned int i, j;
@@ -103,6 +104,7 @@ int intel_uncore_mock_selftests(void)
 		{ __gen9_fw_ranges, ARRAY_SIZE(__gen9_fw_ranges), true },
 		{ __gen11_fw_ranges, ARRAY_SIZE(__gen11_fw_ranges), true },
 		{ __gen12_fw_ranges, ARRAY_SIZE(__gen12_fw_ranges), true },
+		{ __xehp_fw_ranges, ARRAY_SIZE(__xehp_fw_ranges), true },
 	};
 	int err, i;
 
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
