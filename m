Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 307711C2BDB
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 13:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 002E36E185;
	Sun,  3 May 2020 11:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 78BE76E184;
 Sun,  3 May 2020 11:38:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5402AA011B;
 Sun,  3 May 2020 11:38:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 03 May 2020 11:38:16 -0000
Message-ID: <158850589631.21036.13053034850359576506@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200503112132.17899-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200503112132.17899-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/14=5D_drm/i915/gem=3A_Specify_ad?=
 =?utf-8?q?dress_type_for_chained_reloc_batches_=28rev2=29?=
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

Series: series starting with [01/14] drm/i915/gem: Specify address type for chained reloc batches (rev2)
URL   : https://patchwork.freedesktop.org/series/76876/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
02c8f810d643 drm/i915/gem: Specify address type for chained reloc batches
-:37: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Chris Wilson <ickle@x201s.alporthouse.com>'

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
8feebfd436da drm/i915/gem: Implement legacy MI_STORE_DATA_IMM
-:285: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#285: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 466 lines checked
cc6b97ec7ae6 drm/i915/gt: Small tidy of gen8+ breadcrumb emission
c2e4e6b8593f drm/i915: Mark concurrent submissions with a weak-dependency
f4534f62acc6 drm/i915/selftests: Repeat the rps clock frequency measurement
-:68: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#68: FILE: drivers/gpu/drm/i915/gt/selftest_rps.c:311:
+				udelay(1000);

total: 0 errors, 0 warnings, 1 checks, 83 lines checked
c1b14a4db98f drm/i915/gt: Stop holding onto the pinned_default_state
9bc7d44c8f02 dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:387: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#387: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

-:547: WARNING:MEMORY_BARRIER: memory barrier without comment
#547: FILE: drivers/dma-buf/st-dma-fence-proxy.c:180:
+	smp_store_mb(container_of(cb, struct simple_cb, cb)->seen, true);

total: 0 errors, 2 warnings, 1 checks, 932 lines checked
9d9cd56fe002 drm/syncobj: Allow use of dma-fence-proxy
4cd92f858258 drm/i915/gem: Teach execbuf how to wait on future syncobj
bcb046982800 drm/i915/gem: Allow combining submit-fences with syncobj
b609443074e3 drm/i915/gt: Declare when we enabled timeslicing
695d8fbf606b drm/i915: Replace the hardcoded I915_FENCE_TIMEOUT
-:111: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#111: 
new file mode 100644

-:154: WARNING:LONG_LINE: line over 100 characters
#154: FILE: drivers/gpu/drm/i915/i915_request.c:1117:
+							    fence->context ? i915_fence_timeout(rq->i915) : 0,

total: 0 errors, 2 warnings, 0 checks, 119 lines checked
d5ad7de1df33 drm/i915: Drop I915_RESET_TIMEOUT and friends
19be72a69bc5 drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
