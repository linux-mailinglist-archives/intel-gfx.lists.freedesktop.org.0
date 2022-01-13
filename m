Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 470A648DC6C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 18:00:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52C9410E56B;
	Thu, 13 Jan 2022 16:59:53 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F132610E52E;
 Thu, 13 Jan 2022 16:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642093188; x=1673629188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yQwE3/G3Gfq3imHM17lNfYzXpdh9U/QitywjrHzLAC8=;
 b=Cb7MFxlFG0KXgHlSk7WUHu2nM56CNaDyCVQDY3KcinQMqJ/qgE4Nxb0P
 F9t/1ubduzXBWl1L/iV7Faj/0o9xCh5c8taFlyKIv8ua8tC9UAjbnaVWx
 VS29DFLKnOx8lvEfh8RqEec5RKEiV0NjFAB2TRLjtqhA0UTLtBRlgETjA
 XGhKXmj/6rytvtIytwSJK/TpLirEOe0/ThCoRyvMis+5ePFKtPiFwxjaR
 9TOIqgBzUg3nfqnxag0jomYgv8CMwbPr2qTZtFfHTMKIcSj9myxiP9qkI
 KWK987kmFxTQE6qowP7MUWgKtRCQG0iC01X87jKFVABCeac4JKlvG0kVe g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="307396640"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="307396640"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:59:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="515999186"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga007.jf.intel.com with ESMTP; 13 Jan 2022 08:59:45 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 08:59:43 -0800
Message-Id: <20220113165944.1414015-15-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
References: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t 14/15] tests/i915/i915_hangman:
 Configure engine properties for quicker hangs
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

Some platforms have very long timeouts configured for some engines.
Some have them disabled completely. That makes for a very slow (or
broken) hangman test. So explicitly configure the engines to have
reasonable settings first.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/i915_hangman.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 567eb71ee..1a2b2cf7a 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -500,8 +500,12 @@ igt_main
 {
 	const intel_ctx_t *ctx;
 	igt_hang_t hang = {};
+	struct gem_engine_properties saved_params[GEM_MAX_ENGINES];
+	int num_engines = 0;
 
 	igt_fixture {
+		const struct intel_execution_engine2 *e;
+
 		device = drm_open_driver(DRIVER_INTEL);
 		igt_require_gem(device);
 
@@ -515,6 +519,13 @@ igt_main
 		igt_require(has_error_state(sysfs));
 
 		gem_require_mmap_wc(device);
+
+		for_each_physical_engine(device, e) {
+			saved_params[num_engines].engine = e;
+			saved_params[num_engines].preempt_timeout = 500;
+			saved_params[num_engines].heartbeat_interval = 1000;
+			gem_engine_properties_configure(device, saved_params + num_engines++);
+		}
 	}
 
 	igt_describe("Basic error capture");
@@ -546,6 +557,11 @@ igt_main
 	do_tests("engine", "engine", ctx);
 
 	igt_fixture {
+		int i;
+
+		for (i = 0; i < num_engines; i++)
+			gem_engine_properties_restore(device, saved_params + i);
+
 		igt_disallow_hang(device, hang);
 		intel_ctx_destroy(device, ctx);
 		close(device);
-- 
2.25.1

