Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C11F5421C85
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 04:17:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E78F26EA5C;
	Tue,  5 Oct 2021 02:17:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 802E06EA5C;
 Tue,  5 Oct 2021 02:17:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 776E5A47DB;
 Tue,  5 Oct 2021 02:17:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zeng, Oak" <oak.zeng@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Oct 2021 02:17:00 -0000
Message-ID: <163340022045.19281.7963760925662316635@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210927114114.152310-1-matthew.auld@intel.com>
In-Reply-To: <20210927114114.152310-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv5=2C01/13=5D_drm/ttm=3A_stop_calling_tt?=
 =?utf-8?q?=5Fswapin_in_vm=5Faccess_=28rev2=29?=
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

Series: series starting with [v5,01/13] drm/ttm: stop calling tt_swapin in vm_access (rev2)
URL   : https://patchwork.freedesktop.org/series/95093/
State : failure

== Summary ==

Applying: drm/ttm: stop calling tt_swapin in vm_access
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/ttm/ttm_bo_vm.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/ttm/ttm_bo_vm.c
No changes -- Patch already applied.
Applying: drm/ttm: stop setting page->index for the ttm_tt
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/ttm/ttm_bo_vm.c
M	drivers/gpu/drm/ttm/ttm_tt.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/ttm/ttm_tt.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/ttm/ttm_tt.c
Auto-merging drivers/gpu/drm/ttm/ttm_bo_vm.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/ttm: stop setting page->index for the ttm_tt
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


