Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 787AA51763B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 20:01:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B2810E948;
	Mon,  2 May 2022 18:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F1F1110E948;
 Mon,  2 May 2022 18:01:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF172A7DFB;
 Mon,  2 May 2022 18:01:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Date: Mon, 02 May 2022 18:01:49 -0000
Message-ID: <165151450997.28133.15584960029232078916@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v3-e131a9b6b467+14b6-vfio_mdev_no_group_jgg@nvidia.com>
In-Reply-To: <0-v3-e131a9b6b467+14b6-vfio_mdev_no_group_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Make_the_rest_of_the_VFIO_driver_interface_use_vfio=5Fdevic?=
 =?utf-8?q?e_=28rev4=29?=
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

Series: Make the rest of the VFIO driver interface use vfio_device (rev4)
URL   : https://patchwork.freedesktop.org/series/102606/
State : warning

== Summary ==

Error: dim checkpatch failed
ec715bc61dd4 vfio: Make vfio_(un)register_notifier accept a vfio_device
-:227: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#227: FILE: include/linux/vfio.h:181:
+extern int vfio_register_notifier(struct vfio_device *dev,

-:232: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#232: FILE: include/linux/vfio.h:185:
+extern int vfio_unregister_notifier(struct vfio_device *dev,

-:235: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 2 checks, 187 lines checked
9cfaa7606a96 vfio/ccw: Remove mdev from struct channel_program
-:167: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#167: FILE: drivers/s390/cio/vfio_ccw_cp.c:659:
+		dev_warn(

-:210: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#210: FILE: drivers/s390/cio/vfio_ccw_cp.h:44:
+extern int cp_init(struct channel_program *cp, union orb *orb);

-:227: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 2 checks, 186 lines checked
27e583abb3bf vfio/mdev: Pass in a struct vfio_device * to vfio_pin/unpin_pages()
-:214: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#214: FILE: include/linux/vfio.h:153:
+extern int vfio_pin_pages(struct vfio_device *vdev, unsigned long *user_pfn,

-:217: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#217: FILE: include/linux/vfio.h:155:
+extern int vfio_unpin_pages(struct vfio_device *vdev, unsigned long *user_pfn,

-:220: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 2 checks, 170 lines checked
efd6d6610a35 vfio/mdev: Pass in a struct vfio_device * to vfio_dma_rw()
-:102: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#102: FILE: include/linux/vfio.h:164:
+extern int vfio_dma_rw(struct vfio_device *vdev, dma_addr_t user_iova,

-:105: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 1 checks, 73 lines checked
7e63fc25c93d drm/i915/gvt: Change from vfio_group_(un)pin_pages to vfio_(un)pin_pages
-:111: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 80 lines checked
064082b3990b vfio: Remove dead code
-:225: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 195 lines checked
10da62464092 vfio: Remove calls to vfio_group_add_container_user()
-:244: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 194 lines checked


