Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2DC1C0AE2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE9A56EA4A;
	Thu, 30 Apr 2020 23:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDC576EA46
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 23:15:55 +0000 (UTC)
IronPort-SDR: nJrNyZSpaXQ3PoKnsOO4gIThvmW6HOtHO5YFi6Bev9/uK8I4bIrBOASplD7FaiZS514yMBTDY/
 6bCasDB/t3zg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 16:15:55 -0700
IronPort-SDR: fffj/hfcOV+io2ZSnpclZ5Prt4I/JUkZhtSNkWBs3j08TrboVzs8D3Xo/tMCYW1RnnQgSexz2V
 03pEFKN8isjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="293731891"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2020 16:15:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 16:15:27 -0700
Message-Id: <20200430231529.295556-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200430231529.295556-1-matthew.d.roper@intel.com>
References: <20200430231529.295556-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Steer multicast register readback
 in wa_verify
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reads of multicast registers give the value for slice/subslice 0 by
default unless we manually steer them to a specific slice/subslice.  If
slice/subslice 0 are fused off in hardware, we'll always read back a
value of 0 rather than the value we wrote into the multicast register.
Although wa_init_mcr() sets up some initial steering to a valid
slice/subslice at startup, we appear to later lose that steering setting
in some cases.  Let's handle this more explicitly and have wa_verify use
intel_read_subslice_reg() to directly steer the readback of workaround
registers in an MCR range to a valid slice/subslice.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        |  3 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 17 ++--
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 98 ++++++++++++-------
 .../gpu/drm/i915/gt/intel_workarounds_types.h |  2 +
 4 files changed, 73 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index d10e52ff059f..54d1fa233a8a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -214,6 +214,9 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine);
 int intel_engine_stop_cs(struct intel_engine_cs *engine);
 void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine);
 
+u32 intel_read_subslice_reg(struct intel_uncore *uncore,
+			    int slice, int subslice, i915_reg_t reg);
+
 void intel_engine_set_hwsp_writemask(struct intel_engine_cs *engine, u32 mask);
 
 u64 intel_engine_get_active_head(const struct intel_engine_cs *engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index c9e46c5ced43..3ee17aa9928e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -951,12 +951,11 @@ const char *i915_cache_level_str(struct drm_i915_private *i915, int type)
 	}
 }
 
-static u32
-read_subslice_reg(const struct intel_engine_cs *engine,
-		  int slice, int subslice, i915_reg_t reg)
+u32
+intel_read_subslice_reg(struct intel_uncore *uncore,
+			int slice, int subslice, i915_reg_t reg)
 {
-	struct drm_i915_private *i915 = engine->i915;
-	struct intel_uncore *uncore = engine->uncore;
+	struct drm_i915_private *i915 = uncore->i915;
 	u32 mcr_mask, mcr_ss, mcr, old_mcr, val;
 	enum forcewake_domains fw_domains;
 
@@ -1027,11 +1026,11 @@ void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 		}
 		for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
 			instdone->sampler[slice][subslice] =
-				read_subslice_reg(engine, slice, subslice,
-						  GEN7_SAMPLER_INSTDONE);
+				intel_read_subslice_reg(uncore, slice, subslice,
+							GEN7_SAMPLER_INSTDONE);
 			instdone->row[slice][subslice] =
-				read_subslice_reg(engine, slice, subslice,
-						  GEN7_ROW_INSTDONE);
+				intel_read_subslice_reg(uncore, slice, subslice,
+							GEN7_ROW_INSTDONE);
 		}
 		break;
 	case 7:
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 4a255de13394..73a3937c689b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -56,6 +56,7 @@ static void wa_init_start(struct i915_wa_list *wal, const char *name, const char
 {
 	wal->name = name;
 	wal->engine_name = engine_name;
+	wal->mcrslice = wal->mcrss = 0;
 }
 
 #define WA_LIST_CHUNK (1 << 4)
@@ -863,6 +864,8 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	}
 
 	drm_dbg(&i915->drm, "MCR slice/subslice = %x\n", mcr);
+	wal->mcrslice = slice;
+	wal->mcrss = subslice;
 
 	wa_write_masked_or(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
 }
@@ -1006,7 +1009,8 @@ wal_get_fw_for_rmw(struct intel_uncore *uncore, const struct i915_wa_list *wal)
 }
 
 static bool
