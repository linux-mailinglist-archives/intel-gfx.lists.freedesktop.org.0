Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4A1757A70
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 13:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B405A10E0CB;
	Tue, 18 Jul 2023 11:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52C6110E0CB;
 Tue, 18 Jul 2023 11:28:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B1D7AADE8;
 Tue, 18 Jul 2023 11:28:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Date: Tue, 18 Jul 2023 11:28:08 -0000
Message-ID: <168967968827.22203.1919922643504152737@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230718105542.4138-1-yi.l.liu@intel.com>
In-Reply-To: <20230718105542.4138-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enhance_vfio_PCI_hot_reset_for_vfio_cdev_device_=28rev10=29?=
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

Series: Enhance vfio PCI hot reset for vfio cdev device (rev10)
URL   : https://patchwork.freedesktop.org/series/116991/
State : warning

== Summary ==

Error: dim checkpatch failed
7a4aaa443b7a vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()
65975a376988 vfio/pci: Move the existing hot reset logic to be a helper
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This prepares to add another method for hot reset. The major hot reset logic

total: 0 errors, 1 warnings, 0 checks, 99 lines checked
3b0915db2889 iommufd: Reserve all negative IDs in the iommufd xarray
46920e53d4d4 iommufd: Add iommufd_ctx_has_group()
ef78cfe7dd6c iommufd: Add helper to retrieve iommufd_ctx and devid
f8e653236125 vfio: Mark cdev usage in vfio_device
-:8: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#8: 
cdev path yet, so the vfio_device_cdev_opened() helper always returns false.

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
16f20b24151e vfio: Add helper to search vfio_device in a dev_set
f6cfba828e30 vfio/pci: Extend VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
88350a705281 vfio/pci: Copy hot-reset device info to userspace in the devices loop
392ee2f33799 vfio/pci: Allow passing zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET


