Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F016F476B
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14E7610E2E5;
	Tue,  2 May 2023 15:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D5D610E2E5
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041905; x=1714577905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sB9fSAen2hPCu7OT3iqCnHmrPo6IqePhniQCRF/gux8=;
 b=KQa0AYSvSvgootw65B6PkwK2/w6pA2f9An9xiMHUO/YP4JdWZzYh3HQ2
 GWhmJK8CpxGHxMlI0O4IDOusFZ9k5EcbUayfkNet8V5PjMGVTi0894c36
 uSNHg1I3P7jJfpMFdpuFdF+Hu9FHYLCHgKbaPZaMyOpmKcXmOQiHRh68y
 /0sxtZ8uow/N0S9THtMAkhI8awGzprO7vnE0DWviSQSfm8nlOjJnYfnuf
 Zd/dX1nL2DA8WNFUIYNNuc1cOrpXL4TAK4hkp2Wn9yPraPTlXPMixFchT
 fBcAJnahH6v3NPPNGw/tXvkxvulaXQJ8hE8cq6JZ5qSaR0bGSoiJArA79 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="413889392"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="413889392"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="807896337"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="807896337"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:25 +0300
Message-Id: <62a7a0f6e5b33e59ef4339304d01e7ef7ee04430.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/24] drm/i915/request: drop kernel-doc
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The documentation is closer to not being kernel-doc. Just drop the
kernel-doc /** indicators.

drivers/gpu/drm/i915/i915_request.h:176: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
 * Request queue structure.
drivers/gpu/drm/i915/i915_request.h:477: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
 * Returns true if seq1 is later than seq2.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_request.h | 52 ++++++++++++++---------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index f5e1bb5e857a..0ac55b2e4223 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -172,7 +172,7 @@ enum {
 	I915_FENCE_FLAG_COMPOSITE,
 };
 
-/**
+/*
  * Request queue structure.
  *
  * The request queue allows us to note sequence numbers that have been emitted
@@ -198,7 +198,7 @@ struct i915_request {
 
 	struct drm_i915_private *i915;
 
-	/**
+	/*
 	 * Context and ring buffer related to this request
 	 * Contexts are refcounted, so when this request is associated with a
 	 * context, we must increment the context's refcount, to guarantee that
@@ -251,9 +251,9 @@ struct i915_request {
 	};
 	struct llist_head execute_cb;
 	struct i915_sw_fence semaphore;
-	/**
-	 * @submit_work: complete submit fence from an IRQ if needed for
-	 * locking hierarchy reasons.
+	/*
+	 * complete submit fence from an IRQ if needed for locking hierarchy
+	 * reasons.
 	 */
 	struct irq_work submit_work;
 
@@ -277,35 +277,35 @@ struct i915_request {
 	 */
 	const u32 *hwsp_seqno;
 
-	/** Position in the ring of the start of the request */
+	/* Position in the ring of the start of the request */
 	u32 head;
 
-	/** Position in the ring of the start of the user packets */
+	/* Position in the ring of the start of the user packets */
 	u32 infix;
 
-	/**
+	/*
 	 * Position in the ring of the start of the postfix.
 	 * This is required to calculate the maximum available ring space
 	 * without overwriting the postfix.
 	 */
 	u32 postfix;
 
-	/** Position in the ring of the end of the whole request */
+	/* Position in the ring of the end of the whole request */
 	u32 tail;
 
-	/** Position in the ring of the end of any workarounds after the tail */
+	/* Position in the ring of the end of any workarounds after the tail */
 	u32 wa_tail;
 
-	/** Preallocate space in the ring for the emitting the request */
+	/* Preallocate space in the ring for the emitting the request */
 	u32 reserved_space;
 
-	/** Batch buffer pointer for selftest internal use. */
+	/* Batch buffer pointer for selftest internal use. */
 	I915_SELFTEST_DECLARE(struct i915_vma *batch);
 
 	struct i915_vma_resource *batch_res;
 
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
-	/**
+	/*
 	 * Additional buffers requested by userspace to be captured upon
 	 * a GPU hang. The vma/obj on this list are protected by their
 	 * active reference - all objects on this list must also be
@@ -314,29 +314,29 @@ struct i915_request {
 	struct i915_capture_list *capture_list;
 #endif
 
-	/** Time at which this request was emitted, in jiffies. */
+	/* Time at which this request was emitted, in jiffies. */
 	unsigned long emitted_jiffies;
 
-	/** timeline->request entry for this request */
+	/* timeline->request entry for this request */
 	struct list_head link;
 
-	/** Watchdog support fields. */
+	/* Watchdog support fields. */
 	struct i915_request_watchdog {
 		struct llist_node link;
 		struct hrtimer timer;
 	} watchdog;
 
-	/**
-	 * @guc_fence_link: Requests may need to be stalled when using GuC
-	 * submission waiting for certain GuC operations to complete. If that is
-	 * the case, stalled requests are added to a per context list of stalled
-	 * requests. The below list_head is the link in that list. Protected by
+	/*
+	 * Requests may need to be stalled when using GuC submission waiting for
+	 * certain GuC operations to complete. If that is the case, stalled
+	 * requests are added to a per context list of stalled requests. The
+	 * below list_head is the link in that list. Protected by
 	 * ce->guc_state.lock.
 	 */
 	struct list_head guc_fence_link;
 
-	/**
-	 * @guc_prio: Priority level while the request is in flight. Differs
+	/*
+	 * Priority level while the request is in flight. Differs
 	 * from i915 scheduler priority. See comment above
 	 * I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP for details. Protected by
 	 * ce->guc_active.lock. Two special values (GUC_PRIO_INIT and
@@ -348,8 +348,8 @@ struct i915_request {
 #define	GUC_PRIO_FINI	0xfe
 	u8 guc_prio;
 
-	/**
-	 * @hucq: wait queue entry used to wait on the HuC load to complete
+	/*
+	 * wait queue entry used to wait on the HuC load to complete
 	 */
 	wait_queue_entry_t hucq;
 
@@ -473,7 +473,7 @@ i915_request_has_initial_breadcrumb(const struct i915_request *rq)
 	return test_bit(I915_FENCE_FLAG_INITIAL_BREADCRUMB, &rq->fence.flags);
 }
 
-/**
+/*
  * Returns true if seq1 is later than seq2.
  */
 static inline bool i915_seqno_passed(u32 seq1, u32 seq2)
-- 
2.39.2

