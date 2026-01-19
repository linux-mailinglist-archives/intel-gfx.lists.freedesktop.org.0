Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48550D3AFA4
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 16:52:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB1A10E4A9;
	Mon, 19 Jan 2026 15:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D6010E4A5;
 Mon, 19 Jan 2026 15:52:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_mm=3A_add_bitmap_VMA_flag?=
 =?utf-8?q?_helpers_and_convert_all_mmap=5Fprepare_to_use_them?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lorenzo Stoakes" <lorenzo.stoakes@oracle.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Jan 2026 15:52:46 -0000
Message-ID: <176883796607.168791.13535640100959354635@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <cover.1768834061.git.lorenzo.stoakes@oracle.com>
In-Reply-To: <cover.1768834061.git.lorenzo.stoakes@oracle.com>
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

Series: mm: add bitmap VMA flag helpers and convert all mmap_prepare to use them
URL   : https://patchwork.freedesktop.org/series/160306/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/160306/revisions/1/mbox/ not applied
Applying: mm: rename vma_flag_test/set_atomic() to vma_test/set_atomic_flag()
Applying: mm: add mk_vma_flags() bitmap flag macro helper
Applying: tools: bitmap: add missing bitmap_[subset(), andnot()]
Applying: mm: add basic VMA flag operation helper functions
Applying: mm: update hugetlbfs to use VMA flags on mmap_prepare
Applying: mm: update secretmem to use VMA flags on mmap_prepare
Applying: mm: update shmem_[kernel]_file_*() functions to use vma_flags_t
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_gem.c
M	drivers/gpu/drm/i915/gem/i915_gem_shmem.c
M	drivers/gpu/drm/ttm/ttm_tt.c
M	mm/shmem.c
Falling back to patching base and 3-way merge...
Auto-merging mm/shmem.c
Auto-merging drivers/gpu/drm/ttm/ttm_tt.c
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_shmem.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_shmem.c
Auto-merging drivers/gpu/drm/drm_gem.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/drm_gem.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 mm: update shmem_[kernel]_file_*() functions to use vma_flags_t
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


