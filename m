Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D101484F5
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 13:08:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48BFA6E375;
	Fri, 24 Jan 2020 12:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 342C66E364;
 Fri, 24 Jan 2020 12:08:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C78BA011A;
 Fri, 24 Jan 2020 12:08:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 24 Jan 2020 12:08:05 -0000
Message-ID: <157986768517.15092.9964774633869983650@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124095521.2006632-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200124095521.2006632-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_Implement_parallel_execbuffer_submission=2E?=
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

Series: drm/i915/gem: Implement parallel execbuffer submission.
URL   : https://patchwork.freedesktop.org/series/72521/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ac32dc249279 drm/i915: Drop inspection of execbuf flags during evict
dbffec8e6129 drm/i915/gem: Extract transient execbuf flags from i915_vma
b3ff4cd5c2b0 drm/i915: Separate lookup and pinning in execbuf.
-:153: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#153: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:858:
 
+	}

total: 0 errors, 0 warnings, 1 checks, 190 lines checked
8745975ba8ef drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:528: WARNING:LONG_LINE: line over 100 characters
#528: FILE: drivers/gpu/drm/i915/i915_gem.c:1337:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 497 lines checked
e0cd1376e2da drm/i915: Remove locking from i915_gem_object_prepare_read/write
ceeddaf549ea drm/i915: Parse command buffer earlier in eb_relocate(slow)
7a269ec65bee drm/i915: Use per object locking in execbuf on top of struct_mutex, v2.
-:212: CHECK:BRACES: braces {} should be used on all arms of this statement
#212: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1834:
+	if (err == -EDEADLK) {
[...]
+	else if (err)
[...]

-:220: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#220: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1842:
+	}
+	else if (err)

total: 1 errors, 0 warnings, 1 checks, 315 lines checked
c4a3a05075bb drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 202 lines checked
137db377e250 drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line over 100 characters
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:931:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
02495dc4b9f9 drm/i915: Nuke arguments to eb_pin_engine
af62c8b5c8b4 drm/i915: Pin engine before pinning all objects
cae78048f977 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:314: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#314: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:2894:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 1 checks, 420 lines checked
1744b1a75cc8 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:64: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#64: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:582:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

total: 0 errors, 0 warnings, 1 checks, 532 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
