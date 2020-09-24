Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE35F2774E7
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 17:09:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543A26E483;
	Thu, 24 Sep 2020 15:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BEF76E1F8;
 Thu, 24 Sep 2020 15:09:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 219E3A882F;
 Thu, 24 Sep 2020 15:09:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Thu, 24 Sep 2020 15:09:57 -0000
Message-ID: <160096019710.24491.3195517055215554274@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200924135853.875294-1-hch@lst.de>
In-Reply-To: <20200924135853.875294-1-hch@lst.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/11=5D_mm=3A_update_the_documenta?=
 =?utf-8?q?tion_for_vfree?=
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

Series: series starting with [01/11] mm: update the documentation for vfree
URL   : https://patchwork.freedesktop.org/series/82063/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5e88ddacdd34 mm: update the documentation for vfree
90f3c1ba13d1 mm: add a VM_MAP_PUT_PAGES flag for vmap
d41a24c9aa63 mm: add a vmap_pfn function
-:78: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#78: FILE: mm/vmalloc.c:2448:
+	area = get_vm_area_caller(count * PAGE_SIZE, VM_IOREMAP,
+			__builtin_return_address(0));

-:82: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#82: FILE: mm/vmalloc.c:2452:
+	if (apply_to_page_range(&init_mm, (unsigned long)area->addr,
+			count * PAGE_SIZE, vmap_pfn_apply, &data)) {

total: 0 errors, 0 warnings, 2 checks, 67 lines checked
5a2e6e88ce76 mm: allow a NULL fn callback in apply_to_page_range
140abd5e7d29 zsmalloc: switch from alloc_vm_area to get_vm_area
-:8: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match 
#8: 
Co-developed-by: Minchan Kim <minchan@kernel.org>
Signed-off-by: Christoph Hellwig <hch@lst.de>
total: 0 errors, 1 warnings, 0 checks, 18 lines checked
56b3f4b2f183 drm/i915: use vmap in shmem_pin_map
a037e6a84cf4 drm/i915: stop using kmap in i915_gem_object_map
1b6df0a418db drm/i915: use vmap in i915_gem_object_map
-:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#48: FILE: drivers/gpu/drm/i915/gem/i915_gem_pages.c:237:
+static void *i915_gem_object_map_page(struct drm_i915_gem_object *obj,
+		enum i915_map_type type)

-:146: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#146: FILE: drivers/gpu/drm/i915/gem/i915_gem_pages.c:293:
+static void *i915_gem_object_map_pfn(struct drm_i915_gem_object *obj,
+		enum i915_map_type type)

total: 0 errors, 0 warnings, 2 checks, 166 lines checked
cad740b44a07 xen/xenbus: use apply_to_page_range directly in xenbus_map_ring_pv
15518d083ba6 x86/xen: open code alloc_vm_area in arch_gnttab_valloc
-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: arch/x86/xen/grant-table.c:111:
+	if (apply_to_page_range(&init_mm, (unsigned long)area->area->addr,
+			PAGE_SIZE * nr_frames, gnttab_apply, area))

total: 0 errors, 0 warnings, 1 checks, 45 lines checked
18c3303e9cc0 mm: remove alloc_vm_area


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
