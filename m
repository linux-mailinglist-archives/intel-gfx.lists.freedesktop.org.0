Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3E94889C7
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Jan 2022 15:20:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD82E10E1E7;
	Sun,  9 Jan 2022 14:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02on2042.outbound.protection.outlook.com [40.107.96.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71D0410E126;
 Sun,  9 Jan 2022 14:20:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TPZ0nEXnL2gmMsk4r4qihhSkcIaNtLWpZseOeWFY+oPWrYGE8Qs9jEk7ZsJlFMVVbK51Vp59ynkgaee1Cte8AKqZ4JQj8VL9EXuNerVo2OMKci/z1lWfnsgkGucMtW/f1qSysJGEudq5S3o4K+gR2EbZCY77cm8++x9stpKto32pGI/hEK9dQhilPzdMiiBDHeje/4Ubd0wmLYf7MgNm/ABlnlQFTjwAbZmrx45Ov4A42wen9TvqGnnM3xHQoG/K3LoyvzLSzNU9CW4YRrc1UUZYYT78lR3QeT7cMleVyIspgRA1oh6qyjPlJypd8hItmfrsCFc+8YETPgLQ9ge8yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rhVVLXkpcpXB3DxY3hGWiFAb21cY62FkFEYOEYqMmag=;
 b=WWWZUnY0I3bV5ifN8RqnZIJ1R+qjJWyzkDglA4TO1/U/RpzgQCArhudxVTwBI3TzrFBJg+X4afgbBHiGKEZcVQflKGX/unJ2LmWEIdUt9VIvOI4WtRX4rQL8655phyfEqub/OJwA/bO4atAGsVPNjqUDR9pPvU1d32w4ktSt19w9njxIMBq42U/vAOROmnsBh7LHICJ9AU9Q8xbHwpMvPZzCroNLiuoIJa+8tqdfr0R2f/THa2V+6BP0VLehGNWEa2xRtr1GQnmPlbjtKQfx69UY9D3HN1qWzUACv3akitjotxiC2rcZb6y9XuHIeb9FEQUle2Ouk0tIYxZfHFPdYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rhVVLXkpcpXB3DxY3hGWiFAb21cY62FkFEYOEYqMmag=;
 b=JXyyTwz70PRM1RFodfoR3gfAm8M1AtcVEAN5GaSMZcYPCQq04b9Wj60vZ5MsPCC0h5Ei0iqwXkHOwDSubeUj+HmVIjmHdciWi2guvJB64Uy0C0q7ijlsxf/DfmWPrasps1u9ZRyDH9FlFGKRYL+3lLp4soApLTCGKMPH3NMdqKg=
Received: from BN6PR12CA0025.namprd12.prod.outlook.com (2603:10b6:405:70::11)
 by DM8PR12MB5494.namprd12.prod.outlook.com (2603:10b6:8:24::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4867.7; Sun, 9 Jan 2022 14:20:12 +0000
Received: from BN8NAM11FT037.eop-nam11.prod.protection.outlook.com
 (2603:10b6:405:70:cafe::c1) by BN6PR12CA0025.outlook.office365.com
 (2603:10b6:405:70::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.9 via Frontend
 Transport; Sun, 9 Jan 2022 14:20:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com;
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 BN8NAM11FT037.mail.protection.outlook.com (10.13.177.182) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4867.7 via Frontend Transport; Sun, 9 Jan 2022 14:20:12 +0000
Received: from rtg-amd.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17; Sun, 9 Jan
 2022 08:20:07 -0600
From: Arunpravin <Arunpravin.PaneerSelvam@amd.com>
To: <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <amd-gfx@lists.freedesktop.org>
Date: Sun, 9 Jan 2022 19:49:46 +0530
Message-ID: <20220109141951.134432-1-Arunpravin.PaneerSelvam@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f2cd2e8d-5fc5-4cd5-08c2-08d9d37b2605
X-MS-TrafficTypeDiagnostic: DM8PR12MB5494:EE_
X-Microsoft-Antispam-PRVS: <DM8PR12MB5494C69F70756D062DC2EB8EE44F9@DM8PR12MB5494.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:669;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SOTUYE//fAM6yjAbZL1DpBJEwfNxJ2vRKv6LrQ/c397sHWeN7YENEEchpsNoamhxjjImckGsll3J6HifvK3ykJ1m9opHJiQl9VV/CgW76nIEf2KsEpjcdyECbd86zGYKlEUPxzRVIKZZhmEWA8Px/cJBI16VO/1/TiO8tG1n0wTMKXz0OfPg+8tOvpNEmzgjme7qByfZhsLkC1K9ne7uTouCEHjWn8tKWsW92bXorYwFV96FwEoXQ9/ab6bWjqU+2LURoz2bWIeotAtULwUBOPz2uPdwLQFY8KVda+agMJWlmPikh/Nof3f8m42aMkNv5iW6xIptt6xERr/YaFbWPhnfgUUSTribCwZYMgCTabLDy2tcflX58sL1+J9WXCXsKM4hrY+J6A5v3WG4wOrr/rbAoP8lllascz2QUEZCrKYbCr/QggrhsxIgUDyjIbv2bxBPBbSeMRGX9SFPo4CCWx3yxfMNZAijZzf66k0ZCupJ9HaONcERa9R1EyTd1U0feRPw0jTPodGQ2MnpJv/EQvSTHmQXVRi5SBAtTVpahYDY3XEjiEbkkgGGq8aBuKDJQqiRhV+sDD+UL5RESKaA/J4F1mQH3zTfuwS/mbD1m8hV2dGtzyX1XeQRYbo8aSYb6RN4lhnImw00XTazcLBiXnBoyRR7ff69PFGRyv1hHN+BXxUQ3ImrdMIjZoSZ3ua2KpBWAh6A/t+Dav5YrqFf5x+fpM3wmXXLf2ARozhB5q6dHZ7nhy8cLHqmI2H5QwtDQjUz5qMJ2YubdQBnbWSj3sey4MmRydSRi1vRxUyYKUrDVugBfLqvrxLYIPBFbXuW
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(4636009)(46966006)(36840700001)(40470700002)(70206006)(83380400001)(47076005)(4326008)(54906003)(40460700001)(36860700001)(70586007)(36756003)(6666004)(1076003)(26005)(356005)(186003)(426003)(2906002)(2616005)(316002)(508600001)(30864003)(5660300002)(81166007)(7696005)(86362001)(336012)(8936002)(16526019)(8676002)(110136005)(82310400004)(134034003)(36900700001)(579004)(559001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2022 14:20:12.1469 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f2cd2e8d-5fc5-4cd5-08c2-08d9d37b2605
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT037.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR12MB5494
Subject: [Intel-gfx] [PATCH v7 1/6] drm: move the buddy allocator from i915
 into common drm
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

Move the base i915 buddy allocator code into drm
- Move i915_buddy.h to include/drm
- Move i915_buddy.c to drm root folder
- Rename "i915" string with "drm" string wherever applicable
- Rename "I915" string with "DRM" string wherever applicable
- Fix header file dependencies
- Fix alignment issues
- add Makefile support for drm buddy
- export functions and write kerneldoc description
- Remove i915 selftest config check condition as buddy selftest
  will be moved to drm selftest folder

cleanup i915 buddy references in i915 driver module
and replace with drm buddy

v2:
  - include header file in alphabetical order(Thomas)
  - merged changes listed in the body section into a single patch
    to keep the build intact(Christian, Jani)

v3:
  - make drm buddy a separate module(Thomas, Christian)

v4:
  - Fix build error reported by kernel test robot <lkp@intel.com>
  - removed i915 buddy selftest from i915_mock_selftests.h to
    avoid build error
  - removed selftests/i915_buddy.c file as we create a new set of
    buddy test cases in drm/selftests folder

v5:
  - Fix merge conflict issue

v6:
  - replace drm_buddy_mm structure name as drm_buddy(Thomas, Christian)
  - replace drm_buddy_alloc() function name as drm_buddy_alloc_blocks()
    (Thomas)
  - replace drm_buddy_free() function name as drm_buddy_free_block()
    (Thomas)
  - export drm_buddy_free_block() function
  - fix multiple instances of KMEM_CACHE() entry

Signed-off-by: Arunpravin <Arunpravin.PaneerSelvam@amd.com>
---
 drivers/gpu/drm/Kconfig                       |   6 +
 drivers/gpu/drm/Makefile                      |   2 +
 drivers/gpu/drm/drm_buddy.c                   | 535 ++++++++++++
 drivers/gpu/drm/i915/Kconfig                  |   1 +
 drivers/gpu/drm/i915/Makefile                 |   1 -
 drivers/gpu/drm/i915/i915_buddy.c             | 466 -----------
 drivers/gpu/drm/i915/i915_buddy.h             | 143 ----
 drivers/gpu/drm/i915/i915_module.c            |   3 -
 drivers/gpu/drm/i915/i915_scatterlist.c       |  11 +-
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c |  33 +-
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.h |   4 +-
 drivers/gpu/drm/i915/selftests/i915_buddy.c   | 787 ------------------
 .../drm/i915/selftests/i915_mock_selftests.h  |   1 -
 .../drm/i915/selftests/intel_memory_region.c  |  13 +-
 include/drm/drm_buddy.h                       | 150 ++++
 15 files changed, 725 insertions(+), 1431 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_buddy.c
 delete mode 100644 drivers/gpu/drm/i915/i915_buddy.c
 delete mode 100644 drivers/gpu/drm/i915/i915_buddy.h
 delete mode 100644 drivers/gpu/drm/i915/selftests/i915_buddy.c
 create mode 100644 include/drm/drm_buddy.h

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index b1f22e457fd0..b85f7ffae621 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -198,6 +198,12 @@ config DRM_TTM
 	  GPU memory types. Will be enabled automatically if a device driver
 	  uses it.
 
+config DRM_BUDDY
+	tristate
+	depends on DRM
+	help
+	  A page based buddy allocator
+
 config DRM_VRAM_HELPER
 	tristate
 	depends on DRM
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index 301a44dc18e3..ff0286eca254 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -42,6 +42,8 @@ obj-$(CONFIG_DRM_GEM_CMA_HELPER) += drm_cma_helper.o
 drm_shmem_helper-y := drm_gem_shmem_helper.o
 obj-$(CONFIG_DRM_GEM_SHMEM_HELPER) += drm_shmem_helper.o
 
+obj-$(CONFIG_DRM_BUDDY) += drm_buddy.o
+
 drm_vram_helper-y := drm_gem_vram_helper.o
 obj-$(CONFIG_DRM_VRAM_HELPER) += drm_vram_helper.o
 
diff --git a/drivers/gpu/drm/drm_buddy.c b/drivers/gpu/drm/drm_buddy.c
new file mode 100644
index 000000000000..46456b41da49
--- /dev/null
+++ b/drivers/gpu/drm/drm_buddy.c
@@ -0,0 +1,535 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include <linux/kmemleak.h>
+#include <linux/module.h>
+#include <linux/sizes.h>
+
+#include <drm/drm_buddy.h>
+
+static struct kmem_cache *slab_blocks;
+
+static struct drm_buddy_block *drm_block_alloc(struct drm_buddy *mm,
+					       struct drm_buddy_block *parent,
+					       unsigned int order,
+					       u64 offset)
+{
+	struct drm_buddy_block *block;
+
+	BUG_ON(order > DRM_BUDDY_MAX_ORDER);
+
+	block = kmem_cache_zalloc(slab_blocks, GFP_KERNEL);
+	if (!block)
+		return NULL;
+
+	block->header = offset;
+	block->header |= order;
+	block->parent = parent;
+
+	BUG_ON(block->header & DRM_BUDDY_HEADER_UNUSED);
+	return block;
+}
+
+static void drm_block_free(struct drm_buddy *mm,
+			   struct drm_buddy_block *block)
+{
+	kmem_cache_free(slab_blocks, block);
+}
+
+static void mark_allocated(struct drm_buddy_block *block)
+{
+	block->header &= ~DRM_BUDDY_HEADER_STATE;
+	block->header |= DRM_BUDDY_ALLOCATED;
+
+	list_del(&block->link);
+}
+
+static void mark_free(struct drm_buddy *mm,
+		      struct drm_buddy_block *block)
+{
+	block->header &= ~DRM_BUDDY_HEADER_STATE;
+	block->header |= DRM_BUDDY_FREE;
+
+	list_add(&block->link,
+		 &mm->free_list[drm_buddy_block_order(block)]);
+}
+
+static void mark_split(struct drm_buddy_block *block)
+{
+	block->header &= ~DRM_BUDDY_HEADER_STATE;
+	block->header |= DRM_BUDDY_SPLIT;
+
+	list_del(&block->link);
+}
+
+/**
+ * drm_buddy_init - init memory manager
+ *
+ * @mm: DRM buddy manager to initialize
+ * @size: size in bytes to manage
+ * @chunk_size: minimum page size in bytes for our allocations
+ *
+ * Initializes the memory manager and its resources.
+ *
+ * Returns:
+ * 0 on success, error code on failure.
+ */
+int drm_buddy_init(struct drm_buddy *mm, u64 size, u64 chunk_size)
+{
+	unsigned int i;
+	u64 offset;
+
+	if (size < chunk_size)
+		return -EINVAL;
+
+	if (chunk_size < PAGE_SIZE)
+		return -EINVAL;
+
+	if (!is_power_of_2(chunk_size))
+		return -EINVAL;
+
+	size = round_down(size, chunk_size);
+
+	mm->size = size;
+	mm->avail = size;
+	mm->chunk_size = chunk_size;
+	mm->max_order = ilog2(size) - ilog2(chunk_size);
+
+	BUG_ON(mm->max_order > DRM_BUDDY_MAX_ORDER);
+
+	mm->free_list = kmalloc_array(mm->max_order + 1,
+				      sizeof(struct list_head),
+				      GFP_KERNEL);
+	if (!mm->free_list)
+		return -ENOMEM;
+
+	for (i = 0; i <= mm->max_order; ++i)
+		INIT_LIST_HEAD(&mm->free_list[i]);
+
+	mm->n_roots = hweight64(size);
+
+	mm->roots = kmalloc_array(mm->n_roots,
+				  sizeof(struct drm_buddy_block *),
+				  GFP_KERNEL);
+	if (!mm->roots)
+		goto out_free_list;
+
+	offset = 0;
+	i = 0;
+
+	/*
+	 * Split into power-of-two blocks, in case we are given a size that is
+	 * not itself a power-of-two.
+	 */
+	do {
+		struct drm_buddy_block *root;
+		unsigned int order;
+		u64 root_size;
+
+		root_size = rounddown_pow_of_two(size);
+		order = ilog2(root_size) - ilog2(chunk_size);
+
+		root = drm_block_alloc(mm, NULL, order, offset);
+		if (!root)
+			goto out_free_roots;
+
+		mark_free(mm, root);
+
+		BUG_ON(i > mm->max_order);
+		BUG_ON(drm_buddy_block_size(mm, root) < chunk_size);
+
+		mm->roots[i] = root;
+
+		offset += root_size;
+		size -= root_size;
+		i++;
+	} while (size);
+
+	return 0;
+
+out_free_roots:
+	while (i--)
+		drm_block_free(mm, mm->roots[i]);
+	kfree(mm->roots);
+out_free_list:
+	kfree(mm->free_list);
+	return -ENOMEM;
+}
+EXPORT_SYMBOL(drm_buddy_init);
+
+/**
+ * drm_buddy_fini - tear down the memory manager
+ *
+ * @mm: DRM buddy manager to free
+ *
+ * Cleanup memory manager resources and the freelist
+ */
+void drm_buddy_fini(struct drm_buddy *mm)
+{
+	int i;
+
+	for (i = 0; i < mm->n_roots; ++i) {
+		WARN_ON(!drm_buddy_block_is_free(mm->roots[i]));
+		drm_block_free(mm, mm->roots[i]);
+	}
+
+	WARN_ON(mm->avail != mm->size);
+
+	kfree(mm->roots);
+	kfree(mm->free_list);
+}
+EXPORT_SYMBOL(drm_buddy_fini);
+
+static int split_block(struct drm_buddy *mm,
+		       struct drm_buddy_block *block)
+{
+	unsigned int block_order = drm_buddy_block_order(block) - 1;
+	u64 offset = drm_buddy_block_offset(block);
+
+	BUG_ON(!drm_buddy_block_is_free(block));
+	BUG_ON(!drm_buddy_block_order(block));
+
+	block->left = drm_block_alloc(mm, block, block_order, offset);
+	if (!block->left)
+		return -ENOMEM;
+
+	block->right = drm_block_alloc(mm, block, block_order,
+					offset + (mm->chunk_size << block_order));
+	if (!block->right) {
+		drm_block_free(mm, block->left);
+		return -ENOMEM;
+	}
+
+	mark_free(mm, block->left);
+	mark_free(mm, block->right);
+
+	mark_split(block);
+
+	return 0;
+}
+
+static struct drm_buddy_block *
+get_buddy(struct drm_buddy_block *block)
+{
+	struct drm_buddy_block *parent;
+
+	parent = block->parent;
+	if (!parent)
+		return NULL;
+
+	if (parent->left == block)
+		return parent->right;
+
+	return parent->left;
+}
+
+static void __drm_buddy_free(struct drm_buddy *mm,
+			     struct drm_buddy_block *block)
+{
+	struct drm_buddy_block *parent;
+
+	while ((parent = block->parent)) {
+		struct drm_buddy_block *buddy;
+
+		buddy = get_buddy(block);
+
+		if (!drm_buddy_block_is_free(buddy))
+			break;
+
+		list_del(&buddy->link);
+
+		drm_block_free(mm, block);
+		drm_block_free(mm, buddy);
+
+		block = parent;
+	}
+
+	mark_free(mm, block);
+}
+
+/**
+ * drm_buddy_free_block - free a block
+ *
+ * @mm: DRM buddy manager
+ * @block: block to be freed
+ */
+void drm_buddy_free_block(struct drm_buddy *mm,
+			  struct drm_buddy_block *block)
+{
+	BUG_ON(!drm_buddy_block_is_allocated(block));
+	mm->avail += drm_buddy_block_size(mm, block);
+	__drm_buddy_free(mm, block);
+}
+EXPORT_SYMBOL(drm_buddy_free_block);
+
+/**
+ * drm_buddy_free_list - free blocks
+ *
+ * @mm: DRM buddy manager
+ * @objects: input list head to free blocks
+ */
+void drm_buddy_free_list(struct drm_buddy *mm, struct list_head *objects)
+{
+	struct drm_buddy_block *block, *on;
+
+	list_for_each_entry_safe(block, on, objects, link) {
+		drm_buddy_free_block(mm, block);
+		cond_resched();
+	}
+	INIT_LIST_HEAD(objects);
+}
+EXPORT_SYMBOL(drm_buddy_free_list);
+
+/**
+ * drm_buddy_alloc_blocks - allocate power-of-two blocks
+ *
+ * @mm: DRM buddy manager to allocate from
+ * @order: size of the allocation
+ *
+ * The order value here translates to:
+ *
+ * 0 = 2^0 * mm->chunk_size
+ * 1 = 2^1 * mm->chunk_size
+ * 2 = 2^2 * mm->chunk_size
+ *
+ * Returns:
+ * allocated ptr to the &drm_buddy_block on success
+ */
+struct drm_buddy_block *
+drm_buddy_alloc_blocks(struct drm_buddy *mm, unsigned int order)
+{
+	struct drm_buddy_block *block = NULL;
+	unsigned int i;
+	int err;
+
+	for (i = order; i <= mm->max_order; ++i) {
+		block = list_first_entry_or_null(&mm->free_list[i],
+						 struct drm_buddy_block,
+						 link);
+		if (block)
+			break;
+	}
+
+	if (!block)
+		return ERR_PTR(-ENOSPC);
+
+	BUG_ON(!drm_buddy_block_is_free(block));
+
+	while (i != order) {
+		err = split_block(mm, block);
+		if (unlikely(err))
+			goto out_free;
+
+		/* Go low */
+		block = block->left;
+		i--;
+	}
+
+	mark_allocated(block);
+	mm->avail -= drm_buddy_block_size(mm, block);
+	kmemleak_update_trace(block);
+	return block;
+
+out_free:
+	if (i != order)
+		__drm_buddy_free(mm, block);
+	return ERR_PTR(err);
+}
+EXPORT_SYMBOL(drm_buddy_alloc_blocks);
+
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
+/**
+ * drm_buddy_alloc_range - allocate range
+ *
+ * @mm: DRM buddy manager to allocate from
+ * @blocks: output list head to add allocated blocks
+ * @start: start of the allowed range for this block
+ * @size: size of the allocation
+ *
+ * Intended for pre-allocating portions of the address space, for example to
+ * reserve a block for the initial framebuffer or similar, hence the expectation
+ * here is that drm_buddy_alloc_blocks() is still the main vehicle for
+ * allocations, so if that's not the case then the drm_mm range allocator is
+ * probably a much better fit, and so you should probably go use that instead.
+ *
+ * Note that it's safe to chain together multiple alloc_ranges
+ * with the same blocks list
+ *
+ * Returns:
+ * 0 on success, error code on failure.
+ */
+int drm_buddy_alloc_range(struct drm_buddy *mm,
+			  struct list_head *blocks,
+			  u64 start, u64 size)
+{
+	struct drm_buddy_block *block;
+	struct drm_buddy_block *buddy;
+	LIST_HEAD(allocated);
+	LIST_HEAD(dfs);
+	u64 end;
+	int err;
+	int i;
+
+	if (size < mm->chunk_size)
+		return -EINVAL;
+
+	if (!IS_ALIGNED(size | start, mm->chunk_size))
+		return -EINVAL;
+
+	if (range_overflows(start, size, mm->size))
+		return -EINVAL;
+
+	for (i = 0; i < mm->n_roots; ++i)
+		list_add_tail(&mm->roots[i]->tmp_link, &dfs);
+
+	end = start + size - 1;
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
+		block_start = drm_buddy_block_offset(block);
+		block_end = block_start + drm_buddy_block_size(mm, block) - 1;
+
+		if (!overlaps(start, end, block_start, block_end))
+			continue;
+
+		if (drm_buddy_block_is_allocated(block)) {
+			err = -ENOSPC;
+			goto err_free;
+		}
+
+		if (contains(start, end, block_start, block_end)) {
+			if (!drm_buddy_block_is_free(block)) {
+				err = -ENOSPC;
+				goto err_free;
+			}
+
+			mark_allocated(block);
+			mm->avail -= drm_buddy_block_size(mm, block);
+			list_add_tail(&block->link, &allocated);
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
+	list_splice_tail(&allocated, blocks);
+	return 0;
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
+
+err_free:
+	drm_buddy_free_list(mm, &allocated);
+	return err;
+}
+EXPORT_SYMBOL(drm_buddy_alloc_range);
+
+/**
+ * drm_buddy_block_print - print block information
+ *
+ * @mm: DRM buddy manager
+ * @block: DRM buddy block
+ * @p: DRM printer to use
+ */
+void drm_buddy_block_print(struct drm_buddy *mm,
+			   struct drm_buddy_block *block,
+			   struct drm_printer *p)
+{
+	u64 start = drm_buddy_block_offset(block);
+	u64 size = drm_buddy_block_size(mm, block);
+
+	drm_printf(p, "%#018llx-%#018llx: %llu\n", start, start + size, size);
+}
+EXPORT_SYMBOL(drm_buddy_block_print);
+
+/**
+ * drm_buddy_print - print allocator state
+ *
+ * @mm: DRM buddy manager
+ * @p: DRM printer to use
+ */
+void drm_buddy_print(struct drm_buddy *mm, struct drm_printer *p)
+{
+	int order;
+
+	drm_printf(p, "chunk_size: %lluKiB, total: %lluMiB, free: %lluMiB\n",
+		   mm->chunk_size >> 10, mm->size >> 20, mm->avail >> 20);
+
+	for (order = mm->max_order; order >= 0; order--) {
+		struct drm_buddy_block *block;
+		u64 count = 0, free;
+
+		list_for_each_entry(block, &mm->free_list[order], link) {
+			BUG_ON(!drm_buddy_block_is_free(block));
+			count++;
+		}
+
+		drm_printf(p, "order-%d ", order);
+
+		free = count * (mm->chunk_size << order);
+		if (free < SZ_1M)
+			drm_printf(p, "free: %lluKiB", free >> 10);
+		else
+			drm_printf(p, "free: %lluMiB", free >> 20);
+
+		drm_printf(p, ", pages: %llu\n", count);
+	}
+}
+EXPORT_SYMBOL(drm_buddy_print);
+
+void drm_buddy_module_exit(void)
+{
+	kmem_cache_destroy(slab_blocks);
+}
+
+int __init drm_buddy_module_init(void)
+{
+	slab_blocks = KMEM_CACHE(drm_buddy_block, 0);
+	if (!slab_blocks)
+		return -ENOMEM;
+
+	return 0;
+}
+
+module_init(drm_buddy_module_init);
+module_exit(drm_buddy_module_exit);
+
+MODULE_DESCRIPTION("DRM Buddy Allocator");
+MODULE_LICENSE("GPL");
diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index a4c94dc2e216..64b5e0a44d4c 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -27,6 +27,7 @@ config DRM_I915
 	select CEC_CORE if CEC_NOTIFIER
 	select VMAP_PFN
 	select DRM_TTM
+	select DRM_BUDDY
 	help
 	  Choose this option if you have a system that has "Intel Graphics
 	  Media Accelerator" or "HD Graphics" integrated graphics,
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3b5857da4123..72c2e9c5e0b3 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -161,7 +161,6 @@ gem-y += \
 i915-y += \
 	  $(gem-y) \
 	  i915_active.o \
-	  i915_buddy.o \
 	  i915_cmd_parser.o \
 	  i915_gem_evict.o \
 	  i915_gem_gtt.o \
diff --git a/drivers/gpu/drm/i915/i915_buddy.c b/drivers/gpu/drm/i915/i915_buddy.c
deleted file mode 100644
index 6e2ad68f8f3f..000000000000
--- a/drivers/gpu/drm/i915/i915_buddy.c
+++ /dev/null
@@ -1,466 +0,0 @@
-// SPDX-License-Identifier: MIT
-/*
- * Copyright © 2021 Intel Corporation
- */
-
-#include <linux/kmemleak.h>
-#include <linux/sizes.h>
-
-#include "i915_buddy.h"
-
-#include "i915_gem.h"
-#include "i915_utils.h"
-
-static struct kmem_cache *slab_blocks;
-
-static struct i915_buddy_block *i915_block_alloc(struct i915_buddy_mm *mm,
-						 struct i915_buddy_block *parent,
-						 unsigned int order,
-						 u64 offset)
-{
-	struct i915_buddy_block *block;
-
-	GEM_BUG_ON(order > I915_BUDDY_MAX_ORDER);
-
-	block = kmem_cache_zalloc(slab_blocks, GFP_KERNEL);
-	if (!block)
-		return NULL;
-
-	block->header = offset;
-	block->header |= order;
-	block->parent = parent;
-
-	GEM_BUG_ON(block->header & I915_BUDDY_HEADER_UNUSED);
-	return block;
-}
-
-static void i915_block_free(struct i915_buddy_mm *mm,
-			    struct i915_buddy_block *block)
-{
-	kmem_cache_free(slab_blocks, block);
-}
-
-static void mark_allocated(struct i915_buddy_block *block)
-{
-	block->header &= ~I915_BUDDY_HEADER_STATE;
-	block->header |= I915_BUDDY_ALLOCATED;
-
-	list_del(&block->link);
-}
-
-static void mark_free(struct i915_buddy_mm *mm,
-		      struct i915_buddy_block *block)
-{
-	block->header &= ~I915_BUDDY_HEADER_STATE;
-	block->header |= I915_BUDDY_FREE;
-
-	list_add(&block->link,
-		 &mm->free_list[i915_buddy_block_order(block)]);
-}
-
-static void mark_split(struct i915_buddy_block *block)
-{
-	block->header &= ~I915_BUDDY_HEADER_STATE;
-	block->header |= I915_BUDDY_SPLIT;
-
-	list_del(&block->link);
-}
-
-int i915_buddy_init(struct i915_buddy_mm *mm, u64 size, u64 chunk_size)
-{
-	unsigned int i;
-	u64 offset;
-
-	if (size < chunk_size)
-		return -EINVAL;
-
-	if (chunk_size < PAGE_SIZE)
-		return -EINVAL;
-
-	if (!is_power_of_2(chunk_size))
-		return -EINVAL;
-
-	size = round_down(size, chunk_size);
-
-	mm->size = size;
-	mm->avail = size;
-	mm->chunk_size = chunk_size;
-	mm->max_order = ilog2(size) - ilog2(chunk_size);
-
-	GEM_BUG_ON(mm->max_order > I915_BUDDY_MAX_ORDER);
-
-	mm->free_list = kmalloc_array(mm->max_order + 1,
-				      sizeof(struct list_head),
-				      GFP_KERNEL);
-	if (!mm->free_list)
-		return -ENOMEM;
-
-	for (i = 0; i <= mm->max_order; ++i)
-		INIT_LIST_HEAD(&mm->free_list[i]);
-
-	mm->n_roots = hweight64(size);
-
-	mm->roots = kmalloc_array(mm->n_roots,
-				  sizeof(struct i915_buddy_block *),
-				  GFP_KERNEL);
-	if (!mm->roots)
-		goto out_free_list;
-
-	offset = 0;
-	i = 0;
-
-	/*
-	 * Split into power-of-two blocks, in case we are given a size that is
-	 * not itself a power-of-two.
-	 */
-	do {
-		struct i915_buddy_block *root;
-		unsigned int order;
-		u64 root_size;
-
-		root_size = rounddown_pow_of_two(size);
-		order = ilog2(root_size) - ilog2(chunk_size);
-
-		root = i915_block_alloc(mm, NULL, order, offset);
-		if (!root)
-			goto out_free_roots;
-
-		mark_free(mm, root);
-
-		GEM_BUG_ON(i > mm->max_order);
-		GEM_BUG_ON(i915_buddy_block_size(mm, root) < chunk_size);
-
-		mm->roots[i] = root;
-
-		offset += root_size;
-		size -= root_size;
-		i++;
-	} while (size);
-
-	return 0;
-
-out_free_roots:
-	while (i--)
-		i915_block_free(mm, mm->roots[i]);
-	kfree(mm->roots);
-out_free_list:
-	kfree(mm->free_list);
-	return -ENOMEM;
-}
-
-void i915_buddy_fini(struct i915_buddy_mm *mm)
-{
-	int i;
-
-	for (i = 0; i < mm->n_roots; ++i) {
-		GEM_WARN_ON(!i915_buddy_block_is_free(mm->roots[i]));
-		i915_block_free(mm, mm->roots[i]);
-	}
-
-	GEM_WARN_ON(mm->avail != mm->size);
-
-	kfree(mm->roots);
-	kfree(mm->free_list);
-}
-
-static int split_block(struct i915_buddy_mm *mm,
-		       struct i915_buddy_block *block)
-{
-	unsigned int block_order = i915_buddy_block_order(block) - 1;
-	u64 offset = i915_buddy_block_offset(block);
-
-	GEM_BUG_ON(!i915_buddy_block_is_free(block));
-	GEM_BUG_ON(!i915_buddy_block_order(block));
-
-	block->left = i915_block_alloc(mm, block, block_order, offset);
-	if (!block->left)
-		return -ENOMEM;
-
-	block->right = i915_block_alloc(mm, block, block_order,
-					offset + (mm->chunk_size << block_order));
-	if (!block->right) {
-		i915_block_free(mm, block->left);
-		return -ENOMEM;
-	}
-
-	mark_free(mm, block->left);
-	mark_free(mm, block->right);
-
-	mark_split(block);
-
-	return 0;
-}
-
-static struct i915_buddy_block *
-get_buddy(struct i915_buddy_block *block)
-{
-	struct i915_buddy_block *parent;
-
-	parent = block->parent;
-	if (!parent)
-		return NULL;
-
-	if (parent->left == block)
-		return parent->right;
-
-	return parent->left;
-}
-
-static void __i915_buddy_free(struct i915_buddy_mm *mm,
-			      struct i915_buddy_block *block)
-{
-	struct i915_buddy_block *parent;
-
-	while ((parent = block->parent)) {
-		struct i915_buddy_block *buddy;
-
-		buddy = get_buddy(block);
-
-		if (!i915_buddy_block_is_free(buddy))
-			break;
-
-		list_del(&buddy->link);
-
-		i915_block_free(mm, block);
-		i915_block_free(mm, buddy);
-
-		block = parent;
-	}
-
-	mark_free(mm, block);
-}
-
-void i915_buddy_free(struct i915_buddy_mm *mm,
-		     struct i915_buddy_block *block)
-{
-	GEM_BUG_ON(!i915_buddy_block_is_allocated(block));
-	mm->avail += i915_buddy_block_size(mm, block);
-	__i915_buddy_free(mm, block);
-}
-
-void i915_buddy_free_list(struct i915_buddy_mm *mm, struct list_head *objects)
-{
-	struct i915_buddy_block *block, *on;
-
-	list_for_each_entry_safe(block, on, objects, link) {
-		i915_buddy_free(mm, block);
-		cond_resched();
-	}
-	INIT_LIST_HEAD(objects);
-}
-
-/*
- * Allocate power-of-two block. The order value here translates to:
- *
- *   0 = 2^0 * mm->chunk_size
- *   1 = 2^1 * mm->chunk_size
- *   2 = 2^2 * mm->chunk_size
- *   ...
- */
-struct i915_buddy_block *
-i915_buddy_alloc(struct i915_buddy_mm *mm, unsigned int order)
-{
-	struct i915_buddy_block *block = NULL;
-	unsigned int i;
-	int err;
-
-	for (i = order; i <= mm->max_order; ++i) {
-		block = list_first_entry_or_null(&mm->free_list[i],
-						 struct i915_buddy_block,
-						 link);
-		if (block)
-			break;
-	}
-
-	if (!block)
-		return ERR_PTR(-ENOSPC);
-
-	GEM_BUG_ON(!i915_buddy_block_is_free(block));
-
-	while (i != order) {
-		err = split_block(mm, block);
-		if (unlikely(err))
-			goto out_free;
-
-		/* Go low */
-		block = block->left;
-		i--;
-	}
-
-	mark_allocated(block);
-	mm->avail -= i915_buddy_block_size(mm, block);
-	kmemleak_update_trace(block);
-	return block;
-
-out_free:
-	if (i != order)
-		__i915_buddy_free(mm, block);
-	return ERR_PTR(err);
-}
-
-static inline bool overlaps(u64 s1, u64 e1, u64 s2, u64 e2)
-{
-	return s1 <= e2 && e1 >= s2;
-}
-
-static inline bool contains(u64 s1, u64 e1, u64 s2, u64 e2)
-{
-	return s1 <= s2 && e1 >= e2;
-}
-
-/*
- * Allocate range. Note that it's safe to chain together multiple alloc_ranges
- * with the same blocks list.
- *
- * Intended for pre-allocating portions of the address space, for example to
- * reserve a block for the initial framebuffer or similar, hence the expectation
- * here is that i915_buddy_alloc() is still the main vehicle for
- * allocations, so if that's not the case then the drm_mm range allocator is
- * probably a much better fit, and so you should probably go use that instead.
- */
-int i915_buddy_alloc_range(struct i915_buddy_mm *mm,
-			   struct list_head *blocks,
-			   u64 start, u64 size)
-{
-	struct i915_buddy_block *block;
-	struct i915_buddy_block *buddy;
-	LIST_HEAD(allocated);
-	LIST_HEAD(dfs);
-	u64 end;
-	int err;
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
-
-	end = start + size - 1;
-
-	do {
-		u64 block_start;
-		u64 block_end;
-
-		block = list_first_entry_or_null(&dfs,
-						 struct i915_buddy_block,
-						 tmp_link);
-		if (!block)
-			break;
-
-		list_del(&block->tmp_link);
-
-		block_start = i915_buddy_block_offset(block);
-		block_end = block_start + i915_buddy_block_size(mm, block) - 1;
-
-		if (!overlaps(start, end, block_start, block_end))
-			continue;
-
-		if (i915_buddy_block_is_allocated(block)) {
-			err = -ENOSPC;
-			goto err_free;
-		}
-
-		if (contains(start, end, block_start, block_end)) {
-			if (!i915_buddy_block_is_free(block)) {
-				err = -ENOSPC;
-				goto err_free;
-			}
-
-			mark_allocated(block);
-			mm->avail -= i915_buddy_block_size(mm, block);
-			list_add_tail(&block->link, &allocated);
-			continue;
-		}
-
-		if (!i915_buddy_block_is_split(block)) {
-			err = split_block(mm, block);
-			if (unlikely(err))
-				goto err_undo;
-		}
-
-		list_add(&block->right->tmp_link, &dfs);
-		list_add(&block->left->tmp_link, &dfs);
-	} while (1);
-
-	list_splice_tail(&allocated, blocks);
-	return 0;
-
-err_undo:
-	/*
-	 * We really don't want to leave around a bunch of split blocks, since
-	 * bigger is better, so make sure we merge everything back before we
-	 * free the allocated blocks.
-	 */
-	buddy = get_buddy(block);
-	if (buddy &&
-	    (i915_buddy_block_is_free(block) &&
-	     i915_buddy_block_is_free(buddy)))
-		__i915_buddy_free(mm, block);
-
-err_free:
-	i915_buddy_free_list(mm, &allocated);
-	return err;
-}
-
-void i915_buddy_block_print(struct i915_buddy_mm *mm,
-			    struct i915_buddy_block *block,
-			    struct drm_printer *p)
-{
-	u64 start = i915_buddy_block_offset(block);
-	u64 size = i915_buddy_block_size(mm, block);
-
-	drm_printf(p, "%#018llx-%#018llx: %llu\n", start, start + size, size);
-}
-
-void i915_buddy_print(struct i915_buddy_mm *mm, struct drm_printer *p)
-{
-	int order;
-
-	drm_printf(p, "chunk_size: %lluKiB, total: %lluMiB, free: %lluMiB\n",
-		   mm->chunk_size >> 10, mm->size >> 20, mm->avail >> 20);
-
-	for (order = mm->max_order; order >= 0; order--) {
-		struct i915_buddy_block *block;
-		u64 count = 0, free;
-
-		list_for_each_entry(block, &mm->free_list[order], link) {
-			GEM_BUG_ON(!i915_buddy_block_is_free(block));
-			count++;
-		}
-
-		drm_printf(p, "order-%d ", order);
-
-		free = count * (mm->chunk_size << order);
-		if (free < SZ_1M)
-			drm_printf(p, "free: %lluKiB", free >> 10);
-		else
-			drm_printf(p, "free: %lluMiB", free >> 20);
-
-		drm_printf(p, ", pages: %llu\n", count);
-	}
-}
-
-#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
-#include "selftests/i915_buddy.c"
-#endif
-
-void i915_buddy_module_exit(void)
-{
-	kmem_cache_destroy(slab_blocks);
-}
-
-int __init i915_buddy_module_init(void)
-{
-	slab_blocks = KMEM_CACHE(i915_buddy_block, 0);
-	if (!slab_blocks)
-		return -ENOMEM;
-
-	return 0;
-}
diff --git a/drivers/gpu/drm/i915/i915_buddy.h b/drivers/gpu/drm/i915/i915_buddy.h
deleted file mode 100644
index 7077742112ac..000000000000
--- a/drivers/gpu/drm/i915/i915_buddy.h
+++ /dev/null
@@ -1,143 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2021 Intel Corporation
- */
-
-#ifndef __I915_BUDDY_H__
-#define __I915_BUDDY_H__
-
-#include <linux/bitops.h>
-#include <linux/list.h>
-#include <linux/slab.h>
-
-#include <drm/drm_print.h>
-
-struct i915_buddy_block {
-#define I915_BUDDY_HEADER_OFFSET GENMASK_ULL(63, 12)
-#define I915_BUDDY_HEADER_STATE  GENMASK_ULL(11, 10)
-#define   I915_BUDDY_ALLOCATED	   (1 << 10)
-#define   I915_BUDDY_FREE	   (2 << 10)
-#define   I915_BUDDY_SPLIT	   (3 << 10)
-/* Free to be used, if needed in the future */
-#define I915_BUDDY_HEADER_UNUSED GENMASK_ULL(9, 6)
-#define I915_BUDDY_HEADER_ORDER  GENMASK_ULL(5, 0)
-	u64 header;
-
-	struct i915_buddy_block *left;
-	struct i915_buddy_block *right;
-	struct i915_buddy_block *parent;
-
-	void *private; /* owned by creator */
-
-	/*
-	 * While the block is allocated by the user through i915_buddy_alloc*,
-	 * the user has ownership of the link, for example to maintain within
-	 * a list, if so desired. As soon as the block is freed with
-	 * i915_buddy_free* ownership is given back to the mm.
-	 */
-	struct list_head link;
-	struct list_head tmp_link;
-};
-
-/* Order-zero must be at least PAGE_SIZE */
-#define I915_BUDDY_MAX_ORDER (63 - PAGE_SHIFT)
-
-/*
- * Binary Buddy System.
- *
- * Locking should be handled by the user, a simple mutex around
- * i915_buddy_alloc* and i915_buddy_free* should suffice.
- */
-struct i915_buddy_mm {
-	/* Maintain a free list for each order. */
-	struct list_head *free_list;
-
-	/*
-	 * Maintain explicit binary tree(s) to track the allocation of the
-	 * address space. This gives us a simple way of finding a buddy block
-	 * and performing the potentially recursive merge step when freeing a
-	 * block.  Nodes are either allocated or free, in which case they will
-	 * also exist on the respective free list.
-	 */
-	struct i915_buddy_block **roots;
-
-	/*
-	 * Anything from here is public, and remains static for the lifetime of
-	 * the mm. Everything above is considered do-not-touch.
-	 */
-	unsigned int n_roots;
-	unsigned int max_order;
-
-	/* Must be at least PAGE_SIZE */
-	u64 chunk_size;
-	u64 size;
-	u64 avail;
-};
-
-static inline u64
-i915_buddy_block_offset(struct i915_buddy_block *block)
-{
-	return block->header & I915_BUDDY_HEADER_OFFSET;
-}
-
-static inline unsigned int
-i915_buddy_block_order(struct i915_buddy_block *block)
-{
-	return block->header & I915_BUDDY_HEADER_ORDER;
-}
-
-static inline unsigned int
-i915_buddy_block_state(struct i915_buddy_block *block)
-{
-	return block->header & I915_BUDDY_HEADER_STATE;
-}
-
-static inline bool
-i915_buddy_block_is_allocated(struct i915_buddy_block *block)
-{
-	return i915_buddy_block_state(block) == I915_BUDDY_ALLOCATED;
-}
-
-static inline bool
-i915_buddy_block_is_free(struct i915_buddy_block *block)
-{
-	return i915_buddy_block_state(block) == I915_BUDDY_FREE;
-}
-
-static inline bool
-i915_buddy_block_is_split(struct i915_buddy_block *block)
-{
-	return i915_buddy_block_state(block) == I915_BUDDY_SPLIT;
-}
-
-static inline u64
-i915_buddy_block_size(struct i915_buddy_mm *mm,
-		      struct i915_buddy_block *block)
-{
-	return mm->chunk_size << i915_buddy_block_order(block);
-}
-
-int i915_buddy_init(struct i915_buddy_mm *mm, u64 size, u64 chunk_size);
-
-void i915_buddy_fini(struct i915_buddy_mm *mm);
-
-struct i915_buddy_block *
-i915_buddy_alloc(struct i915_buddy_mm *mm, unsigned int order);
-
-int i915_buddy_alloc_range(struct i915_buddy_mm *mm,
-			   struct list_head *blocks,
-			   u64 start, u64 size);
-
-void i915_buddy_free(struct i915_buddy_mm *mm, struct i915_buddy_block *block);
-
-void i915_buddy_free_list(struct i915_buddy_mm *mm, struct list_head *objects);
-
-void i915_buddy_print(struct i915_buddy_mm *mm, struct drm_printer *p);
-void i915_buddy_block_print(struct i915_buddy_mm *mm,
-			    struct i915_buddy_block *block,
-			    struct drm_printer *p);
-
-void i915_buddy_module_exit(void);
-int i915_buddy_module_init(void);
-
-#endif
diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
index f6bcd2f89257..8451822637f0 100644
--- a/drivers/gpu/drm/i915/i915_module.c
+++ b/drivers/gpu/drm/i915/i915_module.c
@@ -9,7 +9,6 @@
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_object.h"
 #include "i915_active.h"
-#include "i915_buddy.h"
 #include "i915_params.h"
 #include "i915_pci.h"
 #include "i915_perf.h"
@@ -50,8 +49,6 @@ static const struct {
 	{ .init = i915_check_nomodeset },
 	{ .init = i915_active_module_init,
 	  .exit = i915_active_module_exit },
-	{ .init = i915_buddy_module_init,
-	  .exit = i915_buddy_module_exit },
 	{ .init = i915_context_module_init,
 	  .exit = i915_context_module_exit },
 	{ .init = i915_gem_context_module_init,
diff --git a/drivers/gpu/drm/i915/i915_scatterlist.c b/drivers/gpu/drm/i915/i915_scatterlist.c
index 41f2adb6a583..159571b9bd24 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.c
+++ b/drivers/gpu/drm/i915/i915_scatterlist.c
@@ -5,10 +5,9 @@
  */
 
 #include "i915_scatterlist.h"
-
-#include "i915_buddy.h"
 #include "i915_ttm_buddy_manager.h"
 
+#include <drm/drm_buddy.h>
 #include <drm/drm_mm.h>
 
 #include <linux/slab.h>
@@ -153,9 +152,9 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
 	struct i915_ttm_buddy_resource *bman_res = to_ttm_buddy_resource(res);
 	const u64 size = res->num_pages << PAGE_SHIFT;
 	const u64 max_segment = rounddown(UINT_MAX, PAGE_SIZE);
-	struct i915_buddy_mm *mm = bman_res->mm;
+	struct drm_buddy *mm = bman_res->mm;
 	struct list_head *blocks = &bman_res->blocks;
-	struct i915_buddy_block *block;
+	struct drm_buddy_block *block;
 	struct i915_refct_sgt *rsgt;
 	struct scatterlist *sg;
 	struct sg_table *st;
@@ -181,8 +180,8 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
 	list_for_each_entry(block, blocks, link) {
 		u64 block_size, offset;
 
-		block_size = min_t(u64, size, i915_buddy_block_size(mm, block));
-		offset = i915_buddy_block_offset(block);
+		block_size = min_t(u64, size, drm_buddy_block_size(mm, block));
+		offset = drm_buddy_block_offset(block);
 
 		while (block_size) {
 			u64 len;
diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
index d59fbb019032..6ba314f9836a 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
@@ -8,14 +8,15 @@
 #include <drm/ttm/ttm_bo_driver.h>
 #include <drm/ttm/ttm_placement.h>
 
+#include <drm/drm_buddy.h>
+
 #include "i915_ttm_buddy_manager.h"
 
-#include "i915_buddy.h"
 #include "i915_gem.h"
 
 struct i915_ttm_buddy_manager {
 	struct ttm_resource_manager manager;
-	struct i915_buddy_mm mm;
+	struct drm_buddy mm;
 	struct list_head reserved;
 	struct mutex lock;
 	u64 default_page_size;
@@ -34,7 +35,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 {
 	struct i915_ttm_buddy_manager *bman = to_buddy_manager(man);
 	struct i915_ttm_buddy_resource *bman_res;
-	struct i915_buddy_mm *mm = &bman->mm;
+	struct drm_buddy *mm = &bman->mm;
 	unsigned long n_pages;
 	unsigned int min_order;
 	u64 min_page_size;
@@ -73,7 +74,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 	n_pages = size >> ilog2(mm->chunk_size);
 
 	do {
-		struct i915_buddy_block *block;
+		struct drm_buddy_block *block;
 		unsigned int order;
 
 		order = fls(n_pages) - 1;
@@ -82,7 +83,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 
 		do {
 			mutex_lock(&bman->lock);
-			block = i915_buddy_alloc(mm, order);
+			block = drm_buddy_alloc_blocks(mm, order);
 			mutex_unlock(&bman->lock);
 			if (!IS_ERR(block))
 				break;
@@ -106,7 +107,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 
 err_free_blocks:
 	mutex_lock(&bman->lock);
-	i915_buddy_free_list(mm, &bman_res->blocks);
+	drm_buddy_free_list(mm, &bman_res->blocks);
 	mutex_unlock(&bman->lock);
 err_free_res:
 	kfree(bman_res);
@@ -120,7 +121,7 @@ static void i915_ttm_buddy_man_free(struct ttm_resource_manager *man,
 	struct i915_ttm_buddy_manager *bman = to_buddy_manager(man);
 
 	mutex_lock(&bman->lock);
-	i915_buddy_free_list(&bman->mm, &bman_res->blocks);
+	drm_buddy_free_list(&bman->mm, &bman_res->blocks);
 	mutex_unlock(&bman->lock);
 
 	kfree(bman_res);
@@ -130,17 +131,17 @@ static void i915_ttm_buddy_man_debug(struct ttm_resource_manager *man,
 				     struct drm_printer *printer)
 {
 	struct i915_ttm_buddy_manager *bman = to_buddy_manager(man);
-	struct i915_buddy_block *block;
+	struct drm_buddy_block *block;
 
 	mutex_lock(&bman->lock);
 	drm_printf(printer, "default_page_size: %lluKiB\n",
 		   bman->default_page_size >> 10);
 
-	i915_buddy_print(&bman->mm, printer);
+	drm_buddy_print(&bman->mm, printer);
 
 	drm_printf(printer, "reserved:\n");
 	list_for_each_entry(block, &bman->reserved, link)
-		i915_buddy_block_print(&bman->mm, block, printer);
+		drm_buddy_block_print(&bman->mm, block, printer);
 	mutex_unlock(&bman->lock);
 }
 
@@ -190,7 +191,7 @@ int i915_ttm_buddy_man_init(struct ttm_device *bdev,
 	if (!bman)
 		return -ENOMEM;
 
-	err = i915_buddy_init(&bman->mm, size, chunk_size);
+	err = drm_buddy_init(&bman->mm, size, chunk_size);
 	if (err)
 		goto err_free_bman;
 
@@ -228,7 +229,7 @@ int i915_ttm_buddy_man_fini(struct ttm_device *bdev, unsigned int type)
 {
 	struct ttm_resource_manager *man = ttm_manager_type(bdev, type);
 	struct i915_ttm_buddy_manager *bman = to_buddy_manager(man);
-	struct i915_buddy_mm *mm = &bman->mm;
+	struct drm_buddy *mm = &bman->mm;
 	int ret;
 
 	ttm_resource_manager_set_used(man, false);
@@ -240,8 +241,8 @@ int i915_ttm_buddy_man_fini(struct ttm_device *bdev, unsigned int type)
 	ttm_set_driver_manager(bdev, type, NULL);
 
 	mutex_lock(&bman->lock);
-	i915_buddy_free_list(mm, &bman->reserved);
-	i915_buddy_fini(mm);
+	drm_buddy_free_list(mm, &bman->reserved);
+	drm_buddy_fini(mm);
 	mutex_unlock(&bman->lock);
 
 	ttm_resource_manager_cleanup(man);
@@ -264,11 +265,11 @@ int i915_ttm_buddy_man_reserve(struct ttm_resource_manager *man,
 			       u64 start, u64 size)
 {
 	struct i915_ttm_buddy_manager *bman = to_buddy_manager(man);
-	struct i915_buddy_mm *mm = &bman->mm;
+	struct drm_buddy *mm = &bman->mm;
 	int ret;
 
 	mutex_lock(&bman->lock);
-	ret = i915_buddy_alloc_range(mm, &bman->reserved, start, size);
+	ret = drm_buddy_alloc_range(mm, &bman->reserved, start, size);
 	mutex_unlock(&bman->lock);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
index 0722d33f3e14..312077941411 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
@@ -13,7 +13,7 @@
 
 struct ttm_device;
 struct ttm_resource_manager;
-struct i915_buddy_mm;
+struct drm_buddy;
 
 /**
  * struct i915_ttm_buddy_resource
@@ -28,7 +28,7 @@ struct i915_buddy_mm;
 struct i915_ttm_buddy_resource {
 	struct ttm_resource base;
 	struct list_head blocks;
-	struct i915_buddy_mm *mm;
+	struct drm_buddy *mm;
 };
 
 /**
diff --git a/drivers/gpu/drm/i915/selftests/i915_buddy.c b/drivers/gpu/drm/i915/selftests/i915_buddy.c
deleted file mode 100644
index d61ec9c951bf..000000000000
--- a/drivers/gpu/drm/i915/selftests/i915_buddy.c
+++ /dev/null
@@ -1,787 +0,0 @@
-// SPDX-License-Identifier: MIT
-/*
- * Copyright © 2019 Intel Corporation
- */
-
-#include <linux/prime_numbers.h>
-
-#include "../i915_selftest.h"
-#include "i915_random.h"
-
-static void __igt_dump_block(struct i915_buddy_mm *mm,
-			     struct i915_buddy_block *block,
-			     bool buddy)
-{
-	pr_err("block info: header=%llx, state=%u, order=%d, offset=%llx size=%llx root=%s buddy=%s\n",
-	       block->header,
-	       i915_buddy_block_state(block),
-	       i915_buddy_block_order(block),
-	       i915_buddy_block_offset(block),
-	       i915_buddy_block_size(mm, block),
-	       yesno(!block->parent),
-	       yesno(buddy));
-}
-
-static void igt_dump_block(struct i915_buddy_mm *mm,
-			   struct i915_buddy_block *block)
-{
-	struct i915_buddy_block *buddy;
-
-	__igt_dump_block(mm, block, false);
-
-	buddy = get_buddy(block);
-	if (buddy)
-		__igt_dump_block(mm, buddy, true);
-}
-
-static int igt_check_block(struct i915_buddy_mm *mm,
-			   struct i915_buddy_block *block)
-{
-	struct i915_buddy_block *buddy;
-	unsigned int block_state;
-	u64 block_size;
-	u64 offset;
-	int err = 0;
-
-	block_state = i915_buddy_block_state(block);
-
-	if (block_state != I915_BUDDY_ALLOCATED &&
-	    block_state != I915_BUDDY_FREE &&
-	    block_state != I915_BUDDY_SPLIT) {
-		pr_err("block state mismatch\n");
-		err = -EINVAL;
-	}
-
-	block_size = i915_buddy_block_size(mm, block);
-	offset = i915_buddy_block_offset(block);
-
-	if (block_size < mm->chunk_size) {
-		pr_err("block size smaller than min size\n");
-		err = -EINVAL;
-	}
-
-	if (!is_power_of_2(block_size)) {
-		pr_err("block size not power of two\n");
-		err = -EINVAL;
-	}
-
-	if (!IS_ALIGNED(block_size, mm->chunk_size)) {
-		pr_err("block size not aligned to min size\n");
-		err = -EINVAL;
-	}
-
-	if (!IS_ALIGNED(offset, mm->chunk_size)) {
-		pr_err("block offset not aligned to min size\n");
-		err = -EINVAL;
-	}
-
-	if (!IS_ALIGNED(offset, block_size)) {
-		pr_err("block offset not aligned to block size\n");
-		err = -EINVAL;
-	}
-
-	buddy = get_buddy(block);
-
-	if (!buddy && block->parent) {
-		pr_err("buddy has gone fishing\n");
-		err = -EINVAL;
-	}
-
-	if (buddy) {
-		if (i915_buddy_block_offset(buddy) != (offset ^ block_size)) {
-			pr_err("buddy has wrong offset\n");
-			err = -EINVAL;
-		}
-
-		if (i915_buddy_block_size(mm, buddy) != block_size) {
-			pr_err("buddy size mismatch\n");
-			err = -EINVAL;
-		}
-
-		if (i915_buddy_block_state(buddy) == block_state &&
-		    block_state == I915_BUDDY_FREE) {
-			pr_err("block and its buddy are free\n");
-			err = -EINVAL;
-		}
-	}
-
-	return err;
-}
-
-static int igt_check_blocks(struct i915_buddy_mm *mm,
-			    struct list_head *blocks,
-			    u64 expected_size,
-			    bool is_contiguous)
-{
-	struct i915_buddy_block *block;
-	struct i915_buddy_block *prev;
-	u64 total;
-	int err = 0;
-
-	block = NULL;
-	prev = NULL;
-	total = 0;
-
-	list_for_each_entry(block, blocks, link) {
-		err = igt_check_block(mm, block);
-
-		if (!i915_buddy_block_is_allocated(block)) {
-			pr_err("block not allocated\n"),
-			err = -EINVAL;
-		}
-
-		if (is_contiguous && prev) {
-			u64 prev_block_size;
-			u64 prev_offset;
-			u64 offset;
-
-			prev_offset = i915_buddy_block_offset(prev);
-			prev_block_size = i915_buddy_block_size(mm, prev);
-			offset = i915_buddy_block_offset(block);
-
-			if (offset != (prev_offset + prev_block_size)) {
-				pr_err("block offset mismatch\n");
-				err = -EINVAL;
-			}
-		}
-
-		if (err)
-			break;
-
-		total += i915_buddy_block_size(mm, block);
-		prev = block;
-	}
-
-	if (!err) {
-		if (total != expected_size) {
-			pr_err("size mismatch, expected=%llx, found=%llx\n",
-			       expected_size, total);
-			err = -EINVAL;
-		}
-		return err;
-	}
-
-	if (prev) {
-		pr_err("prev block, dump:\n");
-		igt_dump_block(mm, prev);
-	}
-
-	pr_err("bad block, dump:\n");
-	igt_dump_block(mm, block);
-
-	return err;
-}
-
-static int igt_check_mm(struct i915_buddy_mm *mm)
-{
-	struct i915_buddy_block *root;
-	struct i915_buddy_block *prev;
-	unsigned int i;
-	u64 total;
-	int err = 0;
-
-	if (!mm->n_roots) {
-		pr_err("n_roots is zero\n");
-		return -EINVAL;
-	}
-
-	if (mm->n_roots != hweight64(mm->size)) {
-		pr_err("n_roots mismatch, n_roots=%u, expected=%lu\n",
-		       mm->n_roots, hweight64(mm->size));
-		return -EINVAL;
-	}
-
-	root = NULL;
-	prev = NULL;
-	total = 0;
-
-	for (i = 0; i < mm->n_roots; ++i) {
-		struct i915_buddy_block *block;
-		unsigned int order;
-
-		root = mm->roots[i];
-		if (!root) {
-			pr_err("root(%u) is NULL\n", i);
-			err = -EINVAL;
-			break;
-		}
-
-		err = igt_check_block(mm, root);
-
-		if (!i915_buddy_block_is_free(root)) {
-			pr_err("root not free\n");
-			err = -EINVAL;
-		}
-
-		order = i915_buddy_block_order(root);
-
-		if (!i) {
-			if (order != mm->max_order) {
-				pr_err("max order root missing\n");
-				err = -EINVAL;
-			}
-		}
-
-		if (prev) {
-			u64 prev_block_size;
-			u64 prev_offset;
-			u64 offset;
-
-			prev_offset = i915_buddy_block_offset(prev);
-			prev_block_size = i915_buddy_block_size(mm, prev);
-			offset = i915_buddy_block_offset(root);
-
-			if (offset != (prev_offset + prev_block_size)) {
-				pr_err("root offset mismatch\n");
-				err = -EINVAL;
-			}
-		}
-
-		block = list_first_entry_or_null(&mm->free_list[order],
-						 struct i915_buddy_block,
-						 link);
-		if (block != root) {
-			pr_err("root mismatch at order=%u\n", order);
-			err = -EINVAL;
-		}
-
-		if (err)
-			break;
-
-		prev = root;
-		total += i915_buddy_block_size(mm, root);
-	}
-
-	if (!err) {
-		if (total != mm->size) {
-			pr_err("expected mm size=%llx, found=%llx\n", mm->size,
-			       total);
-			err = -EINVAL;
-		}
-		return err;
-	}
-
-	if (prev) {
-		pr_err("prev root(%u), dump:\n", i - 1);
-		igt_dump_block(mm, prev);
-	}
-
-	if (root) {
-		pr_err("bad root(%u), dump:\n", i);
-		igt_dump_block(mm, root);
-	}
-
-	return err;
-}
-
-static void igt_mm_config(u64 *size, u64 *chunk_size)
-{
-	I915_RND_STATE(prng);
-	u32 s, ms;
-
-	/* Nothing fancy, just try to get an interesting bit pattern */
-
-	prandom_seed_state(&prng, i915_selftest.random_seed);
-
-	/* Let size be a random number of pages up to 8 GB (2M pages) */
-	s = 1 + i915_prandom_u32_max_state((BIT(33 - 12)) - 1, &prng);
-	/* Let the chunk size be a random power of 2 less than size */
-	ms = BIT(i915_prandom_u32_max_state(ilog2(s), &prng));
-	/* Round size down to the chunk size */
-	s &= -ms;
-
-	/* Convert from pages to bytes */
-	*chunk_size = (u64)ms << 12;
-	*size = (u64)s << 12;
-}
-
-static int igt_buddy_alloc_smoke(void *arg)
-{
-	struct i915_buddy_mm mm;
-	IGT_TIMEOUT(end_time);
-	I915_RND_STATE(prng);
-	u64 chunk_size;
-	u64 mm_size;
-	int *order;
-	int err, i;
-
-	igt_mm_config(&mm_size, &chunk_size);
-
-	pr_info("buddy_init with size=%llx, chunk_size=%llx\n", mm_size, chunk_size);
-
-	err = i915_buddy_init(&mm, mm_size, chunk_size);
-	if (err) {
-		pr_err("buddy_init failed(%d)\n", err);
-		return err;
-	}
-
-	order = i915_random_order(mm.max_order + 1, &prng);
-	if (!order)
-		goto out_fini;
-
-	for (i = 0; i <= mm.max_order; ++i) {
-		struct i915_buddy_block *block;
-		int max_order = order[i];
-		bool timeout = false;
-		LIST_HEAD(blocks);
-		int order;
-		u64 total;
-
-		err = igt_check_mm(&mm);
-		if (err) {
-			pr_err("pre-mm check failed, abort\n");
-			break;
-		}
-
-		pr_info("filling from max_order=%u\n", max_order);
-
-		order = max_order;
-		total = 0;
-
-		do {
-retry:
-			block = i915_buddy_alloc(&mm, order);
-			if (IS_ERR(block)) {
-				err = PTR_ERR(block);
-				if (err == -ENOMEM) {
-					pr_info("buddy_alloc hit -ENOMEM with order=%d\n",
-						order);
-				} else {
-					if (order--) {
-						err = 0;
-						goto retry;
-					}
-
-					pr_err("buddy_alloc with order=%d failed(%d)\n",
-					       order, err);
-				}
-
-				break;
-			}
-
-			list_add_tail(&block->link, &blocks);
-
-			if (i915_buddy_block_order(block) != order) {
-				pr_err("buddy_alloc order mismatch\n");
-				err = -EINVAL;
-				break;
-			}
-
-			total += i915_buddy_block_size(&mm, block);
-
-			if (__igt_timeout(end_time, NULL)) {
-				timeout = true;
-				break;
-			}
-		} while (total < mm.size);
-
-		if (!err)
-			err = igt_check_blocks(&mm, &blocks, total, false);
-
-		i915_buddy_free_list(&mm, &blocks);
-
-		if (!err) {
-			err = igt_check_mm(&mm);
-			if (err)
-				pr_err("post-mm check failed\n");
-		}
-
-		if (err || timeout)
-			break;
-
-		cond_resched();
-	}
-
-	if (err == -ENOMEM)
-		err = 0;
-
-	kfree(order);
-out_fini:
-	i915_buddy_fini(&mm);
-
-	return err;
-}
-
-static int igt_buddy_alloc_pessimistic(void *arg)
-{
-	const unsigned int max_order = 16;
-	struct i915_buddy_block *block, *bn;
-	struct i915_buddy_mm mm;
-	unsigned int order;
-	LIST_HEAD(blocks);
-	int err;
-
-	/*
-	 * Create a pot-sized mm, then allocate one of each possible
-	 * order within. This should leave the mm with exactly one
-	 * page left.
-	 */
-
-	err = i915_buddy_init(&mm, PAGE_SIZE << max_order, PAGE_SIZE);
-	if (err) {
-		pr_err("buddy_init failed(%d)\n", err);
-		return err;
-	}
-	GEM_BUG_ON(mm.max_order != max_order);
-
-	for (order = 0; order < max_order; order++) {
-		block = i915_buddy_alloc(&mm, order);
-		if (IS_ERR(block)) {
-			pr_info("buddy_alloc hit -ENOMEM with order=%d\n",
-				order);
-			err = PTR_ERR(block);
-			goto err;
-		}
-
-		list_add_tail(&block->link, &blocks);
-	}
-
-	/* And now the last remaining block available */
-	block = i915_buddy_alloc(&mm, 0);
-	if (IS_ERR(block)) {
-		pr_info("buddy_alloc hit -ENOMEM on final alloc\n");
-		err = PTR_ERR(block);
-		goto err;
-	}
-	list_add_tail(&block->link, &blocks);
-
-	/* Should be completely full! */
-	for (order = max_order; order--; ) {
-		block = i915_buddy_alloc(&mm, order);
-		if (!IS_ERR(block)) {
-			pr_info("buddy_alloc unexpectedly succeeded at order %d, it should be full!",
-				order);
-			list_add_tail(&block->link, &blocks);
-			err = -EINVAL;
-			goto err;
-		}
-	}
-
-	block = list_last_entry(&blocks, typeof(*block), link);
-	list_del(&block->link);
-	i915_buddy_free(&mm, block);
-
-	/* As we free in increasing size, we make available larger blocks */
-	order = 1;
-	list_for_each_entry_safe(block, bn, &blocks, link) {
-		list_del(&block->link);
-		i915_buddy_free(&mm, block);
-
-		block = i915_buddy_alloc(&mm, order);
-		if (IS_ERR(block)) {
-			pr_info("buddy_alloc (realloc) hit -ENOMEM with order=%d\n",
-				order);
-			err = PTR_ERR(block);
-			goto err;
-		}
-		i915_buddy_free(&mm, block);
-		order++;
-	}
-
-	/* To confirm, now the whole mm should be available */
-	block = i915_buddy_alloc(&mm, max_order);
-	if (IS_ERR(block)) {
-		pr_info("buddy_alloc (realloc) hit -ENOMEM with order=%d\n",
-			max_order);
-		err = PTR_ERR(block);
-		goto err;
-	}
-	i915_buddy_free(&mm, block);
-
-err:
-	i915_buddy_free_list(&mm, &blocks);
-	i915_buddy_fini(&mm);
-	return err;
-}
-
-static int igt_buddy_alloc_optimistic(void *arg)
-{
-	const int max_order = 16;
-	struct i915_buddy_block *block;
-	struct i915_buddy_mm mm;
-	LIST_HEAD(blocks);
-	int order;
-	int err;
-
-	/*
-	 * Create a mm with one block of each order available, and
-	 * try to allocate them all.
-	 */
-
-	err = i915_buddy_init(&mm,
-			      PAGE_SIZE * ((1 << (max_order + 1)) - 1),
-			      PAGE_SIZE);
-	if (err) {
-		pr_err("buddy_init failed(%d)\n", err);
-		return err;
-	}
-	GEM_BUG_ON(mm.max_order != max_order);
-
-	for (order = 0; order <= max_order; order++) {
-		block = i915_buddy_alloc(&mm, order);
-		if (IS_ERR(block)) {
-			pr_info("buddy_alloc hit -ENOMEM with order=%d\n",
-				order);
-			err = PTR_ERR(block);
-			goto err;
-		}
-
-		list_add_tail(&block->link, &blocks);
-	}
-
-	/* Should be completely full! */
-	block = i915_buddy_alloc(&mm, 0);
-	if (!IS_ERR(block)) {
-		pr_info("buddy_alloc unexpectedly succeeded, it should be full!");
-		list_add_tail(&block->link, &blocks);
-		err = -EINVAL;
-		goto err;
-	}
-
-err:
-	i915_buddy_free_list(&mm, &blocks);
-	i915_buddy_fini(&mm);
-	return err;
-}
-
-static int igt_buddy_alloc_pathological(void *arg)
-{
-	const int max_order = 16;
-	struct i915_buddy_block *block;
-	struct i915_buddy_mm mm;
-	LIST_HEAD(blocks);
-	LIST_HEAD(holes);
-	int order, top;
-	int err;
-
-	/*
-	 * Create a pot-sized mm, then allocate one of each possible
-	 * order within. This should leave the mm with exactly one
-	 * page left. Free the largest block, then whittle down again.
-	 * Eventually we will have a fully 50% fragmented mm.
-	 */
-
-	err = i915_buddy_init(&mm, PAGE_SIZE << max_order, PAGE_SIZE);
-	if (err) {
-		pr_err("buddy_init failed(%d)\n", err);
-		return err;
-	}
-	GEM_BUG_ON(mm.max_order != max_order);
-
-	for (top = max_order; top; top--) {
-		/* Make room by freeing the largest allocated block */
-		block = list_first_entry_or_null(&blocks, typeof(*block), link);
-		if (block) {
-			list_del(&block->link);
-			i915_buddy_free(&mm, block);
-		}
-
-		for (order = top; order--; ) {
-			block = i915_buddy_alloc(&mm, order);
-			if (IS_ERR(block)) {
-				pr_info("buddy_alloc hit -ENOMEM with order=%d, top=%d\n",
-					order, top);
-				err = PTR_ERR(block);
-				goto err;
-			}
-			list_add_tail(&block->link, &blocks);
-		}
-
-		/* There should be one final page for this sub-allocation */
-		block = i915_buddy_alloc(&mm, 0);
-		if (IS_ERR(block)) {
-			pr_info("buddy_alloc hit -ENOMEM for hole\n");
-			err = PTR_ERR(block);
-			goto err;
-		}
-		list_add_tail(&block->link, &holes);
-
-		block = i915_buddy_alloc(&mm, top);
-		if (!IS_ERR(block)) {
-			pr_info("buddy_alloc unexpectedly succeeded at top-order %d/%d, it should be full!",
-				top, max_order);
-			list_add_tail(&block->link, &blocks);
-			err = -EINVAL;
-			goto err;
-		}
-	}
-
-	i915_buddy_free_list(&mm, &holes);
-
-	/* Nothing larger than blocks of chunk_size now available */
-	for (order = 1; order <= max_order; order++) {
-		block = i915_buddy_alloc(&mm, order);
-		if (!IS_ERR(block)) {
-			pr_info("buddy_alloc unexpectedly succeeded at order %d, it should be full!",
-				order);
-			list_add_tail(&block->link, &blocks);
-			err = -EINVAL;
-			goto err;
-		}
-	}
-
-err:
-	list_splice_tail(&holes, &blocks);
-	i915_buddy_free_list(&mm, &blocks);
-	i915_buddy_fini(&mm);
-	return err;
-}
-
-static int igt_buddy_alloc_range(void *arg)
-{
-	struct i915_buddy_mm mm;
-	unsigned long page_num;
-	LIST_HEAD(blocks);
-	u64 chunk_size;
-	u64 offset;
-	u64 size;
-	u64 rem;
-	int err;
-
-	igt_mm_config(&size, &chunk_size);
-
-	pr_info("buddy_init with size=%llx, chunk_size=%llx\n", size, chunk_size);
-
-	err = i915_buddy_init(&mm, size, chunk_size);
-	if (err) {
-		pr_err("buddy_init failed(%d)\n", err);
-		return err;
-	}
-
-	err = igt_check_mm(&mm);
-	if (err) {
-		pr_err("pre-mm check failed, abort, abort, abort!\n");
-		goto err_fini;
-	}
-
-	rem = mm.size;
-	offset = 0;
-
-	for_each_prime_number_from(page_num, 1, ULONG_MAX - 1) {
-		struct i915_buddy_block *block;
-		LIST_HEAD(tmp);
-
-		size = min(page_num * mm.chunk_size, rem);
-
-		err = i915_buddy_alloc_range(&mm, &tmp, offset, size);
-		if (err) {
-			if (err == -ENOMEM) {
-				pr_info("alloc_range hit -ENOMEM with size=%llx\n",
-					size);
-			} else {
-				pr_err("alloc_range with offset=%llx, size=%llx failed(%d)\n",
-				       offset, size, err);
-			}
-
-			break;
-		}
-
-		block = list_first_entry_or_null(&tmp,
-						 struct i915_buddy_block,
-						 link);
-		if (!block) {
-			pr_err("alloc_range has no blocks\n");
-			err = -EINVAL;
-			break;
-		}
-
-		if (i915_buddy_block_offset(block) != offset) {
-			pr_err("alloc_range start offset mismatch, found=%llx, expected=%llx\n",
-			       i915_buddy_block_offset(block), offset);
-			err = -EINVAL;
-		}
-
-		if (!err)
-			err = igt_check_blocks(&mm, &tmp, size, true);
-
-		list_splice_tail(&tmp, &blocks);
-
-		if (err)
-			break;
-
-		offset += size;
-
-		rem -= size;
-		if (!rem)
-			break;
-
-		cond_resched();
-	}
-
-	if (err == -ENOMEM)
-		err = 0;
-
-	i915_buddy_free_list(&mm, &blocks);
-
-	if (!err) {
-		err = igt_check_mm(&mm);
-		if (err)
-			pr_err("post-mm check failed\n");
-	}
-
-err_fini:
-	i915_buddy_fini(&mm);
-
-	return err;
-}
-
-static int igt_buddy_alloc_limit(void *arg)
-{
-	struct i915_buddy_block *block;
-	struct i915_buddy_mm mm;
-	const u64 size = U64_MAX;
-	int err;
-
-	err = i915_buddy_init(&mm, size, PAGE_SIZE);
-	if (err)
-		return err;
-
-	if (mm.max_order != I915_BUDDY_MAX_ORDER) {
-		pr_err("mm.max_order(%d) != %d\n",
-		       mm.max_order, I915_BUDDY_MAX_ORDER);
-		err = -EINVAL;
-		goto out_fini;
-	}
-
-	block = i915_buddy_alloc(&mm, mm.max_order);
-	if (IS_ERR(block)) {
-		err = PTR_ERR(block);
-		goto out_fini;
-	}
-
-	if (i915_buddy_block_order(block) != mm.max_order) {
-		pr_err("block order(%d) != %d\n",
-		       i915_buddy_block_order(block), mm.max_order);
-		err = -EINVAL;
-		goto out_free;
-	}
-
-	if (i915_buddy_block_size(&mm, block) !=
-	    BIT_ULL(mm.max_order) * PAGE_SIZE) {
-		pr_err("block size(%llu) != %llu\n",
-		       i915_buddy_block_size(&mm, block),
-		       BIT_ULL(mm.max_order) * PAGE_SIZE);
-		err = -EINVAL;
-		goto out_free;
-	}
-
-out_free:
-	i915_buddy_free(&mm, block);
-out_fini:
-	i915_buddy_fini(&mm);
-	return err;
-}
-
-int i915_buddy_mock_selftests(void)
-{
-	static const struct i915_subtest tests[] = {
-		SUBTEST(igt_buddy_alloc_pessimistic),
-		SUBTEST(igt_buddy_alloc_optimistic),
-		SUBTEST(igt_buddy_alloc_pathological),
-		SUBTEST(igt_buddy_alloc_smoke),
-		SUBTEST(igt_buddy_alloc_range),
-		SUBTEST(igt_buddy_alloc_limit),
-	};
-
-	return i915_subtests(tests, NULL);
-}
diff --git a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
index 793fb28a770d..0c22e0fc9059 100644
--- a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
+++ b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
@@ -33,4 +33,3 @@ selftest(evict, i915_gem_evict_mock_selftests)
 selftest(gtt, i915_gem_gtt_mock_selftests)
 selftest(hugepages, i915_gem_huge_page_mock_selftests)
 selftest(memory_region, intel_memory_region_mock_selftests)
-selftest(buddy, i915_buddy_mock_selftests)
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 0d5df0dc7212..d3b7fb4d52d1 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -6,6 +6,8 @@
 #include <linux/prime_numbers.h>
 #include <linux/sort.h>
 
+#include <drm/drm_buddy.h>
+
 #include "../i915_selftest.h"
 
 #include "mock_drm.h"
@@ -20,7 +22,6 @@
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt.h"
-#include "i915_buddy.h"
 #include "gt/intel_migrate.h"
 #include "i915_memcpy.h"
 #include "i915_ttm_buddy_manager.h"
@@ -369,7 +370,7 @@ static int igt_mock_splintered_region(void *arg)
 	struct drm_i915_private *i915 = mem->i915;
 	struct i915_ttm_buddy_resource *res;
 	struct drm_i915_gem_object *obj;
-	struct i915_buddy_mm *mm;
+	struct drm_buddy *mm;
 	unsigned int expected_order;
 	LIST_HEAD(objects);
 	u64 size;
@@ -454,8 +455,8 @@ static int igt_mock_max_segment(void *arg)
 	struct drm_i915_private *i915 = mem->i915;
 	struct i915_ttm_buddy_resource *res;
 	struct drm_i915_gem_object *obj;
-	struct i915_buddy_block *block;
-	struct i915_buddy_mm *mm;
+	struct drm_buddy_block *block;
+	struct drm_buddy *mm;
 	struct list_head *blocks;
 	struct scatterlist *sg;
 	LIST_HEAD(objects);
@@ -485,8 +486,8 @@ static int igt_mock_max_segment(void *arg)
 	mm = res->mm;
 	size = 0;
 	list_for_each_entry(block, blocks, link) {
-		if (i915_buddy_block_size(mm, block) > size)
-			size = i915_buddy_block_size(mm, block);
+		if (drm_buddy_block_size(mm, block) > size)
+			size = drm_buddy_block_size(mm, block);
 	}
 	if (size < max_segment) {
 		pr_err("%s: Failed to create a huge contiguous block [> %u], largest block %lld\n",
diff --git a/include/drm/drm_buddy.h b/include/drm/drm_buddy.h
new file mode 100644
index 000000000000..f524db152413
--- /dev/null
+++ b/include/drm/drm_buddy.h
@@ -0,0 +1,150 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __DRM_BUDDY_H__
+#define __DRM_BUDDY_H__
+
+#include <linux/bitops.h>
+#include <linux/list.h>
+#include <linux/slab.h>
+#include <linux/sched.h>
+
+#include <drm/drm_print.h>
+
+#define range_overflows(start, size, max) ({ \
+	typeof(start) start__ = (start); \
+	typeof(size) size__ = (size); \
+	typeof(max) max__ = (max); \
+	(void)(&start__ == &size__); \
+	(void)(&start__ == &max__); \
+	start__ >= max__ || size__ > max__ - start__; \
+})
+
+struct drm_buddy_block {
+#define DRM_BUDDY_HEADER_OFFSET GENMASK_ULL(63, 12)
+#define DRM_BUDDY_HEADER_STATE  GENMASK_ULL(11, 10)
+#define   DRM_BUDDY_ALLOCATED	   (1 << 10)
+#define   DRM_BUDDY_FREE	   (2 << 10)
+#define   DRM_BUDDY_SPLIT	   (3 << 10)
+/* Free to be used, if needed in the future */
+#define DRM_BUDDY_HEADER_UNUSED GENMASK_ULL(9, 6)
+#define DRM_BUDDY_HEADER_ORDER  GENMASK_ULL(5, 0)
+	u64 header;
+
+	struct drm_buddy_block *left;
+	struct drm_buddy_block *right;
+	struct drm_buddy_block *parent;
+
+	void *private; /* owned by creator */
+
+	/*
+	 * While the block is allocated by the user through drm_buddy_alloc*,
+	 * the user has ownership of the link, for example to maintain within
+	 * a list, if so desired. As soon as the block is freed with
+	 * drm_buddy_free* ownership is given back to the mm.
+	 */
+	struct list_head link;
+	struct list_head tmp_link;
+};
+
+/* Order-zero must be at least PAGE_SIZE */
+#define DRM_BUDDY_MAX_ORDER (63 - PAGE_SHIFT)
+
+/*
+ * Binary Buddy System.
+ *
+ * Locking should be handled by the user, a simple mutex around
+ * drm_buddy_alloc* and drm_buddy_free* should suffice.
+ */
+struct drm_buddy {
+	/* Maintain a free list for each order. */
+	struct list_head *free_list;
+
+	/*
+	 * Maintain explicit binary tree(s) to track the allocation of the
+	 * address space. This gives us a simple way of finding a buddy block
+	 * and performing the potentially recursive merge step when freeing a
+	 * block.  Nodes are either allocated or free, in which case they will
+	 * also exist on the respective free list.
+	 */
+	struct drm_buddy_block **roots;
+
+	/*
+	 * Anything from here is public, and remains static for the lifetime of
+	 * the mm. Everything above is considered do-not-touch.
+	 */
+	unsigned int n_roots;
+	unsigned int max_order;
+
+	/* Must be at least PAGE_SIZE */
+	u64 chunk_size;
+	u64 size;
+	u64 avail;
+};
+
+static inline u64
+drm_buddy_block_offset(struct drm_buddy_block *block)
+{
+	return block->header & DRM_BUDDY_HEADER_OFFSET;
+}
+
+static inline unsigned int
+drm_buddy_block_order(struct drm_buddy_block *block)
+{
+	return block->header & DRM_BUDDY_HEADER_ORDER;
+}
+
+static inline unsigned int
+drm_buddy_block_state(struct drm_buddy_block *block)
+{
+	return block->header & DRM_BUDDY_HEADER_STATE;
+}
+
+static inline bool
+drm_buddy_block_is_allocated(struct drm_buddy_block *block)
+{
+	return drm_buddy_block_state(block) == DRM_BUDDY_ALLOCATED;
+}
+
+static inline bool
+drm_buddy_block_is_free(struct drm_buddy_block *block)
+{
+	return drm_buddy_block_state(block) == DRM_BUDDY_FREE;
+}
+
+static inline bool
+drm_buddy_block_is_split(struct drm_buddy_block *block)
+{
+	return drm_buddy_block_state(block) == DRM_BUDDY_SPLIT;
+}
+
+static inline u64
+drm_buddy_block_size(struct drm_buddy *mm,
+		     struct drm_buddy_block *block)
+{
+	return mm->chunk_size << drm_buddy_block_order(block);
+}
+
+int drm_buddy_init(struct drm_buddy *mm, u64 size, u64 chunk_size);
+
+void drm_buddy_fini(struct drm_buddy *mm);
+
+struct drm_buddy_block *
+drm_buddy_alloc_blocks(struct drm_buddy *mm, unsigned int order);
+
+int drm_buddy_alloc_range(struct drm_buddy *mm,
+			  struct list_head *blocks,
+			  u64 start, u64 size);
+
+void drm_buddy_free_block(struct drm_buddy *mm, struct drm_buddy_block *block);
+
+void drm_buddy_free_list(struct drm_buddy *mm, struct list_head *objects);
+
+void drm_buddy_print(struct drm_buddy *mm, struct drm_printer *p);
+void drm_buddy_block_print(struct drm_buddy *mm,
+			   struct drm_buddy_block *block,
+			   struct drm_printer *p);
+
+#endif

base-commit: 5313fb2c779f74bc5083e9d3738d9b2c2ebe0aa4
-- 
2.25.1

