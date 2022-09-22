Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E99E5E5D28
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 10:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBFD810EA76;
	Thu, 22 Sep 2022 08:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFB7F10EA74;
 Thu, 22 Sep 2022 08:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663834453; x=1695370453;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RfkQksxCThAE1aMuWPnDy1Y/YCvtM4cx0MUQVlleCxk=;
 b=ROs8q6WNP6I19M/nt+H5smYIhwuMtIAoD5DimhRO02wciiVmKrPboyyd
 i4Y6EVWNn1jx7fdifaLIzIx5rWKL3yIdZ/G3Vk8Yff5v9IPfkm33k0RpK
 MUEBO44KQWm6Kp/Bm5yvHgXYJnv1aFP7hNRX1DX4K2DInInUJGA3j8+WA
 QsGs94KQfdIslMTjCf8eM5SWg6FuETXvdmNs0t80AEEd4ZWRQrsv3uaKN
 RFl9jrRpj9aOFD/ORTDcHIWDXaXjw9c2VDeG5rnygxoI6gjIKJ2IUf2QM
 Js4Ba2Ag0Dmg4DJ05HXVg+M/SNHHDqE+nCm5AzeBp12W7DO2Z3leVnhGW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="300220333"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="300220333"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 01:14:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="745293494"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 01:14:11 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu, 22 Sep 2022 10:13:53 +0200
Message-Id: <20220922081353.1759082-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_ctx_persistence: adjust
 saturated-hostile test timeout
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GPU occasionally can hang during saturated-hostile test. Detection of
such case and reset can take up to 5 seconds. While at it fix typo in
definition of RESET_TIMEOUT_MS.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 tests/i915/gem_ctx_persistence.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index 50196edb19f..603fdd84438 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -46,7 +46,8 @@
 #include "intel_allocator.h"
 #include "sw_sync.h"
 
-#define RESET_TIMEOUT_MS 2 * MSEC_PER_SEC; /* default: 640ms */
+#define RESET_TIMEOUT_MS (2 * MSEC_PER_SEC) /* default: 640ms */
+#define RESET_TIMEOUT_GPU_HANG_MS (10000 * MSEC_PER_SEC)
 static unsigned long reset_timeout_ms = RESET_TIMEOUT_MS;
 #define NSEC_PER_MSEC (1000 * 1000ull)
 
@@ -370,7 +371,7 @@ static void test_nohangcheck_hostile(int i915, const intel_ctx_cfg_t *cfg)
 	igt_require(__enable_hangcheck(dir, false));
 
 	for_each_ctx_cfg_engine(i915, cfg, e) {
-		int64_t timeout = 10000 * NSEC_PER_MSEC;
+		int64_t timeout = RESET_TIMEOUT_GPU_HANG_MS;
 		const intel_ctx_t *ctx = intel_ctx_create(i915, cfg);
 		uint64_t ahnd = get_reloc_ahnd(i915, ctx->id);
 		igt_spin_t *spin;
@@ -951,7 +952,7 @@ test_saturated_hostile_all(int i915, const intel_ctx_t *base_ctx,
 	intel_ctx_destroy(i915, ctx);
 
 	/* Hostile request requires a GPU reset to terminate */
-	igt_assert_eq(wait_for_status(spin->out_fence, reset_timeout_ms), -EIO);
+	igt_assert_eq(wait_for_status(spin->out_fence, RESET_TIMEOUT_GPU_HANG_MS), -EIO);
 
 	/* All other spinners should be left unharmed */
 	gem_quiescent_gpu(i915);
-- 
2.34.1

