Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF812B73C7
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 02:32:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C71A46E12C;
	Wed, 18 Nov 2020 01:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E6DB6E12C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 01:32:20 +0000 (UTC)
IronPort-SDR: V7SHwbqFgOnvlQ1H44zvkZg8JiCq20VneVfT9SGM5KDSaXh+8ejD9HkiAzVIO2zCDSmIy2ppY+
 jo+ZT+UruDOA==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="171216451"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="171216451"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 17:32:17 -0800
IronPort-SDR: q86TDHG13Q4d9Kr5uVQv+8soN8rXrP65WAaHZo/41boQQpSz+as4PEzq0TwXHFipzlK/7OP34G
 NKGl30vgjdHQ==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="534028227"
Received: from jalame-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.213.166.181])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 17:32:17 -0800
Date: Tue, 17 Nov 2020 17:32:16 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201118013216.cdvzvb5dne7xybul@ldmartin-desk1>
References: <20191222144046.1674865-1-chris@chris-wilson.co.uk>
 <20191222144046.1674865-3-chris@chris-wilson.co.uk>
 <160448433228.9474.10886564107965448562@jlahtine-mobl.ger.corp.intel.com>
 <160448471356.15691.11641803526516335867@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160448471356.15691.11641803526516335867@build.alporthouse.com>
Subject: Re: [Intel-gfx] [CI 3/3] drm/i915/gt: Move pm debug files into a gt
 aware debugfs
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 04, 2020 at 10:11:53AM +0000, Chris Wilson wrote:
>Quoting Joonas Lahtinen (2020-11-04 10:05:32)
>> Quoting Chris Wilson (2019-12-22 16:40:46)
>> > From: Andi Shyti <andi.shyti@intel.com>
>> >
>> > The GT system is becoming more and more a stand-alone system in
>> > i915 and it's fair to assign it its own debugfs directory.
>> >
>> > rc6, rps and llc debugfs files are gt related, move them into the
>> > gt debugfs directory.
>> >
>> > Signed-off-by: Andi Shyti <andi.shyti@intel.com>
>> > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
>> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> > ---
>> >  drivers/gpu/drm/i915/Makefile             |   3 +
>> >  drivers/gpu/drm/i915/gt/debugfs_engines.c |  36 ++
>> >  drivers/gpu/drm/i915/gt/debugfs_engines.h |  15 +
>> >  drivers/gpu/drm/i915/gt/debugfs_gt.c      |  42 ++
>> >  drivers/gpu/drm/i915/gt/debugfs_gt.h      |  39 ++
>> >  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   | 601 ++++++++++++++++++++++
>> >  drivers/gpu/drm/i915/gt/debugfs_gt_pm.h   |  14 +
>> >  drivers/gpu/drm/i915/gt/intel_gt.c        |   3 +
>> >  8 files changed, 753 insertions(+)
>> >  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_engines.c
>> >  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_engines.h
>> >  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt.c
>> >  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt.h
>> >  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
>> >  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt_pm.h
>>
>> This patch seems to actually copy the code, forgetting to remove the old
>> code. Let's have a follow-up patch that eliminates the duplication.
>
>We couldn't remove the old code without making changes to igt to work
>out what the appropriate GT directory would be for the test. That is
>still unknowable from userspace... So as a matter of convenience we kept
>the old entry point so that we could dump everything under the device.

couldn't it be replaced by a symlink? The below works for me and afaics
would be a better temporary solution than the duplicate code:


diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 77e76b665098..64020a3523e3 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -780,237 +780,6 @@ static const struct file_operations i915_error_state_fops = {
  };
  #endif
  
