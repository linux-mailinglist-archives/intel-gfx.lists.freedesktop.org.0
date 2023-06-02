Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0837205A5
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 17:14:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E894610E053;
	Fri,  2 Jun 2023 15:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1347310E02C;
 Fri,  2 Jun 2023 15:14:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D05A0A882E;
 Fri,  2 Jun 2023 15:14:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Williamson" <alex.williamson@redhat.com>
Date: Fri, 02 Jun 2023 15:14:24 -0000
Message-ID: <168571886482.15698.9720228185150243871@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230602121515.79374-1-yi.l.liu@intel.com>
In-Reply-To: <20230602121515.79374-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enhance_vfio_PCI_hot_reset_for_vfio_cdev_device_=28rev5=29?=
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

Series: Enhance vfio PCI hot reset for vfio cdev device (rev5)
URL   : https://patchwork.freedesktop.org/series/116991/
State : warning

== Summary ==

Error: dim checkpatch failed
f87b519b0c61 vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()
7bb647905c96 vfio/pci: Move the existing hot reset logic to be a helper
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This prepares to add another method for hot reset. The major hot reset logic

total: 0 errors, 1 warnings, 0 checks, 99 lines checked
7f5d0638a299 iommufd: Reserve all negative IDs in the iommufd xarray
f121ad27c9d3 iommufd: Add iommufd_ctx_has_group()
3bbd0b1fd6f9 iommufd: Add helper to retrieve iommufd_ctx and devid
f38953b3e72a vfio: Mark cdev usage in vfio_device
-:8: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#8: 
cdev path yet, so the vfio_device_cdev_opened() helper always returns false.

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
caf12fc9c4de vfio: Add helper to search vfio_device in a dev_set
9425c8cc330c vfio/pci: Extend VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
0b7683a235f1 vfio/pci: Allow passing zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET


