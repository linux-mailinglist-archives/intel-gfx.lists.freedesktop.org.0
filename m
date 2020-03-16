Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F005D18741B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 21:34:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E70B89F08;
	Mon, 16 Mar 2020 20:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58A2589F01;
 Mon, 16 Mar 2020 20:34:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B84AA41FB;
 Mon, 16 Mar 2020 20:34:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 16 Mar 2020 20:34:47 -0000
Message-ID: <158439088730.18996.16831112640921378079@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316114237.5436-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200316114237.5436-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/15=5D_drm/i915=3A_Move_GGTT_fenc?=
 =?utf-8?q?e_registers_under_gt/?=
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

Series: series starting with [01/15] drm/i915: Move GGTT fence registers under gt/
URL   : https://patchwork.freedesktop.org/series/74740/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2bf8a0072a07 drm/i915: Move GGTT fence registers under gt/
-:47: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#47: 
rename from drivers/gpu/drm/i915/i915_gem_fence_reg.c

total: 0 errors, 1 warnings, 0 checks, 205 lines checked
eb984adc50b0 drm/i915/gt: Pull restoration of GGTT fences underneath the GT
ec7d53e3657f drm/i915: Remove manual save/resume of fence register state
11c6a912a6f4 drm/i915/gt: Allocate i915_fence_reg array
fb9609af3e59 drm/i915/gt: Only wait for GPU activity before unbinding a GGTT fence
047943aa26dd drm/i915/gt: Store the fence details on the fence
68777e6d26ac drm/i915/gt: Make fence revocation unequivocal
ca73a0e0d45c drm/i915/gem: Drop cached obj->bind_count
-:159: WARNING:LONG_LINE: line over 100 characters
#159: FILE: drivers/gpu/drm/i915/i915_debugfs.c:286:
+		seq_printf(m, "%s: %lu objects, %llu bytes (%llu active, %llu inactive, %llu closed)\n", \

total: 0 errors, 1 warnings, 0 checks, 228 lines checked
6e568cc647bc drm/i915: Immediately execute the fenced work
0e046d2c468f drm/i915/gem: Assign context id for async work
16a27ae3ea5b drm/i915: Export a preallocate variant of i915_active_acquire()
c447dbfb9f9e drm/i915/gem: Split eb_vma into its own allocation
10bf1fdc1a47 drm/i915/gem: Separate the ww_mutex walker into its own list
-:92: WARNING:LONG_LINE: line over 100 characters
#92: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1568:
+			list_for_each_entry_safe_continue_reverse(unlock, en, &eb->lock, lock_link) {

-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#140: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+		n = list_prev_entry(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#140: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+		n = list_prev_entry(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#140: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+		n = list_prev_entry(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

total: 0 errors, 1 warnings, 3 checks, 120 lines checked
dbdbd5f98bb5 drm/i915/gem: Asynchronous GTT unbinding
671fabf9545b drm/i915/gem: Bind the fence async for execbuf

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
