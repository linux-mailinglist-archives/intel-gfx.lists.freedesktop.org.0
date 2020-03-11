Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69913181DA1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 17:19:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9C86E9B4;
	Wed, 11 Mar 2020 16:19:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD74D6E9B1;
 Wed, 11 Mar 2020 16:19:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A53E2A0094;
 Wed, 11 Mar 2020 16:19:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Mar 2020 16:19:52 -0000
Message-ID: <158394359264.13953.11950507222236719724@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311104931.15152-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200311104931.15152-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftests=3A_Add_request_throughput_measurement_to?=
 =?utf-8?q?_perf_=28rev2=29?=
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

Series: drm/i915/selftests: Add request throughput measurement to perf (rev2)
URL   : https://patchwork.freedesktop.org/series/73930/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
773240d23fbd drm/i915/selftests: Add request throughput measurement to perf
-:96: WARNING:LINE_SPACING: Missing a blank line after declarations
#96: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1519:
+	struct perf_series *ps = arg;
+	IGT_TIMEOUT(end_time);

-:130: WARNING:LINE_SPACING: Missing a blank line after declarations
#130: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1553:
+	struct i915_request *prev = NULL;
+	IGT_TIMEOUT(end_time);

-:165: WARNING:LINE_SPACING: Missing a blank line after declarations
#165: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1588:
+	struct perf_series *ps = arg;
+	IGT_TIMEOUT(end_time);

-:188: WARNING:LINE_SPACING: Missing a blank line after declarations
#188: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1611:
+	struct drm_i915_private *i915 = arg;
+	static int (* const func[])(void *arg) = {

-:196: WARNING:LINE_SPACING: Missing a blank line after declarations
#196: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1619:
+	struct intel_engine_cs *engine;
+	int (* const *fn)(void *arg);

-:324: WARNING:LINE_SPACING: Missing a blank line after declarations
#324: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1747:
+	struct intel_context *ce;
+	IGT_TIMEOUT(end_time);

-:392: WARNING:LINE_SPACING: Missing a blank line after declarations
#392: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1815:
+	struct intel_context *ce;
+	IGT_TIMEOUT(end_time);

-:461: WARNING:LINE_SPACING: Missing a blank line after declarations
#461: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1884:
+	struct intel_context *ce;
+	IGT_TIMEOUT(end_time);

-:517: WARNING:LINE_SPACING: Missing a blank line after declarations
#517: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1940:
+	struct drm_i915_private *i915 = arg;
+	static int (* const func[])(void *arg) = {

-:525: WARNING:LINE_SPACING: Missing a blank line after declarations
#525: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1948:
+	struct intel_engine_cs *engine;
+	int (* const *fn)(void *arg);

-:570: WARNING:YIELD: Using yield() is generally wrong. See yield() kernel-doc (sched/core.c)
#570: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:1993:
+		yield(); /* start all threads before we kthread_stop() */

total: 0 errors, 11 warnings, 0 checks, 610 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
