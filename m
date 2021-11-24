Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9535645B939
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A84A56E88D;
	Wed, 24 Nov 2021 11:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B76496E88D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235079341"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235079341"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="554152181"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 24 Nov 2021 03:37:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:45 +0200
Message-Id: <20211124113652.22090-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/20] drm/i915/fbc: Allocate intel_fbc
 dynamically
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

In the future we may have more than one FBC instance on some
platforms. So let's just allocate it dynamically. This also
lets us fully hide the implementation from prying eyes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      | 154 +++++++++++++-----
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  59 +------
 4 files changed, 116 insertions(+), 101 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 84f50c90728f..85950ff67609 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -125,7 +125,7 @@ static struct intel_fbc *i9xx_plane_fbc(struct drm_i915_private *dev_priv,
 					enum i9xx_plane_id i9xx_plane)
 {
 	if (i9xx_plane_has_fbc(dev_priv, i9xx_plane))
-		return &dev_priv->fbc;
+		return dev_priv->fbc;
 	else
 		return NULL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 9be8e7dcaab6..1daf4f7b5d80 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -59,6 +59,63 @@ struct intel_fbc_funcs {
 	void (*set_false_color)(struct intel_fbc *fbc, bool enable);
 };
 
+struct intel_fbc_state {
+	const char *no_fbc_reason;
+	enum i9xx_plane_id i9xx_plane;
+	unsigned int cfb_stride;
+	unsigned int cfb_size;
+	unsigned int fence_y_offset;
+	u16 override_cfb_stride;
+	u16 interval;
+	s8 fence_id;
+};
+
+struct intel_fbc {
+	struct drm_i915_private *i915;
+	const struct intel_fbc_funcs *funcs;
+
+	/*
+	 * This is always the inner lock when overlapping with
+	 * struct_mutex and it's the outer lock when overlapping
+	 * with stolen_lock.
+	 */
+	struct mutex lock;
+	unsigned int possible_framebuffer_bits;
+	unsigned int busy_bits;
+	struct intel_plane *plane;
+
+	struct drm_mm_node compressed_fb;
+	struct drm_mm_node compressed_llb;
+
+	u8 limit;
+
+	bool false_color;
+
+	bool active;
+	bool activated;
+	bool flip_pending;
+
+	bool underrun_detected;
+	struct work_struct underrun_work;
+
+	/*
+	 * Due to the atomic rules we can't access some structures without the
+	 * appropriate locking, so we cache information here in order to avoid
+	 * these problems.
+	 */
+	struct intel_fbc_state state_cache;
+
+	/*
+	 * This structure contains everything that's relevant to program the
+	 * hardware registers. When we want to figure out if we need to disable
+	 * and re-enable FBC for a new configuration we just check if there's
+	 * something different in the struct. The genx_fbc_activate functions
+	 * are supposed to read from it in order to program the registers.
+	 */
+	struct intel_fbc_state params;
+	const char *no_fbc_reason;
+};
+
 /* plane stride in pixels */
 static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane_state)
 {
@@ -762,14 +819,16 @@ static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
 
 void intel_fbc_cleanup(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = i915->fbc;
 
-	if (!HAS_FBC(i915))
+	if (!fbc)
 		return;
 
 	mutex_lock(&fbc->lock);
 	__intel_fbc_cleanup_cfb(fbc);
 	mutex_unlock(&fbc->lock);
+
+	kfree(fbc);
 }
 
 static bool stride_is_valid(const struct intel_plane_state *plane_state)
@@ -1319,9 +1378,9 @@ void intel_fbc_invalidate(struct drm_i915_private *i915,
 			  unsigned int frontbuffer_bits,
 			  enum fb_op_origin origin)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = i915->fbc;
 
-	if (!HAS_FBC(i915))
+	if (!fbc)
 		return;
 
 	if (origin == ORIGIN_FLIP || origin == ORIGIN_CURSOR_UPDATE)
@@ -1340,9 +1399,9 @@ void intel_fbc_invalidate(struct drm_i915_private *i915,
 void intel_fbc_flush(struct drm_i915_private *i915,
 		     unsigned int frontbuffer_bits, enum fb_op_origin origin)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = i915->fbc;
 
-	if (!HAS_FBC(i915))
+	if (!fbc)
 		return;
 
 	mutex_lock(&fbc->lock);
@@ -1484,9 +1543,9 @@ void intel_fbc_update(struct intel_atomic_state *state,
  */
 void intel_fbc_global_disable(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = i915->fbc;
 
-	if (!HAS_FBC(i915))
+	if (!fbc)
 		return;
 
 	mutex_lock(&fbc->lock);
@@ -1497,9 +1556,8 @@ void intel_fbc_global_disable(struct drm_i915_private *i915)
 
 static void intel_fbc_underrun_work_fn(struct work_struct *work)
 {
-	struct drm_i915_private *i915 =
-		container_of(work, struct drm_i915_private, fbc.underrun_work);
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = container_of(work, typeof(*fbc), underrun_work);
+	struct drm_i915_private *i915 = fbc->i915;
 
 	mutex_lock(&fbc->lock);
 
@@ -1524,9 +1582,9 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
  */
 void intel_fbc_reset_underrun(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = i915->fbc;
 
-	if (!HAS_FBC(i915))
+	if (!fbc)
 		return;
 
 	cancel_work_sync(&fbc->underrun_work);
@@ -1559,9 +1617,9 @@ void intel_fbc_reset_underrun(struct drm_i915_private *i915)
  */
 void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = i915->fbc;
 
-	if (!HAS_FBC(i915))
+	if (!fbc)
 		return;
 
 	/* There's no guarantee that underrun_detected won't be set to true
@@ -1621,35 +1679,17 @@ void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane)
 	fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
 }
 
-/**
- * intel_fbc_init - Initialize FBC
- * @i915: the i915 device
- *
- * This function might be called during PM init process.
- */
-void intel_fbc_init(struct drm_i915_private *i915)
+static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc;
+
+	fbc = kzalloc(sizeof(*fbc), GFP_KERNEL);
+	if (!fbc)
+		return NULL;
 
 	fbc->i915 = i915;
 	INIT_WORK(&fbc->underrun_work, intel_fbc_underrun_work_fn);
 	mutex_init(&fbc->lock);
-	fbc->active = false;
-
-	if (!drm_mm_initialized(&i915->mm.stolen))
-		mkwrite_device_info(i915)->display.has_fbc = false;
-
-	if (need_fbc_vtd_wa(i915))
-		mkwrite_device_info(i915)->display.has_fbc = false;
-
-	i915->params.enable_fbc = intel_sanitize_fbc_option(i915);
-	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
-		    i915->params.enable_fbc);
-
-	if (!HAS_FBC(i915)) {
-		fbc->no_fbc_reason = "unsupported by this chipset";
-		return;
-	}
 
 	if (DISPLAY_VER(i915) >= 7)
 		fbc->funcs = &ivb_fbc_funcs;
@@ -1664,11 +1704,43 @@ void intel_fbc_init(struct drm_i915_private *i915)
 	else
 		fbc->funcs = &i8xx_fbc_funcs;
 
+	return fbc;
+}
+
+/**
+ * intel_fbc_init - Initialize FBC
+ * @i915: the i915 device
+ *
+ * This function might be called during PM init process.
+ */
+void intel_fbc_init(struct drm_i915_private *i915)
+{
+	struct intel_fbc *fbc;
+
+	if (!drm_mm_initialized(&i915->mm.stolen))
+		mkwrite_device_info(i915)->display.has_fbc = false;
+
+	if (need_fbc_vtd_wa(i915))
+		mkwrite_device_info(i915)->display.has_fbc = false;
+
+	i915->params.enable_fbc = intel_sanitize_fbc_option(i915);
+	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
+		    i915->params.enable_fbc);
+
+	if (!HAS_FBC(i915))
+		return;
+
+	fbc = intel_fbc_create(i915);
+	if (!fbc)
+		return;
+
 	/* We still don't have any sort of hardware state readout for FBC, so
 	 * deactivate it in case the BIOS activated it to make sure software
 	 * matches the hardware state. */
 	if (intel_fbc_hw_is_active(fbc))
 		intel_fbc_hw_deactivate(fbc);
+
+	i915->fbc = fbc;
 }
 
 static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
@@ -1743,8 +1815,8 @@ static void intel_fbc_debugfs_add(struct intel_fbc *fbc)
 
 void intel_fbc_debugfs_register(struct drm_i915_private *i915)
 {
-	struct intel_fbc *fbc = &i915->fbc;
+	struct intel_fbc *fbc = i915->fbc;
 
-	if (HAS_FBC(i915))
+	if (fbc)
 		intel_fbc_debugfs_add(fbc);
 }
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 22ec6901ee30..980f23680842 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1820,7 +1820,7 @@ static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
 				       enum pipe pipe, enum plane_id plane_id)
 {
 	if (skl_plane_has_fbc(dev_priv, pipe, plane_id))
-		return &dev_priv->fbc;
+		return dev_priv->fbc;
 	else
 		return NULL;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f632b026ce34..12099f7ff98e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -399,64 +399,8 @@ struct drm_i915_display_funcs {
 	void (*commit_modeset_enables)(struct intel_atomic_state *state);
 };
 
-struct intel_fbc_funcs;
-
 #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
 
-struct intel_fbc_state {
-	const char *no_fbc_reason;
-	enum i9xx_plane_id i9xx_plane;
-	unsigned int cfb_stride;
-	unsigned int cfb_size;
-	unsigned int fence_y_offset;
-	u16 override_cfb_stride;
-	u16 interval;
-	s8 fence_id;
-};
-
-struct intel_fbc {
-	struct drm_i915_private *i915;
-	const struct intel_fbc_funcs *funcs;
-
-	/* This is always the inner lock when overlapping with struct_mutex and
-	 * it's the outer lock when overlapping with stolen_lock. */
-	struct mutex lock;
-	unsigned int possible_framebuffer_bits;
-	unsigned int busy_bits;
-	struct intel_plane *plane;
-
-	struct drm_mm_node compressed_fb;
-	struct drm_mm_node compressed_llb;
-
-	u8 limit;
-
-	bool false_color;
-
-	bool active;
-	bool activated;
-	bool flip_pending;
-
-	bool underrun_detected;
-	struct work_struct underrun_work;
-
-	/*
-	 * Due to the atomic rules we can't access some structures without the
-	 * appropriate locking, so we cache information here in order to avoid
-	 * these problems.
-	 */
-	struct intel_fbc_state state_cache;
-
-	/*
-	 * This structure contains everything that's relevant to program the
-	 * hardware registers. When we want to figure out if we need to disable
-	 * and re-enable FBC for a new configuration we just check if there's
-	 * something different in the struct. The genx_fbc_activate functions
-	 * are supposed to read from it in order to program the registers.
-	 */
-	struct intel_fbc_state params;
-	const char *no_fbc_reason;
-};
-
 /*
  * HIGH_RR is the highest eDP panel refresh rate read from EDID
  * LOW_RR is the lowest eDP panel refresh rate found from EDID
@@ -493,7 +437,6 @@ struct i915_drrs {
 #define QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK (1<<8)
 
 struct intel_fbdev;
-struct intel_fbc_work;
 
 struct intel_gmbus {
 	struct i2c_adapter adapter;
@@ -892,7 +835,7 @@ struct drm_i915_private {
 	u32 pipestat_irq_mask[I915_MAX_PIPES];
 
 	struct i915_hotplug hotplug;
-	struct intel_fbc fbc;
+	struct intel_fbc *fbc;
 	struct i915_drrs drrs;
 	struct intel_opregion opregion;
 	struct intel_vbt_data vbt;
-- 
2.32.0

