Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB8C6D319D
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Apr 2023 16:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 427F210E05B;
	Sat,  1 Apr 2023 14:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 339D510E05B;
 Sat,  1 Apr 2023 14:47:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22E65AADD1;
 Sat,  1 Apr 2023 14:47:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yi Liu" <yi.l.liu@intel.com>
Date: Sat, 01 Apr 2023 14:47:46 -0000
Message-ID: <168036046611.8631.13764810783963361972@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230401144429.88673-1-yi.l.liu@intel.com>
In-Reply-To: <20230401144429.88673-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBJ?=
 =?utf-8?q?ntroduce_new_methods_for_verifying_ownership_in_vfio_PCI_hot_re?=
 =?utf-8?q?set_=28rev4=29?=
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

Series: Introduce new methods for verifying ownership in vfio PCI hot reset (rev4)
URL   : https://patchwork.freedesktop.org/series/115264/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/115264/revisions/4/mbox/ not applied
Applying: vfio/pci: Update comment around group_fd get in vfio_pci_ioctl_pci_hot_reset()
Applying: vfio/pci: Only check ownership of opened devices in hot reset
Applying: vfio/pci: Move the existing hot reset logic to be a helper
Applying: vfio-iommufd: Add helper to retrieve iommufd_ctx and devid for vfio_device
Applying: vfio/pci: Allow passing zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET
Applying: vfio: Refine vfio file kAPIs for vfio PCI hot reset
Applying: vfio: Accpet device file from vfio PCI hot reset path
Applying: vfio/pci: Renaming for accepting device fd in hot reset path
Applying: vfio/pci: Accept device fd in VFIO_DEVICE_PCI_HOT_RESET ioctl
Applying: vfio: Mark cdev usage in vfio_device
error: sha1 information is lacking or useless (include/linux/vfio.h).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0010 vfio: Mark cdev usage in vfio_device
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


