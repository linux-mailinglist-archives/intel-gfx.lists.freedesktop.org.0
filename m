Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEB03A72F3
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 02:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D286E199;
	Tue, 15 Jun 2021 00:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F0F16E198;
 Tue, 15 Jun 2021 00:20:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D6C0A7DFC;
 Tue, 15 Jun 2021 00:20:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Tue, 15 Jun 2021 00:20:41 -0000
Message-ID: <162371644142.8817.16390704338794615937@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210614150846.4111871-1-hch@lst.de>
In-Reply-To: <20210614150846.4111871-1-hch@lst.de>
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
URL   : https://patchwork.freedesktop.org/series/91461/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
852f63054431 driver core: Pull required checks into driver_probe_device()
-:112: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 70 lines checked
ef5a88420ec4 driver core: Better distinguish probe errors in really_probe
-:22: CHECK:LINE_SPACING: Please don't use multiple blank lines
#22: FILE: drivers/base/dd.c:516:
 
+

-:80: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#80: FILE: drivers/base/dd.c:610:
+		 * try its luck.
+		   */

-:83: ERROR:TRAILING_WHITESPACE: trailing whitespace
#83: FILE: drivers/base/dd.c:613:
+^I} $

total: 1 errors, 1 warnings, 1 checks, 96 lines checked
1f1af497f5c8 driver core: Flow the return code from ->probe() through to sysfs bind
e8c231416c28 driver core: Don't return EPROBE_DEFER to userspace during sysfs bind
4da5f45f608f driver core: Export device_driver_attach()
-:75: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 30 lines checked
482cbc50b749 vfio/mdev: Remove CONFIG_VFIO_MDEV_DEVICE
-:203: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 113 lines checked
6f9eaa31f051 vfio/mdev: Allow the mdev_parent_ops to specify the device driver to bind
-:138: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 99 lines checked
80b0203c9f8d vfio/mtty: Convert to use vfio_register_group_dev()
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
4f7da4e54687 vfio/mdpy: Convert to use vfio_register_group_dev()
-:122: WARNING:TRACING_LOGGING: Unnecessary ftrace-like logging - prefer using ftrace
#122: FILE: samples/vfio-mdev/mdpy.c:275:
+	dev_info(&mdev->dev, "%s\n", __func__);

-:453: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 2 warnings, 0 checks, 406 lines checked
07ce69ccb020 vfio/mbochs: Convert to use vfio_register_group_dev()
-:491: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Jason Gunthorpe <jgg@ziepe.ca>' != 'Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>'

total: 0 errors, 1 warnings, 0 checks, 440 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
