Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1A54C24C8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 08:55:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD7A10F487;
	Thu, 24 Feb 2022 07:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E0BF810F484;
 Thu, 24 Feb 2022 07:55:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD375A008A;
 Thu, 24 Feb 2022 07:55:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 24 Feb 2022 07:55:01 -0000
Message-ID: <164568930190.32675.15652491667762447621@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220223135112.655569-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20220223135112.655569-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/helpers=3A_Make_the_suballocation_manager_drm_generic?=
 =?utf-8?b?LiAocmV2Mik=?=
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

Series: drm/helpers: Make the suballocation manager drm generic. (rev2)
URL   : https://patchwork.freedesktop.org/series/99713/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
18b5ce2eb239 drm: Extract amdgpu_sa.c as a generic suballocation helper
-:41: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#41: 
new file mode 100644

-:46: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#46: FILE: drivers/gpu/drm/drm_suballoc.c:1:
+/*

-:118: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#118: FILE: drivers/gpu/drm/drm_suballoc.c:73:
+	BUG_ON(align & (align - 1));

-:147: WARNING:SUSPECT_COMMA_SEMICOLON: Possible comma where semicolon could be used
#147: FILE: drivers/gpu/drm/drm_suballoc.c:102:
+		sa_manager->hole = &sa_manager->olist,
+		drm_suballoc_try_free(sa_manager);

-:182: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!sa->fence"
#182: FILE: drivers/gpu/drm/drm_suballoc.c:137:
+		if (sa->fence == NULL ||

-:190: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#190: FILE: drivers/gpu/drm/drm_suballoc.c:145:
+static inline unsigned drm_suballoc_hole_soffset(struct drm_suballoc_manager *sa_manager)

-:200: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#200: FILE: drivers/gpu/drm/drm_suballoc.c:155:
+static inline unsigned drm_suballoc_hole_eoffset(struct drm_suballoc_manager *sa_manager)

-:212: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#212: FILE: drivers/gpu/drm/drm_suballoc.c:167:
+				   unsigned size)

-:214: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#214: FILE: drivers/gpu/drm/drm_suballoc.c:169:
+	unsigned soffset, eoffset;

-:244: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#244: FILE: drivers/gpu/drm/drm_suballoc.c:199:
+	unsigned soffset, eoffset, i;

-:258: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int *' to bare use of 'unsigned *'
#258: FILE: drivers/gpu/drm/drm_suballoc.c:213:
+				   unsigned *tries)

-:261: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#261: FILE: drivers/gpu/drm/drm_suballoc.c:216:
+	unsigned i, best_idx, soffset, best, tmp;

-:285: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#285: FILE: drivers/gpu/drm/drm_suballoc.c:240:
+		sa = list_first_entry(&sa_manager->flist[i],
+					 struct drm_suballoc, flist);

-:293: WARNING:BRACES: braces {} are not necessary for single statement blocks
#293: FILE: drivers/gpu/drm/drm_suballoc.c:248:
+		if (tries[i] > 2) {
+			continue;
+		}

-:316: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#316: FILE: drivers/gpu/drm/drm_suballoc.c:271:
+		/* we knew that this one is signaled,
+		   so it's save to remote it */

-:316: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#316: FILE: drivers/gpu/drm/drm_suballoc.c:271:
+		   so it's save to remote it */

-:338: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#338: FILE: drivers/gpu/drm/drm_suballoc.c:293:
+	unsigned tries[DRM_SUBALLOC_MAX_QUEUES];

-:339: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#339: FILE: drivers/gpu/drm/drm_suballoc.c:294:
+	unsigned count;

-:347: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kmalloc(sizeof(*sa)...) over kmalloc(sizeof(struct drm_suballoc)...)
#347: FILE: drivers/gpu/drm/drm_suballoc.c:302:
+	sa = kmalloc(sizeof(struct drm_suballoc), GFP_KERNEL);

