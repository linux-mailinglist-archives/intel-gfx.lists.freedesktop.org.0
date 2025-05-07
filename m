Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB96AADB92
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 11:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D66E10E778;
	Wed,  7 May 2025 09:38:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F++Aqrx7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E3B10E785;
 Wed,  7 May 2025 09:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746610738; x=1778146738;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1cgLlJ5CPGEbsiNL1KkvkxZ5lL9LspAgFqmxT+CxNSw=;
 b=F++Aqrx74/b/BFNDSBsn781V2S/gzYCJ3oK2/k4hcg7GwadBSOAIzrQ1
 vWJlbexed9jLsYA3PsI5zkIeIdeVVY5Lk/eTix+Rc+gR+kTxYpoZWgZit
 jztcn5+ZkBlrEvO58twQoMHiqMkgwliBT0AIMx9wwBZWZ8Ukd6heV/mkw
 KLoY7pfeit5nUKenwL/7jt6L1MxkWqiNNJHnp3MQbklWql8CLRG+vECjf
 7adHH2SMgGnCAdulE7n2Su7BX6h7M70hpefDFQh9rkLsWjryDt89En0xv
 ch7YMrbOhGAgsaDZXLYBy9pGMU2VTvQpOrxkKKiUnRryh9b4AkKf0ZTQf A==;
X-CSE-ConnectionGUID: bc59YtJdSeGeQV5rQ6KkPw==
X-CSE-MsgGUID: 2Fd6cEEySk65tT5KkAHZuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59727229"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="59727229"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 02:38:58 -0700
X-CSE-ConnectionGUID: UMZNt2JCQt67+b4OKgeq+g==
X-CSE-MsgGUID: aRATMlwFRbKrHniEHOL13Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="159194306"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 02:38:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/4] drm/{i915,
 xe}: convert i915 and xe display members into pointers
Date: Wed,  7 May 2025 12:38:36 +0300
Message-Id: <d70bb3237430766071148977c128492a8711bec3.1746610602.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746610601.git.jani.nikula@intel.com>
References: <cover.1746610601.git.jani.nikula@intel.com>
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

As the first step towards making struct intel_display an opaque pointer
in i915 and xe drivers, convert the struct drm_i915_private and struct
xe_device display members into pointers.

Initially, add temporary struct intel_display __display members, and
point display at it to avoid dynamic allocation. In the future, we can
drop this, and switch to dynamic allocation.

The conversion is done simply with sed:

sed -i 's/&\([a-zA-Z0-9_>.-]*\)\(dev_priv\|i915\|xe\)->display\([^.]\)/\1\2->display\3/g' \
    $(git ls-files -- drivers/gpu/drm/i915 drivers/gpu/drm/xe)

sed -i 's/\(dev_priv\|i915\|xe\)->display\./\1->display->/g' \
    $(git ls-files -- drivers/gpu/drm/i915 drivers/gpu/drm/xe)

With a couple of manual tweaks on top.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../i915/display/intel_display_conversion.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  2 +-
 .../i915/gem/i915_gem_object_frontbuffer.h    |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  4 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  4 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  4 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  6 +--
 drivers/gpu/drm/i915/gvt/display.c            | 10 ++--
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |  6 +--
 drivers/gpu/drm/i915/gvt/handlers.c           |  8 +--
 drivers/gpu/drm/i915/i915_driver.c            | 41 ++++++++-------
 drivers/gpu/drm/i915/i915_drv.h               |  3 +-
 drivers/gpu/drm/i915/i915_getparam.c          |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  2 +-
 drivers/gpu/drm/i915/i915_irq.c               | 50 +++++++++---------
 drivers/gpu/drm/i915/intel_clock_gating.c     |  2 +-
 drivers/gpu/drm/xe/display/xe_display.c       | 51 ++++++++++---------
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  2 +-
 drivers/gpu/drm/xe/xe_device_types.h          |  3 +-
 21 files changed, 108 insertions(+), 100 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.c b/drivers/gpu/drm/i915/display/intel_display_conversion.c
