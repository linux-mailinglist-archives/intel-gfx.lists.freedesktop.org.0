Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJMYFKPVFmrrtAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 13:29:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 001695E364D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 13:29:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F9B710E791;
	Wed, 27 May 2026 11:29:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="eVU0TMZ0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH4PR04CU002.outbound.protection.outlook.com
 (mail-northcentralusazon11013025.outbound.protection.outlook.com
 [40.107.201.25])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E6C10E780;
 Wed, 27 May 2026 11:29:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UVSwUlu8NBADmxzXSsuO7ijO8HtHTZprdg198BggWf3n6Z18qzUXejsOe392bMuz/GpttSlaVFuJ7t2UCTGyIkAxB/gZ5/QjlpYXw29fyOQPidfOxOdTdICo/pFZ97JoYpWkUqxK2VVNUGn354w5IgyMPcFq6xIW1dURdXlD6ir80ULG+lkq7ld53Rz9KVPrN9XVaM3+AChjrWhLM/LIGI94eX5QZc65CK13f3dJyzfTPQOAGjcWfYiJP7YHpU8PMh/+737YrgyErBKjkvtI7zu+u9uMFSne9JJIo8ad5/GWxLmsJaKL47vxzMzSRz5uS/hqlDiZVboxaqw4jjwAuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AwZMtEYMN3ux8JGxnLo9TL+BXzg21fNesIbVuR1zRzQ=;
 b=InO93tELvCKbwT311jDYOddXFW8dG20tGXf8xUckZA2U6glby0wS7pTV3sVlRJzJ4j3w7eW325f9d3EGzrFrx2cbTxdUeCj20GjJKD4Ev/FU/y+hqo1RH0k7N3JwFp3t5CKUMroHsjSn+7AXPsbtSvCOf1C7zSUl72oCpPHS9n5gWryOXYwIBRibGS290nKqBc6mLONKMdMc7yf8xtZffpR13g4jjgV/CDUcgnf8foiuxL/g9aZcYsREPtGZJXdFCJJSu/DsXHhXRE6s2V8FsrjuFhLAOK+Svl2j7MtOorpGmvXi3BwQsHFESJtmZ6unluWPhJABNSg5UJwpuXOIhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=intel.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AwZMtEYMN3ux8JGxnLo9TL+BXzg21fNesIbVuR1zRzQ=;
 b=eVU0TMZ0gYDgKdlm78Hq7VK0Om1ms9/ifjgDxLIs2eHot5nAj49t461ZePIwdU+H1eJYCA3N1VxnJJBaRFiAs21MmCTctBkULBrXCLEWQADQlEJHp4sS6urIQU97Acb+e592N5XOoNNta9M9w43kWszllLdG2Db939FN/ijSZhM=
