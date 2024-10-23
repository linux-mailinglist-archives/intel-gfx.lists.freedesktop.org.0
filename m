Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E669ABD9D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 07:07:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AE1510E72E;
	Wed, 23 Oct 2024 05:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007D610E72E;
 Wed, 23 Oct 2024 05:07:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_pmu_changes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Oct 2024 05:07:21 -0000
Message-ID: <172966004199.1322263.4130795837093860880@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241023042909.3038309-2-lucas.demarchi@intel.com>
In-Reply-To: <20241023042909.3038309-2-lucas.demarchi@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: pmu changes
URL   : https://patchwork.freedesktop.org/series/140350/
State : warning

== Summary ==

Error: dim checkpatch failed
95db02e7c02a pmu changes
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
git://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git perf/pmu-unregister

-:39: WARNING:TABSTOP: Statements should start on a tabstop
#39: FILE: include/linux/idr.h:137:
+	     if (_T.id >= 0) idr_remove(_T.idr, _T.id),

-:39: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#39: FILE: include/linux/idr.h:137:
+	     if (_T.id >= 0) idr_remove(_T.idr, _T.id),

-:41: ERROR:CODE_INDENT: code indent should use tabs where possible
#41: FILE: include/linux/idr.h:139:
+^I     ^I.idr = idr,$

-:41: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#41: FILE: include/linux/idr.h:139:
+^I     ^I.idr = idr,$

-:57: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#57: FILE: include/linux/perf_event.h:321:
+	spinlock_t			events_lock;

-:140: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#140: FILE: include/linux/perf_event.h:1113:
+extern int perf_pmu_unregister(struct pmu *pmu);

-:170: WARNING:LINE_SPACING: Missing a blank line after declarations
#170: FILE: kernel/events/core.c:1196:
+	int *count = &(*this_cpu_ptr(pmu->cpu_pmu_context))->pmu_disable_count;
+	WARN_ON_ONCE(*count == 0);

-:504: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (0, 0)
#504: FILE: kernel/events/core.c:5403:
+DEFINE_FREE(__free_event, struct perf_event *, if (_T) __free_event(_T))
[...]
+static void _free_event(struct perf_event *event)

-:544: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#544: FILE: kernel/events/core.c:5548:
+	if (event->state > PERF_EVENT_STATE_REVOKED) {
[...]
+	} else {
[...]

-:545: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#545: FILE: kernel/events/core.c:5549:
+		perf_remove_from_context(event, DETACH_GROUP|DETACH_DEAD);
 		                                            ^

-:770: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (0, 0)
#770: FILE: kernel/events/core.c:11869:
+DEFINE_FREE(pmu_unregister, struct pmu *, if (_T) perf_pmu_free(_T))
[...]
+int perf_pmu_register(struct pmu *_pmu, const char *name, int type)

-:1145: ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
#1145: FILE: kernel/events/core.c:12498:
+		return (void*)pmu;

total: 3 errors, 7 warnings, 3 checks, 1214 lines checked


