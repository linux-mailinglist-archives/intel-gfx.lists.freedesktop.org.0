Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 967AE70F0FD
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 10:33:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB8EA10E5A7;
	Wed, 24 May 2023 08:33:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A7FA810E5A5;
 Wed, 24 May 2023 08:33:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D5F3A00E6;
 Wed, 24 May 2023 08:33:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Date: Wed, 24 May 2023 08:33:21 -0000
Message-ID: <168491720118.11316.1404652467749280413@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230513132827.39066-1-yi.l.liu@intel.com>
In-Reply-To: <20230513132827.39066-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBB?=
 =?utf-8?q?dd_vfio=5Fdevice_cdev_for_iommufd_support_=28rev14=29?=
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

Series: Add vfio_device cdev for iommufd support (rev14)
URL   : https://patchwork.freedesktop.org/series/113696/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/113696/revisions/14/mbox/ not applied
Applying: vfio: Allocate per device file structure
Applying: vfio: Refine vfio file kAPIs for KVM
Applying: vfio: Accept vfio device file in the KVM facing kAPI
Applying: kvm/vfio: Rename kvm_vfio_group to prepare for accepting vfio device fd
Applying: kvm/vfio: Accept vfio device file from userspace
Applying: vfio: Pass struct vfio_device_file * to vfio_device_open/close()
Applying: vfio: Block device access via device fd until device is opened
Applying: vfio: Add cdev_device_open_cnt to vfio_group
Applying: vfio: Make vfio_device_open() single open for device cdev path
Applying: vfio-iommufd: Move noiommu compat probe out of vfio_iommufd_bind()
Using index info to reconstruct a base tree...
M	drivers/vfio/iommufd.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/vfio/iommufd.c
CONFLICT (content): Merge conflict in drivers/vfio/iommufd.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0010 vfio-iommufd: Move noiommu compat probe out of vfio_iommufd_bind()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