-wa_verify(const struct i915_wa *wa, u32 cur, const char *name, const char *from)
+wa_verify(struct drm_i915_private *i915, const struct i915_wa *wa, u32 cur,
+	  const char *name, const char *from)
 {
 	if ((cur ^ wa->set) & wa->read) {
 		DRM_ERROR("%s workaround lost on %s! (%x=%x/%x, expected %x)\n",
@@ -1019,6 +1023,38 @@ wa_verify(const struct i915_wa *wa, u32 cur, const char *name, const char *from)
 	return true;
 }
 
+static const struct {
+	u32 start;
+	u32 end;
+} mcr_ranges_gen8[] = {
+	{ .start = 0x5500, .end = 0x55ff },
+	{ .start = 0x7000, .end = 0x7fff },
+	{ .start = 0x9400, .end = 0x97ff },
+	{ .start = 0xb000, .end = 0xb3ff },
+	{ .start = 0xe000, .end = 0xe7ff },
+	{},
+};
+
+static bool mcr_range(struct drm_i915_private *i915, u32 offset)
+{
+	int i;
+
+	if (INTEL_GEN(i915) < 8)
+		return false;
+
+	/*
+	 * Registers in these ranges are affected by the MCR selector
+	 * which only controls CPU initiated MMIO. Routing does not
+	 * work for CS access so we cannot verify them on this path.
+	 */
+	for (i = 0; mcr_ranges_gen8[i].start; i++)
+		if (offset >= mcr_ranges_gen8[i].start &&
+		    offset <= mcr_ranges_gen8[i].end)
+			return true;
+
+	return false;
+}
+
 static void
 wa_list_apply(struct intel_uncore *uncore, const struct i915_wa_list *wal)
 {
@@ -1040,10 +1076,28 @@ wa_list_apply(struct intel_uncore *uncore, const struct i915_wa_list *wal)
 			intel_uncore_rmw_fw(uncore, wa->reg, wa->clr, wa->set);
 		else
 			intel_uncore_write_fw(uncore, wa->reg, wa->set);
-		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
-			wa_verify(wa,
-				  intel_uncore_read_fw(uncore, wa->reg),
+		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)) {
+			u32 readout;
+
+			/*
+			 * Reads of multicast registers default to slice 0,
+			 * subslice 0 unless we steer them to a specific
+			 * slice/subslice instance.  If the first slice/subslice
+			 * is fused off, regular reads will come back as 0's
+			 * rather than the value we applied.
+			 */
+			if (mcr_range(uncore->i915,
+				      i915_mmio_reg_offset(wa->reg)))
+				readout = intel_read_subslice_reg(uncore,
+								  wal->mcrslice,
+								  wal->mcrss,
+								  wa->reg);
+			else
+				readout = intel_uncore_read_fw(uncore, wa->reg);
+
+			wa_verify(uncore->i915, wa, readout,
 				  wal->name, "application");
+		}
 	}
 
 	intel_uncore_forcewake_put__locked(uncore, fw);
@@ -1064,7 +1118,7 @@ static bool wa_list_verify(struct intel_uncore *uncore,
 	bool ok = true;
 
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
-		ok &= wa_verify(wa,
+		ok &= wa_verify(uncore->i915, wa,
 				intel_uncore_read(uncore, wa->reg),
 				wal->name, from);
 
@@ -1665,38 +1719,6 @@ create_scratch(struct i915_address_space *vm, int count)
 	return ERR_PTR(err);
 }
 
-static const struct {
-	u32 start;
-	u32 end;
-} mcr_ranges_gen8[] = {
-	{ .start = 0x5500, .end = 0x55ff },
-	{ .start = 0x7000, .end = 0x7fff },
-	{ .start = 0x9400, .end = 0x97ff },
-	{ .start = 0xb000, .end = 0xb3ff },
-	{ .start = 0xe000, .end = 0xe7ff },
-	{},
-};
-
-static bool mcr_range(struct drm_i915_private *i915, u32 offset)
-{
-	int i;
-
-	if (INTEL_GEN(i915) < 8)
-		return false;
-
-	/*
-	 * Registers in these ranges are affected by the MCR selector
-	 * which only controls CPU initiated MMIO. Routing does not
-	 * work for CS access so we cannot verify them on this path.
-	 */
-	for (i = 0; mcr_ranges_gen8[i].start; i++)
-		if (offset >= mcr_ranges_gen8[i].start &&
-		    offset <= mcr_ranges_gen8[i].end)
-			return true;
-
-	return false;
-}
-
 static int
 wa_list_srm(struct i915_request *rq,
 	    const struct i915_wa_list *wal,
@@ -1794,7 +1816,7 @@ static int engine_wa_list_verify(struct intel_context *ce,
 		if (mcr_range(rq->i915, i915_mmio_reg_offset(wa->reg)))
 			continue;
 
-		if (!wa_verify(wa, results[i], wal->name, from))
+		if (!wa_verify(rq->i915, wa, results[i], wal->name, from))
 			err = -ENXIO;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds_types.h b/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
index d166a7145720..a881ea470aa4 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds_types.h
@@ -24,6 +24,8 @@ struct i915_wa_list {
 	struct i915_wa	*list;
 	unsigned int	count;
 	unsigned int	wa_count;
+	u32		mcrslice;
+	u32		mcrss;
 };
 
 #endif /* __INTEL_WORKAROUNDS_TYPES_H__ */
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
