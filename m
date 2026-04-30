Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sArbN7xh82le2AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 16:05:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 918254A3D4D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 16:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F015910F2D2;
	Thu, 30 Apr 2026 14:05:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="QDhkYEqG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL2PR02CU003.outbound.protection.outlook.com
 (mail-eastusazon11011021.outbound.protection.outlook.com [52.101.52.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DFE710EDAE;
 Thu, 30 Apr 2026 14:05:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u4Us0wUoTqmox9Jc1GU81vstv/FCk79hWCwUey8dxSufWs6lYUXOjAPYWrTKVO0nueKlS5Qrfs9Bt+ymtPwgMqR+M+WxWdTu5c+AuOZ1jZ/Sbw3xchkF64ZFqJ98N4Js0uRoOy0hwqz1iuXrWya1Qm0tq/0a/piRZW/9Bhzm+IanwDUSQ5nMNKMiokOi+w89JVgSGrU/AmipHBNS5ySrh5hMmGaPosnC6HtkhtLluceGqO08o2PHUe8eKkQpXD88z/QjehDxhDveumbTOnY6eXNVAWyqpRhebIYpuQumCIapkajbL19e8cORJPPxrwSRTw88xkphcIx1aPuEs10RgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hVtYpRYAlSVOvoVw0VuxVM1l6NF/z22WapBuLwCk0WM=;
 b=Pi2f8xiUgToQs14Qu3vQsh0mxxe+/S1goQLfTRwtNcv9Z4U6Aq5sUslpPkIShEoweTN6aKyn5bEjUisiSyU7WwPQME2mpiHjvIy+9tzYaDS3eJonpOv7gMqFBldy3gt7R0uiBUOty+0PrKFTJan1900Y4kch6SgDx3bvh3x0pML1lNh42Ly9dI0Yz7buirvmRlgHmLzKnt6n77EY0Dv2kuGc3KbcG+3m8xlZb0SH15bfqhS7eUGuU+ybsEiwj7FSBhxW6TdOTmlkpOyoA4AYIO4Uz2F+ti/A15lBNvxyDLpXqJQTLmJTmSidFsL+i9/5X2czrkNWAYF/qI/HNLVY1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=intel.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hVtYpRYAlSVOvoVw0VuxVM1l6NF/z22WapBuLwCk0WM=;
 b=QDhkYEqGZfVNoK9g4srDHCww5qEWMTFWDfIwZs7wU/MwIsFIxg3UgsVl+04WSURZH/cvgeUu+UuVJ+xONtBJkbPq4iWOC7OwJAKbka2z3jqIz1tvOYVLr2s+RdXJrb0QO/fNLQdwlXfj2umtry84sDNTatueAQ9D1hG17WUl4Mk=
Received: from DS2PEPF0000455F.namprd21.prod.outlook.com
 (2603:10b6:f:fc00::50d) by SJ1PR12MB6217.namprd12.prod.outlook.com
 (2603:10b6:a03:458::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Thu, 30 Apr
 2026 14:05:34 +0000
Received: from SN1PEPF0002BA50.namprd03.prod.outlook.com
 (2603:10b6:82c:400:0:1006:0:9) by DS2PEPF0000455F.outlook.office365.com
 (2603:10b6:f:fc00::50d) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9891.7 via Frontend Transport; Thu,
 30 Apr 2026 14:05:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 SN1PEPF0002BA50.mail.protection.outlook.com (10.167.242.73) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.18 via Frontend Transport; Thu, 30 Apr 2026 14:05:33 +0000
Received: from arun-nv33.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Thu, 30 Apr
 2026 09:05:29 -0500
From: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
To: <matthew.auld@intel.com>, <christian.koenig@amd.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
CC: <alexander.deucher@amd.com>, Arunpravin Paneer Selvam
 <Arunpravin.PaneerSelvam@amd.com>
Subject: [PATCH 2/2] gpu/tests/buddy: add clear-tracker allocation latency
 benchmarks
Date: Thu, 30 Apr 2026 19:35:14 +0530
Message-ID: <20260430140514.1850417-2-Arunpravin.PaneerSelvam@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260430140514.1850417-1-Arunpravin.PaneerSelvam@amd.com>
References: <20260430140514.1850417-1-Arunpravin.PaneerSelvam@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb08.amd.com (10.181.42.217) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1PEPF0002BA50:EE_|SJ1PR12MB6217:EE_
X-MS-Office365-Filtering-Correlation-Id: 148daf0e-e9b4-4baa-41f2-08dea6c18be7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|82310400026|376014|36860700016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: BTUQ8cc772CIpzQGJdM0NBkqKZf3YWsbXcwf0V3Hh1Zy19pZukVRntZU+WFHcPbzcdOa/gG3gX9yCQPLH3z7KrM3Q/ILLyhNQmZL/n63TEbZw3WBTNtj04iIx2r9GFWekyS19OlcdJaQv5ZTJROMbSTq6zsM8pAbXV9rD62CJ1q6nz2A83+watDMoKT47QDxVVxtkfCRSi/6FFG0k4MkmFweG7ANm1I73Oy9SB0BE5Oa5UjhlP7nXjuJ3rKPdBIck5gdw2YGFdpMVgewmUjUD0vCPZWfMYdJLoPY1jCj7aEoK/92cfCPasXtUeVAi1ND4tMBQi7fv19wjpndF9LWC0QCqNPshnL5XvSlThlCEN1MdEB9OdsTZZZ7j4wxgHu+Sq2UElihDYjcUaTUP7Gh0CqUBfbhjiG07UaaTOsSsv8A6QPusXq823r4eqsm6lNpt4O+Kudj8WwRWfsN0IVYUL65gGLWuxx07BiL7ml1/6cV9w7ocVlp5NbRMk/XlDUwJxW//wNlc6pHJ3nwh2poYHyAWGUvdtk+IVTlrt6zkAoXAMGyh8z9s1uXPjB4F1g7rEVHgDoTRy5CVxfy8QsqPL28zuhtpktGbbBtOiSI8gfnBLhCM8fAvVsNcCDAkLWmNZSuDVqAAC6Nba95D0dSonyA5SWR7iHpYR3yGsCu9DlGdvKHXv4sVcZ3mpJy2ZnWXFeluVTYpHxBZ4etWyk0t4iVSfxD0P8JUhl6NJxirGJaKqnu+yadqhPKfffnZ2Y/QbxOIayiwhhhB6PvXq5frg==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(82310400026)(376014)(36860700016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: pcIrTkgN5qkXHGVvHchDiHj1FnbT54FVRirIV0/U/nt06gKAco5FnRpKzYlwHZgeNh7aZf60kOTgwtSXi5GFPJpe3vGwnOhOCoSAzu+oNa2tLqYu+EftegrJKwNRoy5O2PTuNXBpq/q6KauQeNAP8nwRDrhy5LdC8B4m+3kgDU44nbgzwiRLP208B/WiEnAtfca1kurPl64OGzIi7hZrQaF+M06VGgWNjMEACDD94qXKTiVl5R8ruMPaeCRW7vP/UA9NaMiFU250oPiQ2GYyr4ySTp2eQokgsZFNST9pFmQEju0oaP0Z8erUTHH3rHjYq/nKVxZYqlJtCqHoPzTFD03RC5K89majDwQ2u5BxFu5cL2xo+FNTR67lU1igRAZUPLnhCESf0rolyhfhROtemX6/a7qnuzt2i+YkViVqNyQChpXLg4szAstp21Qhk067
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 14:05:33.8676 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 148daf0e-e9b4-4baa-41f2-08dea6c18be7
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: SN1PEPF0002BA50.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6217
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
X-Rspamd-Queue-Id: 918254A3D4D
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,amd.com:email,amd.com:dkim,amd.com:mid]

Add gpu_test_buddy_force_merge_removal_performance test case that
measures allocation latency before and after replacing the dual-tree/
force_merge design with a decoupled clear tracker.

The test covers three scenarios -

1. Contiguous allocation after alternating clear/dirty fragmentation
   - Allocate a 4 GiB pool as 4 KiB blocks, free in alternating
     clear/dirty order to fragment every buddy pair across the two trees.
   - Attempt a single contiguous 4 GiB allocation.
   - Old dual-tree design: ~60 ms (force_merge O(N x max_order) inside alloc path).
     New clear-tracker:     ~25 ms (pool coalesced during free, O(log N) lookup).

2. Repeated allocs from a fragmented pool
   - Fill a 4 GiB pool, free even-indexed blocks as cleared and odd-indexed
     as dirty so every adjacent buddy pair straddles the merge barrier.
   - Perform 16384 x 256 KiB allocations.
   - Old dual-tree design: ~79 ms (each alloc invokes force_merge).
     New clear-tracker:     ~41 ms (unconditional free-time merging, O(log N) per alloc).

3. Asymmetric 3:1 clear:dirty ratio correctness check
   - Mark every 4th block dirty in a 1 GiB pool; attempt a contiguous
     1 GiB allocation.
   - Old dual-tree design: fails (merge barrier blocks coalescing).
     New clear-tracker:      ~3 ms (unconditional merging handles mixed ratios).

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Christian König <christian.koenig@amd.com>
Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
---
 drivers/gpu/tests/gpu_buddy_test.c | 181 ++++++++++++++++++++++++++---
 1 file changed, 163 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/tests/gpu_buddy_test.c b/drivers/gpu/tests/gpu_buddy_test.c
index 7df5c2ae83bb8..8f95902613d35 100644
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
+			node = mm.dirty_tree[order].rb_node;
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
+			node = mm.dirty_tree[order].rb_node;
+			if (!node)
+				continue;
+
+			block = container_of(node, struct gpu_buddy_block, rb);
+			max_subtree_align = max(max_subtree_align,
+						block->subtree_max_alignment);
 		}
 
 		KUNIT_EXPECT_GE(test, max_subtree_align, ilog2(alignments[i]));
@@ -289,6 +284,155 @@ static void gpu_test_buddy_fragmentation_performance(struct kunit *test)
 	gpu_buddy_fini(&mm);
 }
 
