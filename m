Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB3C49D4E9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 23:07:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6A0710E946;
	Wed, 26 Jan 2022 22:07:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2072.outbound.protection.outlook.com [40.107.244.72])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A31210E1BE;
 Wed, 26 Jan 2022 22:07:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XeT8Hma3KeAi95BdAwWmif8Vlmn3co3PtNDHbn0gb4SGex8w5WBk/fgsNB4Lt9/ry7ee3J8z6V5iew0ZWJxHoT+O0BXeJvq6lsmfoqZ8JvWgWbBEn2fTvma81QCV4YzCSHRV9IuzYurHkbNclllGjrtopXJbcW4zyno0YpwmLWFNWeOYKYxhYfq7PQUvtzzA2TFiBHM6n9VQ7J0oOS9Mz9z1jCUw4sXLD3nV3/ENq3rGknViawnFpohGvPq6S7g599i4rCfoyno6SMhOsQBf910C8tfx5xWxKajWEsPVLGl5+uIZLcT+05Z7xhOEG99jzZPBDmSQm9xWD1QCgAw19A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/dD8dM/Ts6xVU/NIObFR3mBbb1c8OJvMLBdGnmxUe9A=;
 b=lZKYzTprVVoeMars10Nv047GK7/UJ/eoitzd4O4NConibMIQ4Xjn2xwo48Rn4jrFu7ZOALVlLSvHca38ggN2rFiDj5y8Z8lfB1DE/B3YrGK219lb5ecaJzCx7HJNsWayQcCaY7WSwd8dyAHKg9c1Afgb1JAUEvWosAloaiEf4UVM26VCOZlfVk9TJC5FfJvSXLxWtW9Y0hKwQIejJ7/+KSn83Mt5zUG9bHGCWC2cHiVhEdDUGps4S3tqnTeBkJ6c0k7JHMy2Qf7z+/Mi1I/OQsR5VFknn5JYIa1Z9kh1TB/VBdhN0yS5vMNTrK8W/b1hS1o8vKM+mtZtagKQaXs8sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/dD8dM/Ts6xVU/NIObFR3mBbb1c8OJvMLBdGnmxUe9A=;
 b=hLgcQpm3gcb+1DHRqDadGlpqvf+JY73p5hbIjX7BrZoGGzLkv6i+J5GAM5F+c7VvEX+qCVdr1FjMu3xvj7j2Mep7XMSwDynKdl3eEB/LOaNblPAmUMqZHrOrPM5T6dtZIk9d1XBSdb1er87/v4hLEUSYVV8mOTx4eslkKfvp9+0=
