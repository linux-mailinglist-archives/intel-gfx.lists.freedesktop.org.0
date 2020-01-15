Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E473B13B88C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 05:00:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 454446E855;
	Wed, 15 Jan 2020 03:59:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B13FC6E845;
 Wed, 15 Jan 2020 03:59:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 19:52:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,321,1574150400"; 
 d="scan'208,217";a="242720379"
Received: from plaxmina-desktop.iind.intel.com ([10.106.124.119])
 by orsmga002.jf.intel.com with ESMTP; 14 Jan 2020 19:52:42 -0800
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@intel.com, daniel@ffwll.ch, sam@ravnborg.org,
 sudeep.dutt@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>
Date: Wed, 15 Jan 2020 09:14:53 +0530
Message-Id: <20200115034455.17658-10-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200115034455.17658-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200115034455.17658-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [ [PATCH v2 09/10] drm/i915: Make WARN* drm specific
 where drm_priv ptr is available
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

drm specific WARN* calls include device information in the
backtrace, so we know what device the warnings originate from.

Covert all the calls of WARN* with device specific drm_WARN*
variants in functions where drm_i915_private struct pointer is readily
available.

The conversion was done automatically with below coccinelle semantic
patch. checkpatch errors/warnings are fixed manually.

@rule1@
identifier func, T;
@@
func(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-WARN(
+drm_WARN(&T->drm,
...)
|
-WARN_ON(
+drm_WARN_ON(&T->drm,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(&T->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&T->drm,
...)
)
...+>
}

@rule2@
identifier func, T;
@@
func(struct drm_i915_private *T,...) {
<+...
(
-WARN(
+drm_WARN(&T->drm,
...)
|
-WARN_ON(
+drm_WARN_ON(&T->drm,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(&T->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&T->drm,
...)
)
...+>
}

command: ls drivers/gpu/drm/i915/*.c | xargs spatch --sp-file \
			<script> --linux-spacing --in-place

Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c       | 19 +++----
 drivers/gpu/drm/i915/i915_gem.c       |  7 +--
 drivers/gpu/drm/i915/i915_irq.c       | 75 ++++++++++++++-------------
 drivers/gpu/drm/i915/i915_pmu.c       |  6 +--
 drivers/gpu/drm/i915/intel_csr.c      |  4 +-
 drivers/gpu/drm/i915/intel_pch.c      | 66 ++++++++++++++---------
 drivers/gpu/drm/i915/intel_pm.c       | 24 +++++----
 drivers/gpu/drm/i915/intel_sideband.c |  7 +--
 drivers/gpu/drm/i915/intel_uncore.c   |  2 +-
 9 files changed, 118 insertions(+), 92 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index f7385abdd74b..e9b42e962032 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1015,9 +1015,9 @@ bxt_get_dram_info(struct drm_i915_private *dev_priv)
 		bxt_get_dimm_info(&dimm, val);
 		type = bxt_get_dimm_type(val);
 
-		WARN_ON(type != INTEL_DRAM_UNKNOWN &&
-			dram_info->type != INTEL_DRAM_UNKNOWN &&
-			dram_info->type != type);
+		drm_WARN_ON(&dev_priv->drm, type != INTEL_DRAM_UNKNOWN &&
+			    dram_info->type != INTEL_DRAM_UNKNOWN &&
+			    dram_info->type != type);
 
 		DRM_DEBUG_KMS("CH%u DIMM size: %u GB, width: X%u, ranks: %u, type: %s\n",
 			      i - BXT_D_CR_DRP0_DUNIT_START,
@@ -1805,8 +1805,8 @@ int i915_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state)
 {
 	int error;
 
-	if (WARN_ON_ONCE(state.event != PM_EVENT_SUSPEND &&
-			 state.event != PM_EVENT_FREEZE))
+	if (drm_WARN_ON_ONCE(&i915->drm, state.event != PM_EVENT_SUSPEND &&
+			     state.event != PM_EVENT_FREEZE))
 		return -EINVAL;
 
 	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
@@ -2429,7 +2429,8 @@ static int vlv_suspend_complete(struct drm_i915_private *dev_priv)
 	vlv_wait_for_gt_wells(dev_priv, false);
 
 	mask = VLV_GTLC_RENDER_CTX_EXISTS | VLV_GTLC_MEDIA_CTX_EXISTS;
-	WARN_ON((I915_READ(VLV_GTLC_WAKE_CTRL) & mask) != mask);
+	drm_WARN_ON(&dev_priv->drm,
+		    (I915_READ(VLV_GTLC_WAKE_CTRL) & mask) != mask);
 
 	vlv_check_no_gt_access(dev_priv);
 
@@ -2495,7 +2496,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	int ret = 0;
 
-	if (WARN_ON_ONCE(!HAS_RUNTIME_PM(dev_priv)))
+	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
 		return -ENODEV;
 
 	DRM_DEBUG_KMS("Suspending device\n");
@@ -2580,12 +2581,12 @@ static int intel_runtime_resume(struct device *kdev)
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	int ret = 0;
 
-	if (WARN_ON_ONCE(!HAS_RUNTIME_PM(dev_priv)))
+	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
 		return -ENODEV;
 
 	DRM_DEBUG_KMS("Resuming device\n");
 
-	WARN_ON_ONCE(atomic_read(&rpm->wakeref_count));
+	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
 	disable_rpm_wakeref_asserts(rpm);
 
 	intel_opregion_notify_adapter(dev_priv, PCI_D0);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 94f993e4c12f..0a20083321a3 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1198,7 +1198,7 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv)
 
 	i915_gem_drain_freed_objects(dev_priv);
 
-	WARN_ON(!list_empty(&dev_priv->gem.contexts.list));
+	drm_WARN_ON(&dev_priv->drm, !list_empty(&dev_priv->gem.contexts.list));
 }
 
 static void i915_gem_init__mm(struct drm_i915_private *i915)
@@ -1226,7 +1226,7 @@ void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
 	i915_gem_drain_freed_objects(dev_priv);
 	GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
 	GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
-	WARN_ON(dev_priv->mm.shrink_count);
+	drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
 }
 
 int i915_gem_freeze(struct drm_i915_private *dev_priv)
@@ -1266,7 +1266,8 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
 
 	list_for_each_entry(obj, &i915->mm.shrink_list, mm.link) {
 		i915_gem_object_lock(obj);
-		WARN_ON(i915_gem_object_set_to_cpu_domain(obj, true));
+		drm_WARN_ON(&i915->drm,
+			    i915_gem_object_set_to_cpu_domain(obj, true));
 		i915_gem_object_unlock(obj);
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index afc6aad9bf8c..4b53d776bf7e 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -262,7 +262,7 @@ i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
-	WARN_ON(bits & ~mask);
+	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
 
 	val = I915_READ(PORT_HOTPLUG_EN);
 	val &= ~mask;
@@ -305,9 +305,9 @@ void ilk_update_display_irq(struct drm_i915_private *dev_priv,
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	WARN_ON(enabled_irq_mask & ~interrupt_mask);
+	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
 
-	if (WARN_ON(!intel_irqs_enabled(dev_priv)))
+	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
 	new_val = dev_priv->irq_mask;
@@ -336,9 +336,9 @@ static void bdw_update_port_irq(struct drm_i915_private *dev_priv,
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	WARN_ON(enabled_irq_mask & ~interrupt_mask);
+	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
 
-	if (WARN_ON(!intel_irqs_enabled(dev_priv)))
+	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
 	old_val = I915_READ(GEN8_DE_PORT_IMR);
@@ -369,9 +369,9 @@ void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	WARN_ON(enabled_irq_mask & ~interrupt_mask);
+	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
 
-	if (WARN_ON(!intel_irqs_enabled(dev_priv)))
+	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
 	new_val = dev_priv->de_irq_mask[pipe];
@@ -399,11 +399,11 @@ void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
 	sdeimr &= ~interrupt_mask;
 	sdeimr |= (~enabled_irq_mask & interrupt_mask);
 
-	WARN_ON(enabled_irq_mask & ~interrupt_mask);
+	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (WARN_ON(!intel_irqs_enabled(dev_priv)))
+	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
 	I915_WRITE(SDEIMR, sdeimr);
@@ -425,13 +425,15 @@ u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
 	 * On pipe A we don't support the PSR interrupt yet,
 	 * on pipe B and C the same bit MBZ.
 	 */
-	if (WARN_ON_ONCE(status_mask & PIPE_A_PSR_STATUS_VLV))
+	if (drm_WARN_ON_ONCE(&dev_priv->drm,
+			     status_mask & PIPE_A_PSR_STATUS_VLV))
 		return 0;
 	/*
 	 * On pipe B and C we don't support the PSR interrupt yet, on pipe
 	 * A the same bit is for perf counters which we don't use either.
 	 */
-	if (WARN_ON_ONCE(status_mask & PIPE_B_PSR_STATUS_VLV))
+	if (drm_WARN_ON_ONCE(&dev_priv->drm,
+			     status_mask & PIPE_B_PSR_STATUS_VLV))
 		return 0;
 
 	enable_mask &= ~(PIPE_FIFO_UNDERRUN_STATUS |
@@ -443,10 +445,11 @@ u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
 		enable_mask |= SPRITE1_FLIP_DONE_INT_EN_VLV;
 
 out:
-	WARN_ONCE(enable_mask & ~PIPESTAT_INT_ENABLE_MASK ||
-		  status_mask & ~PIPESTAT_INT_STATUS_MASK,
-		  "pipe %c: enable_mask=0x%x, status_mask=0x%x\n",
-		  pipe_name(pipe), enable_mask, status_mask);
+	drm_WARN_ONCE(&dev_priv->drm,
+		      enable_mask & ~PIPESTAT_INT_ENABLE_MASK ||
+		      status_mask & ~PIPESTAT_INT_STATUS_MASK,
+		      "pipe %c: enable_mask=0x%x, status_mask=0x%x\n",
+		      pipe_name(pipe), enable_mask, status_mask);
 
 	return enable_mask;
 }
@@ -457,12 +460,12 @@ void i915_enable_pipestat(struct drm_i915_private *dev_priv,
 	i915_reg_t reg = PIPESTAT(pipe);
 	u32 enable_mask;
 
-	WARN_ONCE(status_mask & ~PIPESTAT_INT_STATUS_MASK,
-		  "pipe %c: status_mask=0x%x\n",
-		  pipe_name(pipe), status_mask);
+	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
+		      "pipe %c: status_mask=0x%x\n",
+		      pipe_name(pipe), status_mask);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
-	WARN_ON(!intel_irqs_enabled(dev_priv));
+	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
 
 	if ((dev_priv->pipestat_irq_mask[pipe] & status_mask) == status_mask)
 		return;
@@ -480,12 +483,12 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 	i915_reg_t reg = PIPESTAT(pipe);
 	u32 enable_mask;
 
-	WARN_ONCE(status_mask & ~PIPESTAT_INT_STATUS_MASK,
-		  "pipe %c: status_mask=0x%x\n",
-		  pipe_name(pipe), status_mask);
+	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
+		      "pipe %c: status_mask=0x%x\n",
+		      pipe_name(pipe), status_mask);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
-	WARN_ON(!intel_irqs_enabled(dev_priv));
+	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
 
 	if ((dev_priv->pipestat_irq_mask[pipe] & status_mask) == 0)
 		return;
@@ -777,7 +780,7 @@ bool i915_get_crtc_scanoutpos(struct drm_device *dev, unsigned int index,
 		IS_G4X(dev_priv) || IS_GEN(dev_priv, 2) ||
 		mode->private_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;
 
-	if (WARN_ON(!mode->crtc_clock)) {
+	if (drm_WARN_ON(&dev_priv->drm, !mode->crtc_clock)) {
 		DRM_DEBUG_DRIVER("trying to get scanoutpos for disabled "
 				 "pipe %c\n", pipe_name(pipe));
 		return false;
@@ -918,7 +921,7 @@ static void ivb_parity_work(struct work_struct *work)
 	mutex_lock(&dev_priv->drm.struct_mutex);
 
 	/* If we've screwed up tracking, just let the interrupt fire again */
-	if (WARN_ON(!dev_priv->l3_parity.which_slice))
+	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
 		goto out;
 
 	misccpctl = I915_READ(GEN7_MISCCPCTL);
@@ -929,7 +932,8 @@ static void ivb_parity_work(struct work_struct *work)
 		i915_reg_t reg;
 
 		slice--;
-		if (WARN_ON_ONCE(slice >= NUM_L3_SLICES(dev_priv)))
+		if (drm_WARN_ON_ONCE(&dev_priv->drm,
+				     slice >= NUM_L3_SLICES(dev_priv)))
 			break;
 
 		dev_priv->l3_parity.which_slice &= ~(1<<slice);
@@ -966,7 +970,7 @@ static void ivb_parity_work(struct work_struct *work)
 	I915_WRITE(GEN7_MISCCPCTL, misccpctl);
 
 out:
-	WARN_ON(dev_priv->l3_parity.which_slice);
+	drm_WARN_ON(&dev_priv->drm, dev_priv->l3_parity.which_slice);
 	spin_lock_irq(&gt->irq_lock);
 	gen5_gt_enable_irq(gt, GT_PARITY_ERROR(dev_priv));
 	spin_unlock_irq(&gt->irq_lock);
@@ -1463,9 +1467,9 @@ static u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
 		I915_WRITE(PORT_HOTPLUG_STAT, hotplug_status);
 	}
 
-	WARN_ONCE(1,
-		  "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
-		  I915_READ(PORT_HOTPLUG_STAT));
+	drm_WARN_ONCE(&dev_priv->drm, 1,
+		      "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
+		      I915_READ(PORT_HOTPLUG_STAT));
 
 	return hotplug_status;
 }
@@ -1844,8 +1848,9 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		tc_port_hotplug_long_detect = icp_tc_port_hotplug_long_detect;
 		pins = hpd_icp;
 	} else {
-		WARN(!HAS_PCH_ICP(dev_priv),
-		     "Unrecognized PCH type 0x%x\n", INTEL_PCH_TYPE(dev_priv));
+		drm_WARN(&dev_priv->drm, !HAS_PCH_ICP(dev_priv),
+			 "Unrecognized PCH type 0x%x\n",
+			 INTEL_PCH_TYPE(dev_priv));
 
 		ddi_hotplug_trigger = pch_iir & SDE_DDI_MASK_ICP;
 		tc_hotplug_trigger = pch_iir & SDE_TC_MASK_ICP;
@@ -2686,7 +2691,7 @@ static void ibx_irq_pre_postinstall(struct drm_i915_private *dev_priv)
 	if (HAS_PCH_NOP(dev_priv))
 		return;
 
-	WARN_ON(I915_READ(SDEIER) != 0);
+	drm_WARN_ON(&dev_priv->drm, I915_READ(SDEIER) != 0);
 	I915_WRITE(SDEIER, 0xffffffff);
 	POSTING_READ(SDEIER);
 }
@@ -2733,7 +2738,7 @@ static void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 		enable_mask |= I915_DISPLAY_PIPE_C_EVENT_INTERRUPT |
 			I915_LPE_PIPE_C_INTERRUPT;
 
-	WARN_ON(dev_priv->irq_mask != ~0u);
+	drm_WARN_ON(&dev_priv->drm, dev_priv->irq_mask != ~0u);
 
 	dev_priv->irq_mask = ~enable_mask;
 
@@ -3418,7 +3423,7 @@ static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	u32 mask = SDE_GMBUS_ICP;
 
-	WARN_ON(I915_READ(SDEIER) != 0);
+	drm_WARN_ON(&dev_priv->drm, I915_READ(SDEIER) != 0);
 	I915_WRITE(SDEIER, 0xffffffff);
 	POSTING_READ(SDEIER);
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 28a82c849bac..19f0e904a8f3 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -448,7 +448,7 @@ static void engine_event_destroy(struct perf_event *event)
 	engine = intel_engine_lookup_user(i915,
 					  engine_event_class(event),
 					  engine_event_instance(event));
-	if (WARN_ON_ONCE(!engine))
+	if (drm_WARN_ON_ONCE(&i915->drm, !engine))
 		return;
 
 	if (engine_event_sample(event) == I915_SAMPLE_BUSY &&
@@ -584,7 +584,7 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
 						  engine_event_class(event),
 						  engine_event_instance(event));
 
-		if (WARN_ON_ONCE(!engine)) {
+		if (drm_WARN_ON_ONCE(&i915->drm, !engine)) {
 			/* Do nothing */
 		} else if (sample == I915_SAMPLE_BUSY &&
 			   intel_engine_supports_stats(engine)) {
@@ -1174,7 +1174,7 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 	if (!pmu->base.event_init)
 		return;
 
-	WARN_ON(pmu->enable);
+	drm_WARN_ON(&i915->drm, pmu->enable);
 
 	hrtimer_cancel(&pmu->timer);
 
diff --git a/drivers/gpu/drm/i915/intel_csr.c b/drivers/gpu/drm/i915/intel_csr.c
index 09870a31b4f0..801181ad60ce 100644
--- a/drivers/gpu/drm/i915/intel_csr.c
+++ b/drivers/gpu/drm/i915/intel_csr.c
@@ -607,7 +607,7 @@ static void parse_csr_fw(struct drm_i915_private *dev_priv,
 
 static void intel_csr_runtime_pm_get(struct drm_i915_private *dev_priv)
 {
-	WARN_ON(dev_priv->csr.wakeref);
+	drm_WARN_ON(&dev_priv->drm, dev_priv->csr.wakeref);
 	dev_priv->csr.wakeref =
 		intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
 }
@@ -783,7 +783,7 @@ void intel_csr_ucode_fini(struct drm_i915_private *dev_priv)
 		return;
 
 	intel_csr_ucode_suspend(dev_priv);
-	WARN_ON(dev_priv->csr.wakeref);
+	drm_WARN_ON(&dev_priv->drm, dev_priv->csr.wakeref);
 
 	kfree(dev_priv->csr.dmc_payload);
 }
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index 4ed60e1f01db..20ab9a5023b5 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -13,91 +13,106 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 	switch (id) {
 	case INTEL_PCH_IBX_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Ibex Peak PCH\n");
-		WARN_ON(!IS_GEN(dev_priv, 5));
+		drm_WARN_ON(&dev_priv->drm, !IS_GEN(dev_priv, 5));
 		return PCH_IBX;
 	case INTEL_PCH_CPT_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found CougarPoint PCH\n");
-		WARN_ON(!IS_GEN(dev_priv, 6) && !IS_IVYBRIDGE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_GEN(dev_priv, 6) && !IS_IVYBRIDGE(dev_priv));
 		return PCH_CPT;
 	case INTEL_PCH_PPT_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found PantherPoint PCH\n");
-		WARN_ON(!IS_GEN(dev_priv, 6) && !IS_IVYBRIDGE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_GEN(dev_priv, 6) && !IS_IVYBRIDGE(dev_priv));
 		/* PantherPoint is CPT compatible */
 		return PCH_CPT;
 	case INTEL_PCH_LPT_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found LynxPoint PCH\n");
-		WARN_ON(!IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
-		WARN_ON(IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
 		return PCH_LPT;
 	case INTEL_PCH_LPT_LP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found LynxPoint LP PCH\n");
-		WARN_ON(!IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
-		WARN_ON(!IS_HSW_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_HSW_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
 		return PCH_LPT;
 	case INTEL_PCH_WPT_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint PCH\n");
-		WARN_ON(!IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
-		WARN_ON(IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
 		/* WildcatPoint is LPT compatible */
 		return PCH_LPT;
 	case INTEL_PCH_WPT_LP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint LP PCH\n");
-		WARN_ON(!IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
-		WARN_ON(!IS_HSW_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_HSW_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
 		/* WildcatPoint is LPT compatible */
 		return PCH_LPT;
 	case INTEL_PCH_SPT_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found SunrisePoint PCH\n");
-		WARN_ON(!IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv));
 		return PCH_SPT;
 	case INTEL_PCH_SPT_LP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found SunrisePoint LP PCH\n");
-		WARN_ON(!IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv) &&
-			!IS_COFFEELAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv) &&
+			    !IS_COFFEELAKE(dev_priv));
 		return PCH_SPT;
 	case INTEL_PCH_KBP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Kaby Lake PCH (KBP)\n");
-		WARN_ON(!IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv) &&
-			!IS_COFFEELAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv) &&
+			    !IS_COFFEELAKE(dev_priv));
 		/* KBP is SPT compatible */
 		return PCH_SPT;
 	case INTEL_PCH_CNP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Cannon Lake PCH (CNP)\n");
-		WARN_ON(!IS_CANNONLAKE(dev_priv) && !IS_COFFEELAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm, !IS_CANNONLAKE(dev_priv) &&
+			    !IS_COFFEELAKE(dev_priv));
 		return PCH_CNP;
 	case INTEL_PCH_CNP_LP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm,
 			    "Found Cannon Lake LP PCH (CNP-LP)\n");
-		WARN_ON(!IS_CANNONLAKE(dev_priv) && !IS_COFFEELAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm, !IS_CANNONLAKE(dev_priv) &&
+			    !IS_COFFEELAKE(dev_priv));
 		return PCH_CNP;
 	case INTEL_PCH_CMP_DEVICE_ID_TYPE:
 	case INTEL_PCH_CMP2_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Comet Lake PCH (CMP)\n");
-		WARN_ON(!IS_COFFEELAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm, !IS_COFFEELAKE(dev_priv));
 		/* CometPoint is CNP Compatible */
 		return PCH_CNP;
 	case INTEL_PCH_CMP_V_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Comet Lake V PCH (CMP-V)\n");
-		WARN_ON(!IS_COFFEELAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm, !IS_COFFEELAKE(dev_priv));
 		/* Comet Lake V PCH is based on KBP, which is SPT compatible */
 		return PCH_SPT;
 	case INTEL_PCH_ICP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Ice Lake PCH\n");
-		WARN_ON(!IS_ICELAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
 		return PCH_ICP;
 	case INTEL_PCH_MCC_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Mule Creek Canyon PCH\n");
-		WARN_ON(!IS_ELKHARTLAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm, !IS_ELKHARTLAKE(dev_priv));
 		return PCH_MCC;
 	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
 	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
-		WARN_ON(!IS_TIGERLAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm, !IS_TIGERLAKE(dev_priv));
 		return PCH_TGP;
 	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
 	case INTEL_PCH_JSP2_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
-		WARN_ON(!IS_ELKHARTLAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm, !IS_ELKHARTLAKE(dev_priv));
 		return PCH_JSP;
 	default:
 		return PCH_NONE;
@@ -188,7 +203,8 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 			pch_type = intel_pch_type(dev_priv, id);
 
 			/* Sanity check virtual PCH id */
-			if (WARN_ON(id && pch_type == PCH_NONE))
+			if (drm_WARN_ON(&dev_priv->drm,
+					id && pch_type == PCH_NONE))
 				id = 0;
 
 			dev_priv->pch_type = pch_type;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index bd2d30ecc030..bd0272a8debe 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -1977,8 +1977,8 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 	sprite1_start = fifo_state->plane[PLANE_SPRITE0] + sprite0_start;
 	fifo_size = fifo_state->plane[PLANE_SPRITE1] + sprite1_start;
 
-	WARN_ON(fifo_state->plane[PLANE_CURSOR] != 63);
-	WARN_ON(fifo_size != 511);
+	drm_WARN_ON(&dev_priv->drm, fifo_state->plane[PLANE_CURSOR] != 63);
+	drm_WARN_ON(&dev_priv->drm, fifo_size != 511);
 
 	trace_vlv_fifo_size(crtc, sprite0_start, sprite1_start, fifo_size);
 
@@ -3417,7 +3417,7 @@ static void ilk_compute_wm_results(struct drm_i915_private *dev_priv,
 		 * level is disabled. Doing otherwise could cause underruns.
 		 */
 		if (INTEL_GEN(dev_priv) <= 6 && r->spr_val) {
-			WARN_ON(wm_lp != 1);
+			drm_WARN_ON(&dev_priv->drm, wm_lp != 1);
 			results->wm_lp_spr[wm_lp - 1] = WM1S_LP_EN | r->spr_val;
 		} else
 			results->wm_lp_spr[wm_lp - 1] = r->spr_val;
@@ -3429,7 +3429,7 @@ static void ilk_compute_wm_results(struct drm_i915_private *dev_priv,
 		const struct intel_wm_level *r =
 			&intel_crtc->wm.active.ilk.wm[0];
 
-		if (WARN_ON(!r->enable))
+		if (drm_WARN_ON(&dev_priv->drm, !r->enable))
 			continue;
 
 		results->wm_linetime[pipe] = intel_crtc->wm.active.ilk.linetime;
@@ -3874,7 +3874,7 @@ static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv,
 	u64 total_data_bw;
 	u16 ddb_size = INTEL_INFO(dev_priv)->ddb_size;
 
-	WARN_ON(ddb_size == 0);
+	drm_WARN_ON(&dev_priv->drm, ddb_size == 0);
 
 	if (INTEL_GEN(dev_priv) < 11)
 		return ddb_size - 4; /* 4 blocks for bypass path allocation */
@@ -3917,7 +3917,7 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
 	u16 ddb_size;
 	u32 i;
 
-	if (WARN_ON(!state) || !crtc_state->hw.active) {
+	if (drm_WARN_ON(&dev_priv->drm, !state) || !crtc_state->hw.active) {
 		alloc->start = 0;
 		alloc->end = 0;
 		*num_active = hweight8(dev_priv->active_pipes);
@@ -4002,7 +4002,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 				    DRM_FORMAT_MOD_LINEAR,
 				    DRM_MODE_ROTATE_0,
 				    crtc_state->pixel_rate, &wp, 0);
-	WARN_ON(ret);
+	drm_WARN_ON(&dev_priv->drm, ret);
 
 	for (level = 0; level <= max_level; level++) {
 		skl_compute_plane_wm(crtc_state, level, &wp, &wm, &wm);
@@ -4294,7 +4294,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state,
 	memset(crtc_state->wm.skl.plane_ddb_y, 0, sizeof(crtc_state->wm.skl.plane_ddb_y));
 	memset(crtc_state->wm.skl.plane_ddb_uv, 0, sizeof(crtc_state->wm.skl.plane_ddb_uv));
 
-	if (WARN_ON(!state))
+	if (drm_WARN_ON(&dev_priv->drm, !state))
 		return 0;
 
 	if (!crtc_state->hw.active) {
@@ -4341,7 +4341,8 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state,
 
 			if (plane_id == PLANE_CURSOR) {
 				if (wm->wm[level].min_ddb_alloc > total[PLANE_CURSOR]) {
-					WARN_ON(wm->wm[level].min_ddb_alloc != U16_MAX);
+					drm_WARN_ON(&dev_priv->drm,
+						    wm->wm[level].min_ddb_alloc != U16_MAX);
 					blocks = U32_MAX;
 					break;
 				}
@@ -4406,7 +4407,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state,
 		alloc_size -= extra;
 		total_data_rate -= rate;
 	}
-	WARN_ON(alloc_size != 0 || total_data_rate != 0);
+	drm_WARN_ON(&dev_priv->drm, alloc_size != 0 || total_data_rate != 0);
 
 	/* Set the actual DDB start/end points for each plane */
 	start = alloc->start;
@@ -4420,7 +4421,8 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state,
 			continue;
 
 		/* Gen11+ uses a separate plane for UV watermarks */
-		WARN_ON(INTEL_GEN(dev_priv) >= 11 && uv_total[plane_id]);
+		drm_WARN_ON(&dev_priv->drm,
+			    INTEL_GEN(dev_priv) >= 11 && uv_total[plane_id]);
 
 		/* Leave disabled planes at (0,0) */
 		if (total[plane_id]) {
diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915/intel_sideband.c
index cbfb7171d62d..6de683ec884c 100644
--- a/drivers/gpu/drm/i915/intel_sideband.c
+++ b/drivers/gpu/drm/i915/intel_sideband.c
@@ -241,8 +241,9 @@ u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg)
 	 * FIXME: There might be some registers where all 1's is a valid value,
 	 * so ideally we should check the register offset instead...
 	 */
-	WARN(val == 0xffffffff, "DPIO read pipe %c reg 0x%x == 0x%x\n",
-	     pipe_name(pipe), reg, val);
+	drm_WARN(&i915->drm, val == 0xffffffff,
+		 "DPIO read pipe %c reg 0x%x == 0x%x\n",
+		 pipe_name(pipe), reg, val);
 
 	return val;
 }
@@ -525,7 +526,7 @@ int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
 	 */
 	drm_dbg_kms(&i915->drm,
 		    "PCODE timeout, retrying with preemption disabled\n");
-	WARN_ON_ONCE(timeout_base_ms > 3);
+	drm_WARN_ON_ONCE(&i915->drm, timeout_base_ms > 3);
 	preempt_disable();
 	ret = wait_for_atomic(COND, 50);
 	preempt_enable();
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 5f2cf6f43b8b..7a5a1461b9c0 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1613,7 +1613,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 #undef fw_domain_init
 
 	/* All future platforms are expected to require complex power gating */
-	WARN_ON(!ret && uncore->fw_domains == 0);
+	drm_WARN_ON(&i915->drm, !ret && uncore->fw_domains == 0);
 
 out:
 	if (ret)
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
