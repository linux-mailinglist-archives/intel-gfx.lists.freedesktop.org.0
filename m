Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0898D4DE52C
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 03:30:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A3E10E0A6;
	Sat, 19 Mar 2022 02:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8954C10E055;
 Sat, 19 Mar 2022 02:30:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C494AA0EB;
 Sat, 19 Mar 2022 02:30:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Casey Bowman" <casey.g.bowman@intel.com>
Date: Sat, 19 Mar 2022 02:30:41 -0000
Message-ID: <164765704147.30528.15591019714741961587@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220319020042.306649-1-casey.g.bowman@intel.com>
In-Reply-To: <20220319020042.306649-1-casey.g.bowman@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Splitting_intel-gtt_calls_for_non-x86_platforms?=
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

Series: Splitting intel-gtt calls for non-x86 platforms
URL   : https://patchwork.freedesktop.org/series/101552/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
71b8a3999b05 drm/i915: Require INTEL_GTT to depend on X86
6fb28942812c drm/i915/gt: Split intel-gtt functions by arch
-:112: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#112: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:465:
+void ggtt_bind_vma(struct i915_address_space *vm,
 			  struct i915_vm_pt_stash *stash,

-:121: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#121: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:489:
+void ggtt_unbind_vma(struct i915_address_space *vm,
 			    struct i915_vma_resource *vma_res)

-:231: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#231: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:551:
+void ggtt_bind_vma(struct i915_address_space *vm,
+			  struct i915_vm_pt_stash *stash,

-:236: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#236: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:556:
+void ggtt_unbind_vma(struct i915_address_space *vm,
+			    struct i915_vma_resource *vma_res);

-:249: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#249: 
new file mode 100644

-:270: WARNING:MEMORY_BARRIER: memory barrier without comment
#270: FILE: drivers/gpu/drm/i915/gt/intel_gtt_support.c:17:
+	wmb();

-:305: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#305: FILE: drivers/gpu/drm/i915/gt/intel_gtt_support.c:52:
+static void i915_ggtt_clear_range(struct i915_address_space *vm,
+					 u64 start, u64 length)

-:397: WARNING:RETURN_VOID: void function return statements are not generally useful
#397: FILE: drivers/gpu/drm/i915/gt/intel_gtt_support.h:25:
+	return;
+}

-:398: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#398: FILE: drivers/gpu/drm/i915/gt/intel_gtt_support.h:26:
+}
+static inline int i915_gmch_probe(struct i915_ggtt *ggtt)

total: 0 errors, 3 warnings, 6 checks, 355 lines checked


