Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32650163498
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 22:16:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 971AA89AB3;
	Tue, 18 Feb 2020 21:16:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6752189ADC;
 Tue, 18 Feb 2020 21:16:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6045EA0138;
 Tue, 18 Feb 2020 21:16:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 18 Feb 2020 21:16:07 -0000
Message-ID: <158206056736.31431.1873678131044479131@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/12=5D_drm/i915/selftests=3A_Chec?=
 =?utf-8?q?k_for_any_sign_of_request_starting_in_wait=5Ffor=5Fsubmit=28=29?=
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

Series: series starting with [01/12] drm/i915/selftests: Check for any sign of request starting in wait_for_submit()
URL   : https://patchwork.freedesktop.org/series/73583/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
181edb75b6c9 drm/i915/gt: Show the cumulative context runtime in engine debug
-:36: WARNING:LONG_LINE: line over 100 characters
#36: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1393:
+						DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
a2db240005d4 drm/i915/execlists: Check the sentinel is alone in the ELSP
9ba40b15b759 drm/i915/gt: Prevent allocation on a banned context
541f72809fce drm/i915/gem: Check that the context wasn't closed during setup
cf261859e482 drm/i915/gem: Consolidate ctx->engines[] release
1d06fdaaf50f drm/i915/selftest: Analyse timestamp behaviour across context switches
-:137: WARNING:MEMORY_BARRIER: memory barrier without comment
#137: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:4574:
+		wmb();

-:151: WARNING:MEMORY_BARRIER: memory barrier without comment
#151: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:4588:
+	rmb();

total: 0 errors, 2 warnings, 0 checks, 242 lines checked
2c32b549cc8d drm/i915: Read rawclk_freq earlier
8fd6b67e363b drm/i915/gt: Refactor l3cc/mocs availability
cf0279a9dfdd drm/i915/gt: Declare when we enabled timeslicing
04c7e9bbd9a2 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
