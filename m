Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E6735DFD9
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 15:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F2F889B57;
	Tue, 13 Apr 2021 13:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 22B2D89B57;
 Tue, 13 Apr 2021 13:12:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18434A47DB;
 Tue, 13 Apr 2021 13:12:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 13 Apr 2021 13:12:11 -0000
Message-ID: <161831953107.8797.3019543543697414595@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210413114706.163279-1-matthew.auld@intel.com>
In-Reply-To: <20210413114706.163279-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/doc/rfc=3A_i915_DG1_uAPI_=28rev2=29?=
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

Series: drm/doc/rfc: i915 DG1 uAPI (rev2)
URL   : https://patchwork.freedesktop.org/series/88958/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8258e1583be6 drm/doc/rfc: i915 DG1 uAPI
-:19: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#19: 
new file mode 100644

-:24: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#24: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:1:
+/* The new query_id for struct drm_i915_query_item */

-:94: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#94: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:71:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE_EXT, struct drm_i915_gem_create_ext)

-:139: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#139: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:116:
+#define I915_OBJECT_PARAM  (1ull<<32)
                                 ^

-:174: CHECK:LINE_SPACING: Please don't use multiple blank lines
#174: FILE: Documentation/gpu/rfc/i915_gem_lmem.h:151:
+
+

-:181: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#181: FILE: Documentation/gpu/rfc/i915_gem_lmem.rst:1:
+=========================

total: 0 errors, 4 warnings, 2 checks, 277 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
