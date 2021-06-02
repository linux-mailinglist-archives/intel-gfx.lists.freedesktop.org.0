Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DF33984D2
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 11:01:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D29036EBFF;
	Wed,  2 Jun 2021 09:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D203A6EBFF;
 Wed,  2 Jun 2021 09:01:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA7A7A8836;
 Wed,  2 Jun 2021 09:01:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 02 Jun 2021 09:01:33 -0000
Message-ID: <162262449382.11228.6353957219449797017@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210602083818.241793-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210602083818.241793-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_LMEM_=28VRAM=29_management_over_to_TTM_=28rev6=29?=
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

Series: Move LMEM (VRAM) management over to TTM (rev6)
URL   : https://patchwork.freedesktop.org/series/90681/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7b4aaf595371 drm/i915/ttm Initialize the ttm device and memory managers
-:480: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#480: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1531 lines checked
9277b8007ba9 drm/i915/ttm: Embed a ttm buffer object in the i915 gem object
ec6ab53da268 drm/ttm: Add a generic TTM memcpy move for page-based iomem
-:385: CHECK:ARCH_DEFINES: architecture specific defines should be avoided
#385: FILE: drivers/gpu/drm/ttm/ttm_module.c:56:
+#if defined(__i386__) || defined(__x86_64__)

-:731: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#731: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 843 lines checked
75118ce36399 drm: Add a prefetching memcpy_from_wc
2a425a7ac3b3 drm/ttm: Use drm_memcpy_from_wc for TTM bo moves
4032fe427110 drm/ttm: Document and optimize ttm_bo_pipeline_gutting()
892c08ea4518 drm/ttm, drm/amdgpu: Allow the driver some control over swapping
9da5481fa327 drm/i915/ttm: Introduce a TTM i915 gem object backend
-:449: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#449: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1042 lines checked
f845aa5e2a37 drm/i915/lmem: Verify checks for lmem residency
86c2b5803474 drm/vma: Add a driver_private member to vma_node.
32c341af114f drm/i915: Use ttm mmap handling for ttm bo's.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
