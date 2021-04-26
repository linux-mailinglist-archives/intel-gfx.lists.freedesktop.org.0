Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EBF36B195
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 12:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 853C96E1B8;
	Mon, 26 Apr 2021 10:23:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E6896E1B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 10:23:57 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Apr 2021 12:23:51 +0200
Message-Id: <20210426102351.921874-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use trylock in shrinker for ggtt on
 bsw vt-d and bxt, v2.
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
Cc: thomas.hellstrom@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The stop_machine() lock may allocate memory, but is called inside
vm->mutex, which is taken in the shrinker. This will cause a lockdep
splat, as can be seen below:

<4>[  462.585762] ======================================================
<4>[  462.585768] WARNING: possible circular locking dependency detected
<4>[  462.585773] 5.12.0-rc5-CI-Trybot_7644+ #1 Tainted: G     U
<4>[  462.585779] ------------------------------------------------------
<4>[  462.585783] i915_selftest/5540 is trying to acquire lock:
<4>[  462.585788] ffffffff826440b0 (cpu_hotplug_lock){++++}-{0:0}, at: stop_machine+0x12/0x30
<4>[  462.585814]
                  but task is already holding lock:
<4>[  462.585818] ffff888125369c70 (&vm->mutex/1){+.+.}-{3:3}, at: i915_vma_pin_ww+0x38e/0xb40 [i915]
<4>[  462.586301]
                  which lock already depends on the new lock.

<4>[  462.586305]
                  the existing dependency chain (in reverse order) is:
<4>[  462.586309]
                  -> #2 (&vm->mutex/1){+.+.}-{3:3}:
<4>[  462.586323]        i915_gem_shrinker_taints_mutex+0x2d/0x50 [i915]
<4>[  462.586719]        i915_address_space_init+0x12d/0x130 [i915]
<4>[  462.587092]        ppgtt_init+0x4e/0x80 [i915]
<4>[  462.587467]        gen8_ppgtt_create+0x3e/0x5c0 [i915]
<4>[  462.587828]        i915_ppgtt_create+0x28/0xf0 [i915]
<4>[  462.588203]        intel_gt_init+0x123/0x370 [i915]
<4>[  462.588572]        i915_gem_init+0x129/0x1f0 [i915]
<4>[  462.588971]        i915_driver_probe+0x753/0xd80 [i915]
<4>[  462.589320]        i915_pci_probe+0x43/0x1d0 [i915]
<4>[  462.589671]        pci_device_probe+0x9e/0x110
<4>[  462.589680]        really_probe+0xea/0x410
<4>[  462.589690]        driver_probe_device+0xd9/0x140
<4>[  462.589697]        device_driver_attach+0x4a/0x50
<4>[  462.589704]        __driver_attach+0x83/0x140
<4>[  462.589711]        bus_for_each_dev+0x75/0xc0
<4>[  462.589718]        bus_add_driver+0x14b/0x1f0
<4>[  462.589724]        driver_register+0x66/0xb0
<4>[  462.589731]        i915_init+0x70/0x87 [i915]
<4>[  462.590053]        do_one_initcall+0x56/0x2e0
<4>[  462.590061]        do_init_module+0x55/0x200
<4>[  462.590068]        load_module+0x2703/0x2990
<4>[  462.590074]        __do_sys_finit_module+0xad/0x110
<4>[  462.590080]        do_syscall_64+0x33/0x80
<4>[  462.590089]        entry_SYSCALL_64_after_hwframe+0x44/0xae
<4>[  462.590096]
                  -> #1 (fs_reclaim){+.+.}-{0:0}:
<4>[  462.590109]        fs_reclaim_acquire+0x9f/0xd0
<4>[  462.590118]        kmem_cache_alloc_trace+0x3d/0x430
<4>[  462.590126]        intel_cpuc_prepare+0x3b/0x1b0
<4>[  462.590133]        cpuhp_invoke_callback+0x9e/0x890
<4>[  462.590141]        _cpu_up+0xa4/0x130
<4>[  462.590147]        cpu_up+0x82/0x90
<4>[  462.590153]        bringup_nonboot_cpus+0x4a/0x60
<4>[  462.590159]        smp_init+0x21/0x5c
<4>[  462.590167]        kernel_init_freeable+0x8a/0x1b7
<4>[  462.590175]        kernel_init+0x5/0xff
<4>[  462.590181]        ret_from_fork+0x22/0x30
<4>[  462.590187]
                  -> #0 (cpu_hotplug_lock){++++}-{0:0}:
