Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 169FB4FF6D8
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 14:31:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7CF210E9E3;
	Wed, 13 Apr 2022 12:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 295BB10E9E5;
 Wed, 13 Apr 2022 12:31:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27358AADD3;
 Wed, 13 Apr 2022 12:31:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Date: Wed, 13 Apr 2022 12:31:28 -0000
Message-ID: <164985308813.28395.13882336491399945867@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v1-a8faf768d202+125dd-vfio_mdev_no_group_jgg@nvidia.com>
In-Reply-To: <0-v1-a8faf768d202+125dd-vfio_mdev_no_group_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Make_the_rest_of_the_VFIO_driver_interface_use_vfio=5Fdevic?=
 =?utf-8?q?e?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Make the rest of the VFIO driver interface use vfio_device
URL   : https://patchwork.freedesktop.org/series/102606/
State : warning

== Summary ==

Error: dim checkpatch failed
1a0dcd52cf62 vfio: Make vfio_(un)register_notifier accept a vfio_device
-:33: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:919:
+	ret = vfio_register_notifier(vfio_dev, VFIO_IOMMU_NOTIFY, &events,
 				&vdev->iommu_notifier);

-:42: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#42: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:928:
+	ret = vfio_register_notifier(vfio_dev, VFIO_GROUP_NOTIFY, &events,
 				&vdev->group_notifier);

-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:966:
+	vfio_unregister_notifier(vfio_dev, VFIO_GROUP_NOTIFY,
 					&vdev->group_notifier);

-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:970:
+	vfio_unregister_notifier(vfio_dev, VFIO_IOMMU_NOTIFY,
 					&vdev->iommu_notifier);

-:74: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#74: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1005:
+	ret = vfio_unregister_notifier(vfio_dev, VFIO_IOMMU_NOTIFY,
 					&vdev->iommu_notifier);

-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:1010:
+	ret = vfio_unregister_notifier(vfio_dev, VFIO_GROUP_NOTIFY,
 					&vdev->group_notifier);

-:268: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#268: FILE: include/linux/vfio.h:181:
+extern int vfio_register_notifier(struct vfio_device *dev,

-:273: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#273: FILE: include/linux/vfio.h:185:
+extern int vfio_unregister_notifier(struct vfio_device *dev,

-:276: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 8 checks, 217 lines checked
6895636f3f14 vfio/ccw: Remove mdev from struct channel_program
-:206: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#206: FILE: drivers/s390/cio/vfio_ccw_cp.h:44:
+extern int cp_init(struct channel_program *cp, union orb *orb);

-:223: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 1 checks, 183 lines checked
a49bf1b00724 vfio/mdev: Pass in a struct vfio_device * to vfio_pin/unpin_pages()
-:209: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#209: FILE: include/linux/vfio.h:153:
+extern int vfio_pin_pages(struct vfio_device *vdev, unsigned long *user_pfn,

-:212: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#212: FILE: include/linux/vfio.h:155:
+extern int vfio_unpin_pages(struct vfio_device *vdev, unsigned long *user_pfn,

-:215: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 2 checks, 169 lines checked
3c71cd007be5 drm/i915/gvt: Change from vfio_group_(un)pin_pages to vfio_(un)pin_pages
-:52: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
868856efe678 vfio: Pass in a struct vfio_device * to vfio_dma_rw()
-:24: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#24: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:2187:
+	return vfio_dma_rw(

-:93: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#93: FILE: include/linux/vfio.h:164:
+extern int vfio_dma_rw(struct vfio_device *vdev, dma_addr_t user_iova,

-:96: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 2 checks, 67 lines checked
197e48b986e6 drm/i915/gvt: Add missing module_put() in error unwind
-:34: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
f2ddbd56fbfa drm/i915/gvt: Delete kvmgt_vdev::vfio_group
-:70: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 52 lines checked
adaa03d8ab38 vfio: Remove dead code
-:224: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 195 lines checked
77d787fcf640 vfio: Remove calls to vfio_group_add_container_user()
-:199: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 156 lines checked


