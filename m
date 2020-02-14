Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B05215D66A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 12:16:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 652C06E5A5;
	Fri, 14 Feb 2020 11:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 13A136E5A5;
 Fri, 14 Feb 2020 11:16:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C8CBA47E8;
 Fri, 14 Feb 2020 11:16:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 14 Feb 2020 11:16:43 -0000
Message-ID: <158167900302.9932.2483651132889383993@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_Implement_parallel_execbuf_submission=2E?=
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

Series: drm/i915/gem: Implement parallel execbuf submission.
URL   : https://patchwork.freedesktop.org/series/73456/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
45e26eb55b49 drm/i915: Drop inspection of execbuf flags during evict
77137cc44da0 drm/i915/gem: Extract transient execbuf flags from i915_vma
1c9c54ea3f9f drm/i915: Separate lookup and pinning in execbuf.
-:153: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#153: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:857:
 
+	}

total: 0 errors, 0 warnings, 1 checks, 190 lines checked
74411de36fec drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:506: WARNING:LONG_LINE: line over 100 characters
#506: FILE: drivers/gpu/drm/i915/i915_gem.c:1340:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 481 lines checked
4fb224307417 drm/i915: Remove locking from i915_gem_object_prepare_read/write
6d289dfa8e94 drm/i915: Parse command buffer earlier in eb_relocate(slow)
94e03631a69b drm/i915: Use per object locking in execbuf on top of struct_mutex, v3.
-:224: CHECK:BRACES: braces {} should be used on all arms of this statement
#224: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1831:
+	if (err == -EDEADLK) {
[...]
+	else if (err)
[...]

-:232: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#232: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1839:
+	}
+	else if (err)

total: 1 errors, 0 warnings, 1 checks, 326 lines checked
15b80a481667 drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 202 lines checked
656138053d87 drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line over 100 characters
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:978:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
75b5a2f7f6c3 drm/i915: Nuke arguments to eb_pin_engine
39baf3b54346 drm/i915: Pin engine before pinning all objects, v2.
b3a660cd040f drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:125: CHECK:LINE_SPACING: Please don't use multiple blank lines
#125: FILE: drivers/gpu/drm/i915/gt/intel_context.c:171:
+
+

-:330: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#330: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:2942:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 436 lines checked
4782909f0467 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:581:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:185: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#185: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2166:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 811 lines checked
5819fba41820 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well
4f5b737716e8 drm/i915: Kill last user of intel_context_create_request outside of selftests
e1a5ab78d885 drm/i915: Convert i915_perf to ww locking as well
80cc1c0dea35 drm/i915: Dirty hack to fix selftests locking inversion
e091c73e4158 drm/i915/selftests: Fix locking inversion in lrc selftest.
6e5d190d8121 drm/i915: Use ww pinning for intel_context_create_request()

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
