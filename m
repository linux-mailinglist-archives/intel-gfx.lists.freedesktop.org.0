Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3E1501388
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 17:21:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE93C10FF8E;
	Thu, 14 Apr 2022 15:21:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2CFCF10FF8B;
 Thu, 14 Apr 2022 15:21:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29297AADD7;
 Thu, 14 Apr 2022 15:21:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Date: Thu, 14 Apr 2022 15:21:05 -0000
Message-ID: <164994966514.1348.13821390447842069911@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v1-a8faf768d202+125dd-vfio_mdev_no_group_jgg@nvidia.com>
In-Reply-To: <0-v1-a8faf768d202+125dd-vfio_mdev_no_group_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBN?=
 =?utf-8?q?ake_the_rest_of_the_VFIO_driver_interface_use_vfio=5Fdevice_=28?=
 =?utf-8?q?rev2=29?=
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

Series: Make the rest of the VFIO driver interface use vfio_device (rev2)
URL   : https://patchwork.freedesktop.org/series/102606/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/102606/revisions/2/mbox/ not applied
Applying: vfio: Make vfio_(un)register_notifier accept a vfio_device
Applying: vfio/ccw: Remove mdev from struct channel_program
Applying: vfio/mdev: Pass in a struct vfio_device * to vfio_pin/unpin_pages()
Applying: drm/i915/gvt: Change from vfio_group_(un)pin_pages to vfio_(un)pin_pages
Applying: vfio: Pass in a struct vfio_device * to vfio_dma_rw()
Applying: drm/i915/gvt: Add missing module_put() in error unwind
Applying: drm/i915/gvt: Delete kvmgt_vdev::vfio_group
Applying: vfio: Remove dead code
Applying: vfio: Remove calls to vfio_group_add_container_user()
error: sha1 information is lacking or useless (drivers/vfio/vfio.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0009 vfio: Remove calls to vfio_group_add_container_user()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


