Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2283AB3CCD
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 17:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3489910E448;
	Mon, 12 May 2025 15:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C1010E447;
 Mon, 12 May 2025 15:57:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_mm=3A_rewrite_pfnmap_trac?=
 =?utf-8?q?king_and_remove_VM=5FPAT_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "David Hildenbrand" <david@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 12 May 2025 15:57:16 -0000
Message-ID: <174706543677.69697.12363007596591265394@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250512123424.637989-1-david@redhat.com>
In-Reply-To: <20250512123424.637989-1-david@redhat.com>
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

Series: mm: rewrite pfnmap tracking and remove VM_PAT (rev3)
URL   : https://patchwork.freedesktop.org/series/148249/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/148249/revisions/3/mbox/ not applied
Applying: x86/mm/pat: factor out setting cachemode into pgprot_set_cachemode()
Applying: mm: convert track_pfn_insert() to pfnmap_setup_cachemode*()
Applying: mm: introduce pfnmap_track() and pfnmap_untrack() and use them for memremap
Applying: mm: convert VM_PFNMAP tracking to pfnmap_track() + pfnmap_untrack()
error: sha1 information is lacking or useless (mm/memory.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0004 mm: convert VM_PFNMAP tracking to pfnmap_track() + pfnmap_untrack()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


