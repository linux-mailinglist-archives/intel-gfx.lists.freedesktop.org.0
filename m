Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB13589EE3
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 17:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF11F9BCDD;
	Thu,  4 Aug 2022 15:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 48DCB9BCAD;
 Thu,  4 Aug 2022 15:45:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E451A00FD;
 Thu,  4 Aug 2022 15:45:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nicolin Chen" <nicolinc@nvidia.com>
Date: Thu, 04 Aug 2022 15:45:59 -0000
Message-ID: <165962795912.14885.13301918470403102154@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220723020256.30081-1-nicolinc@nvidia.com>
In-Reply-To: <20220723020256.30081-1-nicolinc@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBj?=
 =?utf-8?q?over-letter=3A_Update_vfio=5Fpin/unpin=5Fpages_API?=
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

Series: cover-letter: Update vfio_pin/unpin_pages API
URL   : https://patchwork.freedesktop.org/series/106978/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/106978/revisions/1/mbox/ not applied
Applying: vfio: Make vfio_unpin_pages() return void
Using index info to reconstruct a base tree...
M	Documentation/driver-api/vfio-mediated-device.rst
M	drivers/gpu/drm/i915/gvt/kvmgt.c
M	drivers/vfio/vfio.c
M	drivers/vfio/vfio.h
M	drivers/vfio/vfio_iommu_type1.c
M	include/linux/vfio.h
Falling back to patching base and 3-way merge...
Auto-merging include/linux/vfio.h
CONFLICT (content): Merge conflict in include/linux/vfio.h
Auto-merging drivers/vfio/vfio_iommu_type1.c
Auto-merging drivers/vfio/vfio.h
Auto-merging drivers/vfio/vfio.c
Auto-merging drivers/gpu/drm/i915/gvt/kvmgt.c
Auto-merging Documentation/driver-api/vfio-mediated-device.rst
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 vfio: Make vfio_unpin_pages() return void
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


