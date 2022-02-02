Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 301294A69B0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 02:43:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 565BD10E271;
	Wed,  2 Feb 2022 01:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A673C10E14C;
 Wed,  2 Feb 2022 01:43:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1B3AAA917;
 Wed,  2 Feb 2022 01:43:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Wed, 02 Feb 2022 01:43:29 -0000
Message-ID: <164376620963.12658.7395906524498089033@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220202011136.1387951-1-vivek.kasireddy@intel.com>
In-Reply-To: <20220202011136.1387951-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/mm=3A_Add_an_iterator_to?=
 =?utf-8?q?_optimally_walk_over_holes_for_an_allocation?=
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

Series: series starting with [1/2] drm/mm: Add an iterator to optimally walk over holes for an allocation
URL   : https://patchwork.freedesktop.org/series/99597/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
737921ca12bb drm/mm: Add an iterator to optimally walk over holes for an allocation
-:9: WARNING:TYPO_SPELLING: 'efficently' may be misspelled - perhaps 'efficiently'?
#9: 
size by efficently traversing the rbtree associated with the given
        ^^^^^^^^^^

-:132: WARNING:TYPO_SPELLING: 'efficently' may be misspelled - perhaps 'efficiently'?
#132: FILE: include/drm/drm_mm.h:426:
+ * appropriate holes within the given range by efficently traversing the
                                                ^^^^^^^^^^

-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#135: FILE: include/drm/drm_mm.h:429:
+#define drm_mm_for_each_best_hole(pos, mm, range_start, range_end, size, mode) \
+	for (pos = drm_mm_first_hole(mm, range_start, range_end, size, mode); \
+	     pos; \
+	     pos = mode & DRM_MM_INSERT_ONCE ? \
+	     NULL : drm_mm_next_hole(mm, hole, size, mode))

-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mm' - possible side-effects?
#135: FILE: include/drm/drm_mm.h:429:
+#define drm_mm_for_each_best_hole(pos, mm, range_start, range_end, size, mode) \
+	for (pos = drm_mm_first_hole(mm, range_start, range_end, size, mode); \
+	     pos; \
+	     pos = mode & DRM_MM_INSERT_ONCE ? \
+	     NULL : drm_mm_next_hole(mm, hole, size, mode))

-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'size' - possible side-effects?
#135: FILE: include/drm/drm_mm.h:429:
+#define drm_mm_for_each_best_hole(pos, mm, range_start, range_end, size, mode) \
+	for (pos = drm_mm_first_hole(mm, range_start, range_end, size, mode); \
+	     pos; \
+	     pos = mode & DRM_MM_INSERT_ONCE ? \
+	     NULL : drm_mm_next_hole(mm, hole, size, mode))

-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mode' - possible side-effects?
#135: FILE: include/drm/drm_mm.h:429:
+#define drm_mm_for_each_best_hole(pos, mm, range_start, range_end, size, mode) \
+	for (pos = drm_mm_first_hole(mm, range_start, range_end, size, mode); \
+	     pos; \
+	     pos = mode & DRM_MM_INSERT_ONCE ? \
+	     NULL : drm_mm_next_hole(mm, hole, size, mode))

total: 0 errors, 2 warnings, 4 checks, 109 lines checked
6b91082aa6e9 drm/i915/gem: Don't try to map and fence large scanout buffers (v5)


