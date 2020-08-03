Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA7123A91A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 17:06:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD4489F35;
	Mon,  3 Aug 2020 15:06:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B47AB89F0A;
 Mon,  3 Aug 2020 15:06:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD691A00CC;
 Mon,  3 Aug 2020 15:06:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 03 Aug 2020 15:06:26 -0000
Message-ID: <159646718667.19296.5996550343810471853@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200803144128.13860-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200803144128.13860-1-chris@chris-wilson.co.uk>
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
URL   : https://patchwork.freedesktop.org/series/80219/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
378bbbd633f5 drm/i915/gem: Reduce context termination list iteration guard to RCU
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
References: d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits") # rcu protection of timeline->requests

-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits")'
#20: 
References: d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits") # rcu protection of timeline->requests

total: 1 errors, 1 warnings, 0 checks, 65 lines checked
0907f130be2f drm/i915/gt: Protect context lifetime with RCU
a85d94cf5fd3 drm/i915/gt: Free stale request on destroying the virtual engine
dca44c37f510 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
bcc8f0e9fe28 drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
ed0f0ed98c89 drm/i915/gt: Don't cancel the interrupt shadow too early
0c72915a565b drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:339: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#339: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:54:
+	spinlock_t signal_lock;

total: 0 errors, 0 warnings, 1 checks, 293 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
