Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFF8668418
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 21:39:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B2CC10E919;
	Thu, 12 Jan 2023 20:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3306210E91E;
 Thu, 12 Jan 2023 20:38:53 +0000 (UTC)
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 30CKZvhP008303; Thu, 12 Jan 2023 20:38:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=UdCiGlNJ+LRFp1gVmwoz1AZyKt4og7nqktaY/n5eyh0=;
 b=lWRgnNjeOb0eqTrC14hJSYxXFqOazAscHlr4/PR4MWUZyV9EgUNGVqIsQnN+6JptXb7s
 pRbouktUFoj2WKqa7UNqM1qZVnjbXMLmu3EYGaDrZeqD1ACNA9uxFAQtIP9pFX+zjELx
 sYWm1vVD616dkj9LFkLxptU7DEn8+tHSJcUHdBF+xGEA1oC7b22Y54uu5M8w2TP8CXeZ
 1yaxIxX3qXurYulKUiIYRea0/9pDjdEukT/woDkqvUALXOwF1WTTKHTxei7GTZUbUqaz
 2W8QIDyQQrnYlwwVv78NuktjV1WK/Ew+tSomMMpVUuSp+4o8NR6ogPYzx5gqhGG60rfG CA== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3n2s8sr69m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Jan 2023 20:38:50 +0000
Received: from m0098404.ppops.net (m0098404.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 30CKZvKe008228;
 Thu, 12 Jan 2023 20:38:49 GMT
Received: from ppma05wdc.us.ibm.com (1b.90.2fa9.ip4.static.sl-reverse.com
 [169.47.144.27])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3n2s8sr696-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Jan 2023 20:38:49 +0000
Received: from pps.filterd (ppma05wdc.us.ibm.com [127.0.0.1])
 by ppma05wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 30CHp5QC004524;
 Thu, 12 Jan 2023 20:38:48 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([9.208.130.100])
 by ppma05wdc.us.ibm.com (PPS) with ESMTPS id 3n1kk7kcmm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Jan 2023 20:38:48 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com
 [10.241.53.103])
 by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 30CKcleT524908
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Jan 2023 20:38:47 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3CACD58056;
 Thu, 12 Jan 2023 20:38:47 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 755E35804E;
 Thu, 12 Jan 2023 20:38:45 +0000 (GMT)
Received: from li-2311da4c-2e09-11b2-a85c-c003041e9174.ibm.com.com (unknown
 [9.160.94.233]) by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Thu, 12 Jan 2023 20:38:45 +0000 (GMT)
From: Matthew Rosato <mjrosato@linux.ibm.com>
To: alex.williamson@redhat.com, pbonzini@redhat.com
Date: Thu, 12 Jan 2023 15:38:44 -0500
Message-Id: <20230112203844.41179-1-mjrosato@linux.ibm.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: U7gFq-EUrjV2Z9EY4ZwhqzpKbM3o8jrR
X-Proofpoint-ORIG-GUID: R9uTHkQKN3zdwXH1Q6C-sB7bVKb_RBTZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2023-01-12_12,2023-01-12_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2212070000 definitions=main-2301120146
Subject: [Intel-gfx] [PATCH v2] vfio: fix potential deadlock on vfio group
 lock
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
Cc: akrowiak@linux.ibm.com, jjherne@linux.ibm.com, farman@linux.ibm.com,
 imbrenda@linux.ibm.com, frankja@linux.ibm.com, pmorel@linux.ibm.com,
 david@redhat.com, seanjc@google.com, intel-gfx@lists.freedesktop.org,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, pasic@linux.ibm.com,
 jgg@nvidia.com, kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 borntraeger@linux.ibm.com, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently it is possible that the final put of a KVM reference comes from
vfio during its device close operation.  This occurs while the vfio group
lock is held; however, if the vfio device is still in the kvm device list,
then the following call chain could result in a deadlock:

kvm_put_kvm
 -> kvm_destroy_vm
  -> kvm_destroy_devices
   -> kvm_vfio_destroy
    -> kvm_vfio_file_set_kvm
     -> vfio_file_set_kvm
      -> group->group_lock/group_rwsem

Avoid this scenario by having vfio core code acquire a KVM reference
the first time a device is opened and hold that reference until the
device fd is closed, at a point after the group lock has been released.

Fixes: 421cfe6596f6 ("vfio: remove VFIO_GROUP_NOTIFY_SET_KVM")
Reported-by: Alex Williamson <alex.williamson@redhat.com>
Signed-off-by: Matthew Rosato <mjrosato@linux.ibm.com>
---
Changes from v1:
* Re-write using symbol get logic to get kvm ref during first device
  open, release the ref during device fd close after group lock is
  released
