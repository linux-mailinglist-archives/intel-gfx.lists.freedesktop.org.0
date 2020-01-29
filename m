Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3B114C486
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 03:10:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 655E36E194;
	Wed, 29 Jan 2020 02:10:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACA2F6E192;
 Wed, 29 Jan 2020 02:10:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4665A00C7;
 Wed, 29 Jan 2020 02:10:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 Jan 2020 02:10:00 -0000
Message-ID: <158026380064.5461.4517783305538042382@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200128204318.4182039-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200128204318.4182039-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/i915/execlist=3A_Mark_up?=
 =?utf-8?q?_racy_read_of_execlists-=3Epending=5B0=5D?=
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

Series: series starting with [1/5] drm/i915/execlist: Mark up racy read of execlists->pending[0]
URL   : https://patchwork.freedesktop.org/series/72690/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
82aa4207ae44 drm/i915/execlist: Mark up racy read of execlists->pending[0]
e92382208498 drm/i915/gt: Hook up CS_MASTER_ERROR_INTERRUPT
52306730ac69 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
-:146: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#146: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1703:
+{
+

total: 0 errors, 0 warnings, 1 checks, 156 lines checked
90d22f43a723 drm/i915/gt: Rename lrc.c to execlists_submission.c
-:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#40: 
rename from drivers/gpu/drm/i915/gt/intel_lrc.c

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
b5b64099ef97 drm/i915/gt: Split logical ring context manipulation into intel_lrc.c
-:57: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#57: 
new file mode 100644

-:756: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#756: FILE: drivers/gpu/drm/i915/gt/intel_engine_workaround_bb.c:304:
+	batch = batch_ptr = kmap_atomic(page);

-:2673: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'count' - possible side-effects?
#2673: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:132:
+#define LRI(count, flags) ((flags) << 6 | (count) | BUILD_BUG_ON_ZERO(count >= BIT(6)))

-:2675: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#2675: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:134:
+#define REG(x) (((x) >> 2) | BUILD_BUG_ON_ZERO(x >= 0x200))

-:2676: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2676: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:135:
+#define REG16(x) \
+	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
+	(((x) >> 2) & 0x7f)

-:2676: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#2676: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:135:
+#define REG16(x) \
+	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
+	(((x) >> 2) & 0x7f)

-:2679: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2679: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:138:
+#define END(x) 0, (x)

total: 2 errors, 1 warnings, 4 checks, 4001 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
