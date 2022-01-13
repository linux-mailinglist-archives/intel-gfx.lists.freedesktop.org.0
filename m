Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA06848DC6D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 18:00:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 295FE10E52E;
	Thu, 13 Jan 2022 16:59:54 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC6C010E2C6;
 Thu, 13 Jan 2022 16:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642093187; x=1673629187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GQd++16wQh+0X4+qJabmGTP75OJr6ehTXMrHbPGtMG0=;
 b=Zs0bvQUPOd2EC+NLA6nV8c08bWjb08tlbKe08L8MJDOVSpAAyitKg/1g
 lPXVdgk/56k8XuWLs20xNBNyj9AvGEwtBYZTYQt1WycnKTS8UgC4Anklu
 RlhwtVLG1dAmtnsRS7TR4jIbrMc4HXc6Ok9G2y9n9xOQZB59tei0dSAoJ
 JtMTja/ZhtxHGfI8xyfoDw+SEQTrtrieQCFd2hWNi23VrAwx1r0ExYLJe
 Y1xkuVTFyADkZpBx9pVmMTxv32J/BUVu4dLa+Nq1v1pitANbFtrsqckkt
 ArXOnHx78X4UJhCfRlOJ+Ga4m4YlZ6SuysnvYKFVNg2gVef8HJ/PAeNKl Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="307396635"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="307396635"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:59:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="515999177"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga007.jf.intel.com with ESMTP; 13 Jan 2022 08:59:44 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 08:59:40 -0800
Message-Id: <20220113165944.1414015-12-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
References: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t 11/15] tests/i915/i915_hangman: Don't
 let background contexts cause a ban
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

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/i915_hangman.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 9f7f8062c..567eb71ee 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -284,6 +284,21 @@ static void test_error_state_capture(const intel_ctx_t *ctx,
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
+	if(__gem_context_set_param(fd, &param) == -EINVAL) {
+		igt_assert_eq(param.value, 0);
+		param.param = I915_CONTEXT_PARAM_BAN_PERIOD;
+		gem_context_set_param(fd, &param);
+	}
+}
+
 static void
 test_engine_hang(const intel_ctx_t *ctx,
 		 const struct intel_execution_engine2 *e, unsigned int flags)
@@ -307,6 +322,7 @@ test_engine_hang(const intel_ctx_t *ctx,
 	num_ctx = 0;
 	for_each_ctx_engine(device, ctx, other) {
 		local_ctx[num_ctx] = intel_ctx_create(device, &ctx->cfg);
+		context_unban(device, local_ctx[num_ctx]->id);
 		ahndN = get_reloc_ahnd(device, local_ctx[num_ctx]->id);
 		spin = __igt_spin_new(device,
 				      .ahnd = ahndN,
-- 
2.25.1

