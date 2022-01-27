Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FE749E778
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 17:27:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7456310E186;
	Thu, 27 Jan 2022 16:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 709C910E14F;
 Thu, 27 Jan 2022 16:27:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E533A0003;
 Thu, 27 Jan 2022 16:27:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 27 Jan 2022 16:27:09 -0000
Message-ID: <164330082942.23661.12923252495926857503@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220126152155.3070602-1-matthew.auld@intel.com>
In-Reply-To: <20220126152155.3070602-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Initial_support_for_small_BAR_recovery_=28rev2=29?=
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

Series: Initial support for small BAR recovery (rev2)
URL   : https://patchwork.freedesktop.org/series/99370/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
79d8983444bd drm: improve drm_buddy_alloc function
-:399: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#399: FILE: drivers/gpu/drm/drm_buddy.c:586:
+		BUG_ON(order > mm->max_order);

-:400: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#400: FILE: drivers/gpu/drm/drm_buddy.c:587:
+		BUG_ON(order < min_order);

-:527: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#527: FILE: drivers/gpu/drm/i915/i915_ttm_buddy_manager.c:88:
+	err = drm_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT,
+				    (u64)lpfn << PAGE_SHIFT,

total: 0 errors, 2 warnings, 1 checks, 545 lines checked
6dc3c985eacd drm: implement top-down allocation method
e605325bbf64 drm: implement a method to free unused pages
47c3bce606dc drm/i915: add io_size plumbing
-:130: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#130: FILE: drivers/gpu/drm/i915/gt/intel_region_lmem.c:238:
+	drm_info(&i915->drm, "Local memory IO size: %pa\n",
+		&mem->io_size);

total: 0 errors, 0 warnings, 1 checks, 187 lines checked
cca7939f2405 drm/i915/ttm: require mappable by default
df4042582f26 drm/i915: add I915_BO_ALLOC_TOPDOWN
ff7057eb8255 drm/i915/buddy: track available visible size
f4a1164429c0 drm/i915/buddy: adjust res->start
e5a7b8b99e3f drm/i915/buddy: tweak 2big check
b0e6287c35d4 drm/i915/selftests: mock test io_size
-:62: WARNING:LINE_SPACING: Missing a blank line after declarations
#62: FILE: drivers/gpu/drm/i915/selftests/intel_memory_region.c:548:
+	u64 size;
+	I915_RND_STATE(prng);

total: 0 errors, 1 warnings, 0 checks, 161 lines checked
0e8a73f5659b drm/i915/ttm: tweak priority hint selection
014087d60481 drm/i915/ttm: make eviction mappable aware
-:9: WARNING:REPEATED_WORD: Possible repeated word: 'some'
#9: 
If we need to make room for some some mappable object, then we should

total: 0 errors, 1 warnings, 0 checks, 97 lines checked
c7845103a490 drm/i915/ttm: mappable migration on fault
-:38: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#38: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:651:
 {
+

total: 0 errors, 0 warnings, 1 checks, 104 lines checked
e5b383985e79 drm/i915/selftests: exercise mmap migration
-:119: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#119: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:1091:
+	pr_info("igt_mmap(%s, %d) @ %lx\n",
+		 obj->mm.region->name, I915_MMAP_TYPE_FIXED, addr);

-:182: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#182: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:1154:
+#define IGT_MMAP_MIGRATE_TOPDOWN     (1<<0)
                                        ^

-:183: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#183: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:1155:
+#define IGT_MMAP_MIGRATE_FILL        (1<<1)
                                        ^

-:184: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#184: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:1156:
+#define IGT_MMAP_MIGRATE_EVICTABLE   (1<<2)
                                        ^

-:185: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#185: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:1157:
+#define IGT_MMAP_MIGRATE_UNFAULTABLE (1<<3)
                                        ^

total: 0 errors, 0 warnings, 5 checks, 324 lines checked
567893e4397c drm/i915/selftests: handle allocation failures
945c8984a773 drm/i915/create: apply ALLOC_TOPDOWN by default
c22dde3a1dd4 drm/i915/uapi: add NEEDS_CPU_ACCESS hint
-:118: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#118: FILE: include/uapi/drm/i915_drm.h:3189:
+#define I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS (1<<0)
                                                     ^

total: 0 errors, 0 warnings, 1 checks, 89 lines checked
9c603d6a5c48 drm/i915/uapi: forbid ALLOC_TOPDOWN for error capture
-:17: WARNING:BAD_SIGN_OFF: Duplicate signature
#17: 
Reported-by: kernel test robot <lkp@intel.com>

total: 0 errors, 1 warnings, 0 checks, 35 lines checked
906ed97314dd drm/i915/lmem: don't treat small BAR as an error
178f79cfba54 HAX: DG1 small BAR


