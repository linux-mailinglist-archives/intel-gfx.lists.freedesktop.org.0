Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E0B3D12FF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 17:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F606E97A;
	Wed, 21 Jul 2021 15:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 026556E97A;
 Wed, 21 Jul 2021 15:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=I9sXFGWjxOVUkxEJK8JQ+fn+zyZFr1oN9GUjuFqKDgs=; b=JxW6anD0AZSlDvNeT7rSq0glpW
 4gpmhOhuGWfM0/I7T8RmZS3pAqUdOy4sy2S8Az4iiMnCtHPbJIOiwRftL9JlYgcsm1stdnkrWd5az
 pI1SaL4ktWw9YzKKJiBCmzE8lTBfnRXd5OxYHJGWQucDPVzO9pfNysLXjFmlx7NUhKWXY+vFofLg4
 vRiG5tUEfMqzuWAGmpIG4GCGwctM/V1v7vwgyFxYrWeqVwDEfNdn4KM5ArtqFZCc0/sp0rTAz4/kQ
 TGmF+0qzB1+cFx+Wf8qKYqrCR1lYAxizAvEJX9tit+zNfBunJrjZTgmCrCmsSay2N8j7C0o5ubtVG
 3RMXO7pA==;
Received: from [2001:4bb8:193:7660:d6d5:72f4:23f7:1898] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6Eam-009MTf-Mf; Wed, 21 Jul 2021 15:57:14 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Date: Wed, 21 Jul 2021 17:53:43 +0200
Message-Id: <20210721155355.173183-10-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210721155355.173183-1-hch@lst.de>
References: <20210721155355.173183-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 09/21] drm/i915/gvt: merge struct
 kvmgt_guest_info into strut intel_vgpu
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
Cc: intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Consolidate the per-VGPU structures into a single one.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/gpu/drm/i915/gvt/gvt.h   |   8 +++
 drivers/gpu/drm/i915/gvt/kvmgt.c | 117 ++++++++++++-------------------
 2 files changed, 52 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index 9f419e7f7a1b..a4691f0607e6 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -34,6 +34,7 @@
 #define _GVT_H_
 
 #include <uapi/linux/pci_regs.h>
+#include <linux/kvm_host.h>
 
 #include "i915_drv.h"
 
@@ -173,6 +174,8 @@ struct intel_vgpu_submission {
 	} last_ctx[I915_NUM_ENGINES];
 };
 
