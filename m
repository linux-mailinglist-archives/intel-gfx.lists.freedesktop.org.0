Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A471585BD
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 23:48:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 274776E25E;
	Mon, 10 Feb 2020 22:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1350E6E25C;
 Mon, 10 Feb 2020 22:48:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C03CA0003;
 Mon, 10 Feb 2020 22:48:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 10 Feb 2020 22:48:47 -0000
Message-ID: <158137492704.3099.433005057315013651@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200210205722.794180-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200210205722.794180-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915/gt=3A_Avoid_resetti?=
 =?utf-8?q?ng_ring-=3Ehead_outside_of_its_timeline_mutex?=
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

Series: series starting with [1/7] drm/i915/gt: Avoid resetting ring->head outside of its timeline mutex
URL   : https://patchwork.freedesktop.org/series/73256/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1f4fe3bfcb66 drm/i915/gt: Avoid resetting ring->head outside of its timeline mutex
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
References: f3c0efc9fe7a ("drm/i915/execlists: Leave resetting ring to intel_ring")

-:15: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit f3c0efc9fe7a ("drm/i915/execlists: Leave resetting ring to intel_ring")'
#15: 
References: f3c0efc9fe7a ("drm/i915/execlists: Leave resetting ring to intel_ring")

total: 1 errors, 1 warnings, 0 checks, 115 lines checked
5bf840c72399 drm/i915/selftests: Exercise timeslice rewinding
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
References: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")

-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")'
#13: 
References: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")

-:189: WARNING:MEMORY_BARRIER: memory barrier without comment
#189: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:929:
+		wmb();

-:219: WARNING:MEMORY_BARRIER: memory barrier without comment
#219: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:959:
+		wmb();

total: 1 errors, 3 warnings, 0 checks, 221 lines checked
2351ed092201 drm/i915/selftests: Relax timeout for error-interrupt reset processing
6ad77fccd647 drm/i915/gem: Don't leak non-persistent requests on changing engines
-:249: WARNING:USE_SPINLOCK_T: struct spinlock should be spinlock_t
#249: FILE: drivers/gpu/drm/i915/gem/i915_gem_context_types.h:184:
+		struct spinlock lock;

total: 0 errors, 1 warnings, 0 checks, 246 lines checked
e015db52f116 drm/i915: Disable use of hwsp_cacheline for kernel_context
49bdac891f25 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
034350519d42 drm/i915/execlists: Remove preempt-to-busy roundtrip delay

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