<4>[  462.590199]        __lock_acquire+0x1520/0x2590
<4>[  462.590207]        lock_acquire+0xd1/0x3d0
<4>[  462.590213]        cpus_read_lock+0x39/0xc0
<4>[  462.590219]        stop_machine+0x12/0x30
<4>[  462.590226]        bxt_vtd_ggtt_insert_entries__BKL+0x36/0x50 [i915]
<4>[  462.590601]        ggtt_bind_vma+0x5d/0x80 [i915]
<4>[  462.590970]        i915_vma_bind+0xdc/0x1c0 [i915]
<4>[  462.591374]        i915_vma_pin_ww+0x435/0xb40 [i915]
<4>[  462.591779]        make_obj_busy+0xcb/0x330 [i915]
<4>[  462.592170]        igt_mmap_offset_exhaustion+0x45f/0x4c0 [i915]
<4>[  462.592562]        __i915_subtests.cold.7+0x42/0x92 [i915]
<4>[  462.592995]        __run_selftests.part.3+0x10d/0x172 [i915]
<4>[  462.593428]        i915_live_selftests.cold.5+0x1f/0x47 [i915]
<4>[  462.593860]        i915_pci_probe+0x93/0x1d0 [i915]
<4>[  462.594210]        pci_device_probe+0x9e/0x110
<4>[  462.594217]        really_probe+0xea/0x410
<4>[  462.594226]        driver_probe_device+0xd9/0x140
<4>[  462.594233]        device_driver_attach+0x4a/0x50
<4>[  462.594240]        __driver_attach+0x83/0x140
<4>[  462.594247]        bus_for_each_dev+0x75/0xc0
<4>[  462.594254]        bus_add_driver+0x14b/0x1f0
<4>[  462.594260]        driver_register+0x66/0xb0
<4>[  462.594267]        i915_init+0x70/0x87 [i915]
<4>[  462.594586]        do_one_initcall+0x56/0x2e0
<4>[  462.594592]        do_init_module+0x55/0x200
<4>[  462.594599]        load_module+0x2703/0x2990
<4>[  462.594605]        __do_sys_finit_module+0xad/0x110
<4>[  462.594612]        do_syscall_64+0x33/0x80
<4>[  462.594618]        entry_SYSCALL_64_after_hwframe+0x44/0xae
<4>[  462.594625]
                  other info that might help us debug this:

<4>[  462.594629] Chain exists of:
                    cpu_hotplug_lock --> fs_reclaim --> &vm->mutex/1

<4>[  462.594645]  Possible unsafe locking scenario:

<4>[  462.594648]        CPU0                    CPU1
<4>[  462.594652]        ----                    ----
<4>[  462.594655]   lock(&vm->mutex/1);
<4>[  462.594664]                                lock(fs_reclaim);
<4>[  462.594671]                                lock(&vm->mutex/1);
<4>[  462.594679]   lock(cpu_hotplug_lock);
<4>[  462.594686]
                   *** DEADLOCK ***

<4>[  462.594690] 4 locks held by i915_selftest/5540:
<4>[  462.594696]  #0: ffff888100fbc240 (&dev->mutex){....}-{3:3}, at: device_driver_attach+0x18/0x50
<4>[  462.594715]  #1: ffffc900006cb9a0 (reservation_ww_class_acquire){+.+.}-{0:0}, at: make_obj_busy+0x81/0x330 [i915]
<4>[  462.595118]  #2: ffff88812a6081e8 (reservation_ww_class_mutex){+.+.}-{3:3}, at: make_obj_busy+0x21f/0x330 [i915]
<4>[  462.595519]  #3: ffff888125369c70 (&vm->mutex/1){+.+.}-{3:3}, at: i915_vma_pin_ww+0x38e/0xb40 [i915]
<4>[  462.595934]
                  stack backtrace:
