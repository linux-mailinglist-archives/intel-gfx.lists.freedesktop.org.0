Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C4646F995
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 04:22:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CAF110E233;
	Fri, 10 Dec 2021 03:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F77710E230;
 Fri, 10 Dec 2021 03:22:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08E5FA363D;
 Fri, 10 Dec 2021 03:22:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Paneer Selvam, Arunpravin" <arunpravin.paneerselvam@amd.com>
Date: Fri, 10 Dec 2021 03:22:14 -0000
Message-ID: <163910653403.3443.1542249955969130059@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211201163938.133226-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20211201163938.133226-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv4=2C1/6=5D_drm=3A_move_the_buddy_alloca?=
 =?utf-8?q?tor_from_i915_into_common_drm_=28rev3=29?=
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

Series: series starting with [v4,1/6] drm: move the buddy allocator from i915 into common drm (rev3)
URL   : https://patchwork.freedesktop.org/series/97476/
State : failure

== Summary ==

Applying: drm: move the buddy allocator from i915 into common drm
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/Kconfig
M	drivers/gpu/drm/Makefile
M	drivers/gpu/drm/i915/Makefile
M	drivers/gpu/drm/i915/i915_module.c
M	drivers/gpu/drm/i915/i915_scatterlist.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_scatterlist.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_scatterlist.c
Auto-merging drivers/gpu/drm/i915/i915_module.c
Removing drivers/gpu/drm/i915/i915_buddy.h
Removing drivers/gpu/drm/i915/i915_buddy.c
Auto-merging drivers/gpu/drm/i915/Makefile
Auto-merging drivers/gpu/drm/Makefile
CONFLICT (content): Merge conflict in drivers/gpu/drm/Makefile
Auto-merging drivers/gpu/drm/Kconfig
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm: move the buddy allocator from i915 into common drm
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


