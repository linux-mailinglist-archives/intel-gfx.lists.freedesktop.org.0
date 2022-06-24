Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB94955A08E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 20:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E43510F215;
	Fri, 24 Jun 2022 18:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 34AC710F215;
 Fri, 24 Jun 2022 18:10:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CB00AADDE;
 Fri, 24 Jun 2022 18:10:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Fri, 24 Jun 2022 18:10:26 -0000
Message-ID: <165609422617.16789.15419909866824967058@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220624174936.1065-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20220624174936.1065-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/doc/rfc=3A_i915_VM=5FBIND_feature_design_+_uapi?=
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

Series: drm/doc/rfc: i915 VM_BIND feature design + uapi
URL   : https://patchwork.freedesktop.org/series/105608/
State : warning

== Summary ==

Error: dim checkpatch failed
f158211cdc88 drm/doc/rfc: VM_BIND feature design document
-:17: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#17: 
new file mode 100644

-:22: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#22: FILE: Documentation/gpu/rfc/i915_vm_bind.rst:1:
+==========================================

total: 0 errors, 2 warnings, 0 checks, 253 lines checked
a37662a9ed5f drm/i915: Update i915 uapi documentation
-:43: WARNING:NEW_TYPEDEFS: do not add new typedefs
#43: FILE: include/uapi/drm/i915_drm.h:774:
+typedef struct drm_i915_getparam drm_i915_getparam_t;

total: 0 errors, 1 warnings, 0 checks, 337 lines checked
3d5081e3cab0 drm/doc/rfc: VM_BIND uapi definition
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:22: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#22: 
new file mode 100644

-:64: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#64: FILE: Documentation/gpu/rfc/i915_vm_bind.h:38:
+#define DRM_IOCTL_I915_GEM_VM_BIND		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct drm_i915_gem_vm_bind)

-:65: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#65: FILE: Documentation/gpu/rfc/i915_vm_bind.h:39:
+#define DRM_IOCTL_I915_GEM_VM_UNBIND		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_UNBIND, struct drm_i915_gem_vm_bind)

-:66: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#66: FILE: Documentation/gpu/rfc/i915_vm_bind.h:40:
+#define DRM_IOCTL_I915_GEM_EXECBUFFER3		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_EXECBUFFER3, struct drm_i915_gem_execbuffer3)

-:90: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#90: FILE: Documentation/gpu/rfc/i915_vm_bind.h:64:
+#define I915_TIMELINE_FENCE_WAIT            (1<<0)
                                               ^

-:91: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#91: FILE: Documentation/gpu/rfc/i915_vm_bind.h:65:
+#define I915_TIMELINE_FENCE_SIGNAL          (1<<1)
                                               ^

total: 0 errors, 4 warnings, 2 checks, 286 lines checked


