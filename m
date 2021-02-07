Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AD1312504
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Feb 2021 16:16:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72F06E1CD;
	Sun,  7 Feb 2021 15:16:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F19FF6E183;
 Sun,  7 Feb 2021 15:16:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9A2AA9932;
 Sun,  7 Feb 2021 15:16:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 07 Feb 2021 15:16:40 -0000
Message-ID: <161271100092.30292.14982913728263187667@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210207150351.19482-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210207150351.19482-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Move_submit?=
 =?utf-8?q?=5Frequest_to_i915=5Fsched=5Fengine?=
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

Series: series starting with [CI,1/4] drm/i915: Move submit_request to i915_sched_engine
URL   : https://patchwork.freedesktop.org/series/86822/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
40ff776943d9 drm/i915: Move submit_request to i915_sched_engine
90cb79f67175 drm/i915: Move finding the current active request to the scheduler
-:246: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'heartbeat', this function's name, in a string
#246: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:111:
+			     "heartbeat " RQ_FMT "completed\n",

-:265: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'heartbeat', this function's name, in a string
#265: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:143:
+				     "heartbeat " RQ_FMT " pending\n",

-:275: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'heartbeat', this function's name, in a string
#275: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:159:
+				     "bumping heartbeat " RQ_FMT " prio:%d\n",

-:283: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'heartbeat', this function's name, in a string
#283: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:167:
+				     "heartbeat " RQ_FMT " stuck\n",

-:293: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'heartbeat', this function's name, in a string
#293: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:201:
+	ENGINE_TRACE(engine, "heartbeat " RQ_FMT "started\n", RQ_ARG(rq));

total: 0 errors, 5 warnings, 0 checks, 579 lines checked
f89a52a6bf2f drm/i915: Show execlists queues when dumping state
-:498: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#498: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:3555:
+				DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),

total: 0 errors, 1 warnings, 0 checks, 839 lines checked
9da368f0928b drm/i915: Wrap i915_request_use_semaphores()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
