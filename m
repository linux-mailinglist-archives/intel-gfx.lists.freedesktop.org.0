Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BD66CA24A
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 13:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53A9E10E393;
	Mon, 27 Mar 2023 11:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E31710E393;
 Mon, 27 Mar 2023 11:23:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29A31A7E03;
 Mon, 27 Mar 2023 11:23:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nicolin Chen" <nicolinc@nvidia.com>
Date: Mon, 27 Mar 2023 11:23:24 -0000
Message-ID: <167991620416.32631.5458790277488557534@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230327093351.44505-1-yi.l.liu@intel.com>
In-Reply-To: <20230327093351.44505-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_vfio=3A_Make_emulated_devices_prepared_for_vfio_device_cdev?=
 =?utf-8?q?_=28rev4=29?=
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

Series: vfio: Make emulated devices prepared for vfio device cdev (rev4)
URL   : https://patchwork.freedesktop.org/series/114846/
State : warning

== Summary ==

Error: dim checkpatch failed
b5391e6b2896 iommu/iommufd: Pass iommufd_ctx pointer in iommufd_get_ioas()
c01840bafa3b iommufd: Create access in vfio_iommufd_emulated_bind()
-:103: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "access->ioas"
#103: FILE: drivers/iommu/iommufd/device.c:487:
+	if (access->ioas != NULL && access->ioas->obj.id != ioas_id)

total: 0 errors, 0 warnings, 1 checks, 165 lines checked
f3d9dac0a268 vfio-iommufd: No need to record iommufd_ctx in vfio_device
ab6fbacfb65a vfio-iommufd: Make vfio_iommufd_emulated_bind() return iommufd_access ID
a58e614509df vfio/mdev: Uses the vfio emulated iommufd ops set in the mdev sample drivers
d35b9576c6aa vfio: Check the presence for iommufd callbacks in __vfio_register_dev()