index 0578b68404da..151d83fdbe37 100644
--- a/drivers/gpu/drm/i915/display/intel_display_conversion.c
+++ b/drivers/gpu/drm/i915/display/intel_display_conversion.c
@@ -5,7 +5,7 @@
 
 struct intel_display *__i915_to_display(struct drm_i915_private *i915)
 {
-	return &i915->display;
+	return i915->display;
 }
 
 struct intel_display *__drm_to_display(struct drm_device *drm)
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 43bd97e4f589..8684cf8e4b7f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -126,7 +126,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 				       unsigned int alignment)
 {
 	struct drm_i915_private *i915 = vm->i915;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
 	struct ref_tracker *wakeref;
 	struct i915_vma *vma;
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index e9b809568cd4..92c04811aa28 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -446,7 +446,7 @@ enum vbt_gmbus_ddi {
  * basically any of the fields to ensure the correct interpretation for the BDB
  * version in question.
  *
- * When we copy the child device configs to dev_priv->display.vbt.child_dev, we
+ * When we copy the child device configs to display->vbt.child_dev, we
  * reserve space for the full structure below, and initialize the tail not
  * actually present in VBT to zeros. Accessing those fields is fine, as long as
  * the default zero is taken into account, again according to the BDB version.
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
index 9fbf14867a2a..b6dc3d1b9bb1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
@@ -77,7 +77,7 @@ i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
  * Set object's frontbuffer pointer. If frontbuffer is already set for the
  * object keep it and return it's pointer to the caller. Please note that RCU
  * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer. This
- * function is protected by i915->display.fb_tracking.lock
+ * function is protected by i915->display->fb_tracking.lock
  *
  * Return: pointer to frontbuffer which was set.
  */
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 0c723e7c71a2..889e61843ff3 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -328,7 +328,7 @@ static bool fence_is_active(const struct i915_fence_reg *fence)
 
 static struct i915_fence_reg *fence_find(struct i915_ggtt *ggtt)
 {
-	struct intel_display *display = &ggtt->vm.i915->display;
+	struct intel_display *display = ggtt->vm.i915->display;
 	struct i915_fence_reg *active = NULL;
 	struct i915_fence_reg *fence, *fn;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 3182f19b9837..3b77b4bb88e3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -70,7 +70,7 @@ static int __gt_unpark(struct intel_wakeref *wf)
 {
 	struct intel_gt *gt = container_of(wf, typeof(*gt), wakeref);
 	struct drm_i915_private *i915 = gt->i915;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	GT_TRACE(gt, "\n");
 
@@ -104,7 +104,7 @@ static int __gt_park(struct intel_wakeref *wf)
 	struct intel_gt *gt = container_of(wf, typeof(*gt), wakeref);
 	intel_wakeref_t wakeref = fetch_and_zero(&gt->awake);
 	struct drm_i915_private *i915 = gt->i915;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	GT_TRACE(gt, "\n");
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index dbdcfe130ad4..971fbff1211c 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1205,7 +1205,7 @@ void intel_gt_reset(struct intel_gt *gt,
 		    intel_engine_mask_t stalled_mask,
 		    const char *reason)
 {
-	struct intel_display *display = &gt->i915->display;
+	struct intel_display *display = gt->i915->display;
 	intel_engine_mask_t awake;
 	int ret;
 
@@ -1423,7 +1423,7 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 	/* Use a watchdog to ensure that our reset completes */
 	intel_wedge_on_timeout(&w, gt, 60 * HZ) {
 		struct drm_i915_private *i915 = gt->i915;
-		struct intel_display *display = &i915->display;
+		struct intel_display *display = i915->display;
 		bool need_display_reset;
 		bool reset_display;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 5abc5fcc2514..4c8d172975b9 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -550,7 +550,7 @@ static unsigned int init_emon(struct intel_uncore *uncore)
 static bool gen5_rps_enable(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_uncore *uncore = rps_to_uncore(rps);
 	u8 fstart, vstart;
 	u32 rgvmodectl;
@@ -620,7 +620,7 @@ static bool gen5_rps_enable(struct intel_rps *rps)
 static void gen5_rps_disable(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_uncore *uncore = rps_to_uncore(rps);
 	u16 rgvswctl;
 
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index f25ee2953baf..2b5094e8de5e 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -1286,7 +1286,7 @@ static int gen8_decode_mi_display_flip(struct parser_exec_state *s,
 		struct mi_display_flip_command_info *info)
 {
 	struct drm_i915_private *dev_priv = s->engine->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct plane_code_mapping gen8_plane_code[] = {
 		[0] = {PIPE_A, PLANE_A, PRIMARY_A_FLIP_DONE},
 		[1] = {PIPE_B, PLANE_A, PRIMARY_B_FLIP_DONE},
@@ -1333,7 +1333,7 @@ static int skl_decode_mi_display_flip(struct parser_exec_state *s,
 		struct mi_display_flip_command_info *info)
 {
 	struct drm_i915_private *dev_priv = s->engine->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_vgpu *vgpu = s->vgpu;
 	u32 dword0 = cmd_val(s, 0);
 	u32 dword1 = cmd_val(s, 1);
@@ -1421,7 +1421,7 @@ static int gen8_update_plane_mmio_from_mi_display_flip(
 		struct mi_display_flip_command_info *info)
 {
 	struct drm_i915_private *dev_priv = s->engine->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_vgpu *vgpu = s->vgpu;
 
 	set_mask_bits(&vgpu_vreg_t(vgpu, info->surf_reg), GENMASK(31, 12),
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 1e1af5e545a4..b77e8f3ff75c 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -69,7 +69,7 @@ static int get_edp_pipe(struct intel_vgpu *vgpu)
 static int edp_pipe_is_enabled(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	if (!(vgpu_vreg_t(vgpu, TRANSCONF(display, TRANSCODER_EDP)) & TRANSCONF_ENABLE))
 		return 0;
@@ -82,7 +82,7 @@ static int edp_pipe_is_enabled(struct intel_vgpu *vgpu)
 int pipe_is_enabled(struct intel_vgpu *vgpu, int pipe)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	if (drm_WARN_ON(&dev_priv->drm,
 			pipe < PIPE_A || pipe >= I915_MAX_PIPES))
@@ -183,7 +183,7 @@ static u8 dpcd_fix_data[DPCD_HEADER_SIZE] = {
 static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	int pipe;
 
 	if (IS_BROXTON(dev_priv)) {
@@ -634,7 +634,7 @@ void vgpu_update_vblank_emulation(struct intel_vgpu *vgpu, bool turnon)
 static void emulate_vblank_on_pipe(struct intel_vgpu *vgpu, int pipe)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_vgpu_irq *irq = &vgpu->irq;
 	int vblank_event[] = {
 		[PIPE_A] = PIPE_A_VBLANK,
@@ -664,7 +664,7 @@ static void emulate_vblank_on_pipe(struct intel_vgpu *vgpu, int pipe)
 void intel_vgpu_emulate_vblank(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	int pipe;
 
 	mutex_lock(&vgpu->vgpu_lock);
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index f9f7ef131371..4cfe8d7f368d 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -154,7 +154,7 @@ static u32 intel_vgpu_get_stride(struct intel_vgpu *vgpu, int pipe,
 	u32 tiled, int stride_mask, int bpp)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	u32 stride_reg = vgpu_vreg_t(vgpu, DSPSTRIDE(display, pipe)) & stride_mask;
 	u32 stride = stride_reg;
@@ -211,7 +211,7 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 	struct intel_vgpu_primary_plane_format *plane)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 val, fmt;
 	int pipe;
 
@@ -342,7 +342,7 @@ int intel_vgpu_decode_cursor_plane(struct intel_vgpu *vgpu,
 	struct intel_vgpu_cursor_plane_format *plane)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 val, mode, index;
 	u32 alpha_plane, alpha_force;
 	int pipe;
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 1344e6d20a34..11cb8bf1fa4a 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -658,7 +658,7 @@ static u32 skl_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum port port;
 	u32 dp_br, link_m, link_n, htotal, vtotal;
 
@@ -1022,7 +1022,7 @@ static int pri_surf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 pipe = DSPSURF_TO_PIPE(display, offset);
 	int event = SKL_FLIP_EVENT(pipe, PLANE_PRIMARY);
 
@@ -1064,7 +1064,7 @@ static int reg50080_mmio_write(struct intel_vgpu *vgpu,
 			       unsigned int bytes)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe = REG_50080_TO_PIPE(offset);
 	enum plane_id plane = REG_50080_TO_PLANE(offset);
 	int event = SKL_FLIP_EVENT(pipe, plane);
@@ -2200,7 +2200,7 @@ static int csfe_chicken1_mmio_write(struct intel_vgpu *vgpu,
 static int init_generic_mmio_info(struct intel_gvt *gvt)
 {
 	struct drm_i915_private *dev_priv = gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	int ret;
 
 	MMIO_RING_DFH(RING_IMR, D_ALL, 0, NULL,
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 9dcd99ca7b4a..6cf8877e1d9d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -115,7 +115,7 @@ static const struct drm_driver i915_drm_driver;
 
 static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	/*
 	 * The i915 workqueue is primarily used for batched retirement of
@@ -163,7 +163,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 
 static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	destroy_workqueue(dev_priv->unordered_wq);
 	destroy_workqueue(display->hotplug.dp_wq);
@@ -226,7 +226,7 @@ static void sanitize_gpu(struct drm_i915_private *i915)
  */
 static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	int ret = 0;
 
 	if (i915_inject_probe_failure(dev_priv))
@@ -289,7 +289,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	intel_irq_fini(dev_priv);
 	intel_power_domains_cleanup(display);
@@ -317,7 +317,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
  */
 static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_gt *gt;
 	int ret, i;
 
@@ -464,7 +464,7 @@ static int i915_pcode_init(struct drm_i915_private *i915)
  */
 static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	int ret;
 
@@ -603,7 +603,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 
 	i915_perf_fini(dev_priv);
@@ -623,7 +623,7 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
  */
 static int i915_driver_register(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_gt *gt;
 	unsigned int i;
 	int ret;
@@ -674,7 +674,7 @@ static int i915_driver_register(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_gt *gt;
 	unsigned int i;
 
@@ -760,6 +760,9 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, match_info);
 
+	/* TODO: Allocate display dynamically. */
+	i915->display = &i915->__display;
+
 	intel_display_device_probe(pdev);
 
 	return i915;
@@ -794,7 +797,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return PTR_ERR(i915);
 	}
 
-	display = &i915->display;
+	display = i915->display;
 
 	ret = i915_driver_early_probe(i915);
 	if (ret < 0)
@@ -886,7 +889,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 void i915_driver_remove(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	intel_wakeref_t wakeref;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
@@ -919,7 +922,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
 static void i915_driver_release(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	intel_wakeref_t wakeref;
 
@@ -973,7 +976,7 @@ static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
 
 void i915_driver_shutdown(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 	intel_runtime_pm_disable(&i915->runtime_pm);
@@ -1053,7 +1056,7 @@ static int i915_drm_prepare(struct drm_device *dev)
 static int i915_drm_suspend(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	pci_power_t opregion_target_state;
 
@@ -1103,7 +1106,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct intel_gt *gt;
@@ -1175,7 +1178,7 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
 static int i915_drm_resume(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_gt *gt;
 	int ret, i;
 
@@ -1260,7 +1263,7 @@ static int i915_drm_resume(struct drm_device *dev)
 static int i915_drm_resume_early(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_gt *gt;
 	int ret, i;
@@ -1492,7 +1495,7 @@ static int i915_pm_restore(struct device *kdev)
 static int intel_runtime_suspend(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct pci_dev *root_pdev;
@@ -1591,7 +1594,7 @@ static int intel_runtime_suspend(struct device *kdev)
 static int intel_runtime_resume(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct pci_dev *root_pdev;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d0e1980dcba2..e786a1a51f49 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -177,7 +177,8 @@ struct i915_selftest_stash {
 struct drm_i915_private {
 	struct drm_device drm;
 
-	struct intel_display display;
+	struct intel_display *display;
+	struct intel_display __display; /* Transitional. Do not use directly. */
 
 	/* FIXME: Device release actions should all be moved to drmm_ */
 	bool do_release;
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index be8149e46281..6fcda6d7b5b7 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -16,7 +16,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file_priv)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	const struct sseu_dev_info *sseu = &to_gt(i915)->info.sseu;
 	drm_i915_getparam_t *param = data;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 4f785cdbd155..f434b6825fc2 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -2067,7 +2067,7 @@ static struct i915_gpu_coredump *
 __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
 {
 	struct drm_i915_private *i915 = gt->i915;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct i915_gpu_coredump *error;
 
 	/* Check if GPU capture has been disabled */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 95042879bec4..ad0af5c9475a 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -230,7 +230,7 @@ static void ivb_parity_work(struct work_struct *work)
 static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	irqreturn_t ret = IRQ_NONE;
 
 	if (!intel_irqs_enabled(dev_priv))
@@ -324,7 +324,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	irqreturn_t ret = IRQ_NONE;
 
 	if (!intel_irqs_enabled(dev_priv))
@@ -418,7 +418,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 static irqreturn_t ilk_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
 	u32 de_iir, gt_iir, de_ier, sde_ier = 0;
 	irqreturn_t ret = IRQ_NONE;
@@ -507,7 +507,7 @@ static inline void gen8_master_intr_enable(void __iomem * const regs)
 static irqreturn_t gen8_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	void __iomem * const regs = intel_uncore_regs(&dev_priv->uncore);
 	u32 master_ctl;
 
@@ -558,7 +558,7 @@ static inline void gen11_master_intr_enable(void __iomem * const regs)
 static irqreturn_t gen11_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
 	struct intel_gt *gt = to_gt(i915);
 	u32 master_ctl;
@@ -616,7 +616,7 @@ static inline void dg1_master_intr_enable(void __iomem * const regs)
 static irqreturn_t dg1_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private * const i915 = arg;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_gt *gt = to_gt(i915);
 	void __iomem * const regs = intel_uncore_regs(gt->uncore);
 	u32 master_tile_ctl, master_ctl;
@@ -660,7 +660,7 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
 
 static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	gen2_irq_reset(uncore, DE_IRQ_REGS);
@@ -681,7 +681,7 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 
 static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, 0);
 	intel_uncore_posting_read(&dev_priv->uncore, VLV_MASTER_IER);
@@ -693,7 +693,7 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
 
 static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	gen8_master_intr_disable(intel_uncore_regs(uncore));
@@ -705,7 +705,7 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 
 static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_gt *gt = to_gt(dev_priv);
 	struct intel_uncore *uncore = gt->uncore;
 
@@ -720,7 +720,7 @@ static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 
 static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	struct intel_gt *gt;
 	unsigned int i;
@@ -740,7 +740,7 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 
 static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	intel_uncore_write(uncore, GEN8_MASTER_IRQ, 0);
@@ -755,7 +755,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 
 static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	gen5_gt_irq_postinstall(to_gt(dev_priv));
 
@@ -764,7 +764,7 @@ static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	gen5_gt_irq_postinstall(to_gt(dev_priv));
 
@@ -776,7 +776,7 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	gen8_gt_irq_postinstall(to_gt(dev_priv));
 	gen8_de_irq_postinstall(display);
@@ -786,7 +786,7 @@ static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_gt *gt = to_gt(dev_priv);
 	struct intel_uncore *uncore = gt->uncore;
 	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
@@ -802,7 +802,7 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
 	struct intel_gt *gt;
@@ -821,7 +821,7 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	gen8_gt_irq_postinstall(to_gt(dev_priv));
 
@@ -894,7 +894,7 @@ static void i9xx_error_irq_handler(struct drm_i915_private *dev_priv,
 
 static void i915_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	i9xx_display_irq_reset(display);
@@ -906,7 +906,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
 
 static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
@@ -941,7 +941,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 static irqreturn_t i915_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	irqreturn_t ret = IRQ_NONE;
 
 	if (!intel_irqs_enabled(dev_priv))
@@ -996,7 +996,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 
 static void i965_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	i9xx_display_irq_reset(display);
@@ -1027,7 +1027,7 @@ static u32 i965_error_mask(struct drm_i915_private *i915)
 
 static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
@@ -1059,7 +1059,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 static irqreturn_t i965_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	irqreturn_t ret = IRQ_NONE;
 
 	if (!intel_irqs_enabled(dev_priv))
@@ -1265,7 +1265,7 @@ int intel_irq_install(struct drm_i915_private *dev_priv)
  */
 void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	int irq = to_pci_dev(dev_priv->drm.dev)->irq;
 
 	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->irqs_enabled))
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index f55c7b68f23e..833ea791f707 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -201,7 +201,7 @@ static void ilk_init_clock_gating(struct drm_i915_private *i915)
 
 static void cpt_init_clock_gating(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	enum pipe pipe;
 	u32 val;
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index b8030492fbd1..699f401eff10 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -38,7 +38,7 @@
 
 static bool has_display(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	return HAS_DISPLAY(display);
 }
@@ -86,7 +86,7 @@ static void unset_display_features(struct xe_device *xe)
 static void display_destroy(struct drm_device *dev, void *dummy)
 {
 	struct xe_device *xe = to_xe_device(dev);
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	destroy_workqueue(display->hotplug.dp_wq);
 }
@@ -104,7 +104,10 @@ static void display_destroy(struct drm_device *dev, void *dummy)
  */
 int xe_display_create(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	/* TODO: Allocate display dynamically. */
+	struct intel_display *display = &xe->__display;
+
+	xe->display = &xe->__display;
 
 	spin_lock_init(&display->fb_tracking.lock);
 
@@ -116,7 +119,7 @@ int xe_display_create(struct xe_device *xe)
 static void xe_display_fini_early(void *arg)
 {
 	struct xe_device *xe = arg;
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -129,7 +132,7 @@ static void xe_display_fini_early(void *arg)
 
 int xe_display_init_early(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 	int err;
 
 	if (!xe->info.probe_display)
@@ -173,7 +176,7 @@ int xe_display_init_early(struct xe_device *xe)
 static void xe_display_fini(void *arg)
 {
 	struct xe_device *xe = arg;
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	intel_hpd_poll_fini(display);
 	intel_hdcp_component_fini(display);
@@ -183,7 +186,7 @@ static void xe_display_fini(void *arg)
 
 int xe_display_init(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 	int err;
 
 	if (!xe->info.probe_display)
@@ -198,7 +201,7 @@ int xe_display_init(struct xe_device *xe)
 
 void xe_display_register(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -209,7 +212,7 @@ void xe_display_register(struct xe_device *xe)
 
 void xe_display_unregister(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -222,7 +225,7 @@ void xe_display_unregister(struct xe_device *xe)
 
 void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -233,7 +236,7 @@ void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
 
 void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -244,7 +247,7 @@ void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
 
 void xe_display_irq_reset(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -254,7 +257,7 @@ void xe_display_irq_reset(struct xe_device *xe)
 
 void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -295,7 +298,7 @@ static void xe_display_flush_cleanup_work(struct xe_device *xe)
 
 static void xe_display_enable_d3cold(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -318,7 +321,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
 
 static void xe_display_disable_d3cold(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -342,7 +345,7 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
 
 void xe_display_pm_suspend(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 	bool s2idle = suspend_to_idle();
 
 	if (!xe->info.probe_display)
@@ -377,7 +380,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 void xe_display_pm_shutdown(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -408,7 +411,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -423,7 +426,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 
 void xe_display_pm_suspend_late(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 	bool s2idle = suspend_to_idle();
 
 	if (!xe->info.probe_display)
@@ -434,7 +437,7 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 
 void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -452,7 +455,7 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 
 void xe_display_pm_shutdown_late(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -467,7 +470,7 @@ void xe_display_pm_shutdown_late(struct xe_device *xe)
 
 void xe_display_pm_resume_early(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -477,7 +480,7 @@ void xe_display_pm_resume_early(struct xe_device *xe)
 
 void xe_display_pm_resume(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -512,7 +515,7 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 void xe_display_pm_runtime_resume(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index e95ca979e1fe..c2b4be72f7a0 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -389,7 +389,7 @@ static bool reuse_vma(struct intel_plane_state *new_plane_state,
 {
 	struct intel_framebuffer *fb = to_intel_framebuffer(new_plane_state->hw.fb);
 	struct xe_device *xe = to_xe_device(fb->base.dev);
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 	struct i915_vma *vma;
 
 	if (old_plane_state->hw.fb == new_plane_state->hw.fb &&
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 06c65dace026..634ac4aa7674 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -587,7 +587,8 @@ struct xe_device {
 	 * drm_i915_private during build. After cleanup these should go away,
 	 * migrating to the right sub-structs
 	 */
-	struct intel_display display;
+	struct intel_display *display;
+	struct intel_display __display; /* Transitional. Do not use directly. */
 
 	struct dram_info {
 		bool wm_lv_0_adjust_needed;
-- 
2.39.5

