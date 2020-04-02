Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB0219C5D7
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 17:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEBD689913;
	Thu,  2 Apr 2020 15:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D921789913;
 Thu,  2 Apr 2020 15:26:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1D98A47E1;
 Thu,  2 Apr 2020 15:26:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 02 Apr 2020 15:26:41 -0000
Message-ID: <158584120183.24295.6670803665484800595@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402143109.1801605-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200402143109.1801605-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/23=5D_perf/core=3A_Only_copy-to-?=
 =?utf-8?q?user_after_completely_unlocking_all_locks=2C_v2=2E?=
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

Series: series starting with [01/23] perf/core: Only copy-to-user after completely unlocking all locks, v2.
URL   : https://patchwork.freedesktop.org/series/75423/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e9bb8bda08c5 perf/core: Only copy-to-user after completely unlocking all locks, v2.
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
<4> [604.892540] ffffffff8264a558 (rcu_state.barrier_mutex){+.+.}, at: rcu_barrier+0x23/0x190

-:200: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#200: FILE: kernel/events/core.c:5008:
+__perf_read(struct perf_event *event, char __user *buf,
+		    size_t count, u64 **values)

total: 0 errors, 1 warnings, 1 checks, 129 lines checked
4c5bce10a92a Revert "drm/i915/gem: Drop relocation slowpath"
-:78: WARNING:LINE_SPACING: Missing a blank line after declarations
#78: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1618:
+		int err = __get_user(c, addr);
+		if (err)

total: 0 errors, 1 warnings, 0 checks, 257 lines checked
b3cea5caa585 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:506: WARNING:LONG_LINE: line over 100 characters
#506: FILE: drivers/gpu/drm/i915/i915_gem.c:1341:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 481 lines checked
1c6bad3a7182 drm/i915: Remove locking from i915_gem_object_prepare_read/write
4b4b9e26fc97 drm/i915: Parse command buffer earlier in eb_relocate(slow)
617a1d088295 Revert "drm/i915/gem: Split eb_vma into its own allocation"
9b03f80f6396 drm/i915: Use per object locking in execbuf, v7.
3e2a63f8be33 drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 202 lines checked
968378aa2d04 drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line over 100 characters
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1100:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
6242b98866e5 drm/i915: Nuke arguments to eb_pin_engine
351148011a0d drm/i915: Pin engine before pinning all objects, v3.
2fa57bd2a12c drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:125: CHECK:LINE_SPACING: Please don't use multiple blank lines
#125: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:340: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#340: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3113:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 445 lines checked
a0ef4b3627ad drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:592:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:203: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#203: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2212:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 827 lines checked
16e33183c09e drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
484cb9a63457 drm/i915: Kill last user of intel_context_create_request outside of selftests
d4b9ea0aee60 drm/i915: Convert i915_perf to ww locking as well
b9f86d313299 drm/i915: Dirty hack to fix selftests locking inversion
3a14330db1de drm/i915/selftests: Fix locking inversion in lrc selftest.
aea30143d0f3 drm/i915: Use ww pinning for intel_context_create_request()
d666c06d8891 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
6cdda6ab9f59 drm/i915: Add ww locking to vm_fault_gtt
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
43b44cc265fa drm/i915: Add ww locking to pin_to_display_plane
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 129 lines checked
b49bed048016 drm/i915: Ensure we hold the pin mutex
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 37 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
