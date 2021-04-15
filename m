Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 660CF361037
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 18:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A16566EA96;
	Thu, 15 Apr 2021 16:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80F166EA96;
 Thu, 15 Apr 2021 16:32:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6ED3FA73C9;
 Thu, 15 Apr 2021 16:32:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 15 Apr 2021 16:32:33 -0000
Message-ID: <161850435342.1078.18427226919711835541@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210415155958.391624-1-matthew.auld@intel.com>
In-Reply-To: <20210415155958.391624-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/4=5D_drm/i915/uapi=3A_hide_k?=
 =?utf-8?q?ernel_doc_warnings?=
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

Series: series starting with [v3,1/4] drm/i915/uapi: hide kernel doc warnings
URL   : https://patchwork.freedesktop.org/series/89121/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b67e5ba57e8a drm/i915/uapi: hide kernel doc warnings
e5bfc110caaa drm/i915/uapi: convert i915_user_extension to kernel doc
02474e90a224 drm/i915/uapi: convert i915_query and friend to kernel doc
3f2501d0f7a0 drm/doc/rfc: i915 DG1 uAPI
-:36: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#36: 
new file mode 100644

-:41: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#41: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:1:
+/*

-:49: ERROR:CODE_INDENT: code indent should use tabs where possible
#49: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:9:
+        __u64 query_id;$

-:49: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#49: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:9:
+        __u64 query_id;$

-:51: ERROR:CODE_INDENT: code indent should use tabs where possible
#51: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:11:
+        /*$

-:52: ERROR:CODE_INDENT: code indent should use tabs where possible
#52: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:12:
+         * When set to zero by userspace, this is filled with the size of the$

-:53: ERROR:CODE_INDENT: code indent should use tabs where possible
#53: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:13:
+         * data to be written at the data_ptr pointer. The kernel sets this$

-:54: ERROR:CODE_INDENT: code indent should use tabs where possible
#54: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:14:
+         * value to a negative value to signal an error on a particular query$

-:55: ERROR:CODE_INDENT: code indent should use tabs where possible
#55: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:15:
+         * item.$

-:56: ERROR:CODE_INDENT: code indent should use tabs where possible
#56: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:16:
+         */$

-:57: ERROR:CODE_INDENT: code indent should use tabs where possible
#57: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:17:
+        __s32 length;$

-:57: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#57: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:17:
+        __s32 length;$

-:59: ERROR:CODE_INDENT: code indent should use tabs where possible
#59: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:19:
+        __u32 flags;$

-:59: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#59: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:19:
+        __u32 flags;$

-:60: ERROR:CODE_INDENT: code indent should use tabs where possible
#60: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:20:
+        /*$

-:61: ERROR:CODE_INDENT: code indent should use tabs where possible
#61: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:21:
+         * Data will be written at the location pointed by data_ptr when the$

-:62: ERROR:CODE_INDENT: code indent should use tabs where possible
#62: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:22:
+         * value of length matches the length of the data to be written by the$

-:63: ERROR:CODE_INDENT: code indent should use tabs where possible
#63: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:23:
+         * kernel.$

-:64: ERROR:CODE_INDENT: code indent should use tabs where possible
#64: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:24:
+         */$

-:65: ERROR:CODE_INDENT: code indent should use tabs where possible
#65: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:25:
+        __u64 data_ptr;$

-:65: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#65: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:25:
+        __u64 data_ptr;$

-:69: ERROR:CODE_INDENT: code indent should use tabs where possible
#69: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:29:
+        __u32 num_items;$

-:69: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#69: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:29:
+        __u32 num_items;$

-:70: ERROR:CODE_INDENT: code indent should use tabs where possible
#70: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:30:
+        /*$

-:71: ERROR:CODE_INDENT: code indent should use tabs where possible
#71: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:31:
+         * Unused for now. Must be cleared to zero.$

-:72: ERROR:CODE_INDENT: code indent should use tabs where possible
#72: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:32:
+         */$

-:73: ERROR:CODE_INDENT: code indent should use tabs where possible
#73: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:33:
+        __u32 flags;$

-:73: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#73: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:33:
+        __u32 flags;$

-:74: ERROR:CODE_INDENT: code indent should use tabs where possible
#74: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:34:
+        /*$

-:75: ERROR:CODE_INDENT: code indent should use tabs where possible
#75: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:35:
+         * This points to an array of num_items drm_i915_query_item structures.$

-:76: ERROR:CODE_INDENT: code indent should use tabs where possible
#76: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:36:
+         */$

-:77: ERROR:CODE_INDENT: code indent should use tabs where possible
#77: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:37:
+        __u64 items_ptr;$

-:77: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#77: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:37:
+        __u64 items_ptr;$

-:194: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#194: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:154:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE_EXT, struct drm_i915_gem_create_ext)

-:302: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#302: FILE: Documentation/gpu/rfc/i915_gem_lmem.rst:1:
+=========================

total: 24 errors, 11 warnings, 0 checks, 401 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
