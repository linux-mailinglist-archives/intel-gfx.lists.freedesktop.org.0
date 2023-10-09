Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5997BE9BA
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 20:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A839310E0A4;
	Mon,  9 Oct 2023 18:38:26 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E47F910E2BF;
 Mon,  9 Oct 2023 18:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696876703; x=1728412703;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=px/k9N5Lr8dB0KmzKayF2Nv6TV5lfEE47ldWW/guC1E=;
 b=Nvd4Ya80duDNL/tjlExu8QuSxeUCCJDQPiIMnJ8QW/GEbMSXUWC6dI0b
 xHp71jiSEB7YG/txzzFFxmNSm6gioCCUXVyc0R1LvGUyEzsMFpSV0Vgkr
 gDtGFYhJqBnfjUA35MCaj53uWP9d7a04Rbr9uqxQeFT5WJi0oSYiTCDZy
 F6sw0pZlppB0MvgSQrajBzjOh1BsDbjWGcKryXXwF7+rRIwc1woGHnaEG
 TJOjU2jz1Zw6+/QF3PewsDPl59+vQbQgr5AOxMn6lsRyCa2IEmpRlMKBS
 8pe4rPR90nE4ey0g9y43CLqAwIuM5v0MegjJtP61vsClYko1bdQjyYSi7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="384079351"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="384079351"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 11:38:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="756804150"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="756804150"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by fmsmga007.fm.intel.com with ESMTP; 09 Oct 2023 11:38:22 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Mon,  9 Oct 2023 11:38:01 -0700
Message-ID: <20231009183802.673882-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231009183802.673882-1-John.C.Harrison@Intel.com>
References: <20231009183802.673882-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: More use of GT specific print
 helpers
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

A bunch of print messages got missed in the update to using sub-system
specific helpers. So update those.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 29 +++++++++------------
 drivers/gpu/drm/i915/gt/intel_gsc.c         | 11 ++++----
 drivers/gpu/drm/i915/gt/intel_gt_print.h    |  3 +++
 drivers/gpu/drm/i915/gt/intel_reset.c       | 26 ++++++++----------
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 13 ++++-----
 5 files changed, 39 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index b1a1d07e2e217..179d9546865b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -316,10 +316,9 @@ u32 intel_engine_context_size(struct intel_gt *gt, u8 class)
 			 * out in the wash.
 			 */
 			cxt_size = intel_uncore_read(uncore, CXT_SIZE) + 1;
-			drm_dbg(&gt->i915->drm,
-				"graphics_ver = %d CXT_SIZE = %d bytes [0x%08x]\n",
-				GRAPHICS_VER(gt->i915), cxt_size * 64,
-				cxt_size - 1);
+			gt_dbg(gt, "graphics_ver = %d CXT_SIZE = %d bytes [0x%08x]\n",
+			       GRAPHICS_VER(gt->i915), cxt_size * 64,
+			       cxt_size - 1);
 			return round_up(cxt_size * 64, PAGE_SIZE);
 		case 3:
 		case 2:
@@ -788,7 +787,7 @@ static void engine_mask_apply_media_fuses(struct intel_gt *gt)
 
 		if (!(BIT(i) & vdbox_mask)) {
 			gt->info.engine_mask &= ~BIT(_VCS(i));
-			drm_dbg(&i915->drm, "vcs%u fused off\n", i);
+			gt_dbg(gt, "vcs%u fused off\n", i);
 			continue;
 		}
 
@@ -796,8 +795,7 @@ static void engine_mask_apply_media_fuses(struct intel_gt *gt)
 			gt->info.vdbox_sfc_access |= BIT(i);
 		logical_vdbox++;
 	}
-	drm_dbg(&i915->drm, "vdbox enable: %04x, instances: %04lx\n",
-		vdbox_mask, VDBOX_MASK(gt));
+	gt_dbg(gt, "vdbox enable: %04x, instances: %04lx\n", vdbox_mask, VDBOX_MASK(gt));
 	GEM_BUG_ON(vdbox_mask != VDBOX_MASK(gt));
 
 	for (i = 0; i < I915_MAX_VECS; i++) {
@@ -808,11 +806,10 @@ static void engine_mask_apply_media_fuses(struct intel_gt *gt)
 
 		if (!(BIT(i) & vebox_mask)) {
 			gt->info.engine_mask &= ~BIT(_VECS(i));
-			drm_dbg(&i915->drm, "vecs%u fused off\n", i);
+			gt_dbg(gt, "vecs%u fused off\n", i);
 		}
 	}
-	drm_dbg(&i915->drm, "vebox enable: %04x, instances: %04lx\n",
-		vebox_mask, VEBOX_MASK(gt));
+	gt_dbg(gt, "vebox enable: %04x, instances: %04lx\n", vebox_mask, VEBOX_MASK(gt));
 	GEM_BUG_ON(vebox_mask != VEBOX_MASK(gt));
 }
 
