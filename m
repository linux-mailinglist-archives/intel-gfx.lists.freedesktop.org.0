Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D991E51CDEF
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 03:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1194A10E4F3;
	Fri,  6 May 2022 01:39:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5564E10E228;
 Fri,  6 May 2022 01:39:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52827AA01E;
 Fri,  6 May 2022 01:39:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Williamson" <alex.williamson@redhat.com>
Date: Fri, 06 May 2022 01:39:17 -0000
Message-ID: <165180115731.18816.17866809047919426589@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v4-8045e76bf00b+13d-vfio_mdev_no_group_jgg@nvidia.com>
In-Reply-To: <0-v4-8045e76bf00b+13d-vfio_mdev_no_group_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Make_the_rest_of_the_VFIO_driver_interface_use_vfio=5Fdevic?=
 =?utf-8?q?e_=28rev5=29?=
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

Series: Make the rest of the VFIO driver interface use vfio_device (rev5)
URL   : https://patchwork.freedesktop.org/series/102606/
State : warning

== Summary ==

Error: dim checkpatch failed
843eb2b14576 vfio: Make vfio_(un)register_notifier accept a vfio_device
-:229: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#229: FILE: include/linux/vfio.h:181:
+extern int vfio_register_notifier(struct vfio_device *device,

-:234: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#234: FILE: include/linux/vfio.h:185:
+extern int vfio_unregister_notifier(struct vfio_device *device,

-:237: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 2 checks, 189 lines checked
996a93fc2107 vfio/ccw: Remove mdev from struct channel_program
-:167: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#167: FILE: drivers/s390/cio/vfio_ccw_cp.c:659:
+		dev_warn(

-:210: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#210: FILE: drivers/s390/cio/vfio_ccw_cp.h:44:
+extern int cp_init(struct channel_program *cp, union orb *orb);

-:227: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 2 checks, 186 lines checked
2e3a2e86296d vfio/mdev: Pass in a struct vfio_device * to vfio_pin/unpin_pages()
-:231: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#231: FILE: include/linux/vfio.h:153:
+extern int vfio_pin_pages(struct vfio_device *device, unsigned long *user_pfn,

-:234: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#234: FILE: include/linux/vfio.h:155:
+extern int vfio_unpin_pages(struct vfio_device *device, unsigned long *user_pfn,

-:237: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 2 checks, 187 lines checked
d0687f95d346 vfio/mdev: Pass in a struct vfio_device * to vfio_dma_rw()
-:102: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#102: FILE: include/linux/vfio.h:164:
+extern int vfio_dma_rw(struct vfio_device *device, dma_addr_t user_iova,

-:105: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 1 checks, 73 lines checked
5271c1e518b7 drm/i915/gvt: Change from vfio_group_(un)pin_pages to vfio_(un)pin_pages
-:111: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 80 lines checked
d9fc0365c445 vfio: Remove dead code
-:225: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 195 lines checked
8cdf37b962cf vfio: Remove calls to vfio_group_add_container_user()
-:246: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 196 lines checked


