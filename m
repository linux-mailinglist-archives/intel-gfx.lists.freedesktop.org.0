Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1753E2140
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Aug 2021 03:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185BB6E8F6;
	Fri,  6 Aug 2021 01:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FB386E7D1;
 Fri,  6 Aug 2021 01:52:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 633DBA8830;
 Fri,  6 Aug 2021 01:52:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Aug 2021 01:52:56 -0000
Message-ID: <162821477637.27547.10910059370899634026@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v4-9ea22c5e6afb+1adf-vfio_reflck_jgg@nvidia.com>
In-Reply-To: <0-v4-9ea22c5e6afb+1adf-vfio_reflck_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Provide_core_infrastructure_for_managing_open/release_=28re?=
 =?utf-8?b?djkp?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Provide core infrastructure for managing open/release (rev9)
URL   : https://patchwork.freedesktop.org/series/92556/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5d99eb3c1b1c vfio/samples: Remove module get/put
-:57: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 31 lines checked
fb9d431ac9b4 vfio/mbochs: Fix missing error unwind of mbochs_used_mbytes
-:12: WARNING:BAD_SIGN_OFF: Co-developed-by: must be immediately followed by Signed-off-by:
#12: 
Co-developed-by: Alex Williamson <alex.williamson@redhat.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
-:103: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 2 warnings, 0 checks, 78 lines checked
14a1353260e5 vfio: Introduce a vfio_uninit_group_dev() API call
2085f40d11f9 vfio: Provide better generic support for open/release vfio_device_ops
-:260: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#260: FILE: drivers/vfio/vfio.c:1483:
+	fdno = ret = get_unused_fd_flags(O_CLOEXEC);

-:358: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#358: FILE: include/linux/vfio.h:25:
+	struct mutex lock;

-:402: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 2 checks, 325 lines checked
abe0ffd61cfa vfio/samples: Delete useless open/close
-:98: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
5d682856d46f vfio/fsl: Move to the device set infrastructure
-:300: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 256 lines checked
d06f6c571ebe vfio/platform: Use open_device() instead of open coding a refcnt scheme
-:51: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#51: FILE: drivers/vfio/platform/vfio_platform_common.c:230:
+		dev_warn(

-:105: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#105: FILE: drivers/vfio/platform/vfio_platform_common.c:261:
+		dev_warn(

-:149: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 2 checks, 120 lines checked
aaf4591d0469 vfio/pci: Move to the device set infrastructure
1d22f1ed155e vfio/pci: Change vfio_pci_try_bus_reset() to use the dev_set
-:276: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 231 lines checked
1309c4bd1733 vfio/pci: Reorganize VFIO_DEVICE_PCI_HOT_RESET to use the device set
-:21: WARNING:BAD_SIGN_OFF: Non-standard signature: Reviewed-off-by:
#21: 
Reviewed-off-by: Christoph Hellwig <hch@lst.de>

-:309: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 2 warnings, 0 checks, 274 lines checked
c5854ee895cf vfio/mbochs: Fix close when multiple device FDs are open
-:37: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
486294d2c582 vfio/ap, ccw: Fix open/close when multiple device FDs are open
-:84: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 52 lines checked
b75c4b452009 vfio/gvt: Fix open/close when multiple device FDs are open
-:52: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
16a862df1e07 vfio: Remove struct vfio_device_ops open/release
-:143: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 107 lines checked