@@ -838,7 +835,7 @@ static void engine_mask_apply_compute_fuses(struct intel_gt *gt)
 	 */
 	for_each_clear_bit(i, &ccs_mask, I915_MAX_CCS) {
 		info->engine_mask &= ~BIT(_CCS(i));
-		drm_dbg(&i915->drm, "ccs%u fused off\n", i);
+		gt_dbg(gt, "ccs%u fused off\n", i);
 	}
 }
 
@@ -866,8 +863,8 @@ static void engine_mask_apply_copy_fuses(struct intel_gt *gt)
 						   _BCS(instance));
 
 		if (mask & info->engine_mask) {
-			drm_dbg(&i915->drm, "bcs%u fused off\n", instance);
-			drm_dbg(&i915->drm, "bcs%u fused off\n", instance + 1);
+			gt_dbg(gt, "bcs%u fused off\n", instance);
+			gt_dbg(gt, "bcs%u fused off\n", instance + 1);
 
 			info->engine_mask &= ~mask;
 		}
@@ -907,8 +904,7 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 	 *    submission, which will wake up the GSC power well.
 	 */
 	if (__HAS_ENGINE(info->engine_mask, GSC0) && !intel_uc_wants_gsc_uc(&gt->uc)) {
-		drm_notice(&gt->i915->drm,
-			   "No GSC FW selected, disabling GSC CS and media C6\n");
+		gt_notice(gt, "No GSC FW selected, disabling GSC CS and media C6\n");
 		info->engine_mask &= ~BIT(GSC0);
 	}
 
@@ -1097,8 +1093,7 @@ static int init_status_page(struct intel_engine_cs *engine)
 	 */
 	obj = i915_gem_object_create_internal(engine->i915, PAGE_SIZE);
 	if (IS_ERR(obj)) {
-		drm_err(&engine->i915->drm,
-			"Failed to allocate status page\n");
+		gt_err(engine->gt, "Failed to allocate status page\n");
 		return PTR_ERR(obj);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index bcc3605158dbd..6d440de8ba017 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -11,6 +11,7 @@
 #include "gem/i915_gem_region.h"
 #include "gt/intel_gsc.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_print.h"
 
 #define GSC_BAR_LENGTH  0x00000FFC
 
@@ -49,13 +50,13 @@ gsc_ext_om_alloc(struct intel_gsc *gsc, struct intel_gsc_intf *intf, size_t size
 					  I915_BO_ALLOC_CONTIGUOUS |
 					  I915_BO_ALLOC_CPU_CLEAR);
 	if (IS_ERR(obj)) {
-		drm_err(&gt->i915->drm, "Failed to allocate gsc memory\n");
+		gt_err(gt, "Failed to allocate gsc memory\n");
 		return PTR_ERR(obj);
 	}
 
 	err = i915_gem_object_pin_pages_unlocked(obj);
 	if (err) {
-		drm_err(&gt->i915->drm, "Failed to pin pages for gsc memory\n");
+		gt_err(gt, "Failed to pin pages for gsc memory\n");
 		goto out_put;
 	}
 
@@ -286,12 +287,12 @@ static void gsc_irq_handler(struct intel_gt *gt, unsigned int intf_id)
 	int ret;
 
 	if (intf_id >= INTEL_GSC_NUM_INTERFACES) {
-		drm_warn_once(&gt->i915->drm, "GSC irq: intf_id %d is out of range", intf_id);
+		gt_warn_once(gt, "GSC irq: intf_id %d is out of range", intf_id);
 		return;
 	}
 
 	if (!HAS_HECI_GSC(gt->i915)) {
-		drm_warn_once(&gt->i915->drm, "GSC irq: not supported");
+		gt_warn_once(gt, "GSC irq: not supported");
 		return;
 	}
 
@@ -300,7 +301,7 @@ static void gsc_irq_handler(struct intel_gt *gt, unsigned int intf_id)
 
 	ret = generic_handle_irq(gt->gsc.intf[intf_id].irq);
 	if (ret)
-		drm_err_ratelimited(&gt->i915->drm, "error handling GSC irq: %d\n", ret);
+		gt_err_ratelimited(gt, "error handling GSC irq: %d\n", ret);
 }
 
 void intel_gsc_irq_handler(struct intel_gt *gt, u32 iir)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_print.h b/drivers/gpu/drm/i915/gt/intel_gt_print.h
