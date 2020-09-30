Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2669B27F301
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 22:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8661E6E828;
	Wed, 30 Sep 2020 20:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B339A6E821;
 Wed, 30 Sep 2020 20:10:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9DFDA7525;
 Wed, 30 Sep 2020 20:10:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Wed, 30 Sep 2020 20:10:31 -0000
Message-ID: <160149663166.17418.9840901943895753062@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200930175133.1252382-1-hch@lst.de>
In-Reply-To: <20200930175133.1252382-1-hch@lst.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B01/10=5D_mm=3A_update_the_documentation_?=
 =?utf-8?q?for_vfree?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/10] mm: update the documentation for vfree
URL   : https://patchwork.freedesktop.org/series/82271/
State : failure

== Summary ==

Applying: mm: update the documentation for vfree
Applying: mm: add a VM_MAP_PUT_PAGES flag for vmap
Applying: mm: add a vmap_pfn function
Applying: mm: allow a NULL fn callback in apply_to_page_range
Applying: zsmalloc: switch from alloc_vm_area to get_vm_area
Applying: drm/i915: use vmap in shmem_pin_map
Applying: drm/i915: use vmap in i915_gem_object_map
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_pages.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_pages.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_pages.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 drm/i915: use vmap in i915_gem_object_map
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
