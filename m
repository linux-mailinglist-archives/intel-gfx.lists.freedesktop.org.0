Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1636886BEAF
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 03:03:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B95F010E20C;
	Thu, 29 Feb 2024 02:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF93910E20C;
 Thu, 29 Feb 2024 02:03:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_series_starting_with_=5Bt?=
 =?utf-8?q?opic/core-for-CI=2C1/3=5D_mei=3A_me=3A_add_arrow_lake_point_S_DID?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Feb 2024 02:03:25 -0000
Message-ID: <170917220591.375728.15838085474043779031@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240228153718.1929978-1-jonathan.cavitt@intel.com>
In-Reply-To: <20240228153718.1929978-1-jonathan.cavitt@intel.com>
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

Series: series starting with [topic/core-for-CI,1/3] mei: me: add arrow lake point S DID
URL   : https://patchwork.freedesktop.org/series/130513/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/130513/revisions/1/mbox/ not applied
Applying: mei: me: add arrow lake point S DID
Using index info to reconstruct a base tree...
M	drivers/misc/mei/hw-me-regs.h
M	drivers/misc/mei/pci-me.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/misc/mei/pci-me.c
CONFLICT (content): Merge conflict in drivers/misc/mei/pci-me.c
Auto-merging drivers/misc/mei/hw-me-regs.h
CONFLICT (content): Merge conflict in drivers/misc/mei/hw-me-regs.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 mei: me: add arrow lake point S DID
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


