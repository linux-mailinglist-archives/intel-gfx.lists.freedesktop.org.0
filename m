Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC5C3E16E3
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 16:26:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70EAA6E3A0;
	Thu,  5 Aug 2021 14:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F1566E3A0;
 Thu,  5 Aug 2021 14:26:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 344EAA8830;
 Thu,  5 Aug 2021 14:26:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Aug 2021 14:26:12 -0000
Message-ID: <162817357218.30835.11285433499663805278@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v3-6c9e19cc7d44+15613-vfio_reflck_jgg@nvidia.com>
In-Reply-To: <0-v3-6c9e19cc7d44+15613-vfio_reflck_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBQ?=
 =?utf-8?q?rovide_core_infrastructure_for_managing_open/release_=28rev8=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Provide core infrastructure for managing open/release (rev8)
URL   : https://patchwork.freedesktop.org/series/92556/
State : failure

== Summary ==

Applying: vfio/samples: Remove module get/put
Applying: vfio/mbochs: Fix missing error unwind of mbochs_used_mbytes
Applying: vfio: Introduce a vfio_uninit_group_dev() API call
Applying: vfio: Provide better generic support for open/release vfio_device_ops
Applying: vfio/samples: Delete useless open/close
Applying: vfio/fsl: Move to the device set infrastructure
Applying: vfio/platform: Use open_device() instead of open coding a refcnt scheme
Applying: vfio/pci: Move to the device set infrastructure
Applying: vfio/pci: Change vfio_pci_try_bus_reset() to use the dev_set
Applying: vfio/pci: Reorganize VFIO_DEVICE_PCI_HOT_RESET to use the device set
error: sha1 information is lacking or useless (drivers/vfio/pci/vfio_pci.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0010 vfio/pci: Reorganize VFIO_DEVICE_PCI_HOT_RESET to use the device set
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


