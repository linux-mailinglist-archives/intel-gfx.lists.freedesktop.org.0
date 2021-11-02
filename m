Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 523F744279D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 08:07:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2279C6FAB1;
	Tue,  2 Nov 2021 07:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92DFB6FAB1;
 Tue,  2 Nov 2021 07:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=YPNTFLrYzTdYN88OLcqNiS4u6csCJc6uZVqcxpsmF4E=; b=CRce+KqQtg8azzdiPvAIBgzgOC
 JOy8B+gWrO/koEktjV1yI1i4NKzwDWb0dpkw7l0D2qLOI9WGWMHq+fZKEQJALquxsGORw8NAR3EoH
 7XhE9eRapCHX9f1tGaKvRxc2CBpeIMpazAfG2h+CT2wCXHcPSIGv+0HJCmGq+XhRWgmFstWb1QTmR
 1ue6QQelrDag+/mFbxIV/GiPW78j40CFp4gJaP12RGJNp9BSUZzNnutKxkhVZLNBCh3nwIveTpVGb
 V0pxAkyaD7+P3FewakuXk2rDvrzQWmFmLLmV3BY5C2oP+JZ09i6+Y5mWIjTIsSUBFesHeMf/N1/FQ
 Xr/OmxFw==;
Received: from 213-225-15-89.nat.highway.a1.net ([213.225.15.89]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhntA-000iCN-7F; Tue, 02 Nov 2021 07:07:21 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Date: Tue,  2 Nov 2021 08:05:44 +0100
Message-Id: <20211102070601.155501-13-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211102070601.155501-1-hch@lst.de>
References: <20211102070601.155501-1-hch@lst.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 12/29] drm/i915/gvt: remove vgpu->handle
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
 dri-devel@lists.freedesktop.org, Jason Gunthorpe <jgg@nvidia.com>,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Always pass the actual vgpu structure instead of encoding it as a
