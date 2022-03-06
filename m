Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4235A4CE7E1
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Mar 2022 01:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1EFA10E55D;
	Sun,  6 Mar 2022 00:13:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0230C10E557;
 Sun,  6 Mar 2022 00:13:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F249CAADD1;
 Sun,  6 Mar 2022 00:13:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Sun, 06 Mar 2022 00:13:24 -0000
Message-ID: <164652560497.16579.12634250542569546323@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220305233615.126109-1-vivek.kasireddy@intel.com>
In-Reply-To: <20220305233615.126109-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/mm=3A_Add_an_iterator_to_optimally_walk_over_holes_suit?=
 =?utf-8?q?able_for_an_allocation?=
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

Series: drm/mm: Add an iterator to optimally walk over holes suitable for an allocation
URL   : https://patchwork.freedesktop.org/series/101076/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ea05608e3596 drm/mm: Add an iterator to optimally walk over holes for an allocation (v5)
-:157: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#157: FILE: include/drm/drm_mm.h:430:
+#define drm_mm_for_each_suitable_hole(pos, mm, range_start, range_end, \
+				      size, mode) \
+	for (pos = __drm_mm_first_hole(mm, range_start, range_end, size, \
+				       mode & ~DRM_MM_INSERT_ONCE); \
+	     pos; \
+	     pos = mode & DRM_MM_INSERT_ONCE ? \
+	     NULL : __drm_mm_next_hole(mm, pos, size, \
+				       mode & ~DRM_MM_INSERT_ONCE))

-:157: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mm' - possible side-effects?
#157: FILE: include/drm/drm_mm.h:430:
+#define drm_mm_for_each_suitable_hole(pos, mm, range_start, range_end, \
+				      size, mode) \
+	for (pos = __drm_mm_first_hole(mm, range_start, range_end, size, \
+				       mode & ~DRM_MM_INSERT_ONCE); \
+	     pos; \
+	     pos = mode & DRM_MM_INSERT_ONCE ? \
+	     NULL : __drm_mm_next_hole(mm, pos, size, \
+				       mode & ~DRM_MM_INSERT_ONCE))

-:157: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'size' - possible side-effects?
#157: FILE: include/drm/drm_mm.h:430:
+#define drm_mm_for_each_suitable_hole(pos, mm, range_start, range_end, \
+				      size, mode) \
+	for (pos = __drm_mm_first_hole(mm, range_start, range_end, size, \
+				       mode & ~DRM_MM_INSERT_ONCE); \
+	     pos; \
+	     pos = mode & DRM_MM_INSERT_ONCE ? \
+	     NULL : __drm_mm_next_hole(mm, pos, size, \
+				       mode & ~DRM_MM_INSERT_ONCE))

-:157: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mode' - possible side-effects?
#157: FILE: include/drm/drm_mm.h:430:
+#define drm_mm_for_each_suitable_hole(pos, mm, range_start, range_end, \
+				      size, mode) \
+	for (pos = __drm_mm_first_hole(mm, range_start, range_end, size, \
+				       mode & ~DRM_MM_INSERT_ONCE); \
+	     pos; \
+	     pos = mode & DRM_MM_INSERT_ONCE ? \
+	     NULL : __drm_mm_next_hole(mm, pos, size, \
+				       mode & ~DRM_MM_INSERT_ONCE))

-:157: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'mode' may be better as '(mode)' to avoid precedence issues
#157: FILE: include/drm/drm_mm.h:430:
+#define drm_mm_for_each_suitable_hole(pos, mm, range_start, range_end, \
+				      size, mode) \
+	for (pos = __drm_mm_first_hole(mm, range_start, range_end, size, \
+				       mode & ~DRM_MM_INSERT_ONCE); \
+	     pos; \
+	     pos = mode & DRM_MM_INSERT_ONCE ? \
+	     NULL : __drm_mm_next_hole(mm, pos, size, \
+				       mode & ~DRM_MM_INSERT_ONCE))

total: 0 errors, 0 warnings, 5 checks, 114 lines checked
a751d6631079 drm/i915/gem: Don't try to map and fence large scanout buffers (v9)


