Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D6C47F96B
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Dec 2021 23:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2F210E220;
	Sun, 26 Dec 2021 22:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7860710E1E3;
 Sun, 26 Dec 2021 22:42:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 745E1AA0EB;
 Sun, 26 Dec 2021 22:42:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin" <arunpravin.paneerselvam@amd.com>
Date: Sun, 26 Dec 2021 22:42:38 -0000
Message-ID: <164055855847.9931.6603071291372967619@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211226222425.544863-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20211226222425.544863-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv6=2C1/6=5D_drm=3A_move_the_buddy_a?=
 =?utf-8?q?llocator_from_i915_into_common_drm?=
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

Series: series starting with [v6,1/6] drm: move the buddy allocator from i915 into common drm
URL   : https://patchwork.freedesktop.org/series/98373/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8451ae9df5c2 drm: move the buddy allocator from i915 into common drm
-:72: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#72: 
new file mode 100644

-:95: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#95: FILE: drivers/gpu/drm/drm_buddy.c:19:
+	BUG_ON(order > DRM_BUDDY_MAX_ORDER);

-:105: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#105: FILE: drivers/gpu/drm/drm_buddy.c:29:
+	BUG_ON(block->header & DRM_BUDDY_HEADER_UNUSED);

-:174: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#174: FILE: drivers/gpu/drm/drm_buddy.c:98:
+	BUG_ON(mm->max_order > DRM_BUDDY_MAX_ORDER);

-:218: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#218: FILE: drivers/gpu/drm/drm_buddy.c:142:
+		BUG_ON(i > mm->max_order);

-:219: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#219: FILE: drivers/gpu/drm/drm_buddy.c:143:
+		BUG_ON(drm_buddy_block_size(mm, root) < chunk_size);

-:272: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#272: FILE: drivers/gpu/drm/drm_buddy.c:196:
+	BUG_ON(!drm_buddy_block_is_free(block));

-:273: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#273: FILE: drivers/gpu/drm/drm_buddy.c:197:
+	BUG_ON(!drm_buddy_block_order(block));

-:280: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#280: FILE: drivers/gpu/drm/drm_buddy.c:204:
+	block->right = drm_block_alloc(mm, block, block_order,
+					offset + (mm->chunk_size << block_order));

-:336: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#336: FILE: drivers/gpu/drm/drm_buddy.c:260:
+	BUG_ON(!drm_buddy_block_is_allocated(block));

-:392: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#392: FILE: drivers/gpu/drm/drm_buddy.c:316:
+	BUG_ON(!drm_buddy_block_is_free(block));

-:574: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#574: FILE: drivers/gpu/drm/drm_buddy.c:498:
+			BUG_ON(!drm_buddy_block_is_free(block));

total: 0 errors, 11 warnings, 1 checks, 926 lines checked
66ec8f119d87 drm: improve drm_buddy_alloc function
-:375: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#375: FILE: drivers/gpu/drm/drm_buddy.c:578:
+		BUG_ON(order > mm->max_order);

-:376: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#376: FILE: drivers/gpu/drm/drm_buddy.c:579:
+		BUG_ON(order < min_order);

-:503: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#503: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:88:
+	err = drm_buddy_alloc(mm, (u64)place->fpfn << PAGE_SHIFT,
+			(u64)place->lpfn << PAGE_SHIFT,

-:526: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#526: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:268:
+	ret = drm_buddy_alloc(mm, start,
+			start + size,

total: 0 errors, 2 warnings, 2 checks, 534 lines checked
5354ba0352bb drm: implement top-down allocation method
3b4e9eb11c66 drm: implement a method to free unused pages
-:120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#120: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:103:
+		drm_buddy_block_trim(mm,
+				(u64)n_pages << PAGE_SHIFT,

total: 0 errors, 0 warnings, 1 checks, 91 lines checked
e5572f040d5f drm/amdgpu: move vram inline functions into a header
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
1a7d08a1c14c drm/amdgpu: add drm buddy support to amdgpu
-:51: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#51: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h:41:
+	uint32_t		mem_type;

-:194: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#194: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h:45:
+	struct mutex lock;

-:272: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#272: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:254:
+		if (drm_buddy_alloc(mm, rsv->start, rsv->start + rsv->size,
+					rsv->size, mm->chunk_size, &rsv->block,

-:330: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rsv->start <= start'
#330: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:328:
+		if ((rsv->start <= start) &&
+		    (start < (rsv->start + rsv->size))) {

-:340: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rsv->start <= start'
#340: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:336:
+		if ((rsv->start <= start) &&
+		    (start < (rsv->start + rsv->size))) {

-:407: CHECK:BRACES: Unbalanced braces around else statement
#407: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:391:
+	else {

-:440: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#440: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:420:
+	BUG_ON(min_page_size < mm->chunk_size);

-:483: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#483: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:444:
+		r = drm_buddy_alloc(mm, (u64)place->fpfn << PAGE_SHIFT,
+				(u64)lpfn << PAGE_SHIFT,

-:506: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#506: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:466:
+		drm_buddy_block_trim(mm,
+				actual_size,

total: 0 errors, 1 warnings, 8 checks, 590 lines checked


