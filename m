Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9966DD128
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 06:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80E8E10E4A2;
	Tue, 11 Apr 2023 04:51:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBAEC10E490;
 Tue, 11 Apr 2023 04:51:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3DB22A7DFF;
 Tue, 11 Apr 2023 04:51:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Tue, 11 Apr 2023 04:51:12 -0000
Message-ID: <168118867221.13170.10992704937885850067@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230411042613.3178711-1-fei.yang@intel.com>
In-Reply-To: <20230411042613.3178711-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Define_MOCS_and_PAT_tables_for_MTL_=28rev3?=
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

Series: drm/i915/mtl: Define MOCS and PAT tables for MTL (rev3)
URL   : https://patchwork.freedesktop.org/series/115980/
State : warning

== Summary ==

Error: dim checkpatch failed
b700f5f3cac2 drm/i915/mtl: Set has_llc=0
4f5011f8f265 drm/i915/mtl: Define MOCS and PAT tables for MTL
5da2369e46c7 drm/i915/mtl: Add PTE encode function
-:151: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#151: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:229:
+	GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);

total: 0 errors, 1 warnings, 0 checks, 164 lines checked
e379bfdaecf8 drm/i915/mtl: workaround coherency issue for Media
1534c2e76dce drm/i915/mtl: end support for set caching ioctl
a75561772cb5 drm/i915: preparation for using PAT index
303dbfdc9541 drm/i915: use pat_index instead of cache_level
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
cached, uncached, or writethrough. For these simple cases, using cache_level

-:663: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#663: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:878:
+					      i915_gem_get_pat_index(vm->i915,
+							I915_CACHE_NONE));

-:933: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#933: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:1303:
+					 i915_gem_get_pat_index(vm->i915,
+							I915_CACHE_NONE),

-:1631: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1631: FILE: drivers/gpu/drm/i915/i915_gem.c:424:
+					i915_gem_object_get_dma_address(obj,
+							offset >> PAGE_SHIFT),

-:1646: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1646: FILE: drivers/gpu/drm/i915/i915_gem.c:606:
+					i915_gem_object_get_dma_address(obj,
+							offset >> PAGE_SHIFT),

-:1664: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1664: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1121:
+						i915_gem_get_pat_index(gt->i915,
+							I915_CACHE_NONE),

-:1670: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1670: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1126:
+						i915_gem_get_pat_index(gt->i915,
+							I915_CACHE_NONE),

-:1788: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1788: FILE: drivers/gpu/drm/i915/selftests/i915_gem.c:62:
+				     i915_gem_get_pat_index(i915,
+							I915_CACHE_NONE),

-:1834: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1834: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:361:
+					     i915_gem_get_pat_index(vm->i915,
+						     I915_CACHE_NONE),

-:1846: ERROR:CODE_INDENT: code indent should use tabs where possible
#1846: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:1382:
+^I^I^I^I^I                    I915_CACHE_NONE),$

-:1846: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1846: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:1382:
+				     i915_gem_get_pat_index(i915,
+					                    I915_CACHE_NONE),

-:1880: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1880: FILE: drivers/gpu/drm/i915/selftests/intel_memory_region.c:1075:
+					  i915_gem_get_pat_index(i915,
+							I915_CACHE_NONE),

total: 1 errors, 1 warnings, 10 checks, 1610 lines checked
80f0247ce6e1 drm/i915: making mtl pte encode generic for gen12
-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:64:
+static u64 gen12_pte_encode(dma_addr_t addr,
 			  unsigned int pat_index,

total: 0 errors, 0 warnings, 1 checks, 18 lines checked
85babdb1e654 drm/i915: Allow user to set cache at BO creation


