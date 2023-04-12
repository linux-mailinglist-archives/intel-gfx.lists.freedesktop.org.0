Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0496DE8EB
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 03:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D027310E6E0;
	Wed, 12 Apr 2023 01:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87AE610E6D7;
 Wed, 12 Apr 2023 01:32:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81C76AADD2;
 Wed, 12 Apr 2023 01:32:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "David E. Box" <david.e.box@linux.intel.com>
Date: Wed, 12 Apr 2023 01:32:26 -0000
Message-ID: <168126314652.10847.8991419644627040102@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230411213323.1362300-1-david.e.box@linux.intel.com>
In-Reply-To: <20230411213323.1362300-1-david.e.box@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBQ?=
 =?utf-8?q?CI=3A_Move_VMD_ASPM/LTR_fix_to_PCI_quirk?=
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

Series: PCI: Move VMD ASPM/LTR fix to PCI quirk
URL   : https://patchwork.freedesktop.org/series/116343/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/116343/revisions/1/mbox/ not applied
Applying: PCI: Move VMD ASPM/LTR fix to PCI quirk
Using index info to reconstruct a base tree...
M	drivers/pci/controller/vmd.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/pci/controller/vmd.c
CONFLICT (content): Merge conflict in drivers/pci/controller/vmd.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 PCI: Move VMD ASPM/LTR fix to PCI quirk
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


