Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8486549E6AB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 16:52:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D119A10EEC8;
	Thu, 27 Jan 2022 15:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB27910EEE4;
 Thu, 27 Jan 2022 15:52:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6967A73C9;
 Thu, 27 Jan 2022 15:52:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin" <arunpravin.paneerselvam@amd.com>
Date: Thu, 27 Jan 2022 15:52:03 -0000
Message-ID: <164329872378.23659.8774231659790095027@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220127141107.173692-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220127141107.173692-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv11=2C1/5=5D_drm=3A_improve_drm=5Fb?=
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

Series: series starting with [v11,1/5] drm: improve drm_buddy_alloc function
URL   : https://patchwork.freedesktop.org/series/99430/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
00470383ca08 drm: improve drm_buddy_alloc function
-:386: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#386: FILE: drivers/gpu/drm/drm_buddy.c:585:
+		BUG_ON(order > mm->max_order);

-:387: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#387: FILE: drivers/gpu/drm/drm_buddy.c:586:
+		BUG_ON(order < min_order);

total: 0 errors, 2 warnings, 0 checks, 506 lines checked
50185f5f7e57 drm: implement top-down allocation method
957142d57613 drm: implement a method to free unused pages
f26779496cc3 drm/amdgpu: move vram inline functions into a header
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
a629aca723cd drm/amdgpu: add drm buddy support to amdgpu
-:60: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#60: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h:41:
+	uint32_t		mem_type;

-:417: CHECK:BRACES: Unbalanced braces around else statement
#417: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:387:
+	else {

-:450: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#450: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:416:
+	BUG_ON(min_page_size < mm->chunk_size);

total: 0 errors, 1 warnings, 2 checks, 594 lines checked


