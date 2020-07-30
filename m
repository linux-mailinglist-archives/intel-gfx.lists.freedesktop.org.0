Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC92233348
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 15:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 373C86E8ED;
	Thu, 30 Jul 2020 13:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62CCC6E16F;
 Thu, 30 Jul 2020 13:45:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C916A0BA8;
 Thu, 30 Jul 2020 13:45:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Jul 2020 13:45:48 -0000
Message-ID: <159611674834.11114.16203983922501337806@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200730093756.16737-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/21=5D_drm/i915=3A_Add_a_couple_o?=
 =?utf-8?q?f_missing_i915=5Factive=5Ffini=28=29?=
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

Series: series starting with [01/21] drm/i915: Add a couple of missing i915_active_fini()
URL   : https://patchwork.freedesktop.org/series/80083/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a0fa9abdd53b drm/i915: Add a couple of missing i915_active_fini()
67cc7c03075d drm/i915: Skip taking acquire mutex for no ref->active callback
a0e8fa99a854 drm/i915: Export a preallocate variant of i915_active_acquire()
262dde54a973 drm/i915: Keep the most recently used active-fence upon discard
924da40b21b0 drm/i915: Make the stale cached active node available for any timeline
84873e9f3274 drm/i915: Reduce locking around i915_active_acquire_preallocate_barrier()
bc7bca4d9864 drm/i915: Provide a fastpath for waiting on vma bindings
8a3376d81ddb drm/i915/gem: Reduce ctx->engine_mutex for reading the clone source
e5dd3b861541 drm/i915/gem: Reduce ctx->engines_mutex for get_engines()
0fcbf16a7b94 drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs
0620516e4506 drm/i915/gt: Replace intel_engine_transfer_stale_breadcrumbs
cb5ecba76529 drm/i915/gt: Only transfer the virtual context to the new engine if active
-:28: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#28: 
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"

-:28: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")'
#28: 
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"

total: 1 errors, 1 warnings, 0 checks, 81 lines checked
be5a292c6ab9 drm/i915/gt: Distinguish the virtual breadcrumbs from the irq breadcrumbs
-:212: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#212: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 513 lines checked
28e0222e4292 drm/i915/gt: Move intel_breadcrumbs_arm_irq earlier
10e0ecedd3dc drm/i915/gt: Hold context/request reference while breadcrumbs are active
ec7fa5b7b139 drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
77ca5e185eed drm/i915/gt: Protect context lifetime with RCU
e7cea35077a1 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:287: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#287: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:54:
+	spinlock_t signal_lock;

total: 0 errors, 0 warnings, 1 checks, 248 lines checked
9497a93cc244 drm/i915: Drop i915_request.lock serialisation around await_start
73380f416eca drm/i915: Drop i915_request.lock requirement for intel_rps_boost()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
