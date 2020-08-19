Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A30B24A250
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 17:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98BEA6E402;
	Wed, 19 Aug 2020 15:00:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CB6D6E402;
 Wed, 19 Aug 2020 15:00:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0691CA008A;
 Wed, 19 Aug 2020 15:00:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 19 Aug 2020 15:00:22 -0000
Message-ID: <159784922202.23597.11733160891841336799@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Correct_the_locking_hierarchy_in_gem=2C_v2=2E?=
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

Series: drm/i915: Correct the locking hierarchy in gem, v2.
URL   : https://patchwork.freedesktop.org/series/80810/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9d40440069d8 Revert "drm/i915/gem: Async GPU relocations only"
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This reverts commit 9e0f9464e2ab ("drm/i915/gem: Async GPU relocations only"),

-:19: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '39e9aa1032a4e', maybe rebased or not pulled?
#19: 
The igt side is fixed in igt commit 39e9aa1032a4e ("tests/i915: Remove

-:125: WARNING:MEMORY_BARRIER: memory barrier without comment
#125: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1120:
+			mb();

-:174: WARNING:MEMORY_BARRIER: memory barrier without comment
#174: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1169:
+			mb();

-:198: CHECK:SPACING: No space is necessary after a cast
#198: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1193:
+		io_mapping_unmap_atomic((void __force __iomem *) unmask_page(cache->vaddr));

-:277: WARNING:MEMORY_BARRIER: memory barrier without comment
#277: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1272:
+			mb();

-:291: CHECK:BRACES: Unbalanced braces around else statement
#291: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1286:
+	} else

total: 0 errors, 5 warnings, 2 checks, 460 lines checked
862b043e1d65 drm/i915: Revert relocation chaining commits.
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This reverts commit 964a9b0f611ee ("drm/i915/gem: Use chained reloc batches")

-:16: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e3d291301f99 ("drm/i915/gem: Implement legacy MI_STORE_DATA_IMM")'
#16: 
reloc_cache_init, this was from e3d291301f99 ("drm/i915/gem: Implement legacy

-:228: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#228: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1329:
+	if (cache->rq_size > PAGE_SIZE/sizeof(u32) - (len + 1))
 	                              ^

total: 1 errors, 1 warnings, 1 checks, 281 lines checked
2b58aa855f4d Revert "drm/i915/gem: Drop relocation slowpath".
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ef398881d27d ("drm/i915/gem: Limit struct_mutex to eb_reserve")'
#11: 
We also functionally revert ef398881d27d ("drm/i915/gem: Limit

-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 003d8b9143a6 ("drm/i915/gem: Only call eb_lookup_vma once during execbuf ioctl")'
#13: 
the slowpath as well, and a tiny part of 003d8b9143a6 ("drm/i915/gem:

-:114: WARNING:LINE_SPACING: Missing a blank line after declarations
#114: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1716:
+		int err = __get_user(c, addr);
+		if (err)

total: 2 errors, 1 warnings, 0 checks, 293 lines checked
12b748c65392 Revert "drm/i915/gem: Split eb_vma into its own allocation"
268d9bdb0425 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:449: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#449: FILE: drivers/gpu/drm/i915/i915_gem.c:1341:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 441 lines checked
f40fdcf94ee9 drm/i915: Remove locking from i915_gem_object_prepare_read/write
9459f3800775 drm/i915: Parse command buffer earlier in eb_relocate(slow)
5ad340f52366 drm/i915: Use per object locking in execbuf, v12.
-:462: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#462: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1421:
+static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 			      struct i915_vma *vma,

-:482: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#482: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1494:
+static int reloc_entry_gpu(struct i915_execbuffer *eb,
 			    struct i915_vma *vma,

-:763: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#763: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3059:
+	eb.reloc_pool = eb.batch_pool = NULL;

total: 0 errors, 0 warnings, 3 checks, 865 lines checked
325c185dc52e drm/i915: Use ww locking in intel_renderstate.
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 190 lines checked
d75ca134900f drm/i915: Add ww context handling to context_barrier_task
-:23: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#23: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1109:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
6516a57e2a2b drm/i915: Nuke arguments to eb_pin_engine
6abab4f2c070 drm/i915: Pin engine before pinning all objects, v5.
d1acab8da722 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:129: CHECK:LINE_SPACING: Please don't use multiple blank lines
#129: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:342: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#342: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3477:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 434 lines checked
86668af120e8 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:606:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:213: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#213: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2412:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 863 lines checked
53e6e03ef7cf drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
f4187a322484 drm/i915: Kill last user of intel_context_create_request outside of selftests
649c0c5fec5f drm/i915: Convert i915_perf to ww locking as well
a6580e163685 drm/i915: Dirty hack to fix selftests locking inversion
b2fb8ffc3110 drm/i915/selftests: Fix locking inversion in lrc selftest.
478ef7479d6a drm/i915: Use ww pinning for intel_context_create_request()
a8997bbea05d drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v3.
77406d7cd764 drm/i915: Add ww locking to vm_fault_gtt
522ece1ba91b drm/i915: Add ww locking to pin_to_display_plane, v2.
fdd39765eae5 drm/i915: Do not share hwsp across contexts any more
-:159: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#159: FILE: drivers/gpu/drm/i915/gt/intel_timeline.c:31:
+       return vma;$

-:493: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#493: FILE: drivers/gpu/drm/i915/gt/intel_timeline.c:292:
+	if (tl && (i915_request_completed(from) ||
+	    !i915_active_acquire_if_busy(&tl->active)))

total: 0 errors, 1 warnings, 1 checks, 609 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
