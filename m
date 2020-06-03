Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C46971ED3D5
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 17:57:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0999089B3C;
	Wed,  3 Jun 2020 15:57:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E788189B3C;
 Wed,  3 Jun 2020 15:57:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1768A47DA;
 Wed,  3 Jun 2020 15:57:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 03 Jun 2020 15:57:19 -0000
Message-ID: <159119983989.12268.1563755641554731988@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603145713.3835124-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200603145713.3835124-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/24=5D_Revert_=22drm/i915/gem=3A_?=
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

Series: series starting with [01/24] Revert "drm/i915/gem: Drop relocation slowpath".
URL   : https://patchwork.freedesktop.org/series/77960/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a8a26d902de0 Revert "drm/i915/gem: Drop relocation slowpath".
-:80: WARNING:LINE_SPACING: Missing a blank line after declarations
#80: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1802:
+		int err = __get_user(c, addr);
+		if (err)

total: 0 errors, 1 warnings, 0 checks, 264 lines checked
1534f179b1ab drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:493: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#493: FILE: drivers/gpu/drm/i915/i915_gem.c:1341:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 473 lines checked
c412b07e522c drm/i915: Remove locking from i915_gem_object_prepare_read/write
ef8df645976c drm/i915: Parse command buffer earlier in eb_relocate(slow)
550bd4348656 Revert "drm/i915/gem: Split eb_vma into its own allocation"
7d8b20457516 drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
45f9dff46487 drm/i915: Use per object locking in execbuf, v11.
-:473: CHECK:LINE_SPACING: Please don't use multiple blank lines
#473: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1408:
 
+

-:520: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#520: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1520:
+static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 			      struct i915_vma *vma,

-:540: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#540: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1593:
+static int reloc_entry_gpu(struct i915_execbuffer *eb,
 			    struct i915_vma *vma,

-:552: ERROR:TRAILING_WHITESPACE: trailing whitespace
#552: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1618:
+^I$

-:811: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#811: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2957:
+	eb.reloc_pool = eb.batch_pool = NULL;

total: 1 errors, 0 warnings, 4 checks, 811 lines checked
2d2857b3d5ae drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 209 lines checked
b25ba367c26d drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1097:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
36d3bd7c0420 drm/i915: Nuke arguments to eb_pin_engine
5e983148f18d drm/i915: Pin engine before pinning all objects, v4.
2da536f6aca7 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:125: CHECK:LINE_SPACING: Please don't use multiple blank lines
#125: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:338: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#338: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3443:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 435 lines checked
fc5ed58aad70 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:95: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#95: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:596:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:213: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#213: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2472:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 850 lines checked
18ebd9d92415 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
de5ef8ca658c drm/i915: Kill last user of intel_context_create_request outside of selftests
756385fc367b drm/i915: Convert i915_perf to ww locking as well
4b168d7eb625 drm/i915: Dirty hack to fix selftests locking inversion
51a11c92d700 drm/i915/selftests: Fix locking inversion in lrc selftest.
78eb94b06623 drm/i915: Use ww pinning for intel_context_create_request()
9bb49e2f74c1 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
-:108: ERROR:TRAILING_WHITESPACE: trailing whitespace
#108: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c:154:
+^I^Ii915_gem_ww_ctx_fini(&eb.ww); $

total: 1 errors, 0 warnings, 0 checks, 347 lines checked
2f3fd8b5e141 drm/i915: Add ww locking to vm_fault_gtt
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 91 lines checked
f60b4639d689 drm/i915: Add ww locking to pin_to_display_plane
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 129 lines checked
1f073601ee7f drm/i915: Ensure we hold the pin mutex
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
de0fb243bf50 drm/i915: Kill context before taking ctx->mutex
-:40: CHECK:LINE_SPACING: Please don't use multiple blank lines
#40: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:637:
+
+

total: 0 errors, 0 warnings, 1 checks, 36 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
