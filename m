Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CB462522A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 05:07:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8A910E747;
	Fri, 11 Nov 2022 04:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 13AB310E747;
 Fri, 11 Nov 2022 04:06:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD9FAAADD7;
 Fri, 11 Nov 2022 04:06:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Date: Fri, 11 Nov 2022 04:06:58 -0000
Message-ID: <166813961883.870.6522095140946758664@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v2-65016290f146+33e-vfio_iommufd_jgg@nvidia.com>
In-Reply-To: <0-v2-65016290f146+33e-vfio_iommufd_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBD?=
 =?utf-8?q?onnect_VFIO_to_IOMMUFD_=28rev5=29?=
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

Series: Connect VFIO to IOMMUFD (rev5)
URL   : https://patchwork.freedesktop.org/series/110133/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/110133/revisions/5/mbox/ not applied
Applying: vfio: Move vfio_device driver open/close code to a function
Applying: vfio: Move vfio_device_assign_container() into vfio_device_first_open()
Applying: vfio: Rename vfio_device_assign/unassign_container()
Applying: vfio: Move storage of allow_unsafe_interrupts to vfio_main.c
Applying: vfio: Use IOMMU_CAP_ENFORCE_CACHE_COHERENCY for vfio_file_enforced_coherent()
Applying: vfio-iommufd: Allow iommufd to be used in place of a container fd
Applying: vfio-iommufd: Support iommufd for physical VFIO devices
Applying: vfio-iommufd: Support iommufd for emulated VFIO devices
Applying: vfio: Move container related MODULE_ALIAS statements into container.c
Applying: vfio: Make vfio_container optionally compiled
Using index info to reconstruct a base tree...
A	drivers/iommu/iommufd/vfio_compat.c
M	drivers/vfio/vfio_main.c
A	include/linux/iommufd.h
Falling back to patching base and 3-way merge...
CONFLICT (modify/delete): include/linux/iommufd.h deleted in HEAD and modified in vfio: Make vfio_container optionally compiled. Version vfio: Make vfio_container optionally compiled of include/linux/iommufd.h left in tree.
Auto-merging drivers/vfio/vfio_main.c
CONFLICT (modify/delete): drivers/iommu/iommufd/vfio_compat.c deleted in HEAD and modified in vfio: Make vfio_container optionally compiled. Version vfio: Make vfio_container optionally compiled of drivers/iommu/iommufd/vfio_compat.c left in tree.
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0010 vfio: Make vfio_container optionally compiled
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


