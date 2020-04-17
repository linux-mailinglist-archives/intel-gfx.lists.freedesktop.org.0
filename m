Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 488891AE4E1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 20:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023BD6E126;
	Fri, 17 Apr 2020 18:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6498F6E125;
 Fri, 17 Apr 2020 18:38:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CD30A432F;
 Fri, 17 Apr 2020 18:38:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 17 Apr 2020 18:38:15 -0000
Message-ID: <158714869534.10464.15402707884065495360@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417133937.1980239-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200417133937.1980239-1-maarten.lankhorst@linux.intel.com>
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
URL   : https://patchwork.freedesktop.org/series/76096/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ff1eb751fb43 perf/core: Only copy-to-user after completely unlocking all locks, v3.
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
0f9301e7d5f1 drm/i915/gt: Move the batch buffer pool from the engine to the gt
-:293: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#293: 
deleted file mode 100644

-:607: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#607: FILE: drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h:1:
+/*

-:608: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#608: FILE: drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h:2:
+ * SPDX-License-Identifier: MIT

total: 0 errors, 3 warnings, 0 checks, 583 lines checked
69262497009f Revert "drm/i915/gem: Drop relocation slowpath"
-:78: WARNING:LINE_SPACING: Missing a blank line after declarations
#78: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1628:
+		int err = __get_user(c, addr);
+		if (err)

total: 0 errors, 1 warnings, 0 checks, 257 lines checked
26f5b6d94aa1 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:506: WARNING:LONG_LINE: line over 100 characters
#506: FILE: drivers/gpu/drm/i915/i915_gem.c:1341:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 481 lines checked
998413e3cfb7 drm/i915: Remove locking from i915_gem_object_prepare_read/write
117538ce7e6c drm/i915: Parse command buffer earlier in eb_relocate(slow)
434cd3192a8f Revert "drm/i915/gem: Split eb_vma into its own allocation"
380c532e5cfb drm/i915: Use per object locking in execbuf, v7.
ad97b3a07fb3 drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 209 lines checked
10c1773ccd10 drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line over 100 characters
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1099:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
1f28a398cfa7 drm/i915: Nuke arguments to eb_pin_engine
67a517dd1f51 drm/i915: Pin engine before pinning all objects, v3.
c92b2540f0bd drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:125: CHECK:LINE_SPACING: Please don't use multiple blank lines
#125: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:338: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#338: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3180:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 435 lines checked
6822ff18c288 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:591:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:203: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#203: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2221:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 827 lines checked
0177c8a29336 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
26df1bbc28b0 drm/i915: Kill last user of intel_context_create_request outside of selftests
aba9cc8e87ff drm/i915: Convert i915_perf to ww locking as well
7090cc8880f1 drm/i915: Dirty hack to fix selftests locking inversion
6a1366bfdbfd drm/i915/selftests: Fix locking inversion in lrc selftest.
5dd61a2e5601 drm/i915: Use ww pinning for intel_context_create_request()
4f2f4dd1dc89 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
ea84a0c54701 drm/i915: Add ww locking to vm_fault_gtt
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
d6904362a6ce drm/i915: Add ww locking to pin_to_display_plane
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 129 lines checked
4020a1a6ee36 drm/i915: Ensure we hold the pin mutex
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 37 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
