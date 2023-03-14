Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D8F6B90EA
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 12:02:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C9B10E178;
	Tue, 14 Mar 2023 11:02:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D914110E178;
 Tue, 14 Mar 2023 11:02:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CFCEBA47EB;
 Tue, 14 Mar 2023 11:02:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Date: Tue, 14 Mar 2023 11:02:29 -0000
Message-ID: <167879174984.26414.8436866337449993415@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230308132903.465159-1-yi.l.liu@intel.com>
In-Reply-To: <20230308132903.465159-1-yi.l.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBj?=
 =?utf-8?q?over-letter=3A_Add_vfio=5Fdevice_cdev_for_iommufd_support?=
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

Series: cover-letter: Add vfio_device cdev for iommufd support
URL   : https://patchwork.freedesktop.org/series/114850/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/114850/revisions/1/mbox/ not applied
Applying: vfio: Allocate per device file structure
Applying: vfio: Refine vfio file kAPIs for KVM
Applying: vfio: Accept vfio device file in the KVM facing kAPI
Applying: kvm/vfio: Rename kvm_vfio_group to prepare for accepting vfio device fd
Applying: kvm/vfio: Accept vfio device file from userspace
error: sha1 information is lacking or useless (Documentation/virt/kvm/devices/vfio.rst).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0005 kvm/vfio: Accept vfio device file from userspace
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


