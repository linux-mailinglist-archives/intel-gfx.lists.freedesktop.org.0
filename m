Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 888B01CDFBD
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 17:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F4156E4E3;
	Mon, 11 May 2020 15:54:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7B7816E4E3;
 Mon, 11 May 2020 15:54:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7582AA47E1;
 Mon, 11 May 2020 15:54:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 11 May 2020 15:54:32 -0000
Message-ID: <158921247245.13116.15074741020868111635@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200511142938.1041006-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200511142938.1041006-1-maarten.lankhorst@linux.intel.com>
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
URL   : https://patchwork.freedesktop.org/series/77157/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0aaea3234436 Revert "drm/i915/gem: Drop relocation slowpath".
-:80: WARNING:LINE_SPACING: Missing a blank line after declarations
#80: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1803:
+		int err = __get_user(c, addr);
+		if (err)

total: 0 errors, 1 warnings, 0 checks, 264 lines checked
9a24cb4208cf drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:493: WARNING:LONG_LINE: line over 100 characters
#493: FILE: drivers/gpu/drm/i915/i915_gem.c:1341:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 473 lines checked
da6543171a28 drm/i915: Remove locking from i915_gem_object_prepare_read/write
b4294a4e8c79 drm/i915: Parse command buffer earlier in eb_relocate(slow)
8c174e0cbf17 Revert "drm/i915/gem: Split eb_vma into its own allocation"
14dd86165b50 drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
00f11bf30626 drm/i915: Use per object locking in execbuf, v10.
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

-:812: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#812: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2964:
+	eb.reloc_pool = eb.batch_pool = NULL;

total: 1 errors, 0 warnings, 4 checks, 814 lines checked
44e976369721 drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 207 lines checked
d851a23c94b8 drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line over 100 characters
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1097:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
9a1134737bbc drm/i915: Nuke arguments to eb_pin_engine
9b8010e45479 drm/i915: Pin engine before pinning all objects, v4.
00a5ba0089e7 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:125: CHECK:LINE_SPACING: Please don't use multiple blank lines
#125: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:338: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#338: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3442:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 435 lines checked
85b6b79ec10b drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:596:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:213: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#213: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2463:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 850 lines checked
1ba54a26c74e drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
fed9e78e3bb2 drm/i915: Kill last user of intel_context_create_request outside of selftests
bf1fb0d4b146 drm/i915: Convert i915_perf to ww locking as well
04673ded2e72 drm/i915: Dirty hack to fix selftests locking inversion
335f6e4eb962 drm/i915/selftests: Fix locking inversion in lrc selftest.
46c98f32fbb8 drm/i915: Use ww pinning for intel_context_create_request()
8b76540cc9cc drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
a4e2007e088c drm/i915: Add ww locking to vm_fault_gtt
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
ba65480d9131 drm/i915: Add ww locking to pin_to_display_plane
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 129 lines checked
bf82d97da9da drm/i915: Ensure we hold the pin mutex
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 37 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
