Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8356F74E576
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 05:47:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB3610E2F9;
	Tue, 11 Jul 2023 03:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5776010E2F9;
 Tue, 11 Jul 2023 03:47:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36497AADE4;
 Tue, 11 Jul 2023 03:47:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yi Liu" <yi.l.liu@intel.com>
Date: Tue, 11 Jul 2023 03:47:46 -0000
Message-ID: <168904726619.18665.376060824702411937@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230711025928.6438-1-yi.l.liu@intel.com>
In-Reply-To: <20230711025928.6438-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBB?=
 =?utf-8?q?dd_vfio=5Fdevice_cdev_for_iommufd_support_=28rev18=29?=
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

Series: Add vfio_device cdev for iommufd support (rev18)
URL   : https://patchwork.freedesktop.org/series/113696/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/113696/revisions/18/mbox/ not applied
Applying: vfio: Allocate per device file structure
Applying: vfio: Refine vfio file kAPIs for KVM
Applying: vfio: Accept vfio device file in the KVM facing kAPI
Applying: kvm/vfio: Prepare for accepting vfio device fd
Applying: kvm/vfio: Accept vfio device file from userspace
Applying: vfio: Pass struct vfio_device_file * to vfio_device_open/close()
Applying: vfio: Block device access via device fd until device is opened
Applying: vfio: Add cdev_device_open_cnt to vfio_group
Applying: vfio: Make vfio_df_open() single open for device cdev path
Applying: vfio-iommufd: Move noiommu compat validation out of vfio_iommufd_bind()
Applying: vfio-iommufd: Split bind/attach into two steps
Applying: vfio: Record devid in vfio_device_file
Applying: vfio-iommufd: Add detach_ioas support for physical VFIO devices
Applying: iommufd/device: Add iommufd_access_detach() API
Applying: vfio-iommufd: Add detach_ioas support for emulated VFIO devices
error: sha1 information is lacking or useless (drivers/vfio/iommufd.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0015 vfio-iommufd: Add detach_ioas support for emulated VFIO devices
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


