Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3104635CA38
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 17:39:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FD6689D63;
	Mon, 12 Apr 2021 15:39:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5732189D63;
 Mon, 12 Apr 2021 15:39:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E106A363D;
 Mon, 12 Apr 2021 15:39:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 12 Apr 2021 15:39:48 -0000
Message-ID: <161824198829.8702.2379179197081845313@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210412121802.57131-1-matthew.auld@intel.com>
In-Reply-To: <20210412121802.57131-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/doc/rfc=3A_i915_DG1_uAPI?=
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

Series: drm/doc/rfc: i915 DG1 uAPI
URL   : https://patchwork.freedesktop.org/series/88958/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e8f92650b42d drm/doc/rfc: i915 DG1 uAPI
-:14: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#14: 
new file mode 100644

-:19: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#19: FILE: Documentation/gpu/rfc/i915_create_ext.c:1:
+struct drm_i915_gem_create_ext {

-:55: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#55: FILE: Documentation/gpu/rfc/i915_create_ext.c:37:
+#define I915_OBJECT_PARAM  (1ull<<32)
                                 ^

-:73: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#73: FILE: Documentation/gpu/rfc/i915_create_ext_placements.c:1:
+#define I915_OBJECT_PARAM  (1ull<<32)

-:73: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#73: FILE: Documentation/gpu/rfc/i915_create_ext_placements.c:1:
+#define I915_OBJECT_PARAM  (1ull<<32)
                                 ^

-:98: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#98: FILE: Documentation/gpu/rfc/i915_region_query.c:1:
+enum drm_i915_gem_memory_class {

total: 0 errors, 4 warnings, 2 checks, 215 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
