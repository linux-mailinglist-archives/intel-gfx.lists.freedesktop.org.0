Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C93335B2CE6
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 05:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BF3B10E97C;
	Fri,  9 Sep 2022 03:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E4D6C10E97C;
 Fri,  9 Sep 2022 03:28:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DAEE8A8830;
 Fri,  9 Sep 2022 03:28:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@infradead.org>
Date: Fri, 09 Sep 2022 03:28:42 -0000
Message-ID: <166269412286.1365.12931277133650509967@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220909102247.67324-1-kevin.tian@intel.com>
In-Reply-To: <20220909102247.67324-1-kevin.tian@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBU?=
 =?utf-8?q?idy_up_vfio=5Fdevice_life_cycle_=28rev6=29?=
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

Series: Tidy up vfio_device life cycle (rev6)
URL   : https://patchwork.freedesktop.org/series/107838/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/107838/revisions/6/mbox/ not applied
Applying: vfio: Add helpers for unifying vfio_device life cycle
Applying: vfio/pci: Use the new device life cycle helpers
Applying: vfio/mlx5: Use the new device life cycle helpers
error: sha1 information is lacking or useless (drivers/vfio/pci/mlx5/main.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 vfio/mlx5: Use the new device life cycle helpers
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