"handle" and add a bool flag to denote if a VGPU is attached.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/gpu/drm/i915/gvt/gvt.h       |   3 +-
 drivers/gpu/drm/i915/gvt/hypercall.h |  32 +++----
 drivers/gpu/drm/i915/gvt/kvmgt.c     | 126 +++++++++------------------
 drivers/gpu/drm/i915/gvt/mpt.h       |  20 ++---
 drivers/gpu/drm/i915/gvt/vgpu.c      |   6 +-
 5 files changed, 71 insertions(+), 116 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index a2fc939383148..d86f54f7c59d0 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -180,8 +180,8 @@ struct intel_vgpu {
 	struct intel_gvt *gvt;
 	struct mutex vgpu_lock;
 	int id;
-	unsigned long handle; /* vGPU handle used by hypervisor MPT modules */
 	bool active;
+	bool attached;
 	bool pv_notified;
 	bool failsafe;
 	unsigned int resetting_eng;
@@ -448,7 +448,6 @@ int intel_gvt_load_firmware(struct intel_gvt *gvt);
 #define RING_CTX_SIZE 320
 
 struct intel_vgpu_creation_params {
-	__u64 handle;
 	__u64 low_gm_sz;  /* in MB */
 	__u64 high_gm_sz; /* in MB */
 	__u64 fence_sz;
diff --git a/drivers/gpu/drm/i915/gvt/hypercall.h b/drivers/gpu/drm/i915/gvt/hypercall.h
index eacee6f41f9c7..9f04757598251 100644
--- a/drivers/gpu/drm/i915/gvt/hypercall.h
+++ b/drivers/gpu/drm/i915/gvt/hypercall.h
@@ -36,6 +36,7 @@
 #include <linux/types.h>
 
 struct device;
+struct intel_vgpu;
 
 /*
  * Specific GVT-g MPT modules function collections. Currently GVT-g supports
@@ -44,27 +45,28 @@ struct device;
 struct intel_gvt_mpt {
 	int (*host_init)(struct device *dev, void *gvt);
 	void (*host_exit)(struct device *dev, void *gvt);
-	void (*detach_vgpu)(void *vgpu);
-	int (*inject_msi)(unsigned long handle, u32 addr, u16 data);
-	int (*enable_page_track)(unsigned long handle, u64 gfn);
-	int (*disable_page_track)(unsigned long handle, u64 gfn);
-	int (*read_gpa)(unsigned long handle, unsigned long gpa, void *buf,
+	void (*detach_vgpu)(struct intel_vgpu *vgpu);
+	int (*inject_msi)(struct intel_vgpu *vgpu, u32 addr, u16 data);
+	int (*enable_page_track)(struct intel_vgpu *vgpu, u64 gfn);
+	int (*disable_page_track)(struct intel_vgpu *vgpu, u64 gfn);
+	int (*read_gpa)(struct intel_vgpu *vgpu, unsigned long gpa, void *buf,
 			unsigned long len);
-	int (*write_gpa)(unsigned long handle, unsigned long gpa, void *buf,
+	int (*write_gpa)(struct intel_vgpu *vgpu, unsigned long gpa, void *buf,
 			 unsigned long len);
-	unsigned long (*gfn_to_mfn)(unsigned long handle, unsigned long gfn);
+	unsigned long (*gfn_to_mfn)(struct intel_vgpu *vgpu, unsigned long gfn);
 
-	int (*dma_map_guest_page)(unsigned long handle, unsigned long gfn,
+	int (*dma_map_guest_page)(struct intel_vgpu *vgpu, unsigned long gfn,
 				  unsigned long size, dma_addr_t *dma_addr);
-	void (*dma_unmap_guest_page)(unsigned long handle, dma_addr_t dma_addr);
+	void (*dma_unmap_guest_page)(struct intel_vgpu *vgpu,
+				dma_addr_t dma_addr);
 
-	int (*dma_pin_guest_page)(unsigned long handle, dma_addr_t dma_addr);
+	int (*dma_pin_guest_page)(struct intel_vgpu *vgpu, dma_addr_t dma_addr);
 
-	int (*set_opregion)(void *vgpu);
-	int (*set_edid)(void *vgpu, int port_num);
-	int (*get_vfio_device)(void *vgpu);
-	void (*put_vfio_device)(void *vgpu);
-	bool (*is_valid_gfn)(unsigned long handle, unsigned long gfn);
+	int (*set_opregion)(struct intel_vgpu *vgpu);
+	int (*set_edid)(struct intel_vgpu *vgpu, int port_num);
+	int (*get_vfio_device)(struct intel_vgpu *vgpu);
+	void (*put_vfio_device)(struct intel_vgpu *vgpu);
+	bool (*is_valid_gfn)(struct intel_vgpu *vgpu, unsigned long gfn);
 };
 
 #endif /* _GVT_HYPERCALL_H_ */
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 2b4d354d626cf..7f1a455584408 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -98,11 +98,6 @@ struct gvt_dma {
 	struct kref ref;
 };
 
-static inline bool handle_valid(unsigned long handle)
-{
-	return !!(handle & ~0xff);
-}
-
 static ssize_t available_instances_show(struct mdev_type *mtype,
 					struct mdev_type_attribute *attr,
 					char *buf)
@@ -650,10 +645,8 @@ static int intel_vgpu_register_reg(struct intel_vgpu *vgpu,
 	return 0;
 }
 
-static int kvmgt_get_vfio_device(void *p_vgpu)
+static int kvmgt_get_vfio_device(struct intel_vgpu *vgpu)
 {
-	struct intel_vgpu *vgpu = (struct intel_vgpu *)p_vgpu;
-
 	vgpu->vfio_device = vfio_device_get_from_dev(
 		mdev_dev(vgpu->mdev));
 	if (!vgpu->vfio_device) {
@@ -664,9 +657,8 @@ static int kvmgt_get_vfio_device(void *p_vgpu)
 }
 
 
-static int kvmgt_set_opregion(void *p_vgpu)
+static int kvmgt_set_opregion(struct intel_vgpu *vgpu)
 {
-	struct intel_vgpu *vgpu = (struct intel_vgpu *)p_vgpu;
 	void *base;
 	int ret;
 
@@ -692,9 +684,8 @@ static int kvmgt_set_opregion(void *p_vgpu)
 	return ret;
 }
 
-static int kvmgt_set_edid(void *p_vgpu, int port_num)
+static int kvmgt_set_edid(struct intel_vgpu *vgpu, int port_num)
 {
-	struct intel_vgpu *vgpu = (struct intel_vgpu *)p_vgpu;
 	struct intel_vgpu_port *port = intel_vgpu_port(vgpu, port_num);
 	struct vfio_edid_region *base;
 	int ret;
@@ -722,10 +713,8 @@ static int kvmgt_set_edid(void *p_vgpu, int port_num)
 	return ret;
 }
 
-static void kvmgt_put_vfio_device(void *data)
+static void kvmgt_put_vfio_device(struct intel_vgpu *vgpu)
 {
-	struct intel_vgpu *vgpu = data;
-
 	if (WARN_ON(!vgpu->vfio_device))
 		return;
 
@@ -773,7 +762,7 @@ static int intel_vgpu_remove(struct mdev_device *mdev)
 {
 	struct intel_vgpu *vgpu = mdev_get_drvdata(mdev);
 
-	if (handle_valid(vgpu->handle))
+	if (vgpu->attached)
 		return -EBUSY;
 
 	intel_gvt_destroy_vgpu(vgpu);
@@ -911,7 +900,7 @@ static void __intel_vgpu_release(struct intel_vgpu *vgpu)
 	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
 	int ret;
 
-	if (!handle_valid(vgpu->handle))
+	if (!vgpu->attached)
 		return;
 
 	if (atomic_cmpxchg(&vgpu->released, 0, 1))
@@ -938,7 +927,7 @@ static void __intel_vgpu_release(struct intel_vgpu *vgpu)
 	vfio_group_put_external_user(vgpu->vfio_group);
 
 	vgpu->kvm = NULL;
-	vgpu->handle = 0;
+	vgpu->attached = false;
 }
 
 static void intel_vgpu_close_device(struct mdev_device *mdev)
@@ -1716,19 +1705,15 @@ static void kvmgt_host_exit(struct device *dev, void *gvt)
 	intel_gvt_cleanup_vgpu_type_groups((struct intel_gvt *)gvt);
 }
 
-static int kvmgt_page_track_add(unsigned long handle, u64 gfn)
+static int kvmgt_page_track_add(struct intel_vgpu *info, u64 gfn)
 {
-	struct intel_vgpu *info;
-	struct kvm *kvm;
+	struct kvm *kvm = info->kvm;
 	struct kvm_memory_slot *slot;
 	int idx;
 
-	if (!handle_valid(handle))
+	if (!info->attached)
 		return -ESRCH;
 
-	info = (struct intel_vgpu *)handle;
-	kvm = info->kvm;
-
 	idx = srcu_read_lock(&kvm->srcu);
 	slot = gfn_to_memslot(kvm, gfn);
 	if (!slot) {
@@ -1750,19 +1735,15 @@ static int kvmgt_page_track_add(unsigned long handle, u64 gfn)
 	return 0;
 }
 
-static int kvmgt_page_track_remove(unsigned long handle, u64 gfn)
+static int kvmgt_page_track_remove(struct intel_vgpu *info, u64 gfn)
 {
-	struct intel_vgpu *info;
-	struct kvm *kvm;
+	struct kvm *kvm = info->kvm;
 	struct kvm_memory_slot *slot;
 	int idx;
 
-	if (!handle_valid(handle))
+	if (!info->attached)
 		return 0;
 
-	info = (struct intel_vgpu *)handle;
-	kvm = info->kvm;
-
 	idx = srcu_read_lock(&kvm->srcu);
 	slot = gfn_to_memslot(kvm, gfn);
 	if (!slot) {
@@ -1825,7 +1806,7 @@ static bool __kvmgt_vgpu_exist(struct intel_vgpu *vgpu, struct kvm *kvm)
 
 	mutex_lock(&vgpu->gvt->lock);
 	for_each_active_vgpu(vgpu->gvt, itr, id) {
-		if (!handle_valid(itr->handle))
+		if (!itr->attached)
 			continue;
 
 		if (kvm && kvm == itr->kvm) {
@@ -1840,14 +1821,12 @@ static bool __kvmgt_vgpu_exist(struct intel_vgpu *vgpu, struct kvm *kvm)
 
 static int kvmgt_guest_init(struct mdev_device *mdev)
 {
-	struct intel_vgpu *vgpu;
-	struct kvm *kvm;
+	struct intel_vgpu *vgpu = mdev_get_drvdata(mdev);
+	struct kvm *kvm = vgpu->kvm;
 
-	vgpu = mdev_get_drvdata(mdev);
-	if (handle_valid(vgpu->handle))
+	if (vgpu->attached)
 		return -EEXIST;
 
-	kvm = vgpu->kvm;
 	if (!kvm || kvm->mm != current->mm) {
 		gvt_vgpu_err("KVM is required to use Intel vGPU\n");
 		return -ESRCH;
@@ -1856,7 +1835,7 @@ static int kvmgt_guest_init(struct mdev_device *mdev)
 	if (__kvmgt_vgpu_exist(vgpu, kvm))
 		return -EEXIST;
 
-	vgpu->handle = (unsigned long)vgpu;
+	vgpu->attached = true;
 	kvm_get_kvm(vgpu->kvm);
 
 	kvmgt_protect_table_init(vgpu);
@@ -1882,10 +1861,9 @@ static bool kvmgt_guest_exit(struct intel_vgpu *info)
 	return true;
 }
 
-static void kvmgt_detach_vgpu(void *p_vgpu)
+static void kvmgt_detach_vgpu(struct intel_vgpu *vgpu)
 {
 	int i;
-	struct intel_vgpu *vgpu = (struct intel_vgpu *)p_vgpu;
 
 	if (!vgpu->region)
 		return;
@@ -1899,15 +1877,11 @@ static void kvmgt_detach_vgpu(void *p_vgpu)
 	vgpu->region = NULL;
 }
 
-static int kvmgt_inject_msi(unsigned long handle, u32 addr, u16 data)
+static int kvmgt_inject_msi(struct intel_vgpu *vgpu, u32 addr, u16 data)
 {
-	struct intel_vgpu *vgpu;
-
-	if (!handle_valid(handle))
+	if (!vgpu->attached)
 		return -ESRCH;
 
-	vgpu = (struct intel_vgpu *)handle;
-
 	/*
 	 * When guest is poweroff, msi_trigger is set to NULL, but vgpu's
 	 * config and mmio register isn't restored to default during guest
@@ -1926,16 +1900,14 @@ static int kvmgt_inject_msi(unsigned long handle, u32 addr, u16 data)
 	return -EFAULT;
 }
 
-static unsigned long kvmgt_gfn_to_pfn(unsigned long handle, unsigned long gfn)
+static unsigned long kvmgt_gfn_to_pfn(struct intel_vgpu *vgpu,
+		unsigned long gfn)
 {
-	struct intel_vgpu *vgpu;
 	kvm_pfn_t pfn;
 
-	if (!handle_valid(handle))
+	if (!vgpu->attached)
 		return INTEL_GVT_INVALID_ADDR;
 
-	vgpu = (struct intel_vgpu *)handle;
-
 	pfn = gfn_to_pfn(vgpu->kvm, gfn);
 	if (is_error_noslot_pfn(pfn))
 		return INTEL_GVT_INVALID_ADDR;
@@ -1943,18 +1915,15 @@ static unsigned long kvmgt_gfn_to_pfn(unsigned long handle, unsigned long gfn)
 	return pfn;
 }
 
-static int kvmgt_dma_map_guest_page(unsigned long handle, unsigned long gfn,
+static int kvmgt_dma_map_guest_page(struct intel_vgpu *vgpu, unsigned long gfn,
 		unsigned long size, dma_addr_t *dma_addr)
 {
-	struct intel_vgpu *vgpu;
 	struct gvt_dma *entry;
 	int ret;
 
-	if (!handle_valid(handle))
+	if (!vgpu->attached)
 		return -EINVAL;
 
-	vgpu = (struct intel_vgpu *)handle;
-
 	mutex_lock(&vgpu->cache_lock);
 
 	entry = __gvt_cache_find_gfn(vgpu, gfn);
@@ -1993,17 +1962,15 @@ static int kvmgt_dma_map_guest_page(unsigned long handle, unsigned long gfn,
 	return ret;
 }
 
-static int kvmgt_dma_pin_guest_page(unsigned long handle, dma_addr_t dma_addr)
+static int kvmgt_dma_pin_guest_page(struct intel_vgpu *vgpu,
+		dma_addr_t dma_addr)
 {
-	struct intel_vgpu *vgpu;
 	struct gvt_dma *entry;
 	int ret = 0;
 
-	if (!handle_valid(handle))
+	if (!vgpu->attached)
 		return -ENODEV;
 
-	vgpu = (struct intel_vgpu *)handle;
-
 	mutex_lock(&vgpu->cache_lock);
 	entry = __gvt_cache_find_dma_addr(vgpu, dma_addr);
 	if (entry)
@@ -2024,16 +1991,14 @@ static void __gvt_dma_release(struct kref *ref)
 	__gvt_cache_remove_entry(entry->vgpu, entry);
 }
 
-static void kvmgt_dma_unmap_guest_page(unsigned long handle, dma_addr_t dma_addr)
+static void kvmgt_dma_unmap_guest_page(struct intel_vgpu *vgpu,
+		dma_addr_t dma_addr)
 {
-	struct intel_vgpu *vgpu;
 	struct gvt_dma *entry;
 
-	if (!handle_valid(handle))
+	if (!vgpu->attached)
 		return;
 
-	vgpu = (struct intel_vgpu *)handle;
-
 	mutex_lock(&vgpu->cache_lock);
 	entry = __gvt_cache_find_dma_addr(vgpu, dma_addr);
 	if (entry)
@@ -2041,44 +2006,35 @@ static void kvmgt_dma_unmap_guest_page(unsigned long handle, dma_addr_t dma_addr
 	mutex_unlock(&vgpu->cache_lock);
 }
 
-static int kvmgt_rw_gpa(unsigned long handle, unsigned long gpa,
+static int kvmgt_rw_gpa(struct intel_vgpu *vgpu, unsigned long gpa,
 			void *buf, unsigned long len, bool write)
 {
-	struct intel_vgpu *vgpu;
-
-	if (!handle_valid(handle))
+	if (!vgpu->attached)
 		return -ESRCH;
-
-	vgpu = (struct intel_vgpu *)handle;
-
 	return vfio_dma_rw(vgpu->vfio_group, gpa, buf, len, write);
 }
 
-static int kvmgt_read_gpa(unsigned long handle, unsigned long gpa,
+static int kvmgt_read_gpa(struct intel_vgpu *vgpu, unsigned long gpa,
 			void *buf, unsigned long len)
 {
-	return kvmgt_rw_gpa(handle, gpa, buf, len, false);
+	return kvmgt_rw_gpa(vgpu, gpa, buf, len, false);
 }
 
-static int kvmgt_write_gpa(unsigned long handle, unsigned long gpa,
+static int kvmgt_write_gpa(struct intel_vgpu *vgpu, unsigned long gpa,
 			void *buf, unsigned long len)
 {
-	return kvmgt_rw_gpa(handle, gpa, buf, len, true);
+	return kvmgt_rw_gpa(vgpu, gpa, buf, len, true);
 }
 
-static bool kvmgt_is_valid_gfn(unsigned long handle, unsigned long gfn)
+static bool kvmgt_is_valid_gfn(struct intel_vgpu *vgpu, unsigned long gfn)
 {
-	struct intel_vgpu *vgpu;
-	struct kvm *kvm;
+	struct kvm *kvm = vgpu->kvm;
 	int idx;
 	bool ret;
 
-	if (!handle_valid(handle))
+	if (!vgpu->attached)
 		return false;
 
-	vgpu = (struct intel_vgpu *)handle;
-	kvm = vgpu->kvm;
-
 	idx = srcu_read_lock(&kvm->srcu);
 	ret = kvm_is_visible_gfn(kvm, gfn);
 	srcu_read_unlock(&kvm->srcu, idx);
diff --git a/drivers/gpu/drm/i915/gvt/mpt.h b/drivers/gpu/drm/i915/gvt/mpt.h
index 8a659301d78b9..ba0c31c4a705c 100644
--- a/drivers/gpu/drm/i915/gvt/mpt.h
+++ b/drivers/gpu/drm/i915/gvt/mpt.h
@@ -118,7 +118,7 @@ static inline int intel_gvt_hypervisor_inject_msi(struct intel_vgpu *vgpu)
 
 	trace_inject_msi(vgpu->id, addr, data);
 
-	ret = intel_gvt_host.mpt->inject_msi(vgpu->handle, addr, data);
+	ret = intel_gvt_host.mpt->inject_msi(vgpu, addr, data);
 	if (ret)
 		return ret;
 	return 0;
@@ -135,7 +135,7 @@ static inline int intel_gvt_hypervisor_inject_msi(struct intel_vgpu *vgpu)
 static inline int intel_gvt_hypervisor_enable_page_track(
 		struct intel_vgpu *vgpu, unsigned long gfn)
 {
-	return intel_gvt_host.mpt->enable_page_track(vgpu->handle, gfn);
+	return intel_gvt_host.mpt->enable_page_track(vgpu, gfn);
 }
 
 /**
@@ -149,7 +149,7 @@ static inline int intel_gvt_hypervisor_enable_page_track(
 static inline int intel_gvt_hypervisor_disable_page_track(
 		struct intel_vgpu *vgpu, unsigned long gfn)
 {
-	return intel_gvt_host.mpt->disable_page_track(vgpu->handle, gfn);
+	return intel_gvt_host.mpt->disable_page_track(vgpu, gfn);
 }
 
 /**
@@ -165,7 +165,7 @@ static inline int intel_gvt_hypervisor_disable_page_track(
 static inline int intel_gvt_hypervisor_read_gpa(struct intel_vgpu *vgpu,
 		unsigned long gpa, void *buf, unsigned long len)
 {
-	return intel_gvt_host.mpt->read_gpa(vgpu->handle, gpa, buf, len);
+	return intel_gvt_host.mpt->read_gpa(vgpu, gpa, buf, len);
 }
 
 /**
@@ -181,7 +181,7 @@ static inline int intel_gvt_hypervisor_read_gpa(struct intel_vgpu *vgpu,
 static inline int intel_gvt_hypervisor_write_gpa(struct intel_vgpu *vgpu,
 		unsigned long gpa, void *buf, unsigned long len)
 {
-	return intel_gvt_host.mpt->write_gpa(vgpu->handle, gpa, buf, len);
+	return intel_gvt_host.mpt->write_gpa(vgpu, gpa, buf, len);
 }
 
 /**
@@ -195,7 +195,7 @@ static inline int intel_gvt_hypervisor_write_gpa(struct intel_vgpu *vgpu,
 static inline unsigned long intel_gvt_hypervisor_gfn_to_mfn(
 		struct intel_vgpu *vgpu, unsigned long gfn)
 {
-	return intel_gvt_host.mpt->gfn_to_mfn(vgpu->handle, gfn);
+	return intel_gvt_host.mpt->gfn_to_mfn(vgpu, gfn);
 }
 
 /**
@@ -212,7 +212,7 @@ static inline int intel_gvt_hypervisor_dma_map_guest_page(
 		struct intel_vgpu *vgpu, unsigned long gfn, unsigned long size,
 		dma_addr_t *dma_addr)
 {
-	return intel_gvt_host.mpt->dma_map_guest_page(vgpu->handle, gfn, size,
+	return intel_gvt_host.mpt->dma_map_guest_page(vgpu, gfn, size,
 						      dma_addr);
 }
 
@@ -224,7 +224,7 @@ static inline int intel_gvt_hypervisor_dma_map_guest_page(
 static inline void intel_gvt_hypervisor_dma_unmap_guest_page(
 		struct intel_vgpu *vgpu, dma_addr_t dma_addr)
 {
-	intel_gvt_host.mpt->dma_unmap_guest_page(vgpu->handle, dma_addr);
+	intel_gvt_host.mpt->dma_unmap_guest_page(vgpu, dma_addr);
 }
 
 /**
@@ -239,7 +239,7 @@ static inline int
 intel_gvt_hypervisor_dma_pin_guest_page(struct intel_vgpu *vgpu,
 					dma_addr_t dma_addr)
 {
-	return intel_gvt_host.mpt->dma_pin_guest_page(vgpu->handle, dma_addr);
+	return intel_gvt_host.mpt->dma_pin_guest_page(vgpu, dma_addr);
 }
 
 /**
@@ -318,7 +318,7 @@ static inline bool intel_gvt_hypervisor_is_valid_gfn(
 	if (!intel_gvt_host.mpt->is_valid_gfn)
 		return true;
 
-	return intel_gvt_host.mpt->is_valid_gfn(vgpu->handle, gfn);
+	return intel_gvt_host.mpt->is_valid_gfn(vgpu, gfn);
 }
 
 #endif /* _GVT_MPT_H_ */
diff --git a/drivers/gpu/drm/i915/gvt/vgpu.c b/drivers/gpu/drm/i915/gvt/vgpu.c
index 7b9a571c0dc9d..9e8fa9f388eb0 100644
--- a/drivers/gpu/drm/i915/gvt/vgpu.c
+++ b/drivers/gpu/drm/i915/gvt/vgpu.c
@@ -370,8 +370,8 @@ static struct intel_vgpu *__intel_gvt_create_vgpu(struct intel_gvt *gvt,
 	struct intel_vgpu *vgpu;
 	int ret;
 
-	gvt_dbg_core("handle %llu low %llu MB high %llu MB fence %llu\n",
-			param->handle, param->low_gm_sz, param->high_gm_sz,
+	gvt_dbg_core("low %llu MB high %llu MB fence %llu\n",
+			param->low_gm_sz, param->high_gm_sz,
 			param->fence_sz);
 
 	vgpu = vzalloc(sizeof(*vgpu));
@@ -384,7 +384,6 @@ static struct intel_vgpu *__intel_gvt_create_vgpu(struct intel_gvt *gvt,
 		goto out_free_vgpu;
 
 	vgpu->id = ret;
-	vgpu->handle = param->handle;
 	vgpu->gvt = gvt;
 	vgpu->sched_ctl.weight = param->weight;
 	mutex_init(&vgpu->vgpu_lock);
@@ -477,7 +476,6 @@ struct intel_vgpu *intel_gvt_create_vgpu(struct intel_gvt *gvt,
 	struct intel_vgpu_creation_params param;
 	struct intel_vgpu *vgpu;
 
-	param.handle = 0;
 	param.primary = 1;
 	param.low_gm_sz = type->low_gm_size;
 	param.high_gm_sz = type->high_gm_size;
-- 
2.30.2

