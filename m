Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06ED34D0878
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 21:38:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 272C310E1C4;
	Mon,  7 Mar 2022 20:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 285D810E1D1;
 Mon,  7 Mar 2022 20:38:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24420A0169;
 Mon,  7 Mar 2022 20:38:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Mon, 07 Mar 2022 20:38:55 -0000
Message-ID: <164668553514.12770.16199807189053470077@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220307203146.648-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20220307203146.648-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/doc/rfc=3A_i915_VM=5FBIND_feature_design_+_uapi_=28rev2?=
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

Series: drm/doc/rfc: i915 VM_BIND feature design + uapi (rev2)
URL   : https://patchwork.freedesktop.org/series/93447/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a40e87e2a2f3 drm/doc/rfc: VM_BIND feature design document
-:11: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#11: 
new file mode 100644

-:16: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#16: FILE: Documentation/gpu/rfc/i915_vm_bind.rst:1:
+==========================================

-:112: WARNING:TYPO_SPELLING: 'an user' may be misspelled - perhaps 'a user'?
#112: FILE: Documentation/gpu/rfc/i915_vm_bind.rst:97:
+wakeup the waiting process. User can wait on an user fence with the
                                              ^^^^^^^

-:117: WARNING:TYPO_SPELLING: 'an user' may be misspelled - perhaps 'a user'?
#117: FILE: Documentation/gpu/rfc/i915_vm_bind.rst:102:
+precision on the wakeup. Each batch can signal an user fence to indicate
                                                ^^^^^^^

total: 0 errors, 4 warnings, 0 checks, 217 lines checked
95969abb7e7c drm/doc/rfc: VM_BIND uapi definition
-:11: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#11: 
new file mode 100644

-:29: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#29: FILE: Documentation/gpu/rfc/i915_vm_bind.h:14:
+#define DRM_IOCTL_I915_GEM_VM_BIND		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct drm_i915_gem_vm_bind)

-:30: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#30: FILE: Documentation/gpu/rfc/i915_vm_bind.h:15:
+#define DRM_IOCTL_I915_GEM_VM_UNBIND		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_UNBIND, struct drm_i915_gem_vm_bind)

-:31: WARNING:LONG_LINE: line length of 142 exceeds 100 columns
#31: FILE: Documentation/gpu/rfc/i915_vm_bind.h:16:
+#define DRM_IOCTL_I915_GEM_WAIT_USER_FENCE	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_WAIT_USER_FENCE, struct drm_i915_gem_wait_user_fence)

-:129: CHECK:LINE_SPACING: Please don't use multiple blank lines
#129: FILE: Documentation/gpu/rfc/i915_vm_bind.h:114:
+
+

-:135: CHECK:LINE_SPACING: Please don't use multiple blank lines
#135: FILE: Documentation/gpu/rfc/i915_vm_bind.h:120:
+
+

total: 0 errors, 4 warnings, 2 checks, 176 lines checked


