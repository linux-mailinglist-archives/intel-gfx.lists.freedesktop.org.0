Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMvDELhh82le2AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 16:05:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C124A3D37
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 16:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FBAF10F158;
	Thu, 30 Apr 2026 14:05:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="W+edVzvg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH4PR04CU002.outbound.protection.outlook.com
 (mail-northcentralusazon11013060.outbound.protection.outlook.com
 [40.107.201.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD2A210EDAE;
 Thu, 30 Apr 2026 14:05:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MC7cvElJ0CbRCg5OIo4kLcP/6emoXaoPFNOunIYRtnAEZzqqQcN6BiL9grkYmtBIhnIfi4sN1JWMG87TWOKAzfZN1eqsu+1NfPEnXYUurvAuGnS7sL9NAaXwKUHSHOhHqfkHgouJDZNdP8nV7h01qw9oV3R6tOYLYmcNLB1WpyKrBPvJtHJOYVdZQq/ZACeFS6MI09K7aWfdZPdEzk/oRIEVX+0GH6Kd05Wb3AE4/6+lDhlUEFsEvN+t5UTeXpgzBuO6Dmbfo9XCS63UnrErKnlezTL1Ae/ufwOVYHfZsHuJSkrVQU+Rp04C051tXvJ6OGqTOYqmvpH5rKxJwl+z8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kQ3br3aPyn3iBUIUGso8APQgbnGhzxrdyr7GGq0k1SQ=;
 b=xVOvtd54PwPFp85zwvxL1yVHttMNlRaLnXu3pZ2zD8yHXnF+dX5c+7CcCjKhf1nTde+lWDVGgJw7hD2BcoDRFkWriN6QkVtSWpST34YnHTJ676N6Q1oCvO5YezR+o7y5T02H4dk5Wxwun/zxrkbe77AtZRkDnv7WcYAnC2csIsiNWFK4xYswjL8D4OppwwJbsfGcoTeTyNzbgMbOa88s8zh3V7utJ5+ntzvmu1z0QE2XDV5QGNXN4A2rYciKhQ2RbTF8a6a1XaruI4Q/oRlqSLq+Hot8WYcnqvR9D71WWE/UczDSdjd8UIHhFb/OCFAUsc14YatGjQEUPE5QBIN37Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=intel.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kQ3br3aPyn3iBUIUGso8APQgbnGhzxrdyr7GGq0k1SQ=;
 b=W+edVzvgkTpqoUjmdkymsRtzPku3d9XqXkZIWjEFVsu3gXOgcVfzQcNZqRhHbOBFZQcdW889cQdxGNVeAjHcb907TlhAneBDVZwYtcQ6p33t/OWvr6cq2CO9L2bbwgNDKWNzN5+TSY5B56eyQc4UyWLmMlRLjXQfej/9Fkm3kW4=
Received: from DS2PEPF0000455B.namprd21.prod.outlook.com
 (2603:10b6:f:fc00::518) by DM6PR12MB4169.namprd12.prod.outlook.com
 (2603:10b6:5:215::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.22; Thu, 30 Apr
 2026 14:05:33 +0000
Received: from SN1PEPF0002BA50.namprd03.prod.outlook.com
 (2603:10b6:82c:400:0:1006:0:9) by DS2PEPF0000455B.outlook.office365.com
 (2603:10b6:f:fc00::518) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9891.2 via Frontend Transport; Thu,
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
 15.20.9846.18 via Frontend Transport; Thu, 30 Apr 2026 14:05:32 +0000
Received: from arun-nv33.amd.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Thu, 30 Apr
 2026 09:05:26 -0500
From: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
To: <matthew.auld@intel.com>, <christian.koenig@amd.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
CC: <alexander.deucher@amd.com>, Arunpravin Paneer Selvam
 <Arunpravin.PaneerSelvam@amd.com>
Subject: [PATCH 1/2] gpu/buddy: replace dual-tree/force_merge with decoupled
 clear tracker
Date: Thu, 30 Apr 2026 19:35:13 +0530
Message-ID: <20260430140514.1850417-1-Arunpravin.PaneerSelvam@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb08.amd.com (10.181.42.217) To satlexmb07.amd.com
 (10.181.42.216)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1PEPF0002BA50:EE_|DM6PR12MB4169:EE_
X-MS-Office365-Filtering-Correlation-Id: a4797c2b-9eb8-4936-019b-08dea6c18b50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|82310400026|1800799024|36860700016|376014|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: zo7Z3+N1Wk24DS4fwUEPtesosc62wwmcfeDeE+kZWZXj3xhDGYx95cdn4nIMbV/ykMRtjpQctSYY3q5Vu8UPdK7Tla6IghcxVSuc0qUKbS5TF5B/WdohCMo13VAwj8pJYnNGz+p2n376034P4kPUPVLCZzYMcVDKZKNfJzXc8HmTmKygG1sJVUZkfA/8YXiL6kSPCSc64phpm6SVLHZS7o2GIh8hS3jtPOBUzNCcEGrlgGUZeTlxq614hsv2R+bQhdPig6ah45chbmiEoYFdQ3sCULihH4NmBa2fjJoNjSVQzj9W2b+rb7gTTH+80FKUqq6F28rqQnLyJCDhKbZouEnE7pnwWL67tQ/e0OhtrG1VWLL3BSEyG8jGgqPtT9EKPDgs7Y2nJZPfaCP8nrYnyxbhB069VUZBBXodMRv2RNIUYJPIC07QUM/vD1oWYTWed8pgQxZiCR5SDrOOftPBdwcuYPbBHLgEbQnAqUkS1INeR2wtHhy11k1TAYcnaL0wyiNBtFbwdi2zKE8wga0NG4lghStAAqaKRjgBLVTjwIxgEKqURh7Adl8ux4KoQb5v1obegmgptZUj/z30WtCsqV5vox0SgWJqD6qfN7///r+wh1ylmOp7mvcENtE2zBA4TIAYY/tuVG1yGQN+KXV80oaIDeruF4aBvaB/sBkr8GR2lVUNziTRtNFm4/u+VmR1Ymw8fPQmmD0STNuBHIQT8CMhpw+S654OUFPTjXywWKsNGLXUAb/0lw7o1GSbRxOIKApIsrlZb1UmfSXn8xcS0Q==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(82310400026)(1800799024)(36860700016)(376014)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: XYQYRaKNk6q0hlgr5CcV6bDZUngQm+E9owIYfp8GUjuoaVn/7TM4kI0O9kMd4cnop+fJ5ADY3DbreINkTCUwKdSi4O7q/zoQQNGMAOjrSfKUpQpjL1y5D2stbq9BgFL+eHw7ISbnOhiSllmWvWmmJkM/szpbXeNJQ9ct3OvcKtkL4KITCjuYV9exPzia6eJW82zFpoCDlheazP10NuICt1Pyd9FKej9UdFGHxFzKvJcYA0RMUUFr66t3xH+s3u0WJ/1rh7xbskEH/3Hpz1wJMLOKfn9ZiYJ+wozonYOe7UafAwsaOOblmp6ZZ7ucW8NlBeYpGNzyn8b/prTduczfwIi17LOx0d5rs1aypfwvCG5917kNlrADYF6lwOAa2VGVVQpSJmGKWS4Y6KSL5kWkkLnAR4rDx33ilNuOfJ7pWRxjACD9ctQfeswrAh1FZC4m
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 14:05:32.8764 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a4797c2b-9eb8-4936-019b-08dea6c18b50
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: SN1PEPF0002BA50.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4169
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
X-Rspamd-Queue-Id: 76C124A3D37
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:email,amd.com:dkim,amd.com:mid]

The old design maintained two separate rbtrees per order — clear_tree[]
and dirty_tree[] — with a merge barrier preventing a cleared block from
coalescing with its dirty buddy.  When freed blocks were split across the
two trees, buddy pairs could not merge during free(); contiguous memory
could only be recovered by calling __force_merge() inside the allocation
path.

This causes allocation failures for large contiguous requests even when
sufficient total free memory is available.  Back-to-back workloads (e.g.
a memory-intensive job followed by a large allocation) frequently trigger
this: freed blocks fragment across the two trees after the first job exits,
and the next alloc's __force_merge() must walk every split pair — O(N x
max_order) ops — under the allocator lock, producing latency spikes and
leaving large contiguous ranges unrecoverable until the next alloc attempt.

Replace the dual-tree architecture with a single dirty_tree[order] rbtree
plus a lightweight out-of-band clear tracker (gpu_clear_tracker).  Fully
cleared free blocks float outside dirty_tree[] and are tracked by an
augmented interval rbtree that enables O(log E) search for the largest
cleared extent.  __gpu_buddy_free() merges buddy pairs unconditionally
regardless of clear/dirty state, eliminating __force_merge() and the
cross-tree merge barrier entirely.

This provides:
- Correct contiguous allocation after mixed clear/dirty workloads without
  requiring an explicit force_merge step
- Elimination of O(N x max_order) force_merge cost from the alloc path
- O(log E) clear-extent lookup replacing O(N) tree scans
- Predictable allocation latency under fragmentation
- Reduced code complexity: one tree per order instead of two

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Christian König <christian.koenig@amd.com>
Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
---
 drivers/gpu/buddy.c         | 972 ++++++++++++++++++++++--------------
 drivers/gpu/drm/drm_buddy.c |  12 +-
 include/linux/gpu_buddy.h   |  64 ++-
 3 files changed, 636 insertions(+), 412 deletions(-)

diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
index 52686672e99f5..b4b01989e4ae6 100644
--- a/drivers/gpu/buddy.c
+++ b/drivers/gpu/buddy.c
@@ -34,6 +34,271 @@
 #endif
 
 static struct kmem_cache *slab_blocks;
+static struct kmem_cache *slab_extents;
+
+static u64 clear_extent_size(struct gpu_clear_extent *e)
+{
+	return e->end - e->start;
+}
+
+RB_DECLARE_CALLBACKS_MAX(static, gpu_clear_augment_cb,
+			 struct gpu_clear_extent, rb,
+			 u64, subtree_max_size,
+			 clear_extent_size)
+
+static struct gpu_clear_extent *extent_alloc(void)
+{
+	return kmem_cache_zalloc(slab_extents, GFP_KERNEL);
+}
+
+static void extent_free(struct gpu_clear_extent *e)
+{
+	kmem_cache_free(slab_extents, e);
+}
+
+static struct gpu_clear_extent *
+prev_extent(struct gpu_clear_tracker *ct, u64 offset)
+{
+	struct rb_node *rb = ct->root.rb_node;
+	struct gpu_clear_extent *best = NULL;
+
+	while (rb) {
+		struct gpu_clear_extent *e =
+			rb_entry(rb, struct gpu_clear_extent, rb);
+
+		if (e->start < offset) {
+			best = e;
+			rb = rb->rb_right;
+		} else {
+			rb = rb->rb_left;
+		}
+	}
+	return best;
+}
+
+static struct gpu_clear_extent *
+next_extent(struct gpu_clear_tracker *ct, u64 offset)
+{
+	struct rb_node *rb = ct->root.rb_node;
+	struct gpu_clear_extent *best = NULL;
+
+	while (rb) {
+		struct gpu_clear_extent *e =
+			rb_entry(rb, struct gpu_clear_extent, rb);
+
+		if (e->start >= offset) {
+			best = e;
+			rb = rb->rb_left;
+		} else {
+			rb = rb->rb_right;
+		}
+	}
+	return best;
+}
+
+static void insert_extent(struct gpu_clear_tracker *ct,
+			  struct gpu_clear_extent *ins)
+{
+	struct rb_node **link = &ct->root.rb_node;
+	u64 ins_size = ins->end - ins->start;
+	struct rb_node *parent = NULL;
+
+	while (*link) {
+		struct gpu_clear_extent *e;
+
+		parent = *link;
+		e = rb_entry(parent, struct gpu_clear_extent, rb);
+
+		if (ins->start < e->start)
+			link = &parent->rb_left;
+		else
+			link = &parent->rb_right;
+	}
+
+	ins->subtree_max_size = ins_size;
+	rb_link_node(&ins->rb, parent, link);
+	rb_insert_augmented(&ins->rb, &ct->root, &gpu_clear_augment_cb);
+}
+
+static void remove_extent(struct gpu_clear_tracker *ct,
+			  struct gpu_clear_extent *e)
+{
+	rb_erase_augmented(&e->rb, &ct->root, &gpu_clear_augment_cb);
+	RB_CLEAR_NODE(&e->rb);
+}
+
+static void gpu_clear_tracker_init(struct gpu_clear_tracker *ct)
+{
+	ct->root = RB_ROOT;
+	ct->total_clear = 0;
+}
+
+static void gpu_clear_tracker_fini(struct gpu_clear_tracker *ct)
+{
+	struct rb_node *rb;
+
+	while ((rb = rb_first(&ct->root))) {
+		struct gpu_clear_extent *e =
+			rb_entry(rb, struct gpu_clear_extent, rb);
+		remove_extent(ct, e);
+		extent_free(e);
+	}
+	ct->total_clear = 0;
+}
+
+static void gpu_clear_tracker_mark_clear(struct gpu_clear_tracker *ct,
+					 u64 start, u64 size)
+{
+	struct gpu_clear_extent *left, *right, *e;
+	u64 end = start + size;
+
+	if (WARN_ON_ONCE(!size))
+		return;
+
+	left = prev_extent(ct, start);
+	if (left && left->end != start)
+		left = NULL;
+
+	right = next_extent(ct, end);
+	if (right && right->start != end)
+		right = NULL;
+
+	if (left && right) {
+		remove_extent(ct, left);
+		remove_extent(ct, right);
+		left->end = right->end;
+		extent_free(right);
+		insert_extent(ct, left);
+	} else if (left) {
+		remove_extent(ct, left);
+		left->end = end;
+		insert_extent(ct, left);
+	} else if (right) {
+		remove_extent(ct, right);
+		right->start = start;
+		insert_extent(ct, right);
+	} else {
+		e = extent_alloc();
+		/* OOM: skip insert and total_clear bump. */
+		if (WARN_ON_ONCE(!e))
+			return;
+		e->start = start;
+		e->end   = end;
+		insert_extent(ct, e);
+	}
+
+	ct->total_clear += size;
+}
+
+static void gpu_clear_tracker_mark_dirty(struct gpu_clear_tracker *ct,
+					 u64 start, u64 size)
+{
+	struct gpu_clear_extent *e, *next;
+	u64 end = start + size;
+
+	if (WARN_ON_ONCE(!size))
+		return;
+
+	e = prev_extent(ct, start + 1);
+	if (!e)
+		e = next_extent(ct, start);
+
+	while (e && e->start < end) {
+		u64 e_start = e->start, e_end = e->end;
+		struct rb_node *n = rb_next(&e->rb);
+
+		next = n ? rb_entry(n, struct gpu_clear_extent, rb) : NULL;
+
+		/* prev_extent() may return a non-overlapping extent; skip it. */
+		if (e_end <= start) {
+			e = next;
+			continue;
+		}
+
+		if (e_start >= start && e_end <= end) {
+			ct->total_clear -= (e_end - e_start);
+			remove_extent(ct, e);
+			extent_free(e);
+		} else if (e_start < start && e_end > end) {
+			struct gpu_clear_extent *right = extent_alloc();
+
+			ct->total_clear -= size;
+			remove_extent(ct, e);
+			e->end = start;
+			/* OOM: drop the lost right fragment from total_clear. */
+			if (WARN_ON_ONCE(!right)) {
+				ct->total_clear -= (e_end - end);
+			} else {
+				right->start = end;
+				right->end   = e_end;
+				insert_extent(ct, right);
+			}
+			insert_extent(ct, e);
+		} else if (e_start < start) {
+			ct->total_clear -= (e_end - start);
+			remove_extent(ct, e);
+			e->end = start;
+			insert_extent(ct, e);
+		} else {
+			ct->total_clear -= (end - e_start);
+			remove_extent(ct, e);
+			e->start = end;
+			insert_extent(ct, e);
+		}
+
+		e = next;
+	}
+}
+
+static bool gpu_clear_tracker_is_clear(struct gpu_clear_tracker *ct,
+				       u64 start, u64 size)
+{
+	struct gpu_clear_extent *e = prev_extent(ct, start + 1);
+
+	if (!e)
+		return false;
+	return e->start <= start && e->end >= start + size;
+}
+
+static struct gpu_clear_extent *
+gpu_clear_tracker_find(struct gpu_clear_tracker *ct, u64 min_size)
+{
+	struct rb_node *rb = ct->root.rb_node;
+
+	while (rb) {
+		struct gpu_clear_extent *e =
+			rb_entry(rb, struct gpu_clear_extent, rb);
+		struct rb_node *right = rb->rb_right;
+		struct rb_node *left  = rb->rb_left;
+
+		if (right) {
+			struct gpu_clear_extent *r =
+				rb_entry(right, struct gpu_clear_extent, rb);
+
+			if (r->subtree_max_size >= min_size) {
+				rb = right;
+				continue;
+			}
+		}
+
+		if (e->end - e->start >= min_size)
+			return e;
+
+		if (left) {
+			struct gpu_clear_extent *l =
+				rb_entry(left, struct gpu_clear_extent, rb);
+
+			if (l->subtree_max_size >= min_size) {
+				rb = left;
+				continue;
+			}
+		}
+
+		break;
+	}
+
+	return NULL;
+}
 
 static unsigned int
 gpu_buddy_block_state(struct gpu_buddy_block *block)
@@ -101,13 +366,6 @@ static void gpu_block_free(struct gpu_buddy *mm,
 	kmem_cache_free(slab_blocks, block);
 }
 
-static enum gpu_buddy_free_tree
-get_block_tree(struct gpu_buddy_block *block)
-{
-	return gpu_buddy_block_is_clear(block) ?
-	       GPU_BUDDY_CLEAR_TREE : GPU_BUDDY_DIRTY_TREE;
-}
-
 static struct gpu_buddy_block *
 rbtree_get_free_block(const struct rb_node *node)
 {
@@ -120,14 +378,8 @@ rbtree_last_free_block(struct rb_root *root)
 	return rbtree_get_free_block(rb_last(root));
 }
 
-static bool rbtree_is_empty(struct rb_root *root)
-{
-	return RB_EMPTY_ROOT(root);
-}
-
 static void rbtree_insert(struct gpu_buddy *mm,
-			  struct gpu_buddy_block *block,
-			  enum gpu_buddy_free_tree tree)
+			  struct gpu_buddy_block *block)
 {
 	struct rb_node **link, *parent = NULL;
 	unsigned int block_alignment, order;
@@ -137,7 +389,7 @@ static void rbtree_insert(struct gpu_buddy *mm,
 	order = gpu_buddy_block_order(block);
 	block_alignment = gpu_buddy_block_offset_alignment(block);
 
-	root = &mm->free_trees[tree][order];
+	root = &mm->dirty_tree[order];
 	link = &root->rb_node;
 
 	while (*link) {
@@ -167,26 +419,14 @@ static void rbtree_remove(struct gpu_buddy *mm,
 			  struct gpu_buddy_block *block)
 {
 	unsigned int order = gpu_buddy_block_order(block);
-	enum gpu_buddy_free_tree tree;
-	struct rb_root *root;
 
-	tree = get_block_tree(block);
-	root = &mm->free_trees[tree][order];
+	if (gpu_buddy_block_is_clear(block))
+		return;
 
-	rb_erase_augmented(&block->rb, root, &gpu_buddy_augment_cb);
+	rb_erase_augmented(&block->rb, &mm->dirty_tree[order], &gpu_buddy_augment_cb);
 	RB_CLEAR_NODE(&block->rb);
 }
 
-static void clear_reset(struct gpu_buddy_block *block)
-{
-	block->header &= ~GPU_BUDDY_HEADER_CLEAR;
-}
-
-static void mark_cleared(struct gpu_buddy_block *block)
-{
-	block->header |= GPU_BUDDY_HEADER_CLEAR;
-}
-
 static void mark_allocated(struct gpu_buddy *mm,
 			   struct gpu_buddy_block *block)
 {
@@ -199,13 +439,18 @@ static void mark_allocated(struct gpu_buddy *mm,
 static void mark_free(struct gpu_buddy *mm,
 		      struct gpu_buddy_block *block)
 {
-	enum gpu_buddy_free_tree tree;
-
 	block->header &= ~GPU_BUDDY_HEADER_STATE;
 	block->header |= GPU_BUDDY_FREE;
 
-	tree = get_block_tree(block);
-	rbtree_insert(mm, block, tree);
+	if (gpu_clear_tracker_is_clear(&mm->clear,
+				       gpu_buddy_block_offset(block),
+				       gpu_buddy_block_size(mm, block))) {
+		block->header |= GPU_BUDDY_HEADER_CLEAR;
+		RB_CLEAR_NODE(&block->rb);
+	} else {
+		block->header &= ~GPU_BUDDY_HEADER_CLEAR;
+		rbtree_insert(mm, block);
+	}
 }
 
 static void mark_split(struct gpu_buddy *mm,
@@ -243,36 +488,18 @@ __get_buddy(struct gpu_buddy_block *block)
 }
 
 static unsigned int __gpu_buddy_free(struct gpu_buddy *mm,
-				     struct gpu_buddy_block *block,
-				     bool force_merge)
+				     struct gpu_buddy_block *block)
 {
 	struct gpu_buddy_block *parent;
 	unsigned int order;
 
 	while ((parent = block->parent)) {
-		struct gpu_buddy_block *buddy;
-
-		buddy = __get_buddy(block);
+		struct gpu_buddy_block *buddy = __get_buddy(block);
 
 		if (!gpu_buddy_block_is_free(buddy))
 			break;
 
-		if (!force_merge) {
-			/*
-			 * Check the block and its buddy clear state and exit
-			 * the loop if they both have the dissimilar state.
-			 */
-			if (gpu_buddy_block_is_clear(block) !=
-			    gpu_buddy_block_is_clear(buddy))
-				break;
-
-			if (gpu_buddy_block_is_clear(block))
-				mark_cleared(parent);
-		}
-
 		rbtree_remove(mm, buddy);
-		if (force_merge && gpu_buddy_block_is_clear(buddy))
-			mm->clear_avail -= gpu_buddy_block_size(mm, buddy);
 
 		gpu_block_free(mm, block);
 		gpu_block_free(mm, buddy);
@@ -286,66 +513,15 @@ static unsigned int __gpu_buddy_free(struct gpu_buddy *mm,
 	return order;
 }
 
-static int __force_merge(struct gpu_buddy *mm,
-			 u64 start,
-			 u64 end,
-			 unsigned int min_order)
+static void undo_partial_split(struct gpu_buddy *mm,
+			       struct gpu_buddy_block *block)
 {
-	unsigned int tree, order;
-	int i;
-
-	if (!min_order)
-		return -ENOMEM;
-
-	if (min_order > mm->max_order)
-		return -EINVAL;
-
-	for_each_free_tree(tree) {
-		for (i = min_order - 1; i >= 0; i--) {
-			struct rb_node *iter = rb_last(&mm->free_trees[tree][i]);
+	struct gpu_buddy_block *buddy = __get_buddy(block);
 
-			while (iter) {
-				struct gpu_buddy_block *block, *buddy;
-				u64 block_start, block_end;
-
-				block = rbtree_get_free_block(iter);
-				iter = rb_prev(iter);
-
-				if (!block || !block->parent)
-					continue;
-
-				block_start = gpu_buddy_block_offset(block);
-				block_end = block_start + gpu_buddy_block_size(mm, block) - 1;
-
-				if (!contains(start, end, block_start, block_end))
-					continue;
-
-				buddy = __get_buddy(block);
-				if (!gpu_buddy_block_is_free(buddy))
-					continue;
-
-				gpu_buddy_assert(gpu_buddy_block_is_clear(block) !=
-						 gpu_buddy_block_is_clear(buddy));
-
-				/*
-				 * Advance to the next node when the current node is the buddy,
-				 * as freeing the block will also remove its buddy from the tree.
-				 */
-				if (iter == &buddy->rb)
-					iter = rb_prev(iter);
-
-				rbtree_remove(mm, block);
-				if (gpu_buddy_block_is_clear(block))
-					mm->clear_avail -= gpu_buddy_block_size(mm, block);
-
-				order = __gpu_buddy_free(mm, block, true);
-				if (order >= min_order)
-					return 0;
-			}
-		}
-	}
-
-	return -ENOMEM;
+	if (buddy &&
+	    gpu_buddy_block_is_free(block) &&
+	    gpu_buddy_block_is_free(buddy))
+		__gpu_buddy_free(mm, block);
 }
 
 /**
@@ -362,7 +538,7 @@ static int __force_merge(struct gpu_buddy *mm,
  */
 int gpu_buddy_init(struct gpu_buddy *mm, u64 size, u64 chunk_size)
 {
-	unsigned int i, j, root_count = 0;
+	unsigned int root_count = 0;
 	u64 offset = 0;
 
 	if (size < chunk_size)
@@ -384,22 +560,13 @@ int gpu_buddy_init(struct gpu_buddy *mm, u64 size, u64 chunk_size)
 
 	BUG_ON(mm->max_order > GPU_BUDDY_MAX_ORDER);
 
-	mm->free_trees = kmalloc_array(GPU_BUDDY_MAX_FREE_TREES,
-				       sizeof(*mm->free_trees),
-				       GFP_KERNEL);
-	if (!mm->free_trees)
+	mm->dirty_tree = kcalloc(mm->max_order + 1,
+				 sizeof(struct rb_root),
+				 GFP_KERNEL);
+	if (!mm->dirty_tree)
 		return -ENOMEM;
 
-	for_each_free_tree(i) {
-		mm->free_trees[i] = kmalloc_array(mm->max_order + 1,
-						  sizeof(struct rb_root),
-						  GFP_KERNEL);
-		if (!mm->free_trees[i])
-			goto out_free_tree;
-
-		for (j = 0; j <= mm->max_order; ++j)
-			mm->free_trees[i][j] = RB_ROOT;
-	}
+	gpu_clear_tracker_init(&mm->clear);
 
 	mm->n_roots = hweight64(size);
 
@@ -444,9 +611,8 @@ int gpu_buddy_init(struct gpu_buddy *mm, u64 size, u64 chunk_size)
 		gpu_block_free(mm, mm->roots[root_count]);
 	kfree(mm->roots);
 out_free_tree:
-	while (i--)
-		kfree(mm->free_trees[i]);
-	kfree(mm->free_trees);
+	gpu_clear_tracker_fini(&mm->clear);
+	kfree(mm->dirty_tree);
 	return -ENOMEM;
 }
 EXPORT_SYMBOL(gpu_buddy_init);
@@ -460,7 +626,7 @@ EXPORT_SYMBOL(gpu_buddy_init);
  */
 void gpu_buddy_fini(struct gpu_buddy *mm)
 {
-	u64 root_size, size, start;
+	u64 root_size, size;
 	unsigned int order;
 	int i;
 
@@ -468,22 +634,17 @@ void gpu_buddy_fini(struct gpu_buddy *mm)
 
 	for (i = 0; i < mm->n_roots; ++i) {
 		order = ilog2(size) - ilog2(mm->chunk_size);
-		start = gpu_buddy_block_offset(mm->roots[i]);
-		__force_merge(mm, start, start + size, order);
+		root_size = mm->chunk_size << order;
 
 		gpu_buddy_assert(gpu_buddy_block_is_free(mm->roots[i]));
-
 		gpu_block_free(mm, mm->roots[i]);
-
-		root_size = mm->chunk_size << order;
 		size -= root_size;
 	}
 
 	gpu_buddy_assert(mm->avail == mm->size);
 
-	for_each_free_tree(i)
-		kfree(mm->free_trees[i]);
-	kfree(mm->free_trees);
+	gpu_clear_tracker_fini(&mm->clear);
+	kfree(mm->dirty_tree);
 	kfree(mm->roots);
 }
 EXPORT_SYMBOL(gpu_buddy_fini);
@@ -509,13 +670,6 @@ static int split_block(struct gpu_buddy *mm,
 	}
 
 	mark_split(mm, block);
-
-	if (gpu_buddy_block_is_clear(block)) {
-		mark_cleared(block->left);
-		mark_cleared(block->right);
-		clear_reset(block);
-	}
-
 	mark_free(mm, block->left);
 	mark_free(mm, block->right);
 
@@ -533,41 +687,55 @@ static int split_block(struct gpu_buddy *mm,
  */
 void gpu_buddy_reset_clear(struct gpu_buddy *mm, bool is_clear)
 {
-	enum gpu_buddy_free_tree src_tree, dst_tree;
-	u64 root_size, size, start;
-	unsigned int order;
-	int i;
+	unsigned int i;
 
-	size = mm->size;
-	for (i = 0; i < mm->n_roots; ++i) {
-		order = ilog2(size) - ilog2(mm->chunk_size);
-		start = gpu_buddy_block_offset(mm->roots[i]);
-		__force_merge(mm, start, start + size, order);
+	gpu_clear_tracker_fini(&mm->clear);
+	gpu_clear_tracker_init(&mm->clear);
+
+	if (is_clear) {
+		for (i = 0; i <= mm->max_order; ++i) {
+			struct rb_node *node;
+
+			node = rb_first(&mm->dirty_tree[i]);
+			while (node) {
+				struct gpu_buddy_block *block =
+					rb_entry(node, struct gpu_buddy_block, rb);
+
+				node = rb_next(node);
+				rb_erase_augmented(&block->rb, &mm->dirty_tree[i], &gpu_buddy_augment_cb);
+				RB_CLEAR_NODE(&block->rb);
+				block->header |= GPU_BUDDY_HEADER_CLEAR;
+				gpu_clear_tracker_mark_clear(&mm->clear,
+							     gpu_buddy_block_offset(block),
+							     gpu_buddy_block_size(mm, block));
+			}
+		}
+	} else {
+		LIST_HEAD(dfs);
 
-		root_size = mm->chunk_size << order;
-		size -= root_size;
-	}
+		for (i = 0; i < mm->n_roots; ++i)
+			list_add(&mm->roots[i]->tmp_link, &dfs);
 
-	src_tree = is_clear ? GPU_BUDDY_DIRTY_TREE : GPU_BUDDY_CLEAR_TREE;
-	dst_tree = is_clear ? GPU_BUDDY_CLEAR_TREE : GPU_BUDDY_DIRTY_TREE;
+		while (!list_empty(&dfs)) {
+			struct gpu_buddy_block *block =
+				list_first_entry(&dfs, struct gpu_buddy_block, tmp_link);
 
-	for (i = 0; i <= mm->max_order; ++i) {
-		struct rb_root *root = &mm->free_trees[src_tree][i];
-		struct gpu_buddy_block *block, *tmp;
+			list_del(&block->tmp_link);
 
-		rbtree_postorder_for_each_entry_safe(block, tmp, root, rb) {
-			rbtree_remove(mm, block);
-			if (is_clear) {
-				mark_cleared(block);
-				mm->clear_avail += gpu_buddy_block_size(mm, block);
-			} else {
-				clear_reset(block);
-				mm->clear_avail -= gpu_buddy_block_size(mm, block);
+			if (gpu_buddy_block_is_split(block)) {
+				list_add(&block->right->tmp_link, &dfs);
+				list_add(&block->left->tmp_link, &dfs);
+				continue;
 			}
 
-			rbtree_insert(mm, block, dst_tree);
+			if (gpu_buddy_block_is_free(block) && gpu_buddy_block_is_clear(block)) {
+				block->header &= ~GPU_BUDDY_HEADER_CLEAR;
+				rbtree_insert(mm, block);
+			}
 		}
 	}
+
+	mm->clear_avail = mm->clear.total_clear;
 }
 EXPORT_SYMBOL(gpu_buddy_reset_clear);
 
@@ -580,12 +748,21 @@ EXPORT_SYMBOL(gpu_buddy_reset_clear);
 void gpu_buddy_free_block(struct gpu_buddy *mm,
 			  struct gpu_buddy_block *block)
 {
+	bool was_clear = gpu_buddy_block_is_clear(block);
+	u64 size   = gpu_buddy_block_size(mm, block);
+	u64 offset = gpu_buddy_block_offset(block);
+
 	BUG_ON(!gpu_buddy_block_is_allocated(block));
-	mm->avail += gpu_buddy_block_size(mm, block);
-	if (gpu_buddy_block_is_clear(block))
-		mm->clear_avail += gpu_buddy_block_size(mm, block);
 
-	__gpu_buddy_free(mm, block, false);
+	block->header &= ~GPU_BUDDY_HEADER_CLEAR;
+	mm->avail += size;
+
+	if (was_clear) {
+		gpu_clear_tracker_mark_clear(&mm->clear, offset, size);
+		mm->clear_avail = mm->clear.total_clear;
+	}
+
+	__gpu_buddy_free(mm, block);
 }
 EXPORT_SYMBOL(gpu_buddy_free_block);
 
@@ -599,10 +776,15 @@ static void __gpu_buddy_free_list(struct gpu_buddy *mm,
 	gpu_buddy_assert(!(mark_dirty && mark_clear));
 
 	list_for_each_entry_safe(block, on, objects, link) {
+		/*
+		 * Propagate the caller's clear/dirty intent onto the block header
+		 * before handing it to gpu_buddy_free_block(), which will then
+		 * update the clear tracker accordingly.
+		 */
 		if (mark_clear)
-			mark_cleared(block);
+			block->header |= GPU_BUDDY_HEADER_CLEAR;
 		else if (mark_dirty)
-			clear_reset(block);
+			block->header &= ~GPU_BUDDY_HEADER_CLEAR;
 		gpu_buddy_free_block(mm, block);
 		cond_resched();
 	}
@@ -637,23 +819,14 @@ void gpu_buddy_free_list(struct gpu_buddy *mm,
 }
 EXPORT_SYMBOL(gpu_buddy_free_list);
 
-static bool block_incompatible(struct gpu_buddy_block *block, unsigned int flags)
-{
-	bool needs_clear = flags & GPU_BUDDY_CLEAR_ALLOCATION;
-
-	return needs_clear != gpu_buddy_block_is_clear(block);
-}
-
 static struct gpu_buddy_block *
 __alloc_range_bias(struct gpu_buddy *mm,
 		   u64 start, u64 end,
 		   unsigned int order,
-		   unsigned long flags,
-		   bool fallback)
+		   unsigned long flags)
 {
 	u64 req_size = mm->chunk_size << order;
 	struct gpu_buddy_block *block;
-	struct gpu_buddy_block *buddy;
 	LIST_HEAD(dfs);
 	int err;
 	int i;
@@ -696,9 +869,6 @@ __alloc_range_bias(struct gpu_buddy *mm,
 				continue;
 		}
 
-		if (!fallback && block_incompatible(block, flags))
-			continue;
-
 		if (contains(start, end, block_start, block_end) &&
 		    order == gpu_buddy_block_order(block)) {
 			/*
@@ -716,68 +886,32 @@ __alloc_range_bias(struct gpu_buddy *mm,
 				goto err_undo;
 		}
 
-		list_add(&block->right->tmp_link, &dfs);
 		list_add(&block->left->tmp_link, &dfs);
+		list_add(&block->right->tmp_link, &dfs);
 	} while (1);
 
 	return ERR_PTR(-ENOSPC);
 
 err_undo:
-	/*
-	 * We really don't want to leave around a bunch of split blocks, since
-	 * bigger is better, so make sure we merge everything back before we
-	 * free the allocated blocks.
-	 */
-	buddy = __get_buddy(block);
-	if (buddy &&
-	    (gpu_buddy_block_is_free(block) &&
-	     gpu_buddy_block_is_free(buddy)))
-		__gpu_buddy_free(mm, block, false);
+	undo_partial_split(mm, block);
 	return ERR_PTR(err);
 }
 
-static struct gpu_buddy_block *
-__gpu_buddy_alloc_range_bias(struct gpu_buddy *mm,
-			     u64 start, u64 end,
-			     unsigned int order,
-			     unsigned long flags)
-{
-	struct gpu_buddy_block *block;
-	bool fallback = false;
-
-	block = __alloc_range_bias(mm, start, end, order,
-				   flags, fallback);
-	if (IS_ERR(block))
-		return __alloc_range_bias(mm, start, end, order,
-					  flags, !fallback);
-
-	return block;
-}
-
 static struct gpu_buddy_block *
 get_maxblock(struct gpu_buddy *mm,
 	     unsigned int order,
-	     enum gpu_buddy_free_tree tree)
+	     unsigned long flags)
 {
-	struct gpu_buddy_block *max_block = NULL, *block = NULL;
-	struct rb_root *root;
+	struct gpu_buddy_block *max_block = NULL, *block;
 	unsigned int i;
 
 	for (i = order; i <= mm->max_order; ++i) {
-		root = &mm->free_trees[tree][i];
-		block = rbtree_last_free_block(root);
+		block = rbtree_last_free_block(&mm->dirty_tree[i]);
 		if (!block)
 			continue;
-
-		if (!max_block) {
+		if (!max_block ||
+		    gpu_buddy_block_offset(block) > gpu_buddy_block_offset(max_block))
 			max_block = block;
-			continue;
-		}
-
-		if (gpu_buddy_block_offset(block) >
-		    gpu_buddy_block_offset(max_block)) {
-			max_block = block;
-		}
 	}
 
 	return max_block;
@@ -789,44 +923,23 @@ alloc_from_freetree(struct gpu_buddy *mm,
 		    unsigned long flags)
 {
 	struct gpu_buddy_block *block = NULL;
-	struct rb_root *root;
-	enum gpu_buddy_free_tree tree;
 	unsigned int tmp;
 	int err;
 
-	tree = (flags & GPU_BUDDY_CLEAR_ALLOCATION) ?
-		GPU_BUDDY_CLEAR_TREE : GPU_BUDDY_DIRTY_TREE;
-
 	if (flags & GPU_BUDDY_TOPDOWN_ALLOCATION) {
-		block = get_maxblock(mm, order, tree);
+		block = get_maxblock(mm, order, flags);
 		if (block)
-			/* Store the obtained block order */
 			tmp = gpu_buddy_block_order(block);
 	} else {
 		for (tmp = order; tmp <= mm->max_order; ++tmp) {
-			/* Get RB tree root for this order and tree */
-			root = &mm->free_trees[tree][tmp];
-			block = rbtree_last_free_block(root);
+			block = rbtree_last_free_block(&mm->dirty_tree[tmp]);
 			if (block)
 				break;
 		}
 	}
 
-	if (!block) {
-		/* Try allocating from the other tree */
-		tree = (tree == GPU_BUDDY_CLEAR_TREE) ?
-			GPU_BUDDY_DIRTY_TREE : GPU_BUDDY_CLEAR_TREE;
-
-		for (tmp = order; tmp <= mm->max_order; ++tmp) {
-			root = &mm->free_trees[tree][tmp];
-			block = rbtree_last_free_block(root);
-			if (block)
-				break;
-		}
-
-		if (!block)
-			return ERR_PTR(-ENOSPC);
-	}
+	if (!block)
+		return ERR_PTR(-ENOSPC);
 
 	BUG_ON(!gpu_buddy_block_is_free(block));
 
@@ -835,14 +948,18 @@ alloc_from_freetree(struct gpu_buddy *mm,
 		if (unlikely(err))
 			goto err_undo;
 
-		block = block->right;
+		if (!(flags & GPU_BUDDY_CLEAR_ALLOCATION) &&
+		    gpu_buddy_block_is_clear(block->right))
+			block = block->left;
+		else
+			block = block->right;
 		tmp--;
 	}
 	return block;
 
 err_undo:
 	if (tmp != order)
-		__gpu_buddy_free(mm, block, false);
+		__gpu_buddy_free(mm, block);
 	return ERR_PTR(err);
 }
 
@@ -863,12 +980,11 @@ static bool gpu_buddy_subtree_can_satisfy(struct rb_node *node,
 
 static struct gpu_buddy_block *
 gpu_buddy_find_block_aligned(struct gpu_buddy *mm,
-			     enum gpu_buddy_free_tree tree,
 			     unsigned int order,
 			     unsigned int alignment,
 			     unsigned long flags)
 {
-	struct rb_root *root = &mm->free_trees[tree][order];
+	struct rb_root *root = &mm->dirty_tree[order];
 	struct rb_node *rb = root->rb_node;
 
 	while (rb) {
@@ -906,8 +1022,6 @@ gpu_buddy_offset_aligned_allocation(struct gpu_buddy *mm,
 {
 	struct gpu_buddy_block *block = NULL;
 	unsigned int order, tmp, alignment;
-	struct gpu_buddy_block *buddy;
-	enum gpu_buddy_free_tree tree;
 	unsigned long pages;
 	int err;
 
@@ -915,19 +1029,8 @@ gpu_buddy_offset_aligned_allocation(struct gpu_buddy *mm,
 	pages = size >> ilog2(mm->chunk_size);
 	order = fls(pages) - 1;
 
-	tree = (flags & GPU_BUDDY_CLEAR_ALLOCATION) ?
-		GPU_BUDDY_CLEAR_TREE : GPU_BUDDY_DIRTY_TREE;
-
 	for (tmp = order; tmp <= mm->max_order; ++tmp) {
-		block = gpu_buddy_find_block_aligned(mm, tree, tmp,
-						     alignment, flags);
-		if (!block) {
-			tree = (tree == GPU_BUDDY_CLEAR_TREE) ?
-				GPU_BUDDY_DIRTY_TREE : GPU_BUDDY_CLEAR_TREE;
-			block = gpu_buddy_find_block_aligned(mm, tree, tmp,
-							     alignment, flags);
-		}
-
+		block = gpu_buddy_find_block_aligned(mm, tmp, alignment, flags);
 		if (block)
 			break;
 	}
@@ -954,27 +1057,18 @@ gpu_buddy_offset_aligned_allocation(struct gpu_buddy *mm,
 	return block;
 
 err_undo:
-	/*
-	 * We really don't want to leave around a bunch of split blocks, since
-	 * bigger is better, so make sure we merge everything back before we
-	 * free the allocated blocks.
-	 */
-	buddy = __get_buddy(block);
-	if (buddy &&
-	    (gpu_buddy_block_is_free(block) &&
-	     gpu_buddy_block_is_free(buddy)))
-		__gpu_buddy_free(mm, block, false);
+	undo_partial_split(mm, block);
 	return ERR_PTR(err);
 }
 
 static int __alloc_range(struct gpu_buddy *mm,
 			 struct list_head *dfs,
 			 u64 start, u64 size,
+			 unsigned long flags,
 			 struct list_head *blocks,
 			 u64 *total_allocated_on_err)
 {
 	struct gpu_buddy_block *block;
-	struct gpu_buddy_block *buddy;
 	u64 total_allocated = 0;
 	LIST_HEAD(allocated);
 	u64 end;
@@ -1007,16 +1101,24 @@ static int __alloc_range(struct gpu_buddy *mm,
 
 		if (contains(start, end, block_start, block_end)) {
 			if (gpu_buddy_block_is_free(block)) {
+				u64 bsize = gpu_buddy_block_size(mm, block);
+				u64 boff  = gpu_buddy_block_offset(block);
+
 				mark_allocated(mm, block);
-				total_allocated += gpu_buddy_block_size(mm, block);
-				mm->avail -= gpu_buddy_block_size(mm, block);
-				if (gpu_buddy_block_is_clear(block))
-					mm->clear_avail -= gpu_buddy_block_size(mm, block);
+				total_allocated += bsize;
+				mm->avail -= bsize;
+
+				if (gpu_clear_tracker_is_clear(&mm->clear,
+							       boff, bsize)) {
+					if (flags & GPU_BUDDY_CLEAR_ALLOCATION)
+						block->header |= GPU_BUDDY_HEADER_CLEAR;
+				}
+				gpu_clear_tracker_mark_dirty(&mm->clear,
+							     boff, bsize);
+				mm->clear_avail = mm->clear.total_clear;
+
 				list_add_tail(&block->link, &allocated);
 				continue;
-			} else if (!mm->clear_avail) {
-				err = -ENOSPC;
-				goto err_free;
 			}
 		}
 
@@ -1040,16 +1142,7 @@ static int __alloc_range(struct gpu_buddy *mm,
 	return 0;
 
 err_undo:
-	/*
-	 * We really don't want to leave around a bunch of split blocks, since
-	 * bigger is better, so make sure we merge everything back before we
-	 * free the allocated blocks.
-	 */
-	buddy = __get_buddy(block);
-	if (buddy &&
-	    (gpu_buddy_block_is_free(block) &&
-	     gpu_buddy_block_is_free(buddy)))
-		__gpu_buddy_free(mm, block, false);
+	undo_partial_split(mm, block);
 
 err_free:
 	if (err == -ENOSPC && total_allocated_on_err) {
@@ -1065,6 +1158,7 @@ static int __alloc_range(struct gpu_buddy *mm,
 static int __gpu_buddy_alloc_range(struct gpu_buddy *mm,
 				   u64 start,
 				   u64 size,
+				   unsigned long flags,
 				   u64 *total_allocated_on_err,
 				   struct list_head *blocks)
 {
@@ -1074,20 +1168,23 @@ static int __gpu_buddy_alloc_range(struct gpu_buddy *mm,
 	for (i = 0; i < mm->n_roots; ++i)
 		list_add_tail(&mm->roots[i]->tmp_link, &dfs);
 
-	return __alloc_range(mm, &dfs, start, size,
+	return __alloc_range(mm, &dfs, start, size, flags,
 			     blocks, total_allocated_on_err);
 }
 
 static int __alloc_contig_try_harder(struct gpu_buddy *mm,
 				     u64 size,
 				     u64 min_block_size,
+				     unsigned long flags,
 				     struct list_head *blocks)
 {
 	u64 rhs_offset, lhs_offset, lhs_size, filled;
 	struct gpu_buddy_block *block;
-	unsigned int tree, order;
 	LIST_HEAD(blocks_lhs);
+	struct rb_root *root;
+	struct rb_node *iter;
 	unsigned long pages;
+	unsigned int order;
 	u64 modify_size;
 	int err;
 
@@ -1097,45 +1194,40 @@ static int __alloc_contig_try_harder(struct gpu_buddy *mm,
 	if (order == 0)
 		return -ENOSPC;
 
-	for_each_free_tree(tree) {
-		struct rb_root *root;
-		struct rb_node *iter;
-
-		root = &mm->free_trees[tree][order];
-		if (rbtree_is_empty(root))
-			continue;
+	root = &mm->dirty_tree[order];
+	if (RB_EMPTY_ROOT(root))
+		return -ENOSPC;
 
-		iter = rb_last(root);
-		while (iter) {
-			block = rbtree_get_free_block(iter);
-
-			/* Allocate blocks traversing RHS */
-			rhs_offset = gpu_buddy_block_offset(block);
-			err =  __gpu_buddy_alloc_range(mm, rhs_offset, size,
-						       &filled, blocks);
-			if (!err || err != -ENOSPC)
-				return err;
-
-			lhs_size = max((size - filled), min_block_size);
-			if (!IS_ALIGNED(lhs_size, min_block_size))
-				lhs_size = round_up(lhs_size, min_block_size);
-
-			/* Allocate blocks traversing LHS */
-			lhs_offset = gpu_buddy_block_offset(block) - lhs_size;
-			err =  __gpu_buddy_alloc_range(mm, lhs_offset, lhs_size,
-						       NULL, &blocks_lhs);
-			if (!err) {
-				list_splice(&blocks_lhs, blocks);
-				return 0;
-			} else if (err != -ENOSPC) {
-				gpu_buddy_free_list_internal(mm, blocks);
-				return err;
-			}
-			/* Free blocks for the next iteration */
+	iter = rb_last(root);
+	while (iter) {
+		block = rbtree_get_free_block(iter);
+
+		/* Allocate blocks traversing RHS */
+		rhs_offset = gpu_buddy_block_offset(block);
+		err =  __gpu_buddy_alloc_range(mm, rhs_offset, size,
+					       flags, &filled, blocks);
+		if (!err || err != -ENOSPC)
+			return err;
+
+		lhs_size = max((size - filled), min_block_size);
+		if (!IS_ALIGNED(lhs_size, min_block_size))
+			lhs_size = round_up(lhs_size, min_block_size);
+
+		/* Allocate blocks traversing LHS */
+		lhs_offset = gpu_buddy_block_offset(block) - lhs_size;
+		err =  __gpu_buddy_alloc_range(mm, lhs_offset, lhs_size,
+					       flags, NULL, &blocks_lhs);
+		if (!err) {
+			list_splice(&blocks_lhs, blocks);
+			return 0;
+		} else if (err != -ENOSPC) {
 			gpu_buddy_free_list_internal(mm, blocks);
-
-			iter = rb_prev(iter);
+			return err;
 		}
+		/* Free blocks for the next iteration */
+		gpu_buddy_free_list_internal(mm, blocks);
+
+		iter = rb_prev(iter);
 	}
 
 	return -ENOSPC;
@@ -1169,6 +1261,7 @@ int gpu_buddy_block_trim(struct gpu_buddy *mm,
 	struct gpu_buddy_block *block;
 	u64 block_start, block_end;
 	LIST_HEAD(dfs);
+	bool was_clear;
 	u64 new_start;
 	int err;
 
@@ -1209,22 +1302,38 @@ int gpu_buddy_block_trim(struct gpu_buddy *mm,
 	}
 
 	list_del(&block->link);
+
+	was_clear = gpu_buddy_block_is_clear(block);
+	block->header &= ~GPU_BUDDY_HEADER_CLEAR;
+
+	if (was_clear) {
+		gpu_clear_tracker_mark_clear(&mm->clear,
+					     gpu_buddy_block_offset(block),
+					     gpu_buddy_block_size(mm, block));
+		mm->clear_avail = mm->clear.total_clear;
+	}
+
 	mark_free(mm, block);
 	mm->avail += gpu_buddy_block_size(mm, block);
-	if (gpu_buddy_block_is_clear(block))
-		mm->clear_avail += gpu_buddy_block_size(mm, block);
 
 	/* Prevent recursively freeing this node */
 	parent = block->parent;
 	block->parent = NULL;
 
 	list_add(&block->tmp_link, &dfs);
-	err =  __alloc_range(mm, &dfs, new_start, new_size, blocks, NULL);
+	err =  __alloc_range(mm, &dfs, new_start, new_size,
+			     was_clear ? GPU_BUDDY_CLEAR_ALLOCATION : 0,
+			     blocks, NULL);
 	if (err) {
 		mark_allocated(mm, block);
 		mm->avail -= gpu_buddy_block_size(mm, block);
-		if (gpu_buddy_block_is_clear(block))
-			mm->clear_avail -= gpu_buddy_block_size(mm, block);
+		if (was_clear) {
+			gpu_clear_tracker_mark_dirty(&mm->clear,
+						     gpu_buddy_block_offset(block),
+						     gpu_buddy_block_size(mm, block));
+			mm->clear_avail = mm->clear.total_clear;
+			block->header |= GPU_BUDDY_HEADER_CLEAR;
+		}
 		list_add(&block->link, blocks);
 	}
 
@@ -1241,9 +1350,7 @@ __gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
 			 unsigned long flags)
 {
 	if (flags & GPU_BUDDY_RANGE_ALLOCATION)
-		/* Allocate traversing within the range */
-		return  __gpu_buddy_alloc_range_bias(mm, start, end,
-						     order, flags);
+		return __alloc_range_bias(mm, start, end, order, flags);
 	else if (size < min_block_size)
 		/* Allocate from an offset-aligned region without size rounding */
 		return gpu_buddy_offset_aligned_allocation(mm, size,
@@ -1254,6 +1361,21 @@ __gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
 		return alloc_from_freetree(mm, order, flags);
 }
 
+static bool clear_steer_window(struct gpu_buddy *mm, u64 min_sz,
+			       u64 *start, u64 *end, unsigned long *flags)
+{
+	struct gpu_clear_extent *ext =
+		gpu_clear_tracker_find(&mm->clear, min_sz);
+
+	if (!ext)
+		return false;
+
+	*start  = ext->start;
+	*end    = ext->end;
+	*flags |= GPU_BUDDY_RANGE_ALLOCATION;
+	return true;
+}
+
 /**
  * gpu_buddy_alloc_blocks - allocate power-of-two blocks
  *
@@ -1280,11 +1402,14 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
 			   struct list_head *blocks,
 			   unsigned long flags)
 {
+	unsigned int min_order, order, initial_order;
+	bool range_requested, per_iter_steer = false;
 	struct gpu_buddy_block *block = NULL;
 	u64 original_size, original_min_size;
-	unsigned int min_order, order;
+	unsigned long pages, initial_pages;
+	bool clear_steered = false;
+	u64 base_start, base_end;
 	LIST_HEAD(allocated);
-	unsigned long pages;
 	int err;
 
 	if (size < mm->chunk_size)
@@ -1310,7 +1435,7 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
 		if (!IS_ALIGNED(start | end, min_block_size))
 			return -EINVAL;
 
-		return __gpu_buddy_alloc_range(mm, start, size, NULL, blocks);
+		return __gpu_buddy_alloc_range(mm, start, size, flags, NULL, blocks);
 	}
 
 	original_size = size;
@@ -1332,17 +1457,50 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
 	order = fls(pages) - 1;
 	min_order = ilog2(min_block_size) - ilog2(mm->chunk_size);
 
-	if (order > mm->max_order || size > mm->size) {
+	if (order > mm->max_order) {
 		if ((flags & GPU_BUDDY_CONTIGUOUS_ALLOCATION) &&
 		    !(flags & GPU_BUDDY_RANGE_ALLOCATION))
 			return __alloc_contig_try_harder(mm, original_size,
-							 original_min_size, blocks);
+							 original_min_size, flags, blocks);
 
 		return -EINVAL;
 	}
 
+	initial_pages = pages;
+	initial_order = order;
+
+	base_start   = start;
+	base_end     = end;
+	range_requested = !!(flags & GPU_BUDDY_RANGE_ALLOCATION);
+
+	/*
+	 * Pick a cleared extent for this request.  If one extent fits the
+	 * whole size, lock it as the window; otherwise re-query per block.
+	 * Falls back to dirty blocks when no cleared memory is available.
+	 */
+	if ((flags & GPU_BUDDY_CLEAR_ALLOCATION) && !range_requested) {
+		if (clear_steer_window(mm, size, &start, &end, &flags)) {
+			/* Fast path: single extent covers full request */
+			clear_steered = true;
+		} else if (mm->clear_avail) {
+			/* Fragmented path: steer per block in the outer loop */
+			per_iter_steer = true;
+			clear_steered  = true;
+		}
+	}
+
+retry_dirty:
 	do {
 		order = min(order, (unsigned int)fls(pages) - 1);
+
+		if (per_iter_steer &&
+		    !clear_steer_window(mm, mm->chunk_size << min_order,
+					&start, &end, &flags)) {
+			per_iter_steer = false;
+			flags &= ~(GPU_BUDDY_CLEAR_ALLOCATION | GPU_BUDDY_RANGE_ALLOCATION);
+			start = base_start;
+			end   = base_end;
+		}
 		BUG_ON(order > mm->max_order);
 		/*
 		 * Regular allocations must not allocate blocks smaller than min_block_size.
@@ -1351,8 +1509,6 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
 		BUG_ON(size >= min_block_size && order < min_order);
 
 		do {
-			unsigned int fallback_order;
-
 			block = __gpu_buddy_alloc_blocks(mm, start,
 							 end,
 							 size,
@@ -1362,30 +1518,11 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
 			if (!IS_ERR(block))
 				break;
 
-			if (size < min_block_size) {
-				fallback_order = order;
-			} else if (order == min_order) {
-				fallback_order = min_order;
-			} else {
+			if (size >= min_block_size && order > min_order) {
 				order--;
 				continue;
 			}
 
-			/* Try allocation through force merge method */
-			if (mm->clear_avail &&
-			    !__force_merge(mm, start, end, fallback_order)) {
-				block = __gpu_buddy_alloc_blocks(mm, start,
-								 end,
-								 size,
-								 min_block_size,
-								 fallback_order,
-								 flags);
-				if (!IS_ERR(block)) {
-					order = fallback_order;
-					break;
-				}
-			}
-
 			/*
 			 * Try contiguous block allocation through
 			 * try harder method.
@@ -1395,6 +1532,7 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
 				return __alloc_contig_try_harder(mm,
 								 original_size,
 								 original_min_size,
+								 flags,
 								 blocks);
 			err = -ENOSPC;
 			goto err_free;
@@ -1402,8 +1540,23 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
 
 		mark_allocated(mm, block);
 		mm->avail -= gpu_buddy_block_size(mm, block);
-		if (gpu_buddy_block_is_clear(block))
-			mm->clear_avail -= gpu_buddy_block_size(mm, block);
+
+		/*
+		 * Tag the block CLEAR only when the caller asked for cleared
+		 * memory and the whole block is cleared.  The tracker is
+		 * always updated to drop any cleared sub-ranges this block
+		 * just consumed.
+		 */
+		if (flags & GPU_BUDDY_CLEAR_ALLOCATION &&
+		    gpu_clear_tracker_is_clear(&mm->clear,
+					       gpu_buddy_block_offset(block),
+					       gpu_buddy_block_size(mm, block)))
+			block->header |= GPU_BUDDY_HEADER_CLEAR;
+
+		gpu_clear_tracker_mark_dirty(&mm->clear,
+					     gpu_buddy_block_offset(block),
+					     gpu_buddy_block_size(mm, block));
+		mm->clear_avail = mm->clear.total_clear;
 		kmemleak_update_trace(block);
 		list_add_tail(&block->link, &allocated);
 
@@ -1445,6 +1598,16 @@ int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
 
 err_free:
 	gpu_buddy_free_list_internal(mm, &allocated);
+	if (err == -ENOSPC && clear_steered) {
+		clear_steered  = false;
+		per_iter_steer = false;
+		start = base_start;
+		end   = base_end;
+		flags &= ~(GPU_BUDDY_CLEAR_ALLOCATION | GPU_BUDDY_RANGE_ALLOCATION);
+		pages = initial_pages;
+		order = initial_order;
+		goto retry_dirty;
+	}
 	return err;
 }
 EXPORT_SYMBOL(gpu_buddy_alloc_blocks);
@@ -1473,26 +1636,52 @@ EXPORT_SYMBOL(gpu_buddy_block_print);
  */
 void gpu_buddy_print(struct gpu_buddy *mm)
 {
+	u64 *clear_count;
 	int order;
+	unsigned int i;
 
 	pr_info("chunk_size: %lluKiB, total: %lluMiB, free: %lluMiB, clear_free: %lluMiB\n",
 		mm->chunk_size >> 10, mm->size >> 20, mm->avail >> 20, mm->clear_avail >> 20);
 
+	clear_count = kcalloc(mm->max_order + 1, sizeof(*clear_count), GFP_KERNEL);
+
+	if (clear_count) {
+		LIST_HEAD(dfs);
+
+		for (i = 0; i < mm->n_roots; i++)
+			list_add_tail(&mm->roots[i]->tmp_link, &dfs);
+
+		while (!list_empty(&dfs)) {
+			struct gpu_buddy_block *block =
+				list_first_entry(&dfs, struct gpu_buddy_block, tmp_link);
+
+			list_del(&block->tmp_link);
+
+			if (gpu_buddy_block_is_split(block)) {
+				list_add(&block->right->tmp_link, &dfs);
+				list_add(&block->left->tmp_link, &dfs);
+			} else if (gpu_buddy_block_is_free(block) &&
+				   gpu_buddy_block_is_clear(block)) {
+				clear_count[gpu_buddy_block_order(block)]++;
+			}
+		}
+	}
+
 	for (order = mm->max_order; order >= 0; order--) {
 		struct gpu_buddy_block *block, *tmp;
 		struct rb_root *root;
 		u64 count = 0, free;
-		unsigned int tree;
 
-		for_each_free_tree(tree) {
-			root = &mm->free_trees[tree][order];
+		root = &mm->dirty_tree[order];
 
-			rbtree_postorder_for_each_entry_safe(block, tmp, root, rb) {
-				BUG_ON(!gpu_buddy_block_is_free(block));
-				count++;
-			}
+		rbtree_postorder_for_each_entry_safe(block, tmp, root, rb) {
+			BUG_ON(!gpu_buddy_block_is_free(block));
+			count++;
 		}
 
+		if (clear_count)
+			count += clear_count[order];
+
 		free = count * (mm->chunk_size << order);
 		if (free < SZ_1M)
 			pr_info("order-%2d free: %8llu KiB, blocks: %llu\n",
@@ -1501,11 +1690,14 @@ void gpu_buddy_print(struct gpu_buddy *mm)
 			pr_info("order-%2d free: %8llu MiB, blocks: %llu\n",
 				order, free >> 20, count);
 	}
+
+	kfree(clear_count);
 }
 EXPORT_SYMBOL(gpu_buddy_print);
 
 static void gpu_buddy_module_exit(void)
 {
+	kmem_cache_destroy(slab_extents);
 	kmem_cache_destroy(slab_blocks);
 }
 
@@ -1515,6 +1707,12 @@ static int __init gpu_buddy_module_init(void)
 	if (!slab_blocks)
 		return -ENOMEM;
 
+	slab_extents = KMEM_CACHE(gpu_clear_extent, 0);
+	if (!slab_extents) {
+		kmem_cache_destroy(slab_blocks);
+		return -ENOMEM;
+	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/drm_buddy.c b/drivers/gpu/drm/drm_buddy.c
index 841f3de5f307a..67ad6ba8bd7b3 100644
--- a/drivers/gpu/drm/drm_buddy.c
+++ b/drivers/gpu/drm/drm_buddy.c
@@ -49,15 +49,11 @@ void drm_buddy_print(struct gpu_buddy *mm, struct drm_printer *p)
 		struct gpu_buddy_block *block, *tmp;
 		struct rb_root *root;
 		u64 count = 0, free;
-		unsigned int tree;
 
-		for_each_free_tree(tree) {
-			root = &mm->free_trees[tree][order];
-
-			rbtree_postorder_for_each_entry_safe(block, tmp, root, rb) {
-				BUG_ON(!gpu_buddy_block_is_free(block));
-				count++;
-			}
+		root = &mm->dirty_tree[order];
+		rbtree_postorder_for_each_entry_safe(block, tmp, root, rb) {
+			BUG_ON(!gpu_buddy_block_is_free(block));
+			count++;
 		}
 
 		drm_printf(p, "order-%2d ", order);
diff --git a/include/linux/gpu_buddy.h b/include/linux/gpu_buddy.h
index 5fa917ba5450b..510dd735d2843 100644
--- a/include/linux/gpu_buddy.h
+++ b/include/linux/gpu_buddy.h
@@ -67,15 +67,6 @@
  */
 #define GPU_BUDDY_TRIM_DISABLE			BIT(5)
 
-enum gpu_buddy_free_tree {
-	GPU_BUDDY_CLEAR_TREE = 0,
-	GPU_BUDDY_DIRTY_TREE,
-	GPU_BUDDY_MAX_FREE_TREES,
-};
-
-#define for_each_free_tree(tree) \
-	for ((tree) = 0; (tree) < GPU_BUDDY_MAX_FREE_TREES; (tree)++)
-
 /**
  * struct gpu_buddy_block - Block within a buddy allocator
  *
@@ -104,6 +95,14 @@ struct gpu_buddy_block {
 #define   GPU_BUDDY_FREE	   (2 << 10)
 #define   GPU_BUDDY_SPLIT	   (3 << 10)
 #define GPU_BUDDY_HEADER_CLEAR  GENMASK_ULL(9, 9)
+/*
+ * GPU_BUDDY_HEADER_CLEAR has two roles:
+ *  - FREE state:      set when the block's full range is cleared (tracker
+ *                     confirmed).  Cleared free blocks float in the buddy
+ *                     tree and are NOT inserted into dirty_tree[].
+ *  - ALLOCATED state: set when the block was served from cleared memory,
+ *                     informing the caller that no GPU clear pass is needed.
+ */
 /* Free to be used, if needed in the future */
 #define GPU_BUDDY_HEADER_UNUSED GENMASK_ULL(8, 6)
 #define GPU_BUDDY_HEADER_ORDER  GENMASK_ULL(5, 0)
@@ -135,6 +134,38 @@ struct gpu_buddy_block {
 /* Order-zero must be at least SZ_4K */
 #define GPU_BUDDY_MAX_ORDER (63 - 12)
 
+/**
+ * struct gpu_clear_extent - a contiguous cleared (zeroed) address range
+ *
+ * Tracks a single contiguous address range whose memory content is known
+ * to be zeroed.  Extents are non-overlapping and stored in an augmented
+ * red-black tree sorted by @start.  The augmented value @subtree_max_size
+ * allows O(log N) search for an extent of at least a given size.
+ */
+struct gpu_clear_extent {
+/* private: */
+	struct rb_node	rb;
+	u64		start;
+	u64		end;
+	u64		subtree_max_size;
+};
+
+/**
+ * struct gpu_clear_tracker - tracks cleared (zeroed) address intervals
+ *
+ * Maintains a set of non-overlapping cleared extents as an augmented
+ * red-black tree.  The tracker is embedded inside struct gpu_buddy and
+ * replaces the former dual (clear/dirty) free-tree scheme.
+ *
+ * @total_clear: Total bytes of cleared memory currently tracked.
+ */
+struct gpu_clear_tracker {
+/* private: */
+	struct rb_root	root;
+/* public: */
+	u64		total_clear;
+};
+
 /**
  * struct gpu_buddy - GPU binary buddy allocator
  *
@@ -158,20 +189,19 @@ struct gpu_buddy_block {
 struct gpu_buddy {
 /* private: */
 	/*
-	 * Array of red-black trees for free block management.
-	 * Indexed as free_trees[clear/dirty][order] where:
-	 * - Index 0 (GPU_BUDDY_CLEAR_TREE): blocks with zeroed content
-	 * - Index 1 (GPU_BUDDY_DIRTY_TREE): blocks with unknown content
-	 * Each tree holds free blocks of the corresponding order.
+	 * One RB-tree per order containing only dirty/mixed free blocks.
+	 * Cleared free blocks are NOT inserted here; they float in the buddy
+	 * tree and are located exclusively via the @clear tracker.
 	 */
-	struct rb_root **free_trees;
+	struct rb_root *dirty_tree;
+
 	/*
 	 * Array of root blocks representing the top-level blocks of the
 	 * binary tree(s). Multiple roots exist when the total size is not
-	 * a power of two, with each root being the largest power-of-two
-	 * that fits in the remaining space.
+	 * a power of two.
 	 */
 	struct gpu_buddy_block **roots;
+	struct gpu_clear_tracker clear;
 /* public: */
 	unsigned int n_roots;
 	unsigned int max_order;

base-commit: d37690b5e02418a2365548300628ef3895a24ed2
-- 
2.34.1

