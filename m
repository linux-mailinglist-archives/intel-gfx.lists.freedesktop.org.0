Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMKIAhYO/mm2mQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 18:23:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA104F9668
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 18:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74AD310F563;
	Fri,  8 May 2026 16:23:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="gMZ2tUQZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SA9PR02CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11013064.outbound.protection.outlook.com
 [40.93.196.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8864610F540;
 Fri,  8 May 2026 16:23:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nRebC2iyyyPJnPsZuNl23/Qg8SyXx1Q9AELop1jcBcSPIxaHiVx0qtFv4c7EJHZowz95iZeeZ2K7fQsUbYZ8CdyP0FEiik+ZccJw+uAPmcyq0KvsXBvRI3xbn8bhjpkkxpnoU9nafoXrQwMyqV2gpBBbJPKR+nJxDKyeBzH+t9BHCdwi6szW5hzMD8AZWs5WaVzFmdkugVqzxiQ+ZoX9m7yAZ8EieNfLa2ki5a+FdZbQan+HXGew8Zwx5aRFLoqwRyfJtJ5QQWxtQ2nmB9bpMu/QbHhAFRzSh+gmQmFrUIuqsl9ImCrcwtQWS8w1Y8LeKTbpGVwVDSBjloGdX3Wk8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vis0L2KatZQR2CksV+rGxrARGyTVYjkhMv07RPu98+o=;
 b=hBaXeMSwIr0r/YXf4YeeUJHBUbwwiAaCrzBHn1TWsn1KS+ybiP06d7JdNaBFPH+/KJcOKmk5VUFVXGcmbDvTfCSsyw23zNoghSrXgQ0p2sU+4adV+c2b4YOWOmeoSw5tl6Y7639fH4aV6kIS0Ocqvg2Q2PqOjUel7o83nZiS5WmBagP+mfld+ZVZC52pPekDzYyzBrA71FAjyq5FRPeyj+cq3iC5Ss2MjtktAgo9YHGv5WnAvebkdB0pSp/AOP3iVzoo7Zhz7v/LE53ERY3jzJ5PmX38Fh4fVEEQTVHytybhCAAeoXC6uBSAn6PvvHWFD+zypHBoa5nuq8jtdC6Hqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=intel.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vis0L2KatZQR2CksV+rGxrARGyTVYjkhMv07RPu98+o=;
 b=gMZ2tUQZud95gtEsV9tqx5C+nZpnjCkIJ/Nl6OKdb6ZTdKeWIZJQC70okxNVXp/+26FykF//X+GCLIh5YpBfEhGfW9ziJlBxIoDn0Zq7SFXDMh9Empe0OHyOJwn4o28w9Avk03OAvWibCOWFMPGbkEvnfVtBqXnRiemY8nO32/4=
Received: from BL1PR13CA0405.namprd13.prod.outlook.com (2603:10b6:208:2c2::20)
 by MN6PR12MB8544.namprd12.prod.outlook.com (2603:10b6:208:47f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 16:23:32 +0000
Received: from BL02EPF00021F6B.namprd02.prod.outlook.com
 (2603:10b6:208:2c2:cafe::ca) by BL1PR13CA0405.outlook.office365.com
 (2603:10b6:208:2c2::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.25.11 via Frontend Transport; Fri, 8
 May 2026 16:23:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 BL02EPF00021F6B.mail.protection.outlook.com (10.167.249.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.9 via Frontend Transport; Fri, 8 May 2026 16:23:30 +0000
Received: from arun-nv33.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Fri, 8 May
 2026 11:23:27 -0500
From: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
To: <matthew.auld@intel.com>, <christian.koenig@amd.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
CC: <alexander.deucher@amd.com>, Arunpravin Paneer Selvam
 <Arunpravin.PaneerSelvam@amd.com>
Subject: [PATCH v3 2/2] gpu/tests/buddy: add clear-tracker allocation latency
 benchmarks
Date: Fri, 8 May 2026 21:53:10 +0530
Message-ID: <20260508162310.57080-2-Arunpravin.PaneerSelvam@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260508162310.57080-1-Arunpravin.PaneerSelvam@amd.com>
References: <20260508162310.57080-1-Arunpravin.PaneerSelvam@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb08.amd.com (10.181.42.217) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF00021F6B:EE_|MN6PR12MB8544:EE_
X-MS-Office365-Filtering-Correlation-Id: 255c2239-5072-48b9-af03-08dead1e2434
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|36860700016|82310400026|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: cXr0W+Kids0hAjscpqm8EaU78v+M1MUHTdDyH/JdWgamLrlniA3E7c5lvTj33599aA5S2tjSnU9lAQhJ07GsibGm8WcHG50sidprLbAGb1zgblO80lrBUMd/ZWLLiIVU6fH+WF2uMEogRjh5tA19liPR4WsW6s39zUbANyWBNc0kB3B1najGrkdgBKW9RW03ThRQXQWYvADfx1LNFH/Zeuw4HfP8FX40k8GVv6ZA11Icjn6bL2phI4tRYr9cOEoqAmA58IjlpfN97c0GmVXzOd/T4bhDdNh0vd9uGlOt85Uz4BI9V4agmlNDMcntWmzs80gFpH+cNB1clFFSe7m+ZKi7jPv1Vtnge+TeZAFHDmobsAJ2ln0KZ/TTIEODO7Cm0vJ+AJSYdbJu1e+ZDTuQ977E2q7hprfHRQZ1QjNB69K1aNDe93V73QqHdWq+jmm2WKR1qE+Onnt1vy8NdapApCAvf0zC/xwKK9ku23LOFyt62lR0+dMlgW6KHJIVZNRkeis7CvRaWgf3avEjXPtIvNJ6VX1WttjYJSDIV9xCEx8xHUU1eg95qME8TuKAb3pFx9R7tAEwFmxVb1mB4vwMbycBp3zLOJlZMcUpZopOwIOyE+D8DQ+3kpXdh1/htsdc1ZrXqmb/blu6wrWTWqI+SQcqc1cxQUugik51f/hTlAmFXLePmqMgp0hRn1xRK33MPJfteyvs1dMLKhnCwXCtLcCrx0x9VgDL0ijwn7tLFaQ=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(36860700016)(82310400026)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: /RiDdAj5W0EAekZUu4vgD9AtDXXI71zX5g5gbxxNpuc6mNx0sSrxR3vRJwLUce9VNwHf4D6F6y+4f1GzJFQK5EfSrQL5PPxg/gkklCEXnAF5ILv4wRSjxakr51cBq4O3ifzJEUUNGLp0S2J8W0S9+du9EyEwT6r6E80x8t12eiSyYOy2DHPjodEaV/HLFek/pqwDy8GCzyIpUUYWzlRWjjtYxg8q3vb2AR/TC/JBYWgSHBXhh2HB8451EvXR2kLkeWgaAy2pW5SaPGE3jxkxEmpGz0N6Oj1Eu6DY0Xrem1KVRFqmepMClocHZl+Mw8/x1O7/tXxl13qnA1E7YR/Shipz72b7emikRP1WG0mgd77m/VaMHy02vgWYPZQYnxNFGcqVJ917leUYK+H3dz3/PcX6CJfc6OxuB2RhKWOiD+zAbszBRkiD7KHNYJ11jq6t
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 16:23:30.0810 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 255c2239-5072-48b9-af03-08dead1e2434
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF00021F6B.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR12MB8544
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
X-Rspamd-Queue-Id: AAA104F9668
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
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,amd.com:email,amd.com:mid,amd.com:dkim]
X-Rspamd-Action: no action

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
 drivers/gpu/tests/gpu_buddy_test.c | 127 ++++++++++++++++++++++++++---
 1 file changed, 117 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/tests/gpu_buddy_test.c b/drivers/gpu/tests/gpu_buddy_test.c
index e0d24a4542b2..5495d0b8ec0c 100644
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
@@ -285,6 +283,114 @@ static void gpu_test_buddy_fragmentation_performance(struct kunit *test)
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
@@ -1398,6 +1504,7 @@ static struct kunit_case gpu_buddy_tests[] = {
 	KUNIT_CASE(gpu_test_buddy_alloc_range),
 	KUNIT_CASE(gpu_test_buddy_alloc_range_bias),
 	KUNIT_CASE_SLOW(gpu_test_buddy_fragmentation_performance),
+	KUNIT_CASE_SLOW(gpu_test_buddy_clear_tracker_performance),
 	KUNIT_CASE(gpu_test_buddy_alloc_exceeds_max_order),
 	KUNIT_CASE(gpu_test_buddy_offset_aligned_allocation),
 	KUNIT_CASE(gpu_test_buddy_subtree_offset_alignment_stress),
-- 
2.34.1

