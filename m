Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 969216D2ED0
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Apr 2023 09:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD4910E0A2;
	Sat,  1 Apr 2023 07:03:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 774BB10E064;
 Sat,  1 Apr 2023 07:03:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C19DA0BCB;
 Sat,  1 Apr 2023 07:03:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Sat, 01 Apr 2023 07:03:57 -0000
Message-ID: <168033263701.8631.12722719504393707412@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230401063830.438127-1-fei.yang@intel.com>
In-Reply-To: <20230401063830.438127-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Define_MOCS_and_PAT_tables_for_MTL?=
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

Series: drm/i915/mtl: Define MOCS and PAT tables for MTL
URL   : https://patchwork.freedesktop.org/series/115980/
State : warning

== Summary ==

Error: dim checkpatch failed
4e6dff890525 drm/i915/mtl: Define MOCS and PAT tables for MTL
-:156: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#156: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:229:
+	GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);

total: 0 errors, 1 warnings, 0 checks, 365 lines checked
fcee17736586 drm/i915/mtl: workaround coherency issue for Media
e18ea467eb36 drm/i915/mtl: end support for set caching ioctl
f424e91e447c drm/i915: preparation for using PAT index
1ec5d5d39c8f drm/i915: use pat_index instead of cache_level
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
cached, uncached, or writethrough. For these simple cases, using cache_level

-:637: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#637: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:878:
+					      i915_gem_get_pat_index(vm->i915,
+							I915_CACHE_NONE));

-:907: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#907: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:1303:
+					 i915_gem_get_pat_index(vm->i915,
+							I915_CACHE_NONE),

-:1605: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1605: FILE: drivers/gpu/drm/i915/i915_gem.c:424:
+					i915_gem_object_get_dma_address(obj,
+							offset >> PAGE_SHIFT),

-:1620: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1620: FILE: drivers/gpu/drm/i915/i915_gem.c:606:
+					i915_gem_object_get_dma_address(obj,
+							offset >> PAGE_SHIFT),

-:1638: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1638: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1121:
+						i915_gem_get_pat_index(gt->i915,
+							I915_CACHE_NONE),

-:1644: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1644: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1126:
+						i915_gem_get_pat_index(gt->i915,
+							I915_CACHE_NONE),

-:1762: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1762: FILE: drivers/gpu/drm/i915/selftests/i915_gem.c:62:
+				     i915_gem_get_pat_index(i915,
+							I915_CACHE_NONE),

-:1808: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1808: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:361:
+					     i915_gem_get_pat_index(vm->i915,
+						     I915_CACHE_NONE),

-:1820: ERROR:CODE_INDENT: code indent should use tabs where possible
#1820: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:1382:
+^I^I^I^I^I                    I915_CACHE_NONE),$

-:1820: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1820: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:1382:
+				     i915_gem_get_pat_index(i915,
+					                    I915_CACHE_NONE),

-:1854: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1854: FILE: drivers/gpu/drm/i915/selftests/intel_memory_region.c:1075:
+					  i915_gem_get_pat_index(i915,
+							I915_CACHE_NONE),

total: 1 errors, 1 warnings, 10 checks, 1584 lines checked
9b8791e38e3b drm/i915: make sure correct pte encode is used
-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:64:
+static u64 gen12_pte_encode(dma_addr_t addr,
 			  unsigned int pat_index,

total: 0 errors, 0 warnings, 1 checks, 18 lines checked
01905d6d5429 drm/i915: Allow user to set cache at BO creation


