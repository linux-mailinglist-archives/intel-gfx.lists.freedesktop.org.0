Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E066E4A9FD0
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 20:13:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2822610E503;
	Fri,  4 Feb 2022 19:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7A9610E520;
 Fri,  4 Feb 2022 19:13:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8287A73C7;
 Fri,  4 Feb 2022 19:13:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 04 Feb 2022 19:13:10 -0000
Message-ID: <164400199081.12042.8911796416077949685@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220204174809.3366967-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20220204174809.3366967-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/helpers=3A_Make_the_suballocation_manager_drm_generic?=
 =?utf-8?q?=2E?=
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

Series: drm/helpers: Make the suballocation manager drm generic.
URL   : https://patchwork.freedesktop.org/series/99713/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
aba5c02e4398 drm: Extract amdgpu_sa.c as a generic suballocation helper
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

-:32: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#32: FILE: drivers/gpu/drm/drm_suballoc.c:1:
+/*

-:104: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#104: FILE: drivers/gpu/drm/drm_suballoc.c:73:
+	BUG_ON(align & (align - 1));

-:133: WARNING:SUSPECT_COMMA_SEMICOLON: Possible comma where semicolon could be used
#133: FILE: drivers/gpu/drm/drm_suballoc.c:102:
+		sa_manager->hole = &sa_manager->olist,
+		drm_suballoc_try_free(sa_manager);

-:149: WARNING:LINE_SPACING: Missing a blank line after declarations
#149: FILE: drivers/gpu/drm/drm_suballoc.c:118:
+	struct drm_suballoc_manager *sa_manager = sa->manager;
+	if (sa_manager->hole == &sa->olist) {

-:149: WARNING:BRACES: braces {} are not necessary for single statement blocks
#149: FILE: drivers/gpu/drm/drm_suballoc.c:118:
+	if (sa_manager->hole == &sa->olist) {
+		sa_manager->hole = sa->olist.prev;
+	}

-:167: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!sa->fence"
#167: FILE: drivers/gpu/drm/drm_suballoc.c:136:
+		if (sa->fence == NULL ||

-:175: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#175: FILE: drivers/gpu/drm/drm_suballoc.c:144:
+static inline unsigned drm_suballoc_hole_soffset(struct drm_suballoc_manager *sa_manager)

-:179: WARNING:BRACES: braces {} are not necessary for single statement blocks
#179: FILE: drivers/gpu/drm/drm_suballoc.c:148:
+	if (hole != &sa_manager->olist) {
+		return list_entry(hole, struct drm_suballoc, olist)->eoffset;
+	}

-:185: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#185: FILE: drivers/gpu/drm/drm_suballoc.c:154:
+static inline unsigned drm_suballoc_hole_eoffset(struct drm_suballoc_manager *sa_manager)

-:189: WARNING:BRACES: braces {} are not necessary for single statement blocks
#189: FILE: drivers/gpu/drm/drm_suballoc.c:158:
+	if (hole->next != &sa_manager->olist) {
+		return list_entry(hole->next, struct drm_suballoc, olist)->soffset;
+	}

-:197: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#197: FILE: drivers/gpu/drm/drm_suballoc.c:166:
+				   unsigned size)

-:199: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#199: FILE: drivers/gpu/drm/drm_suballoc.c:168:
+	unsigned soffset, eoffset;

-:229: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#229: FILE: drivers/gpu/drm/drm_suballoc.c:198:
+	unsigned soffset, eoffset, i;

-:238: WARNING:BRACES: braces {} are not necessary for single statement blocks
#238: FILE: drivers/gpu/drm/drm_suballoc.c:207:
+	if ((eoffset - soffset) >= size) {
+		return true;
+	}

-:247: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int *' to bare use of 'unsigned *'
#247: FILE: drivers/gpu/drm/drm_suballoc.c:216:
+				   unsigned *tries)

-:250: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#250: FILE: drivers/gpu/drm/drm_suballoc.c:219:
+	unsigned i, best_idx, soffset, best, tmp;

-:274: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#274: FILE: drivers/gpu/drm/drm_suballoc.c:243:
+		sa = list_first_entry(&sa_manager->flist[i],
+					 struct drm_suballoc, flist);

-:282: WARNING:BRACES: braces {} are not necessary for single statement blocks
#282: FILE: drivers/gpu/drm/drm_suballoc.c:251:
+		if (tries[i] > 2) {
+			continue;
+		}

-:305: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#305: FILE: drivers/gpu/drm/drm_suballoc.c:274:
+		/* we knew that this one is signaled,
+		   so it's save to remote it */

-:305: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#305: FILE: drivers/gpu/drm/drm_suballoc.c:274:
+		   so it's save to remote it */

