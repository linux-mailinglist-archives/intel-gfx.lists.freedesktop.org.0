Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CB811E078
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 10:19:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3B5F6E2E1;
	Fri, 13 Dec 2019 09:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2191B6E2DE;
 Fri, 13 Dec 2019 09:18:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 184F8A0075;
 Fri, 13 Dec 2019 09:18:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Venkata Sandeep Dhanalakota" <venkata.s.dhanalakota@intel.com>
Date: Fri, 13 Dec 2019 09:18:59 -0000
Message-ID: <157622873906.23799.4887747458979503605@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213091239.67408-1-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20191213091239.67408-1-venkata.s.dhanalakota@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/perf=3A_Register_sy?=
 =?utf-8?q?sctl_path_globally?=
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

Series: series starting with [1/2] drm/i915/perf: Register sysctl path globally
URL   : https://patchwork.freedesktop.org/series/70871/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
59ac00e2ba5e drm/i915/perf: Register sysctl path globally
a35b4a55e2aa drm/i915: Introduce new macros for tracing
-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: drivers/gpu/drm/i915/gt/intel_context.c:72:
+		CE_TRACE(ce, "pin ring:{head:%04x, tail:%04x}\n",
 			  ce->ring->head, ce->ring->tail);

-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ce__' - possible side-effects?
#82: FILE: drivers/gpu/drm/i915/gt/intel_context.h:18:
+#define CE_TRACE(ce__, fmt, ...) do {					\
+	typecheck(struct intel_context, *(ce__));			\
+	ENGINE_TRACE((ce__)->engine, "context:%llx" fmt,		\
+		     (ce__)->timeline->fence_context,			\
+		     ##__VA_ARGS__);					\
+} while(0);

-:82: WARNING:DO_WHILE_MACRO_WITH_TRAILING_SEMICOLON: do {} while (0) macros should not be semicolon terminated
#82: FILE: drivers/gpu/drm/i915/gt/intel_context.h:18:
+#define CE_TRACE(ce__, fmt, ...) do {					\
+	typecheck(struct intel_context, *(ce__));			\
+	ENGINE_TRACE((ce__)->engine, "context:%llx" fmt,		\
+		     (ce__)->timeline->fence_context,			\
+		     ##__VA_ARGS__);					\
+} while(0);

-:87: ERROR:SPACING: space required before the open parenthesis '('
#87: FILE: drivers/gpu/drm/i915/gt/intel_context.h:23:
+} while(0);

-:100: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'e__' - possible side-effects?
#100: FILE: drivers/gpu/drm/i915/gt/intel_engine.h:32:
+#define ENGINE_TRACE(e__, fmt, ...) do {				\
+	typecheck(struct intel_engine_cs, *(e__));			\
+	GEM_TRACE("%s %s: " fmt, 					\
+		  dev_name((e__)->i915->drm.dev),			\
+		  (e__)->name,						\
+		  ##__VA_ARGS__);					\
+} while (0)

-:102: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#102: FILE: drivers/gpu/drm/i915/gt/intel_engine.h:34:
+^IGEM_TRACE("%s %s: " fmt, ^I^I^I^I^I\$

-:210: WARNING:QUOTED_WHITESPACE_BEFORE_NEWLINE: unnecessary whitespace before a quoted newline
#210: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.c:192:
+	GEM_TRACE("%s \n", dev_name(gt->i915->drm.dev));

-:507: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#507: FILE: drivers/gpu/drm/i915/gt/intel_ring_submission.c:769:
+		ENGINE_TRACE(engine, "ring head [%x] not parked\n",
 			  intel_uncore_read_fw(uncore, RING_HEAD(base)));

-:613: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'rq__' - possible side-effects?
#613: FILE: drivers/gpu/drm/i915/i915_request.h:52:
+#define RQ_TRACE(rq__, fmt, ...) do {					\
+	typecheck(struct i915_request, *(rq__));			\
+	ENGINE_TRACE((rq__)->engine,					\
+		     "fence %llx:%lld, current %d" fmt,			\
+		     (rq__)->fence.context, (rq__)->fence.seqno,	\
+		     hwsp_seqno((rq__)),##__VA_ARGS__);			\
+} while(0)

-:618: ERROR:SPACING: space required after that ',' (ctx:VxV)
#618: FILE: drivers/gpu/drm/i915/i915_request.h:57:
+		     hwsp_seqno((rq__)),##__VA_ARGS__);			\
 		                       ^

-:619: ERROR:SPACING: space required before the open parenthesis '('
#619: FILE: drivers/gpu/drm/i915/i915_request.h:58:
+} while(0)

total: 3 errors, 3 warnings, 5 checks, 507 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
