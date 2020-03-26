Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD35119452B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 18:14:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445E56E34A;
	Thu, 26 Mar 2020 17:14:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 838CD6E34A;
 Thu, 26 Mar 2020 17:14:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C0C1A011B;
 Thu, 26 Mar 2020 17:14:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 26 Mar 2020 17:14:28 -0000
Message-ID: <158524286847.23002.13106733992370328507@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326114922.1820274-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200326114922.1820274-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/21=5D_Revert_=22drm/i915/gem=3A_?=
 =?utf-8?q?Drop_relocation_slowpath=22?=
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

Series: series starting with [01/21] Revert "drm/i915/gem: Drop relocation slowpath"
URL   : https://patchwork.freedesktop.org/series/75115/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d083289b34df Revert "drm/i915/gem: Drop relocation slowpath"
-:78: WARNING:LINE_SPACING: Missing a blank line after declarations
#78: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1579:
+		int err = __get_user(c, addr);
+		if (err)

total: 0 errors, 1 warnings, 0 checks, 257 lines checked
936cc0098d93 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:506: WARNING:LONG_LINE: line over 100 characters
#506: FILE: drivers/gpu/drm/i915/i915_gem.c:1338:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 481 lines checked
74e05c05e4b8 drm/i915: Remove locking from i915_gem_object_prepare_read/write
41b0db48a24c drm/i915: Parse command buffer earlier in eb_relocate(slow)
4f72eac68d80 drm/i915: Use per object locking in execbuf, v6.
bfe136b956c4 drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 202 lines checked
0200da0a1df9 drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line over 100 characters
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1100:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
6d83bbf7ff96 drm/i915: Nuke arguments to eb_pin_engine
757c8e3383b2 drm/i915: Pin engine before pinning all objects, v3.
9f9b3ccbfee0 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:125: CHECK:LINE_SPACING: Please don't use multiple blank lines
#125: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:340: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#340: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3045:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 445 lines checked
cfef16270648 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:573:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:188: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#188: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2197:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 812 lines checked
85863b6646f5 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
cb74e29ea87a drm/i915: Kill last user of intel_context_create_request outside of selftests
f90980b43cf5 drm/i915: Convert i915_perf to ww locking as well
26070db64fbd drm/i915: Dirty hack to fix selftests locking inversion
b03c1aeda1ed drm/i915/selftests: Fix locking inversion in lrc selftest.
75eb93acc311 drm/i915: Use ww pinning for intel_context_create_request()
5f66150eaf57 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
e91160d4fd13 drm/i915: Add ww locking to vm_fault_gtt
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
1e09059f0103 drm/i915: Add ww locking to pin_to_display_plane
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 129 lines checked
1551e4c71efc drm/i915: Ensure we hold the pin mutex
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 37 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
