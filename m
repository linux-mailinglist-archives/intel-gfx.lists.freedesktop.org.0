Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B591B563CBB
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Jul 2022 01:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA32112162;
	Fri,  1 Jul 2022 23:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6FDDB10E8F7;
 Fri,  1 Jul 2022 23:19:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65B31AA0EA;
 Fri,  1 Jul 2022 23:19:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Fri, 01 Jul 2022 23:19:07 -0000
Message-ID: <165671754738.30283.5824051868330044366@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220701225055.8204-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20220701225055.8204-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality?=
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

Series: drm/i915/vm_bind: Add VM_BIND functionality
URL   : https://patchwork.freedesktop.org/series/105879/
State : warning

== Summary ==

Error: dim checkpatch failed
9a618f815c5e drm/i915/vm_bind: Introduce VM_BIND ioctl
-:196: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#196: FILE: include/uapi/drm/i915_drm.h:539:
+#define DRM_IOCTL_I915_GEM_VM_BIND	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct drm_i915_gem_vm_bind)

-:197: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#197: FILE: include/uapi/drm/i915_drm.h:540:
+#define DRM_IOCTL_I915_GEM_VM_UNBIND	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_UNBIND, struct drm_i915_gem_vm_unbind)

total: 0 errors, 2 warnings, 0 checks, 368 lines checked
b021c9cf1fd7 drm/i915/vm_bind: Bind and unbind mappings
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:73: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#73: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 443 lines checked
6375255bdb22 drm/i915/vm_bind: Support private and shared BOs
bc88aa1c4e77 drm/i915/vm_bind: Add out fence support
150c21055b0e drm/i915/vm_bind: Handle persistent vmas
bd2c34d240da drm/i915/vm_bind: Add I915_GEM_EXECBUFFER3 ioctl
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:44: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#44: 
new file mode 100644

-:232: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#232: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c:184:
+#define for_each_batch_create_order(_eb, _i) \
+	for ((_i) = 0; (_i) < (_eb)->num_batches; ++(_i))

-:234: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#234: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c:186:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for ((_i) = (_eb)->num_batches - 1; (_i) >= 0; --(_i))

-:234: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#234: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c:186:
+#define for_each_batch_add_order(_eb, _i) \
+	BUILD_BUG_ON(!typecheck(int, _i)); \
+	for ((_i) = (_eb)->num_batches - 1; (_i) >= 0; --(_i))

-:1119: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1119: FILE: include/uapi/drm/i915_drm.h:542:
+#define DRM_IOCTL_I915_GEM_EXECBUFFER3	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_EXECBUFFER3, struct drm_i915_gem_execbuffer3)

total: 1 errors, 2 warnings, 2 checks, 1153 lines checked
05108f6c5754 drm/i915/vm_bind: Handle persistent vmas in execbuf3
481d633a73ce drm/i915/vm_bind: userptr dma-resv changes
aaafeac528d6 drm/i915/vm_bind: Skip vma_lookup for persistent vmas
27b31d00e6b0 drm/i915/vm_bind: Fix vm->vm_bind_mutex and vm->mutex nesting