<4>[  462.595939] CPU: 0 PID: 5540 Comm: i915_selftest Tainted: G     U            5.12.0-rc5-CI-Trybot_7644+ #1
<4>[  462.595947] Hardware name: GOOGLE Kefka/Kefka, BIOS MrChromebox 02/04/2018
<4>[  462.595952] Call Trace:
<4>[  462.595961]  dump_stack+0x7f/0xad
<4>[  462.595974]  check_noncircular+0x12e/0x150
<4>[  462.595982]  ? save_stack.isra.17+0x3f/0x70
<4>[  462.595991]  ? drm_mm_insert_node_in_range+0x34a/0x5b0
<4>[  462.596000]  ? i915_vma_pin_ww+0x9ec/0xb40 [i915]
<4>[  462.596410]  __lock_acquire+0x1520/0x2590
<4>[  462.596419]  ? do_init_module+0x55/0x200
<4>[  462.596429]  lock_acquire+0xd1/0x3d0
<4>[  462.596435]  ? stop_machine+0x12/0x30
<4>[  462.596445]  ? gen8_ggtt_insert_entries+0xf0/0xf0 [i915]
<4>[  462.596816]  cpus_read_lock+0x39/0xc0
<4>[  462.596824]  ? stop_machine+0x12/0x30
<4>[  462.596831]  stop_machine+0x12/0x30
<4>[  462.596839]  bxt_vtd_ggtt_insert_entries__BKL+0x36/0x50 [i915]
<4>[  462.597210]  ggtt_bind_vma+0x5d/0x80 [i915]
<4>[  462.597580]  i915_vma_bind+0xdc/0x1c0 [i915]
<4>[  462.597986]  i915_vma_pin_ww+0x435/0xb40 [i915]
<4>[  462.598395]  ? make_obj_busy+0xcb/0x330 [i915]
<4>[  462.598786]  make_obj_busy+0xcb/0x330 [i915]
<4>[  462.599180]  ? 0xffffffff81000000
<4>[  462.599187]  ? debug_mutex_unlock+0x50/0xa0
<4>[  462.599198]  igt_mmap_offset_exhaustion+0x45f/0x4c0 [i915]
<4>[  462.599592]  __i915_subtests.cold.7+0x42/0x92 [i915]
<4>[  462.600026]  ? i915_perf_selftests+0x20/0x20 [i915]
<4>[  462.600422]  ? __i915_nop_setup+0x10/0x10 [i915]
<4>[  462.600820]  __run_selftests.part.3+0x10d/0x172 [i915]
<4>[  462.601253]  i915_live_selftests.cold.5+0x1f/0x47 [i915]
<4>[  462.601686]  i915_pci_probe+0x93/0x1d0 [i915]
<4>[  462.602037]  ? _raw_spin_unlock_irqrestore+0x3d/0x60
<4>[  462.602047]  pci_device_probe+0x9e/0x110
<4>[  462.602057]  really_probe+0xea/0x410
<4>[  462.602067]  driver_probe_device+0xd9/0x140
<4>[  462.602075]  device_driver_attach+0x4a/0x50
<4>[  462.602084]  __driver_attach+0x83/0x140
<4>[  462.602091]  ? device_driver_attach+0x50/0x50
<4>[  462.602099]  ? device_driver_attach+0x50/0x50
<4>[  462.602107]  bus_for_each_dev+0x75/0xc0
<4>[  462.602116]  bus_add_driver+0x14b/0x1f0
<4>[  462.602124]  driver_register+0x66/0xb0
<4>[  462.602133]  i915_init+0x70/0x87 [i915]
<4>[  462.602453]  ? 0xffffffffa0606000
<4>[  462.602458]  do_one_initcall+0x56/0x2e0
<4>[  462.602466]  ? kmem_cache_alloc_trace+0x374/0x430
<4>[  462.602476]  do_init_module+0x55/0x200
<4>[  462.602484]  load_module+0x2703/0x2990
<4>[  462.602500]  ? __do_sys_finit_module+0xad/0x110
<4>[  462.602507]  __do_sys_finit_module+0xad/0x110
<4>[  462.602519]  do_syscall_64+0x33/0x80
<4>[  462.602527]  entry_SYSCALL_64_after_hwframe+0x44/0xae
<4>[  462.602535] RIP: 0033:0x7fab69d8d89d