* Drop kvm get/put changes to drivers; now that vfio core holds a
  kvm ref until sometime after the device_close op is called, it
  should be fine for drivers to get and put their own references to it.
---
 drivers/vfio/group.c     |  6 ++---
 drivers/vfio/vfio_main.c | 48 +++++++++++++++++++++++++++++++++++++---
 include/linux/vfio.h     |  1 -
 3 files changed, 48 insertions(+), 7 deletions(-)

diff --git a/drivers/vfio/group.c b/drivers/vfio/group.c
index bb24b2f0271e..2b0da82f82f4 100644
--- a/drivers/vfio/group.c
+++ b/drivers/vfio/group.c
@@ -165,9 +165,9 @@ static int vfio_device_group_open(struct vfio_device *device)
 	}
 
 	/*
-	 * Here we pass the KVM pointer with the group under the lock.  If the
-	 * device driver will use it, it must obtain a reference and release it
-	 * during close_device.
+	 * Here we pass the KVM pointer with the group under the lock.  A
+	 * reference will be obtained the first time the device is opened and
+	 * will be held until the device fd is closed.
 	 */
 	ret = vfio_device_open(device, device->group->iommufd,
 			       device->group->kvm);
diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
index 5177bb061b17..c969e2a0ecd3 100644
--- a/drivers/vfio/vfio_main.c
+++ b/drivers/vfio/vfio_main.c
@@ -16,6 +16,7 @@
 #include <linux/fs.h>
 #include <linux/idr.h>
 #include <linux/iommu.h>
+#include <linux/kvm_host.h>
 #include <linux/list.h>
 #include <linux/miscdevice.h>
 #include <linux/module.h>
@@ -344,6 +345,35 @@ static bool vfio_assert_device_open(struct vfio_device *device)
 	return !WARN_ON_ONCE(!READ_ONCE(device->open_count));
 }
 
+static bool vfio_kvm_get_kvm_safe(struct kvm *kvm)
+{
+	bool (*fn)(struct kvm *kvm);
+	bool ret;
+
+	fn = symbol_get(kvm_get_kvm_safe);
+	if (WARN_ON(!fn))
+		return false;
+
+	ret = fn(kvm);
+
+	symbol_put(kvm_get_kvm_safe);
+
+	return ret;
+}
+
+static void vfio_kvm_put_kvm(struct kvm *kvm)
+{
+	void (*fn)(struct kvm *kvm);
+
+	fn = symbol_get(kvm_put_kvm);
+	if (WARN_ON(!fn))
+		return;
+
+	fn(kvm);
+
+	symbol_put(kvm_put_kvm);
+}
+
 static int vfio_device_first_open(struct vfio_device *device,
 				  struct iommufd_ctx *iommufd, struct kvm *kvm)
 {
@@ -361,16 +391,24 @@ static int vfio_device_first_open(struct vfio_device *device,
 	if (ret)
 		goto err_module_put;
 
+	if (kvm && !vfio_kvm_get_kvm_safe(kvm)) {
+		ret = -ENOENT;
+		goto err_unuse_iommu;
+	}
 	device->kvm = kvm;
 	if (device->ops->open_device) {
 		ret = device->ops->open_device(device);
 		if (ret)
-			goto err_unuse_iommu;
+			goto err_put_kvm;
 	}
 	return 0;
 
+err_put_kvm:
+	if (kvm) {
+		vfio_kvm_put_kvm(kvm);
+		device->kvm = NULL;
+	}
 err_unuse_iommu:
-	device->kvm = NULL;
 	if (iommufd)
 		vfio_iommufd_unbind(device);
 	else
@@ -387,7 +425,6 @@ static void vfio_device_last_close(struct vfio_device *device,
 
 	if (device->ops->close_device)
 		device->ops->close_device(device);
-	device->kvm = NULL;
 	if (iommufd)
 		vfio_iommufd_unbind(device);
 	else
@@ -465,6 +502,11 @@ static int vfio_device_fops_release(struct inode *inode, struct file *filep)
 
 	vfio_device_group_close(device);
 
+	if (device->open_count == 0 && device->kvm) {
+		vfio_kvm_put_kvm(device->kvm);
+		device->kvm = NULL;
+	}
+
 	vfio_device_put_registration(device);
 
 	return 0;
diff --git a/include/linux/vfio.h b/include/linux/vfio.h
index 35be78e9ae57..3ff7e9302cc1 100644
--- a/include/linux/vfio.h
+++ b/include/linux/vfio.h
@@ -46,7 +46,6 @@ struct vfio_device {
 	struct vfio_device_set *dev_set;
 	struct list_head dev_set_list;
 	unsigned int migration_flags;
-	/* Driver must reference the kvm during open_device or never touch it */
 	struct kvm *kvm;
 
 	/* Members below here are private, not for driver use */
-- 
2.39.0

