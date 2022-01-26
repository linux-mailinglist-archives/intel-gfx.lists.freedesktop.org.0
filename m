Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3261749D65B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 00:46:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547AA10EDEE;
	Wed, 26 Jan 2022 23:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C88110EDEB;
 Wed, 26 Jan 2022 23:46:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 56F42AA0ED;
 Wed, 26 Jan 2022 23:46:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin" <arunpravin.paneerselvam@amd.com>
Date: Wed, 26 Jan 2022 23:46:54 -0000
Message-ID: <164324081435.25402.15587584470269406319@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220126220611.3663-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220126220611.3663-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv10=2C1/5=5D_drm=3A_improve_drm=5Fb?=
 =?utf-8?q?uddy=5Falloc_function?=
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

Series: series starting with [v10,1/5] drm: improve drm_buddy_alloc function
URL   : https://patchwork.freedesktop.org/series/99382/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c9a375384fb3 drm: improve drm_buddy_alloc function
-:383: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#383: FILE: drivers/gpu/drm/drm_buddy.c:585:
+		BUG_ON(order > mm->max_order);

-:384: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#384: FILE: drivers/gpu/drm/drm_buddy.c:586:
+		BUG_ON(order < min_order);

-:510: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#510: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:88:
+	err = drm_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT,
+				    (u64)lpfn << PAGE_SHIFT,

total: 0 errors, 2 warnings, 1 checks, 506 lines checked
d007f812a25a drm: implement top-down allocation method
d01faa9bdacb drm: implement a method to free unused pages
69c19364e1f2 drm/amdgpu: move vram inline functions into a header
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
9ce76c7fdbd5 drm/amdgpu: add drm buddy support to amdgpu
-:57: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#57: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h:41:
+	uint32_t		mem_type;

-:338: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#338: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:325:
+		if (rsv->start <= start &&
+		   (start < (rsv->start + rsv->size))) {

-:348: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#348: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:333:
+		if (rsv->start <= start &&
+		   (start < (rsv->start + rsv->size))) {

-:414: CHECK:BRACES: Unbalanced braces around else statement
#414: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:387:
+	else {

-:447: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#447: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:416:
+	BUG_ON(min_page_size < mm->chunk_size);

-:490: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#490: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:440:
+		r = drm_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT,
+					  (u64)lpfn << PAGE_SHIFT,

total: 0 errors, 1 warnings, 5 checks, 594 lines checked


