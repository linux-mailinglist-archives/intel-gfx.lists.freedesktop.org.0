Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE72C48EFC0
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 19:17:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 042F410E290;
	Fri, 14 Jan 2022 18:17:19 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B7710E1A2;
 Fri, 14 Jan 2022 18:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642184235; x=1673720235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BZdSXNk7CD5JNtDTXhFSUh8uVfIn4ClyldC9VaT5s/c=;
 b=QZGbKcCBPUlIM6NG0iK1IF2BbBkk6y9ifRejgnAJQEsaWVWvKmj5xEJp
 yUNFrQ4dE3My+2Yomc2cHXV7RO5HrPg868+qte5kfglYNHSr0xFSVth5m
 Wbb3N8zQw1GaQoRhOU2+Dj4rXwa5dWLTCbhFifHVBtU4nSA6b/TMc8/HT
 9g/YoZc3oqvZ9ecTp/hLEOg9D7y4jL+PaXT7x3au/mWxaIcnj3SK0mSu9
 ocQsNZ95XIvUWzGBaxv6sujDcKUFKgr5D0y32mI5a7zKOkRydsFURSyES
 pazGELXgJDJs4t6s0lW8uW+tZ2QAgUsFO45+/XC9hVIErO5/9s4wAFTOM Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="224286274"
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="224286274"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 10:17:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="491602029"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 14 Jan 2022 10:17:13 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Fri, 14 Jan 2022 10:17:12 -0800
Message-Id: <20220114181713.1798514-15-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220114181713.1798514-1-John.C.Harrison@Intel.com>
References: <20220114181713.1798514-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 i-g-t 14/15] tests/i915/i915_hangman:
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
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 tests/i915/i915_hangman.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index e661b8ad0..23055c271 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -496,8 +496,12 @@ igt_main
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
 
@@ -511,6 +515,13 @@ igt_main
 		igt_require(has_error_state(sysfs));
 
 		gem_require_mmap_device_coherent(device);
+
+		for_each_physical_engine(device, e) {
+			saved_params[num_engines].engine = e;
+			saved_params[num_engines].preempt_timeout = 500;
+			saved_params[num_engines].heartbeat_interval = 1000;
+			gem_engine_properties_configure(device, saved_params + num_engines++);
+		}
 	}
 
 	igt_describe("Basic error capture");
@@ -542,6 +553,11 @@ igt_main
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

