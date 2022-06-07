Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D11A75418BE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 23:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC73510F42B;
	Tue,  7 Jun 2022 21:17:49 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513CE10F396;
 Tue,  7 Jun 2022 21:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654636668; x=1686172668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uXUsGKbxwTeP63JIa6E+3OVa6NeQKH4iteF4N18vCaw=;
 b=TbpwrkKcqx5ND2SplnnX4xUborqyLmlp1EGvVBJUX9jq8zCMBkcMad3/
 9dup+qGZ0YZFw24bzkNHACXEWYePF5hNtSOmT6YbyCazOSkc0WVjru5Ih
 p1upPL6KfKwOqNyDGSgsHalwiS7sWmVB3xJYR8+3bG5+ldLytc9bPGk9y
 NFfm+TrmgQKQ6/ZF5niU9iLjr0+s+dUoK0/6qxzhKGtiL/qs8A1qJppCl
 msjYhdkQZbtRyJWhNUeJOkMBUo7bFy1Khh5NkcQKNhlKQP+LM+JsAjLVc
 wgDzjDSO9idfhpfHqcOaKwDOG28cjNeieHtnShxQz0yoOjOw+xT4Pi1vt w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="275524249"
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="275524249"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 14:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="826557516"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga006.fm.intel.com with ESMTP; 07 Jun 2022 14:17:47 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Tue,  7 Jun 2022 14:17:46 -0700
Message-Id: <20220607211747.3335656-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220607211747.3335656-1-John.C.Harrison@Intel.com>
References: <20220607211747.3335656-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 i-g-t 2/3] tests/i915/query: Add descriptions
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
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tests/i915/i915_query.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index 246a979af72a..6c73f60aedcd 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -923,34 +923,41 @@ igt_main
 		devid = intel_get_drm_devid(fd);
 	}
 
+	igt_describe("Test response to an invalid query call");
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

