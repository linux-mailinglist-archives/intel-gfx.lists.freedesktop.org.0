Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 577BBA6A95C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 16:04:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF52410E644;
	Thu, 20 Mar 2025 15:04:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nVg6jfUz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6175410E644;
 Thu, 20 Mar 2025 15:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742483075; x=1774019075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hT8lwKfOv5E0Tm0946mNOYjuOHK36z2RaQnVgnJX/9w=;
 b=nVg6jfUzo+qr1NGgfIYQuVAulU5d32orV6IkgncV4kRkjAXwcHpqwqtm
 lkCj+/Ph7Z+douVCqMOK/yoVemW8oiKm++V/Wk1rmjUkgMxuVmHMvRiU4
 GFvtgIHUYeyPeybk5wSZaJTZTQ5kdRxVPLhDaobXaMgcxqUcYWnaFZ9kf
 xbY2J1rccdpQc7vXcJGgEuzi6yjzSZKMBOPDHWynYZV2xA3nAPBAKrwex
 Ty3K+BiEtGiPyyG4VVCOrelb3S05VghAyiIYJOT2qLqLVTZ8t182SGEWD
 vH7dtVttTFlTgSGfrI/dDX7PcMyMRfhGxsI2YzeCsevZ3bUYi3CEP9gMQ g==;
X-CSE-ConnectionGUID: 2ZZsvjHhTby1m/mUINqTlg==
X-CSE-MsgGUID: KGGNXeFvSmCt4BKUq4WkpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="54384748"
X-IronPort-AV: E=Sophos;i="6.14,262,1736841600"; d="scan'208";a="54384748"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 08:04:23 -0700
X-CSE-ConnectionGUID: YFLCGKLwSnahbNhk4LB3LQ==
X-CSE-MsgGUID: lrO4hbY7RtWsWXElM18mAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,262,1736841600"; d="scan'208";a="128218117"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 08:04:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 4/6] drm/i915/display: convert to display runtime PM interfaces
Date: Thu, 20 Mar 2025 17:03:58 +0200
Message-Id: <494d0bd0348e4aa99560f1aed21aaaff31706c44.1742483007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742483007.git.jani.nikula@intel.com>
References: <cover.1742483007.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Convert i915 runtime PM interfaces to display runtime PM interfaces all
over the place in display code.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c          |  8 ++++----
 .../drm/i915/display/intel_display_debugfs.c    | 17 +++++++----------
 .../gpu/drm/i915/display/intel_display_irq.c    |  5 +++--
 drivers/gpu/drm/i915/display/intel_dmc.c        |  9 +++++----
 drivers/gpu/drm/i915/display/intel_dp.c         |  5 ++---
 drivers/gpu/drm/i915/display/intel_dpt.c        |  7 ++++---
 drivers/gpu/drm/i915/display/intel_dsb.c        | 17 +++++++++--------
 drivers/gpu/drm/i915/display/intel_fb_pin.c     |  7 ++++---
 drivers/gpu/drm/i915/display/intel_fbc.c        |  8 ++++----
 drivers/gpu/drm/i915/display/intel_fbdev.c      | 11 +++++++----
 drivers/gpu/drm/i915/display/intel_hotplug.c    |  8 +++++---
 drivers/gpu/drm/i915/display/intel_psr.c        | 17 ++++++-----------
 12 files changed, 60 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 674a0e5f0858..4307e2ed03d9 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -10,6 +10,7 @@
 #include "i915_reg.h"
 #include "intel_color_regs.h"
 #include "intel_de.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_pcode.h"
 
@@ -344,10 +345,9 @@ static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct intel_crtc *crtc = m->private;
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+	wakeref = intel_display_rpm_get(display);
 
 	seq_printf(m, "Enabled by kernel parameter: %s\n",
 		   str_yes_no(display->params.enable_ips));
@@ -361,7 +361,7 @@ static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
 			seq_puts(m, "Currently: disabled\n");
 	}
 
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index fdedf65bee53..c4b3716f9506 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -24,6 +24,7 @@
 #include "intel_display_debugfs_params.h"
 #include "intel_display_power.h"
 #include "intel_display_power_well.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
@@ -580,13 +581,12 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 static int i915_display_info(struct seq_file *m, void *unused)
 {
 	struct intel_display *display = node_to_intel_display(m->private);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+	wakeref = intel_display_rpm_get(display);
 
 	drm_modeset_lock_all(display->drm);
 
@@ -605,7 +605,7 @@ static int i915_display_info(struct seq_file *m, void *unused)
 
 	drm_modeset_unlock_all(display->drm);
 
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 
 	return 0;
 }
@@ -690,14 +690,11 @@ static bool
 intel_lpsp_power_well_enabled(struct intel_display *display,
 			      enum i915_power_well_id power_well_id)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-	intel_wakeref_t wakeref;
 	bool is_enabled;
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
-	is_enabled = intel_display_power_well_is_enabled(display,
-							 power_well_id);
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	with_intel_display_rpm(display)
+		is_enabled = intel_display_power_well_is_enabled(display,
+								 power_well_id);
 
 	return is_enabled;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index aa23bb817805..246981a7340e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -14,6 +14,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
