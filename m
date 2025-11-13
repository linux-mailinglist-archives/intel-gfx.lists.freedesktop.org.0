Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32449C59966
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 20:00:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9A9410E1F2;
	Thu, 13 Nov 2025 19:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10055242dc62 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2912110E1F2;
 Thu, 13 Nov 2025 19:00:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_PCI=3A_BAR_resizing_fix/r?=
 =?utf-8?q?ework_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Nov 2025 19:00:13 -0000
Message-ID: <176306041316.52219.16075810846904351154@10055242dc62>
X-Patchwork-Hint: ignore
References: <20251113162628.5946-1-ilpo.jarvinen@linux.intel.com>
In-Reply-To: <20251113162628.5946-1-ilpo.jarvinen@linux.intel.com>
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

Series: PCI: BAR resizing fix/rework (rev2)
URL   : https://patchwork.freedesktop.org/series/156675/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/156675/revisions/2/mbox/ not applied
Applying: PCI: Prevent resource tree corruption when BAR resize fails
Applying: PCI/IOV: Adjust ->barsz[] when changing BAR size
Applying: PCI: Change pci_dev variable from 'bridge' to 'dev'
Applying: PCI: Try BAR resize even when no window was released
Applying: PCI: Freeing saved list does not require holding pci_bus_sem
Applying: PCI: Fix restoring BARs on BAR resize rollback path
error: sha1 information is lacking or useless (drivers/pci/setup-bus.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0006 PCI: Fix restoring BARs on BAR resize rollback path
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


