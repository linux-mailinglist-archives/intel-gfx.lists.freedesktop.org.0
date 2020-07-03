Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FF6213B8B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 16:12:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F93C6E282;
	Fri,  3 Jul 2020 14:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 596666E223;
 Fri,  3 Jul 2020 14:12:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5724CA47EE;
 Fri,  3 Jul 2020 14:12:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 03 Jul 2020 14:12:15 -0000
Message-ID: <159378553535.25594.14340524085777664721@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Use_ww_locking_in_execbuf_submission=2E?=
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

Series: drm/i915: Use ww locking in execbuf submission.
URL   : https://patchwork.freedesktop.org/series/79091/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
96ffbd309edc Revert "drm/i915/gem: Async GPU relocations only"
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
9fee49631c13 drm/i915: Revert relocation chaining commits.
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This reverts commit 964a9b0f611ee ("drm/i915/gem: Use chained reloc batches")

-:221: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#221: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1313:
+	if (cache->rq_size > PAGE_SIZE/sizeof(u32) - (len + 1))
 	                              ^

total: 0 errors, 1 warnings, 1 checks, 281 lines checked
41fe7643dad5 Revert "drm/i915/gem: Drop relocation slowpath".
-:103: WARNING:LINE_SPACING: Missing a blank line after declarations
#103: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1700:
+		int err = __get_user(c, addr);
+		if (err)

total: 0 errors, 1 warnings, 0 checks, 294 lines checked
711820c35498 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:445: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#445: FILE: drivers/gpu/drm/i915/i915_gem.c:1359:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 441 lines checked
09adf03b6b57 drm/i915: Remove locking from i915_gem_object_prepare_read/write
b0bee5b33053 drm/i915: Parse command buffer earlier in eb_relocate(slow)
0623fd02f964 Revert "drm/i915/gem: Split eb_vma into its own allocation"
77b7a643cd98 drm/i915: Use per object locking in execbuf, v12.
-:457: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#457: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1405:
+static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 			      struct i915_vma *vma,

-:477: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#477: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1478:
+static int reloc_entry_gpu(struct i915_execbuffer *eb,
 			    struct i915_vma *vma,

-:489: ERROR:TRAILING_WHITESPACE: trailing whitespace
#489: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1503:
+^I$

-:759: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#759: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2874:
+	eb.reloc_pool = eb.batch_pool = NULL;

total: 1 errors, 0 warnings, 3 checks, 865 lines checked
78d093224935 drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 190 lines checked
ec4c44affb89 drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1097:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
9811525906fc drm/i915: Nuke arguments to eb_pin_engine
b367c77301c6 drm/i915: Pin engine before pinning all objects, v4.
4a093115d97a drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:125: CHECK:LINE_SPACING: Please don't use multiple blank lines
#125: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:338: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#338: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3453:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 435 lines checked
a26b7ccccdc7 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:594:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:204: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#204: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2387:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 858 lines checked
a8f3d1d45011 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
a7fe97007947 drm/i915: Kill last user of intel_context_create_request outside of selftests
0ff7aeb9ced4 drm/i915: Convert i915_perf to ww locking as well
1d8343785fcf drm/i915: Dirty hack to fix selftests locking inversion
aa1b37e0a2e8 drm/i915/selftests: Fix locking inversion in lrc selftest.
3d3a0174e589 drm/i915: Use ww pinning for intel_context_create_request()
9ffb44d44085 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
fd4c60822f51 drm/i915: Add ww locking to vm_fault_gtt
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
d5706535dba4 drm/i915: Add ww locking to pin_to_display_plane
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 129 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
