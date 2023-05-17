Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EC4707516
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 00:09:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2868E10E02C;
	Wed, 17 May 2023 22:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 137DC10E01F;
 Wed, 17 May 2023 22:09:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09FDAAADD2;
 Wed, 17 May 2023 22:09:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Williamson" <alex.williamson@redhat.com>
Date: Wed, 17 May 2023 22:09:43 -0000
Message-ID: <168436138300.6589.4681505126368775534@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230513132136.15021-1-yi.l.liu@intel.com>
In-Reply-To: <20230513132136.15021-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBF?=
 =?utf-8?q?nhance_vfio_PCI_hot_reset_for_vfio_cdev_device_=28rev3=29?=
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

Series: Enhance vfio PCI hot reset for vfio cdev device (rev3)
URL   : https://patchwork.freedesktop.org/series/116991/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/116991/revisions/3/mbox/ not applied
Applying: vfio-iommufd: Create iommufd_access for noiommu devices
Applying: vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()
Applying: vfio/pci: Move the existing hot reset logic to be a helper
Applying: vfio: Mark cdev usage in vfio_device
Applying: iommufd: Reserve all negative IDs in the iommufd xarray
Applying: vfio-iommufd: Add helper to retrieve iommufd_ctx and devid for vfio_device
Applying: vfio: Add helper to search vfio_device in a dev_set
Applying: iommufd: Add iommufd_ctx_has_group()
Applying: vfio/pci: Extend VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
error: sha1 information is lacking or useless (drivers/vfio/pci/vfio_pci_core.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0009 vfio/pci: Extend VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


