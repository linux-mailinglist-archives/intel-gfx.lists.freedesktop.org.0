Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA021803E8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 17:47:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF6BF6E340;
	Tue, 10 Mar 2020 16:47:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80D9C6E340
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 16:47:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 09:47:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="234403647"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.27])
 by fmsmga007.fm.intel.com with ESMTP; 10 Mar 2020 09:47:35 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 16:47:33 +0000
Message-Id: <20200310164733.26487-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove debugfs i915_drpc_info and
 i915_forcewake_domains
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

The two files have been duplicated under the gt/ subdir and since there
are not apparent users looking for them at the old location lets simply
remove them and duplicated code.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 216 ----------------------------
 1 file changed, 216 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 8f2525e4ce0f..6ca797128aa1 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -996,220 +996,6 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 	return ret;
 }
 
-static int ilk_drpc_info(struct seq_file *m)
-{
-	struct drm_i915_private *i915 = node_to_i915(m->private);
-	struct intel_uncore *uncore = &i915->uncore;
-	u32 rgvmodectl, rstdbyctl;
-	u16 crstandvid;
-
-	rgvmodectl = intel_uncore_read(uncore, MEMMODECTL);
-	rstdbyctl = intel_uncore_read(uncore, RSTDBYCTL);
-	crstandvid = intel_uncore_read16(uncore, CRSTANDVID);
-
-	seq_printf(m, "HD boost: %s\n", yesno(rgvmodectl & MEMMODE_BOOST_EN));
-	seq_printf(m, "Boost freq: %d\n",
-		   (rgvmodectl & MEMMODE_BOOST_FREQ_MASK) >>
-		   MEMMODE_BOOST_FREQ_SHIFT);
-	seq_printf(m, "HW control enabled: %s\n",
-		   yesno(rgvmodectl & MEMMODE_HWIDLE_EN));
-	seq_printf(m, "SW control enabled: %s\n",
-		   yesno(rgvmodectl & MEMMODE_SWMODE_EN));
-	seq_printf(m, "Gated voltage change: %s\n",
-		   yesno(rgvmodectl & MEMMODE_RCLK_GATE));
-	seq_printf(m, "Starting frequency: P%d\n",
-		   (rgvmodectl & MEMMODE_FSTART_MASK) >> MEMMODE_FSTART_SHIFT);
-	seq_printf(m, "Max P-state: P%d\n",
-		   (rgvmodectl & MEMMODE_FMAX_MASK) >> MEMMODE_FMAX_SHIFT);
-	seq_printf(m, "Min P-state: P%d\n", (rgvmodectl & MEMMODE_FMIN_MASK));
-	seq_printf(m, "RS1 VID: %d\n", (crstandvid & 0x3f));
-	seq_printf(m, "RS2 VID: %d\n", ((crstandvid >> 8) & 0x3f));
-	seq_printf(m, "Render standby enabled: %s\n",
-		   yesno(!(rstdbyctl & RCX_SW_EXIT)));
-	seq_puts(m, "Current RS state: ");
-	switch (rstdbyctl & RSX_STATUS_MASK) {
-	case RSX_STATUS_ON:
-		seq_puts(m, "on\n");
-		break;
-	case RSX_STATUS_RC1:
-		seq_puts(m, "RC1\n");
-		break;
-	case RSX_STATUS_RC1E:
-		seq_puts(m, "RC1E\n");
-		break;
-	case RSX_STATUS_RS1:
-		seq_puts(m, "RS1\n");
-		break;
-	case RSX_STATUS_RS2:
-		seq_puts(m, "RS2 (RC6)\n");
-		break;
-	case RSX_STATUS_RS3:
-		seq_puts(m, "RC3 (RC6+)\n");
-		break;
-	default:
-		seq_puts(m, "unknown\n");
-		break;
-	}
-
-	return 0;
-}
-
-static int i915_forcewake_domains(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *i915 = node_to_i915(m->private);
-	struct intel_uncore *uncore = &i915->uncore;
-	struct intel_uncore_forcewake_domain *fw_domain;
-	unsigned int tmp;
-
-	seq_printf(m, "user.bypass_count = %u\n",
-		   uncore->user_forcewake_count);
-
-	for_each_fw_domain(fw_domain, uncore, tmp)
-		seq_printf(m, "%s.wake_count = %u\n",
-			   intel_uncore_forcewake_domain_to_str(fw_domain->id),
-			   READ_ONCE(fw_domain->wake_count));
-
-	return 0;
-}
-
-static void print_rc6_res(struct seq_file *m,
-			  const char *title,
-			  const i915_reg_t reg)
-{
-	struct drm_i915_private *i915 = node_to_i915(m->private);
-	intel_wakeref_t wakeref;
-
-	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		seq_printf(m, "%s %u (%llu us)\n", title,
-			   intel_uncore_read(&i915->uncore, reg),
-			   intel_rc6_residency_us(&i915->gt.rc6, reg));
-}
-
-static int vlv_drpc_info(struct seq_file *m)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	u32 rcctl1, pw_status;
-
-	pw_status = I915_READ(VLV_GTLC_PW_STATUS);
-	rcctl1 = I915_READ(GEN6_RC_CONTROL);
-
-	seq_printf(m, "RC6 Enabled: %s\n",
-		   yesno(rcctl1 & (GEN7_RC_CTL_TO_MODE |
-					GEN6_RC_CTL_EI_MODE(1))));
-	seq_printf(m, "Render Power Well: %s\n",
-		   (pw_status & VLV_GTLC_PW_RENDER_STATUS_MASK) ? "Up" : "Down");
-	seq_printf(m, "Media Power Well: %s\n",
-		   (pw_status & VLV_GTLC_PW_MEDIA_STATUS_MASK) ? "Up" : "Down");
-
-	print_rc6_res(m, "Render RC6 residency since boot:", VLV_GT_RENDER_RC6);
-	print_rc6_res(m, "Media RC6 residency since boot:", VLV_GT_MEDIA_RC6);
-
-	return i915_forcewake_domains(m, NULL);
-}
-
-static int gen6_drpc_info(struct seq_file *m)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	u32 gt_core_status, rcctl1, rc6vids = 0;
-	u32 gen9_powergate_enable = 0, gen9_powergate_status = 0;
-
-	gt_core_status = I915_READ_FW(GEN6_GT_CORE_STATUS);
-	trace_i915_reg_rw(false, GEN6_GT_CORE_STATUS, gt_core_status, 4, true);
-
-	rcctl1 = I915_READ(GEN6_RC_CONTROL);
-	if (INTEL_GEN(dev_priv) >= 9) {
-		gen9_powergate_enable = I915_READ(GEN9_PG_ENABLE);
-		gen9_powergate_status = I915_READ(GEN9_PWRGT_DOMAIN_STATUS);
-	}
-
-	if (INTEL_GEN(dev_priv) <= 7)
-		sandybridge_pcode_read(dev_priv, GEN6_PCODE_READ_RC6VIDS,
-				       &rc6vids, NULL);
-
-	seq_printf(m, "RC1e Enabled: %s\n",
-		   yesno(rcctl1 & GEN6_RC_CTL_RC1e_ENABLE));
-	seq_printf(m, "RC6 Enabled: %s\n",
-		   yesno(rcctl1 & GEN6_RC_CTL_RC6_ENABLE));
-	if (INTEL_GEN(dev_priv) >= 9) {
-		seq_printf(m, "Render Well Gating Enabled: %s\n",
-			yesno(gen9_powergate_enable & GEN9_RENDER_PG_ENABLE));
-		seq_printf(m, "Media Well Gating Enabled: %s\n",
-			yesno(gen9_powergate_enable & GEN9_MEDIA_PG_ENABLE));
-	}
-	seq_printf(m, "Deep RC6 Enabled: %s\n",
-		   yesno(rcctl1 & GEN6_RC_CTL_RC6p_ENABLE));
-	seq_printf(m, "Deepest RC6 Enabled: %s\n",
-		   yesno(rcctl1 & GEN6_RC_CTL_RC6pp_ENABLE));
-	seq_puts(m, "Current RC state: ");
-	switch (gt_core_status & GEN6_RCn_MASK) {
-	case GEN6_RC0:
-		if (gt_core_status & GEN6_CORE_CPD_STATE_MASK)
-			seq_puts(m, "Core Power Down\n");
-		else
-			seq_puts(m, "on\n");
-		break;
-	case GEN6_RC3:
-		seq_puts(m, "RC3\n");
-		break;
-	case GEN6_RC6:
-		seq_puts(m, "RC6\n");
-		break;
-	case GEN6_RC7:
-		seq_puts(m, "RC7\n");
-		break;
-	default:
-		seq_puts(m, "Unknown\n");
-		break;
-	}
-
-	seq_printf(m, "Core Power Down: %s\n",
-		   yesno(gt_core_status & GEN6_CORE_CPD_STATE_MASK));
-	if (INTEL_GEN(dev_priv) >= 9) {
-		seq_printf(m, "Render Power Well: %s\n",
-			(gen9_powergate_status &
-			 GEN9_PWRGT_RENDER_STATUS_MASK) ? "Up" : "Down");
-		seq_printf(m, "Media Power Well: %s\n",
-			(gen9_powergate_status &
-			 GEN9_PWRGT_MEDIA_STATUS_MASK) ? "Up" : "Down");
-	}
-
-	/* Not exactly sure what this is */
-	print_rc6_res(m, "RC6 \"Locked to RPn\" residency since boot:",
-		      GEN6_GT_GFX_RC6_LOCKED);
-	print_rc6_res(m, "RC6 residency since boot:", GEN6_GT_GFX_RC6);
-	print_rc6_res(m, "RC6+ residency since boot:", GEN6_GT_GFX_RC6p);
-	print_rc6_res(m, "RC6++ residency since boot:", GEN6_GT_GFX_RC6pp);
-
-	if (INTEL_GEN(dev_priv) <= 7) {
-		seq_printf(m, "RC6   voltage: %dmV\n",
-			   GEN6_DECODE_RC6_VID(((rc6vids >> 0) & 0xff)));
-		seq_printf(m, "RC6+  voltage: %dmV\n",
-			   GEN6_DECODE_RC6_VID(((rc6vids >> 8) & 0xff)));
-		seq_printf(m, "RC6++ voltage: %dmV\n",
-			   GEN6_DECODE_RC6_VID(((rc6vids >> 16) & 0xff)));
-	}
-
-	return i915_forcewake_domains(m, NULL);
-}
-
-static int i915_drpc_info(struct seq_file *m, void *unused)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	intel_wakeref_t wakeref;
-	int err = -ENODEV;
-
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
-		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-			err = vlv_drpc_info(m);
-		else if (INTEL_GEN(dev_priv) >= 6)
-			err = gen6_drpc_info(m);
-		else
-			err = ilk_drpc_info(m);
-	}
-
-	return err;
-}
-
 static int i915_ring_freq_table(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -2360,10 +2146,8 @@ static const struct drm_info_list i915_debugfs_list[] = {
 	{"i915_guc_stage_pool", i915_guc_stage_pool, 0},
 	{"i915_huc_load_status", i915_huc_load_status_info, 0},
 	{"i915_frequency_info", i915_frequency_info, 0},
-	{"i915_drpc_info", i915_drpc_info, 0},
 	{"i915_ring_freq_table", i915_ring_freq_table, 0},
 	{"i915_context_status", i915_context_status, 0},
-	{"i915_forcewake_domains", i915_forcewake_domains, 0},
 	{"i915_swizzle_info", i915_swizzle_info, 0},
 	{"i915_llc", i915_llc, 0},
 	{"i915_runtime_pm_status", i915_runtime_pm_status, 0},
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