+#include "intel_display_rpm.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_dmc_wl.h"
@@ -1545,7 +1546,7 @@ void gen11_display_irq_handler(struct drm_i915_private *i915)
 	struct intel_display *display = &i915->display;
 	u32 disp_ctl;
 
-	disable_rpm_wakeref_asserts(&i915->runtime_pm);
+	intel_display_rpm_assert_block(display);
 	/*
 	 * GEN11_DISPLAY_INT_CTL has same format as GEN8_MASTER_IRQ
 	 * for the display related bits.
@@ -1556,7 +1557,7 @@ void gen11_display_irq_handler(struct drm_i915_private *i915)
 	gen8_de_irq_handler(i915, disp_ctl);
 	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 
-	enable_rpm_wakeref_asserts(&i915->runtime_pm);
+	intel_display_rpm_assert_unblock(display);
 }
 
 static void i915gm_irq_cstate_wa_enable(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index fa6944e55d95..eb6b47ba0870 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -28,6 +28,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
+#include "intel_display_rpm.h"
 #include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_step.h"
@@ -595,7 +596,7 @@ void intel_dmc_load_program(struct intel_display *display)
 
 	disable_all_event_handlers(display);
 
-	assert_rpm_wakelock_held(&i915->runtime_pm);
+	assert_display_rpm_held(display);
 
 	preempt_disable();
 
@@ -1237,13 +1238,13 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	struct intel_display *display = m->private;
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dmc *dmc = display_to_dmc(display);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
 
 	if (!HAS_DMC(display))
 		return -ENODEV;
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+	wakeref = intel_display_rpm_get(display);
 
 	seq_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));
 	seq_printf(m, "fw loaded: %s\n",
@@ -1299,7 +1300,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 		   intel_de_read(display, DMC_SSP_BASE));
 	seq_printf(m, "htp: 0x%08x\n", intel_de_read(display, DMC_HTP_SKL));
 
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a236b5fc7a3d..0d5f31d552cb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -62,6 +62,7 @@
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_driver.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
@@ -87,7 +88,6 @@
 #include "intel_pfit.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
-#include "intel_runtime_pm.h"
 #include "intel_quirks.h"
 #include "intel_tc.h"
 #include "intel_vdsc.h"
@@ -6144,13 +6144,12 @@ enum irqreturn
 intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 {
 	struct intel_display *display = to_intel_display(dig_port);
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_dp *intel_dp = &dig_port->dp;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
 
 	if (dig_port->base.type == INTEL_OUTPUT_EDP &&
 	    (long_hpd ||
-	     intel_runtime_pm_suspended(&i915->runtime_pm) ||
+	     intel_display_rpm_suspended(display) ||
 	     !intel_pps_have_panel_power_or_vdd(intel_dp))) {
 		/*
 		 * vdd off can generate a long/short pulse on eDP which
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 0d8ebe38226e..43bd97e4f589 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -9,6 +9,7 @@
 #include "gt/gen8_ppgtt.h"
 
 #include "i915_drv.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
@@ -127,7 +128,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 	struct drm_i915_private *i915 = vm->i915;
 	struct intel_display *display = &i915->display;
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	struct i915_vma *vma;
 	void __iomem *iomem;
 	struct i915_gem_ww_ctx ww;
@@ -137,7 +138,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 	if (i915_gem_object_is_stolen(dpt->obj))
 		pin_flags |= PIN_MAPPABLE;
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+	wakeref = intel_display_rpm_get(display);
 	atomic_inc(&display->restore.pending_fb_pin);
 
 	for_i915_gem_ww(&ww, err, true) {
@@ -169,7 +170,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 	dpt->obj->mm.dirty = true;
 
 	atomic_dec(&display->restore.pending_fb_pin);
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 
 	return err ? ERR_PTR(err) : vma;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 9fc4003d1579..0ddcdedf5453 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -11,6 +11,7 @@
 #include "i915_reg.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dsb.h"
 #include "intel_dsb_buffer.h"
@@ -795,22 +796,22 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 				    enum intel_dsb_id dsb_id,
 				    unsigned int max_cmds)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	intel_wakeref_t wakeref;
+	struct intel_display *display = to_intel_display(state);
+	struct ref_tracker *wakeref;
 	struct intel_dsb *dsb;
 	unsigned int size;
 
-	if (!HAS_DSB(i915))
+	if (!HAS_DSB(display))
 		return NULL;
 
-	if (!i915->display.params.enable_dsb)
+	if (!display->params.enable_dsb)
 		return NULL;
 
 	dsb = kzalloc(sizeof(*dsb), GFP_KERNEL);
 	if (!dsb)
 		goto out;
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+	wakeref = intel_display_rpm_get(display);
 
 	/* ~1 qword per instruction, full cachelines */
 	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
@@ -818,7 +819,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	if (!intel_dsb_buffer_create(crtc, &dsb->dsb_buf, size))
 		goto out_put_rpm;
 
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 
 	dsb->id = dsb_id;
 	dsb->crtc = crtc;
