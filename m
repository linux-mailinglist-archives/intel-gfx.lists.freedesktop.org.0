Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1067C48DF8E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 22:26:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0564189054;
	Thu, 13 Jan 2022 21:26:55 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 664E689054;
 Thu, 13 Jan 2022 21:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642109214; x=1673645214;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rU3dE4Pi1Tfy1pVYxfq8TNcr6V6UA1hZBZUNVvjV1Hs=;
 b=Rn1L+jC91fkzbSVDA5bhClmsqZNIlDPnouQGyzbdrSWVC0nNF/q5ahaj
 RDoibx0SvBJRp4CrHvDkqF/9lNp+sMgdKpvOFUujq5zF5KPI5CMB6ncfE
 XnZmAzo+R92XSbEYKx3f5jsici98Mq7uf7QHfA/lPq0UDbsXLTUikWCLz
 YW3P3ICmSpy36APooM6IjSU3hS7OcSqk6og0gr1IIzu4QFCG4v5NLoygf
 VQNyYOmuZ3UfJ7NdLsWx4CjmD8vsKWmOIw+g5HSTTcvKtElNAlTv9a+Ro
 jlJ5fDdwwAzQwk4Sw5ZOCoYxNtoT4LxkdOY/F9dwtQ26UxABKKTAeyp42 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="304847370"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="304847370"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 13:26:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="491271996"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 13 Jan 2022 13:26:53 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 13:26:53 -0800
Message-Id: <20220113212653.1554786-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113195947.1536897-12-John.C.Harrison@Intel.com>
References: <20220113195947.1536897-12-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/i915_hangman: Don't let
 background contexts cause a ban
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The global context used by all the subtests for causing hangs is
marked as unbannable. However, some of the subtests set background
spinners running on all engines using a freshly created context. If
there is a test failure for any reason, all of those spinners can be
killed off as hanging contexts. On systems with lots of engines, that
can result in the test being banned from creating any new contexts.

So make the spinner contexts unbannable as well. That way if one
subtest fails it won't necessarily bring down all subsequent subtests.

v2: Simplify anti-banning code (review feedback from Matthew Brost).

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/i915_hangman.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 9f7f8062c..537ed35a5 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -284,6 +284,17 @@ static void test_error_state_capture(const intel_ctx_t *ctx,
 	check_alive();
 }
 
+static void context_unban(int fd, unsigned ctx)
+{
+	struct drm_i915_gem_context_param param = {
+		.ctx_id = ctx,
+		.param = I915_CONTEXT_PARAM_BANNABLE,
+		.value = 0,
+	};
+
+	gem_context_set_param(fd, &param);
+}
+
 static void
 test_engine_hang(const intel_ctx_t *ctx,
 		 const struct intel_execution_engine2 *e, unsigned int flags)
@@ -307,6 +318,7 @@ test_engine_hang(const intel_ctx_t *ctx,
 	num_ctx = 0;
 	for_each_ctx_engine(device, ctx, other) {
 		local_ctx[num_ctx] = intel_ctx_create(device, &ctx->cfg);
+		context_unban(device, local_ctx[num_ctx]->id);
 		ahndN = get_reloc_ahnd(device, local_ctx[num_ctx]->id);
 		spin = __igt_spin_new(device,
 				      .ahnd = ahndN,
-- 
2.25.1

