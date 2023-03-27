Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C2D6CA03B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 11:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B78410E37F;
	Mon, 27 Mar 2023 09:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1B7B10E346;
 Mon, 27 Mar 2023 09:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679910056; x=1711446056;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ac4KtZZ6beubpwmpT9ie22pg4ftKNdsniOLMWnizrzo=;
 b=YCM93b/3droN/4IDAiota0KehjBwdUhtBQtZB/EffLtB6YOLuJWAagEU
 6A7kPyGEV4EMRWbqqTxux6GqjXLMxB2elQqdrlxa5vzPT9Any5MkXthui
 gQsJ7iY1Yr4vi8DGvvYOs0DxwWOzEXCxxX2+3MBPa747AJo7ZkS9PCW+I
 +NebaQH5H6SANPjsizahB3NBmRVkb4g/mZ6/dFGzrETJ4cq8B2Xn1dTPP
 4fmhafWlz/P3xgbMyrlQWjs2YB++kBfNnqS7CaQVwEiO6rUSbT/51FmQp
 Fhebl0QuY2Mu0LYGGe0gMBSea8R0CWSwkIhdjt7Pf+es3T3IRoljznNgA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="426485311"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="426485311"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 02:40:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="660775717"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="660775717"
Received: from 984fee00a4c6.jf.intel.com ([10.165.58.231])
 by orsmga006.jf.intel.com with ESMTP; 27 Mar 2023 02:40:55 -0700
From: Yi Liu <yi.l.liu@intel.com>
To: alex.williamson@redhat.com,
	jgg@nvidia.com,
	kevin.tian@intel.com
Date: Mon, 27 Mar 2023 02:40:31 -0700
Message-Id: <20230327094047.47215-9-yi.l.liu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230327094047.47215-1-yi.l.liu@intel.com>
References: <20230327094047.47215-1-yi.l.liu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 08/24] vfio: Block device access via device
 fd until device is opened
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
Cc: mjrosato@linux.ibm.com, jasowang@redhat.com, xudong.hao@intel.com,
 peterx@redhat.com, terrence.xu@intel.com, chao.p.peng@linux.intel.com,
 linux-s390@vger.kernel.org, yi.l.liu@intel.com, kvm@vger.kernel.org,
 lulu@redhat.com, yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com,
 yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org, eric.auger@redhat.com,
 intel-gvt-dev@lists.freedesktop.org, yi.y.sun@linux.intel.com,
 cohuck@redhat.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allow the vfio_device file to be in a state where the device FD is
