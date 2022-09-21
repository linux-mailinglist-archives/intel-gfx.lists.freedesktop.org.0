Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9E25BF4F3
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 05:49:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031DF10E204;
	Wed, 21 Sep 2022 03:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BF3F410E0D0;
 Wed, 21 Sep 2022 03:49:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B7C73AA914;
 Wed, 21 Sep 2022 03:49:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@infradead.org>
Date: Wed, 21 Sep 2022 03:49:11 -0000
Message-ID: <166373215171.11599.858764842949784013@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220921104401.38898-1-kevin.tian@intel.com>
In-Reply-To: <20220921104401.38898-1-kevin.tian@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBU?=
 =?utf-8?q?idy_up_vfio=5Fdevice_life_cycle_=28rev7=29?=
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

Series: Tidy up vfio_device life cycle (rev7)
URL   : https://patchwork.freedesktop.org/series/107838/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/107838/revisions/7/mbox/ not applied
Applying: vfio: Add helpers for unifying vfio_device life cycle
Applying: vfio/pci: Use the new device life cycle helpers
Applying: vfio/mlx5: Use the new device life cycle helpers
Using index info to reconstruct a base tree...
M	drivers/vfio/pci/mlx5/main.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/vfio/pci/mlx5/main.c
CONFLICT (content): Merge conflict in drivers/vfio/pci/mlx5/main.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 vfio/mlx5: Use the new device life cycle helpers
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


