Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFE22072AD
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 13:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 222036EB14;
	Wed, 24 Jun 2020 11:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CDDEC6EB14;
 Wed, 24 Jun 2020 11:58:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7753A00E7;
 Wed, 24 Jun 2020 11:58:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 24 Jun 2020 11:58:12 -0000
Message-ID: <159299989281.19235.2106322241332844046@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/26=5D_Revert_=22drm/i915/gem=3A_?=
 =?utf-8?q?Async_GPU_relocations_only=22_=28rev2=29?=
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

Series: series starting with [01/26] Revert "drm/i915/gem: Async GPU relocations only" (rev2)
URL   : https://patchwork.freedesktop.org/series/78744/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
33892249d7d2 Revert "drm/i915/gem: Async GPU relocations only"
-:113: WARNING:MEMORY_BARRIER: memory barrier without comment
#113: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1102:
+			mb();

-:161: WARNING:MEMORY_BARRIER: memory barrier without comment
#161: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1150:
+			mb();

-:181: CHECK:SPACING: No space is necessary after a cast
#181: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1170:
+		io_mapping_unmap_atomic((void __force __iomem *) unmask_page(cache->vaddr));

-:260: WARNING:MEMORY_BARRIER: memory barrier without comment
#260: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1249:
+			mb();

-:274: CHECK:BRACES: Unbalanced braces around else statement
#274: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1263:
+	} else

total: 0 errors, 3 warnings, 2 checks, 455 lines checked
cfe75ea198f9 drm/i915: Revert relocation chaining commits.
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This reverts commit 964a9b0f611ee ("drm/i915/gem: Use chained reloc batches")

-:221: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#221: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1306:
+	if (cache->rq_size > PAGE_SIZE/sizeof(u32) - (len + 1))
 	                              ^

total: 0 errors, 1 warnings, 1 checks, 281 lines checked
5fed26bab5d0 Revert "drm/i915/gem: Drop relocation slowpath".
-:80: WARNING:LINE_SPACING: Missing a blank line after declarations
#80: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1700:
+		int err = __get_user(c, addr);
+		if (err)

total: 0 errors, 1 warnings, 0 checks, 267 lines checked
1de69bb5eb4b drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:484: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#484: FILE: drivers/gpu/drm/i915/i915_gem.c:1359:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 465 lines checked
28e0198d22f8 drm/i915: Remove locking from i915_gem_object_prepare_read/write
d782b8ba0104 drm/i915: Parse command buffer earlier in eb_relocate(slow)
c4c86dc1e12b Revert "drm/i915/gem: Split eb_vma into its own allocation"
8394062c0fec drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
61248b8339e2 drm/i915: Use per object locking in execbuf, v12.
-:473: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#473: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1404:
+static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 			      struct i915_vma *vma,

-:493: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#493: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1477:
+static int reloc_entry_gpu(struct i915_execbuffer *eb,
 			    struct i915_vma *vma,

-:505: ERROR:TRAILING_WHITESPACE: trailing whitespace
#505: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1502:
+^I$

-:782: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#782: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2873:
+	eb.reloc_pool = eb.batch_pool = NULL;

total: 1 errors, 0 warnings, 3 checks, 885 lines checked
213e5283007d drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 190 lines checked
209fd4f2593e drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1097:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
5e4739f5ae98 drm/i915: Nuke arguments to eb_pin_engine
47202c503661 drm/i915: Pin engine before pinning all objects, v4.
bf7884fb26e5 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:125: CHECK:LINE_SPACING: Please don't use multiple blank lines
#125: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:338: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#338: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3453:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 435 lines checked
b4e39defb35f drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:594:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:204: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#204: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2386:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 842 lines checked
f5d541f77361 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
fb75fcfbd9d4 drm/i915: Kill last user of intel_context_create_request outside of selftests
fe5408b9aa3f drm/i915: Convert i915_perf to ww locking as well
e69c9075e596 drm/i915: Dirty hack to fix selftests locking inversion
c5b10d3c7174 drm/i915/selftests: Fix locking inversion in lrc selftest.
49fb1cb8bfae drm/i915: Use ww pinning for intel_context_create_request()
756762ec32c7 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
dde2896028bb drm/i915: Add ww locking to vm_fault_gtt
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
501388d7472e drm/i915: Add ww locking to pin_to_display_plane
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 129 lines checked
1d2a412696af drm/i915: Ensure we hold the pin mutex
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
076ef058d638 drm/i915: Kill context before taking ctx->mutex

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
