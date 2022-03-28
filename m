Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7533C4E9151
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 11:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9369710E60C;
	Mon, 28 Mar 2022 09:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0AC510E60C;
 Mon, 28 Mar 2022 09:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648459821; x=1679995821;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RXAxSHV9G4pn/w7cQYPTFtwh/1+tcP+pj9PyysGyTgU=;
 b=nida3PlvLKnjF09/hKqHTyK+EGzjDYlG8KFUAXuHxZM+yRlPJbwoDV6l
 Eg9yZTb2RJ4FlQmZmUBcKnZzVD4sO80w8ChznaDrIDfIyiFUC9VlDGT5d
 VjNdILZfZ05LKTjGSXDhFrpXgxubo4sqttufscryNGqPudkIqNeqwMVcs
 RSGINnN3rbAGVx6weOf3APaUOsueUWhWtuXcBG+FS6r3iGC+CHOLAfchP
 qnT8qs0u+hbbqgwBh6h7s1a/Jz0u38SR8FQWXRDKef6g/rSfJa5eXoOb0
 pjGqSFg3kehfZjQNn7CprSoMSRGnFl6wyK1FQnw5AmyVSohoYF4RrBKBs Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="246444655"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="246444655"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 02:30:12 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="617724416"
Received: from kirkdx-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.60])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 02:30:05 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 28 Mar 2022 10:29:59 +0100
Message-Id: <20220328092959.790392-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2] tests/gem_lmem_swapping: limit lmem to
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
 intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>,
 CQ Tang <cq.tang@intel.com>
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

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/gem_lmem_swapping.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
index 31644bcd..69f7bae9 100644
--- a/tests/i915/gem_lmem_swapping.c
+++ b/tests/i915/gem_lmem_swapping.c
@@ -527,7 +527,10 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 	igt_fixture {
 		struct intel_execution_engine2 *e;
 
-		i915 = drm_open_driver(DRIVER_INTEL);
+		igt_i915_driver_unload();
+		igt_assert_eq(igt_i915_driver_load("lmem_size=4096"), 0);
+
+		i915 = __drm_open_driver(DRIVER_INTEL);
 		igt_require_gem(i915);
 		igt_require(gem_has_lmem(i915));
 
@@ -556,6 +559,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
 		intel_ctx_destroy(i915, ctx);
 		free(regions);
 		close(i915);
+		igt_i915_driver_unload();
 	}
 
 	igt_exit();
-- 
2.34.1

