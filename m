Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA746396E9D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 10:13:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A84089FF9;
	Tue,  1 Jun 2021 08:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4812389FF9;
 Tue,  1 Jun 2021 08:13:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E08DA47DB;
 Tue,  1 Jun 2021 08:13:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 01 Jun 2021 08:13:47 -0000
Message-ID: <162253522711.19250.8494838849401540461@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210601074654.3103-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210601074654.3103-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_LMEM_=28VRAM=29_management_over_to_TTM_=28rev5=29?=
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

Series: Move LMEM (VRAM) management over to TTM (rev5)
URL   : https://patchwork.freedesktop.org/series/90681/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
325ee27eefe0 drm/i915: Untangle the vma pages_mutex
b8ec60cc312c drm/i915: Don't free shared locks while shared
f5f8f63758fb drm/i915: Fix i915_sg_page_sizes to record dma segments rather than physical pages
eb3b2aa36f72 drm/i915/ttm Initialize the ttm device and memory managers
-:480: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#480: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1531 lines checked
4d3bb3c2ab3c drm/i915/ttm: Embed a ttm buffer object in the i915 gem object
dd2260a61f1a drm/ttm: Add a generic TTM memcpy move for page-based iomem
-:385: CHECK:ARCH_DEFINES: architecture specific defines should be avoided
#385: FILE: drivers/gpu/drm/ttm/ttm_module.c:56:
+#if defined(__i386__) || defined(__x86_64__)

-:731: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#731: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 843 lines checked
15abc533f931 drm: Add a prefetching memcpy_from_wc
228add660c36 drm/ttm: Use drm_memcpy_from_wc for TTM bo moves
e053c57e6840 drm/ttm: Document and optimize ttm_bo_pipeline_gutting()
38c66ced103f drm/ttm, drm/amdgpu: Allow the driver some control over swapping
c777141dc2f3 drm/i915/ttm: Introduce a TTM i915 gem object backend
-:449: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#449: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1042 lines checked
3049c2ef413f drm/i915/lmem: Verify checks for lmem residency
76afa15acac3 drm/i915: Disable mmap ioctl for gen12+
6cf6f92c1646 drm/vma: Add a driver_private member to vma_node.
324ad89a4002 drm/i915: Use ttm mmap handling for ttm bo's.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
