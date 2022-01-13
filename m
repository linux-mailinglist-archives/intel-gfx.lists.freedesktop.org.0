Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D9248E12A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 00:51:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF2CF10E83C;
	Thu, 13 Jan 2022 23:51:25 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9196110E831;
 Thu, 13 Jan 2022 23:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642117882; x=1673653882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BZdSXNk7CD5JNtDTXhFSUh8uVfIn4ClyldC9VaT5s/c=;
 b=Zs3QE+b+SG/zQkvqpjjczMTCJ/x74pXGauC1c6JCoJTbxhGyW1tuMsAE
 WZlXvGx7bgvEAUVTbybnN1I/Nh5ibyzQPXQG+6uT3bXYI/xcD3YF9xk2C
 D+d/aNCSIpZB0wD4NyICgPXq4lgcMARssPniYloFsKlZVDvwRhuTX4G0B
 FroKZ+HLgPNWvy0RpE8pmWAY1NTdMI18b16AXlOZs4EW7ykPC8cVtip1o
 4xkamB7AMuxn9ehkwzl3m43RuC5JfhZcb10Pt0Qr6lHHHY/rDGY+yAJ8F
 wg6zIfXyXbLMJeASvgvJhxoEYIPgidS2YJ3d83cbQCLGn7OAoF82c6VPi g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="268502306"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="268502306"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 15:51:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="620783058"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jan 2022 15:51:22 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 15:51:17 -0800
Message-Id: <20220113235118.1575410-15-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
References: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 i-g-t 14/15] tests/i915/i915_hangman:
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

