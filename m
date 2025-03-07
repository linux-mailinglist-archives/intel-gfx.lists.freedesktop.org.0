Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 928C2A56C6C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 16:45:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2146C10E18A;
	Fri,  7 Mar 2025 15:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD78910E0F0;
 Fri,  7 Mar 2025 15:45:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Remove_aops-=3Ewritepage?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Mar 2025 15:45:27 -0000
Message-ID: <174136232777.2993.16272173862545754425@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250307135414.2987755-1-willy@infradead.org>
In-Reply-To: <20250307135414.2987755-1-willy@infradead.org>
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

Series: Remove aops->writepage
URL   : https://patchwork.freedesktop.org/series/145995/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/145995/revisions/1/mbox/ not applied
Applying: f2fs: Remove check for ->writepage
Applying: f2fs: Remove f2fs_write_data_page()
Applying: f2fs: Remove f2fs_write_meta_page()
Applying: f2fs: Remove f2fs_write_node_page()
Applying: vboxsf: Convert to writepages
Applying: migrate: Remove call to ->writepage
Applying: writeback: Remove writeback_use_writepage()
Applying: shmem: Add shmem_writeout()
Applying: i915: Use writeback_iter()
Applying: mm: Remove swap_writepage() and shmem_writepage()
error: sha1 information is lacking or useless (mm/shmem.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0010 mm: Remove swap_writepage() and shmem_writepage()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