-:390: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#390: FILE: drivers/gpu/drm/drm_suballoc.c:345:
+			r = wait_event_interruptible_locked(

-:425: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#425: FILE: drivers/gpu/drm/drm_suballoc.c:380:
+	BUG_ON(queue >= DRM_SUBALLOC_MAX_QUEUES);

-:447: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#447: FILE: drivers/gpu/drm/drm_suballoc.c:402:
+		uint64_t soffset = i->soffset;

-:448: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#448: FILE: drivers/gpu/drm/drm_suballoc.c:403:
+		uint64_t eoffset = i->eoffset;

-:449: WARNING:LINE_SPACING: Missing a blank line after declarations
#449: FILE: drivers/gpu/drm/drm_suballoc.c:404:
+		uint64_t eoffset = i->eoffset;
+		if (&i->olist == sa_manager->hole) {

-:449: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#449: FILE: drivers/gpu/drm/drm_suballoc.c:404:
+		if (&i->olist == sa_manager->hole) {
[...]
+		} else {
[...]

-:450: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#450: FILE: drivers/gpu/drm/drm_suballoc.c:405:
+			seq_printf(m, ">");

-:452: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#452: FILE: drivers/gpu/drm/drm_suballoc.c:407:
+			seq_printf(m, " ");

-:461: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#461: FILE: drivers/gpu/drm/drm_suballoc.c:416:
+		seq_printf(m, "\n");

-:478: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#478: FILE: include/drm/drm_suballoc.h:1:
+/*

-:479: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#479: FILE: include/drm/drm_suballoc.h:2:
+ * SPDX-License-Identifier: MIT

total: 0 errors, 24 warnings, 6 checks, 523 lines checked
840abcc732de drm/amd: Convert amdgpu to use suballocation helper.
-:63: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#63: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu.h:424:
+	uint64_t			gpu_addr;

-:122: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#122: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_object.h:351:
+static inline void * amdgpu_sa_bo_cpu_addr(struct drm_suballoc *sa_bo)

-:136: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#136: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_object.h:365:
+		     unsigned size);

-:159: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#159: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c:49:
+			      unsigned size, u32 suballoc_align, u32 domain)

-:177: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#177: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c:56:
+	r = amdgpu_bo_create_kernel(adev, size, AMDGPU_GPU_PAGE_SIZE, domain, &sa_manager->bo,
 				&sa_manager->gpu_addr, &sa_manager->cpu_ptr);

-:230: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#230: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c:82:
+		     unsigned size)

total: 1 errors, 3 warnings, 2 checks, 482 lines checked
f31ddb2b08c1 drm/radeon: Use the drm suballocation manager implementation.
-:89: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#89: FILE: drivers/gpu/drm/radeon/radeon.h:519:
+	uint64_t			gpu_addr;

-:141: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#141: FILE: drivers/gpu/drm/radeon/radeon_ib.c:204:
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					                         ^

-:141: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#141: FILE: drivers/gpu/drm/radeon/radeon_ib.c:204:
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					                            ^

-:151: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#151: FILE: drivers/gpu/drm/radeon/radeon_ib.c:212:
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					                         ^

-:151: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#151: FILE: drivers/gpu/drm/radeon/radeon_ib.c:212:
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					                            ^

-:177: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#177: FILE: drivers/gpu/drm/radeon/radeon_object.h:183:
+static inline void * radeon_sa_bo_cpu_addr(struct drm_suballoc *sa_bo)

-:194: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#194: FILE: drivers/gpu/drm/radeon/radeon_object.h:198:
+extern int radeon_sa_bo_new(struct radeon_sa_manager *sa_manager,

-:196: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#196: FILE: drivers/gpu/drm/radeon/radeon_object.h:200:
+			    unsigned size);

-:197: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#197: FILE: drivers/gpu/drm/radeon/radeon_object.h:201:
+extern void radeon_sa_bo_free(struct drm_suballoc **sa_bo,

-:215: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#215: FILE: drivers/gpu/drm/radeon/radeon_sa.c:49:
+			      unsigned size, u32 sa_align, u32 domain, u32 flags)

-:274: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#274: FILE: drivers/gpu/drm/radeon/radeon_sa.c:122:
+		     unsigned size)

total: 1 errors, 3 warnings, 7 checks, 540 lines checked