-:327: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#327: FILE: drivers/gpu/drm/drm_suballoc.c:296:
+	unsigned tries[DRM_SUBALLOC_MAX_QUEUES];

-:328: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#328: FILE: drivers/gpu/drm/drm_suballoc.c:297:
+	unsigned count;

-:336: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kmalloc(sizeof(*sa)...) over kmalloc(sizeof(struct drm_suballoc)...)
#336: FILE: drivers/gpu/drm/drm_suballoc.c:305:
+	sa = kmalloc(sizeof(struct drm_suballoc), GFP_KERNEL);

-:379: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#379: FILE: drivers/gpu/drm/drm_suballoc.c:348:
+			r = wait_event_interruptible_locked(

-:414: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#414: FILE: drivers/gpu/drm/drm_suballoc.c:383:
+	BUG_ON(queue >= DRM_SUBALLOC_MAX_QUEUES);

-:436: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#436: FILE: drivers/gpu/drm/drm_suballoc.c:405:
+		uint64_t soffset = i->soffset;

-:437: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#437: FILE: drivers/gpu/drm/drm_suballoc.c:406:
+		uint64_t eoffset = i->eoffset;

-:438: WARNING:LINE_SPACING: Missing a blank line after declarations
#438: FILE: drivers/gpu/drm/drm_suballoc.c:407:
+		uint64_t eoffset = i->eoffset;
+		if (&i->olist == sa_manager->hole) {

-:438: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#438: FILE: drivers/gpu/drm/drm_suballoc.c:407:
+		if (&i->olist == sa_manager->hole) {
[...]
+		} else {
[...]

-:439: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#439: FILE: drivers/gpu/drm/drm_suballoc.c:408:
+			seq_printf(m, ">");

-:441: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#441: FILE: drivers/gpu/drm/drm_suballoc.c:410:
+			seq_printf(m, " ");

-:450: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#450: FILE: drivers/gpu/drm/drm_suballoc.c:419:
+		seq_printf(m, "\n");

-:462: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#462: FILE: include/drm/drm_suballoc.h:1:
+/*

-:463: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#463: FILE: include/drm/drm_suballoc.h:2:
+ * SPDX-License-Identifier: MIT

total: 0 errors, 29 warnings, 6 checks, 512 lines checked
583252da6e3d drm/amd: Convert amdgpu to use suballocation helper.
-:51: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#51: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu.h:424:
+	uint64_t			gpu_addr;

-:110: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#110: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_object.h:351:
+static inline void * amdgpu_sa_bo_cpu_addr(struct drm_suballoc *sa_bo)

-:124: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#124: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_object.h:365:
+		     unsigned size);

-:147: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#147: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c:49:
+			      unsigned size, u32 suballoc_align, u32 domain)

-:165: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#165: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c:56:
+	r = amdgpu_bo_create_kernel(adev, size, AMDGPU_GPU_PAGE_SIZE, domain, &sa_manager->bo,
 				&sa_manager->gpu_addr, &sa_manager->cpu_ptr);

-:218: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#218: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c:82:
+		     unsigned size)

total: 1 errors, 3 warnings, 2 checks, 475 lines checked
d5c5dca1308d drm/radeon: Use the drm suballocation manager implementation.
-:77: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#77: FILE: drivers/gpu/drm/radeon/radeon.h:519:
+	uint64_t			gpu_addr;

-:129: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#129: FILE: drivers/gpu/drm/radeon/radeon_ib.c:204:
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					                         ^

-:129: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#129: FILE: drivers/gpu/drm/radeon/radeon_ib.c:204:
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					                            ^

-:139: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#139: FILE: drivers/gpu/drm/radeon/radeon_ib.c:212:
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					                         ^

-:139: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#139: FILE: drivers/gpu/drm/radeon/radeon_ib.c:212:
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					                            ^

-:165: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#165: FILE: drivers/gpu/drm/radeon/radeon_object.h:185:
+static inline void * radeon_sa_bo_cpu_addr(struct drm_suballoc *sa_bo)

-:182: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#182: FILE: drivers/gpu/drm/radeon/radeon_object.h:200:
+extern int radeon_sa_bo_new(struct radeon_sa_manager *sa_manager,

-:184: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#184: FILE: drivers/gpu/drm/radeon/radeon_object.h:202:
+			    unsigned size);

-:185: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#185: FILE: drivers/gpu/drm/radeon/radeon_object.h:203:
+extern void radeon_sa_bo_free(struct drm_suballoc **sa_bo,

-:203: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#203: FILE: drivers/gpu/drm/radeon/radeon_sa.c:49:
+			      unsigned size, u32 sa_align, u32 domain, u32 flags)

-:262: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#262: FILE: drivers/gpu/drm/radeon/radeon_sa.c:122:
+		     unsigned size)

total: 1 errors, 3 warnings, 7 checks, 533 lines checked


