Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E87B77E6247
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 03:39:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE6310E1AC;
	Thu,  9 Nov 2023 02:39:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2051.outbound.protection.outlook.com [40.107.243.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26C4710E0C0
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 02:39:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J1YLzvs4mqRvw57++JgBKeR0aloeaal/w6ER0qYEkEZpaXpI7t1ZRdrYSoXxomrWK9O+ZV5tYXLuSvK+nh9olFkIKoIji2U7TkpXFkfguX4BlZ5Yzu5Gk4pTAsrs0uP1bw7CaFEGvzqJLx9y+i2xhBtqLDGfDc1QGCtdubXNyLdDcG35pTtF8oa6eAbQPQKJyKCF6vJ9Hc87Q0keeddIibnoWUN0FPVr3+EWIBUpjDT/axIfQWSJay5x150VdsmucwTGAxrNdBFfxJFR5/k7Xewd8qT+HsEORA0GKvfGzPUWWmNaecdeivQPQjzXjSKCVO6DbC7KSti1qfXja+tB4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ri9Xadw8lFaNndDCRKlsqxVhoN3RqiI7rRYlB9agGBA=;
 b=VFOys+PEbx4AgqcN+RyuXs9KeHxjiiGNYi2EyNF3ktnKz22ZU0hKnxysBVmEPWoGDbo9OuNIevS0ixTfj6JygJUokAJg+gBXxpVV46TUEn0KqI3FuanK24gt6UMrIfDDr22nud5koF0wO5STVmyLg2bYFijjSjwnWSj0CnDQL3c7B7VB0dkrm201zxy6AW9ZVkWfSIp+TNO1YNFX5aeQRZ/F1pO1CykQHDaXhNCGvs9t0fykkDlweug7sfgY25TvtlzNwz0H7B6AF/PLyTsJYCs1TCIm/F3ODrr2hLtM5bdUm4vmkUA8G3yZdNQLvIN7gF2srQ7s9LTWn7ui4oN/Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ri9Xadw8lFaNndDCRKlsqxVhoN3RqiI7rRYlB9agGBA=;
 b=Ngl89l65Do/sc0UhTgua3l+bnLNe5WzxrGTC0Qbybf2fQYwA9MFNfbG+QId/GTWv5p1TAPFKnL7tRe4iGOPaNR1NRTjgYEMc2ui1f1zjeTnhwFJTcF8VRwO+sxTkPd15FGSP/uSllUZ7STyjYjDnYi2dFQPGbL/dHCEhhGipV2A=
Received: from MW2PR2101CA0008.namprd21.prod.outlook.com (2603:10b6:302:1::21)
 by CH3PR12MB8755.namprd12.prod.outlook.com (2603:10b6:610:17e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 02:39:18 +0000
Received: from MWH0EPF000971E5.namprd02.prod.outlook.com
 (2603:10b6:302:1:cafe::a9) by MW2PR2101CA0008.outlook.office365.com
 (2603:10b6:302:1::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.15 via Frontend
 Transport; Thu, 9 Nov 2023 02:39:17 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 MWH0EPF000971E5.mail.protection.outlook.com (10.167.243.73) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6977.16 via Frontend Transport; Thu, 9 Nov 2023 02:39:17 +0000
Received: from amar-X570-AORUS-ELITE.amd.com (10.180.168.240) by
 SATLEXMB04.amd.com (10.181.40.145) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 8 Nov 2023 20:39:14 -0600
From: Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 9 Nov 2023 08:08:43 +0530
Message-ID: <20231109023843.32326-1-Amaranath.Somalapuram@amd.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWH0EPF000971E5:EE_|CH3PR12MB8755:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ff56624-73f4-449a-336a-08dbe0cd11ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YdVZ3SitZNFWP300jO7jSRBnBO7qjQ5++zL2kPdZbtXnSMejS0iJF+YmiHWSRhqjKvmRT8/CZTX2QGb+yux2Hs9IwYpnImz7s4lzAUmKd3s52jHoiRHsOfOyEcxg4lfQQfwyXONHm+ImWxK5aEvKnV+gQof0bC2Jd1bVgvZQGDQrDIL6b8Z2LK9gHVlqMOmB9c+4B9sW28Ajz/uHvOxxDEamkudPB0qgzsLoxvkThwFsWwwxhJ50KmERNSLyva4yA+nwCsKf1gGW+26YIsgfT2936mhqC5rjta7YeH1b2CjBja/pG+m+sP+MMRRxe9skJ03oMribqpHJAlOVzChqN8nLS0V5UNx1De0cjtOTCdGR1vZE493FBJQscWrgr5W3nnluZZNhgwVb/Agi04PPBvYVctQVgQVZtV2iWqJQN6eie2KKrpS9Jpdlza8yXE2qtlIDTyEpDj+E0DkXt9VCOecY0bf+gvUEwSdmpg7Ipxbw9J4ZsVeYyynlolmQb3ee9f22mi7aIDMk4Fs38lpbCZ7zzxGQBANGewFyCDmkgD8uyOJbqJv9aCeNqCbRn/dmBeiLcoviwf3t0pFnDNntHAz4t9YaSMOB3Nra8iYtDr90tq7AJApfL8D2ql4KCmQHu/tzFJwaAPxS/epYt2n755E9XWeGg11B+Oz9Q9z5Z4v6jrrHvGId2rI4icl68V2w6iRIxeBRf7YakdaGH5Q5FDBpTEPHKa/57VuhcvRIn5NUjMPIidlroJCCuLRp1QevmedeGttaJu1hlwjf7qBHag==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230031)(4636009)(136003)(396003)(376002)(346002)(39860400002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(82310400011)(46966006)(40470700004)(36840700001)(5660300002)(41300700001)(36860700001)(40460700003)(2906002)(86362001)(36756003)(30864003)(356005)(82740400003)(81166007)(336012)(66574015)(16526019)(426003)(478600001)(83380400001)(70206006)(2616005)(70586007)(1076003)(26005)(54906003)(6916009)(316002)(47076005)(7696005)(6666004)(8676002)(4326008)(40480700001)(8936002)(36900700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2023 02:39:17.4192 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ff56624-73f4-449a-336a-08dbe0cd11ea
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: MWH0EPF000971E5.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8755
Subject: [Intel-gfx] [PATCH] drm/ttm: replace busy placement with flags v2
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
Cc: Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of a list of separate busy placement add flags which indicate
that a placement should only be used when there is room or if we need to
evict.

v2: add missing TTM_PL_FLAG_IDLE for i915

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c |  6 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c    | 11 +--
 drivers/gpu/drm/drm_gem_vram_helper.c      |  2 -
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c    | 37 ++++----
 drivers/gpu/drm/nouveau/nouveau_bo.c       | 59 +++++--------
 drivers/gpu/drm/nouveau/nouveau_bo.h       |  1 -
 drivers/gpu/drm/qxl/qxl_object.c           |  2 -
 drivers/gpu/drm/qxl/qxl_ttm.c              |  2 -
 drivers/gpu/drm/radeon/radeon_object.c     |  2 -
 drivers/gpu/drm/radeon/radeon_ttm.c        |  8 +-
 drivers/gpu/drm/radeon/radeon_uvd.c        |  1 -
 drivers/gpu/drm/ttm/ttm_bo.c               | 21 +++--
 drivers/gpu/drm/ttm/ttm_resource.c         | 73 ++++------------
 drivers/gpu/drm/vmwgfx/vmwgfx_bo.c         |  3 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c | 99 +++++++++++++++++-----
 include/drm/ttm/ttm_placement.h            | 10 ++-
 include/drm/ttm/ttm_resource.h             |  8 +-
 17 files changed, 160 insertions(+), 185 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
index ace837cfa0a6..e4a0cace14da 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
@@ -220,9 +220,6 @@ void amdgpu_bo_placement_from_domain(struct amdgpu_bo *abo, u32 domain)
 
 	placement->num_placement = c;
 	placement->placement = places;
-
-	placement->num_busy_placement = c;
-	placement->busy_placement = places;
 }
 
 /**
@@ -1411,8 +1408,7 @@ vm_fault_t amdgpu_bo_fault_reserve_notify(struct ttm_buffer_object *bo)
 					AMDGPU_GEM_DOMAIN_GTT);
 
 	/* Avoid costly evictions; only set GTT as a busy placement */
-	abo->placement.num_busy_placement = 1;
-	abo->placement.busy_placement = &abo->placements[1];
+	abo->placements[0].flags |= TTM_PL_FLAG_IDLE;
 
 	r = ttm_bo_validate(bo, &abo->placement, &ctx);
 	if (unlikely(r == -EBUSY || r == -ERESTARTSYS))
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
index 4e51dce3aab5..2d9d57d27030 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
@@ -102,23 +102,19 @@ static void amdgpu_evict_flags(struct ttm_buffer_object *bo,
 	/* Don't handle scatter gather BOs */
 	if (bo->type == ttm_bo_type_sg) {
 		placement->num_placement = 0;
-		placement->num_busy_placement = 0;
 		return;
 	}
 
 	/* Object isn't an AMDGPU object so ignore */
 	if (!amdgpu_bo_is_amdgpu_bo(bo)) {
 		placement->placement = &placements;
-		placement->busy_placement = &placements;
 		placement->num_placement = 1;
-		placement->num_busy_placement = 1;
 		return;
 	}
 
 	abo = ttm_to_amdgpu_bo(bo);
 	if (abo->flags & AMDGPU_GEM_CREATE_DISCARDABLE) {
 		placement->num_placement = 0;
-		placement->num_busy_placement = 0;
 		return;
 	}
 
@@ -128,13 +124,13 @@ static void amdgpu_evict_flags(struct ttm_buffer_object *bo,
 	case AMDGPU_PL_OA:
 	case AMDGPU_PL_DOORBELL:
 		placement->num_placement = 0;
-		placement->num_busy_placement = 0;
 		return;
 
 	case TTM_PL_VRAM:
 		if (!adev->mman.buffer_funcs_enabled) {
 			/* Move to system memory */
 			amdgpu_bo_placement_from_domain(abo, AMDGPU_GEM_DOMAIN_CPU);
+
 		} else if (!amdgpu_gmc_vram_full_visible(&adev->gmc) &&
 			   !(abo->flags & AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED) &&
 			   amdgpu_bo_in_cpu_visible_vram(abo)) {
@@ -149,8 +145,7 @@ static void amdgpu_evict_flags(struct ttm_buffer_object *bo,
 							AMDGPU_GEM_DOMAIN_CPU);
 			abo->placements[0].fpfn = adev->gmc.visible_vram_size >> PAGE_SHIFT;
 			abo->placements[0].lpfn = 0;
-			abo->placement.busy_placement = &abo->placements[1];
-			abo->placement.num_busy_placement = 1;
+			abo->placements[0].flags |= TTM_PL_FLAG_IDLE;
 		} else {
 			/* Move to GTT memory */
 			amdgpu_bo_placement_from_domain(abo, AMDGPU_GEM_DOMAIN_GTT |
@@ -967,8 +962,6 @@ int amdgpu_ttm_alloc_gart(struct ttm_buffer_object *bo)
 	/* allocate GART space */
 	placement.num_placement = 1;
 	placement.placement = &placements;
-	placement.num_busy_placement = 1;
-	placement.busy_placement = &placements;
 	placements.fpfn = 0;
 	placements.lpfn = adev->gmc.gart_size >> PAGE_SHIFT;
 	placements.mem_type = TTM_PL_TT;
diff --git a/drivers/gpu/drm/drm_gem_vram_helper.c b/drivers/gpu/drm/drm_gem_vram_helper.c
index b67eafa55715..75f2eaf0d5b6 100644
--- a/drivers/gpu/drm/drm_gem_vram_helper.c
+++ b/drivers/gpu/drm/drm_gem_vram_helper.c
@@ -147,7 +147,6 @@ static void drm_gem_vram_placement(struct drm_gem_vram_object *gbo,
 		invariant_flags = TTM_PL_FLAG_TOPDOWN;
 
 	gbo->placement.placement = gbo->placements;
-	gbo->placement.busy_placement = gbo->placements;
 
 	if (pl_flag & DRM_GEM_VRAM_PL_FLAG_VRAM) {
 		gbo->placements[c].mem_type = TTM_PL_VRAM;
@@ -160,7 +159,6 @@ static void drm_gem_vram_placement(struct drm_gem_vram_object *gbo,
 	}
 
 	gbo->placement.num_placement = c;
-	gbo->placement.num_busy_placement = c;
 
 	for (i = 0; i < c; ++i) {
 		gbo->placements[i].fpfn = 0;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 9227f8146a58..48fc9779fd50 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -65,8 +65,6 @@ static const struct ttm_place sys_placement_flags = {
 static struct ttm_placement i915_sys_placement = {
 	.num_placement = 1,
 	.placement = &sys_placement_flags,
-	.num_busy_placement = 1,
-	.busy_placement = &sys_placement_flags,
 };
 
 /**
@@ -157,32 +155,28 @@ i915_ttm_place_from_region(const struct intel_memory_region *mr,
 
 static void
 i915_ttm_placement_from_obj(const struct drm_i915_gem_object *obj,
-			    struct ttm_place *requested,
-			    struct ttm_place *busy,
+			    struct ttm_place *places,
 			    struct ttm_placement *placement)
 {
 	unsigned int num_allowed = obj->mm.n_placements;
 	unsigned int flags = obj->flags;
 	unsigned int i;
 
-	placement->num_placement = 1;
+	places[0].flags |= TTM_PL_FLAG_IDLE;
 	i915_ttm_place_from_region(num_allowed ? obj->mm.placements[0] :
-				   obj->mm.region, requested, obj->bo_offset,
+				   obj->mm.region, &places[0], obj->bo_offset,
 				   obj->base.size, flags);
 
 	/* Cache this on object? */
-	placement->num_busy_placement = num_allowed;
-	for (i = 0; i < placement->num_busy_placement; ++i)
-		i915_ttm_place_from_region(obj->mm.placements[i], busy + i,
-					   obj->bo_offset, obj->base.size, flags);
-
-	if (num_allowed == 0) {
-		*busy = *requested;
-		placement->num_busy_placement = 1;
+	for (i = 0; i < num_allowed; ++i) {
+		i915_ttm_place_from_region(obj->mm.placements[i],
+					   &places[i + 1], obj->bo_offset,
+					   obj->base.size, flags);
+		places[i + 1].flags |= TTM_PL_FLAG_BUSY;
 	}
 
-	placement->placement = requested;
-	placement->busy_placement = busy;
+	placement->num_placement = num_allowed + 1;
+	placement->placement = places;
 }
 
 static int i915_ttm_tt_shmem_populate(struct ttm_device *bdev,
@@ -789,7 +783,8 @@ static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
 	int ret;
 
 	/* First try only the requested placement. No eviction. */
-	real_num_busy = fetch_and_zero(&placement->num_busy_placement);
+	real_num_busy = placement->num_placement;
+	placement->num_placement = 1;
 	ret = ttm_bo_validate(bo, placement, &ctx);
 	if (ret) {
 		ret = i915_ttm_err_to_gem(ret);
@@ -805,7 +800,7 @@ static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
 		 * If the initial attempt fails, allow all accepted placements,
 		 * evicting if necessary.
 		 */
-		placement->num_busy_placement = real_num_busy;
+		placement->num_placement = real_num_busy;
 		ret = ttm_bo_validate(bo, placement, &ctx);
 		if (ret)
 			return i915_ttm_err_to_gem(ret);
@@ -839,7 +834,7 @@ static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
 
 static int i915_ttm_get_pages(struct drm_i915_gem_object *obj)
 {
-	struct ttm_place requested, busy[I915_TTM_MAX_PLACEMENTS];
+	struct ttm_place places[I915_TTM_MAX_PLACEMENTS + 1];
 	struct ttm_placement placement;
 
 	/* restricted by sg_alloc_table */
@@ -849,7 +844,7 @@ static int i915_ttm_get_pages(struct drm_i915_gem_object *obj)
 	GEM_BUG_ON(obj->mm.n_placements > I915_TTM_MAX_PLACEMENTS);
 
 	/* Move to the requested placement. */
-	i915_ttm_placement_from_obj(obj, &requested, busy, &placement);
+	i915_ttm_placement_from_obj(obj, places, &placement);
 
 	return __i915_ttm_get_pages(obj, &placement);
 }
@@ -879,9 +874,7 @@ static int __i915_ttm_migrate(struct drm_i915_gem_object *obj,
 	i915_ttm_place_from_region(mr, &requested, obj->bo_offset,
 				   obj->base.size, flags);
 	placement.num_placement = 1;
-	placement.num_busy_placement = 1;
 	placement.placement = &requested;
-	placement.busy_placement = &requested;
 
 	ret = __i915_ttm_get_pages(obj, &placement);
 	if (ret)
diff --git a/drivers/gpu/drm/nouveau/nouveau_bo.c b/drivers/gpu/drm/nouveau/nouveau_bo.c
index 0f3bd187ede6..d13ae11f3033 100644
--- a/drivers/gpu/drm/nouveau/nouveau_bo.c
+++ b/drivers/gpu/drm/nouveau/nouveau_bo.c
@@ -396,27 +396,6 @@ nouveau_bo_new(struct nouveau_cli *cli, u64 size, int align,
 	return 0;
 }
 
-static void
-set_placement_list(struct ttm_place *pl, unsigned *n, uint32_t domain)
-{
-	*n = 0;
-
-	if (domain & NOUVEAU_GEM_DOMAIN_VRAM) {
-		pl[*n].mem_type = TTM_PL_VRAM;
-		pl[*n].flags = 0;
-		(*n)++;
-	}
-	if (domain & NOUVEAU_GEM_DOMAIN_GART) {
-		pl[*n].mem_type = TTM_PL_TT;
-		pl[*n].flags = 0;
-		(*n)++;
-	}
-	if (domain & NOUVEAU_GEM_DOMAIN_CPU) {
-		pl[*n].mem_type = TTM_PL_SYSTEM;
-		pl[(*n)++].flags = 0;
-	}
-}
-
 static void
 set_placement_range(struct nouveau_bo *nvbo, uint32_t domain)
 {
@@ -444,10 +423,6 @@ set_placement_range(struct nouveau_bo *nvbo, uint32_t domain)
 			nvbo->placements[i].fpfn = fpfn;
 			nvbo->placements[i].lpfn = lpfn;
 		}
-		for (i = 0; i < nvbo->placement.num_busy_placement; ++i) {
-			nvbo->busy_placements[i].fpfn = fpfn;
-			nvbo->busy_placements[i].lpfn = lpfn;
-		}
 	}
 }
 
@@ -455,15 +430,32 @@ void
 nouveau_bo_placement_set(struct nouveau_bo *nvbo, uint32_t domain,
 			 uint32_t busy)
 {
-	struct ttm_placement *pl = &nvbo->placement;
+	struct ttm_place *pl = nvbo->placements;
+	unsigned *n = &nvbo->placement.num_placement;
 
-	pl->placement = nvbo->placements;
-	set_placement_list(nvbo->placements, &pl->num_placement, domain);
+	domain |= busy;
 
-	pl->busy_placement = nvbo->busy_placements;
-	set_placement_list(nvbo->busy_placements, &pl->num_busy_placement,
-			   domain | busy);
+	*n = 0;
+	if (domain & NOUVEAU_GEM_DOMAIN_VRAM) {
+		pl[*n].mem_type = TTM_PL_VRAM;
+		pl[*n].flags = busy & NOUVEAU_GEM_DOMAIN_VRAM ?
+			TTM_PL_FLAG_BUSY : 0;
+		(*n)++;
+	}
+	if (domain & NOUVEAU_GEM_DOMAIN_GART) {
+		pl[*n].mem_type = TTM_PL_TT;
+		pl[*n].flags = busy & NOUVEAU_GEM_DOMAIN_GART ?
+			TTM_PL_FLAG_BUSY : 0;
+		(*n)++;
+	}
+	if (domain & NOUVEAU_GEM_DOMAIN_CPU) {
+		pl[*n].mem_type = TTM_PL_SYSTEM;
+		pl[*n].flags = busy & NOUVEAU_GEM_DOMAIN_CPU ?
+			TTM_PL_FLAG_BUSY : 0;
+		(*n)++;
+	}
 
+	nvbo->placement.placement = nvbo->placements;
 	set_placement_range(nvbo, domain);
 }
 
@@ -1304,11 +1296,6 @@ vm_fault_t nouveau_ttm_fault_reserve_notify(struct ttm_buffer_object *bo)
 			nvbo->placements[i].lpfn = mappable;
 		}
 
-		for (i = 0; i < nvbo->placement.num_busy_placement; ++i) {
-			nvbo->busy_placements[i].fpfn = 0;
-			nvbo->busy_placements[i].lpfn = mappable;
-		}
-
 		nouveau_bo_placement_set(nvbo, NOUVEAU_GEM_DOMAIN_VRAM, 0);
 	}
 
diff --git a/drivers/gpu/drm/nouveau/nouveau_bo.h b/drivers/gpu/drm/nouveau/nouveau_bo.h
index 07f671cf895e..6251ab8ac5da 100644
--- a/drivers/gpu/drm/nouveau/nouveau_bo.h
+++ b/drivers/gpu/drm/nouveau/nouveau_bo.h
@@ -15,7 +15,6 @@ struct nouveau_bo {
 	struct ttm_placement placement;
 	u32 valid_domains;
 	struct ttm_place placements[3];
-	struct ttm_place busy_placements[3];
 	bool force_coherent;
 	struct ttm_bo_kmap_obj kmap;
 	struct list_head head;
diff --git a/drivers/gpu/drm/qxl/qxl_object.c b/drivers/gpu/drm/qxl/qxl_object.c
index 06a58dad5f5c..1e46b0a6e478 100644
--- a/drivers/gpu/drm/qxl/qxl_object.c
+++ b/drivers/gpu/drm/qxl/qxl_object.c
@@ -66,7 +66,6 @@ void qxl_ttm_placement_from_domain(struct qxl_bo *qbo, u32 domain)
 		pflag |= TTM_PL_FLAG_TOPDOWN;
 
 	qbo->placement.placement = qbo->placements;
-	qbo->placement.busy_placement = qbo->placements;
 	if (domain == QXL_GEM_DOMAIN_VRAM) {
 		qbo->placements[c].mem_type = TTM_PL_VRAM;
 		qbo->placements[c++].flags = pflag;
@@ -86,7 +85,6 @@ void qxl_ttm_placement_from_domain(struct qxl_bo *qbo, u32 domain)
 		qbo->placements[c++].flags = 0;
 	}
 	qbo->placement.num_placement = c;
-	qbo->placement.num_busy_placement = c;
 	for (i = 0; i < c; ++i) {
 		qbo->placements[i].fpfn = 0;
 		qbo->placements[i].lpfn = 0;
diff --git a/drivers/gpu/drm/qxl/qxl_ttm.c b/drivers/gpu/drm/qxl/qxl_ttm.c
index 1a82629bce3f..765a144cea14 100644
--- a/drivers/gpu/drm/qxl/qxl_ttm.c
+++ b/drivers/gpu/drm/qxl/qxl_ttm.c
@@ -60,9 +60,7 @@ static void qxl_evict_flags(struct ttm_buffer_object *bo,
 
 	if (!qxl_ttm_bo_is_qxl_bo(bo)) {
 		placement->placement = &placements;
-		placement->busy_placement = &placements;
 		placement->num_placement = 1;
-		placement->num_busy_placement = 1;
 		return;
 	}
 	qbo = to_qxl_bo(bo);
diff --git a/drivers/gpu/drm/radeon/radeon_object.c b/drivers/gpu/drm/radeon/radeon_object.c
index 10c0fbd9d2b4..a955f8a2f7fe 100644
--- a/drivers/gpu/drm/radeon/radeon_object.c
+++ b/drivers/gpu/drm/radeon/radeon_object.c
@@ -78,7 +78,6 @@ void radeon_ttm_placement_from_domain(struct radeon_bo *rbo, u32 domain)
 	u32 c = 0, i;
 
 	rbo->placement.placement = rbo->placements;
-	rbo->placement.busy_placement = rbo->placements;
 	if (domain & RADEON_GEM_DOMAIN_VRAM) {
 		/* Try placing BOs which don't need CPU access outside of the
 		 * CPU accessible part of VRAM
@@ -114,7 +113,6 @@ void radeon_ttm_placement_from_domain(struct radeon_bo *rbo, u32 domain)
 	}
 
 	rbo->placement.num_placement = c;
-	rbo->placement.num_busy_placement = c;
 
 	for (i = 0; i < c; ++i) {
 		if ((rbo->flags & RADEON_GEM_CPU_ACCESS) &&
diff --git a/drivers/gpu/drm/radeon/radeon_ttm.c b/drivers/gpu/drm/radeon/radeon_ttm.c
index 4eb83ccc4906..c2252c6cfd89 100644
--- a/drivers/gpu/drm/radeon/radeon_ttm.c
+++ b/drivers/gpu/drm/radeon/radeon_ttm.c
@@ -92,9 +92,7 @@ static void radeon_evict_flags(struct ttm_buffer_object *bo,
 
 	if (!radeon_ttm_bo_is_radeon_bo(bo)) {
 		placement->placement = &placements;
-		placement->busy_placement = &placements;
 		placement->num_placement = 1;
-		placement->num_busy_placement = 1;
 		return;
 	}
 	rbo = container_of(bo, struct radeon_bo, tbo);
@@ -114,15 +112,11 @@ static void radeon_evict_flags(struct ttm_buffer_object *bo,
 			 */
 			radeon_ttm_placement_from_domain(rbo, RADEON_GEM_DOMAIN_VRAM |
 							 RADEON_GEM_DOMAIN_GTT);
-			rbo->placement.num_busy_placement = 0;
 			for (i = 0; i < rbo->placement.num_placement; i++) {
 				if (rbo->placements[i].mem_type == TTM_PL_VRAM) {
 					if (rbo->placements[i].fpfn < fpfn)
 						rbo->placements[i].fpfn = fpfn;
-				} else {
-					rbo->placement.busy_placement =
-						&rbo->placements[i];
-					rbo->placement.num_busy_placement = 1;
+					rbo->placements[0].flags |= TTM_PL_FLAG_IDLE;
 				}
 			}
 		} else
diff --git a/drivers/gpu/drm/radeon/radeon_uvd.c b/drivers/gpu/drm/radeon/radeon_uvd.c
index a2cda184b2b2..058a1c8451b2 100644
--- a/drivers/gpu/drm/radeon/radeon_uvd.c
+++ b/drivers/gpu/drm/radeon/radeon_uvd.c
@@ -324,7 +324,6 @@ void radeon_uvd_force_into_uvd_segment(struct radeon_bo *rbo,
 	rbo->placements[1].fpfn += (256 * 1024 * 1024) >> PAGE_SHIFT;
 	rbo->placements[1].lpfn += (256 * 1024 * 1024) >> PAGE_SHIFT;
 	rbo->placement.num_placement++;
-	rbo->placement.num_busy_placement++;
 }
 
 void radeon_uvd_free_handles(struct radeon_device *rdev, struct drm_file *filp)
diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index e58b7e249816..9683c62ac2ca 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -404,8 +404,8 @@ static int ttm_bo_bounce_temp_buffer(struct ttm_buffer_object *bo,
 	struct ttm_resource *hop_mem;
 	int ret;
 
-	hop_placement.num_placement = hop_placement.num_busy_placement = 1;
-	hop_placement.placement = hop_placement.busy_placement = hop;
+	hop_placement.num_placement = 1;
+	hop_placement.placement = hop;
 
 	/* find space in the bounce domain */
 	ret = ttm_bo_mem_space(bo, &hop_placement, &hop_mem, ctx);
@@ -434,10 +434,9 @@ static int ttm_bo_evict(struct ttm_buffer_object *bo,
 	dma_resv_assert_held(bo->base.resv);
 
 	placement.num_placement = 0;
-	placement.num_busy_placement = 0;
 	bdev->funcs->evict_flags(bo, &placement);
 
-	if (!placement.num_placement && !placement.num_busy_placement) {
+	if (!placement.num_placement) {
 		ret = ttm_bo_wait_ctx(bo, ctx);
 		if (ret)
 			return ret;
@@ -785,6 +784,9 @@ int ttm_bo_mem_space(struct ttm_buffer_object *bo,
 		const struct ttm_place *place = &placement->placement[i];
 		struct ttm_resource_manager *man;
 
+		if (place->flags & TTM_PL_FLAG_BUSY)
+			continue;
+
 		man = ttm_manager_type(bdev, place->mem_type);
 		if (!man || !ttm_resource_manager_used(man))
 			continue;
@@ -807,10 +809,13 @@ int ttm_bo_mem_space(struct ttm_buffer_object *bo,
 		return 0;
 	}
 
-	for (i = 0; i < placement->num_busy_placement; ++i) {
-		const struct ttm_place *place = &placement->busy_placement[i];
+	for (i = 0; i < placement->num_placement; ++i) {
+		const struct ttm_place *place = &placement->placement[i];
 		struct ttm_resource_manager *man;
 
+		if (place->flags & TTM_PL_FLAG_IDLE)
+			continue;
+
 		man = ttm_manager_type(bdev, place->mem_type);
 		if (!man || !ttm_resource_manager_used(man))
 			continue;
@@ -898,11 +903,11 @@ int ttm_bo_validate(struct ttm_buffer_object *bo,
 	/*
 	 * Remove the backing store if no placement is given.
 	 */
-	if (!placement->num_placement && !placement->num_busy_placement)
+	if (!placement->num_placement)
 		return ttm_bo_pipeline_gutting(bo);
 
 	/* Check whether we need to move buffer. */
-	if (bo->resource && ttm_resource_compat(bo->resource, placement))
+	if (bo->resource && ttm_resource_compatible(bo->resource, placement))
 		return 0;
 
 	/* Moving of pinned BOs is forbidden */
diff --git a/drivers/gpu/drm/ttm/ttm_resource.c b/drivers/gpu/drm/ttm/ttm_resource.c
index 46ff9c75bb12..3cf1db122980 100644
--- a/drivers/gpu/drm/ttm/ttm_resource.c
+++ b/drivers/gpu/drm/ttm/ttm_resource.c
@@ -288,37 +288,15 @@ bool ttm_resource_intersects(struct ttm_device *bdev,
 }
 
 /**
- * ttm_resource_compatible - test for compatibility
+ * ttm_resource_compatible - check if resource is compatible with placement
  *
- * @bdev: TTM device structure
- * @res: The resource to test
- * @place: The placement to test
- * @size: How many bytes the new allocation needs.
- *
- * Test if @res compatible with @place and @size.
+ * @res: the resource to check
+ * @placement: the placement to check against
  *
- * Returns true if the res placement compatible with @place and @size.
+ * Returns true if the placement is compatible.
  */
-bool ttm_resource_compatible(struct ttm_device *bdev,
-			     struct ttm_resource *res,
-			     const struct ttm_place *place,
-			     size_t size)
-{
-	struct ttm_resource_manager *man;
-
-	if (!res || !place)
-		return false;
-
-	man = ttm_manager_type(bdev, res->mem_type);
-	if (!man->func->compatible)
-		return true;
-
-	return man->func->compatible(man, res, place, size);
-}
-
-static bool ttm_resource_places_compat(struct ttm_resource *res,
-				       const struct ttm_place *places,
-				       unsigned num_placement)
+bool ttm_resource_compatible(struct ttm_resource *res,
+			     struct ttm_placement *placement)
 {
 	struct ttm_buffer_object *bo = res->bo;
 	struct ttm_device *bdev = bo->bdev;
@@ -327,44 +305,25 @@ static bool ttm_resource_places_compat(struct ttm_resource *res,
 	if (res->placement & TTM_PL_FLAG_TEMPORARY)
 		return false;
 
-	for (i = 0; i < num_placement; i++) {
-		const struct ttm_place *heap = &places[i];
+	for (i = 0; i < placement->num_placement; i++) {
+		const struct ttm_place *place = &placement->placement[i];
+		struct ttm_resource_manager *man;
 
-		if (!ttm_resource_compatible(bdev, res, heap, bo->base.size))
+		if (res->mem_type != place->mem_type)
+			continue;
+
+		man = ttm_manager_type(bdev, res->mem_type);
+		if (man->func->compatible &&
+		    !man->func->compatible(man, res, place, bo->base.size))
 			continue;
 
-		if ((res->mem_type == heap->mem_type) &&
-		    (!(heap->flags & TTM_PL_FLAG_CONTIGUOUS) ||
+		if ((!(place->flags & TTM_PL_FLAG_CONTIGUOUS) ||
 		     (res->placement & TTM_PL_FLAG_CONTIGUOUS)))
 			return true;
 	}
 	return false;
 }
 
-/**
- * ttm_resource_compat - check if resource is compatible with placement
- *
- * @res: the resource to check
- * @placement: the placement to check against
- *
- * Returns true if the placement is compatible.
- */
-bool ttm_resource_compat(struct ttm_resource *res,
-			 struct ttm_placement *placement)
-{
-	if (ttm_resource_places_compat(res, placement->placement,
-				       placement->num_placement))
-		return true;
-
-	if ((placement->busy_placement != placement->placement ||
-	     placement->num_busy_placement > placement->num_placement) &&
-	    ttm_resource_places_compat(res, placement->busy_placement,
-				       placement->num_busy_placement))
-		return true;
-
-	return false;
-}
-
 void ttm_resource_set_bo(struct ttm_resource *res,
 			 struct ttm_buffer_object *bo)
 {
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c b/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
index c43853597776..9c8c0101023e 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
@@ -177,6 +177,7 @@ int vmw_bo_pin_in_start_of_vram(struct vmw_private *dev_priv,
 	struct ttm_buffer_object *bo = &buf->tbo;
 	int ret = 0;
 
+
 	vmw_execbuf_release_pinned_bo(dev_priv);
 	ret = ttm_bo_reserve(bo, interruptible, false, NULL);
 	if (unlikely(ret != 0))
@@ -820,8 +821,6 @@ void vmw_bo_placement_set(struct vmw_bo *bo, u32 domain, u32 busy_domain)
 				 __func__, bo->tbo.resource->mem_type, domain);
 	}
 
-	pl->busy_placement = bo->busy_places;
-	pl->num_busy_placement = set_placement_list(bo->busy_places, busy_domain);
 }
 
 void vmw_bo_placement_set_default_accelerated(struct vmw_bo *bo)
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c b/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
index af8562c95cc3..e243c9266453 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
@@ -36,6 +36,49 @@ static const struct ttm_place vram_placement_flags = {
 	.flags = 0
 };
 
+struct ttm_placement vmw_vram_placement = {
+	.num_placement = 1,
+	.placement = &vram_placement_flags,
+};
+
+static const struct ttm_place vram_gmr_placement_flags[] = {
+	{
+		.fpfn = 0,
+		.lpfn = 0,
+		.mem_type = TTM_PL_VRAM,
+		.flags = TTM_PL_FLAG_IDLE
+	}, {
+		.fpfn = 0,
+		.lpfn = 0,
+		.mem_type = VMW_PL_GMR,
+		.flags = 0
+	}
+};
+
+struct ttm_placement vmw_vram_gmr_placement = {
+	.num_placement = 2,
+	.placement = vram_gmr_placement_flags,
+};
+
+static const struct ttm_place vram_sys_placement_flags[] = {
+	{
+		.fpfn = 0,
+		.lpfn = 0,
+		.mem_type = TTM_PL_VRAM,
+		.flags = TTM_PL_FLAG_IDLE
+	}, {
+		.fpfn = 0,
+		.lpfn = 0,
+		.mem_type = TTM_PL_SYSTEM,
+		.flags = TTM_PL_FLAG_BUSY
+	}
+};
+
+struct ttm_placement vmw_vram_sys_placement = {
+	.num_placement = 2,
+	.placement = vram_sys_placement_flags,
+};
+
 static const struct ttm_place sys_placement_flags = {
 	.fpfn = 0,
 	.lpfn = 0,
@@ -43,46 +86,64 @@ static const struct ttm_place sys_placement_flags = {
 	.flags = 0
 };
 
-static const struct ttm_place gmr_placement_flags = {
+struct ttm_placement vmw_sys_placement = {
+	.num_placement = 1,
+	.placement = &sys_placement_flags,
+};
+
+static const struct ttm_place vmw_sys_placement_flags = {
 	.fpfn = 0,
 	.lpfn = 0,
-	.mem_type = VMW_PL_GMR,
+	.mem_type = VMW_PL_SYSTEM,
 	.flags = 0
 };
 
-struct ttm_placement vmw_vram_placement = {
+struct ttm_placement vmw_pt_sys_placement = {
 	.num_placement = 1,
-	.placement = &vram_placement_flags,
-	.num_busy_placement = 1,
-	.busy_placement = &vram_placement_flags
+	.placement = &vmw_sys_placement_flags,
 };
 
-static const struct ttm_place vram_gmr_placement_flags[] = {
+static const struct ttm_place gmr_vram_placement_flags[] = {
 	{
 		.fpfn = 0,
 		.lpfn = 0,
-		.mem_type = TTM_PL_VRAM,
+		.mem_type = VMW_PL_GMR,
 		.flags = 0
 	}, {
 		.fpfn = 0,
 		.lpfn = 0,
-		.mem_type = VMW_PL_GMR,
-		.flags = 0
+		.mem_type = TTM_PL_VRAM,
+		.flags = TTM_PL_FLAG_BUSY
 	}
 };
 
-struct ttm_placement vmw_vram_gmr_placement = {
+struct ttm_placement vmw_srf_placement = {
 	.num_placement = 2,
-	.placement = vram_gmr_placement_flags,
-	.num_busy_placement = 1,
-	.busy_placement = &gmr_placement_flags
+	.placement = gmr_vram_placement_flags
 };
 
-struct ttm_placement vmw_sys_placement = {
-	.num_placement = 1,
-	.placement = &sys_placement_flags,
-	.num_busy_placement = 1,
-	.busy_placement = &sys_placement_flags
+static const struct ttm_place nonfixed_placement_flags[] = {
+	{
+		.fpfn = 0,
+		.lpfn = 0,
+		.mem_type = TTM_PL_SYSTEM,
+		.flags = 0
+	}, {
+		.fpfn = 0,
+		.lpfn = 0,
+		.mem_type = VMW_PL_GMR,
+		.flags = TTM_PL_FLAG_IDLE
+	}, {
+		.fpfn = 0,
+		.lpfn = 0,
+		.mem_type = VMW_PL_MOB,
+		.flags = TTM_PL_FLAG_IDLE
+	}
+};
+
+struct ttm_placement vmw_nonfixed_placement = {
+	.num_placement = 3,
+	.placement = nonfixed_placement_flags,
 };
 
 const size_t vmw_tt_size = sizeof(struct vmw_ttm_tt);
diff --git a/include/drm/ttm/ttm_placement.h b/include/drm/ttm/ttm_placement.h
index 8074d0f6cae5..c70e489e1f1e 100644
--- a/include/drm/ttm/ttm_placement.h
+++ b/include/drm/ttm/ttm_placement.h
@@ -64,6 +64,12 @@
 /* For multihop handling */
 #define TTM_PL_FLAG_TEMPORARY   (1 << 2)
 
+/* Placement is never used during eviction */
+#define TTM_PL_FLAG_IDLE	(1 << 3)
+
+/* Placement is only used during eviction */
+#define TTM_PL_FLAG_BUSY	(1 << 4)
+
 /**
  * struct ttm_place
  *
@@ -86,16 +92,12 @@ struct ttm_place {
  *
  * @num_placement:	number of preferred placements
  * @placement:		preferred placements
- * @num_busy_placement:	number of preferred placements when need to evict buffer
- * @busy_placement:	preferred placements when need to evict buffer
  *
  * Structure indicating the placement you request for an object.
  */
 struct ttm_placement {
 	unsigned		num_placement;
 	const struct ttm_place	*placement;
-	unsigned		num_busy_placement;
-	const struct ttm_place	*busy_placement;
 };
 
 #endif
diff --git a/include/drm/ttm/ttm_resource.h b/include/drm/ttm/ttm_resource.h
index 78a226eba953..1afa13f0c22b 100644
--- a/include/drm/ttm/ttm_resource.h
+++ b/include/drm/ttm/ttm_resource.h
@@ -365,12 +365,8 @@ bool ttm_resource_intersects(struct ttm_device *bdev,
 			     struct ttm_resource *res,
 			     const struct ttm_place *place,
 			     size_t size);
-bool ttm_resource_compatible(struct ttm_device *bdev,
-			     struct ttm_resource *res,
-			     const struct ttm_place *place,
-			     size_t size);
-bool ttm_resource_compat(struct ttm_resource *res,
-			 struct ttm_placement *placement);
+bool ttm_resource_compatible(struct ttm_resource *res,
+			     struct ttm_placement *placement);
 void ttm_resource_set_bo(struct ttm_resource *res,
 			 struct ttm_buffer_object *bo);
 
-- 
2.34.1

