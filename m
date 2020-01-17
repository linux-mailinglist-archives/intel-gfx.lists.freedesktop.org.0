Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 165BD140DFA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 16:36:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C4E26F5F8;
	Fri, 17 Jan 2020 15:36:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1352A6F5F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 15:36:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19918371-1500050 
 for multiple; Fri, 17 Jan 2020 15:35:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 15:35:54 +0000
Message-Id: <20200117153554.3104278-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200117153554.3104278-1-chris@chris-wilson.co.uk>
References: <20200117153554.3104278-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gvt: Wean gvt off using dev_priv
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

Teach gvt to use intel_gt directly as it currently assumes direct HW
access.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gvt/aperture_gm.c  | 77 +++++++++++----------
 drivers/gpu/drm/i915/gvt/cfg_space.c    |  4 +-
 drivers/gpu/drm/i915/gvt/debugfs.c      |  9 ++-
 drivers/gpu/drm/i915/gvt/display.c      | 18 ++---
 drivers/gpu/drm/i915/gvt/dmabuf.c       |  4 +-
 drivers/gpu/drm/i915/gvt/edid.c         |  6 +-
 drivers/gpu/drm/i915/gvt/execlist.c     |  4 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c   |  6 +-
 drivers/gpu/drm/i915/gvt/firmware.c     | 16 ++---
 drivers/gpu/drm/i915/gvt/gtt.c          | 42 ++++++------
 drivers/gpu/drm/i915/gvt/gvt.c          | 35 +++++-----
 drivers/gpu/drm/i915/gvt/gvt.h          | 25 +++----
 drivers/gpu/drm/i915/gvt/handlers.c     | 90 +++++++++++++------------
 drivers/gpu/drm/i915/gvt/interrupt.c    |  6 +-
 drivers/gpu/drm/i915/gvt/kvmgt.c        |  6 +-
 drivers/gpu/drm/i915/gvt/mmio.c         |  2 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c | 18 ++---
 drivers/gpu/drm/i915/gvt/sched_policy.c | 14 ++--
 drivers/gpu/drm/i915/gvt/scheduler.c    | 18 ++---
 drivers/gpu/drm/i915/gvt/vgpu.c         | 10 +--
 20 files changed, 205 insertions(+), 205 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/aperture_gm.c b/drivers/gpu/drm/i915/gvt/aperture_gm.c
index 771420453f82..853803fddfc4 100644
--- a/drivers/gpu/drm/i915/gvt/aperture_gm.c
+++ b/drivers/gpu/drm/i915/gvt/aperture_gm.c
@@ -41,7 +41,7 @@
 static int alloc_gm(struct intel_vgpu *vgpu, bool high_gm)
 {
 	struct intel_gvt *gvt = vgpu->gvt;
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
+	struct intel_gt *gt = gvt->gt;
 	unsigned int flags;
 	u64 start, end, size;
 	struct drm_mm_node *node;
@@ -61,14 +61,14 @@ static int alloc_gm(struct intel_vgpu *vgpu, bool high_gm)
 		flags = PIN_MAPPABLE;
 	}
 
-	mutex_lock(&dev_priv->ggtt.vm.mutex);
-	mmio_hw_access_pre(dev_priv);
-	ret = i915_gem_gtt_insert(&dev_priv->ggtt.vm, node,
+	mutex_lock(&gt->ggtt->vm.mutex);
+	mmio_hw_access_pre(gt);
+	ret = i915_gem_gtt_insert(&gt->ggtt->vm, node,
 				  size, I915_GTT_PAGE_SIZE,
 				  I915_COLOR_UNEVICTABLE,
 				  start, end, flags);
-	mmio_hw_access_post(dev_priv);
-	mutex_unlock(&dev_priv->ggtt.vm.mutex);
+	mmio_hw_access_post(gt);
+	mutex_unlock(&gt->ggtt->vm.mutex);
 	if (ret)
 		gvt_err("fail to alloc %s gm space from host\n",
 			high_gm ? "high" : "low");
@@ -79,7 +79,7 @@ static int alloc_gm(struct intel_vgpu *vgpu, bool high_gm)
 static int alloc_vgpu_gm(struct intel_vgpu *vgpu)
 {
 	struct intel_gvt *gvt = vgpu->gvt;
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
+	struct intel_gt *gt = gvt->gt;
 	int ret;
 
 	ret = alloc_gm(vgpu, false);
@@ -98,20 +98,21 @@ static int alloc_vgpu_gm(struct intel_vgpu *vgpu)
 
 	return 0;
 out_free_aperture:
-	mutex_lock(&dev_priv->ggtt.vm.mutex);
+	mutex_lock(&gt->ggtt->vm.mutex);
 	drm_mm_remove_node(&vgpu->gm.low_gm_node);
-	mutex_unlock(&dev_priv->ggtt.vm.mutex);
+	mutex_unlock(&gt->ggtt->vm.mutex);
 	return ret;
 }
 
 static void free_vgpu_gm(struct intel_vgpu *vgpu)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct intel_gvt *gvt = vgpu->gvt;
+	struct intel_gt *gt = gvt->gt;
 
-	mutex_lock(&dev_priv->ggtt.vm.mutex);
+	mutex_lock(&gt->ggtt->vm.mutex);
 	drm_mm_remove_node(&vgpu->gm.low_gm_node);
 	drm_mm_remove_node(&vgpu->gm.high_gm_node);
-	mutex_unlock(&dev_priv->ggtt.vm.mutex);
+	mutex_unlock(&gt->ggtt->vm.mutex);
 }
 
 /**
@@ -128,11 +129,11 @@ void intel_vgpu_write_fence(struct intel_vgpu *vgpu,
 		u32 fence, u64 value)
 {
 	struct intel_gvt *gvt = vgpu->gvt;
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
+	struct intel_uncore *uncore = gvt->gt->uncore;
 	struct i915_fence_reg *reg;
 	i915_reg_t fence_reg_lo, fence_reg_hi;
 
-	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
+	assert_rpm_wakelock_held(uncore->rpm);
 
 	if (WARN_ON(fence >= vgpu_fence_sz(vgpu)))
 		return;
@@ -144,12 +145,12 @@ void intel_vgpu_write_fence(struct intel_vgpu *vgpu,
 	fence_reg_lo = FENCE_REG_GEN6_LO(reg->id);
 	fence_reg_hi = FENCE_REG_GEN6_HI(reg->id);
 
-	I915_WRITE(fence_reg_lo, 0);
-	POSTING_READ(fence_reg_lo);
+	intel_uncore_write(uncore, fence_reg_lo, 0);
+	intel_uncore_posting_read(uncore, fence_reg_lo);
 
-	I915_WRITE(fence_reg_hi, upper_32_bits(value));
-	I915_WRITE(fence_reg_lo, lower_32_bits(value));
-	POSTING_READ(fence_reg_lo);
+	intel_uncore_write(uncore, fence_reg_hi, upper_32_bits(value));
+	intel_uncore_write(uncore, fence_reg_lo, lower_32_bits(value));
+	intel_uncore_posting_read(uncore, fence_reg_lo);
 }
 
 static void _clear_vgpu_fence(struct intel_vgpu *vgpu)
@@ -163,42 +164,43 @@ static void _clear_vgpu_fence(struct intel_vgpu *vgpu)
 static void free_vgpu_fence(struct intel_vgpu *vgpu)
 {
 	struct intel_gvt *gvt = vgpu->gvt;
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
+	struct intel_uncore *uncore = gvt->gt->uncore;
 	struct i915_fence_reg *reg;
+	intel_wakeref_t wakeref;
 	u32 i;
 
 	if (WARN_ON(!vgpu_fence_sz(vgpu)))
 		return;
 
-	intel_runtime_pm_get(&dev_priv->runtime_pm);
+	wakeref = intel_runtime_pm_get(uncore->rpm);
 
-	mutex_lock(&dev_priv->ggtt.vm.mutex);
+	mutex_lock(&gvt->gt->ggtt->vm.mutex);
 	_clear_vgpu_fence(vgpu);
 	for (i = 0; i < vgpu_fence_sz(vgpu); i++) {
 		reg = vgpu->fence.regs[i];
 		i915_unreserve_fence(reg);
 		vgpu->fence.regs[i] = NULL;
 	}
-	mutex_unlock(&dev_priv->ggtt.vm.mutex);
+	mutex_unlock(&gvt->gt->ggtt->vm.mutex);
 
-	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
+	intel_runtime_pm_put(uncore->rpm, wakeref);
 }
 
 static int alloc_vgpu_fence(struct intel_vgpu *vgpu)
 {
 	struct intel_gvt *gvt = vgpu->gvt;
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
-	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
+	struct intel_uncore *uncore = gvt->gt->uncore;
 	struct i915_fence_reg *reg;
+	intel_wakeref_t wakeref;
 	int i;
 
-	intel_runtime_pm_get(rpm);
+	wakeref = intel_runtime_pm_get(uncore->rpm);
 
 	/* Request fences from host */