opened but the device cannot be used by userspace (i.e. its .open_device()
hasn't been called). This inbetween state is not used when the device
FD is spawned from the group FD, however when we create the device FD
directly by opening a cdev it will be opened in the blocked state.

The reason for the inbetween state is that userspace only gets a FD but
doesn't gain access permission until binding the FD to an iommufd. So in
the blocked state, only the bind operation is allowed. Completing bind
will allow user to further access the device.

This is implemented by adding a flag in struct vfio_device_file to mark
the blocked state and using a simple smp_load_acquire() to obtain the
flag value and serialize all the device setup with the thread accessing
this device.

Following this lockless scheme, it can safely handle the device FD
unbound->bound but it cannot handle bound->unbound. To allow this we'd
need to add a lock on all the vfio ioctls which seems costly. So once
device FD is bound, it remains bound until the FD is closed.

Suggested-by: Jason Gunthorpe <jgg@nvidia.com>
Reviewed-by: Kevin Tian <kevin.tian@intel.com>
Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
Tested-by: Terrence Xu <terrence.xu@intel.com>
Tested-by: Nicolin Chen <nicolinc@nvidia.com>
Tested-by: Matthew Rosato <mjrosato@linux.ibm.com>
Signed-off-by: Yi Liu <yi.l.liu@intel.com>
---
 drivers/vfio/group.c     | 11 ++++++++++-
 drivers/vfio/vfio.h      |  1 +
 drivers/vfio/vfio_main.c | 41 ++++++++++++++++++++++++++++++++++------
 3 files changed, 46 insertions(+), 7 deletions(-)

diff --git a/drivers/vfio/group.c b/drivers/vfio/group.c
index 9a7b2765eef6..4f267ae7bebc 100644
--- a/drivers/vfio/group.c
+++ b/drivers/vfio/group.c
@@ -194,9 +194,18 @@ static int vfio_device_group_open(struct vfio_device_file *df)
 	df->iommufd = device->group->iommufd;
 
 	ret = vfio_device_open(df);
-	if (ret)
+	if (ret) {
 		df->iommufd = NULL;
+		goto out_put_kvm;
+	}
+
+	/*
+	 * Paired with smp_load_acquire() in vfio_device_fops::ioctl/
+	 * read/write/mmap
+	 */
+	smp_store_release(&df->access_granted, true);
 
+out_put_kvm:
 	if (device->open_count == 0)
 		vfio_device_put_kvm(device);
 
diff --git a/drivers/vfio/vfio.h b/drivers/vfio/vfio.h
index cffc08f5a6f1..854f2c97cb9a 100644
--- a/drivers/vfio/vfio.h
+++ b/drivers/vfio/vfio.h
@@ -18,6 +18,7 @@ struct vfio_container;
 
 struct vfio_device_file {
 	struct vfio_device *device;
+	bool access_granted;
 	spinlock_t kvm_ref_lock; /* protect kvm field */
 	struct kvm *kvm;
 	struct iommufd_ctx *iommufd; /* protected by struct vfio_device_set::lock */
diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
index 2ea6cb6d03c7..b515bbda4c74 100644
--- a/drivers/vfio/vfio_main.c
+++ b/drivers/vfio/vfio_main.c
@@ -1114,6 +1114,10 @@ static long vfio_device_fops_unl_ioctl(struct file *filep,
 	struct vfio_device *device = df->device;
 	int ret;
 
+	/* Paired with smp_store_release() following vfio_device_open() */
+	if (!smp_load_acquire(&df->access_granted))
+		return -EINVAL;
+
 	ret = vfio_device_pm_runtime_get(device);
 	if (ret)
 		return ret;
@@ -1141,6 +1145,10 @@ static ssize_t vfio_device_fops_read(struct file *filep, char __user *buf,
 	struct vfio_device_file *df = filep->private_data;
 	struct vfio_device *device = df->device;
 
+	/* Paired with smp_store_release() following vfio_device_open() */
+	if (!smp_load_acquire(&df->access_granted))
+		return -EINVAL;
+
 	if (unlikely(!device->ops->read))
 		return -EINVAL;
 
@@ -1154,6 +1162,10 @@ static ssize_t vfio_device_fops_write(struct file *filep,
 	struct vfio_device_file *df = filep->private_data;
 	struct vfio_device *device = df->device;
 
+	/* Paired with smp_store_release() following vfio_device_open() */
+	if (!smp_load_acquire(&df->access_granted))
+		return -EINVAL;
+
 	if (unlikely(!device->ops->write))
 		return -EINVAL;
 
@@ -1165,6 +1177,10 @@ static int vfio_device_fops_mmap(struct file *filep, struct vm_area_struct *vma)
 	struct vfio_device_file *df = filep->private_data;
 	struct vfio_device *device = df->device;
 
+	/* Paired with smp_store_release() following vfio_device_open() */
+	if (!smp_load_acquire(&df->access_granted))
+		return -EINVAL;
+
 	if (unlikely(!device->ops->mmap))
 		return -EINVAL;
 
@@ -1201,6 +1217,24 @@ bool vfio_file_is_valid(struct file *file)
 }
 EXPORT_SYMBOL_GPL(vfio_file_is_valid);
 
+/*
+ * Return true if the input file is a vfio device file and has opened
+ * the input device. Otherwise, return false.
+ */
+static bool vfio_file_has_device_access(struct file *file,
+					struct vfio_device *device)
+{
+	struct vfio_device *vdev = vfio_device_from_file(file);
+	struct vfio_device_file *df;
+
+	if (!vdev || vdev != device)
+		return false;
+
+	df = file->private_data;
+
+	return READ_ONCE(df->access_granted);
+}
+
 /**
  * vfio_file_has_dev - True if the VFIO file is a handle for device
  * @file: VFIO file to check
@@ -1211,17 +1245,12 @@ EXPORT_SYMBOL_GPL(vfio_file_is_valid);
 bool vfio_file_has_dev(struct file *file, struct vfio_device *device)
 {
 	struct vfio_group *group;
-	struct vfio_device *vdev;
 
 	group = vfio_group_from_file(file);
 	if (group)
 		return vfio_group_has_dev(group, device);
 
-	vdev = vfio_device_from_file(file);
-	if (vdev)
-		return vdev == device;
-
-	return false;
+	return vfio_file_has_device_access(file, device);
 }
 EXPORT_SYMBOL_GPL(vfio_file_has_dev);
 
-- 
2.34.1

