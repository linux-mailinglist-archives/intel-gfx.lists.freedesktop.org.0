Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C668F3D0100
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 19:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E2B6E4AF;
	Tue, 20 Jul 2021 17:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A0A6A6E422;
 Tue, 20 Jul 2021 17:55:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86681A8832;
 Tue, 20 Jul 2021 17:55:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Diana Craciun OSS" <diana.craciun@oss.nxp.com>
Date: Tue, 20 Jul 2021 17:55:22 -0000
Message-ID: <162680372252.12849.3527457443031010678@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v2-b6a5582525c9+ff96-vfio_reflck_jgg@nvidia.com>
In-Reply-To: <0-v2-b6a5582525c9+ff96-vfio_reflck_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Provide_core_infrastructure_for_managing_open/release_=28re?=
 =?utf-8?b?djQp?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Provide core infrastructure for managing open/release (rev4)
URL   : https://patchwork.freedesktop.org/series/92556/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7dbfff5c0615 vfio/samples: Remove module get/put
-:56: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 31 lines checked
a970d83995e9 vfio/mbochs: Fix missing error unwind in mbochs_probe()
-:42: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
5234af9416ea vfio: Introduce a vfio_uninit_group_dev() API call
98f8177ed897 vfio: Provide better generic support for open/release vfio_device_ops
-:238: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#238: FILE: drivers/vfio/vfio.c:1480:
+	fdno = ret = get_unused_fd_flags(O_CLOEXEC);

-:336: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#336: FILE: include/linux/vfio.h:25:
+	struct mutex lock;

-:378: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 2 checks, 304 lines checked
41fd621c4613 vfio/samples: Delete useless open/close
-:97: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
58c423da0813 vfio/fsl: Move to the device set infrastructure
-:299: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 255 lines checked
08ebd8d9d664 vfio/platform: Use open_device() instead of open coding a refcnt scheme
-:48: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#48: FILE: drivers/vfio/platform/vfio_platform_common.c:230:
+		dev_warn(

-:102: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#102: FILE: drivers/vfio/platform/vfio_platform_common.c:261:
+		dev_warn(

-:146: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 2 checks, 120 lines checked
f71fdc2eb5e9 vfio/pci: Move to the device set infrastructure
00142c33a230 vfio/pci: Change vfio_pci_try_bus_reset() to use the dev_set
-:130: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#130: FILE: drivers/vfio/pci/vfio_pci.c:2225:
+	if (vfio_pci_for_each_slot_or_bus(

-:236: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 1 checks, 193 lines checked
b53473635416 vfio/pci: Reorganize VFIO_DEVICE_PCI_HOT_RESET to use the device set
-:230: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#230: FILE: drivers/vfio/pci/vfio_pci.c:2103:
+	if (vfio_pci_for_each_slot_or_bus(

-:295: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 1 checks, 263 lines checked
4be916d9705d vfio/mbochs: Fix close when multiple device FDs are open
-:36: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
19f77617b258 vfio/ap, ccw: Fix open/close when multiple device FDs are open
-:84: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 52 lines checked
cab2ea195208 vfio/gvt: Fix open/close when multiple device FDs are open
-:51: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
162e52a805ca vfio: Remove struct vfio_device_ops open/release
-:142: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 107 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