+static void gpu_test_buddy_force_merge_removal_performance(struct kunit *test)
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
+	 * dual-tree design every adjacent buddy pair straddles the clear/dirty
+	 * merge barrier so the pool stays fully fragmented; the subsequent
+	 * contiguous 4 GiB allocation must run __force_merge() O(N x max_order)
+	 * inside the alloc path (~60 ms).  With the clear-tracker design buddy
+	 * pairs coalesce unconditionally during free(), so the pool is already
+	 * at max_order before the timed alloc begins.
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
+	kunit_info(test, "Contiguous alloc after fragmentation: %lu ms (old design ~60 ms)\n",
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
+	 * ensures every adjacent buddy pair straddles the old merge barrier.
+	 * Each of the 16 384 x 256 KiB allocations in the timed loop must call
+	 * __force_merge() before it can succeed (~79 ms total).  With the
+	 * clear-tracker design the pool collapses to one max_order block during
+	 * free, so each alloc is a simple O(log N) split.
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
+	kunit_info(test, "Repeated 256 KiB allocs from fragmented pool: %lu ms (old design ~79 ms)\n",
+		   elapsed_ms);
+
+	gpu_buddy_free_list(&mm, &results, 0);
+	gpu_buddy_fini(&mm);
+
+	/*
+	 * Coalescing correctness with an asymmetric 3:1 clear:dirty pattern
+	 *
+	 * Fill a 1 GiB pool with 4 KiB blocks, mark every fourth block dirty
+	 * and the rest cleared.  The 3:1 ratio maximally stresses the old
+	 * merge barrier: each dirty block has cleared buddies at every order
+	 * level, preventing full coalescing without an exhaustive force_merge
+	 * walk (~4.7 M node visits).  With the clear-tracker design the pool
+	 * merges completely during free() and the full 1 GiB contiguous alloc
+	 * succeeds.  The KUNIT_ASSERT below would fail on the old design.
+	 */
+	KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_init(&mm, SZ_1G, SZ_4K),
+			       "buddy_init failed\n");
+
+	for (i = 0; i < SZ_1G / SZ_4K; i++)
+		KUNIT_ASSERT_FALSE_MSG(test,
+				       gpu_buddy_alloc_blocks(&mm, 0, SZ_1G, SZ_4K, SZ_4K,
+							      &allocated, 0),
+				       "buddy_alloc hit an error size=%u\n", SZ_4K);
+
+	count = 0;
+	list_for_each_entry_safe(block, tmp, &allocated, link) {
+		if (count++ % 4 == 3)
+			list_move_tail(&block->link, &dirty_blocks);
+		else
+			list_move_tail(&block->link, &clear_blocks);
+	}
+
+	gpu_buddy_free_list(&mm, &clear_blocks, GPU_BUDDY_CLEARED);
+	gpu_buddy_free_list(&mm, &dirty_blocks, 0);
+
+	start = ktime_get();
+	KUNIT_ASSERT_FALSE_MSG(test,
+			       gpu_buddy_alloc_blocks(&mm, 0, SZ_1G, SZ_1G, SZ_4K,
+						      &results, 0),
+			       "3:1 coalescing correctness FAILED\n");
+	end = ktime_get();
+	elapsed_ms = ktime_to_ms(ktime_sub(end, start));
+
+	kunit_info(test, "3:1 clear:dirty coalescing correctness: %lu ms\n", elapsed_ms);
+
+	gpu_buddy_free_list(&mm, &results, 0);
+	gpu_buddy_fini(&mm);
+}
+
 static void gpu_test_buddy_alloc_range_bias(struct kunit *test)
 {
 	u32 mm_size, size, ps, bias_size, bias_start, bias_end, bias_rem;
@@ -1402,6 +1546,7 @@ static struct kunit_case gpu_buddy_tests[] = {
 	KUNIT_CASE(gpu_test_buddy_alloc_range),
 	KUNIT_CASE(gpu_test_buddy_alloc_range_bias),
 	KUNIT_CASE_SLOW(gpu_test_buddy_fragmentation_performance),
+	KUNIT_CASE_SLOW(gpu_test_buddy_force_merge_removal_performance),
 	KUNIT_CASE(gpu_test_buddy_alloc_exceeds_max_order),
 	KUNIT_CASE(gpu_test_buddy_offset_aligned_allocation),
 	KUNIT_CASE(gpu_test_buddy_subtree_offset_alignment_stress),
-- 
2.34.1

