Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B90736A6960
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 10:03:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D63E10E212;
	Wed,  1 Mar 2023 09:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952A810E0B7
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 09:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677661407; x=1709197407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p0GdiuUHF6WwarF0q0kM4CQoJQfF//C0PagkBR1XGUE=;
 b=hoxYZXVsnHYyM90RMZP+2Gd8uDVmHg/FIVlZ8idQPjiX9L4peM/+KI9E
 CSKOFAtPWLjH1RHG7jPE3GYB+R49BIPlCrI94fKww8grs9MrrNJb/ud8+
 9u5Aqu7AsPk+ttRr0xOZkAo1fO2VeWWzqJW75Xkqhze9XZVGzJ4Vu7e52
 LkRahmYqoVHnFsZilM67gojNgsguxqSiw3+zH7GJ5GhQ12YmjSNHaUiUf
 w/uWNv2TDBTTJ0Hhnc5+QQlb5iD8r2LvmoHildnbxfm+zXf7kiUAKM1mz
 fNH9fBDM2iJ3r/a1+C4Sbrr8FytauXlkzZucqYoBF9ABRuDQITgZEKXVf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="361936139"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="361936139"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 01:03:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="674483349"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="674483349"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO
 jkrzyszt-mobl1.intranet) ([10.213.8.127])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 01:03:18 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 10:02:30 +0100
Message-Id: <20230301090230.31404-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230301090230.31404-1-janusz.krzysztofik@linux.intel.com>
References: <20230225221218.134254-1-janusz.krzysztofik@linux.intel.com>
 <20230301090230.31404-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v2 1/1] drm/i915/active: Fix misuse of non-idle
 barriers as fence trackers
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Users reported oopses on list corruptions when using i915 perf with a
number of concurrently running graphics applications.  Root cause analysis
pointed at an issue in barrier processing code -- a race among perf open /
close replacing active barriers with perf requests on kernel context and
concurrent barrier preallocate / acquire operations performed during user
context first pin / last unpin.

When adding a request to a composite tracker, we try to reuse an existing
fence tracker, already allocated and registered with that composite.  The
tracker we obtain may already track another fence, may be an idle barrier,
or an active barrier.

If the tracker we get occurs a non-idle barrier then we try to delete that
barrier from a list of barrier tasks it belongs to.  However, while doing
that we don't respect return value from a function that performs the
barrier deletion.  Should the deletion ever failed, we would end up
reusing the tracker still registered as a barrier task.  Since the same
structure field is reused with both fence callback lists and barrier
tasks list, list corruptions would likely occur.

Barriers are now deleted from a barrier tasks list by temporarily removing
the list content, traversing that content with skip over the node to be
deleted, then populating the list back with the modified content.  Should
that intentionally racy concurrent deletion attempts be not serialized,
one or more of those may fail because of the list being temporary empty.

Related code that ignores the results of barrier deletion was initially
introduced in v5.4 by commit d8af05ff38ae ("drm/i915: Allow sharing the
idle-barrier from other kernel requests").  However, all users of the
barrier deletion routine were apparently serialized at that time, then the
issue didn't exhibit itself.  Results of git bisect with help of a newly
developed igt@gem_barrier_race@remote-request IGT test indicate that list
corruptions might start to appear after commit 311770173fac ("drm/i915/gt:
Schedule request retirement when timeline idles"), introduced in v5.5.

Respect results of barrier deletion attempts -- mark the barrier as idle
only if successfully deleted from the list.  Then, before proceeding with
setting our fence as the one currently tracked, make sure that the tracker
we've got is not a non-idle barrier.  If that check fails then don't use
that tracker but go back and try to acquire a new, usable one.

v2: no code changes,
  - blame commit 311770173fac ("drm/i915/gt: Schedule request retirement
    when timeline idles"), v5.5, not commit d8af05ff38ae ("drm/i915: Allow
    sharing the idle-barrier from other kernel requests"), v5.4,
  - reword commit description.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6333
Fixes: 311770173fac ("drm/i915/gt: Schedule request retirement when timeline idles")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: stable@vger.kernel.org # v5.5
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_active.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 7412abf166a8c..f9282b8c87c1c 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -422,12 +422,12 @@ replace_barrier(struct i915_active *ref, struct i915_active_fence *active)
 	 * we can use it to substitute for the pending idle-barrer
 	 * request that we want to emit on the kernel_context.
 	 */
-	__active_del_barrier(ref, node_from_active(active));
-	return true;
+	return __active_del_barrier(ref, node_from_active(active));
 }
 
 int i915_active_add_request(struct i915_active *ref, struct i915_request *rq)
 {
+	u64 idx = i915_request_timeline(rq)->fence_context;
 	struct dma_fence *fence = &rq->fence;
 	struct i915_active_fence *active;
 	int err;
@@ -437,16 +437,19 @@ int i915_active_add_request(struct i915_active *ref, struct i915_request *rq)
 	if (err)
 		return err;
 
-	active = active_instance(ref, i915_request_timeline(rq)->fence_context);
-	if (!active) {
-		err = -ENOMEM;
-		goto out;
-	}
+	do {
+		active = active_instance(ref, idx);
+		if (!active) {
+			err = -ENOMEM;
+			goto out;
+		}
+
+		if (replace_barrier(ref, active)) {
+			RCU_INIT_POINTER(active->fence, NULL);
+			atomic_dec(&ref->count);
+		}
+	} while (is_barrier(active));
 
-	if (replace_barrier(ref, active)) {
-		RCU_INIT_POINTER(active->fence, NULL);
-		atomic_dec(&ref->count);
-	}
 	if (!__i915_active_fence_set(active, fence))
 		__i915_active_acquire(ref);
 
-- 
2.25.1