-	mutex_lock(&dev_priv->ggtt.vm.mutex);
+	mutex_lock(&gvt->gt->ggtt->vm.mutex);
 
 	for (i = 0; i < vgpu_fence_sz(vgpu); i++) {
-		reg = i915_reserve_fence(&dev_priv->ggtt);
+		reg = i915_reserve_fence(gvt->gt->ggtt);
 		if (IS_ERR(reg))
 			goto out_free_fence;
 
@@ -207,9 +209,10 @@ static int alloc_vgpu_fence(struct intel_vgpu *vgpu)
 
 	_clear_vgpu_fence(vgpu);
 
-	mutex_unlock(&dev_priv->ggtt.vm.mutex);
-	intel_runtime_pm_put_unchecked(rpm);
+	mutex_unlock(&gvt->gt->ggtt->vm.mutex);
+	intel_runtime_pm_put(uncore->rpm, wakeref);
 	return 0;
+
 out_free_fence:
 	gvt_vgpu_err("Failed to alloc fences\n");
 	/* Return fences to host, if fail */
@@ -220,8 +223,8 @@ static int alloc_vgpu_fence(struct intel_vgpu *vgpu)
 		i915_unreserve_fence(reg);
 		vgpu->fence.regs[i] = NULL;
 	}
-	mutex_unlock(&dev_priv->ggtt.vm.mutex);
-	intel_runtime_pm_put_unchecked(rpm);
+	mutex_unlock(&gvt->gt->ggtt->vm.mutex);
+	intel_runtime_pm_put_unchecked(uncore->rpm);
 	return -ENOSPC;
 }
 
@@ -315,11 +318,11 @@ void intel_vgpu_free_resource(struct intel_vgpu *vgpu)
  */
 void intel_vgpu_reset_resource(struct intel_vgpu *vgpu)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct intel_gvt *gvt = vgpu->gvt;
+	intel_wakeref_t wakeref;
 
-	intel_runtime_pm_get(&dev_priv->runtime_pm);
-	_clear_vgpu_fence(vgpu);
-	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
+	with_intel_runtime_pm(gvt->gt->uncore->rpm, wakeref)
+		_clear_vgpu_fence(vgpu);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gvt/cfg_space.c b/drivers/gpu/drm/i915/gvt/cfg_space.c
index 19cf1bbe059d..dcec755b9cb3 100644
--- a/drivers/gpu/drm/i915/gvt/cfg_space.c
+++ b/drivers/gpu/drm/i915/gvt/cfg_space.c
@@ -391,9 +391,9 @@ void intel_vgpu_init_cfg_space(struct intel_vgpu *vgpu,
 	memset(vgpu_cfg_space(vgpu) + INTEL_GVT_PCI_OPREGION, 0, 4);
 
 	vgpu->cfg_space.bar[INTEL_GVT_PCI_BAR_GTTMMIO].size =
-				pci_resource_len(gvt->dev_priv->drm.pdev, 0);
+		pci_resource_len(gvt->gt->i915->drm.pdev, 0);
 	vgpu->cfg_space.bar[INTEL_GVT_PCI_BAR_APERTURE].size =
-				pci_resource_len(gvt->dev_priv->drm.pdev, 2);
+		pci_resource_len(gvt->gt->i915->drm.pdev, 2);
 
 	memset(vgpu_cfg_space(vgpu) + PCI_ROM_ADDRESS, 0, 4);
 }
