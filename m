Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 378F660C70D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 10:57:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83B1210E2B9;
	Tue, 25 Oct 2022 08:57:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A276110E2A7;
 Tue, 25 Oct 2022 08:57:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86082A010C;
 Tue, 25 Oct 2022 08:57:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Tue, 25 Oct 2022 08:57:38 -0000
Message-ID: <166668825851.15482.12287173078052678677@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221025065905.13325-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20221025065905.13325-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev8?=
 =?utf-8?q?=29?=
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

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev8)
URL   : https://patchwork.freedesktop.org/series/105879/
State : warning

== Summary ==

Error: dim checkpatch failed
f90c61132e40 drm/i915/vm_bind: Expose vm lookup function
ce0a50fbd695 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()
96720f194e91 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()
85b5fc29129a drm/i915/vm_bind: Add support to create persistent vma
-:61: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#61: FILE: drivers/gpu/drm/i915/i915_vma.c:309:
+	GEM_BUG_ON(!IS_ERR(vma) && i915_vma_compare(vma, vm, view));

-:82: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#82: FILE: drivers/gpu/drm/i915/i915_vma.c:330:
+	GEM_BUG_ON(!kref_read(&vm->ref));

-:127: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#127: FILE: drivers/gpu/drm/i915/i915_vma.h:181:
+	GEM_BUG_ON(view && !(i915_is_ggtt_or_dpt(vm) ||

total: 0 errors, 3 warnings, 0 checks, 107 lines checked
5e7adf229a35 drm/i915/vm_bind: Implement bind and unbind of object
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:83: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#83: 
new file mode 100644

-:459: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#459: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:181:
+	GEM_BUG_ON(!RB_EMPTY_ROOT(&vm->va.rb_root));

-:580: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#580: FILE: include/uapi/drm/i915_drm.h:539:
+#define DRM_IOCTL_I915_GEM_VM_BIND	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct drm_i915_gem_vm_bind)

-:581: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#581: FILE: include/uapi/drm/i915_drm.h:540:
+#define DRM_IOCTL_I915_GEM_VM_UNBIND	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_UNBIND, struct drm_i915_gem_vm_unbind)

total: 0 errors, 4 warnings, 0 checks, 607 lines checked
3bba46628e09 drm/i915/vm_bind: Support for VM private BOs
11bebebd40f5 drm/i915/vm_bind: Add support to handle object evictions
2ff8bd9137b2 drm/i915/vm_bind: Support persistent vma activeness tracking
4a9ed0e6ac9c drm/i915/vm_bind: Add out fence support
fea013678f0d drm/i915/vm_bind: Abstract out common execbuf functions
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:28: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#28: 
new file mode 100644

-:171: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#171: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer_common.c:139:
+		GEM_BUG_ON(err);	/* perma-pinned should incr a counter */

-:246: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#246: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer_common.c:214:
+	GEM_BUG_ON("Context not found");

-:600: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#600: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer_common.c:568:
+	GEM_BUG_ON(!intel_context_is_parent(context));

total: 0 errors, 4 warnings, 0 checks, 747 lines checked
3e4718e2bb90 drm/i915/vm_bind: Use common execbuf functions in execbuf path
8cbdd730afb4 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:39: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#39: 
new file mode 100644

-:266: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#266: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c:223:
+	GEM_BUG_ON(eb->args->flags & __EXEC3_ENGINE_PINNED);

-:663: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#663: FILE: include/uapi/drm/i915_drm.h:542:
+#define DRM_IOCTL_I915_GEM_EXECBUFFER3	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_EXECBUFFER3, struct drm_i915_gem_execbuffer3)

total: 0 errors, 3 warnings, 0 checks, 679 lines checked
3e0c296d3084 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()
fe5ea3690cbc drm/i915/vm_bind: Expose i915_request_await_bind()
547984b3d085 drm/i915/vm_bind: Handle persistent vmas in execbuf3
a3d9881b6d3d drm/i915/vm_bind: userptr dma-resv changes
1b9beeea8d01 drm/i915/vm_bind: Limit vm_bind mode to non-recoverable contexts
d159d07a9805 drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode
efbcca7d400d drm/i915/vm_bind: Render VM_BIND documentation


