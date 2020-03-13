Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 738E31845DA
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 12:23:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D984B6EBC4;
	Fri, 13 Mar 2020 11:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BFE66EBC4
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 11:23:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 04:23:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; d="scan'208";a="237191848"
Received: from unknown (HELO chromeserver.iind.intel.com) ([10.223.246.82])
 by orsmga008.jf.intel.com with ESMTP; 13 Mar 2020 04:23:20 -0700
From: srinivasan.s@intel.com
To: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk,
 tvrtko.ursulin@intel.com
Date: Fri, 13 Mar 2020 16:42:57 +0530
Message-Id: <1584097979-158957-2-git-send-email-srinivasan.s@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
References: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Srinivasan S <srinivasan.s@intel.com>

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

V6
 * Rebase.

V7
 * Added static table of slice/subslice/EU for JSL GEN11-LP.
 * Rebase.

Signed-off-by: Srinivasan S <srinivasan.s@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 6 ++++++
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c    | 1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c               | 3 +++
 4 files changed, 11 insertions(+)

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
index 28760bd03265..e26e94a0ab07 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -172,6 +172,12 @@ struct i915_gem_context {
 	struct radix_tree_root handles_vma;
 
 	/**
+	 * req_cnt: tracks the pending commands, based on which we decide to
+	 * go for low/medium/high load configuration of the GPU.
+	 */
+	atomic_t req_cnt;
+
+	/**
 	 * @name: arbitrary name, used for user debug
 	 *
 	 * A name is constructed for the context from the creator's process
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3f4f28e9468..2fe9ab20ec97 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2565,6 +2565,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (batch->private)
 		intel_engine_pool_mark_active(batch->private, eb.request);
 
+	atomic_inc(&eb.gem_context->req_cnt);
 	trace_i915_request_queue(eb.request, eb.batch_flags);
 	err = eb_submit(&eb, batch);
 err_request:
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 112531b29f59..c58fc4329944 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2158,6 +2158,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 				submit = true;
 				last = rq;
+
+				if (atomic_read(&rq->context->gem_context->req_cnt) > 0)
+					atomic_dec(&rq->context->gem_context->req_cnt);
 			}
 		}
 
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
