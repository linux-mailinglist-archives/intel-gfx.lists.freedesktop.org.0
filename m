Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D26B694A93
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 16:14:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0718210E607;
	Mon, 13 Feb 2023 15:14:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2687A10E5ED;
 Mon, 13 Feb 2023 15:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676301253; x=1707837253;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KzWTTM4oNEKflohzXLCzvVk/uiftHc8g2i2uaD56BlQ=;
 b=igy3Iq77REcylZpnSiJbX7MrHjsdRedNAhRCqecZYipNBRrewBlc9hUf
 VUwwtmqcTogBH9D9Ub9qUCutaVuCM4ysZ0uSBoNbpF56oYbDsnAR8gt6i
 txHB3FUiLB6QWHGHPh1V7m0XOtzLbM2b0JsD1NZiTKzeCxHPBhHryY9Pz
 FQBxDtafVpx7nFKz681h+aZg9XCcodv5CPods2N9G9jK84WOuBnz1i/d9
 Hi34WT1CKH+aly8Vqq++ySCS9dl+Jrl9TVNktQy2YkmUej7ESv19ywen+
 dS7n8j0EcLS4vQ0AwobNyRQonnOucMAISYt9Y7CHk46QW5oFJprTERDtb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="318931556"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="318931556"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 07:13:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="701289660"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="701289660"
Received: from 984fee00a4c6.jf.intel.com ([10.165.58.231])
 by orsmga001.jf.intel.com with ESMTP; 13 Feb 2023 07:13:53 -0800
From: Yi Liu <yi.l.liu@intel.com>
To: joro@8bytes.org, alex.williamson@redhat.com, jgg@nvidia.com,
 kevin.tian@intel.com, robin.murphy@arm.com
Date: Mon, 13 Feb 2023 07:13:36 -0800
Message-Id: <20230213151348.56451-4-yi.l.liu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230213151348.56451-1-yi.l.liu@intel.com>
References: <20230213151348.56451-1-yi.l.liu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/15] vfio: Accept vfio device file in the
 driver facing kAPI
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
Cc: linux-s390@vger.kernel.org, yi.l.liu@intel.com, yi.y.sun@linux.intel.com,
 kvm@vger.kernel.org, mjrosato@linux.ibm.com, jasowang@redhat.com,
 cohuck@redhat.com, peterx@redhat.com, eric.auger@redhat.com,
 nicolinc@nvidia.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, chao.p.peng@linux.intel.com, lulu@redhat.com,
 intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This makes the vfio file kAPIs to accepte vfio device files, also a
preparation for vfio device cdev support.

For the kvm set with vfio device file, kvm pointer is stored in struct
vfio_device_file, and use kvm_ref_lock to protect kvm set and kvm
pointer usage within VFIO. This kvm pointer will be set to vfio_device
after device file is bound to iommufd in the cdev path.

Signed-off-by: Yi Liu <yi.l.liu@intel.com>
Reviewed-by: Kevin Tian <kevin.tian@intel.com>
---
 drivers/vfio/vfio.h      |  2 ++
 drivers/vfio/vfio_main.c | 51 ++++++++++++++++++++++++++++++++++++----
 2 files changed, 49 insertions(+), 4 deletions(-)

diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
index f237e9410d1e..cee979a1b90f 100644
--- a/drivers/vfio/vfio.h
+++ b/drivers/vfio/vfio.h
@@ -18,6 +18,8 @@ struct vfio_container;
 
 struct vfio_device_file {
 	struct vfio_device *device;
+	spinlock_t kvm_ref_lock; /* protect kvm field */
+	struct kvm *kvm;
 };
 
 void vfio_device_put_registration(struct vfio_device *device);
diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
index 8612ba112e7f..c529f609fecc 100644
--- a/drivers/vfio/vfio_main.c
+++ b/drivers/vfio/vfio_main.c
@@ -406,6 +406,7 @@ vfio_allocate_device_file(struct vfio_device *device)
 		return ERR_PTR(-ENOMEM);
 
 	df->device = device;
+	spin_lock_init(&df->kvm_ref_lock);
 
 	return df;
 }
@@ -1167,13 +1168,23 @@ const struct file_operations vfio_device_fops = {
 	.mmap		= vfio_device_fops_mmap,
 };
 
+static struct vfio_device *vfio_device_from_file(struct file *file)
+{
+	struct vfio_device_file *df = file->private_data;
+
+	if (file->f_op != &vfio_device_fops)
+		return NULL;
+	return df->device;
+}
+
 /**
  * vfio_file_is_valid - True if the file is usable with VFIO APIS
  * @file: VFIO group file or VFIO device file
  */
 bool vfio_file_is_valid(struct file *file)
 {
-	return vfio_group_from_file(file);
+	return vfio_group_from_file(file) ||
+	       vfio_device_from_file(file);
 }
 EXPORT_SYMBOL_GPL(vfio_file_is_valid);
 
@@ -1188,15 +1199,36 @@ EXPORT_SYMBOL_GPL(vfio_file_is_valid);
  */
 bool vfio_file_enforced_coherent(struct file *file)
 {
-	struct vfio_group *group = vfio_group_from_file(file);
+	struct vfio_group *group;
+	struct vfio_device *device;
 
+	group = vfio_group_from_file(file);
 	if (group)
 		return vfio_group_enforced_coherent(group);
 
+	device = vfio_device_from_file(file);
+	if (device)
+		return device_iommu_capable(device->dev,
+					    IOMMU_CAP_ENFORCE_CACHE_COHERENCY);
+
 	return true;
 }
 EXPORT_SYMBOL_GPL(vfio_file_enforced_coherent);
 
+static void vfio_device_file_set_kvm(struct file *file, struct kvm *kvm)
+{
+	struct vfio_device_file *df = file->private_data;
+
+	/*
+	 * The kvm is first recorded in the vfio_device_file, and will
+	 * be propagated to vfio_device::kvm when the file is bound to
+	 * iommufd successfully in the vfio device cdev path.
+	 */
+	spin_lock(&df->kvm_ref_lock);
+	df->kvm = kvm;
+	spin_unlock(&df->kvm_ref_lock);
+}
+
 /**
  * vfio_file_set_kvm - Link a kvm with VFIO drivers
  * @file: VFIO group file or VFIO device file
@@ -1205,10 +1237,14 @@ EXPORT_SYMBOL_GPL(vfio_file_enforced_coherent);
  */
 void vfio_file_set_kvm(struct file *file, struct kvm *kvm)
 {
-	struct vfio_group *group = vfio_group_from_file(file);
+	struct vfio_group *group;
 
+	group = vfio_group_from_file(file);
 	if (group)
 		vfio_group_set_kvm(group, kvm);
+
+	if (vfio_device_from_file(file))
+		vfio_device_file_set_kvm(file, kvm);
 }
 EXPORT_SYMBOL_GPL(vfio_file_set_kvm);
 
@@ -1221,10 +1257,17 @@ EXPORT_SYMBOL_GPL(vfio_file_set_kvm);
  */
 bool vfio_file_has_dev(struct file *file, struct vfio_device *device)
 {
-	struct vfio_group *group = vfio_group_from_file(file);
+	struct vfio_group *group;
+	struct vfio_device *vdev;
 
+	group = vfio_group_from_file(file);
 	if (group)
 		return vfio_group_has_dev(group, device);
+
+	vdev = vfio_device_from_file(file);
+	if (device)
+		return vdev == device;
+
 	return false;
 }
 EXPORT_SYMBOL_GPL(vfio_file_has_dev);
-- 
2.34.1

