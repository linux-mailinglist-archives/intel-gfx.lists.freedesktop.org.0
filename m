Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A3264ABEC
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 01:02:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 892B710E2AA;
	Tue, 13 Dec 2022 00:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5DA2510E2AA;
 Tue, 13 Dec 2022 00:01:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 56D07A7E03;
 Tue, 13 Dec 2022 00:01:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Tue, 13 Dec 2022 00:01:27 -0000
Message-ID: <167088968732.25536.15388807008059141981@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221212231527.2384-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20221212231527.2384-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev12?=
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

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev12)
URL   : https://patchwork.freedesktop.org/series/105879/
State : warning

== Summary ==

Error: dim checkpatch failed
c097e45018d9 drm/i915/vm_bind: Expose vm lookup function
b733052df604 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()
7f93bd081fd8 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()
0914f8b4345a drm/i915/vm_bind: Support partially mapped vma resource
f1e828354170 drm/i915/vm_bind: Add support to create persistent vma
-:61: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#61: FILE: drivers/gpu/drm/i915/i915_vma.c:311:
+	GEM_BUG_ON(!IS_ERR(vma) && i915_vma_compare(vma, vm, view));

-:82: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#82: FILE: drivers/gpu/drm/i915/i915_vma.c:332:
+	GEM_BUG_ON(!kref_read(&vm->ref));

-:127: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#127: FILE: drivers/gpu/drm/i915/i915_vma.h:228:
+	GEM_BUG_ON(view && !(i915_is_ggtt_or_dpt(vm) ||

total: 0 errors, 3 warnings, 0 checks, 107 lines checked
22db08fd1eb2 drm/i915/vm_bind: Implement bind and unbind of object
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:83: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#83: 
new file mode 100644

-:466: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#466: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:182:
+	GEM_BUG_ON(!RB_EMPTY_ROOT(&vm->va.rb_root));

-:587: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#587: FILE: include/uapi/drm/i915_drm.h:539:
+#define DRM_IOCTL_I915_GEM_VM_BIND	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct drm_i915_gem_vm_bind)

-:588: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#588: FILE: include/uapi/drm/i915_drm.h:540:
+#define DRM_IOCTL_I915_GEM_VM_UNBIND	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_UNBIND, struct drm_i915_gem_vm_unbind)

total: 0 errors, 4 warnings, 0 checks, 609 lines checked
42e1e21f5d3e drm/i915/vm_bind: Support for VM private BOs
ab883e6d8e60 drm/i915/vm_bind: Add support to handle object evictions
788358767027 drm/i915/vm_bind: Support persistent vma activeness tracking
d5c48e91261f drm/i915/vm_bind: Add out fence support
77e59c80cfb5 drm/i915/vm_bind: Abstract out common execbuf functions
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

-:174: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#174: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer_common.c:140:
+		GEM_BUG_ON(err);	/* perma-pinned should incr a counter */

-:249: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#249: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer_common.c:215:
+	GEM_BUG_ON("Context not found");

-:607: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#607: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer_common.c:573:
+	GEM_BUG_ON(!intel_context_is_parent(context));

total: 0 errors, 4 warnings, 0 checks, 754 lines checked
b3f05fab7477 drm/i915/vm_bind: Use common execbuf functions in execbuf path
7456fbb36b68 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:39: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#39: 
new file mode 100644

-:266: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#266: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c:223:
+	GEM_BUG_ON(eb->args->flags & __EXEC3_ENGINE_PINNED);

-:664: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#664: FILE: include/uapi/drm/i915_drm.h:542:
+#define DRM_IOCTL_I915_GEM_EXECBUFFER3	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_EXECBUFFER3, struct drm_i915_gem_execbuffer3)

total: 0 errors, 3 warnings, 0 checks, 680 lines checked
7257bf9a3d10 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()
999776ce00dd drm/i915/vm_bind: Expose i915_request_await_bind()
b729b5b0fc59 drm/i915/vm_bind: Handle persistent vmas in execbuf3
d1aaa4957609 drm/i915/vm_bind: userptr dma-resv changes
ce317f39bcdc drm/i915/vm_bind: Limit vm_bind mode to non-recoverable contexts
1b551519ab48 drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode
bec550ade956 drm/i915/vm_bind: Render VM_BIND documentation
f9d45500e4eb drm/i915/vm_bind: Async vm_unbind support
8cf55743f48c drm/i915/vm_bind: Properly build persistent map sg table
dca1c8b54ac8 drm/i915/vm_bind: Support capture of persistent mappings


