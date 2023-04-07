Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF436DA975
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Apr 2023 09:40:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0293D10ED5F;
	Fri,  7 Apr 2023 07:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C63510E27E;
 Fri,  7 Apr 2023 07:40:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 56ECBAADE3;
 Fri,  7 Apr 2023 07:40:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Fri, 07 Apr 2023 07:40:12 -0000
Message-ID: <168085321231.5207.13543858534372815312@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230407071236.1960642-1-fei.yang@intel.com>
In-Reply-To: <20230407071236.1960642-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Define_MOCS_and_PAT_tables_for_MTL_=28rev2?=
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

Series: drm/i915/mtl: Define MOCS and PAT tables for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/115980/
State : warning

== Summary ==

Error: dim checkpatch failed
30f069e7ed60 drm/i915/mtl: Define MOCS and PAT tables for MTL
-:86: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#86: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:229:
+	GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);

total: 0 errors, 1 warnings, 0 checks, 278 lines checked
af63be507ed7 drm/i915/mtl: enforce mtl PTE encode
09deb641c224 drm/i915/mtl: workaround coherency issue for Media
82f2bc853551 drm/i915/mtl: end support for set caching ioctl
10958b9a7f6b drm/i915: preparation for using PAT index
a7f3b6eddaf0 drm/i915: use pat_index instead of cache_level
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
7da7b8aa70ef drm/i915: making mtl pte encode generic for gen12
-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:64:
+static u64 gen12_pte_encode(dma_addr_t addr,
 			  unsigned int pat_index,

total: 0 errors, 0 warnings, 1 checks, 18 lines checked
e47d0e4f8bf7 drm/i915: Allow user to set cache at BO creation


