Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5A46B0329
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 10:41:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A80E10E653;
	Wed,  8 Mar 2023 09:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72E2710E61D;
 Wed,  8 Mar 2023 09:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678268498; x=1709804498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RevNU1gguAYcmc9MOxMt6ej0yGVVOKwB+fERrZVWlzE=;
 b=BOJrFTUnjjKkq5aee61RpADW2ihivZxDvI9WPVYK/knQHVOPjpbKNbbK
 ZT65ALTdKhIYAOsEYMuxJMnliBwDyMqzOpOm5hbk4W1/0lKrMsomK8he/
 bx5CUNBrtiettrnCEgIbVszsNLRzZWE9rrLYYlF9T73/dR0Nmk1x1rO4m
 w186rBC7TtZpfZLhfTs3iwZgqzEoASh0bu1dUDuS0kEAgp6qvxVyL3JUm
 ISidPSd+uESXzW2rZwakcdfKg7vMl1CGcFa8aZWUGJr9GH5OPBTur1Alb
 Ki8UPIEvmH8T8BHr5P+8FzYTVky+Fp4NQWW12zMS5oiXE+yk4eQBqMCPF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="315772746"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="315772746"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 01:41:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="709362482"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="709362482"
Received: from gbain-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.108])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 01:41:34 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 stable@vger.kernel.org
Date: Wed,  8 Mar 2023 10:41:02 +0100
Message-Id: <20230308094106.203686-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308094106.203686-1-andi.shyti@linux.intel.com>
References: <20230308094106.203686-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/5] drm/i915: Throttle for ringspace prior
 to taking the timeline mutex
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
Cc: Andi Shyti <andi.shyti@kernel.org>, Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Maciej Patelczyk <maciej.patelczyk@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

Before taking exclusive ownership of the ring for emitting the request,
wait for space in the ring to become available. This allows others to
take the timeline->mutex to make forward progresses while userspace is
blocked.

In particular, this allows regular clients to issue requests on the
kernel context, potentially filling the ring, but allow the higher
priority heartbeats and pulses to still be submitted without being
blocked by the less critical work.

Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Maciej Patelczyk <maciej.patelczyk@intel.com>
Cc: stable@vger.kernel.org
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c | 41 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_context.h |  2 ++
 drivers/gpu/drm/i915/i915_request.c     |  3 ++
 3 files changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 2aa63ec521b89..59cd612a23561 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -626,6 +626,47 @@ bool intel_context_revoke(struct intel_context *ce)
 	return ret;
 }
 
+int intel_context_throttle(const struct intel_context *ce)
+{
+	const struct intel_ring *ring = ce->ring;
+	const struct intel_timeline *tl = ce->timeline;
+	struct i915_request *rq;
+	int err = 0;
+
+	if (READ_ONCE(ring->space) >= SZ_1K)
+		return 0;
+
+	rcu_read_lock();
+	list_for_each_entry_reverse(rq, &tl->requests, link) {
+		if (__i915_request_is_complete(rq))
+			break;
+
+		if (rq->ring != ring)
+			continue;
+
+		/* Wait until there will be enough space following that rq */
+		if (__intel_ring_space(rq->postfix,
+				       ring->emit,
+				       ring->size) < ring->size / 2) {
+			if (i915_request_get_rcu(rq)) {
+				rcu_read_unlock();
+
+				if (i915_request_wait(rq,
+						      I915_WAIT_INTERRUPTIBLE,
+						      MAX_SCHEDULE_TIMEOUT) < 0)
+					err = -EINTR;
+
+				rcu_read_lock();
+				i915_request_put(rq);
+			}
+			break;
+		}
+	}
+	rcu_read_unlock();
+
+	return err;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_context.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 0a8d553da3f43..f919a66cebf5b 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -226,6 +226,8 @@ static inline void intel_context_exit(struct intel_context *ce)
 		ce->ops->exit(ce);
 }
 
+int intel_context_throttle(const struct intel_context *ce);
+
 static inline struct intel_context *intel_context_get(struct intel_context *ce)
 {
 	kref_get(&ce->ref);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 630a732aaecca..72aed544f8714 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1034,6 +1034,9 @@ i915_request_create(struct intel_context *ce)
 	struct i915_request *rq;
 	struct intel_timeline *tl;
 
+	if (intel_context_throttle(ce))
+		return ERR_PTR(-EINTR);
+
 	tl = intel_context_timeline_lock(ce);
 	if (IS_ERR(tl))
 		return ERR_CAST(tl);
-- 
2.39.2

