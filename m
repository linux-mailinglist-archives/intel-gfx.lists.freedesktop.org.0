Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C6252ACFA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 22:49:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CFB1112F7C;
	Tue, 17 May 2022 20:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BB6B113067;
 Tue, 17 May 2022 20:49:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11B28A7DFB;
 Tue, 17 May 2022 20:49:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Tue, 17 May 2022 20:49:40 -0000
Message-ID: <165282058004.31034.12333190548979019137@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220517183212.20274-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20220517183212.20274-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/doc/rfc=3A_i915_VM=5FBIND_feature_design_+_uapi_=28rev3?=
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

Series: drm/doc/rfc: i915 VM_BIND feature design + uapi (rev3)
URL   : https://patchwork.freedesktop.org/series/93447/
State : warning

== Summary ==

Error: dim checkpatch failed
b4f01b5605b4 drm/doc/rfc: VM_BIND feature design document
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

-:32: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#32: FILE: Documentation/gpu/rfc/i915_vm_bind.rst:1:
+==========================================

total: 0 errors, 2 warnings, 0 checks, 319 lines checked
50b7adcbd762 drm/i915: Update i915 uapi documentation
e72771b5018c drm/doc/rfc: VM_BIND uapi definition
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:15: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#15: 
new file mode 100644

-:83: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#83: FILE: Documentation/gpu/rfc/i915_vm_bind.h:64:
+#define DRM_IOCTL_I915_GEM_VM_BIND		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct drm_i915_gem_vm_bind)

-:84: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#84: FILE: Documentation/gpu/rfc/i915_vm_bind.h:65:
+#define DRM_IOCTL_I915_GEM_VM_UNBIND		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_UNBIND, struct drm_i915_gem_vm_bind)

-:85: WARNING:LONG_LINE: line length of 142 exceeds 100 columns
#85: FILE: Documentation/gpu/rfc/i915_vm_bind.h:66:
+#define DRM_IOCTL_I915_GEM_WAIT_USER_FENCE	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_WAIT_USER_FENCE, struct drm_i915_gem_wait_user_fence)

-:184: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#184: FILE: Documentation/gpu/rfc/i915_vm_bind.h:165:
+#define I915_VM_BIND_FENCE_WAIT            (1<<0)
                                              ^

-:185: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#185: FILE: Documentation/gpu/rfc/i915_vm_bind.h:166:
+#define I915_VM_BIND_FENCE_SIGNAL          (1<<1)
                                              ^

-:252: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#252: FILE: Documentation/gpu/rfc/i915_vm_bind.h:233:
+#define I915_VM_BIND_USER_FENCE_WAIT            (1<<0)
                                                   ^

-:253: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#253: FILE: Documentation/gpu/rfc/i915_vm_bind.h:234:
+#define I915_VM_BIND_USER_FENCE_SIGNAL          (1<<1)
                                                   ^

total: 0 errors, 4 warnings, 4 checks, 399 lines checked


