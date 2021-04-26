Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C88936B2E4
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 14:17:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD3E6E82D;
	Mon, 26 Apr 2021 12:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C77536E82D;
 Mon, 26 Apr 2021 12:17:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD5F8A3ECB;
 Mon, 26 Apr 2021 12:17:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 26 Apr 2021 12:17:11 -0000
Message-ID: <161943943177.18668.10132415127534999484@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210426093901.28937-1-matthew.auld@intel.com>
In-Reply-To: <20210426093901.28937-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/9=5D_drm/doc/rfc=3A_i915_DG1_uAPI?=
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

Series: series starting with [1/9] drm/doc/rfc: i915 DG1 uAPI
URL   : https://patchwork.freedesktop.org/series/89481/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ee8a4a1f34c3 drm/doc/rfc: i915 DG1 uAPI
-:54: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#54: 
new file mode 100644

-:59: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#59: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:1:
+/**

-:168: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#168: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:110:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE_EXT, struct drm_i915_gem_create_ext)

-:277: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#277: FILE: Documentation/gpu/rfc/i915_gem_lmem.rst:1:
+=========================

total: 0 errors, 4 warnings, 0 checks, 349 lines checked
2eca8595810e drm/i915: mark stolen as private
d92a1d8d104f drm/i915/query: Expose memory regions through the query uAPI
87b7d065f3e8 drm/i915: rework gem_create flow for upcoming extensions
-:129: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#129: FILE: drivers/gpu/drm/i915/gem/i915_gem_create.c:106:
+			     intel_memory_region_by_type(to_i915(dev),
+							      mem_type),

total: 0 errors, 0 warnings, 1 checks, 136 lines checked
cfa621ce4b04 drm/i915/uapi: introduce drm_i915_gem_create_ext
-:150: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#150: FILE: include/uapi/drm/i915_drm.h:442:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE_EXT, struct drm_i915_gem_create_ext)

total: 0 errors, 1 warnings, 0 checks, 140 lines checked
089ef46cc581 drm/i915/uapi: implement object placement extension
fefa23e6149b drm/i915/lmem: support optional CPU clearing for special internal use
-:77: WARNING:MEMORY_BARRIER: memory barrier without comment
#77: FILE: drivers/gpu/drm/i915/gem/i915_gem_region.c:117:
+		wmb();

-:113: WARNING:LINE_SPACING: Missing a blank line after declarations
#113: FILE: drivers/gpu/drm/i915/selftests/intel_memory_region.c:637:
+	struct drm_i915_private *i915 = arg;
+	I915_RND_STATE(prng);

total: 0 errors, 2 warnings, 0 checks, 156 lines checked
1c030fab48e7 drm/i915/gem: clear userspace buffers for LMEM
de8c03274eb3 drm/i915/gem: hide new uAPI behind CONFIG_BROKEN


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
