Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABF4701793
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 16:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 278B810E0D8;
	Sat, 13 May 2023 14:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8EE1C10E0D4;
 Sat, 13 May 2023 14:03:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68743A7E03;
 Sat, 13 May 2023 14:03:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yi Liu" <yi.l.liu@intel.com>
Date: Sat, 13 May 2023 14:03:53 -0000
Message-ID: <168398663340.18764.7484500674307918090@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230513132136.15021-1-yi.l.liu@intel.com>
In-Reply-To: <20230513132136.15021-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enhance_vfio_PCI_hot_reset_for_vfio_cdev_device_=28rev2=29?=
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

Series: Enhance vfio PCI hot reset for vfio cdev device (rev2)
URL   : https://patchwork.freedesktop.org/series/116991/
State : warning

== Summary ==

Error: dim checkpatch failed
a7174f490b03 vfio-iommufd: Create iommufd_access for noiommu devices
ec30c8fef218 vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()
a77f9349425e vfio/pci: Move the existing hot reset logic to be a helper
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This prepares to add another method for hot reset. The major hot reset logic

total: 0 errors, 1 warnings, 0 checks, 99 lines checked
e61bed084fa4 vfio: Mark cdev usage in vfio_device
0bdfe10424d2 iommufd: Reserve all negative IDs in the iommufd xarray
a1ce1e605e4c vfio-iommufd: Add helper to retrieve iommufd_ctx and devid for vfio_device
5d87236894e5 vfio: Add helper to search vfio_device in a dev_set
e7c23092383b iommufd: Add iommufd_ctx_has_group()
a6a19d8a857f vfio/pci: Extend VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
iommufd, or opened outside of the vfio device cdev API, the _INFO ioctl shall

-:112: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#112: FILE: drivers/vfio/pci/vfio_pci_core.c:1273:
+	fill.devid = fill.dev_owned = vfio_device_cdev_opened(&vdev->vdev);

total: 0 errors, 1 warnings, 1 checks, 154 lines checked
8b87fbee5680 vfio/pci: Allow passing zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET


