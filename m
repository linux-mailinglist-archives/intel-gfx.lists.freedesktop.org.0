Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0591DB52B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 15:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0E6F6E84F;
	Wed, 20 May 2020 13:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95F8C6E84F;
 Wed, 20 May 2020 13:37:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8FE1FA3C0D;
 Wed, 20 May 2020 13:37:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 20 May 2020 13:37:40 -0000
Message-ID: <158998186058.30688.5461989367124435737@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200520130030.1014994-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200520130030.1014994-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/23=5D_Revert_=22drm/i915/gem=3A_?=
 =?utf-8?q?Drop_relocation_slowpath=22=2E?=
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

Series: series starting with [01/23] Revert "drm/i915/gem: Drop relocation slowpath".
URL   : https://patchwork.freedesktop.org/series/77472/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e8a9ca7ebbde Revert "drm/i915/gem: Drop relocation slowpath".
-:80: WARNING:LINE_SPACING: Missing a blank line after declarations
#80: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1803:
+		int err = __get_user(c, addr);
+		if (err)

total: 0 errors, 1 warnings, 0 checks, 264 lines checked
72f5c5b30070 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:493: WARNING:LONG_LINE: line over 100 characters
#493: FILE: drivers/gpu/drm/i915/i915_gem.c:1341:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 473 lines checked
a468a7cf573c drm/i915: Remove locking from i915_gem_object_prepare_read/write
0d1389fe4823 drm/i915: Parse command buffer earlier in eb_relocate(slow)
0959c95aca1a Revert "drm/i915/gem: Split eb_vma into its own allocation"
351faedf629a drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
1e76b4db6002 drm/i915: Use per object locking in execbuf, v10.
-:463: CHECK:LINE_SPACING: Please don't use multiple blank lines
#463: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1398:
 
+

-:510: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#510: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1510:
+static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 			      struct i915_vma *vma,

-:530: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#530: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1583:
+static int reloc_entry_gpu(struct i915_execbuffer *eb,
 			    struct i915_vma *vma,

-:542: ERROR:TRAILING_WHITESPACE: trailing whitespace
#542: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1608:
+^I$

-:801: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#801: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2948:
+	eb.reloc_pool = eb.batch_pool = NULL;

total: 1 errors, 0 warnings, 4 checks, 803 lines checked
710f752755c1 drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 209 lines checked
a42f3dac28b8 drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line over 100 characters
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1097:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
b428669fca95 drm/i915: Nuke arguments to eb_pin_engine
b5516731f269 drm/i915: Pin engine before pinning all objects, v4.
8e0a6a165baf drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:125: CHECK:LINE_SPACING: Please don't use multiple blank lines
#125: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:338: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#338: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3437:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 435 lines checked
105f0b34fcf5 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:596:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:213: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#213: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2463:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 850 lines checked
12ec08c8537e drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
5a24cea35c94 drm/i915: Kill last user of intel_context_create_request outside of selftests
99b1d3502005 drm/i915: Convert i915_perf to ww locking as well
30c1a144d8d8 drm/i915: Dirty hack to fix selftests locking inversion
dd08b28e8648 drm/i915/selftests: Fix locking inversion in lrc selftest.
cb9f17485972 drm/i915: Use ww pinning for intel_context_create_request()
a1c6650bd9c8 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
-:108: ERROR:TRAILING_WHITESPACE: trailing whitespace
#108: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c:154:
+^I^Ii915_gem_ww_ctx_fini(&eb.ww); $

total: 1 errors, 0 warnings, 0 checks, 347 lines checked
dd51ae3087a8 drm/i915: Add ww locking to vm_fault_gtt
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
15cd0b3c8561 drm/i915: Add ww locking to pin_to_display_plane
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 129 lines checked
6c8bb714a087 drm/i915: Ensure we hold the pin mutex
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 37 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
