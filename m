Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E87D60D5D3
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 22:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BBC010E35A;
	Tue, 25 Oct 2022 20:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 592BA10E35A;
 Tue, 25 Oct 2022 20:42:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50CCFAA0EA;
 Tue, 25 Oct 2022 20:42:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Date: Tue, 25 Oct 2022 20:42:25 -0000
Message-ID: <166673054532.15484.1984656210494804092@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
In-Reply-To: <0-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBD?=
 =?utf-8?q?onnect_VFIO_to_IOMMUFD?=
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

Series: Connect VFIO to IOMMUFD
URL   : https://patchwork.freedesktop.org/series/110133/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/110133/revisions/1/mbox/ not applied
Applying: vfio: Move vfio_device driver open/close code to a function
Applying: vfio: Move vfio_device_assign_container() into vfio_device_first_open()
Applying: vfio: Rename vfio_device_assign/unassign_container()
Applying: vfio: Move storage of allow_unsafe_interrupts to vfio_main.c
Applying: vfio: Use IOMMU_CAP_ENFORCE_CACHE_COHERENCY for vfio_file_enforced_coherent()
Applying: vfio-iommufd: Allow iommufd to be used in place of a container fd
Applying: vfio-iommufd: Support iommufd for physical VFIO devices
Applying: vfio-iommufd: Support iommufd for emulated VFIO devices
Applying: vfio: Make vfio_container optionally compiled
Applying: iommufd: Allow iommufd to supply /dev/vfio/vfio
error: sha1 information is lacking or useless (drivers/iommu/iommufd/Kconfig).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0010 iommufd: Allow iommufd to supply /dev/vfio/vfio
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


