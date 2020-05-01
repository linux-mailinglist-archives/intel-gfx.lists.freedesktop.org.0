Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD761C1236
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 14:33:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 733426EC7C;
	Fri,  1 May 2020 12:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 955D56EC7C;
 Fri,  1 May 2020 12:33:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8DBEEA00E6;
 Fri,  1 May 2020 12:33:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 01 May 2020 12:33:32 -0000
Message-ID: <158833641257.18946.8179412619487568139@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200501122043.2504429-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200501122043.2504429-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/24=5D_perf/core=3A_Only_copy-to-?=
 =?utf-8?q?user_after_completely_unlocking_all_locks=2C_v3=2E?=
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

Series: series starting with [01/24] perf/core: Only copy-to-user after completely unlocking all locks, v3.
URL   : https://patchwork.freedesktop.org/series/76816/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c7e83b1d5e8c perf/core: Only copy-to-user after completely unlocking all locks, v3.
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
<4> [604.892540] ffffffff8264a558 (rcu_state.barrier_mutex){+.+.}, at: rcu_barrier+0x23/0x190

-:106: WARNING:BAD_SIGN_OFF: Duplicate signature
#106: 
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

-:180: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#180: FILE: kernel/events/core.c:5174:
+__perf_read(struct perf_event *event, char __user *buf,
+		    size_t count, u64 *values)

total: 0 errors, 2 warnings, 1 checks, 106 lines checked
767e1d98b897 Revert "drm/i915/gem: Drop relocation slowpath"
-:78: WARNING:LINE_SPACING: Missing a blank line after declarations
#78: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1628:
+		int err = __get_user(c, addr);
+		if (err)

total: 0 errors, 1 warnings, 0 checks, 257 lines checked
7fd405b049ee drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:493: WARNING:LONG_LINE: line over 100 characters
#493: FILE: drivers/gpu/drm/i915/i915_gem.c:1341:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 473 lines checked
47239de18d02 drm/i915: Remove locking from i915_gem_object_prepare_read/write
acd8e0b1b5dc drm/i915: Parse command buffer earlier in eb_relocate(slow)
9cd5eb751161 Revert "drm/i915/gem: Split eb_vma into its own allocation"
ce37b6d2a7dc drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
cbaecd19dd78 drm/i915: Use per object locking in execbuf, v9.
-:703: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#703: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2761:
+	eb.reloc_pool = eb.batch_pool = NULL;

total: 0 errors, 0 warnings, 1 checks, 708 lines checked
81ee09773f68 drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 207 lines checked
853dabe4de66 drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line over 100 characters
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1097:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
4edaac13184b drm/i915: Nuke arguments to eb_pin_engine
030b8005d968 drm/i915: Pin engine before pinning all objects, v4.
09c8db4fbd68 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:125: CHECK:LINE_SPACING: Please don't use multiple blank lines
#125: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:338: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#338: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3443:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 435 lines checked
7b3ccc070938 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:595:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:203: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#203: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2252:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 841 lines checked
29441f87c632 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
62e8d8511668 drm/i915: Kill last user of intel_context_create_request outside of selftests
f046ee760a15 drm/i915: Convert i915_perf to ww locking as well
5b95a6acfd4a drm/i915: Dirty hack to fix selftests locking inversion
3bd190df8a2e drm/i915/selftests: Fix locking inversion in lrc selftest.
4156a9384b8c drm/i915: Use ww pinning for intel_context_create_request()
6e5953cd8828 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
56909ff76ec7 drm/i915: Add ww locking to vm_fault_gtt
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
e7190066c37f drm/i915: Add ww locking to pin_to_display_plane
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 129 lines checked
2d420146a045 drm/i915: Ensure we hold the pin mutex
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 37 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
