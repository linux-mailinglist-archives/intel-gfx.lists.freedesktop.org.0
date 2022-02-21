Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF14D4BEB4F
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 20:41:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C44D10E314;
	Mon, 21 Feb 2022 19:41:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 30C8410E314;
 Mon, 21 Feb 2022 19:41:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CC47AA0EB;
 Mon, 21 Feb 2022 19:41:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin" <arunpravin.paneerselvam@amd.com>
Date: Mon, 21 Feb 2022 19:41:51 -0000
Message-ID: <164547251114.21416.6675719925861121075@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220221164552.2434-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220221164552.2434-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv13=2C1/5=5D_drm=3A_improve_drm=5Fb?=
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

Series: series starting with [v13,1/5] drm: improve drm_buddy_alloc function
URL   : https://patchwork.freedesktop.org/series/100509/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1ae185a2649e drm: improve drm_buddy_alloc function
-:372: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#372: FILE: drivers/gpu/drm/drm_buddy.c:562:
+		BUG_ON(order > mm->max_order);

-:373: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#373: FILE: drivers/gpu/drm/drm_buddy.c:563:
+		BUG_ON(order < min_order);

total: 0 errors, 2 warnings, 0 checks, 483 lines checked
cf3ca8204216 drm: implement top-down allocation method
520affca2185 drm: implement a method to free unused pages
c101b2692614 drm/amdgpu: move vram inline functions into a header
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
824dc64040ae drm/amdgpu: add drm buddy support to amdgpu
-:67: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#67: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h:41:
+	uint32_t		mem_type;

-:426: CHECK:BRACES: Unbalanced braces around else statement
#426: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:383:
+	else {

-:459: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#459: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c:416:
+	BUG_ON(min_page_size < mm->chunk_size);

total: 0 errors, 1 warnings, 2 checks, 594 lines checked


