Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A218023A2F5
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 12:56:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31966E250;
	Mon,  3 Aug 2020 10:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62B506E24B;
 Mon,  3 Aug 2020 10:56:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C287A7DFD;
 Mon,  3 Aug 2020 10:56:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 03 Aug 2020 10:56:12 -0000
Message-ID: <159645217234.19293.8561548193919009872@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200803101133.4529-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200803101133.4529-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915/gem=3A_Reduce_conte?=
 =?utf-8?q?xt_termination_list_iteration_guard_to_RCU?=
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

Series: series starting with [1/7] drm/i915/gem: Reduce context termination list iteration guard to RCU
URL   : https://patchwork.freedesktop.org/series/80203/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4421ede59e7d drm/i915/gem: Reduce context termination list iteration guard to RCU
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
References: d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits") # rcu protection of timeline->requests

-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits")'
#20: 
References: d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits") # rcu protection of timeline->requests

total: 1 errors, 1 warnings, 0 checks, 65 lines checked
ec9af2d61290 drm/i915/gt: Protect context lifetime with RCU
ee3eeddcd833 drm/i915/gt: Free stale request on destroying the virtual engine
ece8f60ae6af drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
f13281e3e17d drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
f2ce274b32c7 drm/i915/gt: Don't cancel the interrupt shadow too early
14bb8af2a6f4 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:296: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#296: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:54:
+	spinlock_t signal_lock;

total: 0 errors, 0 warnings, 1 checks, 256 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
