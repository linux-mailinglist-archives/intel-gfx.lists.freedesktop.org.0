Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B458394637
	for <lists+intel-gfx@lfdr.de>; Fri, 28 May 2021 19:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C8D96E48F;
	Fri, 28 May 2021 17:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8B2736E48F;
 Fri, 28 May 2021 17:10:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82452A47E8;
 Fri, 28 May 2021 17:10:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 28 May 2021 17:10:11 -0000
Message-ID: <162222181150.11843.15032164465099336363@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210528105744.58271-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210528105744.58271-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_LMEM_=28VRAM=29_management_over_to_TTM_=28rev2=29?=
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

Series: Move LMEM (VRAM) management over to TTM (rev2)
URL   : https://patchwork.freedesktop.org/series/90681/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b97007c879b9 drm/i915: Untangle the vma pages_mutex
b5c847f763fa drm/i915: Don't free shared locks while shared
bdd3408f6b52 drm/i915: Fix i915_sg_page_sizes to record dma segments rather than physical pages
35cfd9f48f2a drm/i915/ttm Initialize the ttm device and memory managers
-:480: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#480: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1531 lines checked
0b80f3c1aecc drm/i915/ttm: Embed a ttm buffer object in the i915 gem object
c4422c1c603d drm/ttm: Add a generic TTM memcpy move for page-based iomem
-:384: CHECK:ARCH_DEFINES: architecture specific defines should be avoided
#384: FILE: drivers/gpu/drm/ttm/ttm_module.c:56:
+#if defined(__i386__) || defined(__x86_64__)

-:727: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#727: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 840 lines checked
e300aca6e0f4 drm: Add a prefetching memcpy_from_wc
9f85cc08745b drm/ttm: Use drm_memcpy_from_wc for TTM bo moves
4d7f3f30267b drm/ttm: Document and optimize ttm_bo_pipeline_gutting()
00e905bc000d drm/ttm, drm/amdgpu: Allow the driver some control over swapping
2e3134a2e1f1 drm/i915/ttm: Introduce a TTM i915 gem object backend
-:449: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#449: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1042 lines checked
be6751a92bac drm/i915/lmem: Verify checks for lmem residency
b35b40e1c13e drm/i915: Disable mmap ioctl for gen12+
17f4c2659062 drm/vma: Add a driver_private member to vma_node.
9b68632f3c3c drm/i915: Use ttm mmap handling for ttm bo's.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
