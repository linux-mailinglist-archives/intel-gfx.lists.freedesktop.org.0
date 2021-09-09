Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71212404267
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 02:52:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 361656E3F0;
	Thu,  9 Sep 2021 00:51:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70AD36E3EF;
 Thu,  9 Sep 2021 00:51:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="200171451"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="200171451"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 17:50:27 -0700
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="539077194"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 17:50:27 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Andi Shyti <andi.shyti@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Wed,  8 Sep 2021 17:49:41 -0700
Message-Id: <20210909004941.379035-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210909004941.379035-1-lucas.demarchi@intel.com>
References: <20210909004941.379035-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: deduplicate frequency dump on
 debugfs
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

Although commit 9dd4b065446a ("drm/i915/gt: Move pm debug files into a
gt aware debugfs") says it was moving debug files to gt/, the
i915_frequency_info file was left behind and its implementation copied
into drivers/gpu/drm/i915/gt/debugfs_gt_pm.c. Over time we had several
patches having to change both places to keep them in sync (and some
patches failing to do so). The initial idea was to remove
i915_frequency_info, but there are user space tools using it. From a
quick code search there are other scripts and test tools besides igt, so
it's not simply updating igt to get rid of the older file.

Here we export a function using drm_printer as parameter and make
both show() implementations to call this same function. Aside from a few
variable name differences, for i915_frequency_info this brings a few
lines that were not previously printed: RP UP EI, RP UP THRESHOLD, RP
DOWN THRESHOLD and RP DOWN EI.  These came in as part of
commit 9c878557b1eb ("drm/i915/gt: Use the RPM config register to
determine clk frequencies"), which didn't change both places.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 127 +++++-----
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h |   2 +
 drivers/gpu/drm/i915/i915_debugfs.c           | 231 +-----------------
 3 files changed, 76 insertions(+), 284 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index baca153c05dd..31d334d3b3b5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -240,9 +240,8 @@ static int drpc_show(struct seq_file *m, void *unused)
 }
 DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(drpc);
 
-static int frequency_show(struct seq_file *m, void *unused)
+void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 {
-	struct intel_gt *gt = m->private;
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_uncore *uncore = gt->uncore;
 	struct intel_rps *rps = &gt->rps;
@@ -254,21 +253,21 @@ static int frequency_show(struct seq_file *m, void *unused)
 		u16 rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);
 		u16 rgvstat = intel_uncore_read16(uncore, MEMSTAT_ILK);
 
-		seq_printf(m, "Requested P-state: %d\n", (rgvswctl >> 8) & 0xf);
-		seq_printf(m, "Requested VID: %d\n", rgvswctl & 0x3f);
-		seq_printf(m, "Current VID: %d\n", (rgvstat & MEMSTAT_VID_MASK) >>
+		drm_printf(p, "Requested P-state: %d\n", (rgvswctl >> 8) & 0xf);
+		drm_printf(p, "Requested VID: %d\n", rgvswctl & 0x3f);
+		drm_printf(p, "Current VID: %d\n", (rgvstat & MEMSTAT_VID_MASK) >>
 			   MEMSTAT_VID_SHIFT);
-		seq_printf(m, "Current P-state: %d\n",
+		drm_printf(p, "Current P-state: %d\n",
 			   (rgvstat & MEMSTAT_PSTATE_MASK) >> MEMSTAT_PSTATE_SHIFT);
 	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
 		u32 rpmodectl, freq_sts;
 
 		rpmodectl = intel_uncore_read(uncore, GEN6_RP_CONTROL);
-		seq_printf(m, "Video Turbo Mode: %s\n",
+		drm_printf(p, "Video Turbo Mode: %s\n",
 			   yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
-		seq_printf(m, "HW control enabled: %s\n",
+		drm_printf(p, "HW control enabled: %s\n",
 			   yesno(rpmodectl & GEN6_RP_ENABLE));
-		seq_printf(m, "SW control enabled: %s\n",
+		drm_printf(p, "SW control enabled: %s\n",
 			   yesno((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) ==
 				 GEN6_RP_MEDIA_SW_MODE));
 
@@ -276,25 +275,25 @@ static int frequency_show(struct seq_file *m, void *unused)
 		freq_sts = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
 		vlv_punit_put(i915);
 
-		seq_printf(m, "PUNIT_REG_GPU_FREQ_STS: 0x%08x\n", freq_sts);
-		seq_printf(m, "DDR freq: %d MHz\n", i915->mem_freq);
+		drm_printf(p, "PUNIT_REG_GPU_FREQ_STS: 0x%08x\n", freq_sts);
+		drm_printf(p, "DDR freq: %d MHz\n", i915->mem_freq);
 
-		seq_printf(m, "actual GPU freq: %d MHz\n",
+		drm_printf(p, "actual GPU freq: %d MHz\n",
 			   intel_gpu_freq(rps, (freq_sts >> 8) & 0xff));
 
-		seq_printf(m, "current GPU freq: %d MHz\n",
+		drm_printf(p, "current GPU freq: %d MHz\n",
 			   intel_gpu_freq(rps, rps->cur_freq));
 
-		seq_printf(m, "max GPU freq: %d MHz\n",
+		drm_printf(p, "max GPU freq: %d MHz\n",
 			   intel_gpu_freq(rps, rps->max_freq));
 
-		seq_printf(m, "min GPU freq: %d MHz\n",
+		drm_printf(p, "min GPU freq: %d MHz\n",
 			   intel_gpu_freq(rps, rps->min_freq));
 
-		seq_printf(m, "idle GPU freq: %d MHz\n",
+		drm_printf(p, "idle GPU freq: %d MHz\n",
 			   intel_gpu_freq(rps, rps->idle_freq));
 
-		seq_printf(m, "efficient (RPe) frequency: %d MHz\n",
+		drm_printf(p, "efficient (RPe) frequency: %d MHz\n",
 			   intel_gpu_freq(rps, rps->efficient_freq));
 	} else if (GRAPHICS_VER(i915) >= 6) {
 		u32 rp_state_limits;
@@ -374,109 +373,117 @@ static int frequency_show(struct seq_file *m, void *unused)
 		}
 		pm_mask = intel_uncore_read(uncore, GEN6_PMINTRMSK);
 
-		seq_printf(m, "Video Turbo Mode: %s\n",
+		drm_printf(p, "Video Turbo Mode: %s\n",
 			   yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
-		seq_printf(m, "HW control enabled: %s\n",
+		drm_printf(p, "HW control enabled: %s\n",
 			   yesno(rpmodectl & GEN6_RP_ENABLE));
-		seq_printf(m, "SW control enabled: %s\n",
+		drm_printf(p, "SW control enabled: %s\n",
 			   yesno((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) ==
 				 GEN6_RP_MEDIA_SW_MODE));
 
-		seq_printf(m, "PM IER=0x%08x IMR=0x%08x, MASK=0x%08x\n",
+		drm_printf(p, "PM IER=0x%08x IMR=0x%08x, MASK=0x%08x\n",
 			   pm_ier, pm_imr, pm_mask);
 		if (GRAPHICS_VER(i915) <= 10)
-			seq_printf(m, "PM ISR=0x%08x IIR=0x%08x\n",
+			drm_printf(p, "PM ISR=0x%08x IIR=0x%08x\n",
 				   pm_isr, pm_iir);
-		seq_printf(m, "pm_intrmsk_mbz: 0x%08x\n",
+		drm_printf(p, "pm_intrmsk_mbz: 0x%08x\n",
 			   rps->pm_intrmsk_mbz);
-		seq_printf(m, "GT_PERF_STATUS: 0x%08x\n", gt_perf_status);
-		seq_printf(m, "Render p-state ratio: %d\n",
+		drm_printf(p, "GT_PERF_STATUS: 0x%08x\n", gt_perf_status);
+		drm_printf(p, "Render p-state ratio: %d\n",
 			   (gt_perf_status & (GRAPHICS_VER(i915) >= 9 ? 0x1ff00 : 0xff00)) >> 8);
-		seq_printf(m, "Render p-state VID: %d\n",
+		drm_printf(p, "Render p-state VID: %d\n",
 			   gt_perf_status & 0xff);
-		seq_printf(m, "Render p-state limit: %d\n",
+		drm_printf(p, "Render p-state limit: %d\n",
 			   rp_state_limits & 0xff);
-		seq_printf(m, "RPSTAT1: 0x%08x\n", rpstat);
-		seq_printf(m, "RPMODECTL: 0x%08x\n", rpmodectl);
-		seq_printf(m, "RPINCLIMIT: 0x%08x\n", rpinclimit);
-		seq_printf(m, "RPDECLIMIT: 0x%08x\n", rpdeclimit);
-		seq_printf(m, "RPNSWREQ: %dMHz\n", reqf);
-		seq_printf(m, "CAGF: %dMHz\n", cagf);
-		seq_printf(m, "RP CUR UP EI: %d (%lldns)\n",
+		drm_printf(p, "RPSTAT1: 0x%08x\n", rpstat);
+		drm_printf(p, "RPMODECTL: 0x%08x\n", rpmodectl);
+		drm_printf(p, "RPINCLIMIT: 0x%08x\n", rpinclimit);
+		drm_printf(p, "RPDECLIMIT: 0x%08x\n", rpdeclimit);
+		drm_printf(p, "RPNSWREQ: %dMHz\n", reqf);
+		drm_printf(p, "CAGF: %dMHz\n", cagf);
+		drm_printf(p, "RP CUR UP EI: %d (%lldns)\n",
 			   rpcurupei,
 			   intel_gt_pm_interval_to_ns(gt, rpcurupei));
-		seq_printf(m, "RP CUR UP: %d (%lldns)\n",
+		drm_printf(p, "RP CUR UP: %d (%lldns)\n",
 			   rpcurup, intel_gt_pm_interval_to_ns(gt, rpcurup));
-		seq_printf(m, "RP PREV UP: %d (%lldns)\n",
+		drm_printf(p, "RP PREV UP: %d (%lldns)\n",
 			   rpprevup, intel_gt_pm_interval_to_ns(gt, rpprevup));
-		seq_printf(m, "Up threshold: %d%%\n",
+		drm_printf(p, "Up threshold: %d%%\n",
 			   rps->power.up_threshold);
-		seq_printf(m, "RP UP EI: %d (%lldns)\n",
+		drm_printf(p, "RP UP EI: %d (%lldns)\n",
 			   rpupei, intel_gt_pm_interval_to_ns(gt, rpupei));
-		seq_printf(m, "RP UP THRESHOLD: %d (%lldns)\n",
+		drm_printf(p, "RP UP THRESHOLD: %d (%lldns)\n",
 			   rpupt, intel_gt_pm_interval_to_ns(gt, rpupt));
 
-		seq_printf(m, "RP CUR DOWN EI: %d (%lldns)\n",
+		drm_printf(p, "RP CUR DOWN EI: %d (%lldns)\n",
 			   rpcurdownei,
 			   intel_gt_pm_interval_to_ns(gt, rpcurdownei));
-		seq_printf(m, "RP CUR DOWN: %d (%lldns)\n",
+		drm_printf(p, "RP CUR DOWN: %d (%lldns)\n",
 			   rpcurdown,
 			   intel_gt_pm_interval_to_ns(gt, rpcurdown));
-		seq_printf(m, "RP PREV DOWN: %d (%lldns)\n",
+		drm_printf(p, "RP PREV DOWN: %d (%lldns)\n",
 			   rpprevdown,
 			   intel_gt_pm_interval_to_ns(gt, rpprevdown));
-		seq_printf(m, "Down threshold: %d%%\n",
+		drm_printf(p, "Down threshold: %d%%\n",
 			   rps->power.down_threshold);
-		seq_printf(m, "RP DOWN EI: %d (%lldns)\n",
+		drm_printf(p, "RP DOWN EI: %d (%lldns)\n",
 			   rpdownei, intel_gt_pm_interval_to_ns(gt, rpdownei));
-		seq_printf(m, "RP DOWN THRESHOLD: %d (%lldns)\n",
+		drm_printf(p, "RP DOWN THRESHOLD: %d (%lldns)\n",
 			   rpdownt, intel_gt_pm_interval_to_ns(gt, rpdownt));
 
 		max_freq = (IS_GEN9_LP(i915) ? rp_state_cap >> 0 :
 			    rp_state_cap >> 16) & 0xff;
 		max_freq *= (IS_GEN9_BC(i915) ||
 			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
-		seq_printf(m, "Lowest (RPN) frequency: %dMHz\n",
+		drm_printf(p, "Lowest (RPN) frequency: %dMHz\n",
 			   intel_gpu_freq(rps, max_freq));
 
 		max_freq = (rp_state_cap & 0xff00) >> 8;
 		max_freq *= (IS_GEN9_BC(i915) ||
 			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
-		seq_printf(m, "Nominal (RP1) frequency: %dMHz\n",
+		drm_printf(p, "Nominal (RP1) frequency: %dMHz\n",
 			   intel_gpu_freq(rps, max_freq));
 
 		max_freq = (IS_GEN9_LP(i915) ? rp_state_cap >> 16 :
 			    rp_state_cap >> 0) & 0xff;
 		max_freq *= (IS_GEN9_BC(i915) ||
 			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
-		seq_printf(m, "Max non-overclocked (RP0) frequency: %dMHz\n",
+		drm_printf(p, "Max non-overclocked (RP0) frequency: %dMHz\n",
 			   intel_gpu_freq(rps, max_freq));
-		seq_printf(m, "Max overclocked frequency: %dMHz\n",
+		drm_printf(p, "Max overclocked frequency: %dMHz\n",
 			   intel_gpu_freq(rps, rps->max_freq));
 
-		seq_printf(m, "Current freq: %d MHz\n",
+		drm_printf(p, "Current freq: %d MHz\n",
 			   intel_gpu_freq(rps, rps->cur_freq));
-		seq_printf(m, "Actual freq: %d MHz\n", cagf);
-		seq_printf(m, "Idle freq: %d MHz\n",
+		drm_printf(p, "Actual freq: %d MHz\n", cagf);
+		drm_printf(p, "Idle freq: %d MHz\n",
 			   intel_gpu_freq(rps, rps->idle_freq));
-		seq_printf(m, "Min freq: %d MHz\n",
+		drm_printf(p, "Min freq: %d MHz\n",
 			   intel_gpu_freq(rps, rps->min_freq));
-		seq_printf(m, "Boost freq: %d MHz\n",
+		drm_printf(p, "Boost freq: %d MHz\n",
 			   intel_gpu_freq(rps, rps->boost_freq));
-		seq_printf(m, "Max freq: %d MHz\n",
+		drm_printf(p, "Max freq: %d MHz\n",
 			   intel_gpu_freq(rps, rps->max_freq));
-		seq_printf(m,
+		drm_printf(p,
 			   "efficient (RPe) frequency: %d MHz\n",
 			   intel_gpu_freq(rps, rps->efficient_freq));
 	} else {
-		seq_puts(m, "no P-state info available\n");
+		drm_puts(p, "no P-state info available\n");
 	}
 
-	seq_printf(m, "Current CD clock frequency: %d kHz\n", i915->cdclk.hw.cdclk);
-	seq_printf(m, "Max CD clock frequency: %d kHz\n", i915->max_cdclk_freq);
-	seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
+	drm_printf(p, "Current CD clock frequency: %d kHz\n", i915->cdclk.hw.cdclk);
+	drm_printf(p, "Max CD clock frequency: %d kHz\n", i915->max_cdclk_freq);
+	drm_printf(p, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
 
 	intel_runtime_pm_put(uncore->rpm, wakeref);
+}
+
+static int frequency_show(struct seq_file *m, void *unused)
+{
+	struct intel_gt *gt = m->private;
+	struct drm_printer p = drm_seq_file_printer(m);
+
+	intel_gt_pm_frequency_dump(gt, &p);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h
index f44894579604..98065e2da93b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.h
@@ -8,7 +8,9 @@
 
 struct intel_gt;
 struct dentry;
+struct drm_printer;
 
 void intel_gt_pm_register_debugfs(struct intel_gt *gt, struct dentry *root);
+void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *m);
 
 #endif /* INTEL_GT_PM_DEBUGFS_H */
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 04351a851586..9f2cfcf7aa6a 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -32,13 +32,14 @@
 #include <drm/drm_debugfs.h>
 
 #include "gem/i915_gem_context.h"
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_buffer_pool.h"
 #include "gt/intel_gt_clock_utils.h"
-#include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
+#include "gt/intel_gt_pm_debugfs.h"
 #include "gt/intel_gt_requests.h"
-#include "gt/intel_reset.h"
 #include "gt/intel_rc6.h"
+#include "gt/intel_reset.h"
 #include "gt/intel_rps.h"
 #include "gt/intel_sseu_debugfs.h"
 
@@ -354,230 +355,12 @@ static const struct file_operations i915_error_state_fops = {
 
 static int i915_frequency_info(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	struct intel_rps *rps = &dev_priv->gt.rps;
-	intel_wakeref_t wakeref;
-
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
-
-	if (GRAPHICS_VER(dev_priv) == 5) {
-		u16 rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);
-		u16 rgvstat = intel_uncore_read16(uncore, MEMSTAT_ILK);
-
-		seq_printf(m, "Requested P-state: %d\n", (rgvswctl >> 8) & 0xf);
-		seq_printf(m, "Requested VID: %d\n", rgvswctl & 0x3f);
-		seq_printf(m, "Current VID: %d\n", (rgvstat & MEMSTAT_VID_MASK) >>
-			   MEMSTAT_VID_SHIFT);
-		seq_printf(m, "Current P-state: %d\n",
-			   (rgvstat & MEMSTAT_PSTATE_MASK) >> MEMSTAT_PSTATE_SHIFT);
-	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		u32 rpmodectl, freq_sts;
-
-		rpmodectl = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CONTROL);
-		seq_printf(m, "Video Turbo Mode: %s\n",
-			   yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
-		seq_printf(m, "HW control enabled: %s\n",
-			   yesno(rpmodectl & GEN6_RP_ENABLE));
-		seq_printf(m, "SW control enabled: %s\n",
-			   yesno((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) ==
-				  GEN6_RP_MEDIA_SW_MODE));
-
-		vlv_punit_get(dev_priv);
-		freq_sts = vlv_punit_read(dev_priv, PUNIT_REG_GPU_FREQ_STS);
-		vlv_punit_put(dev_priv);
-
-		seq_printf(m, "PUNIT_REG_GPU_FREQ_STS: 0x%08x\n", freq_sts);
-		seq_printf(m, "DDR freq: %d MHz\n", dev_priv->mem_freq);
-
-		seq_printf(m, "actual GPU freq: %d MHz\n",
-			   intel_gpu_freq(rps, (freq_sts >> 8) & 0xff));
-
-		seq_printf(m, "current GPU freq: %d MHz\n",
-			   intel_gpu_freq(rps, rps->cur_freq));
-
-		seq_printf(m, "max GPU freq: %d MHz\n",
-			   intel_gpu_freq(rps, rps->max_freq));
-
-		seq_printf(m, "min GPU freq: %d MHz\n",
-			   intel_gpu_freq(rps, rps->min_freq));
-
-		seq_printf(m, "idle GPU freq: %d MHz\n",
-			   intel_gpu_freq(rps, rps->idle_freq));
-
-		seq_printf(m,
-			   "efficient (RPe) frequency: %d MHz\n",
-			   intel_gpu_freq(rps, rps->efficient_freq));
-	} else if (GRAPHICS_VER(dev_priv) >= 6) {
-		u32 rp_state_limits;
-		u32 gt_perf_status;
-		u32 rp_state_cap;
-		u32 rpmodectl, rpinclimit, rpdeclimit;
-		u32 rpstat, cagf, reqf;
-		u32 rpupei, rpcurup, rpprevup;
-		u32 rpdownei, rpcurdown, rpprevdown;
-		u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
-		int max_freq;
-
-		rp_state_limits = intel_uncore_read(&dev_priv->uncore, GEN6_RP_STATE_LIMITS);
-		rp_state_cap = intel_rps_read_state_cap(rps);
-		if (IS_GEN9_LP(dev_priv))
-			gt_perf_status = intel_uncore_read(&dev_priv->uncore, BXT_GT_PERF_STATUS);
-		else
-			gt_perf_status = intel_uncore_read(&dev_priv->uncore, GEN6_GT_PERF_STATUS);
-
-		/* RPSTAT1 is in the GT power well */
-		intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
-
-		reqf = intel_uncore_read(&dev_priv->uncore, GEN6_RPNSWREQ);
-		if (GRAPHICS_VER(dev_priv) >= 9)
-			reqf >>= 23;
-		else {
-			reqf &= ~GEN6_TURBO_DISABLE;
-			if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-				reqf >>= 24;
-			else
-				reqf >>= 25;
-		}
-		reqf = intel_gpu_freq(rps, reqf);
-
-		rpmodectl = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CONTROL);
-		rpinclimit = intel_uncore_read(&dev_priv->uncore, GEN6_RP_UP_THRESHOLD);
-		rpdeclimit = intel_uncore_read(&dev_priv->uncore, GEN6_RP_DOWN_THRESHOLD);
-
-		rpstat = intel_uncore_read(&dev_priv->uncore, GEN6_RPSTAT1);
-		rpupei = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;
-		rpcurup = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_UP) & GEN6_CURBSYTAVG_MASK;
-		rpprevup = intel_uncore_read(&dev_priv->uncore, GEN6_RP_PREV_UP) & GEN6_CURBSYTAVG_MASK;
-		rpdownei = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_DOWN_EI) & GEN6_CURIAVG_MASK;
-		rpcurdown = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_DOWN) & GEN6_CURBSYTAVG_MASK;
-		rpprevdown = intel_uncore_read(&dev_priv->uncore, GEN6_RP_PREV_DOWN) & GEN6_CURBSYTAVG_MASK;
-		cagf = intel_rps_read_actual_frequency(rps);
-
-		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
-
-		if (GRAPHICS_VER(dev_priv) >= 11) {
-			pm_ier = intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE);
-			pm_imr = intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_MASK);
-			/*
-			 * The equivalent to the PM ISR & IIR cannot be read
-			 * without affecting the current state of the system
-			 */
-			pm_isr = 0;
-			pm_iir = 0;
-		} else if (GRAPHICS_VER(dev_priv) >= 8) {
-			pm_ier = intel_uncore_read(&dev_priv->uncore, GEN8_GT_IER(2));
-			pm_imr = intel_uncore_read(&dev_priv->uncore, GEN8_GT_IMR(2));
-			pm_isr = intel_uncore_read(&dev_priv->uncore, GEN8_GT_ISR(2));
-			pm_iir = intel_uncore_read(&dev_priv->uncore, GEN8_GT_IIR(2));
-		} else {
-			pm_ier = intel_uncore_read(&dev_priv->uncore, GEN6_PMIER);
-			pm_imr = intel_uncore_read(&dev_priv->uncore, GEN6_PMIMR);
-			pm_isr = intel_uncore_read(&dev_priv->uncore, GEN6_PMISR);
-			pm_iir = intel_uncore_read(&dev_priv->uncore, GEN6_PMIIR);
-		}
-		pm_mask = intel_uncore_read(&dev_priv->uncore, GEN6_PMINTRMSK);
-
-		seq_printf(m, "Video Turbo Mode: %s\n",
-			   yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
-		seq_printf(m, "HW control enabled: %s\n",
-			   yesno(rpmodectl & GEN6_RP_ENABLE));
-		seq_printf(m, "SW control enabled: %s\n",
-			   yesno((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) ==
-				  GEN6_RP_MEDIA_SW_MODE));
-
-		seq_printf(m, "PM IER=0x%08x IMR=0x%08x, MASK=0x%08x\n",
-			   pm_ier, pm_imr, pm_mask);
-		if (GRAPHICS_VER(dev_priv) <= 10)
-			seq_printf(m, "PM ISR=0x%08x IIR=0x%08x\n",
-				   pm_isr, pm_iir);
-		seq_printf(m, "pm_intrmsk_mbz: 0x%08x\n",
-			   rps->pm_intrmsk_mbz);
-		seq_printf(m, "GT_PERF_STATUS: 0x%08x\n", gt_perf_status);
-		seq_printf(m, "Render p-state ratio: %d\n",
-			   (gt_perf_status & (GRAPHICS_VER(dev_priv) >= 9 ? 0x1ff00 : 0xff00)) >> 8);
-		seq_printf(m, "Render p-state VID: %d\n",
-			   gt_perf_status & 0xff);
-		seq_printf(m, "Render p-state limit: %d\n",
-			   rp_state_limits & 0xff);
-		seq_printf(m, "RPSTAT1: 0x%08x\n", rpstat);
-		seq_printf(m, "RPMODECTL: 0x%08x\n", rpmodectl);
-		seq_printf(m, "RPINCLIMIT: 0x%08x\n", rpinclimit);
-		seq_printf(m, "RPDECLIMIT: 0x%08x\n", rpdeclimit);
-		seq_printf(m, "RPNSWREQ: %dMHz\n", reqf);
-		seq_printf(m, "CAGF: %dMHz\n", cagf);
-		seq_printf(m, "RP CUR UP EI: %d (%lldns)\n",
-			   rpupei,
-			   intel_gt_pm_interval_to_ns(&dev_priv->gt, rpupei));
-		seq_printf(m, "RP CUR UP: %d (%lldun)\n",
-			   rpcurup,
-			   intel_gt_pm_interval_to_ns(&dev_priv->gt, rpcurup));
-		seq_printf(m, "RP PREV UP: %d (%lldns)\n",
-			   rpprevup,
-			   intel_gt_pm_interval_to_ns(&dev_priv->gt, rpprevup));
-		seq_printf(m, "Up threshold: %d%%\n",
-			   rps->power.up_threshold);
-
-		seq_printf(m, "RP CUR DOWN EI: %d (%lldns)\n",
-			   rpdownei,
-			   intel_gt_pm_interval_to_ns(&dev_priv->gt,
-						      rpdownei));
-		seq_printf(m, "RP CUR DOWN: %d (%lldns)\n",
-			   rpcurdown,
-			   intel_gt_pm_interval_to_ns(&dev_priv->gt,
-						      rpcurdown));
-		seq_printf(m, "RP PREV DOWN: %d (%lldns)\n",
-			   rpprevdown,
-			   intel_gt_pm_interval_to_ns(&dev_priv->gt,
-						      rpprevdown));
-		seq_printf(m, "Down threshold: %d%%\n",
-			   rps->power.down_threshold);
-
-		max_freq = (IS_GEN9_LP(dev_priv) ? rp_state_cap >> 0 :
-			    rp_state_cap >> 16) & 0xff;
-		max_freq *= (IS_GEN9_BC(dev_priv) ||
-			     GRAPHICS_VER(dev_priv) >= 11 ? GEN9_FREQ_SCALER : 1);
-		seq_printf(m, "Lowest (RPN) frequency: %dMHz\n",
-			   intel_gpu_freq(rps, max_freq));
-
-		max_freq = (rp_state_cap & 0xff00) >> 8;
-		max_freq *= (IS_GEN9_BC(dev_priv) ||
-			     GRAPHICS_VER(dev_priv) >= 11 ? GEN9_FREQ_SCALER : 1);
-		seq_printf(m, "Nominal (RP1) frequency: %dMHz\n",
-			   intel_gpu_freq(rps, max_freq));
-
-		max_freq = (IS_GEN9_LP(dev_priv) ? rp_state_cap >> 16 :
-			    rp_state_cap >> 0) & 0xff;
-		max_freq *= (IS_GEN9_BC(dev_priv) ||
-			     GRAPHICS_VER(dev_priv) >= 11 ? GEN9_FREQ_SCALER : 1);
-		seq_printf(m, "Max non-overclocked (RP0) frequency: %dMHz\n",
-			   intel_gpu_freq(rps, max_freq));
-		seq_printf(m, "Max overclocked frequency: %dMHz\n",
-			   intel_gpu_freq(rps, rps->max_freq));
-
-		seq_printf(m, "Current freq: %d MHz\n",
-			   intel_gpu_freq(rps, rps->cur_freq));
-		seq_printf(m, "Actual freq: %d MHz\n", cagf);
-		seq_printf(m, "Idle freq: %d MHz\n",
-			   intel_gpu_freq(rps, rps->idle_freq));
-		seq_printf(m, "Min freq: %d MHz\n",
-			   intel_gpu_freq(rps, rps->min_freq));
-		seq_printf(m, "Boost freq: %d MHz\n",
-			   intel_gpu_freq(rps, rps->boost_freq));
-		seq_printf(m, "Max freq: %d MHz\n",
-			   intel_gpu_freq(rps, rps->max_freq));
-		seq_printf(m,
-			   "efficient (RPe) frequency: %d MHz\n",
-			   intel_gpu_freq(rps, rps->efficient_freq));
-	} else {
-		seq_puts(m, "no P-state info available\n");
-	}
+	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct intel_gt *gt = &i915->gt;
+	struct drm_printer p = drm_seq_file_printer(m);
 
-	seq_printf(m, "Current CD clock frequency: %d kHz\n", dev_priv->cdclk.hw.cdclk);
-	seq_printf(m, "Max CD clock frequency: %d kHz\n", dev_priv->max_cdclk_freq);
-	seq_printf(m, "Max pixel clock frequency: %d kHz\n", dev_priv->max_dotclk_freq);
+	intel_gt_pm_frequency_dump(gt, &p);
 
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 	return 0;
 }
 
-- 
2.32.0

