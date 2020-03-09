Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DF817E43C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 17:04:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7536D6E483;
	Mon,  9 Mar 2020 16:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 777B589CE3;
 Mon,  9 Mar 2020 16:03:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6FC10A47DF;
 Mon,  9 Mar 2020 16:03:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 09 Mar 2020 16:03:59 -0000
Message-ID: <158376983943.9451.2236107112753968790@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/17=5D_drm/i915=3A_Add_an_impleme?=
 =?utf-8?q?ntation_for_i915=5Fgem=5Fww=5Fctx_locking=2C_v2=2E_=28rev2=29?=
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

Series: series starting with [01/17] drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2. (rev2)
URL   : https://patchwork.freedesktop.org/series/74387/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a07375e972da drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:506: WARNING:LONG_LINE: line over 100 characters
#506: FILE: drivers/gpu/drm/i915/i915_gem.c:1339:
+	while ((obj = list_first_entry_or_null(&ww->obj_list, struct drm_i915_gem_object, obj_link))) {

total: 0 errors, 1 warnings, 0 checks, 481 lines checked
fb5f8b0f4bd8 drm/i915: Remove locking from i915_gem_object_prepare_read/write
e73c2a91b83f drm/i915: Parse command buffer earlier in eb_relocate(slow)
4e33a47c9b1d drm/i915: Use per object locking in execbuf, v5.
22c3999407bc drm/i915: Use ww locking in intel_renderstate.
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Convert to using ww-waiting, and make sure we always pin intel_context_state,

total: 0 errors, 1 warnings, 0 checks, 202 lines checked
a0b296192afc drm/i915: Add ww context handling to context_barrier_task
-:19: WARNING:LONG_LINE: line over 100 characters
#19: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1064:
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
164cef249306 drm/i915: Nuke arguments to eb_pin_engine
8f88e8dab92d drm/i915: Pin engine before pinning all objects, v3.
77b62e00cde5 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
-:120: CHECK:LINE_SPACING: Please don't use multiple blank lines
#120: FILE: drivers/gpu/drm/i915/gt/intel_context.c:176:
+
+

-:330: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#330: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3026:
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |

total: 0 errors, 0 warnings, 2 checks, 435 lines checked
b825cd024f91 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:573:
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,

-:188: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#188: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2169:
+	 * hsw should have this fixed, but bdw mucks it up again. */

total: 0 errors, 1 warnings, 1 checks, 812 lines checked
fb5317b3dbd4 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
e1bf61bde5c0 drm/i915: Kill last user of intel_context_create_request outside of selftests
0ad82c88a73a drm/i915: Convert i915_perf to ww locking as well
feaac385addd drm/i915: Dirty hack to fix selftests locking inversion
c8beabdebf22 drm/i915/selftests: Fix locking inversion in lrc selftest.
69abe3bc5db6 drm/i915: Use ww pinning for intel_context_create_request()
c72d21a3cf9c drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 125 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
