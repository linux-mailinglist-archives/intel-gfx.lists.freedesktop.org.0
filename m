Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E5615D5B5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 11:31:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6016EB6E;
	Fri, 14 Feb 2020 10:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E636EB79
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 10:31:02 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 11:30:53 +0100
Message-Id: <20200214103055.2117836-18-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.0.24.g3f081b084b0
In-Reply-To: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
References: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/19] drm/i915: Dirty hack to fix selftests
 locking inversion
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some i915 selftests still use i915_vma_lock() as inner lock, and
intel_context_create_request() intel_timeline->mutex as outer lock.
Fortunately for selftests this is not an issue, they should be fixed
but we can move ahead and cleanify lockdep now.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index f64b1020f686..87f9f9e61916 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -446,6 +446,18 @@ struct i915_request *intel_context_create_request(struct intel_context *ce)
 	rq = i915_request_create(ce);
 	intel_context_unpin(ce);
 
+	if (IS_ERR(rq))
+		return rq;
+
+	/*
+	 * timeline->mutex should be the inner lock, but is used as outer lock.
+	 * Hack around this to shut up lockdep in selftests..
+	 */
+	lockdep_unpin_lock(&ce->timeline->mutex, rq->cookie);
+	mutex_release(&ce->timeline->mutex.dep_map, _RET_IP_);
+	mutex_acquire(&ce->timeline->mutex.dep_map, SINGLE_DEPTH_NESTING, 0, _RET_IP_);
+	rq->cookie = lockdep_pin_lock(&ce->timeline->mutex);
+
 	return rq;
 }
 
-- 
2.25.0.24.g3f081b084b0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
