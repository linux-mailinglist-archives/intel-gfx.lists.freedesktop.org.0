Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFD4211F9E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 11:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD1F56E0DA;
	Thu,  2 Jul 2020 09:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 78F456E07B;
 Thu,  2 Jul 2020 09:17:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72B04A0BC6;
 Thu,  2 Jul 2020 09:17:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Jul 2020 09:17:37 -0000
Message-ID: <159368145746.5656.373487303433587725@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200702083225.20044-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/23=5D_drm/i915=3A_Drop_vm=2Eref_?=
 =?utf-8?q?for_duplicate_vma_on_construction?=
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

Series: series starting with [01/23] drm/i915: Drop vm.ref for duplicate vma on construction
URL   : https://patchwork.freedesktop.org/series/79037/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2b716a4a1108 drm/i915: Drop vm.ref for duplicate vma on construction
02e97324e6dd drm/i915/gem: Split the context's obj:vma lut into its own mutex
-:82: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#82: FILE: drivers/gpu/drm/i915/gem/i915_gem_context_types.h:173:
+	struct mutex lut_mutex;

total: 0 errors, 0 warnings, 1 checks, 105 lines checked
981b52482265 drm/i915/gem: Drop forced struct_mutex from shrinker_taints_mutex
63cac79e5aff drm/i915/gem: Only revoke mmap handlers if active
ceb2d68f55a0 drm/i915: Export ppgtt_bind_vma
41eb0c64c9b6 drm/i915: Preallocate stashes for vma page-directories
84369a1c6dad drm/i915: Switch to object allocations for page directories
880e4a90f882 drm/i915/gem: Don't drop the timeline lock during execbuf
84600d1a1d00 drm/i915/gem: Rename execbuf.bind_link to unbound_link
6ce1d70bdaa0 drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup
6095d5335d88 drm/i915/gem: Remove the call for no-evict i915_vma_pin
8041afeb3c3a drm/i915: Add list_for_each_entry_safe_continue_reverse
-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

total: 0 errors, 0 warnings, 3 checks, 12 lines checked
5f2ba176cfcc drm/i915: Always defer fenced work to the worker
3bc8dcef47f8 drm/i915/gem: Assign context id for async work
658265850918 drm/i915: Export a preallocate variant of i915_active_acquire()
3474748efc48 drm/i915/gem: Separate the ww_mutex walker into its own list
9596fd217b0e drm/i915/gem: Asynchronous GTT unbinding
11531ee318da drm/i915/gem: Bind the fence async for execbuf
67d8c52b893a drm/i915/gem: Include cmdparser in common execbuf pinning
c9ad9f9d60dd drm/i915/gem: Include secure batch in common execbuf pinning
db49ec7ea2ce drm/i915/gem: Reintroduce multiple passes for reloc processing
-:993: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#993: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c:14:
+#if 0

-:1006: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#1006: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c:27:
+#if 0

total: 0 errors, 2 warnings, 0 checks, 969 lines checked
1375d1da0182 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
-:78: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#78: 
new file mode 100644

-:151: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#151: FILE: drivers/gpu/drm/i915/mm/i915_acquire_ctx.c:69:
+#if 0

total: 0 errors, 2 warnings, 0 checks, 187 lines checked
6f377648e7f5 drm/i915/gem: Pull execbuf dma resv under a single critical section

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
