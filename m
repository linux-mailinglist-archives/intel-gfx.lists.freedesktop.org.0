Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46734220BB4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550F16EAA5;
	Wed, 15 Jul 2020 11:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 384586EAA5;
 Wed, 15 Jul 2020 11:22:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3207CA47E1;
 Wed, 15 Jul 2020 11:22:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 15 Jul 2020 11:22:05 -0000
Message-ID: <159481212517.3436.10709721865171650131@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200714114516.3073222-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200714114516.3073222-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/23=5D_Revert_=22drm/i915/gem=3A_?=
 =?utf-8?q?Async_GPU_relocations_only=22_=28rev3=29?=
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

Series: series starting with [01/23] Revert "drm/i915/gem: Async GPU relocations only" (rev3)
URL   : https://patchwork.freedesktop.org/series/79470/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
814752a982cc Revert "drm/i915/gem: Async GPU relocations only"
-:113: WARNING:MEMORY_BARRIER: memory barrier without comment
#113: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1109:
+			mb();

-:161: WARNING:MEMORY_BARRIER: memory barrier without comment
#161: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1157:
+			mb();

-:181: CHECK:SPACING: No space is necessary after a cast
#181: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1177:
+		io_mapping_unmap_atomic((void __force __iomem *) unmask_page(cache->vaddr));

-:260: WARNING:MEMORY_BARRIER: memory barrier without comment
#260: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1256:
+			mb();

-:274: CHECK:BRACES: Unbalanced braces around else statement
#274: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1270:
+	} else

total: 0 errors, 3 warnings, 2 checks, 455 lines checked
6392eb4a8da1 drm/i915: Revert relocation chaining commits.
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This reverts commit 964a9b0f611ee ("drm/i915/gem: Use chained reloc batches")

-:221: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#221: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1313:
+	if (cache->rq_size > PAGE_SIZE/sizeof(u32) - (len + 1))
 	                              ^

total: 0 errors, 1 warnings, 1 checks, 281 lines checked
d7d81d2155e7 Revert "drm/i915/gem: Drop relocation slowpath".
-:131: WARNING:LINE_SPACING: Missing a blank line after declarations
#131: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1705:
+		int err = __get_user(c, addr);
+		if (err)

total: 0 errors, 1 warnings, 0 checks, 320 lines checked
b7e72e95ad06 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:445: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#445: FILE: drivers/gpu/drm/i915/i915_gem.c:1359:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 441 lines checked
768f25a145c6 drm/i915: Remove locking from i915_gem_object_prepare_read/write
b874980be3e5 drm/i915: Parse command buffer earlier in eb_relocate(slow)
f9c42a704f73 Revert "drm/i915/gem: Split eb_vma into its own allocation"
fbcda5740e01 drm/i915: Use per object locking in execbuf, v12.
-:457: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#457: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1410:
+static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 			      struct i915_vma *vma,

-:477: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#477: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1483:
+static int reloc_entry_gpu(struct i915_execbuffer *eb,
 			    struct i915_vma *vma,

-:489: ERROR:TRAILING_WHITESPACE: trailing whitespace
#489: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1508:
+^I$

-:759: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#759: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2878:
+	eb.reloc_pool = eb.batch_pool = NULL;

total: 1 errors, 0 warnings, 3 checks, 865 lines checked
0f2665b24b41 drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 190 lines checked
3f3703db8b84 drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1097:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
7cd4ce6f551a drm/i915: Nuke arguments to eb_pin_engine
47814daad689 drm/i915: Pin engine before pinning all objects, v5.
66a29b323d43 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:125: CHECK:LINE_SPACING: Please don't use multiple blank lines
#125: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:338: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#338: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3483:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 434 lines checked
be73070bd265 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:595:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:213: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#213: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2400:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 863 lines checked
f2b7cbca7e7f drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
712ac1f8fef9 drm/i915: Kill last user of intel_context_create_request outside of selftests
cc5129f97ad1 drm/i915: Convert i915_perf to ww locking as well
eafdc370ed83 drm/i915: Dirty hack to fix selftests locking inversion
7ba3d7cac694 drm/i915/selftests: Fix locking inversion in lrc selftest.
f6ce969fa447 drm/i915: Use ww pinning for intel_context_create_request()
f990f754a4db drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v3.
385723b328a7 drm/i915: Add ww locking to vm_fault_gtt
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
0bd31d2bfd05 drm/i915: Add ww locking to pin_to_display_plane
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 129 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
