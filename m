Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5041CD381
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 10:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 891146E248;
	Mon, 11 May 2020 08:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A54789D99;
 Mon, 11 May 2020 08:05:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28126A47EE;
 Mon, 11 May 2020 08:05:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 11 May 2020 08:05:16 -0000
Message-ID: <158918431612.13119.5080613071298473733@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200511075722.13483-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200511075722.13483-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/20=5D_drm/i915/gt=3A_Mark_up_the?=
 =?utf-8?q?_racy_read_of_execlists-=3Econtext=5Ftag?=
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

Series: series starting with [01/20] drm/i915/gt: Mark up the racy read of execlists->context_tag
URL   : https://patchwork.freedesktop.org/series/77141/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e9cce902ea86 drm/i915/gt: Mark up the racy read of execlists->context_tag
bf3abad22116 drm/i915/gt: Couple up old virtual breadcrumb on new sibling
00b75eb28274 dma-buf: Use atomic_fetch_add() for the context id
344cdfd1b12f drm/i915: Mark the addition of the initial-breadcrumb in the request
aae3a8087d19 drm/i915: Tidy awaiting on dma-fences
b28a6fb10640 dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:380: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#380: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

-:540: WARNING:MEMORY_BARRIER: memory barrier without comment
#540: FILE: drivers/dma-buf/st-dma-fence-proxy.c:180:
+	smp_store_mb(container_of(cb, struct simple_cb, cb)->seen, true);

total: 0 errors, 2 warnings, 1 checks, 1043 lines checked
f5ce843a1d9e drm/syncobj: Allow use of dma-fence-proxy
2d38f7b8348e drm/i915/gem: Teach execbuf how to wait on future syncobj
554edd421135 drm/i915/gem: Allow combining submit-fences with syncobj
456efa24718d drm/i915/gt: Declare when we enabled timeslicing
9edbc891b919 drm/i915/gem: Remove redundant exec_fence
b3548165607b drm/i915: Drop no-semaphore boosting
30e4aad7f08c drm/i915: Move saturated workload detection back to the context
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 68 lines checked
b408f2a0bcf3 drm/i915: Remove the saturation backoff for HW semaphores
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
References: ca6e56f654e7 ("drm/i915: Disable semaphore busywaits on saturated systems")

-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ca6e56f654e7 ("drm/i915: Disable semaphore busywaits on saturated systems")'
#10: 
References: ca6e56f654e7 ("drm/i915: Disable semaphore busywaits on saturated systems")

total: 1 errors, 1 warnings, 0 checks, 139 lines checked
8fd6b02f35ea drm/i915/gt: Use built-in active intel_context reference
1c257f5105ba drm/i915: Drop I915_RESET_TIMEOUT and friends
a6e1762c5b41 drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
da8da4f7bf46 drm/i915/selftests: Always call the provided engine->emit_init_breadcrumb
2d0a0242f895 drm/i915: Emit await(batch) before MI_BB_START
a36f76dba344 drm/i915/selftests: Always flush before unpining after writing

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
