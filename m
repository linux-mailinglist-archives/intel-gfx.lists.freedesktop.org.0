Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4961E6F49
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 00:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB156E231;
	Thu, 28 May 2020 22:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 293C76E226;
 Thu, 28 May 2020 22:40:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B204A0019;
 Thu, 28 May 2020 22:40:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 May 2020 22:40:35 -0000
Message-ID: <159070563508.685.1237813921092177418@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528211524.29107-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200528211524.29107-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/11=5D_drm/i915/gt=3A_Start_times?=
 =?utf-8?q?lice_on_partial_submission?=
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

Series: series starting with [01/11] drm/i915/gt: Start timeslice on partial submission
URL   : https://patchwork.freedesktop.org/series/77762/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
dc44da7a88e6 drm/i915/gt: Start timeslice on partial submission
af3a1406b2d8 drm/i915/gem: Mark the buffer pool as active for the cmdparser
7c0380bdfab2 drm/i915/gem: Async GPU relocations only
283e921c4b08 drm/i915: Add list_for_each_entry_safe_continue_reverse
-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#20: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#20: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#20: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

total: 0 errors, 0 warnings, 3 checks, 12 lines checked
fb12696a43ec drm/i915/gem: Separate reloc validation into an earlier step
-:101: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#101: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1408:
+				return (int)offset;
+			} else {

total: 0 errors, 1 warnings, 0 checks, 217 lines checked
10ad05422c96 drm/i915/gem: Lift GPU relocation allocation
c2d55803a60c drm/i915/gem: Build the reloc request first
71c20a444d9e drm/i915/gem: Add all GPU reloc awaits/signals en masse
eba65e7de8ae dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:438: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#438: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

total: 0 errors, 1 warnings, 1 checks, 1158 lines checked
372342371047 drm/i915: Unpeel awaits on a proxy fence
70c78cfa6ea5 drm/i915/gem: Make relocations atomic within execbuf

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
