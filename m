Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9BC48DE82
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:00:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 109F710E565;
	Thu, 13 Jan 2022 20:00:11 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B23D10E2B3;
 Thu, 13 Jan 2022 19:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642103990; x=1673639990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GQd++16wQh+0X4+qJabmGTP75OJr6ehTXMrHbPGtMG0=;
 b=nyNjx2ttuZMbqDLNh5TGv72nBDRJx3JgSozbGMswDiynmGPBuNM773Gx
 e0clndj/OpFx6vFiqoTIVTAXWvYWtVM6l6Sjrg4Zfy9anOX23RuzTMako
 nNyKASK5zYrxdAucPhnbU5vD8Lrl/pATyXdnnemXzXEDxk/3DYDQBqiyW
 JiKlKtCFJ/MuoSu6s4FXjALxwol26wjZWA4jX8hkkWJKbFY2OfxT3OmoZ
 9s7UypoL53hvToZEnSwzGQdeObrHXKYEOG7J4KcWfc/Gl2n955jh0A6tA
 jBVS8Jg4aWW840V14nXnKFWA8nlLaWKSTQpJbuW/SwBoPzQLiAFmFY8yf g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244055999"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244055999"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 11:59:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="475477488"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 13 Jan 2022 11:59:48 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 11:59:43 -0800
Message-Id: <20220113195947.1536897-12-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 i-g-t 11/15] tests/i915/i915_hangman: Don't
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

