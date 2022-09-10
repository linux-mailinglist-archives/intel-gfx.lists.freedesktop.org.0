Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7145B5B4358
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Sep 2022 02:17:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 049E310E1F6;
	Sat, 10 Sep 2022 00:17:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F06210E1F4;
 Sat, 10 Sep 2022 00:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662769056; x=1694305056;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xfEQ1ndlzoGZjWhmR57MDt4C3oWNuvWvtk7z12Lhiik=;
 b=X8sK+cO3UA+JnYehQ4lYRdHnWNQyzwZgMWl9S+w/Qc12pxXIg7yU4Jrf
 H9SbtdC5mMGbbUnjSOIId+UnormdXWvgJ3mV7z+GsxVfXXpmOJEP+x3Jx
 UtdLO4+RF18KIVDMAr2x39nYsBkj8S2NtLYQdZhoSjGisL32/D84NfEsD
 2dSsxuoIhuoJTPp5NHvQVJI91pqlXgp4tJk1dkt6g5BikYGpuUDPZ5Lmt
 y6d05cirlKde8vNcHL3MLpbZjPUNnf1/xQa6kMZP8lATEigb0FbL6252J
 TiqnSyJ3VtTIAoiJy9PhPFkV56qI1mYWezcIZljiY/vgIumlNOtzrsM/Q w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="361549465"
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="361549465"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 17:17:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="645738884"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 17:17:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Sep 2022 17:16:31 -0700
Message-Id: <20220910001631.1986601-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Add MTL forcewake support
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL has separate forcewake tables for the primary/render GT and the
media GT; each GT's intel_uncore will use a separate forcewake table and
should only initialize the domains that are relevant to that GT.  The GT
ack register also moves to a new location of (GSI base + 0xDFC) on this
platform.

Note that although our uncore handlers take care of transparently
redirecting all register accesses in the media GT's GSI range to their
new offset at 0x380000, the forcewake ranges listed in the table should
use the final, post-translation offsets.

NOTE:  There are two ranges in the media IP that have multicast
registers where the two register instances reside in different power
wells (either VD0 or VD2).  We don't have an easy way to deal with this
today (and in fact we don't even access these register ranges in the
driver today), so for now we just mark those ranges as FORCEWAKE_ALL
which will cause all of the media power wells to be grabbed, ensuring
proper operation.  If we start reading/writing in those ranges in the
future, we can re-visit whether it's worth adding extra steering
complexity into our forcewake support.

Bspec: 67788, 67789, 52077
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
 drivers/gpu/drm/i915/intel_uncore.c           | 258 +++++++++++++++++-
 drivers/gpu/drm/i915/intel_uncore.h           |   2 +
 drivers/gpu/drm/i915/selftests/intel_uncore.c |   4 +
 4 files changed, 258 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 2275ee47da95..1cbb7226400b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -39,6 +39,9 @@
 #define FORCEWAKE_ACK_RENDER_GEN9		_MMIO(0xd84)
 #define FORCEWAKE_ACK_MEDIA_GEN9		_MMIO(0xd88)
 
+#define FORCEWAKE_ACK_GSC			_MMIO(0xdf8)
+#define FORCEWAKE_ACK_GT_MTL			_MMIO(0xdfc)
+
 #define MCFG_MCR_SELECTOR			_MMIO(0xfd0)
 #define SF_MCR_SELECTOR				_MMIO(0xfd8)
 #define GEN8_MCR_SELECTOR			_MMIO(0xfdc)
@@ -898,6 +901,8 @@
 #define FORCEWAKE_MEDIA_VDBOX_GEN11(n)		_MMIO(0xa540 + (n) * 4)
 #define FORCEWAKE_MEDIA_VEBOX_GEN11(n)		_MMIO(0xa560 + (n) * 4)
 