diff --git a/drivers/gpu/drm/i915/gvt/debugfs.c b/drivers/gpu/drm/i915/gvt/debugfs.c
index 874ee1de6b49..ec47d4114554 100644
--- a/drivers/gpu/drm/i915/gvt/debugfs.c
+++ b/drivers/gpu/drm/i915/gvt/debugfs.c
@@ -58,12 +58,11 @@ static int mmio_offset_compare(void *priv,
 static inline int mmio_diff_handler(struct intel_gvt *gvt,
 				    u32 offset, void *data)
 {
-	struct drm_i915_private *i915 = gvt->dev_priv;
 	struct mmio_diff_param *param = data;
 	struct diff_mmio *node;
 	u32 preg, vreg;
 
-	preg = intel_uncore_read_notrace(&i915->uncore, _MMIO(offset));
+	preg = intel_uncore_read_notrace(gvt->gt->uncore, _MMIO(offset));
 	vreg = vgpu_vreg(param->vgpu, offset);
 
 	if (preg != vreg) {
@@ -98,10 +97,10 @@ static int vgpu_mmio_diff_show(struct seq_file *s, void *unused)
 	mutex_lock(&gvt->lock);
 	spin_lock_bh(&gvt->scheduler.mmio_context_lock);
 
-	mmio_hw_access_pre(gvt->dev_priv);
+	mmio_hw_access_pre(gvt->gt);
 	/* Recognize all the diff mmios to list. */
 	intel_gvt_for_each_tracked_mmio(gvt, mmio_diff_handler, &param);
-	mmio_hw_access_post(gvt->dev_priv);
+	mmio_hw_access_post(gvt->gt);
 
 	spin_unlock_bh(&gvt->scheduler.mmio_context_lock);
 	mutex_unlock(&gvt->lock);
@@ -186,7 +185,7 @@ void intel_gvt_debugfs_remove_vgpu(struct intel_vgpu *vgpu)
  */
 void intel_gvt_debugfs_init(struct intel_gvt *gvt)
 {
-	struct drm_minor *minor = gvt->dev_priv->drm.primary;
+	struct drm_minor *minor = gvt->gt->i915->drm.primary;
 
 	gvt->debugfs_root = debugfs_create_dir("gvt", minor->debugfs_root);
 
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index e1c313da6c00..21109003bac7 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -57,7 +57,7 @@ static int get_edp_pipe(struct intel_vgpu *vgpu)
 
 static int edp_pipe_is_enabled(struct intel_vgpu *vgpu)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 
 	if (!(vgpu_vreg_t(vgpu, PIPECONF(_PIPE_EDP)) & PIPECONF_ENABLE))
 		return 0;
@@ -69,7 +69,7 @@ static int edp_pipe_is_enabled(struct intel_vgpu *vgpu)
 
 int pipe_is_enabled(struct intel_vgpu *vgpu, int pipe)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 
 	if (WARN_ON(pipe < PIPE_A || pipe >= I915_MAX_PIPES))
 		return -EINVAL;
@@ -168,7 +168,7 @@ static u8 dpcd_fix_data[DPCD_HEADER_SIZE] = {
 
 static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	int pipe;
 
 	if (IS_BROXTON(dev_priv)) {
@@ -389,7 +389,7 @@ void intel_gvt_check_vblank_emulation(struct intel_gvt *gvt)
 
 static void emulate_vblank_on_pipe(struct intel_vgpu *vgpu, int pipe)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	struct intel_vgpu_irq *irq = &vgpu->irq;
 	int vblank_event[] = {
 		[PIPE_A] = PIPE_A_VBLANK,
@@ -421,7 +421,7 @@ static void emulate_vblank(struct intel_vgpu *vgpu)
 	int pipe;
 
 	mutex_lock(&vgpu->vgpu_lock);
-	for_each_pipe(vgpu->gvt->dev_priv, pipe)
+	for_each_pipe(vgpu->gvt->gt->i915, pipe)
 		emulate_vblank_on_pipe(vgpu, pipe);
 	mutex_unlock(&vgpu->vgpu_lock);
 }
@@ -454,10 +454,10 @@ void intel_gvt_emulate_vblank(struct intel_gvt *gvt)
  */
 void intel_vgpu_emulate_hotplug(struct intel_vgpu *vgpu, bool connected)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
 
 	/* TODO: add more platforms support */
-	if (IS_SKYLAKE(dev_priv) || IS_KABYLAKE(dev_priv)) {
+	if (IS_SKYLAKE(i915) || IS_KABYLAKE(i915)) {
 		if (connected) {
 			vgpu_vreg_t(vgpu, SFUSE_STRAP) |=
 				SFUSE_STRAP_DDID_DETECTED;
@@ -483,7 +483,7 @@ void intel_vgpu_emulate_hotplug(struct intel_vgpu *vgpu, bool connected)
  */
 void intel_vgpu_clean_display(struct intel_vgpu *vgpu)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 
 	if (IS_SKYLAKE(dev_priv) || IS_KABYLAKE(dev_priv) ||
 	    IS_COFFEELAKE(dev_priv))
@@ -505,7 +505,7 @@ void intel_vgpu_clean_display(struct intel_vgpu *vgpu)
  */
 int intel_vgpu_init_display(struct intel_vgpu *vgpu, u64 resolution)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 
 	intel_vgpu_init_i2c_edid(vgpu);
 
diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
index 2477a1e5a166..d9b629ad6b8c 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.c
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
@@ -417,7 +417,7 @@ static void update_fb_info(struct vfio_device_gfx_plane_info *gvt_dmabuf,
 
 int intel_vgpu_query_plane(struct intel_vgpu *vgpu, void *args)
 {
-	struct drm_device *dev = &vgpu->gvt->dev_priv->drm;
+	struct drm_device *dev = &vgpu->gvt->gt->i915->drm;
 	struct vfio_device_gfx_plane_info *gfx_plane_info = args;
 	struct intel_vgpu_dmabuf_obj *dmabuf_obj;
 	struct intel_vgpu_fb_info fb_info;
@@ -523,7 +523,7 @@ int intel_vgpu_query_plane(struct intel_vgpu *vgpu, void *args)
 /* To associate an exposed dmabuf with the dmabuf_obj */
 int intel_vgpu_get_dmabuf(struct intel_vgpu *vgpu, unsigned int dmabuf_id)
 {
-	struct drm_device *dev = &vgpu->gvt->dev_priv->drm;
+	struct drm_device *dev = &vgpu->gvt->gt->i915->drm;
 	struct intel_vgpu_dmabuf_obj *dmabuf_obj;
 	struct drm_i915_gem_object *obj;
 	struct dma_buf *dmabuf;
diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
index 1fe6124918f1..6ce9aff83ab1 100644
--- a/drivers/gpu/drm/i915/gvt/edid.c
+++ b/drivers/gpu/drm/i915/gvt/edid.c
@@ -135,7 +135,7 @@ static void reset_gmbus_controller(struct intel_vgpu *vgpu)
 static int gmbus0_mmio_write(struct intel_vgpu *vgpu,
 			unsigned int offset, void *p_data, unsigned int bytes)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
 	int port, pin_select;
 
 	memcpy(&vgpu_vreg(vgpu, offset), p_data, bytes);
@@ -147,9 +147,9 @@ static int gmbus0_mmio_write(struct intel_vgpu *vgpu,
 	if (pin_select == 0)
 		return 0;
 
-	if (IS_BROXTON(dev_priv))
+	if (IS_BROXTON(i915))
 		port = bxt_get_port_from_gmbus0(pin_select);
-	else if (IS_COFFEELAKE(dev_priv))
+	else if (IS_COFFEELAKE(i915))
 		port = cnp_get_port_from_gmbus0(pin_select);
 	else
 		port = get_port_from_gmbus0(pin_select);
diff --git a/drivers/gpu/drm/i915/gvt/execlist.c b/drivers/gpu/drm/i915/gvt/execlist.c
index b8aa07c8bcc0..dd25c3024370 100644
--- a/drivers/gpu/drm/i915/gvt/execlist.c
+++ b/drivers/gpu/drm/i915/gvt/execlist.c
@@ -524,7 +524,7 @@ static void init_vgpu_execlist(struct intel_vgpu *vgpu,
 static void clean_execlist(struct intel_vgpu *vgpu,
 			   intel_engine_mask_t engine_mask)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	struct intel_engine_cs *engine;
 	struct intel_vgpu_submission *s = &vgpu->submission;
 	intel_engine_mask_t tmp;
@@ -539,7 +539,7 @@ static void clean_execlist(struct intel_vgpu *vgpu,
 static void reset_execlist(struct intel_vgpu *vgpu,
 			   intel_engine_mask_t engine_mask)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	struct intel_engine_cs *engine;
 	intel_engine_mask_t tmp;
 
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index 8bb292b01271..0889ad8291b0 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -146,7 +146,7 @@ static int skl_format_to_drm(int format, bool rgb_order, bool alpha,
 static u32 intel_vgpu_get_stride(struct intel_vgpu *vgpu, int pipe,
 	u32 tiled, int stride_mask, int bpp)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 
 	u32 stride_reg = vgpu_vreg_t(vgpu, DSPSTRIDE(pipe)) & stride_mask;
 	u32 stride = stride_reg;
@@ -202,8 +202,8 @@ static int get_active_pipe(struct intel_vgpu *vgpu)
 int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 	struct intel_vgpu_primary_plane_format *plane)
 {
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	u32 val, fmt;
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
 	int pipe;
 
 	pipe = get_active_pipe(vgpu);
@@ -332,9 +332,9 @@ static int cursor_mode_to_drm(int mode)
 int intel_vgpu_decode_cursor_plane(struct intel_vgpu *vgpu,
 	struct intel_vgpu_cursor_plane_format *plane)
 {
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	u32 val, mode, index;
 	u32 alpha_plane, alpha_force;
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
 	int pipe;
 
 	pipe = get_active_pipe(vgpu);
diff --git a/drivers/gpu/drm/i915/gvt/firmware.c b/drivers/gpu/drm/i915/gvt/firmware.c
index 049775e8e350..7aaae9c562f8 100644
--- a/drivers/gpu/drm/i915/gvt/firmware.c
+++ b/drivers/gpu/drm/i915/gvt/firmware.c
@@ -68,9 +68,7 @@ static struct bin_attribute firmware_attr = {
 
 static int mmio_snapshot_handler(struct intel_gvt *gvt, u32 offset, void *data)
 {
-	struct drm_i915_private *i915 = gvt->dev_priv;
-
-	*(u32 *)(data + offset) = intel_uncore_read_notrace(&i915->uncore,
+	*(u32 *)(data + offset) = intel_uncore_read_notrace(gvt->gt->uncore,
 							    _MMIO(offset));
 	return 0;
 }
@@ -78,7 +76,7 @@ static int mmio_snapshot_handler(struct intel_gvt *gvt, u32 offset, void *data)
 static int expose_firmware_sysfs(struct intel_gvt *gvt)
 {
 	struct intel_gvt_device_info *info = &gvt->device_info;
-	struct pci_dev *pdev = gvt->dev_priv->drm.pdev;
+	struct pci_dev *pdev = gvt->gt->i915->drm.pdev;
 	struct gvt_firmware_header *h;
 	void *firmware;
 	void *p;
@@ -129,7 +127,7 @@ static int expose_firmware_sysfs(struct intel_gvt *gvt)
 
 static void clean_firmware_sysfs(struct intel_gvt *gvt)
 {
-	struct pci_dev *pdev = gvt->dev_priv->drm.pdev;
+	struct pci_dev *pdev = gvt->gt->i915->drm.pdev;
 
 	device_remove_bin_file(&pdev->dev, &firmware_attr);
 	vfree(firmware_attr.private);
@@ -153,8 +151,7 @@ static int verify_firmware(struct intel_gvt *gvt,
 			   const struct firmware *fw)
 {
 	struct intel_gvt_device_info *info = &gvt->device_info;
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
-	struct pci_dev *pdev = dev_priv->drm.pdev;
+	struct pci_dev *pdev = gvt->gt->i915->drm.pdev;
 	struct gvt_firmware_header *h;
 	unsigned long id, crc32_start;
 	const void *mem;
@@ -208,8 +205,7 @@ static int verify_firmware(struct intel_gvt *gvt,
 int intel_gvt_load_firmware(struct intel_gvt *gvt)
 {
 	struct intel_gvt_device_info *info = &gvt->device_info;
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
-	struct pci_dev *pdev = dev_priv->drm.pdev;
+	struct pci_dev *pdev = gvt->gt->i915->drm.pdev;
 	struct intel_gvt_firmware *firmware = &gvt->firmware;
 	struct gvt_firmware_header *h;
 	const struct firmware *fw;
@@ -244,7 +240,7 @@ int intel_gvt_load_firmware(struct intel_gvt *gvt)
 
 	gvt_dbg_core("request hw state firmware %s...\n", path);
 
-	ret = request_firmware(&fw, path, &dev_priv->drm.pdev->dev);
+	ret = request_firmware(&fw, path, &gvt->gt->i915->drm.pdev->dev);
 	kfree(path);
 
 	if (ret)
diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 34cb404ba4b7..8ac0fc5659b3 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -275,24 +275,23 @@ static inline int get_pse_type(int type)
 	return gtt_type_table[type].pse_entry_type;
 }
 
-static u64 read_pte64(struct drm_i915_private *dev_priv, unsigned long index)
+static u64 read_pte64(struct i915_ggtt *ggtt, unsigned long index)
 {
-	void __iomem *addr = (gen8_pte_t __iomem *)dev_priv->ggtt.gsm + index;
+	void __iomem *addr = (gen8_pte_t __iomem *)ggtt->gsm + index;
 
 	return readq(addr);
 }
 
-static void ggtt_invalidate(struct drm_i915_private *dev_priv)
+static void ggtt_invalidate(struct intel_gt *gt)
 {
-	mmio_hw_access_pre(dev_priv);
-	I915_WRITE(GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
-	mmio_hw_access_post(dev_priv);
+	mmio_hw_access_pre(gt);
+	intel_uncore_write(gt->uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
+	mmio_hw_access_post(gt);
 }
 
-static void write_pte64(struct drm_i915_private *dev_priv,
-		unsigned long index, u64 pte)
+static void write_pte64(struct i915_ggtt *ggtt, unsigned long index, u64 pte)
 {
-	void __iomem *addr = (gen8_pte_t __iomem *)dev_priv->ggtt.gsm + index;
+	void __iomem *addr = (gen8_pte_t __iomem *)ggtt->gsm + index;
 
 	writeq(pte, addr);
 }
@@ -315,7 +314,7 @@ static inline int gtt_get_entry64(void *pt,
 		if (WARN_ON(ret))
 			return ret;
 	} else if (!pt) {
-		e->val64 = read_pte64(vgpu->gvt->dev_priv, index);
+		e->val64 = read_pte64(vgpu->gvt->gt->ggtt, index);
 	} else {
 		e->val64 = *((u64 *)pt + index);
 	}
@@ -340,7 +339,7 @@ static inline int gtt_set_entry64(void *pt,
 		if (WARN_ON(ret))
 			return ret;
 	} else if (!pt) {
-		write_pte64(vgpu->gvt->dev_priv, index, e->val64);
+		write_pte64(vgpu->gvt->gt->ggtt, index, e->val64);
 	} else {
 		*((u64 *)pt + index) = e->val64;
 	}
@@ -734,7 +733,7 @@ static int detach_oos_page(struct intel_vgpu *vgpu,
 
 static void ppgtt_free_spt(struct intel_vgpu_ppgtt_spt *spt)
 {
-	struct device *kdev = &spt->vgpu->gvt->dev_priv->drm.pdev->dev;
+	struct device *kdev = &spt->vgpu->gvt->gt->i915->drm.pdev->dev;
 
 	trace_spt_free(spt->vgpu->id, spt, spt->guest_page.type);
 
@@ -819,7 +818,7 @@ static int reclaim_one_ppgtt_mm(struct intel_gvt *gvt);
 static struct intel_vgpu_ppgtt_spt *ppgtt_alloc_spt(
 		struct intel_vgpu *vgpu, enum intel_gvt_gtt_type type)
 {
-	struct device *kdev = &vgpu->gvt->dev_priv->drm.pdev->dev;
+	struct device *kdev = &vgpu->gvt->gt->i915->drm.pdev->dev;
 	struct intel_vgpu_ppgtt_spt *spt = NULL;
 	dma_addr_t daddr;
 	int ret;
@@ -1044,7 +1043,7 @@ static int ppgtt_invalidate_spt(struct intel_vgpu_ppgtt_spt *spt)
 
 static bool vgpu_ips_enabled(struct intel_vgpu *vgpu)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 
 	if (INTEL_GEN(dev_priv) == 9 || INTEL_GEN(dev_priv) == 10) {
 		u32 ips = vgpu_vreg_t(vgpu, GEN8_GAMW_ECO_DEV_RW_IA) &
@@ -1153,7 +1152,7 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 	struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
 	unsigned long pfn;
 
-	if (!HAS_PAGE_SIZES(vgpu->gvt->dev_priv, I915_GTT_PAGE_SIZE_2M))
+	if (!HAS_PAGE_SIZES(vgpu->gvt->gt->i915, I915_GTT_PAGE_SIZE_2M))
 		return 0;
 
 	pfn = intel_gvt_hypervisor_gfn_to_mfn(vgpu, ops->get_pfn(entry));
@@ -2310,7 +2309,7 @@ static int emulate_ggtt_mmio_write(struct intel_vgpu *vgpu, unsigned int off,
 	ggtt_invalidate_pte(vgpu, &e);
 
 	ggtt_set_host_entry(ggtt_mm, &m, g_gtt_index);
-	ggtt_invalidate(gvt->dev_priv);
+	ggtt_invalidate(gvt->gt);
 	return 0;
 }
 
@@ -2349,7 +2348,7 @@ static int alloc_scratch_pages(struct intel_vgpu *vgpu,
 				vgpu->gvt->device_info.gtt_entry_size_shift;
 	void *scratch_pt;
 	int i;
-	struct device *dev = &vgpu->gvt->dev_priv->drm.pdev->dev;
+	struct device *dev = &vgpu->gvt->gt->i915->drm.pdev->dev;
 	dma_addr_t daddr;
 
 	if (WARN_ON(type < GTT_TYPE_PPGTT_PTE_PT || type >= GTT_TYPE_MAX))
@@ -2406,7 +2405,7 @@ static int alloc_scratch_pages(struct intel_vgpu *vgpu,
 static int release_scratch_page_tree(struct intel_vgpu *vgpu)
 {
 	int i;
-	struct device *dev = &vgpu->gvt->dev_priv->drm.pdev->dev;
+	struct device *dev = &vgpu->gvt->gt->i915->drm.pdev->dev;
 	dma_addr_t daddr;
 
 	for (i = GTT_TYPE_PPGTT_PTE_PT; i < GTT_TYPE_MAX; i++) {
@@ -2678,7 +2677,7 @@ int intel_gvt_init_gtt(struct intel_gvt *gvt)
 {
 	int ret;
 	void *page;
-	struct device *dev = &gvt->dev_priv->drm.pdev->dev;
+	struct device *dev = &gvt->gt->i915->drm.pdev->dev;
 	dma_addr_t daddr;
 
 	gvt_dbg_core("init gtt\n");
@@ -2727,7 +2726,7 @@ int intel_gvt_init_gtt(struct intel_gvt *gvt)
  */
 void intel_gvt_clean_gtt(struct intel_gvt *gvt)
 {
-	struct device *dev = &gvt->dev_priv->drm.pdev->dev;
+	struct device *dev = &gvt->gt->i915->drm.pdev->dev;
 	dma_addr_t daddr = (dma_addr_t)(gvt->gtt.scratch_mfn <<
 					I915_GTT_PAGE_SHIFT);
 
@@ -2775,7 +2774,6 @@ void intel_vgpu_invalidate_ppgtt(struct intel_vgpu *vgpu)
 void intel_vgpu_reset_ggtt(struct intel_vgpu *vgpu, bool invalidate_old)
 {
 	struct intel_gvt *gvt = vgpu->gvt;
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
 	struct intel_gvt_gtt_pte_ops *pte_ops = vgpu->gvt->gtt.pte_ops;
 	struct intel_gvt_gtt_entry entry = {.type = GTT_TYPE_GGTT_PTE};
 	struct intel_gvt_gtt_entry old_entry;
@@ -2805,7 +2803,7 @@ void intel_vgpu_reset_ggtt(struct intel_vgpu *vgpu, bool invalidate_old)
 		ggtt_set_host_entry(vgpu->gtt.ggtt_mm, &entry, index++);
 	}
 
-	ggtt_invalidate(dev_priv);
+	ggtt_invalidate(gvt->gt);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gvt/gvt.c b/drivers/gpu/drm/i915/gvt/gvt.c
index 8f37eefa0a02..3ecb4cff028c 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.c
+++ b/drivers/gpu/drm/i915/gvt/gvt.c
@@ -49,15 +49,15 @@ static const char * const supported_hypervisors[] = {
 static struct intel_vgpu_type *intel_gvt_find_vgpu_type(struct intel_gvt *gvt,
 		const char *name)
 {
+	const char *driver_name =
+		dev_driver_string(&gvt->gt->i915->drm.pdev->dev);
 	int i;
-	struct intel_vgpu_type *t;
-	const char *driver_name = dev_driver_string(
-			&gvt->dev_priv->drm.pdev->dev);
 
+	name += strlen(driver_name) + 1;
 	for (i = 0; i < gvt->num_types; i++) {
-		t = &gvt->types[i];
-		if (!strncmp(t->name, name + strlen(driver_name) + 1,
-			sizeof(t->name)))
+		struct intel_vgpu_type *t = &gvt->types[i];
+
+		if (!strncmp(t->name, name, sizeof(t->name)))
 			return t;
 	}
 
@@ -191,7 +191,7 @@ static const struct intel_gvt_ops intel_gvt_ops = {
 static void init_device_info(struct intel_gvt *gvt)
 {
 	struct intel_gvt_device_info *info = &gvt->device_info;
-	struct pci_dev *pdev = gvt->dev_priv->drm.pdev;
+	struct pci_dev *pdev = gvt->gt->i915->drm.pdev;
 
 	info->max_support_vgpus = 8;
 	info->cfg_space_size = PCI_CFG_SPACE_EXP_SIZE;
@@ -257,15 +257,15 @@ static int init_service_thread(struct intel_gvt *gvt)
 
 /**
  * intel_gvt_clean_device - clean a GVT device
- * @dev_priv: i915 private
+ * @i915: i915 private
  *
  * This function is called at the driver unloading stage, to free the
  * resources owned by a GVT device.
  *
  */
-void intel_gvt_clean_device(struct drm_i915_private *dev_priv)
+void intel_gvt_clean_device(struct drm_i915_private *i915)
 {
-	struct intel_gvt *gvt = to_gvt(dev_priv);
+	struct intel_gvt *gvt = fetch_and_zero(&i915->gvt);
 
 	if (WARN_ON(!gvt))
 		return;
@@ -285,13 +285,12 @@ void intel_gvt_clean_device(struct drm_i915_private *dev_priv)
 	intel_gvt_clean_mmio_info(gvt);
 	idr_destroy(&gvt->vgpu_idr);
 
-	kfree(dev_priv->gvt);
-	dev_priv->gvt = NULL;
+	kfree(i915->gvt);
 }
 
 /**
  * intel_gvt_init_device - initialize a GVT device
- * @dev_priv: drm i915 private data
+ * @i915: drm i915 private data
  *
  * This function is called at the initialization stage, to initialize
  * necessary GVT components.
@@ -300,13 +299,13 @@ void intel_gvt_clean_device(struct drm_i915_private *dev_priv)
  * Zero on success, negative error code if failed.
  *
  */
-int intel_gvt_init_device(struct drm_i915_private *dev_priv)
+int intel_gvt_init_device(struct drm_i915_private *i915)
 {
 	struct intel_gvt *gvt;
 	struct intel_vgpu *vgpu;
 	int ret;
 
-	if (WARN_ON(dev_priv->gvt))
+	if (WARN_ON(i915->gvt))
 		return -EEXIST;
 
 	gvt = kzalloc(sizeof(struct intel_gvt), GFP_KERNEL);
@@ -319,7 +318,7 @@ int intel_gvt_init_device(struct drm_i915_private *dev_priv)
 	spin_lock_init(&gvt->scheduler.mmio_context_lock);
 	mutex_init(&gvt->lock);
 	mutex_init(&gvt->sched_lock);
-	gvt->dev_priv = dev_priv;
+	gvt->gt = &i915->gt;
 
 	init_device_info(gvt);
 
@@ -378,8 +377,8 @@ int intel_gvt_init_device(struct drm_i915_private *dev_priv)
 	intel_gvt_debugfs_init(gvt);
 
 	gvt_dbg_core("gvt device initialization is done\n");
-	dev_priv->gvt = gvt;
-	intel_gvt_host.dev = &dev_priv->drm.pdev->dev;
+	i915->gvt = gvt;
+	intel_gvt_host.dev = &i915->drm.pdev->dev;
 	intel_gvt_host.initialized = true;
 	return 0;
 
diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index b47c6acaf9c0..841578f7fff4 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -306,7 +306,7 @@ struct intel_gvt {
 	/* scheduler scope lock, protect gvt and vgpu schedule related data */
 	struct mutex sched_lock;
 
-	struct drm_i915_private *dev_priv;
+	struct intel_gt *gt;
 	struct idr vgpu_idr;	/* vGPU IDR pool */
 
 	struct intel_gvt_device_info device_info;
@@ -376,14 +376,15 @@ int intel_gvt_load_firmware(struct intel_gvt *gvt);
 #define HOST_HIGH_GM_SIZE MB_TO_BYTES(384)
 #define HOST_FENCE 4
 
+#define gvt_to_ggtt(gvt)	((gvt)->gt->ggtt)
+
 /* Aperture/GM space definitions for GVT device */
-#define gvt_aperture_sz(gvt)	  (gvt->dev_priv->ggtt.mappable_end)
-#define gvt_aperture_pa_base(gvt) (gvt->dev_priv->ggtt.gmadr.start)
+#define gvt_aperture_sz(gvt)	  gvt_to_ggtt(gvt)->mappable_end
+#define gvt_aperture_pa_base(gvt) gvt_to_ggtt(gvt)->gmadr.start
 
-#define gvt_ggtt_gm_sz(gvt)	  (gvt->dev_priv->ggtt.vm.total)
-#define gvt_ggtt_sz(gvt) \
-	((gvt->dev_priv->ggtt.vm.total >> PAGE_SHIFT) << 3)
-#define gvt_hidden_sz(gvt)	  (gvt_ggtt_gm_sz(gvt) - gvt_aperture_sz(gvt))
+#define gvt_ggtt_gm_sz(gvt)	gvt_to_ggtt(gvt)->vm.total
+#define gvt_ggtt_sz(gvt)	(gvt_to_ggtt(gvt)->vm.total >> PAGE_SHIFT << 3)
+#define gvt_hidden_sz(gvt)	(gvt_ggtt_gm_sz(gvt) - gvt_aperture_sz(gvt))
 
 #define gvt_aperture_gmadr_base(gvt) (0)
 #define gvt_aperture_gmadr_end(gvt) (gvt_aperture_gmadr_base(gvt) \
@@ -394,7 +395,7 @@ int intel_gvt_load_firmware(struct intel_gvt *gvt);
 #define gvt_hidden_gmadr_end(gvt) (gvt_hidden_gmadr_base(gvt) \
 				   + gvt_hidden_sz(gvt) - 1)
 
-#define gvt_fence_sz(gvt) ((gvt)->dev_priv->ggtt.num_fences)
+#define gvt_fence_sz(gvt) (gvt_to_ggtt(gvt)->num_fences)
 
 /* Aperture/GM space definitions for vGPU */
 #define vgpu_aperture_offset(vgpu)	((vgpu)->gm.low_gm_node.start)
@@ -586,14 +587,14 @@ enum {
 	GVT_FAILSAFE_GUEST_ERR,
 };
 
-static inline void mmio_hw_access_pre(struct drm_i915_private *dev_priv)
+static inline void mmio_hw_access_pre(struct intel_gt *gt)
 {
-	intel_runtime_pm_get(&dev_priv->runtime_pm);
+	intel_runtime_pm_get(gt->uncore->rpm);
 }
 
-static inline void mmio_hw_access_post(struct drm_i915_private *dev_priv)
+static inline void mmio_hw_access_post(struct intel_gt *gt)
 {
-	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
+	intel_runtime_pm_put_unchecked(gt->uncore->rpm);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 83834b824b28..479a95c2ee89 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -49,15 +49,17 @@
 
 unsigned long intel_gvt_get_device_type(struct intel_gvt *gvt)
 {
-	if (IS_BROADWELL(gvt->dev_priv))
+	struct drm_i915_private *i915 = gvt->gt->i915;
+
+	if (IS_BROADWELL(i915))
 		return D_BDW;
-	else if (IS_SKYLAKE(gvt->dev_priv))
+	else if (IS_SKYLAKE(i915))
 		return D_SKL;
-	else if (IS_KABYLAKE(gvt->dev_priv))
+	else if (IS_KABYLAKE(i915))
 		return D_KBL;
-	else if (IS_BROXTON(gvt->dev_priv))
+	else if (IS_BROXTON(i915))
 		return D_BXT;
-	else if (IS_COFFEELAKE(gvt->dev_priv))
+	else if (IS_COFFEELAKE(i915))
 		return D_CFL;
 
 	return 0;
@@ -152,11 +154,11 @@ static int new_mmio_info(struct intel_gvt *gvt,
 const struct intel_engine_cs *
 intel_gvt_render_mmio_to_engine(struct intel_gvt *gvt, unsigned int offset)
 {
-	enum intel_engine_id id;
 	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
 
 	offset &= ~GENMASK(11, 0);
-	for_each_engine(engine, gvt->dev_priv, id)
+	for_each_engine(engine, gvt->gt, id)
 		if (engine->mmio_base == offset)
 			return engine;
 
@@ -217,7 +219,7 @@ static int gamw_echo_dev_rw_ia_write(struct intel_vgpu *vgpu,
 {
 	u32 ips = (*(u32 *)p_data) & GAMW_ECO_ENABLE_64K_IPS_FIELD;
 
-	if (INTEL_GEN(vgpu->gvt->dev_priv) <= 10) {
+	if (INTEL_GEN(vgpu->gvt->gt->i915) <= 10) {
 		if (ips == GAMW_ECO_ENABLE_64K_IPS_FIELD)
 			gvt_dbg_core("vgpu%d: ips enabled\n", vgpu->id);
 		else if (!ips)
@@ -253,7 +255,7 @@ static int fence_mmio_read(struct intel_vgpu *vgpu, unsigned int off,
 static int fence_mmio_write(struct intel_vgpu *vgpu, unsigned int off,
 		void *p_data, unsigned int bytes)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct intel_gvt *gvt = vgpu->gvt;
 	unsigned int fence_num = offset_to_fence_num(off);
 	int ret;
 
@@ -262,10 +264,10 @@ static int fence_mmio_write(struct intel_vgpu *vgpu, unsigned int off,
 		return ret;
 	write_vreg(vgpu, off, p_data, bytes);
 
-	mmio_hw_access_pre(dev_priv);
+	mmio_hw_access_pre(gvt->gt);
 	intel_vgpu_write_fence(vgpu, fence_num,
 			vgpu_vreg64(vgpu, fence_num_to_offset(fence_num)));
-	mmio_hw_access_post(dev_priv);
+	mmio_hw_access_post(gvt->gt);
 	return 0;
 }
 
@@ -283,7 +285,7 @@ static int mul_force_wake_write(struct intel_vgpu *vgpu,
 	old = vgpu_vreg(vgpu, offset);
 	new = CALC_MODE_MASK_REG(old, *(u32 *)p_data);
 
-	if (INTEL_GEN(vgpu->gvt->dev_priv)  >=  9) {
+	if (INTEL_GEN(vgpu->gvt->gt->i915)  >=  9) {
 		switch (offset) {
 		case FORCEWAKE_RENDER_GEN9_REG:
 			ack_reg_offset = FORCEWAKE_ACK_RENDER_GEN9_REG;
@@ -345,7 +347,7 @@ static int gdrst_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 			gvt_dbg_mmio("vgpu%d: request GUC Reset\n", vgpu->id);
 			vgpu_vreg_t(vgpu, GUC_STATUS) |= GS_MIA_IN_RESET;
 		}
-		engine_mask &= INTEL_INFO(vgpu->gvt->dev_priv)->engine_mask;
+		engine_mask &= INTEL_INFO(vgpu->gvt->gt->i915)->engine_mask;
 	}
 
 	/* vgpu_lock already hold by emulate mmio r/w */
@@ -751,7 +753,7 @@ static int south_chicken2_mmio_write(struct intel_vgpu *vgpu,
 static int pri_surf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	u32 pipe = DSPSURF_TO_PIPE(offset);
 	int event = SKL_FLIP_EVENT(pipe, PLANE_PRIMARY);
 
@@ -792,7 +794,7 @@ static int reg50080_mmio_write(struct intel_vgpu *vgpu,
 			       unsigned int offset, void *p_data,
 			       unsigned int bytes)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	enum pipe pipe = REG_50080_TO_PIPE(offset);
 	enum plane_id plane = REG_50080_TO_PLANE(offset);
 	int event = SKL_FLIP_EVENT(pipe, plane);
@@ -816,7 +818,7 @@ static int reg50080_mmio_write(struct intel_vgpu *vgpu,
 static int trigger_aux_channel_interrupt(struct intel_vgpu *vgpu,
 		unsigned int reg)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	enum intel_gvt_event_type event;
 
 	if (reg == i915_mmio_reg_offset(DP_AUX_CH_CTL(AUX_CH_A)))
@@ -919,11 +921,11 @@ static int dp_aux_ch_ctl_mmio_write(struct intel_vgpu *vgpu,
 	write_vreg(vgpu, offset, p_data, bytes);
 	data = vgpu_vreg(vgpu, offset);
 
-	if ((INTEL_GEN(vgpu->gvt->dev_priv) >= 9)
+	if ((INTEL_GEN(vgpu->gvt->gt->i915) >= 9)
 		&& offset != _REG_SKL_DP_AUX_CH_CTL(port_index)) {
 		/* SKL DPB/C/D aux ctl register changed */
 		return 0;
-	} else if (IS_BROADWELL(vgpu->gvt->dev_priv) &&
+	} else if (IS_BROADWELL(vgpu->gvt->gt->i915) &&
 		   offset != _REG_HSW_DP_AUX_CH_CTL(port_index)) {
 		/* write to the data registers */
 		return 0;
@@ -1239,8 +1241,7 @@ static int handle_g2v_notification(struct intel_vgpu *vgpu, int notification)
 
 static int send_display_ready_uevent(struct intel_vgpu *vgpu, int ready)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
-	struct kobject *kobj = &dev_priv->drm.primary->kdev->kobj;
+	struct kobject *kobj = &vgpu->gvt->gt->i915->drm.primary->kdev->kobj;
 	char *env[3] = {NULL, NULL, NULL};
 	char vmid_str[20];
 	char display_ready_str[20];
@@ -1422,9 +1423,9 @@ static int mailbox_write(struct intel_vgpu *vgpu, unsigned int offset,
 
 	switch (cmd) {
 	case GEN9_PCODE_READ_MEM_LATENCY:
-		if (IS_SKYLAKE(vgpu->gvt->dev_priv)
-			 || IS_KABYLAKE(vgpu->gvt->dev_priv)
-			 || IS_COFFEELAKE(vgpu->gvt->dev_priv)) {
+		if (IS_SKYLAKE(vgpu->gvt->gt->i915) ||
+		    IS_KABYLAKE(vgpu->gvt->gt->i915) ||
+		    IS_COFFEELAKE(vgpu->gvt->gt->i915)) {
 			/**
 			 * "Read memory latency" command on gen9.
 			 * Below memory latency values are read
@@ -1434,7 +1435,7 @@ static int mailbox_write(struct intel_vgpu *vgpu, unsigned int offset,
 				*data0 = 0x1e1a1100;
 			else
 				*data0 = 0x61514b3d;
-		} else if (IS_BROXTON(vgpu->gvt->dev_priv)) {
+		} else if (IS_BROXTON(vgpu->gvt->gt->i915)) {
 			/**
 			 * "Read memory latency" command on gen9.
 			 * Below memory latency values are read
@@ -1447,9 +1448,9 @@ static int mailbox_write(struct intel_vgpu *vgpu, unsigned int offset,
 		}
 		break;
 	case SKL_PCODE_CDCLK_CONTROL:
-		if (IS_SKYLAKE(vgpu->gvt->dev_priv)
-			 || IS_KABYLAKE(vgpu->gvt->dev_priv)
-			 || IS_COFFEELAKE(vgpu->gvt->dev_priv))
+		if (IS_SKYLAKE(vgpu->gvt->gt->i915) ||
+		    IS_KABYLAKE(vgpu->gvt->gt->i915) ||
+		    IS_COFFEELAKE(vgpu->gvt->gt->i915))
 			*data0 = SKL_CDCLK_READY_FOR_CHANGE;
 		break;
 	case GEN6_PCODE_READ_RC6VIDS:
@@ -1481,6 +1482,7 @@ static int hws_pga_write(struct intel_vgpu *vgpu, unsigned int offset,
 			      offset, value);
 		return -EINVAL;
 	}
+
 	/*
 	 * Need to emulate all the HWSP register write to ensure host can
 	 * update the VM CSB status correctly. Here listed registers can
@@ -1503,7 +1505,7 @@ static int skl_power_well_ctl_write(struct intel_vgpu *vgpu,
 {
 	u32 v = *(u32 *)p_data;
 
-	if (IS_BROXTON(vgpu->gvt->dev_priv))
+	if (IS_BROXTON(vgpu->gvt->gt->i915))
 		v &= (1 << 31) | (1 << 29);
 	else
 		v &= (1 << 31) | (1 << 29) | (1 << 9) |
@@ -1650,7 +1652,6 @@ static int mmio_read_from_hw(struct intel_vgpu *vgpu,
 		unsigned int offset, void *p_data, unsigned int bytes)
 {
 	struct intel_gvt *gvt = vgpu->gvt;
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
 	const struct intel_engine_cs *engine =
 		intel_gvt_render_mmio_to_engine(gvt, offset);
 
@@ -1665,9 +1666,10 @@ static int mmio_read_from_hw(struct intel_vgpu *vgpu,
 	    vgpu == gvt->scheduler.engine_owner[engine->id] ||
 	    offset == i915_mmio_reg_offset(RING_TIMESTAMP(engine->mmio_base)) ||
 	    offset == i915_mmio_reg_offset(RING_TIMESTAMP_UDW(engine->mmio_base))) {
-		mmio_hw_access_pre(dev_priv);
-		vgpu_vreg(vgpu, offset) = I915_READ(_MMIO(offset));
-		mmio_hw_access_post(dev_priv);
+		mmio_hw_access_pre(gvt->gt);
+		vgpu_vreg(vgpu, offset) =
+			intel_uncore_read(gvt->gt->uncore, _MMIO(offset));
+		mmio_hw_access_post(gvt->gt);
 	}
 
 	return intel_vgpu_default_mmio_read(vgpu, offset, p_data, bytes);
@@ -1710,7 +1712,7 @@ static int ring_mode_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 	int ret;
 
 	(*(u32 *)p_data) &= ~_MASKED_BIT_ENABLE(1);
-	if (IS_COFFEELAKE(vgpu->gvt->dev_priv))
+	if (IS_COFFEELAKE(vgpu->gvt->gt->i915))
 		(*(u32 *)p_data) &= ~_MASKED_BIT_ENABLE(2);
 	write_vreg(vgpu, offset, p_data, bytes);
 
@@ -1719,7 +1721,7 @@ static int ring_mode_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		return 0;
 	}
 
-	if (IS_COFFEELAKE(vgpu->gvt->dev_priv) &&
+	if (IS_COFFEELAKE(vgpu->gvt->gt->i915) &&
 	    data & _MASKED_BIT_ENABLE(2)) {
 		enter_failsafe_mode(vgpu, GVT_FAILSAFE_UNSUPPORTED_GUEST);
 		return 0;
@@ -1872,7 +1874,7 @@ static int csfe_chicken1_mmio_write(struct intel_vgpu *vgpu,
 
 static int init_generic_mmio_info(struct intel_gvt *gvt)
 {
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
+	struct drm_i915_private *dev_priv = gvt->gt->i915;
 	int ret;
 
 	MMIO_RING_DFH(RING_IMR, D_ALL, F_CMD_ACCESS, NULL,
@@ -2689,7 +2691,7 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 
 static int init_bdw_mmio_info(struct intel_gvt *gvt)
 {
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
+	struct drm_i915_private *dev_priv = gvt->gt->i915;
 	int ret;
 
 	MMIO_DH(GEN8_GT_IMR(0), D_BDW_PLUS, NULL, intel_vgpu_reg_imr_handler);
@@ -2878,7 +2880,7 @@ static int init_bdw_mmio_info(struct intel_gvt *gvt)
 
 static int init_skl_mmio_info(struct intel_gvt *gvt)
 {
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
+	struct drm_i915_private *dev_priv = gvt->gt->i915;
 	int ret;
 
 	MMIO_DH(FORCEWAKE_RENDER_GEN9, D_SKL_PLUS, NULL, mul_force_wake_write);
@@ -3127,7 +3129,7 @@ static int init_skl_mmio_info(struct intel_gvt *gvt)
 
 static int init_bxt_mmio_info(struct intel_gvt *gvt)
 {
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
+	struct drm_i915_private *dev_priv = gvt->gt->i915;
 	int ret;
 
 	MMIO_F(_MMIO(0x80000), 0x3000, 0, 0, 0, D_BXT, NULL, NULL);
@@ -3363,7 +3365,7 @@ static struct gvt_mmio_block mmio_blocks[] = {
 int intel_gvt_setup_mmio_info(struct intel_gvt *gvt)
 {
 	struct intel_gvt_device_info *info = &gvt->device_info;
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
+	struct drm_i915_private *i915 = gvt->gt->i915;
 	int size = info->mmio_size / 4 * sizeof(*gvt->mmio.mmio_attribute);
 	int ret;
 
@@ -3375,20 +3377,20 @@ int intel_gvt_setup_mmio_info(struct intel_gvt *gvt)
 	if (ret)
 		goto err;
 
-	if (IS_BROADWELL(dev_priv)) {
+	if (IS_BROADWELL(i915)) {
 		ret = init_bdw_mmio_info(gvt);
 		if (ret)
 			goto err;
-	} else if (IS_SKYLAKE(dev_priv)
-		|| IS_KABYLAKE(dev_priv)
-		|| IS_COFFEELAKE(dev_priv)) {
+	} else if (IS_SKYLAKE(i915) ||
+		   IS_KABYLAKE(i915) ||
+		   IS_COFFEELAKE(i915)) {
 		ret = init_bdw_mmio_info(gvt);
 		if (ret)
 			goto err;
 		ret = init_skl_mmio_info(gvt);
 		if (ret)
 			goto err;
-	} else if (IS_BROXTON(dev_priv)) {
+	} else if (IS_BROXTON(i915)) {
 		ret = init_bdw_mmio_info(gvt);
 		if (ret)
 			goto err;
diff --git a/drivers/gpu/drm/i915/gvt/interrupt.c b/drivers/gpu/drm/i915/gvt/interrupt.c
index 11accd3e1023..1c1476a95a00 100644
--- a/drivers/gpu/drm/i915/gvt/interrupt.c
+++ b/drivers/gpu/drm/i915/gvt/interrupt.c
@@ -536,7 +536,7 @@ static void gen8_init_irq(
 	SET_BIT_INFO(irq, 4, VCS_MI_FLUSH_DW, INTEL_GVT_IRQ_INFO_GT1);
 	SET_BIT_INFO(irq, 8, VCS_AS_CONTEXT_SWITCH, INTEL_GVT_IRQ_INFO_GT1);
 
-	if (HAS_ENGINE(gvt->dev_priv, VCS1)) {
+	if (HAS_ENGINE(gvt->gt->i915, VCS1)) {
 		SET_BIT_INFO(irq, 16, VCS2_MI_USER_INTERRUPT,
 			INTEL_GVT_IRQ_INFO_GT1);
 		SET_BIT_INFO(irq, 20, VCS2_MI_FLUSH_DW,
@@ -568,7 +568,7 @@ static void gen8_init_irq(
 	SET_BIT_INFO(irq, 22, DP_C_HOTPLUG, INTEL_GVT_IRQ_INFO_PCH);
 	SET_BIT_INFO(irq, 23, DP_D_HOTPLUG, INTEL_GVT_IRQ_INFO_PCH);
 
-	if (IS_BROADWELL(gvt->dev_priv)) {
+	if (IS_BROADWELL(gvt->gt->i915)) {
 		SET_BIT_INFO(irq, 25, AUX_CHANNEL_B, INTEL_GVT_IRQ_INFO_PCH);
 		SET_BIT_INFO(irq, 26, AUX_CHANNEL_C, INTEL_GVT_IRQ_INFO_PCH);
 		SET_BIT_INFO(irq, 27, AUX_CHANNEL_D, INTEL_GVT_IRQ_INFO_PCH);
@@ -581,7 +581,7 @@ static void gen8_init_irq(
 
 		SET_BIT_INFO(irq, 4, PRIMARY_C_FLIP_DONE, INTEL_GVT_IRQ_INFO_DE_PIPE_C);
 		SET_BIT_INFO(irq, 5, SPRITE_C_FLIP_DONE, INTEL_GVT_IRQ_INFO_DE_PIPE_C);
-	} else if (INTEL_GEN(gvt->dev_priv) >= 9) {
+	} else if (INTEL_GEN(gvt->gt->i915) >= 9) {
 		SET_BIT_INFO(irq, 25, AUX_CHANNEL_B, INTEL_GVT_IRQ_INFO_DE_PORT);
 		SET_BIT_INFO(irq, 26, AUX_CHANNEL_C, INTEL_GVT_IRQ_INFO_DE_PORT);
 		SET_BIT_INFO(irq, 27, AUX_CHANNEL_D, INTEL_GVT_IRQ_INFO_DE_PORT);
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 3259a1fa69e1..2721400ee7f9 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -187,7 +187,7 @@ static int gvt_pin_guest_page(struct intel_vgpu *vgpu, unsigned long gfn,
 static int gvt_dma_map_page(struct intel_vgpu *vgpu, unsigned long gfn,
 		dma_addr_t *dma_addr, unsigned long size)
 {
-	struct device *dev = &vgpu->gvt->dev_priv->drm.pdev->dev;
+	struct device *dev = &vgpu->gvt->gt->i915->drm.pdev->dev;
 	struct page *page = NULL;
 	int ret;
 
@@ -210,7 +210,7 @@ static int gvt_dma_map_page(struct intel_vgpu *vgpu, unsigned long gfn,
 static void gvt_dma_unmap_page(struct intel_vgpu *vgpu, unsigned long gfn,
 		dma_addr_t dma_addr, unsigned long size)
 {
-	struct device *dev = &vgpu->gvt->dev_priv->drm.pdev->dev;
+	struct device *dev = &vgpu->gvt->gt->i915->drm.pdev->dev;
 
 	dma_unmap_page(dev, dma_addr, size, PCI_DMA_BIDIRECTIONAL);
 	gvt_unpin_guest_page(vgpu, gfn, size);
@@ -913,7 +913,7 @@ static int intel_vgpu_aperture_rw(struct intel_vgpu *vgpu, u64 off,
 		return -EINVAL;
 	}
 
-	aperture_va = io_mapping_map_wc(&vgpu->gvt->dev_priv->ggtt.iomap,
+	aperture_va = io_mapping_map_wc(&vgpu->gvt->gt->ggtt->iomap,
 					ALIGN_DOWN(off, PAGE_SIZE),
 					count + offset_in_page(off));
 	if (!aperture_va)
diff --git a/drivers/gpu/drm/i915/gvt/mmio.c b/drivers/gpu/drm/i915/gvt/mmio.c
index a55178884d67..ebf289e59d72 100644
--- a/drivers/gpu/drm/i915/gvt/mmio.c
+++ b/drivers/gpu/drm/i915/gvt/mmio.c
@@ -245,7 +245,7 @@ void intel_vgpu_reset_mmio(struct intel_vgpu *vgpu, bool dmlr)
 		/* set the bit 0:2(Core C-State ) to C0 */
 		vgpu_vreg_t(vgpu, GEN6_GT_CORE_STATUS) = 0;
 
-		if (IS_BROXTON(vgpu->gvt->dev_priv)) {
+		if (IS_BROXTON(vgpu->gvt->gt->i915)) {
 			vgpu_vreg_t(vgpu, BXT_P_CR_GT_DISP_PWRON) &=
 				    ~(BIT(0) | BIT(1));
 			vgpu_vreg_t(vgpu, BXT_PORT_CL1CM_DW0(DPIO_PHY0)) &=
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
index 182145e74812..37e8224e5d5e 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.c
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
@@ -157,12 +157,13 @@ static u32 gen9_mocs_mmio_offset_list[] = {
 	[VECS0] = 0xcb00,
 };
 
-static void load_render_mocs(struct drm_i915_private *dev_priv)
+static void load_render_mocs(const struct intel_engine_cs *engine)
 {
-	struct intel_gvt *gvt = dev_priv->gvt;
-	i915_reg_t offset;
+	struct intel_gvt *gvt = engine->i915->gvt;
+	struct intel_uncore *uncore = engine->uncore;
 	u32 cnt = gvt->engine_mmio_list.mocs_mmio_offset_list_cnt;
 	u32 *regs = gvt->engine_mmio_list.mocs_mmio_offset_list;
+	i915_reg_t offset;
 	int ring_id, i;
 
 	/* Platform doesn't have mocs mmios. */
@@ -170,12 +171,13 @@ static void load_render_mocs(struct drm_i915_private *dev_priv)
 		return;
 
 	for (ring_id = 0; ring_id < cnt; ring_id++) {
-		if (!HAS_ENGINE(dev_priv, ring_id))
+		if (!HAS_ENGINE(engine->i915, ring_id))
 			continue;
+
 		offset.reg = regs[ring_id];
 		for (i = 0; i < GEN9_MOCS_SIZE; i++) {
 			gen9_render_mocs.control_table[ring_id][i] =
-				I915_READ_FW(offset);
+				intel_uncore_read_fw(uncore, offset);
 			offset.reg += 4;
 		}
 	}
@@ -183,7 +185,7 @@ static void load_render_mocs(struct drm_i915_private *dev_priv)
 	offset.reg = 0xb020;
 	for (i = 0; i < GEN9_MOCS_SIZE / 2; i++) {
 		gen9_render_mocs.l3cc_table[i] =
-			I915_READ_FW(offset);
+			intel_uncore_read_fw(uncore, offset);
 		offset.reg += 4;
 	}
 	gen9_render_mocs.initialized = true;
@@ -410,7 +412,7 @@ static void switch_mocs(struct intel_vgpu *pre, struct intel_vgpu *next,
 		return;
 
 	if (!pre && !gen9_render_mocs.initialized)
-		load_render_mocs(engine->i915);
+		load_render_mocs(engine);
 
 	offset.reg = regs[engine->id];
 	for (i = 0; i < GEN9_MOCS_SIZE; i++) {
@@ -576,7 +578,7 @@ void intel_gvt_init_engine_mmio_context(struct intel_gvt *gvt)
 {
 	struct engine_mmio *mmio;
 
-	if (INTEL_GEN(gvt->dev_priv) >= 9) {
+	if (INTEL_GEN(gvt->gt->i915) >= 9) {
 		gvt->engine_mmio_list.mmio = gen9_engine_mmio_list;
 		gvt->engine_mmio_list.tlb_mmio_offset_list = gen8_tlb_mmio_offset_list;
 		gvt->engine_mmio_list.tlb_mmio_offset_list_cnt = ARRAY_SIZE(gen8_tlb_mmio_offset_list);
diff --git a/drivers/gpu/drm/i915/gvt/sched_policy.c b/drivers/gpu/drm/i915/gvt/sched_policy.c
index 737096a82e14..036b74fe9298 100644
--- a/drivers/gpu/drm/i915/gvt/sched_policy.c
+++ b/drivers/gpu/drm/i915/gvt/sched_policy.c
@@ -39,7 +39,7 @@ static bool vgpu_has_pending_workload(struct intel_vgpu *vgpu)
 	enum intel_engine_id i;
 	struct intel_engine_cs *engine;
 
-	for_each_engine(engine, vgpu->gvt->dev_priv, i) {
+	for_each_engine(engine, vgpu->gvt->gt, i) {
 		if (!list_empty(workload_q_head(vgpu, engine)))
 			return true;
 	}
@@ -152,8 +152,8 @@ static void try_to_schedule_next_vgpu(struct intel_gvt *gvt)
 	scheduler->need_reschedule = true;
 
 	/* still have uncompleted workload? */
-	for_each_engine(engine, gvt->dev_priv, i) {
-		if (scheduler->current_workload[i])
+	for_each_engine(engine, gvt->gt, i) {
+		if (scheduler->current_workload[engine->id])
 			return;
 	}
 
@@ -169,8 +169,8 @@ static void try_to_schedule_next_vgpu(struct intel_gvt *gvt)
 	scheduler->need_reschedule = false;
 
 	/* wake up workload dispatch thread */
-	for_each_engine(engine, gvt->dev_priv, i)
-		wake_up(&scheduler->waitq[i]);
+	for_each_engine(engine, gvt->gt, i)
+		wake_up(&scheduler->waitq[engine->id]);
 }
 
 static struct intel_vgpu *find_busy_vgpu(struct gvt_sched_data *sched_data)
@@ -445,7 +445,7 @@ void intel_vgpu_stop_schedule(struct intel_vgpu *vgpu)
 	struct intel_gvt_workload_scheduler *scheduler =
 		&vgpu->gvt->scheduler;
 	struct vgpu_sched_data *vgpu_data = vgpu->sched_data;
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 
@@ -468,7 +468,7 @@ void intel_vgpu_stop_schedule(struct intel_vgpu *vgpu)
 
 	intel_runtime_pm_get(&dev_priv->runtime_pm);
 	spin_lock_bh(&scheduler->mmio_context_lock);
-	for_each_engine(engine, &vgpu->gvt->dev_priv->gt, id) {
+	for_each_engine(engine, vgpu->gvt->gt, id) {
 		if (scheduler->engine_owner[engine->id] == vgpu) {
 			intel_gvt_switch_mmio(vgpu, NULL, engine);
 			scheduler->engine_owner[engine->id] = NULL;
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index b1ee4baf0f2b..ac2844d829a4 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -84,7 +84,7 @@ static void update_shadow_pdps(struct intel_vgpu_workload *workload)
 static void sr_oa_regs(struct intel_vgpu_workload *workload,
 		u32 *reg_state, bool save)
 {
-	struct drm_i915_private *dev_priv = workload->vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = workload->vgpu->gvt->gt->i915;
 	u32 ctx_oactxctrl = dev_priv->perf.ctx_oactxctrl_offset;
 	u32 ctx_flexeu0 = dev_priv->perf.ctx_flexeu0_offset;
 	int i = 0;
@@ -181,7 +181,7 @@ static int populate_shadow_context(struct intel_vgpu_workload *workload)
 	context_page_num = workload->engine->context_size;
 	context_page_num = context_page_num >> PAGE_SHIFT;
 
-	if (IS_BROADWELL(gvt->dev_priv) && workload->engine->id == RCS0)
+	if (IS_BROADWELL(gvt->gt->i915) && workload->engine->id == RCS0)
 		context_page_num = 19;
 
 	i = 2;
@@ -868,7 +868,7 @@ void intel_vgpu_clean_workloads(struct intel_vgpu *vgpu,
 				intel_engine_mask_t engine_mask)
 {
 	struct intel_vgpu_submission *s = &vgpu->submission;
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	struct intel_engine_cs *engine;
 	struct intel_vgpu_workload *pos, *n;
 	intel_engine_mask_t tmp;
@@ -1065,7 +1065,7 @@ void intel_gvt_clean_workload_scheduler(struct intel_gvt *gvt)
 
 	gvt_dbg_core("clean workload scheduler\n");
 
-	for_each_engine(engine, gvt->dev_priv, i) {
+	for_each_engine(engine, gvt->gt, i) {
 		atomic_notifier_chain_unregister(
 					&engine->context_status_notifier,
 					&gvt->shadow_ctx_notifier_block[i]);
@@ -1084,7 +1084,7 @@ int intel_gvt_init_workload_scheduler(struct intel_gvt *gvt)
 
 	init_waitqueue_head(&scheduler->workload_complete_wq);
 
-	for_each_engine(engine, gvt->dev_priv, i) {
+	for_each_engine(engine, gvt->gt, i) {
 		init_waitqueue_head(&scheduler->waitq[i]);
 
 		scheduler->thread[i] = kthread_run(workload_thread, engine,
@@ -1142,7 +1142,7 @@ void intel_vgpu_clean_submission(struct intel_vgpu *vgpu)
 	intel_vgpu_select_submission_ops(vgpu, ALL_ENGINES, 0);
 
 	i915_context_ppgtt_root_restore(s, i915_vm_to_ppgtt(s->shadow[0]->vm));
-	for_each_engine(engine, vgpu->gvt->dev_priv, id)
+	for_each_engine(engine, vgpu->gvt->gt, id)
 		intel_context_unpin(s->shadow[id]);
 
 	kmem_cache_destroy(s->workloads);
@@ -1199,7 +1199,7 @@ i915_context_ppgtt_root_save(struct intel_vgpu_submission *s,
  */
 int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 {
-	struct drm_i915_private *i915 = vgpu->gvt->dev_priv;
+	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
 	struct intel_vgpu_submission *s = &vgpu->submission;
 	struct intel_engine_cs *engine;
 	struct i915_ppgtt *ppgtt;
@@ -1212,7 +1212,7 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 
 	i915_context_ppgtt_root_save(s, ppgtt);
 
-	for_each_engine(engine, &i915->gt, i) {
+	for_each_engine(engine, vgpu->gvt->gt, i) {
 		struct intel_context *ce;
 
 		INIT_LIST_HEAD(&s->workload_q_head[i]);
@@ -1264,7 +1264,7 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 
 out_shadow_ctx:
 	i915_context_ppgtt_root_restore(s, ppgtt);
-	for_each_engine(engine, &i915->gt, i) {
+	for_each_engine(engine, vgpu->gvt->gt, i) {
 		if (IS_ERR(s->shadow[i]))
 			break;
 
diff --git a/drivers/gpu/drm/i915/gvt/vgpu.c b/drivers/gpu/drm/i915/gvt/vgpu.c
index 85bd9bf4f6ee..77995acc022d 100644
--- a/drivers/gpu/drm/i915/gvt/vgpu.c
+++ b/drivers/gpu/drm/i915/gvt/vgpu.c
@@ -148,12 +148,12 @@ int intel_gvt_init_vgpu_types(struct intel_gvt *gvt)
 		gvt->types[i].avail_instance = min(low_avail / vgpu_types[i].low_mm,
 						   high_avail / vgpu_types[i].high_mm);
 
-		if (IS_GEN(gvt->dev_priv, 8))
+		if (IS_GEN(gvt->gt->i915, 8))
 			sprintf(gvt->types[i].name, "GVTg_V4_%s",
-						vgpu_types[i].name);
-		else if (IS_GEN(gvt->dev_priv, 9))
+				vgpu_types[i].name);
+		else if (IS_GEN(gvt->gt->i915, 9))
 			sprintf(gvt->types[i].name, "GVTg_V5_%s",
-						vgpu_types[i].name);
+				vgpu_types[i].name);
 
 		gvt_dbg_core("type[%d]: %s avail %u low %u high %u fence %u weight %u res %s\n",
 			     i, gvt->types[i].name,
@@ -427,7 +427,7 @@ static struct intel_vgpu *__intel_gvt_create_vgpu(struct intel_gvt *gvt,
 		goto out_clean_sched_policy;
 
 	/*TODO: add more platforms support */
-	if (IS_SKYLAKE(gvt->dev_priv) || IS_KABYLAKE(gvt->dev_priv))
+	if (IS_SKYLAKE(gvt->gt->i915) || IS_KABYLAKE(gvt->gt->i915))
 		ret = intel_gvt_hypervisor_set_edid(vgpu, PORT_D);
 	if (ret)
 		goto out_clean_sched_policy;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
