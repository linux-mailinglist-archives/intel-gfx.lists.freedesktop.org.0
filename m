Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F892732B9E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 11:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE89010E57D;
	Fri, 16 Jun 2023 09:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5BD210E0B7;
 Fri, 16 Jun 2023 09:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686907844; x=1718443844;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rcbWoJuquNvTPErXmQhigejML4bIMzlFqoFGfaEhre4=;
 b=h8U1qHwuKxOV8usooSfHG3f5Cr8z8e01prvvylsNlIA10cnn2U5VsBzj
 vcK7J8uV9buPnMac5OQmK7/Rx2q1YvkJo7vj+oOAQ5x8UX1pA1q9DzD1U
 btQkCMGqXNaoatSOFdqzME5nIIxohBEY837tt/BdrD9yh7GOiEQdxbIMQ
 8aPLiBuSERgGDLUeAqVal+pm4z2v8+FxmGVbM5MAR6XsuCDDY2HFv1u+O
 5Ac6+c/PQgES8xTk7gbBYHbI1eKks7Sn0as1UewQdJIJ333NmbiMy/9BO
 QUS2F0/qUWMiJoGrsx/Pew3T0MG5PQqesU7QBDkC/B5w1Ot9xE6/DkmNZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="387863411"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="387863411"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 02:30:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="742601899"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="742601899"
Received: from 984fee00a4c6.jf.intel.com ([10.165.58.231])
 by orsmga008.jf.intel.com with ESMTP; 16 Jun 2023 02:30:43 -0700
From: Yi Liu <yi.l.liu@intel.com>
To: alex.williamson@redhat.com,
	jgg@nvidia.com,
	kevin.tian@intel.com
Date: Fri, 16 Jun 2023 02:30:32 -0700
Message-Id: <20230616093042.65094-1-yi.l.liu@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 00/10] Enhance vfio PCI hot reset for vfio
 cdev device
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
Cc: mjrosato@linux.ibm.com, jasowang@redhat.com, xudong.hao@intel.com,
 zhenzhong.duan@intel.com, peterx@redhat.com, terrence.xu@intel.com,
 chao.p.peng@linux.intel.com, linux-s390@vger.kernel.org, yi.l.liu@intel.com,
 kvm@vger.kernel.org, lulu@redhat.com, yanting.jiang@intel.com, joro@8bytes.org,
 nicolinc@nvidia.com, yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org,
 eric.auger@redhat.com, intel-gvt-dev@lists.freedesktop.org,
 yi.y.sun@linux.intel.com, clegoate@redhat.com, cohuck@redhat.com,
 shameerali.kolothum.thodi@huawei.com, suravee.suthikulpanit@amd.com,
 robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VFIO_DEVICE_PCI_HOT_RESET requires user to pass an array of group fds
to prove that it owns all devices affected by resetting the calling
device. While for cdev devices, user can use an iommufd-based ownership
checking model and invoke VFIO_DEVICE_PCI_HOT_RESET with a zero-length
fd array.

This series extends VFIO_DEVICE_GET_PCI_HOT_RESET_INFO to check ownership
and return the check result and the devid of affected devices to user. In
the end, extends the VFIO_DEVICE_PCI_HOT_RESET to accept zero-length fd
array for hot-reset with cdev devices.

The new hot reset method and updated _INFO ioctl are tested with the
below qemu:

https://github.com/yiliu1765/qemu/tree/iommufd_rfcv4.mig.reset.v4_var3
(requires to test with the cdev kernel)

Change log:

v8:
 - Add r-b from Jason to patch 03, 04, 05, 07, 09 of v7
 - Add a patch to copy the per-device hot-reset structure to user during the
   device loop instead of storing them in a buffer and copy all the contents
   in one copy, this avoids an extra loop to count device and also avoids
   allocating a temporay buffer for it. (Jason)
 - Rename vfio_iommufd_device_hot_reset_devid() to be vfio_iommufd_get_dev_id()
   and refine its return value for the case no valid ID can be returned. Hence
   make it a general helper to get ID for a device. (Alex, Jason)
 - Remove iommufd_ctx_has_group() CONIFG_IOMMUFD disabled stub as this API is
   called in iommufd specific code which is compiled when CONFIG_IOMMU is
   enabled. (Alex)
 - Reaffirming Yanting's t-b (Tested NIC passthrough on Intel platform. mainly
   regression tests)

