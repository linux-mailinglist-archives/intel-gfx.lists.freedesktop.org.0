Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A681B5BF950
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 10:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B15610E81C;
	Wed, 21 Sep 2022 08:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 72A1A10E81C;
 Wed, 21 Sep 2022 08:33:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68EE5AA917;
 Wed, 21 Sep 2022 08:33:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Wed, 21 Sep 2022 08:33:20 -0000
Message-ID: <166374920039.11601.13075619690607228166@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220921070945.27764-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20220921070945.27764-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev3?=
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

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev3)
URL   : https://patchwork.freedesktop.org/series/105879/
State : warning

== Summary ==

Error: dim checkpatch failed
1faa6bedf8da drm/i915/vm_bind: Expose vm lookup function
2474615410c3 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()
585b299126d4 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()
671058542882 drm/i915/vm_bind: Implement bind and unbind of object
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:565: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#565: FILE: include/uapi/drm/i915_drm.h:539:
+#define DRM_IOCTL_I915_GEM_VM_BIND	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct drm_i915_gem_vm_bind)

-:566: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#566: FILE: include/uapi/drm/i915_drm.h:540:
+#define DRM_IOCTL_I915_GEM_VM_UNBIND	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_UNBIND, struct drm_i915_gem_vm_unbind)

total: 0 errors, 3 warnings, 0 checks, 665 lines checked
97e2068b921a drm/i915/vm_bind: Support for VM private BOs
b45f5fd59970 drm/i915/vm_bind: Handle persistent vmas
52581ec4212a drm/i915/vm_bind: Add out fence support
a9d8b10d97c9 drm/i915/vm_bind: Abstract out common execbuf functions
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:712: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#712: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1247 lines checked
f2a78068e648 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

-:653: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#653: FILE: include/uapi/drm/i915_drm.h:542:
+#define DRM_IOCTL_I915_GEM_EXECBUFFER3	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_EXECBUFFER3, struct drm_i915_gem_execbuffer3)

total: 0 errors, 2 warnings, 0 checks, 679 lines checked
f60faf478ccc drm/i915/vm_bind: Update i915_vma_verify_bind_complete()
5795b486d78c drm/i915/vm_bind: Handle persistent vmas in execbuf3
93f405eeeab3 drm/i915/vm_bind: userptr dma-resv changes
52ee0357651e drm/i915/vm_bind: Skip vma_lookup for persistent vmas
80e8d1ec7e16 drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode


