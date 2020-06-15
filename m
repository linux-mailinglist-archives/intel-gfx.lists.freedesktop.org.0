Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CAC1F9B07
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 16:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C3C36E33F;
	Mon, 15 Jun 2020 14:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4073F6E330;
 Mon, 15 Jun 2020 14:55:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39312A0BD0;
 Mon, 15 Jun 2020 14:55:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 15 Jun 2020 14:55:22 -0000
Message-ID: <159223292223.16139.3930311921160019064@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200615123920.17749-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200615123920.17749-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/10=5D_drm/i915/selftests=3A_Disa?=
 =?utf-8?q?ble_preemptive_heartbeats_over_preemption_tests_=28rev3=29?=
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

Series: series starting with [01/10] drm/i915/selftests: Disable preemptive heartbeats over preemption tests (rev3)
URL   : https://patchwork.freedesktop.org/series/78371/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5fa39ee36f3b drm/i915/selftests: Disable preemptive heartbeats over preemption tests
00b8905ebbd9 drm/i915/selftests: Dump engine state and trace upon hanging after reset
-:27: CHECK:LINE_SPACING: Please don't use multiple blank lines
#27: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:509:
+
+

total: 0 errors, 0 warnings, 1 checks, 21 lines checked
4dc0044cb492 drm/i915/gt: Add a safety submission flush in the heartbeat
6f4c470b5862 drm/i915/execlists: Replace direct submit with direct call to tasklet
a2f814c038a3 drm/i915/execlists: Defer schedule_out until after the next dequeue
-:117: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#117: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:2441:
+				*execlists->inactive++ = *port;
 				^

total: 0 errors, 0 warnings, 1 checks, 179 lines checked
cd5b50c90e8b drm/i915/gt: ce->inflight updates are now serialised
db8e1905bf15 drm/i915/gt: Drop atomic for engine->fw_active tracking
fd7fb36f7457 drm/i915/gt: Use virtual_engine during execlists_dequeue
0d9311cd5488 drm/i915/gt: Decouple inflight virtual engines
11a16dbbd0c4 drm/i915/gt: Resubmit the virtual engine on schedule-out

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
