Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1B86BE772
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 11:59:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8735E10EECC;
	Fri, 17 Mar 2023 10:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6ED310EECC;
 Fri, 17 Mar 2023 10:59:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CECA3A9932;
 Fri, 17 Mar 2023 10:59:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nicolin Chen" <nicolinc@nvidia.com>
Date: Fri, 17 Mar 2023 10:59:44 -0000
Message-ID: <167905078482.12995.16005994211493825094@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230316121526.5644-1-yi.l.liu@intel.com>
In-Reply-To: <20230316121526.5644-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_vfio=3A_Make_emulated_devices_prepared_for_vfio_device_cdev?=
 =?utf-8?q?_=28rev3=29?=
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

Series: vfio: Make emulated devices prepared for vfio device cdev (rev3)
URL   : https://patchwork.freedesktop.org/series/114846/
State : warning

== Summary ==

Error: dim checkpatch failed
fe8988bb3336 iommufd: Create access in vfio_iommufd_emulated_bind()
-:102: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "access->ioas"
#102: FILE: drivers/iommu/iommufd/device.c:488:
+	if (access->ioas != NULL && access->ioas->obj.id != ioas_id)

total: 0 errors, 0 warnings, 1 checks, 171 lines checked
4b86dcdf59ad vfio-iommufd: No need to record iommufd_ctx in vfio_device
8d19b7e53ba4 vfio-iommufd: Make vfio_iommufd_emulated_bind() return iommufd_access ID
88ed0037bcba vfio/mdev: Uses the vfio emulated iommufd ops set in the mdev sample drivers
2b9b283bfbed vfio: Check the presence for iommufd callbacks in __vfio_register_dev()