Received: from BN0PR02CA0029.namprd02.prod.outlook.com (2603:10b6:408:e4::34)
 by CY1PR12MB9627.namprd12.prod.outlook.com (2603:10b6:930:104::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Wed, 27 May
 2026 11:29:28 +0000
Received: from BN3PEPF0000B06D.namprd21.prod.outlook.com
 (2603:10b6:408:e4:cafe::6a) by BN0PR02CA0029.outlook.office365.com
 (2603:10b6:408:e4::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.71.13 via Frontend Transport; Wed, 27
 May 2026 11:29:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 BN3PEPF0000B06D.mail.protection.outlook.com (10.167.243.72) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.0 via Frontend Transport; Wed, 27 May 2026 11:29:28 +0000
Received: from arun-nv33.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Wed, 27 May
 2026 06:29:25 -0500
From: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
To: <matthew.auld@intel.com>, <christian.koenig@amd.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
CC: <alexander.deucher@amd.com>, Arunpravin Paneer Selvam
 <Arunpravin.PaneerSelvam@amd.com>
Subject: [PATCH v4 2/2] gpu/tests/buddy: add clear-tracker allocation latency
 benchmarks
Date: Wed, 27 May 2026 16:59:02 +0530
Message-ID: <20260527112902.3815-2-Arunpravin.PaneerSelvam@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260527112902.3815-1-Arunpravin.PaneerSelvam@amd.com>
References: <20260527112902.3815-1-Arunpravin.PaneerSelvam@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb07.amd.com (10.181.42.216) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN3PEPF0000B06D:EE_|CY1PR12MB9627:EE_
X-MS-Office365-Filtering-Correlation-Id: d2f39f3d-3d2e-4eaa-9441-08debbe336d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|36860700016|82310400026|376014|1800799024|18002099003|22082099003|5023799004|11063799006|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: YyncYXWvLn+9RXaJMIio52l/AP3ExW40ud5gI0p70/x4Rq/waAnpM4JWUsPdHNaWdH8nD5vuRA+fkG3zvmZ+9TysL/QXX0mn2qfxh61JhvzSWKChxU5ABG6y7cU8t6r8PfUy6t777B0ZOcguGat8mZWktRMSJvXlOQLA5OqSGsG+Z2wVKCdB7KZlAK/35aCiNvqq3zAAI6Rlfjz1O+L6H8+iCeW3vNW3uI9J9D+gab3Fc+bvOonoCcYA49VFm++RnQ/ZYtR/XXARbqFIjL6e+aa/BOWJgcqv9D0vQLBJgU2Tvi0Xfe3MRoXBlm6imSm3nyJQruqpZaDlN+bgZnEg9OLOAAethWk6roXmCMft0X7h3bVHYhi5AEk/1rYp5TsF0kF/T9wkLBD3BnSc4+5dXP+1WqCRK4egqNyCDTccHjHHcNgRF2VGbTluokWYkZhzE7YKUrWt5JgT3mcG5O3SzoCIQX1cnRgb8rowp1+w/FP5fgr0+Z0INc+akjSzxl04zYoj6Oq8YZiHXO5P8FTmFS72ED8cBMI+pTZtVOGY+PslD/BWIgZkrPKPwxSJbPPRJjKMR5jJOTe4+LgxQShnGNn6z1QAP3lCXHZExuOF65Jwmb8lJzIHAldvCXhazSd/ikC+CI+NekB/iSIyG1PNhZO6IIYrRJKZf3k0l9MLnRmfkVXzo6Q8Blw7Y2l6uzyrqULNtLNR05Wfoy+kTQMOkESM+7AJYMq3kQiXRuTHpGw=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(36860700016)(82310400026)(376014)(1800799024)(18002099003)(22082099003)(5023799004)(11063799006)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: W7bIZyCKE0EGuWw8brhWSQXYyM8Djga+1jRmXywSM0ZOuk6KvPgxMwoUJOU8+4xPCsbFTQUbLnRv2eYrwQ7kKejikIi26dbgFLmxtRdLP9l7xLaboF5W/YGFgBvklcW++S3BSpZN7cH3ymL4+6ruepNGUqqUmO0Z+1jgMRF0JktPvDawH8qt37Lrrr7nkDE2sgPdsWhYYO3U7q/XotvZ3yql0twv610aVYDqnQY7+MxFftnVYYSTQVdxd/BziqIzdJCkd6Y1FgqNGDvsDUAACOFwfEEC9fVHB3r4AX1xVlVtzPDT0FKsf6RCZdxrVghHfrleFtsFpXEsiL+6kn4C9AbPiHrPBWTd3FOLi5+8vlluV6BZoQrhCefokljHFCZk0WT+NpqVLLY4c/Ni1S/57sj74PuNc46Pde3gwQuUzgjs8JjVTM7mFxLhBurGsXJx
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2026 11:29:28.4709 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d2f39f3d-3d2e-4eaa-9441-08debbe336d5
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: BN3PEPF0000B06D.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR12MB9627
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [-1.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[amd.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[Arunpravin.PaneerSelvam@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,amd.com:email,amd.com:mid,amd.com:dkim]
X-Rspamd-Queue-Id: 001695E364D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add gpu_test_buddy_clear_tracker_performance test case that measures
allocation latency before and after replacing the dual-tree /
force_merge design with a decoupled clear tracker.

Two scenarios are covered.

1. Single contiguous allocation after fragmentation. A 4 GiB pool is
   filled with 4 KiB blocks and freed in alternating clear/dirty order,
   so every buddy pair ends up split across the two trees and cannot
   coalesce at free() time. A single contiguous 4 GiB allocation then
   takes ~61 ms on the dual-tree design (the alloc path has to invoke
   __force_merge() to climb back up to max_order) and ~25 ms with the
   clear tracker (the pool is already coalesced at free() time).

2. Repeated allocations from a fragmented pool. Same 4 GiB pool, freed
   with even-indexed blocks cleared and odd-indexed dirty so every
   adjacent buddy pair sits on opposite sides of the merge barrier.
   16384 x 256 KiB allocations then take ~80 ms on the dual-tree
   design (each alloc pays the __force_merge() cost) and ~39 ms with
   the clear tracker (free-time merging makes each alloc an O(log N)
   split).

v2:
 - Removed unwanted sub tests

v3:
 - Pass GPU_BUDDY_CONTIGUOUS_ALLOCATION on the timed full-pool alloc so
   the benchmark actually exercises the contiguous (force_merge) path
   instead of silently falling back to smaller blocks. (sashiko)

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Christian König <christian.koenig@amd.com>
Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
---
 drivers/gpu/tests/gpu_buddy_test.c | 128 ++++++++++++++++++++++++++---
 1 file changed, 118 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/tests/gpu_buddy_test.c b/drivers/gpu/tests/gpu_buddy_test.c
index e0d24a4542b2..1669c628847f 100644
--- a/drivers/gpu/tests/gpu_buddy_test.c
+++ b/drivers/gpu/tests/gpu_buddy_test.c
@@ -38,7 +38,7 @@ static void gpu_test_buddy_subtree_offset_alignment_stress(struct kunit *test)
 	};
 	struct list_head allocated[ARRAY_SIZE(alignments)];
 	unsigned int i, max_subtree_align = 0;
-	int ret, tree, order;
+	int ret, order;
 	struct gpu_buddy mm;
 
 	KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_init(&mm, mm_size, SZ_4K),
@@ -93,15 +93,13 @@ static void gpu_test_buddy_subtree_offset_alignment_stress(struct kunit *test)
 		gpu_buddy_free_list(&mm, &allocated[i], 0);
 
 		for (order = 0; order <= mm.max_order; order++) {
-			{
-				node = mm.free_tree[order].rb_node;
-				if (!node)
-					continue;
-
-				block = container_of(node, struct gpu_buddy_block, rb);
-				max_subtree_align = max(max_subtree_align,
-							block->subtree_max_alignment);
-			}
+			node = mm.free_tree[order].rb_node;
+			if (!node)
+				continue;
+
+			block = container_of(node, struct gpu_buddy_block, rb);
+			max_subtree_align = max(max_subtree_align,
+						block->subtree_max_alignment);
 		}
 
 		KUNIT_EXPECT_GE(test, max_subtree_align, ilog2(alignments[i]));
@@ -285,6 +283,115 @@ static void gpu_test_buddy_fragmentation_performance(struct kunit *test)
 	gpu_buddy_fini(&mm);
 }
 
+static void gpu_test_buddy_clear_tracker_performance(struct kunit *test)
+{
+	struct gpu_buddy_block *block, *tmp;
+	unsigned long elapsed_ms;
+	LIST_HEAD(clear_blocks);
+	LIST_HEAD(dirty_blocks);
+	LIST_HEAD(allocated);
+	struct gpu_buddy mm;
+	LIST_HEAD(results);
+	ktime_t start, end;
+	int i, count;
+
+	/*
+	 * Contiguous alloc latency after alternating clear/dirty fragmentation
+	 *
+	 * Fill a 4 GiB pool with 4 KiB allocations, partition them into
+	 * alternating cleared and dirty sets, then free both.  In the old
+	 * dual-tree design every adjacent buddy pair has one cleared half and
+	 * one dirty half, so the pair sits on opposite sides of the clear/dirty
+	 * merge barrier and cannot be coalesced at free() time.  The pool
+	 * stays fully fragmented and the subsequent contiguous 4 GiB allocation
+	 * has to invoke __force_merge() to climb back up to max_order before
+	 * it can succeed.  With the clear-tracker design buddy pairs coalesce
+	 * unconditionally during free(), so the pool is already at max_order
+	 * before the timed alloc begins and __force_merge() is not needed.
+	 */
+	KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_init(&mm, SZ_4G, SZ_4K),
+			       "buddy_init failed\n");
+
+	for (i = 0; i < SZ_4G / SZ_4K; i++)
+		KUNIT_ASSERT_FALSE_MSG(test,
+				       gpu_buddy_alloc_blocks(&mm, 0, SZ_4G, SZ_4K, SZ_4K,
+							      &allocated, 0),
+				       "buddy_alloc hit an error size=%u\n", SZ_4K);
+
+	count = 0;
+	list_for_each_entry_safe(block, tmp, &allocated, link) {
+		if (count++ % 2 == 0)
+			list_move_tail(&block->link, &clear_blocks);
+		else
+			list_move_tail(&block->link, &dirty_blocks);
+	}
+
+	gpu_buddy_free_list(&mm, &clear_blocks, GPU_BUDDY_CLEARED);
+	gpu_buddy_free_list(&mm, &dirty_blocks, 0);
+
+	start = ktime_get();
+	KUNIT_ASSERT_FALSE_MSG(test,
+			       gpu_buddy_alloc_blocks(&mm, 0, SZ_4G, SZ_4G, SZ_4K,
+						      &results,
+						      GPU_BUDDY_CONTIGUOUS_ALLOCATION),
+			       "contiguous alloc failed\n");
+	end = ktime_get();
+	elapsed_ms = ktime_to_ms(ktime_sub(end, start));
+
+	kunit_info(test, "Contiguous alloc after fragmentation: %lu ms\n",
+		   elapsed_ms);
+
+	gpu_buddy_free_list(&mm, &results, 0);
+	gpu_buddy_fini(&mm);
+
+	/*
+	 * Repeated alloc throughput from a maximally fragmented pool
+	 *
+	 * Fill a 4 GiB pool with 4 KiB allocations, free even-indexed blocks
+	 * as cleared and odd-indexed blocks as dirty.  The alternating pattern
+	 * ensures every adjacent buddy pair has one cleared half and one dirty
+	 * half, so each pair lands on opposite sides of the old merge barrier.
+	 * Each of the 16 384 x 256 KiB allocations in the timed loop has to
+	 * pay the __force_merge() cost on the alloc path under the old design.
+	 * With the clear-tracker design the pool collapses to one max_order
+	 * block during free(), so each alloc is a simple O(log N) split.
+	 */
+	KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_init(&mm, SZ_4G, SZ_4K),
+			       "buddy_init failed\n");
+
+	for (i = 0; i < SZ_4G / SZ_4K; i++)
+		KUNIT_ASSERT_FALSE_MSG(test,
+				       gpu_buddy_alloc_blocks(&mm, 0, SZ_4G, SZ_4K, SZ_4K,
+							      &allocated, 0),
+				       "buddy_alloc hit an error size=%u\n", SZ_4K);
+
+	count = 0;
+	list_for_each_entry_safe(block, tmp, &allocated, link) {
+		if (count++ % 2 == 0)
+			list_move_tail(&block->link, &clear_blocks);
+		else
+			list_move_tail(&block->link, &dirty_blocks);
+	}
+
+	gpu_buddy_free_list(&mm, &clear_blocks, GPU_BUDDY_CLEARED);
+	gpu_buddy_free_list(&mm, &dirty_blocks, 0);
+
+	start = ktime_get();
+	for (i = 0; i < SZ_4G / SZ_256K; i++)
+		KUNIT_ASSERT_FALSE_MSG(test,
+				       gpu_buddy_alloc_blocks(&mm, 0, SZ_4G, SZ_256K, SZ_4K,
+							      &results, 0),
+				       "buddy_alloc hit an error size=%u\n", SZ_256K);
+	end = ktime_get();
+	elapsed_ms = ktime_to_ms(ktime_sub(end, start));
+
+	kunit_info(test, "Repeated 256 KiB allocs from fragmented pool: %lu ms\n",
+		   elapsed_ms);
+
+	gpu_buddy_free_list(&mm, &results, 0);
+	gpu_buddy_fini(&mm);
+}
+
 static void gpu_test_buddy_alloc_range_bias(struct kunit *test)
 {
 	u32 mm_size, size, ps, bias_size, bias_start, bias_end, bias_rem;
@@ -1398,6 +1505,7 @@ static struct kunit_case gpu_buddy_tests[] = {
 	KUNIT_CASE(gpu_test_buddy_alloc_range),
 	KUNIT_CASE(gpu_test_buddy_alloc_range_bias),
 	KUNIT_CASE_SLOW(gpu_test_buddy_fragmentation_performance),
+	KUNIT_CASE_SLOW(gpu_test_buddy_clear_tracker_performance),
 	KUNIT_CASE(gpu_test_buddy_alloc_exceeds_max_order),
 	KUNIT_CASE(gpu_test_buddy_offset_aligned_allocation),
 	KUNIT_CASE(gpu_test_buddy_subtree_offset_alignment_stress),
-- 
2.34.1

