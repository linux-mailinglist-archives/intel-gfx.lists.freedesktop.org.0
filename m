Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A093D1A1B
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 01:02:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 383E66E9D9;
	Wed, 21 Jul 2021 23:02:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 285726E199;
 Wed, 21 Jul 2021 23:02:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211252732"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211252732"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 16:02:18 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="511965335"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 16:02:18 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <igt-dev@lists.freedesktop.org>
Date: Wed, 21 Jul 2021 16:20:00 -0700
Message-Id: <20210721232004.31470-4-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210721232004.31470-1-matthew.brost@intel.com>
References: <20210721232004.31470-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/7] lib/intel_ctx: Add support for
 parallel contexts to intel_ctx library
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
 lib/intel_ctx.c | 28 +++++++++++++++++++++++++++-
 lib/intel_ctx.h |  2 ++
 2 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/lib/intel_ctx.c b/lib/intel_ctx.c
index f28c15544..11ec6fca4 100644
--- a/lib/intel_ctx.c
+++ b/lib/intel_ctx.c
@@ -83,6 +83,7 @@ __context_create_cfg(int fd, const intel_ctx_cfg_t *cfg, uint32_t *ctx_id)
 {
 	uint64_t ext_root = 0;
 	I915_DEFINE_CONTEXT_ENGINES_LOAD_BALANCE(balance, GEM_MAX_ENGINES);
+	I915_DEFINE_CONTEXT_ENGINES_PARALLEL_SUBMIT(parallel, GEM_MAX_ENGINES);
 	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, GEM_MAX_ENGINES);
 	struct drm_i915_gem_context_create_ext_setparam engines_param, vm_param;
 	struct drm_i915_gem_context_create_ext_setparam persist_param;
@@ -117,7 +118,29 @@ __context_create_cfg(int fd, const intel_ctx_cfg_t *cfg, uint32_t *ctx_id)
 		unsigned num_logical_engines;
 		memset(&engines, 0, sizeof(engines));
 
-		if (cfg->load_balance) {
+		if (cfg->parallel) {
+			memset(&parallel, 0, sizeof(parallel));
+
+			num_logical_engines = 1;
+
+			parallel.base.name =
+				I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT;
+
+			engines.engines[0].engine_class =
+				I915_ENGINE_CLASS_INVALID;
+			engines.engines[0].engine_instance =
+				I915_ENGINE_CLASS_INVALID_NONE;
+
+			parallel.num_siblings = cfg->num_engines;
+			parallel.width = cfg->width;
+			for (i = 0; i < cfg->num_engines * cfg->width; i++) {
+				igt_assert_eq(cfg->engines[0].engine_class,
+					      cfg->engines[i].engine_class);
+				parallel.engines[i] = cfg->engines[i];
+			}
+
+			engines.extensions = to_user_pointer(&parallel);
+		} else if (cfg->load_balance) {
 			memset(&balance, 0, sizeof(balance));
 
 			/* In this case, the first engine is the virtual
@@ -127,6 +150,9 @@ __context_create_cfg(int fd, const intel_ctx_cfg_t *cfg, uint32_t *ctx_id)
 			igt_assert(cfg->num_engines + 1 <= GEM_MAX_ENGINES);
 			num_logical_engines = cfg->num_engines + 1;
 
+			balance.base.name =
+				I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE;
+
 			engines.engines[0].engine_class =
 				I915_ENGINE_CLASS_INVALID;
 			engines.engines[0].engine_instance =
diff --git a/lib/intel_ctx.h b/lib/intel_ctx.h
index 9649f6d96..89c65fcd3 100644
--- a/lib/intel_ctx.h
+++ b/lib/intel_ctx.h
@@ -46,7 +46,9 @@ typedef struct intel_ctx_cfg {
 	uint32_t vm;
 	bool nopersist;
 	bool load_balance;
+	bool parallel;
 	unsigned int num_engines;
+	unsigned int width;
 	struct i915_engine_class_instance engines[GEM_MAX_ENGINES];
 } intel_ctx_cfg_t;
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