+#define KVMGT_DEBUGFS_FILENAME		"kvmgt_nr_cache_entries"
+
 struct intel_vgpu {
 	struct intel_gvt *gvt;
 	struct mutex vgpu_lock;
@@ -235,6 +238,11 @@ struct intel_vgpu {
 	atomic_t released;
 	struct vfio_device *vfio_device;
 	struct vfio_group *vfio_group;
+
+	struct kvm_page_track_notifier_node track_node;
+#define NR_BKT (1 << 18)
+	struct hlist_head ptable[NR_BKT];
+#undef NR_BKT
 };
 
 /* validating GM healthy status*/
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index bb536463a499..785647e776d2 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -39,7 +39,6 @@
 #include <linux/spinlock.h>
 #include <linux/eventfd.h>
 #include <linux/uuid.h>
-#include <linux/kvm_host.h>
 #include <linux/vfio.h>
 #include <linux/mdev.h>
 #include <linux/debugfs.h>
@@ -88,16 +87,6 @@ struct kvmgt_pgfn {
 	struct hlist_node hnode;
 };
 
-#define KVMGT_DEBUGFS_FILENAME "kvmgt_nr_cache_entries"
-struct kvmgt_guest_info {
-	struct kvm *kvm;
-	struct intel_vgpu *vgpu;
-	struct kvm_page_track_notifier_node track_node;
-#define NR_BKT (1 << 18)
-	struct hlist_head ptable[NR_BKT];
-#undef NR_BKT
-};
-
 struct gvt_dma {
 	struct intel_vgpu *vgpu;
 	struct rb_node gfn_node;
@@ -213,7 +202,7 @@ static void intel_gvt_cleanup_vgpu_type_groups(struct intel_gvt *gvt)
 
 static int kvmgt_guest_init(struct mdev_device *mdev);
 static void intel_vgpu_release_work(struct work_struct *work);
-static bool kvmgt_guest_exit(struct kvmgt_guest_info *info);
+static bool kvmgt_guest_exit(struct intel_vgpu *info);
 
 static void gvt_unpin_guest_page(struct intel_vgpu *vgpu, unsigned long gfn,
 		unsigned long size)
@@ -437,12 +426,12 @@ static void gvt_cache_init(struct intel_vgpu *vgpu)
 	mutex_init(&vgpu->cache_lock);
 }
 
-static void kvmgt_protect_table_init(struct kvmgt_guest_info *info)
+static void kvmgt_protect_table_init(struct intel_vgpu *info)
 {
 	hash_init(info->ptable);
 }
 
-static void kvmgt_protect_table_destroy(struct kvmgt_guest_info *info)
+static void kvmgt_protect_table_destroy(struct intel_vgpu *info)
 {
 	struct kvmgt_pgfn *p;
 	struct hlist_node *tmp;
@@ -455,7 +444,7 @@ static void kvmgt_protect_table_destroy(struct kvmgt_guest_info *info)
 }
 
 static struct kvmgt_pgfn *
-__kvmgt_protect_table_find(struct kvmgt_guest_info *info, gfn_t gfn)
+__kvmgt_protect_table_find(struct intel_vgpu *info, gfn_t gfn)
 {
 	struct kvmgt_pgfn *p, *res = NULL;
 
@@ -469,8 +458,7 @@ __kvmgt_protect_table_find(struct kvmgt_guest_info *info, gfn_t gfn)
 	return res;
 }
 
-static bool kvmgt_gfn_is_write_protected(struct kvmgt_guest_info *info,
-				gfn_t gfn)
+static bool kvmgt_gfn_is_write_protected(struct intel_vgpu *info, gfn_t gfn)
 {
 	struct kvmgt_pgfn *p;
 
@@ -478,7 +466,7 @@ static bool kvmgt_gfn_is_write_protected(struct kvmgt_guest_info *info,
 	return !!p;
 }
 
-static void kvmgt_protect_table_add(struct kvmgt_guest_info *info, gfn_t gfn)
+static void kvmgt_protect_table_add(struct intel_vgpu *info, gfn_t gfn)
 {
 	struct kvmgt_pgfn *p;
 
@@ -493,8 +481,7 @@ static void kvmgt_protect_table_add(struct kvmgt_guest_info *info, gfn_t gfn)
 	hash_add(info->ptable, &p->hnode, gfn);
 }
 
-static void kvmgt_protect_table_del(struct kvmgt_guest_info *info,
-				gfn_t gfn)
+static void kvmgt_protect_table_del(struct intel_vgpu *info, gfn_t gfn)
 {
 	struct kvmgt_pgfn *p;
 
@@ -921,7 +908,6 @@ static void intel_vgpu_release_msi_eventfd_ctx(struct intel_vgpu *vgpu)
 static void __intel_vgpu_release(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
-	struct kvmgt_guest_info *info;
 	int ret;
 
 	if (!handle_valid(vgpu->handle))
@@ -945,8 +931,7 @@ static void __intel_vgpu_release(struct intel_vgpu *vgpu)
 	/* dereference module reference taken at open */
 	module_put(THIS_MODULE);
 
-	info = (struct kvmgt_guest_info *)vgpu->handle;
-	kvmgt_guest_exit(info);
+	kvmgt_guest_exit(vgpu);
 
 	intel_vgpu_release_msi_eventfd_ctx(vgpu);
 	vfio_group_put_external_user(vgpu->vfio_group);
@@ -1732,7 +1717,7 @@ static void kvmgt_host_exit(struct device *dev, void *gvt)
 
 static int kvmgt_page_track_add(unsigned long handle, u64 gfn)
 {
-	struct kvmgt_guest_info *info;
+	struct intel_vgpu *info;
 	struct kvm *kvm;
 	struct kvm_memory_slot *slot;
 	int idx;
@@ -1740,7 +1725,7 @@ static int kvmgt_page_track_add(unsigned long handle, u64 gfn)
 	if (!handle_valid(handle))
 		return -ESRCH;
 
-	info = (struct kvmgt_guest_info *)handle;
+	info = (struct intel_vgpu *)handle;
 	kvm = info->kvm;
 
 	idx = srcu_read_lock(&kvm->srcu);
@@ -1766,7 +1751,7 @@ static int kvmgt_page_track_add(unsigned long handle, u64 gfn)
 
 static int kvmgt_page_track_remove(unsigned long handle, u64 gfn)
 {
-	struct kvmgt_guest_info *info;
+	struct intel_vgpu *info;
 	struct kvm *kvm;
 	struct kvm_memory_slot *slot;
 	int idx;
@@ -1774,7 +1759,7 @@ static int kvmgt_page_track_remove(unsigned long handle, u64 gfn)
 	if (!handle_valid(handle))
 		return 0;
 
-	info = (struct kvmgt_guest_info *)handle;
+	info = (struct intel_vgpu *)handle;
 	kvm = info->kvm;
 
 	idx = srcu_read_lock(&kvm->srcu);
@@ -1802,11 +1787,11 @@ static void kvmgt_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa,
 		const u8 *val, int len,
 		struct kvm_page_track_notifier_node *node)
 {
-	struct kvmgt_guest_info *info = container_of(node,
-					struct kvmgt_guest_info, track_node);
+	struct intel_vgpu *info =
+		container_of(node, struct intel_vgpu, track_node);
 
 	if (kvmgt_gfn_is_write_protected(info, gpa_to_gfn(gpa)))
-		intel_vgpu_page_track_handler(info->vgpu, gpa,
+		intel_vgpu_page_track_handler(info, gpa,
 						     (void *)val, len);
 }
 
@@ -1816,8 +1801,8 @@ static void kvmgt_page_track_flush_slot(struct kvm *kvm,
 {
 	int i;
 	gfn_t gfn;
-	struct kvmgt_guest_info *info = container_of(node,
-					struct kvmgt_guest_info, track_node);
+	struct intel_vgpu *info =
+		container_of(node, struct intel_vgpu, track_node);
 
 	write_lock(&kvm->mmu_lock);
 	for (i = 0; i < slot->npages; i++) {
@@ -1834,7 +1819,6 @@ static void kvmgt_page_track_flush_slot(struct kvm *kvm,
 static bool __kvmgt_vgpu_exist(struct intel_vgpu *vgpu, struct kvm *kvm)
 {
 	struct intel_vgpu *itr;
-	struct kvmgt_guest_info *info;
 	int id;
 	bool ret = false;
 
@@ -1843,8 +1827,7 @@ static bool __kvmgt_vgpu_exist(struct intel_vgpu *vgpu, struct kvm *kvm)
 		if (!handle_valid(itr->handle))
 			continue;
 
-		info = (struct kvmgt_guest_info *)itr->handle;
-		if (kvm && kvm == info->kvm) {
+		if (kvm && kvm == itr->kvm) {
 			ret = true;
 			goto out;
 		}
@@ -1856,7 +1839,6 @@ static bool __kvmgt_vgpu_exist(struct intel_vgpu *vgpu, struct kvm *kvm)
 
 static int kvmgt_guest_init(struct mdev_device *mdev)
 {
-	struct kvmgt_guest_info *info;
 	struct intel_vgpu *vgpu;
 	struct kvm *kvm;
 
@@ -1873,38 +1855,29 @@ static int kvmgt_guest_init(struct mdev_device *mdev)
 	if (__kvmgt_vgpu_exist(vgpu, kvm))
 		return -EEXIST;
 
-	info = vzalloc(sizeof(struct kvmgt_guest_info));
-	if (!info)
-		return -ENOMEM;
-
-	vgpu->handle = (unsigned long)info;
-	info->vgpu = vgpu;
-	info->kvm = kvm;
-	kvm_get_kvm(info->kvm);
+	vgpu->handle = (unsigned long)vgpu;
+	kvm_get_kvm(vgpu->kvm);
 
-	kvmgt_protect_table_init(info);
+	kvmgt_protect_table_init(vgpu);
 	gvt_cache_init(vgpu);
 
-	info->track_node.track_write = kvmgt_page_track_write;
-	info->track_node.track_flush_slot = kvmgt_page_track_flush_slot;
-	kvm_page_track_register_notifier(kvm, &info->track_node);
+	vgpu->track_node.track_write = kvmgt_page_track_write;
+	vgpu->track_node.track_flush_slot = kvmgt_page_track_flush_slot;
+	kvm_page_track_register_notifier(kvm, &vgpu->track_node);
 
 	debugfs_create_ulong(KVMGT_DEBUGFS_FILENAME, 0444, vgpu->debugfs,
 			     &vgpu->nr_cache_entries);
 	return 0;
 }
 
-static bool kvmgt_guest_exit(struct kvmgt_guest_info *info)
+static bool kvmgt_guest_exit(struct intel_vgpu *info)
 {
-	debugfs_remove(debugfs_lookup(KVMGT_DEBUGFS_FILENAME,
-				      info->vgpu->debugfs));
+	debugfs_remove(debugfs_lookup(KVMGT_DEBUGFS_FILENAME, info->debugfs));
 
 	kvm_page_track_unregister_notifier(info->kvm, &info->track_node);
 	kvm_put_kvm(info->kvm);
 	kvmgt_protect_table_destroy(info);
-	gvt_cache_destroy(info->vgpu);
-	vfree(info);
-
+	gvt_cache_destroy(info);
 	return true;
 }
 
@@ -1927,14 +1900,12 @@ static void kvmgt_detach_vgpu(void *p_vgpu)
 
 static int kvmgt_inject_msi(unsigned long handle, u32 addr, u16 data)
 {
-	struct kvmgt_guest_info *info;
 	struct intel_vgpu *vgpu;
 
 	if (!handle_valid(handle))
 		return -ESRCH;
 
-	info = (struct kvmgt_guest_info *)handle;
-	vgpu = info->vgpu;
+	vgpu = (struct intel_vgpu *)handle;
 
 	/*
 	 * When guest is poweroff, msi_trigger is set to NULL, but vgpu's
@@ -1956,15 +1927,15 @@ static int kvmgt_inject_msi(unsigned long handle, u32 addr, u16 data)
 
 static unsigned long kvmgt_gfn_to_pfn(unsigned long handle, unsigned long gfn)
 {
-	struct kvmgt_guest_info *info;
+	struct intel_vgpu *vgpu;
 	kvm_pfn_t pfn;
 
 	if (!handle_valid(handle))
 		return INTEL_GVT_INVALID_ADDR;
 
-	info = (struct kvmgt_guest_info *)handle;
+	vgpu = (struct intel_vgpu *)handle;
 
-	pfn = gfn_to_pfn(info->kvm, gfn);
+	pfn = gfn_to_pfn(vgpu->kvm, gfn);
 	if (is_error_noslot_pfn(pfn))
 		return INTEL_GVT_INVALID_ADDR;
 
@@ -1981,7 +1952,7 @@ static int kvmgt_dma_map_guest_page(unsigned long handle, unsigned long gfn,
 	if (!handle_valid(handle))
 		return -EINVAL;
 
-	vgpu = ((struct kvmgt_guest_info *)handle)->vgpu;
+	vgpu = (struct intel_vgpu *)handle;
 
 	mutex_lock(&vgpu->cache_lock);
 
@@ -2023,22 +1994,22 @@ static int kvmgt_dma_map_guest_page(unsigned long handle, unsigned long gfn,
 
 static int kvmgt_dma_pin_guest_page(unsigned long handle, dma_addr_t dma_addr)
 {
-	struct kvmgt_guest_info *info;
+	struct intel_vgpu *vgpu;
 	struct gvt_dma *entry;
 	int ret = 0;
 
 	if (!handle_valid(handle))
 		return -ENODEV;
 
-	info = (struct kvmgt_guest_info *)handle;
+	vgpu = (struct intel_vgpu *)handle;
 
-	mutex_lock(&info->vgpu->cache_lock);
-	entry = __gvt_cache_find_dma_addr(info->vgpu, dma_addr);
+	mutex_lock(&vgpu->cache_lock);
+	entry = __gvt_cache_find_dma_addr(vgpu, dma_addr);
 	if (entry)
 		kref_get(&entry->ref);
 	else
 		ret = -ENOMEM;
-	mutex_unlock(&info->vgpu->cache_lock);
+	mutex_unlock(&vgpu->cache_lock);
 
 	return ret;
 }
@@ -2060,7 +2031,7 @@ static void kvmgt_dma_unmap_guest_page(unsigned long handle, dma_addr_t dma_addr
 	if (!handle_valid(handle))
 		return;
 
-	vgpu = ((struct kvmgt_guest_info *)handle)->vgpu;
+	vgpu = (struct intel_vgpu *)handle;
 
 	mutex_lock(&vgpu->cache_lock);
 	entry = __gvt_cache_find_dma_addr(vgpu, dma_addr);
@@ -2072,14 +2043,14 @@ static void kvmgt_dma_unmap_guest_page(unsigned long handle, dma_addr_t dma_addr
 static int kvmgt_rw_gpa(unsigned long handle, unsigned long gpa,
 			void *buf, unsigned long len, bool write)
 {
-	struct kvmgt_guest_info *info;
+	struct intel_vgpu *vgpu;
 
 	if (!handle_valid(handle))
 		return -ESRCH;
 
-	info = (struct kvmgt_guest_info *)handle;
+	vgpu = (struct intel_vgpu *)handle;
 
-	return vfio_dma_rw(info->vgpu->vfio_group, gpa, buf, len, write);
+	return vfio_dma_rw(vgpu->vfio_group, gpa, buf, len, write);
 }
 
 static int kvmgt_read_gpa(unsigned long handle, unsigned long gpa,
@@ -2096,7 +2067,7 @@ static int kvmgt_write_gpa(unsigned long handle, unsigned long gpa,
 
 static bool kvmgt_is_valid_gfn(unsigned long handle, unsigned long gfn)
 {
-	struct kvmgt_guest_info *info;
+	struct intel_vgpu *vgpu;
 	struct kvm *kvm;
 	int idx;
 	bool ret;
@@ -2104,8 +2075,8 @@ static bool kvmgt_is_valid_gfn(unsigned long handle, unsigned long gfn)
 	if (!handle_valid(handle))
 		return false;
 
-	info = (struct kvmgt_guest_info *)handle;
-	kvm = info->kvm;
+	vgpu = (struct intel_vgpu *)handle;
+	kvm = vgpu->kvm;
 
 	idx = srcu_read_lock(&kvm->srcu);
 	ret = kvm_is_visible_gfn(kvm, gfn);
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
