Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A57C5A39F7
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Aug 2022 22:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B349C10ED6F;
	Sat, 27 Aug 2022 20:24:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A3AA10ED6F;
 Sat, 27 Aug 2022 20:23:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32E28A7E03;
 Sat, 27 Aug 2022 20:23:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Sat, 27 Aug 2022 20:23:58 -0000
Message-ID: <166163183817.5226.7977917793307367285@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220827194403.6495-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220827194403.6495-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev2?=
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

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev2)
URL   : https://patchwork.freedesktop.org/series/105879/
State : warning

== Summary ==

Error: dim checkpatch failed
0189f6e65191 drm/i915: Expose vm_lookup in i915_gem_context.h
d15754f0b129 drm/i915: Mark vm for vm_bind usage at creation
4fcd576cd040 drm/i915/gem: expose i915_gem_object_max_page_size() in i915_gem_object.h
0a3d9faf5878 drm/i915: Implement bind and unbind of object
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 630 lines checked
d66b303cbf8e drm/i915: Support for VM private BOs
d9e6588256ed drm/i915/dmabuf: Deny the dmabuf export for VM private BOs
3763b9a1ed87 drm/i915/vm_bind: Handle persistent vmas
-:116: WARNING:TYPO_SPELLING: 'targetted' may be misspelled - perhaps 'targeted'?
#116: FILE: drivers/gpu/drm/i915/i915_gem_gtt.c:54:
+ * @vm: address spece targetted
                       ^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 292 lines checked
c88933ee0a97 drm/i915/vm_bind: Add out fence support
0e15185fbdd4 drm/i915: Do not support vm_bind mode in execbuf2
5acdcd286a95 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
new file mode 100644

-:223: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#223: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c:186:
+#define for_each_batch_create_order(_eb, _i) \
+	for ((_i) = 0; (_i) < (_eb)->num_batches; ++(_i))

-:225: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#225: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c:188:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for ((_i) = (_eb)->num_batches - 1; (_i) >= 0; --(_i))

-:225: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#225: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c:188:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for ((_i) = (_eb)->num_batches - 1; (_i) >= 0; --(_i))

total: 1 errors, 1 warnings, 2 checks, 1083 lines checked
9ff809456d49 drm/i915: Add i915_vma_is_bind_complete()
30c53a0c5d9b drm/i915/vm_bind: Handle persistent vmas in execbuf3
a2f7069f8c48 drm/i915/vm_bind: userptr dma-resv changes
-:154: ERROR:TRAILING_WHITESPACE: trailing whitespace
#154: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c:406:
+^I^I/* $

total: 1 errors, 0 warnings, 0 checks, 273 lines checked
11ab601fa8ab drm/i915/vm_bind: Skip vma_lookup for persistent vmas
74e9bd08c613 drm/i915: Extend getparm for VM_BIND capability
2fb3be5e08be drm/i915/ioctl: Enable the vm_bind/unbind ioctls
-:42: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#42: FILE: include/uapi/drm/i915_drm.h:539:
+#define DRM_IOCTL_I915_GEM_VM_BIND	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct drm_i915_gem_vm_bind)

-:43: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#43: FILE: include/uapi/drm/i915_drm.h:540:
+#define DRM_IOCTL_I915_GEM_VM_UNBIND	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_UNBIND, struct drm_i915_gem_vm_unbind)

total: 0 errors, 2 warnings, 0 checks, 24 lines checked
bfe030b1e376 drm/i915: Enable execbuf3 ioctl for vm_bind
-:42: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#42: FILE: include/uapi/drm/i915_drm.h:542:
+#define DRM_IOCTL_I915_GEM_EXECBUFFER3	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_EXECBUFFER3, struct drm_i915_gem_execbuffer3)

total: 0 errors, 1 warnings, 0 checks, 21 lines checked