+#define FORCEWAKE_REQ_GSC			_MMIO(0xa618)
+
 #define CHV_POWER_SS0_SIG1			_MMIO(0xa720)
 #define CHV_POWER_SS0_SIG2			_MMIO(0xa724)
 #define CHV_POWER_SS1_SIG1			_MMIO(0xa728)
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 5cd423c7b646..c058cdc6d8a0 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -104,6 +104,7 @@ static const char * const forcewake_domain_names[] = {
 	"vebox1",
 	"vebox2",
 	"vebox3",
+	"gsc",
 };
 
 const char *
@@ -888,10 +889,13 @@ void assert_forcewakes_active(struct intel_uncore *uncore,
 	spin_unlock_irq(&uncore->lock);
 }
 
-/* We give fast paths for the really cool registers */
+/*
+ * We give fast paths for the really cool registers.  The second range includes
+ * media domains (and the GSC starting from Xe_LPM+)
+ */
 #define NEEDS_FORCE_WAKE(reg) ({ \
 	u32 __reg = (reg); \
-	__reg < 0x40000 || __reg >= GEN11_BSD_RING_BASE; \
+	__reg < 0x40000 || __reg >= 0x116000; \
 })
 
 static int fw_range_cmp(u32 offset, const struct intel_forcewake_range *entry)
@@ -1131,6 +1135,45 @@ static const struct i915_range pvc_shadowed_regs[] = {
 	{ .start = 0x1F8510, .end = 0x1F8550 },
 };
 
