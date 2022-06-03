Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F12253CD2D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 18:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E927B112DC4;
	Fri,  3 Jun 2022 16:25:55 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE9F810FACE;
 Fri,  3 Jun 2022 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654273553; x=1685809553;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a1sPWQQw2N4zOg6DS8zR+GdDREIwKnYvdCsj3oT8fno=;
 b=cWvTTq1rG4vnz3xFzLib/TXYCa34CK6l1dUstXnayheCBwz9/nRuJx7/
 AIcXXMVPhKp8vcw4lTEGPg/6MWqo8Pa3EmkJwbfD/1rF8coSlL6xAU8DJ
 25R6BKwRByTvwIRwz97dGt56B1XAeqs0c74R7blD6BVuOrP7Tdp8sSg3c
 uo475krwjUYszyqVDKdl3Op25QmKjVlsP0RuacKMjAEWyzln5eqIiwIn7
 VXVDPznGgXKgbep5+Ind79vobxmE9mjeY3JTxrYu29F+E1HAIx1s41jie
 uLPKF8wjoTejVwmpKIt7LM2MQ8crxJsx2yyL4xW4BJ9icHJSumf5VUr7o A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10367"; a="273853173"
X-IronPort-AV: E=Sophos;i="5.91,275,1647327600"; d="scan'208";a="273853173"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 09:25:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,275,1647327600"; d="scan'208";a="563850907"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 03 Jun 2022 09:25:52 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Fri,  3 Jun 2022 09:25:51 -0700
Message-Id: <20220603162552.2254187-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220603162552.2254187-1-John.C.Harrison@Intel.com>
References: <20220603162552.2254187-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 i-g-t 2/3] tests/i915/query: Add descriptions
 to existing tests
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

None of the query tests had a description. So make some up.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/i915_query.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index 246a979af72a..35a91d245ec1 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -923,34 +923,41 @@ igt_main
 		devid = intel_get_drm_devid(fd);
 	}
 
+	igt_describe("Test reponse to an invalid query call");
 	igt_subtest("query-garbage")
 		test_query_garbage(fd);
 
+	igt_describe("Test response to invalid DRM_I915_QUERY_TOPOLOGY_INFO query");
 	igt_subtest("query-topology-garbage-items") {
 		igt_require(query_topology_supported(fd));
 		test_query_topology_garbage_items(fd);
 	}
 
+	igt_describe("Guardband test for DRM_I915_QUERY_TOPOLOGY_INFO query");
 	igt_subtest("query-topology-kernel-writes") {
 		igt_require(query_topology_supported(fd));
 		test_query_topology_kernel_writes(fd);
 	}
 
+	igt_describe("Verify DRM_I915_QUERY_TOPOLOGY_INFO query fails when it is not supported");
 	igt_subtest("query-topology-unsupported") {
 		igt_require(!query_topology_supported(fd));
 		test_query_topology_unsupported(fd);
 	}
 
+	igt_describe("Compare new DRM_I915_QUERY_TOPOLOGY_INFO query with legacy (sub)slice getparams");
 	igt_subtest("query-topology-coherent-slice-mask") {
 		igt_require(query_topology_supported(fd));
 		test_query_topology_coherent_slice_mask(fd);
 	}
 
+	igt_describe("More compare new DRM_I915_QUERY_TOPOLOGY_INFO query with legacy (sub)slice getparams");
 	igt_subtest("query-topology-matches-eu-total") {
 		igt_require(query_topology_supported(fd));
 		test_query_topology_matches_eu_total(fd);
 	}
 
+	igt_describe("Verify DRM_I915_QUERY_TOPOLOGY_INFO query against hardcoded known values for certain platforms");
 	igt_subtest("query-topology-known-pci-ids") {
 		igt_require(query_topology_supported(fd));
 		igt_require(IS_HASWELL(devid) || IS_BROADWELL(devid) ||
@@ -959,16 +966,19 @@ igt_main
 		test_query_topology_known_pci_ids(fd, devid);
 	}
 
+	igt_describe("Test DRM_I915_QUERY_GEOMETRY_SUBSLICES query");
 	igt_subtest("test-query-geometry-subslices") {
 		igt_require(query_geometry_subslices_supported(fd));
 		test_query_geometry_subslices(fd);
 	}
 
+	igt_describe("Dodgy returned data tests for DRM_I915_QUERY_MEMORY_REGIONS");
 	igt_subtest("query-regions-garbage-items") {
 		igt_require(query_regions_supported(fd));
 		test_query_regions_garbage_items(fd);
 	}
 
+	igt_describe("Basic tests for DRM_I915_QUERY_MEMORY_REGIONS");
 	igt_subtest("query-regions-sanity-check") {
 		igt_require(query_regions_supported(fd));
 		test_query_regions_sanity_check(fd);
@@ -979,9 +989,11 @@ igt_main
 			igt_require(query_engine_info_supported(fd));
 		}
 
+		igt_describe("Negative tests for DRM_I915_QUERY_ENGINE_INFO");
 		igt_subtest("engine-info-invalid")
 			engines_invalid(fd);
 
+		igt_describe("Positive tests for DRM_I915_QUERY_ENGINE_INFO");
 		igt_subtest("engine-info")
 			engines(fd);
 	}
-- 
2.36.0