Received: from DM3PR03CA0024.namprd03.prod.outlook.com (2603:10b6:0:50::34) by
 SN1PR12MB2350.namprd12.prod.outlook.com (2603:10b6:802:24::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4930.15; Wed, 26 Jan 2022 22:07:33 +0000
Received: from DM6NAM11FT009.eop-nam11.prod.protection.outlook.com
 (2603:10b6:0:50:cafe::30) by DM3PR03CA0024.outlook.office365.com
 (2603:10b6:0:50::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15 via Frontend
 Transport; Wed, 26 Jan 2022 22:07:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com;
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 DM6NAM11FT009.mail.protection.outlook.com (10.13.173.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4930.15 via Frontend Transport; Wed, 26 Jan 2022 22:07:33 +0000
Received: from rtg-amd.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Wed, 26 Jan
 2022 16:07:29 -0600
From: Arunpravin <Arunpravin.PaneerSelvam@amd.com>
To: <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <amd-gfx@lists.freedesktop.org>
Date: Thu, 27 Jan 2022 03:36:07 +0530
Message-ID: <20220126220611.3663-1-Arunpravin.PaneerSelvam@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ae11adb8-f81a-4408-d198-08d9e11840df
X-MS-TrafficTypeDiagnostic: SN1PR12MB2350:EE_
X-Microsoft-Antispam-PRVS: <SN1PR12MB23506022016C610E3CF54FB7E4209@SN1PR12MB2350.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:116;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z25w1fF2lnU80TBJ327iz70KJ9qJEyJdK98ktiLlJBvixoaXlvQBpSiu1GFhpIIOaNrAy8cJf7Mj82sfhzd5aYSVSkK+LBEfGJ1ntm3J2Dgk1pQN/vtbmtpPwWmx1wSqWNE5TdrIWZ/lAw9xKzzYW+xlQXjfk8SW7JcnbPC7ySB26A6pzlavDV7/Jhl2GlLmoswuCfRlIooYKc35RmOJuz4phTh46ZqLEGujklHp+QD8LxlWmU9C65X5I7HD5XWlKzk11HJOfbQA7GZ2Bl7V/JF5Pmpdj1waw/vz7uErFcen6W7rq4KNLOuXYNmRUKjslXUFskULs0zeC0WbZRf+uz1tNTfoEzKgI/TccrsPAqDPCXdpwTuJVSXeUH5dY2F4+sPCIXQDg/DIQZrfymsy2lFkB58w0o4ACnymHXEH5a4PG0L+4aaCaCVLXpyTRJhEEGnJYVmQpvDMGOLZIBriLQ6E2c1LJgT0AJWWCYosZ6uhBtoiPmCR3Bkp50SiNhwnmKNXUGdrqouI80mrUcr5caJla6xOROGk0abjTC3rUe6Dh8+DzzFT5R7ukbnJTM0aMCwcrGGuLOgGHTaqE9t6gFxZM8Pr1Y2EASNuowQqtDCvWQuU+ka0eP4erAONlho4+MEIXsP2B0WTUnwidd6A74xILCFVS2AECfmd889lh+EWUjgkwpuwtn1wxG7xTV5aXseEkBWOOzC0cBlJldvMSg==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230001)(4636009)(36840700001)(40470700004)(46966006)(47076005)(1076003)(2616005)(508600001)(4326008)(82310400004)(6666004)(426003)(186003)(36860700001)(7696005)(16526019)(83380400001)(36756003)(336012)(86362001)(40460700003)(26005)(8676002)(356005)(5660300002)(54906003)(110136005)(316002)(30864003)(8936002)(70206006)(70586007)(2906002)(81166007)(36900700001)(20210929001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2022 22:07:33.2573 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ae11adb8-f81a-4408-d198-08d9e11840df
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT009.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR12MB2350
Subject: [Intel-gfx] [PATCH v10 1/5] drm: improve drm_buddy_alloc function
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
Cc: Arunpravin <Arunpravin.PaneerSelvam@amd.com>, matthew.auld@intel.com,
 tzimmermann@suse.de, alexander.deucher@amd.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

- Make drm_buddy_alloc a single function to handle
  range allocation and non-range allocation demands

- Implemented a new function alloc_range() which allocates
  the requested power-of-two block comply with range limitations

- Moved order computation and memory alignment logic from
  i915 driver to drm buddy

v2:
  merged below changes to keep the build unbroken
   - drm_buddy_alloc_range() becomes obsolete and may be removed
   - enable ttm range allocation (fpfn / lpfn) support in i915 driver
   - apply enhanced drm_buddy_alloc() function to i915 driver

v3(Matthew Auld):
  - Fix alignment issues and remove unnecessary list_empty check
  - add more validation checks for input arguments
  - make alloc_range() block allocations as bottom-up
  - optimize order computation logic
  - replace uint64_t with u64, which is preferred in the kernel

v4(Matthew Auld):
  - keep drm_buddy_alloc_range() function implementation for generic
    actual range allocations
  - keep alloc_range() implementation for end bias allocations

v5(Matthew Auld):
  - modify drm_buddy_alloc() passing argument place->lpfn to lpfn
    as place->lpfn will currently always be zero for i915

v6(Matthew Auld):
  - fixup potential uaf - If we are unlucky and can't allocate
    enough memory when splitting blocks, where we temporarily
    end up with the given block and its buddy on the respective
    free list, then we need to ensure we delete both blocks,
    and no just the buddy, before potentially freeing them

  - fix warnings reported by kernel test robot <lkp@intel.com>

v7(Matthew Auld):
  - revert fixup potential uaf
  - keep __alloc_range() add node to the list logic same as
    drm_buddy_alloc_blocks() by having a temporary list variable
  - at drm_buddy_alloc_blocks() keep i915 range_overflows macro
    and add a new check for end variable

Signed-off-by: Arunpravin <Arunpravin.PaneerSelvam@amd.com>
---
 drivers/gpu/drm/drm_buddy.c                   | 315 +++++++++++++-----
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c |  67 ++--
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.h |   2 +
 include/drm/drm_buddy.h                       |  13 +-
 4 files changed, 280 insertions(+), 117 deletions(-)

diff --git a/drivers/gpu/drm/drm_buddy.c b/drivers/gpu/drm/drm_buddy.c
index d60878bc9c20..cfc160a1ef1a 100644
--- a/drivers/gpu/drm/drm_buddy.c
+++ b/drivers/gpu/drm/drm_buddy.c
@@ -282,23 +282,97 @@ void drm_buddy_free_list(struct drm_buddy *mm, struct list_head *objects)
 }
 EXPORT_SYMBOL(drm_buddy_free_list);
 
-/**
- * drm_buddy_alloc_blocks - allocate power-of-two blocks
- *
- * @mm: DRM buddy manager to allocate from
- * @order: size of the allocation
- *
- * The order value here translates to:
- *
- * 0 = 2^0 * mm->chunk_size
- * 1 = 2^1 * mm->chunk_size
- * 2 = 2^2 * mm->chunk_size
- *
- * Returns:
- * allocated ptr to the &drm_buddy_block on success
- */
-struct drm_buddy_block *
-drm_buddy_alloc_blocks(struct drm_buddy *mm, unsigned int order)
+static inline bool overlaps(u64 s1, u64 e1, u64 s2, u64 e2)
+{
+	return s1 <= e2 && e1 >= s2;
+}
+
+static inline bool contains(u64 s1, u64 e1, u64 s2, u64 e2)
+{
+	return s1 <= s2 && e1 >= e2;
+}
+
+static struct drm_buddy_block *
+alloc_range_bias(struct drm_buddy *mm,
+		 u64 start, u64 end,
+		 unsigned int order)
+{
+	struct drm_buddy_block *block;
+	struct drm_buddy_block *buddy;
+	LIST_HEAD(dfs);
+	int err;
+	int i;
+
+	end = end - 1;
+
+	for (i = 0; i < mm->n_roots; ++i)
+		list_add_tail(&mm->roots[i]->tmp_link, &dfs);
+
+	do {
+		u64 block_start;
+		u64 block_end;
+
+		block = list_first_entry_or_null(&dfs,
+						 struct drm_buddy_block,
+						 tmp_link);
+		if (!block)
+			break;
+
+		list_del(&block->tmp_link);
+
+		if (drm_buddy_block_order(block) < order)
+			continue;
+
+		block_start = drm_buddy_block_offset(block);
+		block_end = block_start + drm_buddy_block_size(mm, block) - 1;
+
+		if (!overlaps(start, end, block_start, block_end))
+			continue;
+
+		if (drm_buddy_block_is_allocated(block))
+			continue;
+
+		if (contains(start, end, block_start, block_end) &&
+		    order == drm_buddy_block_order(block)) {
+			/*
+			 * Find the free block within the range.
+			 */
+			if (drm_buddy_block_is_free(block))
+				return block;
+
+			continue;
+		}
+
+		if (!drm_buddy_block_is_split(block)) {
+			err = split_block(mm, block);
+			if (unlikely(err))
+				goto err_undo;
+		}
+
+		list_add(&block->right->tmp_link, &dfs);
+		list_add(&block->left->tmp_link, &dfs);
+	} while (1);
+
+	return ERR_PTR(-ENOSPC);
+
+err_undo:
+	/*
+	 * We really don't want to leave around a bunch of split blocks, since
+	 * bigger is better, so make sure we merge everything back before we
+	 * free the allocated blocks.
+	 */
+	buddy = get_buddy(block);
+	if (buddy &&
+	    (drm_buddy_block_is_free(block) &&
+	     drm_buddy_block_is_free(buddy)))
+		__drm_buddy_free(mm, block);
+	return ERR_PTR(err);
+}
+
+static struct drm_buddy_block *
+alloc_from_freelist(struct drm_buddy *mm,
+		    unsigned int order,
+		    unsigned long flags)
 {
 	struct drm_buddy_block *block = NULL;
 	unsigned int i;
@@ -320,78 +394,29 @@ drm_buddy_alloc_blocks(struct drm_buddy *mm, unsigned int order)
 	while (i != order) {
 		err = split_block(mm, block);
 		if (unlikely(err))
-			goto out_free;
+			goto err_undo;
 
-		/* Go low */
-		block = block->left;
+		block = block->right;
 		i--;
 	}
-
-	mark_allocated(block);
-	mm->avail -= drm_buddy_block_size(mm, block);
-	kmemleak_update_trace(block);
 	return block;
 
-out_free:
+err_undo:
 	if (i != order)
 		__drm_buddy_free(mm, block);
 	return ERR_PTR(err);
 }
-EXPORT_SYMBOL(drm_buddy_alloc_blocks);
-
-static inline bool overlaps(u64 s1, u64 e1, u64 s2, u64 e2)
-{
-	return s1 <= e2 && e1 >= s2;
-}
 
-static inline bool contains(u64 s1, u64 e1, u64 s2, u64 e2)
-{
-	return s1 <= s2 && e1 >= e2;
-}
-
-/**
- * drm_buddy_alloc_range - allocate range
- *
- * @mm: DRM buddy manager to allocate from
- * @blocks: output list head to add allocated blocks
- * @start: start of the allowed range for this block
- * @size: size of the allocation
- *
- * Intended for pre-allocating portions of the address space, for example to
- * reserve a block for the initial framebuffer or similar, hence the expectation
- * here is that drm_buddy_alloc_blocks() is still the main vehicle for
- * allocations, so if that's not the case then the drm_mm range allocator is
- * probably a much better fit, and so you should probably go use that instead.
- *
- * Note that it's safe to chain together multiple alloc_ranges
- * with the same blocks list
- *
- * Returns:
- * 0 on success, error code on failure.
- */
-int drm_buddy_alloc_range(struct drm_buddy *mm,
-			  struct list_head *blocks,
-			  u64 start, u64 size)
+static int __alloc_range(struct drm_buddy *mm,
+			 struct list_head *dfs,
+			 u64 start, u64 size,
+			 struct list_head *blocks)
 {
 	struct drm_buddy_block *block;
 	struct drm_buddy_block *buddy;
 	LIST_HEAD(allocated);
-	LIST_HEAD(dfs);
 	u64 end;
 	int err;
-	int i;
-
-	if (size < mm->chunk_size)
-		return -EINVAL;
-
-	if (!IS_ALIGNED(size | start, mm->chunk_size))
-		return -EINVAL;
-
-	if (range_overflows(start, size, mm->size))
-		return -EINVAL;
-
-	for (i = 0; i < mm->n_roots; ++i)
-		list_add_tail(&mm->roots[i]->tmp_link, &dfs);
 
 	end = start + size - 1;
 
@@ -399,7 +424,7 @@ int drm_buddy_alloc_range(struct drm_buddy *mm,
 		u64 block_start;
 		u64 block_end;
 
-		block = list_first_entry_or_null(&dfs,
+		block = list_first_entry_or_null(dfs,
 						 struct drm_buddy_block,
 						 tmp_link);
 		if (!block)
@@ -436,8 +461,8 @@ int drm_buddy_alloc_range(struct drm_buddy *mm,
 				goto err_undo;
 		}
 
-		list_add(&block->right->tmp_link, &dfs);
-		list_add(&block->left->tmp_link, &dfs);
+		list_add(&block->right->tmp_link, dfs);
+		list_add(&block->left->tmp_link, dfs);
 	} while (1);
 
 	list_splice_tail(&allocated, blocks);
@@ -459,7 +484,143 @@ int drm_buddy_alloc_range(struct drm_buddy *mm,
 	drm_buddy_free_list(mm, &allocated);
 	return err;
 }
-EXPORT_SYMBOL(drm_buddy_alloc_range);
+
+/**
+ * __drm_buddy_alloc_range - actual range allocation
+ *
+ * @mm: DRM buddy manager to allocate from
+ * @start: start of the allowed range for this block
+ * @size: size of the allocation
+ * @blocks: output list head to add allocated blocks
+ *
+ * Intended for pre-allocating portions of the address space, for example to
+ * reserve a block for the initial framebuffer or similar
+ *
+ * Note that it's safe to chain together multiple alloc_ranges
+ * with the same blocks list
+ *
+ * Returns:
+ * 0 on success, error code on failure.
+ */
+static int __drm_buddy_alloc_range(struct drm_buddy *mm,
+				   u64 start,
+				   u64 size,
+				   struct list_head *blocks)
+{
+	LIST_HEAD(dfs);
+	int i;
+
+	for (i = 0; i < mm->n_roots; ++i)
+		list_add_tail(&mm->roots[i]->tmp_link, &dfs);
+
+	return __alloc_range(mm, &dfs, start, size, blocks);
+}
+
+/**
+ * drm_buddy_alloc_blocks - allocate power-of-two blocks
+ *
+ * @mm: DRM buddy manager to allocate from
+ * @start: start of the allowed range for this block
+ * @end: end of the allowed range for this block
+ * @size: size of the allocation
+ * @min_page_size: alignment of the allocation
+ * @blocks: output list head to add allocated blocks
+ * @flags: DRM_BUDDY_*_ALLOCATION flags
+ *
+ * alloc_range_bias() called on range limitations, which traverses
+ * the tree and returns the desired block.
+ *
+ * alloc_from_freelist() called when *no* range restrictions
+ * are enforced, which picks the block from the freelist.
+ *
+ * blocks are allocated in order, the order value here translates to:
+ *
+ * 0 = 2^0 * mm->chunk_size
+ * 1 = 2^1 * mm->chunk_size
+ * 2 = 2^2 * mm->chunk_size
+ *
+ * Returns:
+ * 0 on success, error code on failure.
+ */
+int drm_buddy_alloc_blocks(struct drm_buddy *mm,
+			   u64 start, u64 end, u64 size,
+			   u64 min_page_size,
+			   struct list_head *blocks,
+			   unsigned long flags)
+{
+	struct drm_buddy_block *block = NULL;
+	unsigned int min_order, order;
+	unsigned long pages;
+	LIST_HEAD(allocated);
+	int err;
+
+	if (size < mm->chunk_size)
+		return -EINVAL;
+
+	if (min_page_size < mm->chunk_size)
+		return -EINVAL;
+
+	if (!is_power_of_2(min_page_size))
+		return -EINVAL;
+
+	if (!IS_ALIGNED(start | end | size, mm->chunk_size))
+		return -EINVAL;
+
+	if (end > mm->size)
+		return -EINVAL;
+
+	if (range_overflows(start, size, mm->size))
+		return -EINVAL;
+
+	/* Actual range allocation */
+	if (start + size == end)
+		return __drm_buddy_alloc_range(mm, start, size, blocks);
+
+	pages = size >> ilog2(mm->chunk_size);
+	order = fls(pages) - 1;
+	min_order = ilog2(min_page_size) - ilog2(mm->chunk_size);
+
+	do {
+		order = min(order, (unsigned int)fls(pages) - 1);
+		BUG_ON(order > mm->max_order);
+		BUG_ON(order < min_order);
+
+		do {
+			if (flags & DRM_BUDDY_RANGE_ALLOCATION)
+				/* Allocate traversing within the range */
+				block = alloc_range_bias(mm, start, end, order);
+			else
+				/* Allocate from freelist */
+				block = alloc_from_freelist(mm, order, flags);
+
+			if (!IS_ERR(block))
+				break;
+
+			if (order-- == min_order) {
+				err = -ENOSPC;
+				goto err_free;
+			}
+		} while (1);
+
+		mark_allocated(block);
+		mm->avail -= drm_buddy_block_size(mm, block);
+		kmemleak_update_trace(block);
+		list_add_tail(&block->link, &allocated);
+
+		pages -= BIT(order);
+
+		if (!pages)
+			break;
+	} while (1);
+
+	list_splice_tail(&allocated, blocks);
+	return 0;
+
+err_free:
+	drm_buddy_free_list(mm, &allocated);
+	return err;
+}
+EXPORT_SYMBOL(drm_buddy_alloc_blocks);
 
 /**
  * drm_buddy_block_print - print block information
diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
index 247714bab044..b9b420cabc14 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
@@ -36,13 +36,14 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 	struct i915_ttm_buddy_manager *bman = to_buddy_manager(man);
 	struct i915_ttm_buddy_resource *bman_res;
 	struct drm_buddy *mm = &bman->mm;
-	unsigned long n_pages;
-	unsigned int min_order;
+	unsigned long n_pages, lpfn;
 	u64 min_page_size;
 	u64 size;
 	int err;
 
-	GEM_BUG_ON(place->fpfn || place->lpfn);
+	lpfn = place->lpfn;
+	if (!lpfn)
+		lpfn = man->size;
 
 	bman_res = kzalloc(sizeof(*bman_res), GFP_KERNEL);
 	if (!bman_res)
@@ -52,6 +53,9 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 	INIT_LIST_HEAD(&bman_res->blocks);
 	bman_res->mm = mm;
 
+	if (place->fpfn || lpfn != man->size)
+		bman_res->flags |= DRM_BUDDY_RANGE_ALLOCATION;
+
 	GEM_BUG_ON(!bman_res->base.num_pages);
 	size = bman_res->base.num_pages << PAGE_SHIFT;
 
@@ -60,10 +64,16 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 		min_page_size = bo->page_alignment << PAGE_SHIFT;
 
 	GEM_BUG_ON(min_page_size < mm->chunk_size);
-	min_order = ilog2(min_page_size) - ilog2(mm->chunk_size);
+
 	if (place->flags & TTM_PL_FLAG_CONTIGUOUS) {
+		unsigned long pages;
+
 		size = roundup_pow_of_two(size);
-		min_order = ilog2(size) - ilog2(mm->chunk_size);
+		min_page_size = size;
+
+		pages = size >> ilog2(mm->chunk_size);
+		if (pages > lpfn)
+			lpfn = pages;
 	}
 
 	if (size > mm->size) {
@@ -73,34 +83,16 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 
 	n_pages = size >> ilog2(mm->chunk_size);
 
-	do {
-		struct drm_buddy_block *block;
-		unsigned int order;
-
-		order = fls(n_pages) - 1;
-		GEM_BUG_ON(order > mm->max_order);
-		GEM_BUG_ON(order < min_order);
-
-		do {
-			mutex_lock(&bman->lock);
-			block = drm_buddy_alloc_blocks(mm, order);
-			mutex_unlock(&bman->lock);
-			if (!IS_ERR(block))
-				break;
-
-			if (order-- == min_order) {
-				err = -ENOSPC;
-				goto err_free_blocks;
-			}
-		} while (1);
-
-		n_pages -= BIT(order);
-
-		list_add_tail(&block->link, &bman_res->blocks);
-
-		if (!n_pages)
-			break;
-	} while (1);
+	mutex_lock(&bman->lock);
+	err = drm_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT,
+				    (u64)lpfn << PAGE_SHIFT,
+				    (u64)n_pages << PAGE_SHIFT,
+				     min_page_size,
+				     &bman_res->blocks,
+				     bman_res->flags);
+	mutex_unlock(&bman->lock);
+	if (unlikely(err))
+		goto err_free_blocks;
 
 	*res = &bman_res->base;
 	return 0;
@@ -268,10 +260,17 @@ int i915_ttm_buddy_man_reserve(struct ttm_resource_manager *man,
 {
 	struct i915_ttm_buddy_manager *bman = to_buddy_manager(man);
 	struct drm_buddy *mm = &bman->mm;
+	unsigned long flags = 0;
 	int ret;
 
+	flags |= DRM_BUDDY_RANGE_ALLOCATION;
+
 	mutex_lock(&bman->lock);
-	ret = drm_buddy_alloc_range(mm, &bman->reserved, start, size);
+	ret = drm_buddy_alloc_blocks(mm, start,
+				     start + size,
+				     size, mm->chunk_size,
+				     &bman->reserved,
+				     flags);
 	mutex_unlock(&bman->lock);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
index 312077941411..72c90b432e87 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
@@ -20,6 +20,7 @@ struct drm_buddy;
  *
  * @base: struct ttm_resource base class we extend
  * @blocks: the list of struct i915_buddy_block for this resource/allocation
+ * @flags: DRM_BUDDY_*_ALLOCATION flags
  * @mm: the struct i915_buddy_mm for this resource
  *
  * Extends the struct ttm_resource to manage an address space allocation with
@@ -28,6 +29,7 @@ struct drm_buddy;
 struct i915_ttm_buddy_resource {
 	struct ttm_resource base;
 	struct list_head blocks;
+	unsigned long flags;
 	struct drm_buddy *mm;
 };
 
diff --git a/include/drm/drm_buddy.h b/include/drm/drm_buddy.h
index f524db152413..54f25a372f27 100644
--- a/include/drm/drm_buddy.h
+++ b/include/drm/drm_buddy.h
@@ -22,6 +22,8 @@
 	start__ >= max__ || size__ > max__ - start__; \
 })
 
+#define DRM_BUDDY_RANGE_ALLOCATION (1 << 0)
+
 struct drm_buddy_block {
 #define DRM_BUDDY_HEADER_OFFSET GENMASK_ULL(63, 12)
 #define DRM_BUDDY_HEADER_STATE  GENMASK_ULL(11, 10)
@@ -131,12 +133,11 @@ int drm_buddy_init(struct drm_buddy *mm, u64 size, u64 chunk_size);
 
 void drm_buddy_fini(struct drm_buddy *mm);
 
-struct drm_buddy_block *
-drm_buddy_alloc_blocks(struct drm_buddy *mm, unsigned int order);
-
-int drm_buddy_alloc_range(struct drm_buddy *mm,
-			  struct list_head *blocks,
-			  u64 start, u64 size);
+int drm_buddy_alloc_blocks(struct drm_buddy *mm,
+			   u64 start, u64 end, u64 size,
+			   u64 min_page_size,
+			   struct list_head *blocks,
+			   unsigned long flags);
 
 void drm_buddy_free_block(struct drm_buddy *mm, struct drm_buddy_block *block);
 

base-commit: 348109d01999f0feea85e8f336dc804b782ab870
-- 
2.25.1

