Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE77973927F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 00:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC3110E11E;
	Wed, 21 Jun 2023 22:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C454710E063;
 Wed, 21 Jun 2023 22:28:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C098DA0093;
 Wed, 21 Jun 2023 22:28:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Wed, 21 Jun 2023 22:28:47 -0000
Message-ID: <168738652778.7800.8558086727058445447@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230621164557.3510324-1-willy@infradead.org>
In-Reply-To: <20230621164557.3510324-1-willy@infradead.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?emove_pagevecs?=
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

Series: Remove pagevecs
URL   : https://patchwork.freedesktop.org/series/119702/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/119702/revisions/1/mbox/ not applied
Applying: afs: Convert pagevec to folio_batch in afs_extend_writeback()
Applying: mm: Add __folio_batch_release()
Applying: scatterlist: Add sg_set_folio()
Applying: i915: Convert shmem_sg_free_table() to use a folio_batch
Applying: drm: Convert drm_gem_put_pages() to use a folio_batch
Applying: mm: Remove check_move_unevictable_pages()
Using index info to reconstruct a base tree...
M	include/linux/swap.h
M	mm/vmscan.c
Falling back to patching base and 3-way merge...
Auto-merging mm/vmscan.c
Auto-merging include/linux/swap.h
Applying: pagevec: Rename fbatch_count()
Applying: i915: Convert i915_gpu_error to use a folio_batch
Applying: net: Convert sunrpc from pagevec to folio_batch
Applying: mm: Remove struct pagevec
Applying: mm: Rename invalidate_mapping_pagevec to mapping_try_invalidate
Applying: mm: Remove references to pagevec
error: sha1 information is lacking or useless (mm/memory.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0012 mm: Remove references to pagevec
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


