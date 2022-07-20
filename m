Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7E957AAFD
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 02:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6F272B402;
	Wed, 20 Jul 2022 00:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4DA152B47E;
 Wed, 20 Jul 2022 00:29:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 42FACA66C8;
 Wed, 20 Jul 2022 00:29:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Date: Wed, 20 Jul 2022 00:29:36 -0000
Message-ID: <165827697624.27269.9067646731002292897@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v4-681e038e30fd+78-vfio_unmap_notif_jgg@nvidia.com>
In-Reply-To: <0-v4-681e038e30fd+78-vfio_unmap_notif_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?emove_the_VFIO=5FIOMMU=5FNOTIFY=5FDMA=5FUNMAP_notifier?=
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

Series: Remove the VFIO_IOMMU_NOTIFY_DMA_UNMAP notifier
URL   : https://patchwork.freedesktop.org/series/106501/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/106501/revisions/1/mbox/ not applied
Applying: vfio: Replace the DMA unmapping notifier with a callback
Using index info to reconstruct a base tree...
M	drivers/s390/cio/vfio_ccw_ops.c
M	drivers/s390/cio/vfio_ccw_private.h
M	drivers/vfio/vfio.c
M	include/linux/vfio.h
Falling back to patching base and 3-way merge...
Auto-merging include/linux/vfio.h
CONFLICT (content): Merge conflict in include/linux/vfio.h
Auto-merging drivers/vfio/vfio.c
Auto-merging drivers/s390/cio/vfio_ccw_private.h
CONFLICT (content): Merge conflict in drivers/s390/cio/vfio_ccw_private.h
Auto-merging drivers/s390/cio/vfio_ccw_ops.c
CONFLICT (content): Merge conflict in drivers/s390/cio/vfio_ccw_ops.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 vfio: Replace the DMA unmapping notifier with a callback
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


