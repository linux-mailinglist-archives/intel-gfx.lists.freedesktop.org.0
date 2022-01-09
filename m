Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 152E94889E9
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Jan 2022 15:43:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D826210E1E7;
	Sun,  9 Jan 2022 14:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E78510E1DA;
 Sun,  9 Jan 2022 14:43:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B067A8836;
 Sun,  9 Jan 2022 14:43:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin" <arunpravin.paneerselvam@amd.com>
Date: Sun, 09 Jan 2022 14:43:54 -0000
Message-ID: <164173943420.4447.3401337905466288273@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220109141951.134432-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220109141951.134432-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv7=2C1/6=5D_drm=3A_move_the_buddy_a?=
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

Series: series starting with [v7,1/6] drm: move the buddy allocator from i915 into common drm
URL   : https://patchwork.freedesktop.org/series/98641/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
da013685b6f1 drm: move the buddy allocator from i915 into common drm
-:81: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#81: 
new file mode 100644

-:106: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#106: FILE: drivers/gpu/drm/drm_buddy.c:21:
+	BUG_ON(order > DRM_BUDDY_MAX_ORDER);

-:116: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#116: FILE: drivers/gpu/drm/drm_buddy.c:31:
+	BUG_ON(block->header & DRM_BUDDY_HEADER_UNUSED);

-:185: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#185: FILE: drivers/gpu/drm/drm_buddy.c:100:
+	BUG_ON(mm->max_order > DRM_BUDDY_MAX_ORDER);

-:225: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#225: FILE: drivers/gpu/drm/drm_buddy.c:140:
+		BUG_ON(i > mm->max_order);

-:226: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#226: FILE: drivers/gpu/drm/drm_buddy.c:141:
+		BUG_ON(drm_buddy_block_size(mm, root) < chunk_size);

-:276: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#276: FILE: drivers/gpu/drm/drm_buddy.c:191:
+	BUG_ON(!drm_buddy_block_is_free(block));

-:277: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#277: FILE: drivers/gpu/drm/drm_buddy.c:192:
+	BUG_ON(!drm_buddy_block_order(block));

-:284: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#284: FILE: drivers/gpu/drm/drm_buddy.c:199:
+	block->right = drm_block_alloc(mm, block, block_order,
+					offset + (mm->chunk_size << block_order));

-:346: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#346: FILE: drivers/gpu/drm/drm_buddy.c:261:
+	BUG_ON(!drm_buddy_block_is_allocated(block));

-:403: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#403: FILE: drivers/gpu/drm/drm_buddy.c:318:
+	BUG_ON(!drm_buddy_block_is_free(block));

-:585: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#585: FILE: drivers/gpu/drm/drm_buddy.c:500:
+			BUG_ON(!drm_buddy_block_is_free(block));

total: 0 errors, 11 warnings, 1 checks, 944 lines checked
f2a20e1dc926 drm: improve drm_buddy_alloc function
-:379: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#379: FILE: drivers/gpu/drm/drm_buddy.c:580:
+		BUG_ON(order > mm->max_order);

-:380: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#380: FILE: drivers/gpu/drm/drm_buddy.c:581:
+		BUG_ON(order < min_order);

-:507: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#507: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:88:
+	err = drm_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT,
+				(u64)lpfn << PAGE_SHIFT,

-:530: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#530: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:268:
+	ret = drm_buddy_alloc_blocks(mm, start,
+				start + size,

total: 0 errors, 2 warnings, 2 checks, 534 lines checked
d80a1c8767fe drm: implement top-down allocation method
847e2fae2fa6 drm: implement a method to free unused pages
-:132: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#132: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:105:
+		drm_buddy_block_trim(mm,
+				original_size,

total: 0 errors, 0 warnings, 1 checks, 97 lines checked
84642da93b74 drm/amdgpu: move vram inline functions into a header
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
84592517e46b drm/amdgpu: add drm buddy support to amdgpu
-:51: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#51: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h:41:
+	uint32_t		mem_type;

-:194: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#194: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h:45:
+	struct mutex lock;

-:272: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#272: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:254:
+		if (drm_buddy_alloc_blocks(mm, rsv->start, rsv->start + rsv->size,
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
+		r = drm_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT,
+					(u64)lpfn << PAGE_SHIFT,

-:506: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#506: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:466:
+		drm_buddy_block_trim(mm,
+				actual_size,

total: 0 errors, 1 warnings, 8 checks, 590 lines checked


