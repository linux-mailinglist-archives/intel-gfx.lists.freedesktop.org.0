Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DEC2404E6
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 12:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843206E3E3;
	Mon, 10 Aug 2020 10:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02C546E3E3;
 Mon, 10 Aug 2020 10:48:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0548A47DB;
 Mon, 10 Aug 2020 10:48:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 10 Aug 2020 10:48:34 -0000
Message-ID: <159705651495.17061.16034225232739557745@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Correct_the_locking_hierarchy_in_gem=2E?=
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

Series: drm/i915: Correct the locking hierarchy in gem.
URL   : https://patchwork.freedesktop.org/series/80465/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3f559a19757d Revert "drm/i915/gem: Async GPU relocations only"
-:121: WARNING:MEMORY_BARRIER: memory barrier without comment
#121: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1120:
+			mb();

-:170: WARNING:MEMORY_BARRIER: memory barrier without comment
#170: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1169:
+			mb();

-:194: CHECK:SPACING: No space is necessary after a cast
#194: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1193:
+		io_mapping_unmap_atomic((void __force __iomem *) unmask_page(cache->vaddr));

-:273: WARNING:MEMORY_BARRIER: memory barrier without comment
#273: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1272:
+			mb();

-:287: CHECK:BRACES: Unbalanced braces around else statement
#287: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1286:
+	} else

total: 0 errors, 3 warnings, 2 checks, 460 lines checked
6191ac1c5f4f drm/i915: Revert relocation chaining commits.
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This reverts commit 964a9b0f611ee ("drm/i915/gem: Use chained reloc batches")

-:223: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1329:
+	if (cache->rq_size > PAGE_SIZE/sizeof(u32) - (len + 1))
 	                              ^

total: 0 errors, 1 warnings, 1 checks, 281 lines checked
2a596bce4dc9 Revert "drm/i915/gem: Drop relocation slowpath".
-:106: WARNING:LINE_SPACING: Missing a blank line after declarations
#106: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1716:
+		int err = __get_user(c, addr);
+		if (err)

total: 0 errors, 1 warnings, 0 checks, 294 lines checked
3a4990fc1872 Revert "drm/i915/gem: Split eb_vma into its own allocation"
40964880b649 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:449: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#449: FILE: drivers/gpu/drm/i915/i915_gem.c:1341:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 441 lines checked
3907a97afcff drm/i915: Remove locking from i915_gem_object_prepare_read/write
ace3c9d14a74 drm/i915: Parse command buffer earlier in eb_relocate(slow)
3ae1cd89fbf8 drm/i915: Use per object locking in execbuf, v12.
-:457: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#457: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1421:
+static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 			      struct i915_vma *vma,

-:477: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#477: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1494:
+static int reloc_entry_gpu(struct i915_execbuffer *eb,
 			    struct i915_vma *vma,

-:489: ERROR:TRAILING_WHITESPACE: trailing whitespace
#489: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1519:
+^I$

-:759: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#759: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3059:
+	eb.reloc_pool = eb.batch_pool = NULL;

total: 1 errors, 0 warnings, 3 checks, 865 lines checked
211c5c005fbd drm/i915: make lockdep slightly happier about execbuf.
5151defa01f4 drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 190 lines checked
26aaa764574d drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1109:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
aaf565ab7bd0 drm/i915: Nuke arguments to eb_pin_engine
afe888b894cd drm/i915: Pin engine before pinning all objects, v5.
081dd6905a83 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:125: CHECK:LINE_SPACING: Please don't use multiple blank lines
#125: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:338: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#338: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3477:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 434 lines checked
7fb4d865bd7c drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:607:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:213: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#213: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2418:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 863 lines checked
9048195cf6c7 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
9fd13dda52fb drm/i915: Kill last user of intel_context_create_request outside of selftests
7c6d6850069b drm/i915: Convert i915_perf to ww locking as well
46c296c2801b drm/i915: Dirty hack to fix selftests locking inversion
b7a6a41b9a52 drm/i915/selftests: Fix locking inversion in lrc selftest.
869646e75ad8 drm/i915: Use ww pinning for intel_context_create_request()
bf3e3ae1d022 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v3.
927b287eeffb drm/i915: Add ww locking to vm_fault_gtt
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
1745c824bca2 drm/i915: Add ww locking to pin_to_display_plane
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 129 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