Changes since v1:
- Add lockdep annotations during init, to ensure that lockdep is primed.
  This also fixes a false positive when reading /proc/lockdep_stats
  during module reload.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 13 +++++++++----
 drivers/gpu/drm/i915/gt/intel_ggtt.c         |  8 +++++---
 drivers/gpu/drm/i915/gt/intel_gtt.c          | 17 ++++++++++++++++-
 drivers/gpu/drm/i915/i915_drv.h              | 11 +++++++++--
 drivers/gpu/drm/i915/i915_gem.c              | 15 +++++++++++++--
 5 files changed, 52 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 3e248d3bd869..7545ddd83659 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -38,15 +38,17 @@ static bool can_release_pages(struct drm_i915_gem_object *obj)
 }
 
 static bool unsafe_drop_pages(struct drm_i915_gem_object *obj,
-			      unsigned long shrink)
+			      unsigned long shrink, bool trylock_vm)
 {
 	unsigned long flags;
 
 	flags = 0;
 	if (shrink & I915_SHRINK_ACTIVE)
-		flags = I915_GEM_OBJECT_UNBIND_ACTIVE;
+		flags |= I915_GEM_OBJECT_UNBIND_ACTIVE;
 	if (!(shrink & I915_SHRINK_BOUND))
-		flags = I915_GEM_OBJECT_UNBIND_TEST;
+		flags |= I915_GEM_OBJECT_UNBIND_TEST;
+	if (trylock_vm)
+		flags |= I915_GEM_OBJECT_UNBIND_VM_TRYLOCK;
 
 	if (i915_gem_object_unbind(obj, flags) == 0)
 		return true;
@@ -116,6 +118,9 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 	unsigned long scanned = 0;
 	int err;
 
+	/* CHV + VTD workaround use stop_machine(); need to trylock vm->mutex */
+	bool trylock_vm = !ww && intel_vm_no_concurrent_access_wa(i915);
+
 	trace_i915_gem_shrink(i915, target, shrink);
 
 	/*
@@ -203,7 +208,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 			spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 
 			err = 0;
-			if (unsafe_drop_pages(obj, shrink)) {
+			if (unsafe_drop_pages(obj, shrink, trylock_vm)) {
 				/* May arrive from get_pages on another bo */
 				if (!ww) {
 					if (!i915_gem_object_trylock(obj))
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 670c1271e7d5..a73ffa27e89f 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -906,9 +906,11 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 
 	ggtt->vm.insert_entries = gen8_ggtt_insert_entries;
 
-	/* Serialize GTT updates with aperture access on BXT if VT-d is on. */
-	if (intel_ggtt_update_needs_vtd_wa(i915) ||
-	    IS_CHERRYVIEW(i915) /* fails with concurrent use/update */) {
+	/*
+	 * Serialize GTT updates with aperture access on BXT if VT-d is on,
+	 * and always on CHV.
+	 */
+	if (intel_vm_no_concurrent_access_wa(i915)) {
 		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
 		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
 		ggtt->vm.bind_async_flags =
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 941f8af016d6..a994234f2bd4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -132,7 +132,22 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	 */
 	mutex_init(&vm->mutex);
 	lockdep_set_subclass(&vm->mutex, subclass);
-	i915_gem_shrinker_taints_mutex(vm->i915, &vm->mutex);
+
+	if (!intel_vm_no_concurrent_access_wa(vm->i915)) {
+		i915_gem_shrinker_taints_mutex(vm->i915, &vm->mutex);
+	} else {
+		/*
+		 * CHV + BXT VTD workaround use stop_machine(),
+		 * which is allowed to allocate memory. This means &vm->mutex
+		 * is the outer lock, and in theory we can allocate memory inside
+		 * it through stop_machine().
+		 *
+		 * Add the annotation for this, we use trylock in shrinker.
+		 */
+		mutex_acquire(&vm->mutex.dep_map, 0, 0, _THIS_IP_);
+		might_alloc(GFP_KERNEL);
+		mutex_release(&vm->mutex.dep_map, _THIS_IP_);
+	}
 	dma_resv_init(&vm->resv);
 
 	GEM_BUG_ON(!vm->total);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0b44333eb703..9636aee75d83 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1719,9 +1719,15 @@ static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *dev_priv)
 }
 
 static inline bool
-intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *dev_priv)
+intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
 {
-	return IS_BROXTON(dev_priv) && intel_vtd_active();
+	return IS_BROXTON(i915) && intel_vtd_active();
+}
+
+static inline bool
+intel_vm_no_concurrent_access_wa(struct drm_i915_private *i915)
+{
+	return IS_CHERRYVIEW(i915) || intel_ggtt_update_needs_vtd_wa(i915);
 }
 
 /* i915_drv.c */
@@ -1801,6 +1807,7 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 #define I915_GEM_OBJECT_UNBIND_ACTIVE BIT(0)
 #define I915_GEM_OBJECT_UNBIND_BARRIER BIT(1)
 #define I915_GEM_OBJECT_UNBIND_TEST BIT(2)
+#define I915_GEM_OBJECT_UNBIND_VM_TRYLOCK BIT(3)
 
 void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index b23f58e94cfb..07da6a9342e3 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -157,8 +157,19 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 		if (vma) {
 			ret = -EBUSY;
 			if (flags & I915_GEM_OBJECT_UNBIND_ACTIVE ||
-			    !i915_vma_is_active(vma))
-				ret = i915_vma_unbind(vma);
+			    !i915_vma_is_active(vma)) {
+				if (i915_is_ggtt(vma->vm) &&
+				    flags & I915_GEM_OBJECT_UNBIND_VM_TRYLOCK) {
+					if (mutex_trylock(&vma->vm->mutex)) {
+						ret = __i915_vma_unbind(vma);
+						mutex_unlock(&vma->vm->mutex);
+					} else {
+						ret = -EBUSY;
+					}
+				} else {
+					ret = i915_vma_unbind(vma);
+				}
+			}
 
 			__i915_vma_put(vma);
 		}
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
