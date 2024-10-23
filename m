Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAAB9ACEDB
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 17:33:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F01A10E80E;
	Wed, 23 Oct 2024 15:33:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C29B810E80E;
 Wed, 23 Oct 2024 15:33:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_pmu_changes_with_igt?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Oct 2024 15:33:02 -0000
Message-ID: <172969758279.1324186.7282315203539052512@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241023144839.3140256-1-lucas.demarchi@intel.com>
In-Reply-To: <20241023144839.3140256-1-lucas.demarchi@intel.com>
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

Series: pmu changes with igt
URL   : https://patchwork.freedesktop.org/series/140379/
State : warning

== Summary ==

Error: dim checkpatch failed
c76c6233c788 pmu changes
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
git://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git perf/pmu-unregister

-:37: WARNING:TABSTOP: Statements should start on a tabstop
#37: FILE: include/linux/idr.h:137:
+	     if (_T.id >= 0) idr_remove(_T.idr, _T.id),

-:37: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#37: FILE: include/linux/idr.h:137:
+	     if (_T.id >= 0) idr_remove(_T.idr, _T.id),

-:39: ERROR:CODE_INDENT: code indent should use tabs where possible
#39: FILE: include/linux/idr.h:139:
+^I     ^I.idr = idr,$

-:39: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#39: FILE: include/linux/idr.h:139:
+^I     ^I.idr = idr,$

-:55: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#55: FILE: include/linux/perf_event.h:321:
+	spinlock_t			events_lock;

-:138: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#138: FILE: include/linux/perf_event.h:1113:
+extern int perf_pmu_unregister(struct pmu *pmu);

-:168: WARNING:LINE_SPACING: Missing a blank line after declarations
#168: FILE: kernel/events/core.c:1196:
+	int *count = &(*this_cpu_ptr(pmu->cpu_pmu_context))->pmu_disable_count;
+	WARN_ON_ONCE(*count == 0);

-:502: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (0, 0)
#502: FILE: kernel/events/core.c:5403:
+DEFINE_FREE(__free_event, struct perf_event *, if (_T) __free_event(_T))
[...]
+static void _free_event(struct perf_event *event)

-:542: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#542: FILE: kernel/events/core.c:5548:
+	if (event->state > PERF_EVENT_STATE_REVOKED) {
[...]
+	} else {
[...]

-:543: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#543: FILE: kernel/events/core.c:5549:
+		perf_remove_from_context(event, DETACH_GROUP|DETACH_DEAD);
 		                                            ^

-:768: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (0, 0)
#768: FILE: kernel/events/core.c:11869:
+DEFINE_FREE(pmu_unregister, struct pmu *, if (_T) perf_pmu_free(_T))
[...]
+int perf_pmu_register(struct pmu *_pmu, const char *name, int type)

-:1143: ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
#1143: FILE: kernel/events/core.c:12498:
+		return (void*)pmu;

total: 3 errors, 7 warnings, 3 checks, 1214 lines checked


