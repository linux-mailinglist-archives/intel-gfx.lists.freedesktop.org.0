Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0806D6E46F9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 14:00:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F5910E467;
	Mon, 17 Apr 2023 11:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0723110E467;
 Mon, 17 Apr 2023 11:59:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62D5AAADD2;
 Mon, 17 Apr 2023 11:59:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Mon, 17 Apr 2023 11:59:56 -0000
Message-ID: <168173279637.24902.9121544494729929306@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230417062503.1884465-1-fei.yang@intel.com>
In-Reply-To: <20230417062503.1884465-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Define_MOCS_and_PAT_tables_for_MTL_=28rev5?=
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

Series: drm/i915/mtl: Define MOCS and PAT tables for MTL (rev5)
URL   : https://patchwork.freedesktop.org/series/115980/
State : warning

== Summary ==

Error: dim checkpatch failed
04d4f946f5f0 drm/i915/mtl: Set has_llc=0
f44a8a034a83 drm/i915/mtl: Define MOCS and PAT tables for MTL
-:63: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#63: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:486:
+
+}

total: 0 errors, 0 warnings, 1 checks, 247 lines checked
5496af3927f8 drm/i915/mtl: Add PTE encode function
-:151: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#151: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:229:
+	GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);

total: 0 errors, 1 warnings, 0 checks, 164 lines checked
72e4d658a8e9 drm/i915/mtl: workaround coherency issue for Media
b9a188850588 drm/i915/mtl: end support for set caching ioctl
eaa559214e8c drm/i915: preparation for using PAT index
-:422: CHECK:LINE_SPACING: Please don't use multiple blank lines
#422: FILE: drivers/gpu/drm/i915/selftests/mock_gem_device.c:186:
+
+

total: 0 errors, 0 warnings, 1 checks, 335 lines checked
932e5c4abaa6 drm/i915: use pat_index instead of cache_level
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
cached, uncached, or writethrough. For these simple cases, using cache_level

-:651: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#651: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:873:
+					      i915_gem_get_pat_index(vm->i915,
+							I915_CACHE_NONE));

-:921: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#921: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:1303:
+					 i915_gem_get_pat_index(vm->i915,
+							I915_CACHE_NONE),

-:1619: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1619: FILE: drivers/gpu/drm/i915/i915_gem.c:424:
+					i915_gem_object_get_dma_address(obj,
+							offset >> PAGE_SHIFT),

-:1634: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1634: FILE: drivers/gpu/drm/i915/i915_gem.c:606:
+					i915_gem_object_get_dma_address(obj,
+							offset >> PAGE_SHIFT),

-:1652: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1652: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1121:
+						i915_gem_get_pat_index(gt->i915,
+							I915_CACHE_NONE),

-:1658: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1658: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1126:
+						i915_gem_get_pat_index(gt->i915,
+							I915_CACHE_NONE),

-:1776: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1776: FILE: drivers/gpu/drm/i915/selftests/i915_gem.c:62:
+				     i915_gem_get_pat_index(i915,
+							I915_CACHE_NONE),

-:1822: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1822: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:363:
+					     i915_gem_get_pat_index(vm->i915,
+						     I915_CACHE_NONE),

-:1834: ERROR:CODE_INDENT: code indent should use tabs where possible
#1834: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:1384:
+^I^I^I^I^I                    I915_CACHE_NONE),$

-:1834: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1834: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:1384:
+				     i915_gem_get_pat_index(i915,
+					                    I915_CACHE_NONE),

-:1868: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1868: FILE: drivers/gpu/drm/i915/selftests/intel_memory_region.c:1075:
+					  i915_gem_get_pat_index(i915,
+							I915_CACHE_NONE),

total: 1 errors, 1 warnings, 10 checks, 1599 lines checked
e50cbe9097b5 drm/i915: Allow user to set cache at BO creation


