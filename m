Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC173395A96
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 14:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CEF86E915;
	Mon, 31 May 2021 12:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96C896E918;
 Mon, 31 May 2021 12:31:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8EF26A47E1;
 Mon, 31 May 2021 12:31:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Mon, 31 May 2021 12:31:36 -0000
Message-ID: <162246429656.27951.11352703826792927580@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210531121940.267032-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210531121940.267032-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_LMEM_=28VRAM=29_management_over_to_TTM_=28rev3=29?=
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

Series: Move LMEM (VRAM) management over to TTM (rev3)
URL   : https://patchwork.freedesktop.org/series/90681/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
784db4b4d61c drm/i915: Untangle the vma pages_mutex
57182bbc1668 drm/i915: Don't free shared locks while shared
1a6c10a2a951 drm/i915: Fix i915_sg_page_sizes to record dma segments rather than physical pages
de5421fafbfc drm/i915/ttm Initialize the ttm device and memory managers
-:480: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#480: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1531 lines checked
851f1c6c1b99 drm/i915/ttm: Embed a ttm buffer object in the i915 gem object
6ac29bd06dfe drm/ttm: Add a generic TTM memcpy move for page-based iomem
-:384: CHECK:ARCH_DEFINES: architecture specific defines should be avoided
#384: FILE: drivers/gpu/drm/ttm/ttm_module.c:56:
+#if defined(__i386__) || defined(__x86_64__)

-:727: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#727: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 840 lines checked
6048fd3028d8 drm: Add a prefetching memcpy_from_wc
a297381da04d drm/ttm: Use drm_memcpy_from_wc for TTM bo moves
9882bd03d3c0 drm/ttm: Document and optimize ttm_bo_pipeline_gutting()
a823dad43aea drm/ttm, drm/amdgpu: Allow the driver some control over swapping
fd5d88ee0ada drm/i915/ttm: Introduce a TTM i915 gem object backend
-:449: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#449: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1042 lines checked
f61f3ba4771f drm/i915/lmem: Verify checks for lmem residency
a0b8cfe41a79 drm/i915: Disable mmap ioctl for gen12+
55f40bf04154 drm/vma: Add a driver_private member to vma_node.
9f4d36e7db77 drm/i915: Use ttm mmap handling for ttm bo's.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