index 55a336a9ff061..7fdc78c79273e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_print.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_print.h
@@ -16,6 +16,9 @@
 #define gt_warn(_gt, _fmt, ...) \
 	drm_warn(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
 
+#define gt_warn_once(_gt, _fmt, ...) \
+	drm_warn_once(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
+
 #define gt_notice(_gt, _fmt, ...) \
 	drm_notice(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index a21e939fdbf6c..d5ed904f355d5 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -26,6 +26,7 @@
 #include "intel_engine_regs.h"
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
+#include "intel_gt_print.h"
 #include "intel_gt_requests.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
@@ -592,10 +593,10 @@ static int gen8_engine_reset_prepare(struct intel_engine_cs *engine)
 	ret = __intel_wait_for_register_fw(uncore, reg, mask, ack,
 					   700, 0, NULL);
 	if (ret)
-		drm_err(&engine->i915->drm,
-			"%s reset request timed out: {request: %08x, RESET_CTL: %08x}\n",
-			engine->name, request,
-			intel_uncore_read_fw(uncore, reg));
+		gt_err(engine->gt,
+		       "%s reset request timed out: {request: %08x, RESET_CTL: %08x}\n",
+		       engine->name, request,
+		       intel_uncore_read_fw(uncore, reg));
 
 	return ret;
 }
@@ -1199,17 +1200,16 @@ void intel_gt_reset(struct intel_gt *gt,
 		goto unlock;
 
 	if (reason)
-		drm_notice(&gt->i915->drm,
-			   "Resetting chip for %s\n", reason);
+		gt_notice(gt, "Resetting chip for %s\n", reason);
 	atomic_inc(&gt->i915->gpu_error.reset_count);
 
 	awake = reset_prepare(gt);
 
 	if (!intel_has_gpu_reset(gt)) {
 		if (gt->i915->params.reset)
-			drm_err(&gt->i915->drm, "GPU reset not supported\n");
+			gt_err(gt, "GPU reset not supported\n");
 		else
-			drm_dbg(&gt->i915->drm, "GPU reset disabled\n");
+			gt_dbg(gt, "GPU reset disabled\n");
 		goto error;
 	}
 
@@ -1217,7 +1217,7 @@ void intel_gt_reset(struct intel_gt *gt,
 		intel_runtime_pm_disable_interrupts(gt->i915);
 
 	if (do_reset(gt, stalled_mask)) {
-		drm_err(&gt->i915->drm, "Failed to reset chip\n");
+		gt_err(gt, "Failed to reset chip\n");
 		goto taint;
 	}
 
@@ -1236,9 +1236,7 @@ void intel_gt_reset(struct intel_gt *gt,
 	 */
 	ret = intel_gt_init_hw(gt);
 	if (ret) {
-		drm_err(&gt->i915->drm,
-			"Failed to initialise HW following reset (%d)\n",
-			ret);
+		gt_err(gt, "Failed to initialise HW following reset (%d)\n", ret);
 		goto taint;
 	}
 
@@ -1605,9 +1603,7 @@ static void intel_wedge_me(struct work_struct *work)
 {
 	struct intel_wedge_me *w = container_of(work, typeof(*w), work.work);
 
-	drm_err(&w->gt->i915->drm,
-		"%s timed out, cancelling all in-flight rendering.\n",
-		w->name);
+	gt_err(w->gt, "%s timed out, cancelling all in-flight rendering.\n", w->name);
 	intel_gt_set_wedged(w->gt);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b86a10b1f534f..192ac0e59afa1 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -11,6 +11,7 @@
 #include "intel_gpu_commands.h"
 #include "intel_gt.h"
 #include "intel_gt_mcr.h"
+#include "intel_gt_print.h"
 #include "intel_gt_regs.h"
 #include "intel_ring.h"
 #include "intel_workarounds.h"
@@ -119,8 +120,8 @@ static void wa_init_finish(struct i915_wa_list *wal)
 	if (!wal->count)
 		return;
 
-	drm_dbg(&wal->gt->i915->drm, "Initialized %u %s workarounds on %s\n",
-		wal->wa_count, wal->name, wal->engine_name);
+	gt_dbg(wal->gt, "Initialized %u %s workarounds on %s\n",
+	       wal->wa_count, wal->name, wal->engine_name);
 }
 
 static enum forcewake_domains
@@ -1780,10 +1781,10 @@ wa_verify(struct intel_gt *gt, const struct i915_wa *wa, u32 cur,
 	  const char *name, const char *from)
 {
 	if ((cur ^ wa->set) & wa->read) {
-		drm_err(&gt->i915->drm,
-			"%s workaround lost on %s! (reg[%x]=0x%x, relevant bits were 0x%x vs expected 0x%x)\n",
-			name, from, i915_mmio_reg_offset(wa->reg),
-			cur, cur & wa->read, wa->set & wa->read);
+		gt_err(gt,
+		       "%s workaround lost on %s! (reg[%x]=0x%x, relevant bits were 0x%x vs expected 0x%x)\n",
+		       name, from, i915_mmio_reg_offset(wa->reg),
+		       cur, cur & wa->read, wa->set & wa->read);
 
 		return false;
 	}
-- 
2.41.0