+static const struct i915_range mtl_shadowed_regs[] = {
+	{ .start =   0x2030, .end =   0x2030 },
+	{ .start =   0x2510, .end =   0x2550 },
+	{ .start =   0xA008, .end =   0xA00C },
+	{ .start =   0xA188, .end =   0xA188 },
+	{ .start =   0xA278, .end =   0xA278 },
+	{ .start =   0xA540, .end =   0xA56C },
+	{ .start =   0xC050, .end =   0xC050 },
+	{ .start =   0xC340, .end =   0xC340 },
+	{ .start =   0xC4C8, .end =   0xC4C8 },
+	{ .start =   0xC4E0, .end =   0xC4E0 },
+	{ .start =   0xC600, .end =   0xC600 },
+	{ .start =   0xC658, .end =   0xC658 },
+	{ .start =   0xCFD4, .end =   0xCFDC },
+	{ .start =  0x22030, .end =  0x22030 },
+	{ .start =  0x22510, .end =  0x22550 },
+};
+
+static const struct i915_range xelpmp_shadowed_regs[] = {
+	{ .start = 0x1C0030, .end = 0x1C0030 },
+	{ .start = 0x1C0510, .end = 0x1C0550 },
+	{ .start = 0x1C8030, .end = 0x1C8030 },
+	{ .start = 0x1C8510, .end = 0x1C8550 },
+	{ .start = 0x1D0030, .end = 0x1D0030 },
+	{ .start = 0x1D0510, .end = 0x1D0550 },
+	{ .start = 0x38A008, .end = 0x38A00C },
+	{ .start = 0x38A188, .end = 0x38A188 },
+	{ .start = 0x38A278, .end = 0x38A278 },
+	{ .start = 0x38A540, .end = 0x38A56C },
+	{ .start = 0x38A618, .end = 0x38A618 },
+	{ .start = 0x38C050, .end = 0x38C050 },
+	{ .start = 0x38C340, .end = 0x38C340 },
+	{ .start = 0x38C4C8, .end = 0x38C4C8 },
+	{ .start = 0x38C4E0, .end = 0x38C4E4 },
+	{ .start = 0x38C600, .end = 0x38C600 },
+	{ .start = 0x38C658, .end = 0x38C658 },
+	{ .start = 0x38CFD4, .end = 0x38CFDC },
+};
+
 static int mmio_range_cmp(u32 key, const struct i915_range *range)
 {
 	if (key < range->start)
@@ -1679,6 +1722,162 @@ static const struct intel_forcewake_range __pvc_fw_ranges[] = {
 	GEN_FW_RANGE(0x3e0000, 0x3effff, FORCEWAKE_GT),
 };
 
+static const struct intel_forcewake_range __mtl_fw_ranges[] = {
+	GEN_FW_RANGE(0x0, 0xaff, 0),
+	GEN_FW_RANGE(0xb00, 0xbff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0xc00, 0xfff, 0),
+	GEN_FW_RANGE(0x1000, 0x1fff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x2700, 0x2fff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x3000, 0x3fff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x4000, 0x51ff, FORCEWAKE_GT), /*
+		0x4000 - 0x48ff: render
+		0x4900 - 0x51ff: reserved */
+	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER), /*
+		0x5200 - 0x53ff: render
+		0x5400 - 0x54ff: reserved
+		0x5500 - 0x7fff: render */
+	GEN_FW_RANGE(0x8000, 0x813f, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x8140, 0x817f, FORCEWAKE_RENDER), /*
+		0x8140 - 0x815f: render
+		0x8160 - 0x817f: reserved */
+	GEN_FW_RANGE(0x8180, 0x81ff, 0),
+	GEN_FW_RANGE(0x8200, 0x94cf, FORCEWAKE_GT), /*
+		0x8200 - 0x87ff: gt
+		0x8800 - 0x8dff: reserved
+		0x8e00 - 0x8f7f: gt
+		0x8f80 - 0x8fff: reserved
+		0x9000 - 0x947f: gt
+		0x9480 - 0x94cf: reserved */
+	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x9560, 0x967f, 0), /*
+		0x9560 - 0x95ff: always on
+		0x9600 - 0x967f: reserved */
+	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*
+		0x9680 - 0x96ff: render
+		0x9700 - 0x97ff: reserved */
+	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
+		0x9800 - 0xb4ff: gt
+		0xb500 - 0xbfff: reserved
+		0xc000 - 0xcfff: gt */
+	GEN_FW_RANGE(0xd000, 0xd7ff, 0), /*
+		0xd000 - 0xd3ff: always on
+		0xd400 - 0xd7ff: reserved */
+	GEN_FW_RANGE(0xd800, 0xd87f, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0xd880, 0xdbff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0xdc00, 0xdcff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
+		0xdd00 - 0xddff: gt
+		0xde00 - 0xde7f: reserved */
+	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
+		0xde80 - 0xdfff: render
+		0xe000 - 0xe0ff: reserved
+		0xe100 - 0xe8ff: render */
+	GEN_FW_RANGE(0xe900, 0xe9ff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0xea00, 0x147ff, 0), /*
+		 0xea00 - 0x11fff: reserved
+		0x12000 - 0x127ff: always on
+		0x12800 - 0x147ff: reserved */
+	GEN_FW_RANGE(0x14800, 0x19fff, FORCEWAKE_GT), /*
+		0x14800 - 0x153ff: gt
+		0x15400 - 0x19fff: reserved */
+	GEN_FW_RANGE(0x1a000, 0x21fff, FORCEWAKE_RENDER), /*
+		0x1a000 - 0x1bfff: render
+		0x1c000 - 0x21fff: reserved */
+	GEN_FW_RANGE(0x22000, 0x23fff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x24000, 0x2ffff, 0), /*
+		0x24000 - 0x2407f: always on
+		0x24080 - 0x2ffff: reserved */
+	GEN_FW_RANGE(0x30000, 0x3ffff, FORCEWAKE_GT)
+};
+
+/*
+ * Note that the register ranges here are the final offsets after
+ * translation of the GSI block to the 0x380000 offset.
+ *
+ * NOTE:  There are a couple MCR ranges near the bottom of this table
+ * that need to power up either VD0 or VD2 depending on which replicated
+ * instance of the register we're trying to access.  Our forcewake logic
+ * at the moment doesn't have a good way to take steering into consideration,
+ * and the driver doesn't even access any registers in those ranges today,
+ * so for now we just mark those ranges as FORCEWAKE_ALL.  That will ensure
+ * proper operation if we do start using the ranges in the future, and we
+ * can determine at that time whether it's worth adding extra complexity to
+ * the forcewake handling to take steering into consideration.
+ */
+static const struct intel_forcewake_range __xelpmp_fw_ranges[] = {
+	GEN_FW_RANGE(0x0, 0x115fff, 0), /* render GT range */
+	GEN_FW_RANGE(0x116000, 0x11ffff, FORCEWAKE_GSC), /*
+		0x116000 - 0x117fff: gsc
+		0x118000 - 0x119fff: reserved
+		0x11a000 - 0x11efff: gsc
+		0x11f000 - 0x11ffff: reserved */
+	GEN_FW_RANGE(0x120000, 0x1bffff, 0), /* non-GT range */
+	GEN_FW_RANGE(0x1c0000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1c0000 - 0x1c3dff: VD0
+		0x1c3e00 - 0x1c3eff: reserved
+		0x1c3f00 - 0x1c3fff: VD0
+		0x1c4000 - 0x1c7fff: reserved */
+	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*
+		0x1c8000 - 0x1ca0ff: VE0
+		0x1ca100 - 0x1cbfff: reserved */
+	GEN_FW_RANGE(0x1cc000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1cc000 - 0x1cdfff: VD0
+		0x1ce000 - 0x1cffff: reserved */
+	GEN_FW_RANGE(0x1d0000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x1d0000 - 0x1d3dff: VD2
+		0x1d3e00 - 0x1d3eff: reserved
+		0x1d4000 - 0x1d7fff: VD2 */
+	GEN_FW_RANGE(0x1d8000, 0x1da0ff, FORCEWAKE_MEDIA_VEBOX1),
+	GEN_FW_RANGE(0x1da100, 0x380aff, 0), /*
+		0x1da100 - 0x23ffff: reserved
+		0x240000 - 0x37ffff: non-GT range
+		0x380000 - 0x380aff: reserved */
+	GEN_FW_RANGE(0x380b00, 0x380bff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x380c00, 0x380fff, 0),
+	GEN_FW_RANGE(0x381000, 0x38817f, FORCEWAKE_GT), /*
+		0x381000 - 0x381fff: gt
+		0x382000 - 0x383fff: reserved
+		0x384000 - 0x384aff: gt
+		0x384b00 - 0x3851ff: reserved
+		0x385200 - 0x3871ff: gt
+		0x387200 - 0x387fff: reserved
+		0x388000 - 0x38813f: gt
+		0x388140 - 0x38817f: reserved */
+	GEN_FW_RANGE(0x388180, 0x3882ff, 0), /*
+		0x388180 - 0x3881ff: always on
+		0x388200 - 0x3882ff: reserved */
+	GEN_FW_RANGE(0x388300, 0x38955f, FORCEWAKE_GT), /*
+		0x388300 - 0x38887f: gt
+		0x388880 - 0x388fff: reserved
+		0x389000 - 0x38947f: gt
+		0x389480 - 0x38955f: reserved */
+	GEN_FW_RANGE(0x389560, 0x389fff, 0), /*
+		0x389560 - 0x3895ff: always on
+		0x389600 - 0x389fff: reserved */
+	GEN_FW_RANGE(0x38a000, 0x38cfff, FORCEWAKE_GT), /*
+		0x38a000 - 0x38afff: gt
+		0x38b000 - 0x38bfff: reserved
+		0x38c000 - 0x38cfff: gt */
+	GEN_FW_RANGE(0x38d000, 0x38d11f, 0),
+	GEN_FW_RANGE(0x38d120, 0x391fff, FORCEWAKE_GT), /*
+		0x38d120 - 0x38dfff: gt
+		0x38e000 - 0x38efff: reserved
+		0x38f000 - 0x38ffff: gt
+		0x389000 - 0x391fff: reserved */
+	GEN_FW_RANGE(0x392000, 0x392fff, 0), /*
+		0x392000 - 0x3927ff: always on
+		0x392800 - 0x292fff: reserved */
+	GEN_FW_RANGE(0x393000, 0x3931ff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x393200, 0x39323f, FORCEWAKE_ALL), /* instance-based, see note above */
+	GEN_FW_RANGE(0x393240, 0x3933ff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x393400, 0x3934ff, FORCEWAKE_ALL), /* instance-based, see note above */
+	GEN_FW_RANGE(0x393500, 0x393c7f, 0), /*
+		0x393500 - 0x393bff: reserved
+		0x393c00 - 0x393c7f: always on */
+	GEN_FW_RANGE(0x393c80, 0x393dff, FORCEWAKE_GT),
+};
+
 static void
 ilk_dummy_write(struct intel_uncore *uncore)
 {
@@ -2021,6 +2220,7 @@ static int __fw_domain_init(struct intel_uncore *uncore,
 	BUILD_BUG_ON(FORCEWAKE_MEDIA_VEBOX1 != (1 << FW_DOMAIN_ID_MEDIA_VEBOX1));
 	BUILD_BUG_ON(FORCEWAKE_MEDIA_VEBOX2 != (1 << FW_DOMAIN_ID_MEDIA_VEBOX2));
 	BUILD_BUG_ON(FORCEWAKE_MEDIA_VEBOX3 != (1 << FW_DOMAIN_ID_MEDIA_VEBOX3));
+	BUILD_BUG_ON(FORCEWAKE_GSC != (1 << FW_DOMAIN_ID_GSC));
 
 	d->mask = BIT(domain_id);
 
@@ -2085,17 +2285,26 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 	(ret ?: (ret = __fw_domain_init((uncore__), (id__), (set__), (ack__))))
 
 	if (GRAPHICS_VER(i915) >= 11) {
-		/* we'll prune the domains of missing engines later */
-		intel_engine_mask_t emask = RUNTIME_INFO(i915)->platform_engine_mask;
+		intel_engine_mask_t emask;
 		int i;
 
+		/* we'll prune the domains of missing engines later */
+		emask = uncore->gt->info.engine_mask;
+
 		uncore->fw_get_funcs = &uncore_get_fallback;
-		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
-			       FORCEWAKE_RENDER_GEN9,
-			       FORCEWAKE_ACK_RENDER_GEN9);
-		fw_domain_init(uncore, FW_DOMAIN_ID_GT,
-			       FORCEWAKE_GT_GEN9,
-			       FORCEWAKE_ACK_GT_GEN9);
+		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
+			fw_domain_init(uncore, FW_DOMAIN_ID_GT,
+				       FORCEWAKE_GT_GEN9,
+				       FORCEWAKE_ACK_GT_MTL);
+		else
+			fw_domain_init(uncore, FW_DOMAIN_ID_GT,
+				       FORCEWAKE_GT_GEN9,
+				       FORCEWAKE_ACK_GT_GEN9);
+
+		if (RCS_MASK(uncore->gt) || CCS_MASK(uncore->gt))
+			fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
+				       FORCEWAKE_RENDER_GEN9,
+				       FORCEWAKE_ACK_RENDER_GEN9);
 
 		for (i = 0; i < I915_MAX_VCS; i++) {
 			if (!__HAS_ENGINE(emask, _VCS(i)))
@@ -2113,6 +2322,10 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 				       FORCEWAKE_MEDIA_VEBOX_GEN11(i),
 				       FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(i));
 		}
+
+		if (uncore->gt->type == GT_MEDIA)
+			fw_domain_init(uncore, FW_DOMAIN_ID_GSC,
+				       FORCEWAKE_REQ_GSC, FORCEWAKE_ACK_GSC);
 	} else if (IS_GRAPHICS_VER(i915, 9, 10)) {
 		uncore->fw_get_funcs = &uncore_get_fallback;
 		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
@@ -2300,6 +2513,22 @@ static void uncore_raw_init(struct intel_uncore *uncore)
 	}
 }
 
+static int uncore_media_forcewake_init(struct intel_uncore *uncore)
+{
+	struct drm_i915_private *i915 = uncore->i915;
+
+	if (MEDIA_VER(i915) >= 13) {
+		ASSIGN_FW_DOMAINS_TABLE(uncore, __xelpmp_fw_ranges);
+		ASSIGN_SHADOW_TABLE(uncore, xelpmp_shadowed_regs);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
+	} else {
+		MISSING_CASE(MEDIA_VER(i915));
+		return -ENODEV;
+	}
+
+	return 0;
+}
+
 static int uncore_forcewake_init(struct intel_uncore *uncore)
 {
 	struct drm_i915_private *i915 = uncore->i915;
@@ -2314,7 +2543,14 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 
 	ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
 
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 60)) {
+	if (uncore->gt->type == GT_MEDIA)
+		return uncore_media_forcewake_init(uncore);
+
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
+		ASSIGN_FW_DOMAINS_TABLE(uncore, __mtl_fw_ranges);
+		ASSIGN_SHADOW_TABLE(uncore, mtl_shadowed_regs);
+		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
+	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 60)) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __pvc_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, pvc_shadowed_regs);
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 5022bac80b67..7e1b3b89f689 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -62,6 +62,7 @@ enum forcewake_domain_id {
 	FW_DOMAIN_ID_MEDIA_VEBOX1,
 	FW_DOMAIN_ID_MEDIA_VEBOX2,
 	FW_DOMAIN_ID_MEDIA_VEBOX3,
+	FW_DOMAIN_ID_GSC,
 
 	FW_DOMAIN_ID_COUNT
 };
