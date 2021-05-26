Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A34391CDF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 18:20:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30C116EDC6;
	Wed, 26 May 2021 16:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 84F346EDC7;
 Wed, 26 May 2021 16:20:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7DBB2A47E1;
 Wed, 26 May 2021 16:20:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 26 May 2021 16:20:43 -0000
Message-ID: <162204604349.13405.7854611755354086789@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Move_LMEM_=28VRAM=29_management_over_to_TTM_=28?=
 =?utf-8?q?rev4=29?=
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

Series: drm/i915: Move LMEM (VRAM) management over to TTM (rev4)
URL   : https://patchwork.freedesktop.org/series/90022/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a8d995049a9a drm/i915: Untangle the vma pages_mutex
565669662415 drm/i915: Don't free shared locks while shared
34211cad1c61 drm/i915: Fix i915_sg_page_sizes to record dma segments rather than physical pages
9e94246f54ff drm/i915/ttm Initialize the ttm device and memory managers
-:480: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#480: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1531 lines checked
8c9f9a941096 drm/i915/ttm: Embed a ttm buffer object in the i915 gem object
512ac8fd774b drm/ttm: Add a generic TTM memcpy move for page-based iomem
-:384: CHECK:ARCH_DEFINES: architecture specific defines should be avoided
#384: FILE: drivers/gpu/drm/ttm/ttm_module.c:56:
+#if defined(__i386__) || defined(__x86_64__)

-:727: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#727: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 840 lines checked
1a9c04facf2f drm, drm/i915: Move the memcpy_from_wc functionality to core drm
-:56: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#56: 
rename from drivers/gpu/drm/i915/i915_memcpy.c

total: 0 errors, 1 warnings, 0 checks, 431 lines checked
aa4e527660b2 drm/ttm: Use drm_memcpy_from_wc_dbm for TTM bo moves
a0467168f3dd drm/ttm: Document and optimize ttm_bo_pipeline_gutting()
4eb13de59af2 drm/ttm, drm/amdgpu: Allow the driver some control over swapping
d74440bb1681 drm/i915/ttm: Introduce a TTM i915 gem object backend
-:449: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#449: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1043 lines checked
078b4a721184 drm/i915/lmem: Verify checks for lmem residency
e1a4df82cfae drm/i915: Disable mmap ioctl for gen12+
89fe83848800 drm/vma: Add a driver_private member to vma_node.
7e57f71fdb25 drm/i915: Use ttm mmap handling for ttm bo's.
-:141: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#141: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:908:
+			obj = i915_gem_object_get_rcu(container_of(node, struct drm_i915_gem_object, base.vma_node));

-:357: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#357: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:522:
+vm_access_ttm(struct vm_area_struct *area, unsigned long addr,
+	  void *buf, int len, int write)

-:386: CHECK:LINE_SPACING: Please don't use multiple blank lines
#386: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:551:
+
+

-:702: WARNING:PRINTF_L: %Lx is non-standard C, use %llx
#702: FILE: drivers/gpu/drm/i915/selftests/igt_mmap.c:30:
+		pr_info("Failed to lookup %Lx\n", offset);

total: 0 errors, 2 warnings, 2 checks, 649 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
