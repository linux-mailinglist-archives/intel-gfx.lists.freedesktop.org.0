Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 259A23A36B4
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 23:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B1816EE08;
	Thu, 10 Jun 2021 21:52:56 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE1746EE02;
 Thu, 10 Jun 2021 21:52:50 +0000 (UTC)
IronPort-SDR: OKkdI8gcL4vjN7RbQbhpq49HumfPC8QhaXqFq9vKv5wweU6q69g+E2kOGQ+crvSNqeFJBWk1wn
 4gmwyulKNCfA==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205228266"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="205228266"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 14:52:49 -0700
IronPort-SDR: RfX2ZAIPSoLLNq2MXQdmPttZ315QvhQkh6XOAnllvQYvyibZeVXNsiZKn/PLEQyg19NXoGbmUx
 qDNCsnAqx20g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="450544898"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jun 2021 14:52:48 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 10 Jun 2021 14:52:47 -0700
Message-Id: <20210610215247.2996757-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210610215247.2996757-1-John.C.Harrison@Intel.com>
References: <20210610215247.2996757-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH i-g-t 2/2] tests/i915/query: Add test for L3
 bank count
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Various UMDs need to know the L3 bank count. So a query API has been
added for it. Test that query.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 include/drm-uapi/i915_drm.h |  1 +
 tests/i915/i915_query.c     | 35 +++++++++++++++++++++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/include/drm-uapi/i915_drm.h b/include/drm-uapi/i915_drm.h
index 5c34ab759..191820532 100644
--- a/include/drm-uapi/i915_drm.h
+++ b/include/drm-uapi/i915_drm.h
@@ -2234,6 +2234,7 @@ struct drm_i915_query_item {
 #define DRM_I915_QUERY_PERF_CONFIG      3
 #define DRM_I915_QUERY_MEMORY_REGIONS   4
 #define DRM_I915_QUERY_HWCONFIG_TABLE   5
+#define DRM_I915_QUERY_L3_BANK_COUNT    6
 /* Must be kept compact -- no holes and well documented */
 
 	/**
diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index eef4afb05..17948e0d8 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -849,6 +849,38 @@ static void query_parse_and_validate_hwconfig_table(int i915)
 	free(data);
 }
 
+static int query_engine_l3_bank_count(int fd)
+{
+	uint32_t *banks;
+	struct drm_i915_query_item size = {
+		.query_id = DRM_I915_QUERY_L3_BANK_COUNT,
+	};
+	struct drm_i915_query_item query = {
+		.query_id = DRM_I915_QUERY_L3_BANK_COUNT,
+	};
+	int num_counts, i;
+
+	i915_query_items(fd, &size, 1);
+	igt_require(size.length > 0);
+
+	num_counts = size.length / sizeof(*banks);
+	igt_info("size = %d, count = %d => %ld\n", size.length, num_counts, num_counts * sizeof(*banks));
+	igt_assert(size.length == (num_counts * sizeof(*banks)));
+
+	banks = malloc(size.length);
+	igt_assert(banks);
+	query.data_ptr = to_user_pointer(banks);
+	query.length = size.length;
+
+	i915_query_items(fd, &query, 1);
+	igt_assert(query.length == size.length);
+	for (i = 0; i < num_counts; i++)
+		igt_info("Bank count #%d: %d\n", i, banks[i]);
+
+	free(banks);
+	return 0;
+}
+
 igt_main
 {
 	int fd = -1;
@@ -911,6 +943,9 @@ igt_main
 	igt_subtest("hwconfig_table")
 		query_parse_and_validate_hwconfig_table(fd);
 
+	igt_subtest("l3_banks")
+		query_engine_l3_bank_count(fd);
+
 	igt_fixture {
 		close(fd);
 	}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
