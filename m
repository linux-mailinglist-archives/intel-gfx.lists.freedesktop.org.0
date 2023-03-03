Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 569236A9158
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Mar 2023 08:00:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E7CD10E603;
	Fri,  3 Mar 2023 07:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CBC7410E603;
 Fri,  3 Mar 2023 07:00:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD5D3A882E;
 Fri,  3 Mar 2023 07:00:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Date: Fri, 03 Mar 2023 07:00:13 -0000
Message-ID: <167782681377.9996.12052060499019764326@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230227111135.61728-1-yi.l.liu@intel.com>
In-Reply-To: <20230227111135.61728-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBB?=
 =?utf-8?q?dd_vfio=5Fdevice_cdev_for_iommufd_support_=28rev7=29?=
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

Series: Add vfio_device cdev for iommufd support (rev7)
URL   : https://patchwork.freedesktop.org/series/113696/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/113696/revisions/7/mbox/ not applied
Applying: vfio: Allocate per device file structure
Using index info to reconstruct a base tree...
M	drivers/vfio/group.c
M	drivers/vfio/vfio.h
M	drivers/vfio/vfio_main.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/vfio/vfio_main.c
Auto-merging drivers/vfio/vfio.h
Auto-merging drivers/vfio/group.c
Applying: vfio: Refine vfio file kAPIs for KVM
Using index info to reconstruct a base tree...
M	drivers/vfio/group.c
M	drivers/vfio/vfio.h
M	drivers/vfio/vfio_main.c
M	include/linux/vfio.h
Falling back to patching base and 3-way merge...
Auto-merging include/linux/vfio.h
Auto-merging drivers/vfio/vfio_main.c
Auto-merging drivers/vfio/vfio.h
Auto-merging drivers/vfio/group.c
CONFLICT (content): Merge conflict in drivers/vfio/group.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 vfio: Refine vfio file kAPIs for KVM
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


