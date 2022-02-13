Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7F54B3A71
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Feb 2022 10:02:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCFB710F3E7;
	Sun, 13 Feb 2022 09:02:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 814DD10F3E3;
 Sun, 13 Feb 2022 09:02:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CE2CA66C9;
 Sun, 13 Feb 2022 09:02:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin" <arunpravin.paneerselvam@amd.com>
Date: Sun, 13 Feb 2022 09:02:40 -0000
Message-ID: <164474296048.19581.6604174663715319457@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220213085217.2705-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220213085217.2705-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv12=2C1/5=5D_drm=3A_improve_drm=5Fb?=
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

Series: series starting with [v12,1/5] drm: improve drm_buddy_alloc function
URL   : https://patchwork.freedesktop.org/series/100069/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
07cd035b740d drm: improve drm_buddy_alloc function
-:368: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#368: FILE: drivers/gpu/drm/drm_buddy.c:562:
+		BUG_ON(order > mm->max_order);

-:369: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#369: FILE: drivers/gpu/drm/drm_buddy.c:563:
+		BUG_ON(order < min_order);

total: 0 errors, 2 warnings, 0 checks, 465 lines checked
ccf915b04de0 drm: implement top-down allocation method
75b92ac23ffd drm: implement a method to free unused pages
a46e724508af drm/amdgpu: move vram inline functions into a header
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
c01dc68ea696 drm/amdgpu: add drm buddy support to amdgpu
-:63: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#63: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h:41:
+	uint32_t		mem_type;

-:419: CHECK:BRACES: Unbalanced braces around else statement
#419: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:386:
+	else {

-:448: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#448: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:411:
+	BUG_ON(min_page_size < mm->chunk_size);

total: 0 errors, 1 warnings, 2 checks, 589 lines checked


