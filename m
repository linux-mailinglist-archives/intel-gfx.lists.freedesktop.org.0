Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F25F63D793E
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 17:04:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB506E820;
	Tue, 27 Jul 2021 15:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBDE36E1BD;
 Tue, 27 Jul 2021 15:04:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="192739974"
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="192739974"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 08:04:15 -0700
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="505919088"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 08:04:15 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <igt-dev@lists.freedesktop.org>
Date: Tue, 27 Jul 2021 08:21:56 -0700
Message-Id: <20210727152202.9527-2-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210727152202.9527-1-matthew.brost@intel.com>
References: <20210727152202.9527-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/7] include/drm-uapi: Add parallel
 context configuration uAPI
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 include/drm-uapi/i915_drm.h | 128 ++++++++++++++++++++++++++++++++++++
 1 file changed, 128 insertions(+)

diff --git a/include/drm-uapi/i915_drm.h b/include/drm-uapi/i915_drm.h
index a1c0030c3..3c1aac348 100644
--- a/include/drm-uapi/i915_drm.h
+++ b/include/drm-uapi/i915_drm.h
@@ -1705,6 +1705,7 @@ struct drm_i915_gem_context_param {
  * Extensions:
  *   i915_context_engines_load_balance (I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE)
  *   i915_context_engines_bond (I915_CONTEXT_ENGINES_EXT_BOND)
+ *   i915_context_engines_parallel_submit (I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT)
  */
 #define I915_CONTEXT_PARAM_ENGINES	0xa
 
@@ -1883,10 +1884,137 @@ struct i915_context_engines_bond {
 	struct i915_engine_class_instance engines[N__]; \
 } __attribute__((packed)) name__
 
+/**
+ * struct i915_context_engines_parallel_submit - Configure engine for
+ * parallel submission.
+ *
+ * Setup a slot in the context engine map to allow multiple BBs to be submitted
+ * in a single execbuf IOCTL. Those BBs will then be scheduled to run on the GPU
+ * in parallel. Multiple hardware contexts are created internally in the i915
+ * run these BBs. Once a slot is configured for N BBs only N BBs can be
+ * submitted in each execbuf IOCTL and this is implicit behavior e.g. The user
+ * doesn't tell the execbuf IOCTL there are N BBs, the execbuf IOCTL knows how
+ * many BBs there are based on the slot's configuration. The N BBs are the last
+ * N buffer objects or first N if I915_EXEC_BATCH_FIRST is set.
+ *
+ * The default placement behavior is to create implicit bonds between each
+ * context if each context maps to more than 1 physical engine (e.g. context is
+ * a virtual engine). Also we only allow contexts of same engine class and these
+ * contexts must be in logically contiguous order. Examples of the placement
+ * behavior described below. Lastly, the default is to not allow BBs to
+ * preempted mid BB rather insert coordinated preemption on all hardware
+ * contexts between each set of BBs. Flags may be added in the future to change
+ * both of these default behaviors.
+ *
+ * Returns -EINVAL if hardware context placement configuration is invalid or if
+ * the placement configuration isn't supported on the platform / submission
+ * interface.
+ * Returns -ENODEV if extension isn't supported on the platform / submission
+ * interface.
+ *
+ * .. code-block:: none
+ *
+ *	Example 1 pseudo code:
+ *	CS[X] = generic engine of same class, logical instance X
+ *	INVALID = I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALID_NONE
+ *	set_engines(INVALID)
+ *	set_parallel(engine_index=0, width=2, num_siblings=1,
+ *		     engines=CS[0],CS[1])
+ *
+ *	Results in the following valid placement:
+ *	CS[0], CS[1]
+ *
+ *	Example 2 pseudo code:
+ *	CS[X] = generic engine of same class, logical instance X
+ *	INVALID = I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALID_NONE
+ *	set_engines(INVALID)
+ *	set_parallel(engine_index=0, width=2, num_siblings=2,
+ *		     engines=CS[0],CS[2],CS[1],CS[3])
+ *
+ *	Results in the following valid placements:
+ *	CS[0], CS[1]
+ *	CS[2], CS[3]
+ *
+ *	This can also be thought of as 2 virtual engines described by 2-D array
+ *	in the engines the field with bonds placed between each index of the
+ *	virtual engines. e.g. CS[0] is bonded to CS[1], CS[2] is bonded to
+ *	CS[3].
+ *	VE[0] = CS[0], CS[2]
+ *	VE[1] = CS[1], CS[3]
+ *
+ *	Example 3 pseudo code:
+ *	CS[X] = generic engine of same class, logical instance X
+ *	INVALID = I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALID_NONE
+ *	set_engines(INVALID)
+ *	set_parallel(engine_index=0, width=2, num_siblings=2,
+ *		     engines=CS[0],CS[1],CS[1],CS[3])
+ *
+ *	Results in the following valid and invalid placements:
+ *	CS[0], CS[1]
+ *	CS[1], CS[3] - Not logical contiguous, return -EINVAL
+ */
+struct i915_context_engines_parallel_submit {
+	/**
+	 * @base: base user extension.
+	 */
+	struct i915_user_extension base;
+
+	/**
+	 * @engine_index: slot for parallel engine
+	 */
+	__u16 engine_index;
+
+	/**
+	 * @width: number of contexts per parallel engine
+	 */
+	__u16 width;
+
+	/**
+	 * @num_siblings: number of siblings per context
+	 */
+	__u16 num_siblings;
+
+	/**
+	 * @mbz16: reserved for future use; must be zero
+	 */
+	__u16 mbz16;
+
+	/**
+	 * @flags: all undefined flags must be zero, currently not defined flags
+	 */
+	__u64 flags;
+
+	/**
+	 * @mbz64: reserved for future use; must be zero
+	 */
+	__u64 mbz64[3];
+
+	/**
+	 * @engines: 2-d array of engine instances to configure parallel engine
+	 *
+	 * length = width (i) * num_siblings (j)
+	 * index = j + i * num_siblings
+	 */
+	struct i915_engine_class_instance engines[0];
+
+} __packed;
+
+#define I915_DEFINE_CONTEXT_ENGINES_PARALLEL_SUBMIT(name__, N__) struct { \
+	struct i915_user_extension base; \
+	__u16 engine_index; \
+	__u16 width; \
+	__u16 num_siblings; \
+	__u16 mbz16; \
+	__u64 flags; \
+	__u64 mbz64[3]; \
+	struct i915_engine_class_instance engines[N__]; \
+} __attribute__((packed)) name__
+
 struct i915_context_param_engines {
 	__u64 extensions; /* linked chain of extension blocks, 0 terminates */
 #define I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE 0 /* see i915_context_engines_load_balance */
 #define I915_CONTEXT_ENGINES_EXT_BOND 1 /* see i915_context_engines_bond */
+#define I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT 2 /* see i915_context_engines_parallel_submit */
 	struct i915_engine_class_instance engines[0];
 } __attribute__((packed));
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