-static int i915_frequency_info(struct seq_file *m, void *unused)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	struct intel_rps *rps = &dev_priv->gt.rps;
-	intel_wakeref_t wakeref;
-
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
-
-	if (IS_GEN(dev_priv, 5)) {
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
-		rpmodectl = I915_READ(GEN6_RP_CONTROL);
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
-	} else if (INTEL_GEN(dev_priv) >= 6) {
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
-		rp_state_limits = I915_READ(GEN6_RP_STATE_LIMITS);
-		if (IS_GEN9_LP(dev_priv)) {
-			rp_state_cap = I915_READ(BXT_RP_STATE_CAP);
-			gt_perf_status = I915_READ(BXT_GT_PERF_STATUS);
-		} else {
-			rp_state_cap = I915_READ(GEN6_RP_STATE_CAP);
-			gt_perf_status = I915_READ(GEN6_GT_PERF_STATUS);
-		}
-
-		/* RPSTAT1 is in the GT power well */
-		intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
-
-		reqf = I915_READ(GEN6_RPNSWREQ);
-		if (INTEL_GEN(dev_priv) >= 9)
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
-		rpmodectl = I915_READ(GEN6_RP_CONTROL);
-		rpinclimit = I915_READ(GEN6_RP_UP_THRESHOLD);
-		rpdeclimit = I915_READ(GEN6_RP_DOWN_THRESHOLD);
-
-		rpstat = I915_READ(GEN6_RPSTAT1);
-		rpupei = I915_READ(GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;
-		rpcurup = I915_READ(GEN6_RP_CUR_UP) & GEN6_CURBSYTAVG_MASK;
-		rpprevup = I915_READ(GEN6_RP_PREV_UP) & GEN6_CURBSYTAVG_MASK;
-		rpdownei = I915_READ(GEN6_RP_CUR_DOWN_EI) & GEN6_CURIAVG_MASK;
-		rpcurdown = I915_READ(GEN6_RP_CUR_DOWN) & GEN6_CURBSYTAVG_MASK;
-		rpprevdown = I915_READ(GEN6_RP_PREV_DOWN) & GEN6_CURBSYTAVG_MASK;
-		cagf = intel_rps_read_actual_frequency(rps);
-
-		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
-
-		if (INTEL_GEN(dev_priv) >= 11) {
-			pm_ier = I915_READ(GEN11_GPM_WGBOXPERF_INTR_ENABLE);
-			pm_imr = I915_READ(GEN11_GPM_WGBOXPERF_INTR_MASK);
-			/*
-			 * The equivalent to the PM ISR & IIR cannot be read
-			 * without affecting the current state of the system
-			 */
-			pm_isr = 0;
-			pm_iir = 0;
-		} else if (INTEL_GEN(dev_priv) >= 8) {
-			pm_ier = I915_READ(GEN8_GT_IER(2));
-			pm_imr = I915_READ(GEN8_GT_IMR(2));
-			pm_isr = I915_READ(GEN8_GT_ISR(2));
-			pm_iir = I915_READ(GEN8_GT_IIR(2));
-		} else {
-			pm_ier = I915_READ(GEN6_PMIER);
-			pm_imr = I915_READ(GEN6_PMIMR);
-			pm_isr = I915_READ(GEN6_PMISR);
-			pm_iir = I915_READ(GEN6_PMIIR);
-		}
-		pm_mask = I915_READ(GEN6_PMINTRMSK);
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
-		if (INTEL_GEN(dev_priv) <= 10)
-			seq_printf(m, "PM ISR=0x%08x IIR=0x%08x\n",
-				   pm_isr, pm_iir);
-		seq_printf(m, "pm_intrmsk_mbz: 0x%08x\n",
-			   rps->pm_intrmsk_mbz);
-		seq_printf(m, "GT_PERF_STATUS: 0x%08x\n", gt_perf_status);
-		seq_printf(m, "Render p-state ratio: %d\n",
-			   (gt_perf_status & (INTEL_GEN(dev_priv) >= 9 ? 0x1ff00 : 0xff00)) >> 8);
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
-		seq_printf(m, "RP CUR UP EI: %d (%dns)\n",
-			   rpupei,
-			   intel_gt_pm_interval_to_ns(&dev_priv->gt, rpupei));
-		seq_printf(m, "RP CUR UP: %d (%dun)\n",
-			   rpcurup,
-			   intel_gt_pm_interval_to_ns(&dev_priv->gt, rpcurup));
-		seq_printf(m, "RP PREV UP: %d (%dns)\n",
-			   rpprevup,
-			   intel_gt_pm_interval_to_ns(&dev_priv->gt, rpprevup));
-		seq_printf(m, "Up threshold: %d%%\n",
-			   rps->power.up_threshold);
-
-		seq_printf(m, "RP CUR DOWN EI: %d (%dns)\n",
-			   rpdownei,
-			   intel_gt_pm_interval_to_ns(&dev_priv->gt,
-						      rpdownei));
-		seq_printf(m, "RP CUR DOWN: %d (%dns)\n",
-			   rpcurdown,
-			   intel_gt_pm_interval_to_ns(&dev_priv->gt,
-						      rpcurdown));
-		seq_printf(m, "RP PREV DOWN: %d (%dns)\n",
-			   rpprevdown,
-			   intel_gt_pm_interval_to_ns(&dev_priv->gt,
-						      rpprevdown));
-		seq_printf(m, "Down threshold: %d%%\n",
-			   rps->power.down_threshold);
-
-		max_freq = (IS_GEN9_LP(dev_priv) ? rp_state_cap >> 0 :
-			    rp_state_cap >> 16) & 0xff;
-		max_freq *= (IS_GEN9_BC(dev_priv) ||
-			     INTEL_GEN(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
-		seq_printf(m, "Lowest (RPN) frequency: %dMHz\n",
-			   intel_gpu_freq(rps, max_freq));
-
-		max_freq = (rp_state_cap & 0xff00) >> 8;
-		max_freq *= (IS_GEN9_BC(dev_priv) ||
-			     INTEL_GEN(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
-		seq_printf(m, "Nominal (RP1) frequency: %dMHz\n",
-			   intel_gpu_freq(rps, max_freq));
-
-		max_freq = (IS_GEN9_LP(dev_priv) ? rp_state_cap >> 16 :
-			    rp_state_cap >> 0) & 0xff;
-		max_freq *= (IS_GEN9_BC(dev_priv) ||
-			     INTEL_GEN(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
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
-
-	seq_printf(m, "Current CD clock frequency: %d kHz\n", dev_priv->cdclk.hw.cdclk);
-	seq_printf(m, "Max CD clock frequency: %d kHz\n", dev_priv->max_cdclk_freq);
-	seq_printf(m, "Max pixel clock frequency: %d kHz\n", dev_priv->max_dotclk_freq);
-
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
-	return 0;
-}
-
  static int i915_ring_freq_table(struct seq_file *m, void *unused)
  {
  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -1623,7 +1392,6 @@ static const struct drm_info_list i915_debugfs_list[] = {
  	{"i915_gem_objects", i915_gem_object_info, 0},
  	{"i915_gem_fence_regs", i915_gem_fence_regs_info, 0},
  	{"i915_gem_interrupt", i915_interrupt_info, 0},
-	{"i915_frequency_info", i915_frequency_info, 0},
  	{"i915_ring_freq_table", i915_ring_freq_table, 0},
  	{"i915_context_status", i915_context_status, 0},
  	{"i915_swizzle_info", i915_swizzle_info, 0},
@@ -1671,4 +1439,6 @@ void i915_debugfs_register(struct drm_i915_private *dev_priv)
  	drm_debugfs_create_files(i915_debugfs_list,
  				 I915_DEBUGFS_ENTRIES,
  				 minor->debugfs_root, minor);
+
+	debugfs_create_symlink("i915_frequency_info", minor->debugfs_root, "gt/frequency");
  }


there is a short window in which the symlink will point nowhere, but
if that is important we can make i915_setup_sysfs() come after that
(and I'm already doing that for other reasons nonetheless).

do you see any problem with that?

thanks
Lucas De Marchi

>More work could be done to remove the duplication of debug code, but
>equally we could use more specialised debug info for the igts.
>-Chris
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