@@ -82,6 +83,7 @@ enum forcewake_domains {
 	FORCEWAKE_MEDIA_VEBOX1	= BIT(FW_DOMAIN_ID_MEDIA_VEBOX1),
 	FORCEWAKE_MEDIA_VEBOX2	= BIT(FW_DOMAIN_ID_MEDIA_VEBOX2),
 	FORCEWAKE_MEDIA_VEBOX3	= BIT(FW_DOMAIN_ID_MEDIA_VEBOX3),
+	FORCEWAKE_GSC		= BIT(FW_DOMAIN_ID_GSC),
 
 	FORCEWAKE_ALL = BIT(FW_DOMAIN_ID_COUNT) - 1,
 };
diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index fda9bb79c049..e4281508d580 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -70,6 +70,8 @@ static int intel_shadow_table_check(void)
 		{ gen12_shadowed_regs, ARRAY_SIZE(gen12_shadowed_regs) },
 		{ dg2_shadowed_regs, ARRAY_SIZE(dg2_shadowed_regs) },
 		{ pvc_shadowed_regs, ARRAY_SIZE(pvc_shadowed_regs) },
+		{ mtl_shadowed_regs, ARRAY_SIZE(mtl_shadowed_regs) },
+		{ xelpmp_shadowed_regs, ARRAY_SIZE(xelpmp_shadowed_regs) },
 	};
 	const struct i915_range *range;
 	unsigned int i, j;
@@ -117,6 +119,8 @@ int intel_uncore_mock_selftests(void)
 		{ __gen12_fw_ranges, ARRAY_SIZE(__gen12_fw_ranges), true },
 		{ __xehp_fw_ranges, ARRAY_SIZE(__xehp_fw_ranges), true },
 		{ __pvc_fw_ranges, ARRAY_SIZE(__pvc_fw_ranges), true },
+		{ __mtl_fw_ranges, ARRAY_SIZE(__mtl_fw_ranges), true },
+		{ __xelpmp_fw_ranges, ARRAY_SIZE(__xelpmp_fw_ranges), true },
 	};
 	int err, i;
 
-- 
2.37.3

