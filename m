Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7A711C221
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 02:27:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 265396EC25;
	Thu, 12 Dec 2019 01:27:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E046C6EC25;
 Thu, 12 Dec 2019 01:27:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D16A6A01BB;
 Thu, 12 Dec 2019 01:27:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 12 Dec 2019 01:27:16 -0000
Message-ID: <157611403682.32009.5308576617975510727@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Split_up_intel=5Flrc=2Ec?=
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

Series: Split up intel_lrc.c
URL   : https://patchwork.freedesktop.org/series/70787/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4fa85f63db3e drm/i915: introduce logical_ring and lr_context naming
e25d3a53a30a drm/i915: Move struct intel_virtual_engine to its own header
-:306: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#306: 
new file mode 100644

-:311: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#311: FILE: drivers/gpu/drm/i915/gt/intel_virtual_engine_types.h:1:
+/*

-:312: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#312: FILE: drivers/gpu/drm/i915/gt/intel_virtual_engine_types.h:2:
+ * SPDX-License-Identifier: MIT

total: 0 errors, 3 warnings, 0 checks, 318 lines checked
c172772b81db drm/i915: split out virtual engine code
-:669: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#669: 
new file mode 100644

-:674: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#674: FILE: drivers/gpu/drm/i915/gt/intel_virtual_engine.c:1:
+/*

-:675: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#675: FILE: drivers/gpu/drm/i915/gt/intel_virtual_engine.c:2:
+ * SPDX-License-Identifier: MIT

-:1039: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#1039: FILE: drivers/gpu/drm/i915/gt/intel_virtual_engine.h:1:
+/*

-:1040: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#1040: FILE: drivers/gpu/drm/i915/gt/intel_virtual_engine.h:2:
+ * SPDX-License-Identifier: MIT

-:1073: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1073: FILE: drivers/gpu/drm/i915/gt/intel_virtual_engine.h:35:
+
+

total: 0 errors, 5 warnings, 1 checks, 1052 lines checked
331b2734b611 drm/i915: move execlists selftests to their own file
-:78: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#78: 
new file mode 100644

-:83: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#83: FILE: drivers/gpu/drm/i915/gt/selftest_execlists.c:1:
+/*

-:84: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#84: FILE: drivers/gpu/drm/i915/gt/selftest_execlists.c:2:
+ * SPDX-License-Identifier: MIT

-:468: WARNING:LONG_LINE: line over 100 characters
#468: FILE: drivers/gpu/drm/i915/gt/selftest_execlists.c:386:
+			      2 * RUNTIME_INFO(outer->i915)->num_engines * (count + 2) * (count + 3)) < 0) {

-:2120: WARNING:LINE_SPACING: Missing a blank line after declarations
#2120: FILE: drivers/gpu/drm/i915/gt/selftest_execlists.c:2038:
+		struct igt_live_test t;
+		IGT_TIMEOUT(end_time);

-:2489: WARNING:LINE_SPACING: Missing a blank line after declarations
#2489: FILE: drivers/gpu/drm/i915/gt/selftest_execlists.c:2407:
+	struct preempt_smoke *smoke = arg;
+	IGT_TIMEOUT(end_time);

-:2536: WARNING:YIELD: Using yield() is generally wrong. See yield() kernel-doc (sched/core.c)
#2536: FILE: drivers/gpu/drm/i915/gt/selftest_execlists.c:2454:
+	yield(); /* start all threads before we kthread_stop() */

-:2563: WARNING:LINE_SPACING: Missing a blank line after declarations
#2563: FILE: drivers/gpu/drm/i915/gt/selftest_execlists.c:2481:
+	enum intel_engine_id id;
+	IGT_TIMEOUT(end_time);

total: 0 errors, 8 warnings, 0 checks, 6770 lines checked
7865d27bced8 drm/i915: introduce intel_execlists_submission.<c/h>
-:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#40: 
new file mode 100644

-:45: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#45: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:1:
+/*

-:46: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#46: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:2:
+ * SPDX-License-Identifier: MIT

-:139: WARNING:MEMORY_BARRIER: memory barrier without comment
#139: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:95:
+		wmb();

-:290: WARNING:FUNCTION_ARGUMENTS: function definition argument 'pl' should also have an identifier name
#290: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:246:
+	struct list_head *uninitialized_var(pl);

-:1355: WARNING:LONG_LINE: line over 100 characters
#1355: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:1311:
+					*port = execlists_schedule_in(last, port - execlists->pending);

-:1957: WARNING:MEMORY_BARRIER: memory barrier without comment
#1957: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:1913:
+	mb();

-:2536: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#2536: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.h:1:
+/*

-:2537: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#2537: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.h:2:
+ * SPDX-License-Identifier: MIT

total: 0 errors, 9 warnings, 0 checks, 5312 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
