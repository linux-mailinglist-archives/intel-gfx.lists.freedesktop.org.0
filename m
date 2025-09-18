Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E733EB469EA
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Sep 2025 09:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2250110E22E;
	Sat,  6 Sep 2025 07:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58B2810E0AC;
 Sat,  6 Sep 2025 07:25:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBtbTogcmVtb3ZlIG50aF9wYWdl?=
 =?utf-8?b?KCkgKHJldjMp?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "David Hildenbrand" <david@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 06 Sep 2025 07:25:03 -0000
Message-ID: <175714350335.309236.16692653289198247332@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250901150359.867252-1-david@redhat.com>
In-Reply-To: <20250901150359.867252-1-david@redhat.com>
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

Series: mm: remove nth_page() (rev3)
URL   : https://patchwork.freedesktop.org/series/153803/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/153803/revisions/3/mbox/ not applied
Applying: mm: stop making SPARSEMEM_VMEMMAP user-selectable
Applying: arm64: Kconfig: drop superfluous "select SPARSEMEM_VMEMMAP"
Applying: s390/Kconfig: drop superfluous "select SPARSEMEM_VMEMMAP"
Applying: x86/Kconfig: drop superfluous "select SPARSEMEM_VMEMMAP"
Applying: wireguard: selftests: remove CONFIG_SPARSEMEM_VMEMMAP=y from qemu kernel config
Applying: mm/page_alloc: reject unreasonable folio/compound page sizes in alloc_contig_range_noprof()
Applying: mm/memremap: reject unreasonable folio/compound page sizes in memremap_pages()
Applying: mm/hugetlb: check for unreasonable folio sizes when registering hstate
Applying: mm/mm_init: make memmap_init_compound() look more like prep_compound_page()
Applying: mm: sanity-check maximum folio size in folio_set_order()
Applying: mm: limit folio/compound page sizes in problematic kernel configs
Applying: mm: simplify folio_page() and folio_page_idx()
Applying: mm/hugetlb: cleanup hugetlb_folio_init_tail_vmemmap()
Applying: mm/mm/percpu-km: drop nth_page() usage within single allocation
Applying: fs: hugetlbfs: remove nth_page() usage within folio in adjust_range_hwpoison()
Applying: fs: hugetlbfs: cleanup folio in adjust_range_hwpoison()
Applying: mm/pagewalk: drop nth_page() usage within folio in folio_walk_start()
Applying: mm/gup: drop nth_page() usage within folio when recording subpages
Applying: mm/gup: remove record_subpages()
error: sha1 information is lacking or useless (mm/gup.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0019 mm/gup: remove record_subpages()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


