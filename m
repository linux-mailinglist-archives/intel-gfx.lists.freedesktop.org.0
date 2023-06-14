Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D86BF73041D
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 17:47:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04A1F10E149;
	Wed, 14 Jun 2023 15:47:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A70FC10E149;
 Wed, 14 Jun 2023 15:47:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D17DAADD5;
 Wed, 14 Jun 2023 15:47:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Date: Wed, 14 Jun 2023 15:47:00 -0000
Message-ID: <168675762054.17428.7935292626241050492@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230602121515.79374-1-yi.l.liu@intel.com>
In-Reply-To: <20230602121515.79374-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBF?=
 =?utf-8?q?nhance_vfio_PCI_hot_reset_for_vfio_cdev_device_=28rev7=29?=
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

Series: Enhance vfio PCI hot reset for vfio cdev device (rev7)
URL   : https://patchwork.freedesktop.org/series/116991/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/116991/revisions/7/mbox/ not applied
Applying: vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()
Applying: vfio/pci: Move the existing hot reset logic to be a helper
Applying: iommufd: Reserve all negative IDs in the iommufd xarray
Applying: iommufd: Add iommufd_ctx_has_group()
Applying: iommufd: Add helper to retrieve iommufd_ctx and devid
Applying: vfio: Mark cdev usage in vfio_device
Applying: vfio: Add helper to search vfio_device in a dev_set
Applying: vfio/pci: Extend VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
Using index info to reconstruct a base tree...
M	drivers/vfio/pci/vfio_pci_core.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/vfio/pci/vfio_pci_core.c
CONFLICT (content): Merge conflict in drivers/vfio/pci/vfio_pci_core.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0008 vfio/pci: Extend VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