@@ -831,10 +832,10 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	return dsb;
 
 out_put_rpm:
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 	kfree(dsb);
 out:
-	drm_info_once(&i915->drm,
+	drm_info_once(display->drm,
 		      "[CRTC:%d:%s] DSB %d queue setup failed, will fallback to MMIO for display HW programming\n",
 		      crtc->base.base.id, crtc->base.name, dsb_id);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 30ac9b089ad6..c648ab8a93d7 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -12,6 +12,7 @@
 
 #include "i915_drv.h"
 #include "intel_atomic_plane.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
@@ -117,7 +118,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_gem_object *_obj = intel_fb_bo(fb);
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
 	unsigned int pinctl;
@@ -136,7 +137,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	 * intel_runtime_pm_put(), so it is correct to wrap only the
 	 * pin/unpin/fence and not more.
 	 */
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+	wakeref = intel_display_rpm_get(display);
 
 	atomic_inc(&display->restore.pending_fb_pin);
 
@@ -215,7 +216,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 		vma = ERR_PTR(ret);
 
 	atomic_dec(&display->restore.pending_fb_pin);
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 	return vma;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b6978135e8ad..4f9b4fc526ea 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -55,6 +55,7 @@
 #include "intel_cdclk.h"
 #include "intel_de.h"
 #include "intel_display_device.h"
+#include "intel_display_rpm.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_display_wa.h"
@@ -2120,13 +2121,12 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct intel_fbc *fbc = m->private;
 	struct intel_display *display = fbc->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_plane *plane;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
 	drm_modeset_lock_all(display->drm);
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+	wakeref = intel_display_rpm_get(display);
 	mutex_lock(&fbc->lock);
 
 	if (fbc->active) {
@@ -2151,7 +2151,7 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
 	}
 
 	mutex_unlock(&fbc->lock);
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 
 	drm_modeset_unlock_all(display->drm);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index adc19d5607de..369f46286e95 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -50,6 +50,7 @@
 #include "i915_drv.h"
 #include "i915_vma.h"
 #include "intel_bo.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
@@ -213,7 +214,8 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 	struct intel_framebuffer *fb = ifbdev->fb;
 	struct drm_device *dev = helper->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	intel_wakeref_t wakeref;
+	struct intel_display *display = to_intel_display(dev);
+	struct ref_tracker *wakeref;
 	struct fb_info *info;
 	struct i915_vma *vma;
 	unsigned long flags = 0;
@@ -247,7 +249,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 		sizes->fb_height = fb->base.height;
 	}
 
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+	wakeref = intel_display_rpm_get(display);
 
 	/* Pin the GGTT vma for our access via info->screen_base.
 	 * This also validates that any existing fb inherited from the
@@ -299,14 +301,15 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 	ifbdev->vma = vma;
 	ifbdev->vma_flags = flags;
 
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 
 	return 0;
 
 out_unpin:
 	intel_fb_unpin_vma(vma, flags);
 out_unlock:
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index c69b1f5fd160..4d05dde64aa8 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -30,6 +30,7 @@
 #include "i915_irq.h"
 #include "intel_connector.h"
 #include "intel_display_power.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
@@ -267,12 +268,13 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 	struct drm_i915_private *dev_priv =
 		container_of(work, typeof(*dev_priv),
 			     display.hotplug.reenable_work.work);
+	struct intel_display *display = &dev_priv->display;
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	enum hpd_pin pin;
 
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+	wakeref = intel_display_rpm_get(display);
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
@@ -300,7 +302,7 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 }
 
 static enum intel_hotplug_state
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4e938bad808c..50a22cd8d84a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -36,6 +36,7 @@
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
@@ -3728,10 +3729,9 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	struct intel_psr *psr = &intel_dp->psr;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool enabled;
 	u32 val, psr2_ctl;
 
@@ -3740,7 +3740,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	if (!(psr->sink_support || psr->sink_panel_replay_support))
 		return 0;
 
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+	wakeref = intel_display_rpm_get(display);
 	mutex_lock(&psr->lock);
 
 	intel_psr_print_mode(intel_dp, m);
@@ -3822,7 +3822,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 
 unlock:
 	mutex_unlock(&psr->lock);
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 
 	return 0;
 }
@@ -3853,9 +3853,7 @@ static int
 i915_edp_psr_debug_set(void *data, u64 val)
 {
 	struct intel_display *display = data;
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder;
-	intel_wakeref_t wakeref;
 	int ret = -ENODEV;
 
 	if (!HAS_PSR(display))
@@ -3866,12 +3864,9 @@ i915_edp_psr_debug_set(void *data, u64 val)
 
 		drm_dbg_kms(display->drm, "Setting PSR debug to %llx\n", val);
 
-		wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
-
 		// TODO: split to each transcoder's PSR debug state
-		ret = intel_psr_debug_set(intel_dp, val);
-
-		intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+		with_intel_display_rpm(display)
+			ret = intel_psr_debug_set(intel_dp, val);
 	}
 
 	return ret;
-- 
2.39.5

