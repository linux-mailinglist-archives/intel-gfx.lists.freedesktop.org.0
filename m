Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 506F53A8207
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 16:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28286E328;
	Tue, 15 Jun 2021 14:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 740CA6E2D8;
 Tue, 15 Jun 2021 14:11:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6C457AA0EB;
 Tue, 15 Jun 2021 14:11:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Tue, 15 Jun 2021 14:11:53 -0000
Message-ID: <162376631343.8816.10276499519895953785@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210615133519.754763-1-hch@lst.de>
In-Reply-To: <20210615133519.754763-1-hch@lst.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/10=5D_driver_core=3A_Pull_requir?=
 =?utf-8?q?ed_checks_into_driver=5Fprobe=5Fdevice=28=29?=
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

Series: series starting with [01/10] driver core: Pull required checks into driver_probe_device()
URL   : https://patchwork.freedesktop.org/series/91520/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6d13827dce62 driver core: Pull required checks into driver_probe_device()
-:114: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 70 lines checked
cc49d7d5df77 driver core: Better distinguish probe errors in really_probe
-:23: CHECK:LINE_SPACING: Please don't use multiple blank lines
#23: FILE: drivers/base/dd.c:516:
 
+

total: 0 errors, 0 warnings, 1 checks, 96 lines checked
be3368a66990 driver core: Flow the return code from ->probe() through to sysfs bind
76221f2ba6be driver core: Don't return EPROBE_DEFER to userspace during sysfs bind
124cc27a8e08 driver core: Export device_driver_attach()
-:76: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 30 lines checked
d7ed7066acc6 vfio/mdev: Remove CONFIG_VFIO_MDEV_DEVICE
-:204: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 113 lines checked
edc2c7ed6aee vfio/mdev: Allow the mdev_parent_ops to specify the device driver to bind
-:138: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 99 lines checked
8164aceb1947 vfio/mtty: Convert to use vfio_register_group_dev()
-:188: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#188: FILE: samples/vfio-mdev/mtty.c:831:
+static ssize_t mtty_write(struct vfio_device *vdev, const char __user *buf,
 		   size_t count, loff_t *ppos)

-:249: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#249: FILE: samples/vfio-mdev/mtty.c:1010:
+static int mtty_get_region_info(struct mdev_state *mdev_state,
 			 struct vfio_region_info *region_info,

-:292: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#292: FILE: samples/vfio-mdev/mtty.c:1084:
+static long mtty_ioctl(struct vfio_device *vdev, unsigned int cmd,
 			unsigned long arg)

-:468: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 3 checks, 425 lines checked
292a0ba08d06 vfio/mdpy: Convert to use vfio_register_group_dev()
-:122: WARNING:TRACING_LOGGING: Unnecessary ftrace-like logging - prefer using ftrace
#122: FILE: samples/vfio-mdev/mdpy.c:275:
+	dev_info(&mdev->dev, "%s\n", __func__);

-:453: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 2 warnings, 0 checks, 406 lines checked
a34fb1f64411 vfio/mbochs: Convert to use vfio_register_group_dev()
-:491: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 440 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
