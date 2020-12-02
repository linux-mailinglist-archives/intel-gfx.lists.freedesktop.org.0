Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B32162CBB74
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 12:22:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71C206EA0A;
	Wed,  2 Dec 2020 11:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97EC66EA0A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 11:21:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23188118-1500050 
 for multiple; Wed, 02 Dec 2020 11:21:40 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Dec 2020 11:21:40 +0000
Message-Id: <20201202112140.16759-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Spring clean debugfs
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Throw away all the debugfs entries that are not being actively used for
debugging/developing IGT. Note that a couple of these are already and
will remain available under the gt/

Files removed:
	i915_gem_fence_regs
	i915_gem_interrupt
	i915_ring_freq_table
	i915_context_status
	i915_llc
	i915_shrinker_info

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 435 ----------------------------
 1 file changed, 435 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 4d6d85458502..3c251b98bfaa 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -379,308 +379,6 @@ static int i915_gem_object_info(struct seq_file *m, void *data)
 	return 0;
 }
 
-static void gen8_display_interrupt_info(struct seq_file *m)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	enum pipe pipe;
-
-	for_each_pipe(dev_priv, pipe) {
-		enum intel_display_power_domain power_domain;
-		intel_wakeref_t wakeref;
-
-		power_domain = POWER_DOMAIN_PIPE(pipe);
-		wakeref = intel_display_power_get_if_enabled(dev_priv,
-							     power_domain);
-		if (!wakeref) {
-			seq_printf(m, "Pipe %c power disabled\n",
-				   pipe_name(pipe));
-			continue;
-		}
-		seq_printf(m, "Pipe %c IMR:\t%08x\n",
-			   pipe_name(pipe),
-			   intel_uncore_read(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe)));
-		seq_printf(m, "Pipe %c IIR:\t%08x\n",
-			   pipe_name(pipe),
-			   intel_uncore_read(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe)));
-		seq_printf(m, "Pipe %c IER:\t%08x\n",
-			   pipe_name(pipe),
-			   intel_uncore_read(&dev_priv->uncore, GEN8_DE_PIPE_IER(pipe)));
-
-		intel_display_power_put(dev_priv, power_domain, wakeref);
-	}
-
-	seq_printf(m, "Display Engine port interrupt mask:\t%08x\n",
-		   intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IMR));
-	seq_printf(m, "Display Engine port interrupt identity:\t%08x\n",
-		   intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IIR));
-	seq_printf(m, "Display Engine port interrupt enable:\t%08x\n",
-		   intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IER));
-
-	seq_printf(m, "Display Engine misc interrupt mask:\t%08x\n",
-		   intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IMR));
-	seq_printf(m, "Display Engine misc interrupt identity:\t%08x\n",
-		   intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IIR));
-	seq_printf(m, "Display Engine misc interrupt enable:\t%08x\n",
-		   intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IER));
-
-	seq_printf(m, "PCU interrupt mask:\t%08x\n",
-		   intel_uncore_read(&dev_priv->uncore, GEN8_PCU_IMR));
-	seq_printf(m, "PCU interrupt identity:\t%08x\n",
-		   intel_uncore_read(&dev_priv->uncore, GEN8_PCU_IIR));
-	seq_printf(m, "PCU interrupt enable:\t%08x\n",
-		   intel_uncore_read(&dev_priv->uncore, GEN8_PCU_IER));
-}
-
-static int i915_interrupt_info(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	struct intel_engine_cs *engine;
-	intel_wakeref_t wakeref;
-	int i, pipe;
-
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
-
-	if (IS_CHERRYVIEW(dev_priv)) {
-		intel_wakeref_t pref;
-
-		seq_printf(m, "Master Interrupt Control:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN8_MASTER_IRQ));
-
-		seq_printf(m, "Display IER:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, VLV_IER));
-		seq_printf(m, "Display IIR:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, VLV_IIR));
-		seq_printf(m, "Display IIR_RW:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, VLV_IIR_RW));
-		seq_printf(m, "Display IMR:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, VLV_IMR));
-		for_each_pipe(dev_priv, pipe) {
-			enum intel_display_power_domain power_domain;
-
-			power_domain = POWER_DOMAIN_PIPE(pipe);
-			pref = intel_display_power_get_if_enabled(dev_priv,
-								  power_domain);
-			if (!pref) {
-				seq_printf(m, "Pipe %c power disabled\n",
-					   pipe_name(pipe));
-				continue;
-			}
-
-			seq_printf(m, "Pipe %c stat:\t%08x\n",
-				   pipe_name(pipe),
-				   intel_uncore_read(&dev_priv->uncore, PIPESTAT(pipe)));
-
-			intel_display_power_put(dev_priv, power_domain, pref);
-		}
-
-		pref = intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
-		seq_printf(m, "Port hotplug:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_EN));
-		seq_printf(m, "DPFLIPSTAT:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, VLV_DPFLIPSTAT));
-		seq_printf(m, "DPINVGTT:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, DPINVGTT));
-		intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, pref);
-
-		for (i = 0; i < 4; i++) {
-			seq_printf(m, "GT Interrupt IMR %d:\t%08x\n",
-				   i, intel_uncore_read(&dev_priv->uncore, GEN8_GT_IMR(i)));
-			seq_printf(m, "GT Interrupt IIR %d:\t%08x\n",
-				   i, intel_uncore_read(&dev_priv->uncore, GEN8_GT_IIR(i)));
-			seq_printf(m, "GT Interrupt IER %d:\t%08x\n",
-				   i, intel_uncore_read(&dev_priv->uncore, GEN8_GT_IER(i)));
-		}
-
-		seq_printf(m, "PCU interrupt mask:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN8_PCU_IMR));
-		seq_printf(m, "PCU interrupt identity:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN8_PCU_IIR));
-		seq_printf(m, "PCU interrupt enable:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN8_PCU_IER));
-	} else if (INTEL_GEN(dev_priv) >= 11) {
-		if (HAS_MASTER_UNIT_IRQ(dev_priv))
-			seq_printf(m, "Master Unit Interrupt Control:  %08x\n",
-				   intel_uncore_read(&dev_priv->uncore, DG1_MSTR_UNIT_INTR));
-
-		seq_printf(m, "Master Interrupt Control:  %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_GFX_MSTR_IRQ));
-
-		seq_printf(m, "Render/Copy Intr Enable:   %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_RENDER_COPY_INTR_ENABLE));
-		seq_printf(m, "VCS/VECS Intr Enable:      %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_VCS_VECS_INTR_ENABLE));
-		seq_printf(m, "GUC/SG Intr Enable:\t   %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_GUC_SG_INTR_ENABLE));
-		seq_printf(m, "GPM/WGBOXPERF Intr Enable: %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE));
-		seq_printf(m, "Crypto Intr Enable:\t   %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_CRYPTO_RSVD_INTR_ENABLE));
-		seq_printf(m, "GUnit/CSME Intr Enable:\t   %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_GUNIT_CSME_INTR_ENABLE));
-
-		seq_printf(m, "Display Interrupt Control:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL));
-
-		gen8_display_interrupt_info(m);
-	} else if (INTEL_GEN(dev_priv) >= 8) {
-		seq_printf(m, "Master Interrupt Control:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN8_MASTER_IRQ));
-
-		for (i = 0; i < 4; i++) {
-			seq_printf(m, "GT Interrupt IMR %d:\t%08x\n",
-				   i, intel_uncore_read(&dev_priv->uncore, GEN8_GT_IMR(i)));
-			seq_printf(m, "GT Interrupt IIR %d:\t%08x\n",
-				   i, intel_uncore_read(&dev_priv->uncore, GEN8_GT_IIR(i)));
-			seq_printf(m, "GT Interrupt IER %d:\t%08x\n",
-				   i, intel_uncore_read(&dev_priv->uncore, GEN8_GT_IER(i)));
-		}
-
-		gen8_display_interrupt_info(m);
-	} else if (IS_VALLEYVIEW(dev_priv)) {
-		intel_wakeref_t pref;
-
-		seq_printf(m, "Display IER:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, VLV_IER));
-		seq_printf(m, "Display IIR:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, VLV_IIR));
-		seq_printf(m, "Display IIR_RW:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, VLV_IIR_RW));
-		seq_printf(m, "Display IMR:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, VLV_IMR));
-		for_each_pipe(dev_priv, pipe) {
-			enum intel_display_power_domain power_domain;
-
-			power_domain = POWER_DOMAIN_PIPE(pipe);
-			pref = intel_display_power_get_if_enabled(dev_priv,
-								  power_domain);
-			if (!pref) {
-				seq_printf(m, "Pipe %c power disabled\n",
-					   pipe_name(pipe));
-				continue;
-			}
-
-			seq_printf(m, "Pipe %c stat:\t%08x\n",
-				   pipe_name(pipe),
-				   intel_uncore_read(&dev_priv->uncore, PIPESTAT(pipe)));
-			intel_display_power_put(dev_priv, power_domain, pref);
-		}
-
-		seq_printf(m, "Master IER:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, VLV_MASTER_IER));
-
-		seq_printf(m, "Render IER:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GTIER));
-		seq_printf(m, "Render IIR:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GTIIR));
-		seq_printf(m, "Render IMR:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GTIMR));
-
-		seq_printf(m, "PM IER:\t\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN6_PMIER));
-		seq_printf(m, "PM IIR:\t\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN6_PMIIR));
-		seq_printf(m, "PM IMR:\t\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN6_PMIMR));
-
-		pref = intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
-		seq_printf(m, "Port hotplug:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_EN));
-		seq_printf(m, "DPFLIPSTAT:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, VLV_DPFLIPSTAT));
-		seq_printf(m, "DPINVGTT:\t%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, DPINVGTT));
-		intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, pref);
-
-	} else if (!HAS_PCH_SPLIT(dev_priv)) {
-		seq_printf(m, "Interrupt enable:    %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN2_IER));
-		seq_printf(m, "Interrupt identity:  %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN2_IIR));
-		seq_printf(m, "Interrupt mask:      %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN2_IMR));
-		for_each_pipe(dev_priv, pipe)
-			seq_printf(m, "Pipe %c stat:         %08x\n",
-				   pipe_name(pipe),
-				   intel_uncore_read(&dev_priv->uncore, PIPESTAT(pipe)));
-	} else {
-		seq_printf(m, "North Display Interrupt enable:		%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, DEIER));
-		seq_printf(m, "North Display Interrupt identity:	%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, DEIIR));
-		seq_printf(m, "North Display Interrupt mask:		%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, DEIMR));
-		seq_printf(m, "South Display Interrupt enable:		%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, SDEIER));
-		seq_printf(m, "South Display Interrupt identity:	%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, SDEIIR));
-		seq_printf(m, "South Display Interrupt mask:		%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, SDEIMR));
-		seq_printf(m, "Graphics Interrupt enable:		%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GTIER));
-		seq_printf(m, "Graphics Interrupt identity:		%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GTIIR));
-		seq_printf(m, "Graphics Interrupt mask:		%08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GTIMR));
-	}
-
-	if (INTEL_GEN(dev_priv) >= 11) {
-		seq_printf(m, "RCS Intr Mask:\t %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_RCS0_RSVD_INTR_MASK));
-		seq_printf(m, "BCS Intr Mask:\t %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_BCS_RSVD_INTR_MASK));
-		seq_printf(m, "VCS0/VCS1 Intr Mask:\t %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_VCS0_VCS1_INTR_MASK));
-		seq_printf(m, "VCS2/VCS3 Intr Mask:\t %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_VCS2_VCS3_INTR_MASK));
-		seq_printf(m, "VECS0/VECS1 Intr Mask:\t %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_VECS0_VECS1_INTR_MASK));
-		seq_printf(m, "GUC/SG Intr Mask:\t %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_GUC_SG_INTR_MASK));
-		seq_printf(m, "GPM/WGBOXPERF Intr Mask: %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_MASK));
-		seq_printf(m, "Crypto Intr Mask:\t %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_CRYPTO_RSVD_INTR_MASK));
-		seq_printf(m, "Gunit/CSME Intr Mask:\t %08x\n",
-			   intel_uncore_read(&dev_priv->uncore, GEN11_GUNIT_CSME_INTR_MASK));
-
-	} else if (INTEL_GEN(dev_priv) >= 6) {
-		for_each_uabi_engine(engine, dev_priv) {
-			seq_printf(m,
-				   "Graphics Interrupt mask (%s):	%08x\n",
-				   engine->name, ENGINE_READ(engine, RING_IMR));
-		}
-	}
-
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
-
-	return 0;
-}
-
-static int i915_gem_fence_regs_info(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *i915 = node_to_i915(m->private);
-	unsigned int i;
-
-	seq_printf(m, "Total fences = %d\n", i915->ggtt.num_fences);
-
-	rcu_read_lock();
-	for (i = 0; i < i915->ggtt.num_fences; i++) {
-		struct i915_fence_reg *reg = &i915->ggtt.fence_regs[i];
-		struct i915_vma *vma = reg->vma;
-
-		seq_printf(m, "Fence %d, pin count = %d, object = ",
-			   i, atomic_read(&reg->pin_count));
-		if (!vma)
-			seq_puts(m, "unused");
-		else
-			i915_debugfs_describe_obj(m, vma->obj);
-		seq_putc(m, '\n');
-	}
-	rcu_read_unlock();
-
-	return 0;
-}
-
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 static ssize_t gpu_state_read(struct file *file, char __user *ubuf,
 			      size_t count, loff_t *pos)
@@ -1012,111 +710,6 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int i915_ring_freq_table(struct seq_file *m, void *unused)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	struct intel_rps *rps = &dev_priv->gt.rps;
-	unsigned int max_gpu_freq, min_gpu_freq;
-	intel_wakeref_t wakeref;
-	int gpu_freq, ia_freq;
-
-	if (!HAS_LLC(dev_priv))
-		return -ENODEV;
-
-	min_gpu_freq = rps->min_freq;
-	max_gpu_freq = rps->max_freq;
-	if (IS_GEN9_BC(dev_priv) || INTEL_GEN(dev_priv) >= 10) {
-		/* Convert GT frequency to 50 HZ units */
-		min_gpu_freq /= GEN9_FREQ_SCALER;
-		max_gpu_freq /= GEN9_FREQ_SCALER;
-	}
-
-	seq_puts(m, "GPU freq (MHz)\tEffective CPU freq (MHz)\tEffective Ring freq (MHz)\n");
-
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
-	for (gpu_freq = min_gpu_freq; gpu_freq <= max_gpu_freq; gpu_freq++) {
-		ia_freq = gpu_freq;
-		sandybridge_pcode_read(dev_priv,
-				       GEN6_PCODE_READ_MIN_FREQ_TABLE,
-				       &ia_freq, NULL);
-		seq_printf(m, "%d\t\t%d\t\t\t\t%d\n",
-			   intel_gpu_freq(rps,
-					  (gpu_freq *
-					   (IS_GEN9_BC(dev_priv) ||
-					    INTEL_GEN(dev_priv) >= 10 ?
-					    GEN9_FREQ_SCALER : 1))),
-			   ((ia_freq >> 0) & 0xff) * 100,
-			   ((ia_freq >> 8) & 0xff) * 100);
-	}
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
-
-	return 0;
-}
-
-static void describe_ctx_ring(struct seq_file *m, struct intel_ring *ring)
-{
-	seq_printf(m, " (ringbuffer, space: %d, head: %u, tail: %u, emit: %u)",
-		   ring->space, ring->head, ring->tail, ring->emit);
-}
-
-static int i915_context_status(struct seq_file *m, void *unused)
-{
-	struct drm_i915_private *i915 = node_to_i915(m->private);
-	struct i915_gem_context *ctx, *cn;
-
-	spin_lock(&i915->gem.contexts.lock);
-	list_for_each_entry_safe(ctx, cn, &i915->gem.contexts.list, link) {
-		struct i915_gem_engines_iter it;
-		struct intel_context *ce;
-
-		if (!kref_get_unless_zero(&ctx->ref))
-			continue;
-
-		spin_unlock(&i915->gem.contexts.lock);
-
-		seq_puts(m, "HW context ");
-		if (ctx->pid) {
-			struct task_struct *task;
-
-			task = get_pid_task(ctx->pid, PIDTYPE_PID);
-			if (task) {
-				seq_printf(m, "(%s [%d]) ",
-					   task->comm, task->pid);
-				put_task_struct(task);
-			}
-		} else if (IS_ERR(ctx->file_priv)) {
-			seq_puts(m, "(deleted) ");
-		} else {
-			seq_puts(m, "(kernel) ");
-		}
-
-		seq_putc(m, ctx->remap_slice ? 'R' : 'r');
-		seq_putc(m, '\n');
-
-		for_each_gem_engine(ce,
-				    i915_gem_context_lock_engines(ctx), it) {
-			if (intel_context_pin_if_active(ce)) {
-				seq_printf(m, "%s: ", ce->engine->name);
-				if (ce->state)
-					i915_debugfs_describe_obj(m, ce->state->obj);
-				describe_ctx_ring(m, ce->ring);
-				seq_putc(m, '\n');
-				intel_context_unpin(ce);
-			}
-		}
-		i915_gem_context_unlock_engines(ctx);
-
-		seq_putc(m, '\n');
-
-		spin_lock(&i915->gem.contexts.lock);
-		list_safe_reset_next(ctx, cn, link);
-		i915_gem_context_put(ctx);
-	}
-	spin_unlock(&i915->gem.contexts.lock);
-
-	return 0;
-}
-
 static const char *swizzle_string(unsigned swizzle)
 {
 	switch (swizzle) {
@@ -1223,18 +816,6 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
 	return 0;
 }
 
-static int i915_llc(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	const bool edram = INTEL_GEN(dev_priv) > 8;
-
-	seq_printf(m, "LLC: %s\n", yesno(HAS_LLC(dev_priv)));
-	seq_printf(m, "%s: %uMB\n", edram ? "eDRAM" : "eLLC",
-		   dev_priv->edram_size_mb);
-
-	return 0;
-}
-
 static int i915_runtime_pm_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -1294,16 +875,6 @@ static int i915_engine_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int i915_shrinker_info(struct seq_file *m, void *unused)
-{
-	struct drm_i915_private *i915 = node_to_i915(m->private);
-
-	seq_printf(m, "seeks = %d\n", i915->mm.shrinker.seeks);
-	seq_printf(m, "batch = %lu\n", i915->mm.shrinker.batch);
-
-	return 0;
-}
-
 static int i915_wa_registers(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
@@ -1538,16 +1109,10 @@ static const struct file_operations i915_forcewake_fops = {
 static const struct drm_info_list i915_debugfs_list[] = {
 	{"i915_capabilities", i915_capabilities, 0},
 	{"i915_gem_objects", i915_gem_object_info, 0},
-	{"i915_gem_fence_regs", i915_gem_fence_regs_info, 0},
-	{"i915_gem_interrupt", i915_interrupt_info, 0},
 	{"i915_frequency_info", i915_frequency_info, 0},
-	{"i915_ring_freq_table", i915_ring_freq_table, 0},
-	{"i915_context_status", i915_context_status, 0},
 	{"i915_swizzle_info", i915_swizzle_info, 0},
-	{"i915_llc", i915_llc, 0},
 	{"i915_runtime_pm_status", i915_runtime_pm_status, 0},
 	{"i915_engine_info", i915_engine_info, 0},
-	{"i915_shrinker_info", i915_shrinker_info, 0},
 	{"i915_wa_registers", i915_wa_registers, 0},
 	{"i915_sseu_status", i915_sseu_status, 0},
 	{"i915_rps_boost_info", i915_rps_boost_info, 0},
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
