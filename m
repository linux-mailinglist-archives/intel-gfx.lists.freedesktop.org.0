Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6AA38CA9A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 18:06:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42D326E197;
	Fri, 21 May 2021 16:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 396EE6E197;
 Fri, 21 May 2021 16:06:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31A37A7DFB;
 Fri, 21 May 2021 16:06:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 21 May 2021 16:06:40 -0000
Message-ID: <162161320017.6034.2639291999878613111@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210521153253.518037-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210521153253.518037-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Move_LMEM_=28VRAM=29_management_over_to_TTM_=28?=
 =?utf-8?q?rev3=29?=
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

Series: drm/i915: Move LMEM (VRAM) management over to TTM (rev3)
URL   : https://patchwork.freedesktop.org/series/90022/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1bf39c8cd594 drm/i915: Untangle the vma pages_mutex
650181499469 drm/i915: Don't free shared locks while shared
e0cd60e6a0d3 drm/i915: Fix i915_sg_page_sizes to record dma segments rather than physical pages
4f895c63cc41 drm/i915/ttm Initialize the ttm device and memory managers
-:480: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#480: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1578 lines checked
fbd2191fd254 drm/i915/ttm: Embed a ttm buffer object in the i915 gem object
67e58a6747b0 drm/ttm: Add a generic TTM memcpy move for page-based iomem
-:383: CHECK:ARCH_DEFINES: architecture specific defines should be avoided
#383: FILE: drivers/gpu/drm/ttm/ttm_module.c:56:
+#if defined(__i386__) || defined(__x86_64__)

-:699: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#699: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 812 lines checked
fa7a4164f770 drm, drm/i915: Move the memcpy_from_wc functionality to core drm
-:54: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#54: 
rename from drivers/gpu/drm/i915/i915_memcpy.c

total: 0 errors, 1 warnings, 0 checks, 410 lines checked
533ef0911275 drm/ttm: Use drm_memcpy_from_wc_dbm for TTM bo moves
655c519cecf1 drm/ttm: Document and optimize ttm_bo_pipeline_gutting()
2f38e8009d75 drm/ttm, drm/amdgpu: Allow the driver some control over swapping
356c346230f1 drm/i915/ttm: Introduce a TTM i915 gem object backend
-:449: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#449: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1024 lines checked
7ced8a9675bb drm/i915/lmem: Verify checks for lmem residency


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
