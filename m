Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0EE1C6487
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 01:31:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55715894EA;
	Tue,  5 May 2020 23:31:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B5F8489452;
 Tue,  5 May 2020 23:31:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9DF7DA0BC6;
 Tue,  5 May 2020 23:31:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 05 May 2020 23:31:30 -0000
Message-ID: <158872149061.25911.1072341350522664400@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200505215214.9690-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200505215214.9690-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/14=5D_drm/i915=3A_Mark_concurren?=
 =?utf-8?q?t_submissions_with_a_weak-dependency?=
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

Series: series starting with [01/14] drm/i915: Mark concurrent submissions with a weak-dependency
URL   : https://patchwork.freedesktop.org/series/76973/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c4828948d40e drm/i915: Mark concurrent submissions with a weak-dependency
46cafc823859 drm/i915: Propagate error from completed fences
c098263cd3f9 drm/i915: Ignore submit-fences on the same timeline
d2d277b8470c drm/i915: Pull waiting on an external dma-fence into its routine
b147f27369cc drm/i915: Prevent using semaphores to chain up to external fences
827865132bb2 drm/i915: Tidy awaiting on dma-fences
53a2de478fd1 dma-buf: Proxy fence, an unsignaled fence placeholder
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
52b85f061e0e drm/syncobj: Allow use of dma-fence-proxy
0654a7646abf drm/i915/gem: Teach execbuf how to wait on future syncobj
e2f962c64a8e drm/i915/gem: Allow combining submit-fences with syncobj
a88bbc5651d9 drm/i915/gt: Declare when we enabled timeslicing
e779556e8752 drm/i915: Replace the hardcoded I915_FENCE_TIMEOUT
-:111: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#111: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 125 lines checked
161372b2eff2 drm/i915: Drop I915_RESET_TIMEOUT and friends
9ac5d5912623 drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
