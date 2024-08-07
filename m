Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9B6949EAD
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 05:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C135510E41E;
	Wed,  7 Aug 2024 03:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A3710E41B;
 Wed,  7 Aug 2024 03:52:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_cdc4ad36a8=3A_kernel=5FBU?=
 =?utf-8?q?G=5Fat=5Finclude/linux/page-flags=2Eh?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Wilcox" <willy@infradead.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 07 Aug 2024 03:52:03 -0000
Message-ID: <172300272365.545003.478527243141208960@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <202408062249.2194d51b-lkp@intel.com>
In-Reply-To: <202408062249.2194d51b-lkp@intel.com>
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

Series: cdc4ad36a8: kernel_BUG_at_include/linux/page-flags.h
URL   : https://patchwork.freedesktop.org/series/136961/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/136961/revisions/1/mbox/ not applied
Applying: cdc4ad36a8: kernel_BUG_at_include/linux/page-flags.h
Using index info to reconstruct a base tree...
M	mm/shmem.c
Falling back to patching base and 3-way merge...
Auto-merging mm/shmem.c
CONFLICT (content): Merge conflict in mm/shmem.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 cdc4ad36a8: kernel_BUG_at_include/linux/page-flags.h
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


