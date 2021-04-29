Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E6E36EE07
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 18:21:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E206F3AE;
	Thu, 29 Apr 2021 16:21:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F2EEF6F3AE;
 Thu, 29 Apr 2021 16:21:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EBD24A0BCB;
 Thu, 29 Apr 2021 16:21:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 29 Apr 2021 16:21:03 -0000
Message-ID: <161971326393.20425.10657635929196629264@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210429103056.407067-1-matthew.auld@intel.com>
In-Reply-To: <20210429103056.407067-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/9=5D_drm/doc/rfc=3A_i915_DG1?=
 =?utf-8?q?_uAPI?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [v2,1/9] drm/doc/rfc: i915 DG1 uAPI
URL   : https://patchwork.freedesktop.org/series/89648/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
04da5ac951fc drm/doc/rfc: i915 DG1 uAPI
-:63: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#63: 
new file mode 100644

-:68: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#68: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:1:
+/**

-:141: ERROR:CODE_INDENT: code indent should use tabs where possible
#141: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:74:
+        __u64 rsvd1[8];$

-:141: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#141: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:74:
+        __u64 rsvd1[8];$

-:195: ERROR:CODE_INDENT: code indent should use tabs where possible
#195: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:128:
+        __u32 rsvd[3];$

-:195: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#195: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:128:
+        __u32 rsvd[3];$

-:202: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#202: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:135:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE_EXT, struct drm_i915_gem_create_ext)

-:311: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#311: FILE: Documentation/gpu/rfc/i915_gem_lmem.rst:1:
+=========================

total: 2 errors, 6 warnings, 0 checks, 375 lines checked
cde9b3fe065c drm/i915: mark stolen as private
45d5ce64820c drm/i915/query: Expose memory regions through the query uAPI
-:224: ERROR:CODE_INDENT: code indent should use tabs where possible
#224: FILE: include/uapi/drm/i915_drm.h:2541:
+        __u64 rsvd1[8];$

-:224: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#224: FILE: include/uapi/drm/i915_drm.h:2541:
+        __u64 rsvd1[8];$

-:278: ERROR:CODE_INDENT: code indent should use tabs where possible
#278: FILE: include/uapi/drm/i915_drm.h:2595:
+        __u32 rsvd[3];$

-:278: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#278: FILE: include/uapi/drm/i915_drm.h:2595:
+        __u32 rsvd[3];$

total: 2 errors, 2 warnings, 0 checks, 237 lines checked
b333347afffc drm/i915: rework gem_create flow for upcoming extensions
ee534b2bfe4d drm/i915/uapi: introduce drm_i915_gem_create_ext
-:151: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#151: FILE: include/uapi/drm/i915_drm.h:442:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE_EXT, struct drm_i915_gem_create_ext)

total: 0 errors, 1 warnings, 0 checks, 140 lines checked
d3c82d03ea86 drm/i915/uapi: implement object placement extension
548511f53787 drm/i915/lmem: support optional CPU clearing for special internal use
-:78: WARNING:MEMORY_BARRIER: memory barrier without comment
#78: FILE: drivers/gpu/drm/i915/gem/i915_gem_region.c:117:
+		wmb();

-:114: WARNING:LINE_SPACING: Missing a blank line after declarations
#114: FILE: drivers/gpu/drm/i915/selftests/intel_memory_region.c:637:
+	struct drm_i915_private *i915 = arg;
+	I915_RND_STATE(prng);

total: 0 errors, 2 warnings, 0 checks, 156 lines checked
da6d86664790 drm/i915/gem: clear userspace buffers for LMEM
bf2f129104e6 drm/i915/gem: hide new uAPI behind CONFIG_BROKEN


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
