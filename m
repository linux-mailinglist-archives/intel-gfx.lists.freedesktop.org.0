Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 332264E924F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 12:09:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4190F10EB64;
	Mon, 28 Mar 2022 10:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FEDF10EB53;
 Mon, 28 Mar 2022 10:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648462149; x=1679998149;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qQNzTnw+hvKGKmLpigEQ/hn0WuCfeQLTgkQ6U6259pY=;
 b=Ag7u50IYpIUXLcMqpZX0lMOq5E3NjB+xReSLl/W64acNERduxG+vjePL
 Rx2/27IiYxFn8x5qxacirr4PirPtf9CHsKobGHM38JMK6aqk69ew0ZlrZ
 Z7aBpSuAnkQhbgt/JbfrDeplbflYTwxw+NFwi5KFZi2E3W6kYMFOnt+bK
 hiad0ZFgT+iIrftAiAuoYx2x0j85/fQGks6OPogm8NxS2lHYl43MmIvAU
 pmKwVc9sNBMWcnkTRp6/qQi/mmTcNOkkySCDdOJgMu7xlGNVTpVbexUk2
 g7xhgSY1Hm/MGWiMG8iF8LvFrrejDma0r5vLT+zvdcUNLA0XbBr9b4RjX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="258677971"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="258677971"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 03:09:09 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="787173775"
Received: from khogan-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.170])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 03:09:06 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 28 Mar 2022 11:08:59 +0100
Message-Id: <20220328100859.13550-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3] tests/gem_lmem_swapping: limit lmem to
 4G
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, CQ Tang <cq.tang@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: CQ Tang <cq.tang@intel.com>

On some systems lmem can be as large as 16G, which seems to trigger
various CI timeouts, and in the best case just takes a long time. For
the purposes of the test we should be able to limit to 4G, without any
big loss in coverage.

v2:
 - No need to try again without the modparam; if it's not supported it
   will still load the driver just fine.
v3(Petri):
 - Add a helpful debug print in case the kernel is missing support for
   the lmem_size modparam.

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/gem_lmem_swapping.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
index 31644bcd..6cf1acec 100644
--- a/tests/i915/gem_lmem_swapping.c
+++ b/tests/i915/gem_lmem_swapping.c
@@ -526,11 +526,20 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 
 	igt_fixture {
 		struct intel_execution_engine2 *e;
+		char *tmp;
 
-		i915 = drm_open_driver(DRIVER_INTEL);
+		igt_i915_driver_unload();
+		igt_assert_eq(igt_i915_driver_load("lmem_size=4096"), 0);
+
+		i915 = __drm_open_driver(DRIVER_INTEL);
 		igt_require_gem(i915);
 		igt_require(gem_has_lmem(i915));
 
+		tmp = __igt_params_get(i915, "lmem_size");
+		if (!tmp)
+			igt_info("lmem_size modparam not supported on this kernel. Continuing with full lmem size. This may result in CI timeouts.");
+		free(tmp);
+
 		regions = gem_get_query_memory_regions(i915);
 		igt_require(regions);
 
@@ -556,6 +565,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		intel_ctx_destroy(i915, ctx);
 		free(regions);
 		close(i915);
+		igt_i915_driver_unload();
 	}
 
 	igt_exit();
-- 
2.34.1

