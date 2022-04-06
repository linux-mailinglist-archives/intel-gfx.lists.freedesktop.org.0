Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DC44F4EA1
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 03:50:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51DBA10E35D;
	Wed,  6 Apr 2022 01:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B27B010E35D;
 Wed,  6 Apr 2022 01:50:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AFDEFA0078;
 Wed,  6 Apr 2022 01:50:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Casey Bowman" <casey.g.bowman@intel.com>
Date: Wed, 06 Apr 2022 01:50:23 -0000
Message-ID: <164920982369.5451.15652264347949160846@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220330234809.1218210-1-casey.g.bowman@intel.com>
In-Reply-To: <20220330234809.1218210-1-casey.g.bowman@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Splitting_intel-gtt_calls_for_non-x86_platforms_=28rev8=29?=
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

Series: Splitting intel-gtt calls for non-x86 platforms (rev8)
URL   : https://patchwork.freedesktop.org/series/101552/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4091a3a0963e drm/i915/gt: Split intel-gtt functions by arch
-:368: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#368: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:221:
+void intel_ggtt_bind_vma(struct i915_address_space *vm,
 			  struct i915_vm_pt_stash *stash,

-:377: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#377: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:245:
+void intel_ggtt_unbind_vma(struct i915_address_space *vm,
 			    struct i915_vma_resource *vma_res)

-:852: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#852: 
new file mode 100644

-:1174: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1174: FILE: drivers/gpu/drm/i915/gt/intel_gt_gmch.c:318:
+static void gen5_ggtt_clear_range(struct i915_address_space *vm,
+					 u64 start, u64 length)

-:1398: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1398: FILE: drivers/gpu/drm/i915/gt/intel_gt_gmch.c:542:
+	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
 	                            ^

-:1398: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1398: FILE: drivers/gpu/drm/i915/gt/intel_gt_gmch.c:542:
+	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
 	                                                              ^

-:1540: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1540: FILE: drivers/gpu/drm/i915/gt/intel_gt_gmch.h:24:
+}
+static inline int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)

-:1545: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1545: FILE: drivers/gpu/drm/i915/gt/intel_gt_gmch.h:29:
+}
+static inline int intel_gt_gmch_gen6_probe(struct i915_ggtt *ggtt)

-:1550: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1550: FILE: drivers/gpu/drm/i915/gt/intel_gt_gmch.h:34:
+}
+static inline int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt)

-:1555: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1555: FILE: drivers/gpu/drm/i915/gt/intel_gt_gmch.h:39:
+}
+static inline int intel_gt_gmch_gen5_enable_hw(struct drm_i915_private *i915)

-:1572: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1572: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:553:
+void intel_ggtt_bind_vma(struct i915_address_space *vm,
+			  struct i915_vm_pt_stash *stash,

-:1577: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1577: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:558:
+void intel_ggtt_unbind_vma(struct i915_address_space *vm,
+			    struct i915_vma_resource *vma_res);

total: 0 errors, 1 warnings, 11 checks, 1520 lines checked
3640ccba6d63 drm/i915: Require INTEL_GTT to depend on X86