v7: https://lore.kernel.org/kvm/20230602121515.79374-1-yi.l.liu@intel.com/
 - Drop noiommu support (patch 01 of v6 is dropped)
 - Remove helpers to get devid and ictx for iommufd_access
 - Document the dev_set representative requirement in the
   VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for the cdev opened device (Alex)
 - zero-length fd array approach is only for cdev opened device (Alex)

v6: https://lore.kernel.org/kvm/20230522115751.326947-1-yi.l.liu@intel.com/
 - Remove noiommu_access, reuse iommufd_access instead (Alex)
 - vfio_iommufd_physical_ictx -> vfio_iommufd_device_ictx
 - vfio_iommufd_physical_devid -> vfio_iommufd_device_hot_reset_devid
 - Refine logic in patch 9 and 10 of v5, no uapi change. (Alex)
 - Remove lockdep asset in vfio_pci_is_device_in_set (Cédric)
 - Add t-b from Terrence (Tested GVT-g / GVT-d VFIO legacy mode / compat mode
   / cdev mode, including negative tests. No regression be introduced.)

v5: https://lore.kernel.org/kvm/20230513132136.15021-1-yi.l.liu@intel.com/
 - Drop patch 01 of v4 (Alex)
 - Create noiommu_access for noiommu devices (Jason)
 - Reserve all negative iommufd IDs, hence VFIO can encode negative
   values (Jason)
 - Make vfio_iommufd_physical_devid() return -EINVAL if it's not called
   with a physical device or a noiommu device.
 - Add vfio_find_device_in_devset() in vfio_main.c (Alex)
 - Add iommufd_ctx_has_group() to replace vfio_devset_iommufd_has_group().
   Reason: vfio_devset_iommufd_has_group() only loops the devices within
   the given devset to check the iommufd an iommu_group, but an iommu_group
   can span into multiple devsets. So if failed to find the group in a
   devset doesn't mean the group is not owned by the iommufd. So here either
   needs to search all the devsets or add an iommufd API to check it. It
   appears an iommufd API makes more sense.
 - Adopt suggestions from Alex on patch 08 and 09 of v4, refine the hot-reset
   uapi description and minor tweaks
 - Use bitfields for bool members (Alex)

v4: https://lore.kernel.org/kvm/20230426145419.450922-1-yi.l.liu@intel.com/
 - Rename the patch series subject
 - Patch 01 is moved from the cdev series
 - Patch 02, 06 are new per review comments in v3
 - Patch 03/04/05/07/08/09 are from v3 with updates

v3: https://lore.kernel.org/kvm/20230401144429.88673-1-yi.l.liu@intel.com/
 - Remove the new _INFO ioctl of v2, extend the existing _INFO ioctl to
   report devid (Alex)
 - Add r-b from Jason
 - Add t-b from Terrence Xu and Yanting Jiang (mainly regression test)

v2: https://lore.kernel.org/kvm/20230327093458.44939-1-yi.l.liu@intel.com/
 - Split the patch 03 of v1 to be 03, 04 and 05 of v2 (Jaon)
 - Add r-b from Kevin and Jason
 - Add patch 10 to introduce a new _INFO ioctl for the usage of device
   fd passing usage in cdev path (Jason, Alex)

v1: https://lore.kernel.org/kvm/20230316124156.12064-1-yi.l.liu@intel.com/

Regards,
	Yi Liu

Yi Liu (10):
  vfio/pci: Update comment around group_fd get in
    vfio_pci_ioctl_pci_hot_reset()
  vfio/pci: Move the existing hot reset logic to be a helper
  iommufd: Reserve all negative IDs in the iommufd xarray
  iommufd: Add iommufd_ctx_has_group()
  iommufd: Add helper to retrieve iommufd_ctx and devid
  vfio: Mark cdev usage in vfio_device
  vfio: Add helper to search vfio_device in a dev_set
  vfio/pci: Extend VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device
    cdev
  vfio/pci: Copy hot-reset device info to userspace in the devices loop
  vfio/pci: Allow passing zero-length fd array in
    VFIO_DEVICE_PCI_HOT_RESET

 drivers/iommu/iommufd/device.c   |  42 ++++++
 drivers/iommu/iommufd/main.c     |   2 +-
 drivers/vfio/iommufd.c           |  44 ++++++
 drivers/vfio/pci/vfio_pci_core.c | 250 +++++++++++++++++++------------
 drivers/vfio/vfio_main.c         |  15 ++
 include/linux/iommufd.h          |   5 +
 include/linux/vfio.h             |  22 +++
 include/uapi/linux/vfio.h        |  71 ++++++++-
 8 files changed, 352 insertions(+), 99 deletions(-)

-- 
2.34.1

