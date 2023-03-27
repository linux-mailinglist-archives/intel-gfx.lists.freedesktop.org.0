Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 509106CA2E5
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 13:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94F2A10E396;
	Mon, 27 Mar 2023 11:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4AE7410E396;
 Mon, 27 Mar 2023 11:55:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44006A7DFF;
 Mon, 27 Mar 2023 11:55:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yi Liu" <yi.l.liu@intel.com>
Date: Mon, 27 Mar 2023 11:55:32 -0000
Message-ID: <167991813225.32630.12049470880149386115@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230327093458.44939-1-yi.l.liu@intel.com>
In-Reply-To: <20230327093458.44939-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_new_methods_for_verifying_ownership_in_vfio_PCI_h?=
 =?utf-8?q?ot_reset_=28rev2=29?=
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

Series: Introduce new methods for verifying ownership in vfio PCI hot reset (rev2)
URL   : https://patchwork.freedesktop.org/series/115264/
State : warning

== Summary ==

Error: dim checkpatch failed
498fb1274097 vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()
09b95d011880 vfio/pci: Only check ownership of opened devices in hot reset
a93e0e52bde9 vfio/pci: Move the existing hot reset logic to be a helper
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This prepares to add another method for hot reset. The major hot reset logic

total: 0 errors, 1 warnings, 0 checks, 100 lines checked
6bed441dc040 vfio-iommufd: Add helper to retrieve iommufd_ctx and devid for vfio_device
617ce05d9e70 vfio/pci: Allow passing zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET
4302e450c3d2 vfio: Refine vfio file kAPIs for vfio PCI hot reset
b87361e1e7b8 vfio: Accpet device file from vfio PCI hot reset path
b86ec489e81d vfio/pci: Renaming for accepting device fd in hot reset path
-:52: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 's32' over 'int32_t'
#52: FILE: drivers/vfio/pci/vfio_pci_core.c:1265:
+	int32_t *fds;

total: 0 errors, 0 warnings, 1 checks, 127 lines checked
1dbe4a480fac vfio/pci: Accept device fd in VFIO_DEVICE_PCI_HOT_RESET ioctl
fb6e32ec2ecf vfio/pci: Add VFIO_DEVICE_GET_PCI_HOT_RESET_GROUP_INFO
-:43: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#43: FILE: drivers/vfio/pci/vfio_pci_core.c:1187:
+static int vfio_pci_ioctl_get_pci_hot_reset_group_info(

total: 0 errors, 0 warnings, 1 checks, 163 lines checked


