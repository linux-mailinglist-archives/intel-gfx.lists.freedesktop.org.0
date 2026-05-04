Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YG5cAvh++GmHwAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 13:11:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FAE4BC3B1
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 13:11:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2321B10E654;
	Mon,  4 May 2026 11:11:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="2+X1PIGw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com
 (mail-westusazon11012020.outbound.protection.outlook.com [52.101.43.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE51910E641;
 Mon,  4 May 2026 11:11:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uogxs9fxBdBxBVU2AGUf0wJZvgN9edRr9Tt6U95kw398bC8NpxyvXoumCfMoIbqIdurpdxhfrtnRbrzZYnDFwmhRJHzkG8S92ca+2EKHAvNkwhyYpYlg9RRwWRZmjJr8EfqJF54gbgRjwIvGK6BbsrbJhoAKbFk32K95yG0Y0Dm/SyRPnGwjf1B3g3kzzpduJZ8rHuQO2rs0Sb/yeNuXck0ZH/FGyj0VjL38CDOE1irqOXOG53tQ+hSlobMRzTnA5TR0kjm0mKkNaWf15D9gK/ob/T9xApNLyXpBP9PYlWYtyTMEHmRQLC2SR2TImirQhkHP9DLE1wrlM+kfkD3CeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fSrcDsduJWLIEY2XJ5XZgaoH1Ti/Kx6RJErOzkdGLfA=;
 b=R8aqLxHHxdNao6tofz/2Q5VJJtvYhHh17cBhjRXeW71uHNaSmg7ccWLrqnb6+qcvI1Z76bLmKv+2RRm2UxOJ+UtljWtbWKPMVtd6LsSc+FlwjS+KcJJb58jlUr8fMT+pZoDnhwRwgAR8hM+qBYv0YsvVh1TPZIEYwnuUf8yuorQAQx2BWspqgdXT4JlrO6p2RHjBpTkvNuaqLE4ZnOB4DLnOGVigU0B8Fp+uo8ooOmTz/ijUOjl1AE6oGzbgJLFKU+nsmmFvc6NNKzR8I3oMuE92AXXDjbHEsK36AGJiEU3mdLr0hYxmTWcL8xe6DLKY/xi5HKaTSyM5TIBnqLLGcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=intel.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fSrcDsduJWLIEY2XJ5XZgaoH1Ti/Kx6RJErOzkdGLfA=;
 b=2+X1PIGwgDdnJrb0i1OZdz7j5OuWSpGo1CRFVdbSKuEyidUNf/a6GKoTAIcI4dOI9aS82SpmQvXhDZRXwY5sIWCCYpVHLtfxbRfSiWZIrErJK+nNsoxnvo3g+1KLUwioTQBnubO+1n1z1w/Q07tbPRe5twHaCUFkf6ZY7sjN77k=
Received: from BN0PR02CA0011.namprd02.prod.outlook.com (2603:10b6:408:e4::16)
 by DS0PR12MB8444.namprd12.prod.outlook.com (2603:10b6:8:128::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 11:11:43 +0000
Received: from BN2PEPF000044AC.namprd04.prod.outlook.com
 (2603:10b6:408:e4:cafe::b9) by BN0PR02CA0011.outlook.office365.com
 (2603:10b6:408:e4::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9870.25 via Frontend Transport; Mon,
 4 May 2026 11:11:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 BN2PEPF000044AC.mail.protection.outlook.com (10.167.243.107) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.9 via Frontend Transport; Mon, 4 May 2026 11:11:42 +0000
Received: from arun-nv33.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Mon, 4 May
 2026 06:11:39 -0500
From: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
To: <matthew.auld@intel.com>, <christian.koenig@amd.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
CC: <alexander.deucher@amd.com>, Arunpravin Paneer Selvam
 <Arunpravin.PaneerSelvam@amd.com>
Subject: [PATCH v2 2/2] gpu/tests/buddy: add clear-tracker allocation latency
 benchmarks
Date: Mon, 4 May 2026 16:40:55 +0530
Message-ID: <20260504111055.262964-2-Arunpravin.PaneerSelvam@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260504111055.262964-1-Arunpravin.PaneerSelvam@amd.com>
References: <20260504111055.262964-1-Arunpravin.PaneerSelvam@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb08.amd.com (10.181.42.217) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN2PEPF000044AC:EE_|DS0PR12MB8444:EE_
X-MS-Office365-Filtering-Correlation-Id: d29cdde9-1256-4b1d-ebc8-08dea9cdebf7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|36860700016|376014|82310400026|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: sgxE7UzauxOW2BdphXoWxJSTCUcTGrs6tJ3NFOZSYSi+71fWSc8J604au/NNoifF6RytvWhLkSQvYlZkU00dLq3YfelpxZm3P5dBMhvXEqYFhfhXNfT03eVPv2Gwvy2/2u/YMPWOTqbuPg54Be/OwJXtfPYO4Lsvy0CFTfgzeKYJKOooRcPY2HG4S6RDIXgaAX1P2ft0OKe3gi/rI/ASrlRkoBvyRxEvgm3c4oDwqEvmr2zcC3phkSGE03x1xzRFpZ4bXBoFNqIr84L1koT99ozcA7ZV4tlcXQlgcadxemwbD9PjITTFARpQ7lzm3Ze9iAcMWXrFQ85/+PIaGDZUlt0ZQxl6j2naKvvbAE9wS11ibVOBsJlApPeUE/aRh2YnYcZEwfXE4zolI2UKOxIFgIppz2kfWVWKcZXbKS+Uc1bd7rDlhcAvE6kiZhQ5CswQt6A6q7Tm/9W+8dS+HO44uaxxiN8UC4wXHLdPuXR/+kU+r7xxyUVPAuyTf2mgisrg4+hchQWgBIJKcUmAjOMGK0xhBalX3EgRUElhxfGIKwf0gPJOj0RqYELh9tJEGLyuVea6LUEaBZ3Qg/98zH6htgBaZGZBTeZ0+IeG9gsB+aTezFSu+/Q6BIyhYRPY00xwjOnZ5XOUXFTtFheFHZQEjh/5nS319VuRh3URms0Xsiv3m4GeXtTe+7bPZdI3/LDwkJfc1qKqLp5FZYctPqbDX8M8ZORXacX0cpOf1J4zykw=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(36860700016)(376014)(82310400026)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: c+Y6q0TVjwFis5N08TEx0C7FXLU2t5C+WkXql0RuRBex0OVTgSYpCiDhg235W/3YH4D+O1epjDWumQdN3SgCMEGoJ7UNeXfQFq4bm2pUtWFj3YOOj3i9iWnpRzsEuo54mfxjol1s6kxKl8z6Nj1SLDXkvcQDagtxZRzNcUg5SOzjPVchkaIdVnyG1nsqCIysiXmyIPIR+ce8ynmUnQHUHOXexntk3u1sLbvFm/Mllv2WwOEjbz7zaAQmJvqe1o2WSVIhAmawq1iI3cY3qJy1GSBlFzXcG/YKWPxp4Y5i07J56XaW+Ofha6kPPIDuoK+SVbHMj+Jr1o+OngtTFN/oIU6nmm8RFNj1XLtR1OMN3Fa/gkIOBq5FPPdnq5lUL6ASpXl7YfNdoaa28ku/V9As1q0nFuhLohoEeZ1qqHBhV/CMSqsow0zu5CqEpdiyCtDM
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 11:11:42.5031 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d29cdde9-1256-4b1d-ebc8-08dea9cdebf7
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: BN2PEPF000044AC.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8444
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
X-Rspamd-Queue-Id: A8FAE4BC3B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]

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

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Christian König <christian.koenig@amd.com>
Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
---
 drivers/gpu/tests/gpu_buddy_test.c | 140 +++++++++++++++++++++++++----
 1 file changed, 122 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/tests/gpu_buddy_test.c b/drivers/gpu/tests/gpu_buddy_test.c
index 7df5c2ae83bb..5040216ead2b 100644
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
@@ -78,14 +78,11 @@ static void gpu_test_buddy_subtree_offset_alignment_stress(struct kunit *test)
 		}
 
 		for (order = mm.max_order; order >= 0 && !root; order--) {
-			for (tree = 0; tree < 2; tree++) {
-				node = mm.free_trees[tree][order].rb_node;
-				if (node) {
-					root = container_of(node,
-							    struct gpu_buddy_block,
-							    rb);
-					break;
-				}
+			node = mm.free_tree[order].rb_node;
+			if (node) {
+				root = container_of(node,
+						    struct gpu_buddy_block,
+						    rb);
 			}
 		}
 
@@ -97,15 +94,13 @@ static void gpu_test_buddy_subtree_offset_alignment_stress(struct kunit *test)
 		gpu_buddy_free_list(&mm, &allocated[i], 0);
 
 		for (order = 0; order <= mm.max_order; order++) {
-			for (tree = 0; tree < 2; tree++) {
-				node = mm.free_trees[tree][order].rb_node;
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
@@ -289,6 +284,114 @@ static void gpu_test_buddy_fragmentation_performance(struct kunit *test)
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
+						      &results, 0),
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
@@ -1402,6 +1505,7 @@ static struct kunit_case gpu_buddy_tests[] = {
 	KUNIT_CASE(gpu_test_buddy_alloc_range),
 	KUNIT_CASE(gpu_test_buddy_alloc_range_bias),
 	KUNIT_CASE_SLOW(gpu_test_buddy_fragmentation_performance),
+	KUNIT_CASE_SLOW(gpu_test_buddy_clear_tracker_performance),
 	KUNIT_CASE(gpu_test_buddy_alloc_exceeds_max_order),
 	KUNIT_CASE(gpu_test_buddy_offset_aligned_allocation),
 	KUNIT_CASE(gpu_test_buddy_subtree_offset_alignment_stress),
-- 
2.34.1

