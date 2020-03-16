Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7F6186C17
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 14:31:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D1D76E440;
	Mon, 16 Mar 2020 13:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F6086E440
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 13:31:53 +0000 (UTC)
IronPort-SDR: IZCQiGJKZv1vztn+aq7etfpZ4h7jr+4kNbw3Ruoy/MkpTmCr3Kd8BlwuuMKbN49W2Nvxn2k4QA
 5qFCxahaQ1+Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 06:31:52 -0700
IronPort-SDR: Fcc/QQCKooNWbj71C/oRxRpwwiNbkFrms3vYHxO6om/WFmchjJnm5tqREa0Q3i58FzfBehCH62
 VGIYkWrlRXvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="247457517"
Received: from unknown (HELO localhost.localdomain) ([10.223.165.29])
 by orsmga006.jf.intel.com with ESMTP; 16 Mar 2020 06:31:51 -0700
From: Ankit Navik <ankit.p.navik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 18:59:49 +0530
Message-Id: <1584365391-30029-2-git-send-email-ankit.p.navik@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584365391-30029-1-git-send-email-ankit.p.navik@intel.com>
References: <1584365391-30029-1-git-send-email-ankit.p.navik@intel.com>
Subject: [Intel-gfx] [PATCH v7 1/3] drm/i915: Get active pending request for
 given context
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
Cc: ankit.p.navik@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch gives us the active pending request count which is yet
to be submitted to the GPU.

V2:
 * Change 64-bit to atomic for request count. (Tvrtko Ursulin)

V3:
 * Remove mutex for request count.
 * Rebase.
 * Fixes hitting underflow for predictive request. (Tvrtko Ursulin)

V4:
 * Rebase.

V5:
 * Rebase.

V6:
 * Rebase.

V7:
 * Rebase.
 * Add GEM_BUG_ON for req_cnt.

Cc: Vipin Anand <vipin.anand@intel.com>
Signed-off-by: Ankit Navik <ankit.p.navik@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 5 +++++
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c    | 2 ++
 drivers/gpu/drm/i915/gt/intel_lrc.c               | 9 +++++++++
 4 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 026999b34abd..d0ff999429ff 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -879,6 +879,7 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
 	}
 
 	trace_i915_context_create(ctx);
+	atomic_set(&ctx->req_cnt, 0);
 
 	return ctx;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 28760bd03265..a9ba13f8865e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -171,6 +171,11 @@ struct i915_gem_context {
 	 */
 	struct radix_tree_root handles_vma;
 
+	/** req_cnt: tracks the pending commands, based on which we decide to
+	 * go for low/medium/high load configuration of the GPU.
+	 */
+	atomic_t req_cnt;
+
 	/**
 	 * @name: arbitrary name, used for user debug
 	 *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3f4f28e9468..f90c968f95cd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2565,6 +2565,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (batch->private)
 		intel_engine_pool_mark_active(batch->private, eb.request);
 
+	atomic_inc(&eb.gem_context->req_cnt);
+
 	trace_i915_request_queue(eb.request, eb.batch_flags);
 	err = eb_submit(&eb, batch);
 err_request:
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 112531b29f59..ccfebebb0071 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2143,6 +2143,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			}
 
 			if (__i915_request_submit(rq)) {
+				struct i915_gem_context *ctx;
+
 				if (!merge) {
 					*port = execlists_schedule_in(last, port - execlists->pending);
 					port++;
@@ -2158,6 +2160,13 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 				submit = true;
 				last = rq;
+
+				ctx = rcu_dereference_protected(
+					rq->context->gem_context, true);
+
+				GEM_BUG_ON(atomic_read(&ctx->req_cnt));
+				if (atomic_read(&ctx->req_cnt) > 0)
+					atomic_dec(&ctx->req_cnt);
 			}
 		}
 
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
