Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2SGmBiT1M2oUJwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 15:39:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869516A0A37
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 15:39:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=sSuxp8f4;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D530710E73C;
	Thu, 18 Jun 2026 13:39:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BYAPR05CU005.outbound.protection.outlook.com
 (mail-westusazon11010002.outbound.protection.outlook.com [52.101.85.2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4554910E4D9;
 Thu, 18 Jun 2026 13:39:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d7fr9MEoxLOlmO2GohxISW0GinahLdo9osqPrqBgn8CAbI8nKQm+Qvfmim7unxwBVeOa6miZxbNa8+3ymH+hT0vPeMZUI3zQ6od+dX0pNXOn3Lwjl+LN9IInd4bBOlGBv9glz0KZHtmoAHI5YCchLDbx2Zx2grtvl5GPYy1PNVeUyac2oEOrLYapmhh+iG37gte0ilJqAF5sVOqaketzL3qpN60m7SDinQPxR3Czr+1CQGrbi1J2HSwFe+u5lqqiYJWwifBdyspegNtMA2Nn8p5DYfxwEUCiVY38JKUmyg0MusDviFAk+QsV/fAX8VGPmxTPSljAciSKbK5wIFssaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s88J0/2IxekfNs6N1TvyfnkmYonDaKFWdPBbkpYtXxE=;
 b=JvyyR8/5vk4anZM6YS89OxY1NKEgCI43Gg5ktEOjnp6EfnSx6+UhUhryXeeim/jHTIv+9ayMy8Pwl54eeHafv8PMTeZ6AM9yR4B4G1+792obA03GnzsFk9TLX+dybqZpAqxMm8UnulNRjtEHPked+EDXaXUyLISrBGKny7Q39dNKbk8qFSvtH003HQVkx7Xk3n+Xg4SoejchwtMT+n1ADs84qcho3SC0TKuaM3Q4mnQGSuCN34vWfpc0mamTGU0+Qa2hJhJDrc33m1E9PxkrqV61lhS5LFoEoz4bEOC3yMiIS6UThKQBFS5y0s6w6ngdo14Gm7d1C/D3hjjDnD742Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s88J0/2IxekfNs6N1TvyfnkmYonDaKFWdPBbkpYtXxE=;
 b=sSuxp8f4gL5bCTH5yGrmvZ7eT41iTwiPpLpvPd3O3OD0J9fsjKMtmwDpPmDCZY8KujMqmnDT0aqPbZA/z7+K8i1dt4MauZJtCTgAQV78+ohdS7nvijYYQ/3/V6YL0MXLl+BSub945aVwiIJK7iYAZUEGwM7UPF4cwWkxEUdp0x4=
Received: from MW4PR03CA0242.namprd03.prod.outlook.com (2603:10b6:303:b4::7)
 by DS4PR12MB9705.namprd12.prod.outlook.com (2603:10b6:8:277::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Thu, 18 Jun
 2026 13:39:38 +0000
Received: from SJ1PEPF00001CEA.namprd03.prod.outlook.com
 (2603:10b6:303:b4:cafe::37) by MW4PR03CA0242.outlook.office365.com
 (2603:10b6:303:b4::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.139.11 via Frontend Transport; Thu,
 18 Jun 2026 13:39:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb08.amd.com; pr=C
Received: from satlexmb08.amd.com (165.204.84.17) by
 SJ1PEPF00001CEA.mail.protection.outlook.com (10.167.242.26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.139.8 via Frontend Transport; Thu, 18 Jun 2026 13:39:37 +0000
Received: from Satlexmb09.amd.com (10.181.42.218) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Thu, 18 Jun
 2026 08:39:37 -0500
Received: from arun-nv33.amd.com (10.180.168.240) by satlexmb09.amd.com
 (10.181.42.218) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.41; Thu, 18 Jun
 2026 06:39:34 -0700
From: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
To: <christian.koenig@amd.com>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <amd-gfx@lists.freedesktop.org>, <nouveau@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
CC: <alexander.deucher@amd.com>, Arunpravin Paneer Selvam
 <Arunpravin.PaneerSelvam@amd.com>, =?UTF-8?q?Thomas=20Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
Subject: [PATCH] drm/ttm: rename ttm_place::fpfn/lpfn to param1/param2
Date: Thu, 18 Jun 2026 19:09:08 +0530
Message-ID: <20260618133908.2761908-1-Arunpravin.PaneerSelvam@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: satlexmb08.amd.com (10.181.42.217) To satlexmb09.amd.com
 (10.181.42.218)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CEA:EE_|DS4PR12MB9705:EE_
X-MS-Office365-Filtering-Correlation-Id: c3331a88-4b7c-4e18-3540-08decd3f0aba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|82310400026|1800799024|376014|36860700016|23010399003|11063799006|56012099006|6133799003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: 0OWFxD5zdr5eHMID7x40CpNJKCmIiwBls0QEa8BleYcDUZUhl2geZXvYvrRf613f+bXNUsXFH/nmLMGthKlgEL7pd4QJGlP0NZg6dY0i1vLjkfak+LW7CkIJlI+4xGyDpPBzaYv6wpU9uCbkTH3d+fZn5WZTQ/GNNfHtK1CbwFawJ0Pq8pSUIJH52tUlso0yujeYTy8qvX6/Mii0ShmusnbQO8fZgiS51NBKhmruhcAjIf9beYqNjxb9xwmA59/+kKU/+dnFz6w65EQy/CFlyoVYPdh6SY4VThBOJATH6TQiheMqeCMZ05P5Ty7yinsmp6zxMG5Az0bNlyA6Fw5MFo3HRN9llwkSMl/tq658+WExaL8dqVbkFVZRbK+GXiqmRnWsyfr1T/fBMMAtN+ljcUmYH/OAjecOjUkaR2nzY9Cp+X1nWZohQh0fsEM8RjKLVrLEe4rV6SFz9Y9y/BZY+rDndV9XsDE3oJbo8R144CdKz2/Og8GPyXsxoYFdC4bvPToJiHQUd2GONg/vuY/6qNtI5Gg0moVYYcokfD9qNz3WvUXkx/YiZwlUbGpE0JKqqZFjwzofTdqj7uxq8qdpwEf5qZ0yo7nsZL6MkWWxC6glB1CWpLpXTM/KuWbvb9wwPcLdBWUQ8HK3wI/cX+7jtiLtOuhUovyZvOhgA39MFSBeB1tOOElbamykJq/7D3rk9gppkIgZxE0/MOiWpuQvrSlTuhkOJvdz6IGeykap2no=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb08.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(82310400026)(1800799024)(376014)(36860700016)(23010399003)(11063799006)(56012099006)(6133799003)(18002099003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: G71zrfr8axUCzpwidzOrIUvRM3CGdIIACHkRgAWXM0SzQmpJ3WKmAmsCLNYAvGBWev0d9m3Jn6DbKAP4sxTyQKCCEIFqa3Gzt3fKZxSdmsvsjfoTxbDFfAdvlz2JFVAHyyEuLyQ5UG33WRx/+Fb82shAdkYcsBD+3gSGkCQmvYrkvym/yTBe5sEbrMAj3O/YGEW5tmq3GeeEXTL0CLz6MmlgGz3js8zhvxeoUzTp1BFN3cbEtJRkqzUasDqbm54eMtSeHmZgRXh1L9+o6w+G+latyA3/BT38d1dh+wsMhm5ZHLTAz+y7CzBMIz4Njxv6tRuzxq0HO36GSWilVTxg/0sUmNGtQhGZAzxe55fiS2WCS1GRse5S/6q4tzHULsA55PzjrFt5VR9GUJQxNQTjI+FS6pGCFUrZ6fSfyqCzisipJKc/kijgFZ1LxbNtTayw
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2026 13:39:37.9054 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c3331a88-4b7c-4e18-3540-08decd3f0aba
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb08.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF00001CEA.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR12MB9705
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,amd.com:dkim,amd.com:email,amd.com:mid,amd.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Arunpravin.PaneerSelvam@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	HAS_XOIP(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 869516A0A37

The fpfn/lpfn fields in struct ttm_place were named after page frame
numbers, but they are really just placement parameters passed to the
backend resource manager. Rename them to the generic param1/param2
and document that their interpretation is backend-defined. The VRAM
range manager continues to treat them as the first and last valid
page frame number, so behaviour is unchanged.

This decouples the API from PFN/range-specific semantics so that
these fields can be used more flexibly in the future (e.g.,
mask-based or segment-aware placement constraints). No functional
change.

Suggested-by: Christian König <christian.koenig@amd.com>
Cc: Christian König <christian.koenig@amd.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c       | 16 +++---
 drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.h       |  4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c   |  8 +--
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c    | 46 +++++++--------
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c       | 24 ++++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c       |  4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c       | 16 +++---
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c        |  6 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c  | 32 +++++------
 drivers/gpu/drm/amd/amdkfd/kfd_svm.c          |  2 +-
 .../gpu/drm/amd/ras/ras_mgr/amdgpu_ras_cmd.c  |  2 +-
 drivers/gpu/drm/drm_gem_vram_helper.c         |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 18 +++---
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 56 +++++++++----------
 drivers/gpu/drm/i915/intel_region_ttm.c       | 14 ++---
 drivers/gpu/drm/loongson/lsdc_ttm.c           |  4 +-
 drivers/gpu/drm/nouveau/nouveau_bo.c          | 22 ++++----
 drivers/gpu/drm/nouveau/nouveau_mem.c         |  8 +--
 drivers/gpu/drm/qxl/qxl_object.c              |  4 +-
 drivers/gpu/drm/qxl/qxl_ttm.c                 |  4 +-
 drivers/gpu/drm/radeon/radeon_object.c        | 28 +++++-----
 drivers/gpu/drm/radeon/radeon_ttm.c           | 18 +++---
 drivers/gpu/drm/radeon/radeon_uvd.c           |  8 +--
 drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c | 16 +++---
 drivers/gpu/drm/ttm/tests/ttm_mock_manager.c  |  8 +--
 drivers/gpu/drm/ttm/ttm_bo_util.c             |  4 +-
 drivers/gpu/drm/ttm/ttm_range_manager.c       | 18 +++---
 drivers/gpu/drm/vmwgfx/vmwgfx_bo.c            | 30 +++++-----
 drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c    |  8 +--
 drivers/gpu/drm/xe/xe_bo.c                    | 24 ++++----
 drivers/gpu/drm/xe/xe_ttm_vram_mgr.c          | 40 ++++++-------
 include/drm/ttm/ttm_placement.h               | 15 +++--
 32 files changed, 259 insertions(+), 252 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c
index 276f9f49d6d1..20ec6d81bcb0 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c
@@ -1452,11 +1452,11 @@ int amdgpu_gmc_get_nps_memranges(struct amdgpu_device *adev,
 			}
 		}
 
-		mem_ranges[i].range.fpfn =
+		mem_ranges[i].range.param1 =
 			(ranges[i].base_address -
 			 adev->vm_manager.vram_base_offset) >>
 			AMDGPU_GPU_PAGE_SHIFT;
-		mem_ranges[i].range.lpfn =
+		mem_ranges[i].range.param2 =
 			(ranges[i].limit_address -
 			 adev->vm_manager.vram_base_offset) >>
 			AMDGPU_GPU_PAGE_SHIFT;
@@ -1708,8 +1708,8 @@ void amdgpu_gmc_init_sw_mem_ranges(struct amdgpu_device *adev,
 	if (!r) {
 		l = 0;
 		for (i = 1; i < adev->gmc.num_mem_partitions; ++i) {
-			if (mem_ranges[i].range.lpfn >
-			    mem_ranges[i - 1].range.lpfn)
+			if (mem_ranges[i].range.param2 >
+			    mem_ranges[i - 1].range.param2)
 				l = i;
 		}
 
@@ -1724,10 +1724,10 @@ void amdgpu_gmc_init_sw_mem_ranges(struct amdgpu_device *adev,
 		size /= adev->gmc.num_mem_partitions;
 
 		for (i = 0; i < adev->gmc.num_mem_partitions; ++i) {
-			mem_ranges[i].range.fpfn = start_addr;
+			mem_ranges[i].range.param1 = start_addr;
 			mem_ranges[i].size =
 				((u64)size << AMDGPU_GPU_PAGE_SHIFT);
-			mem_ranges[i].range.lpfn = start_addr + size - 1;
+			mem_ranges[i].range.param2 = start_addr + size - 1;
 			start_addr += size;
 		}
 
@@ -1735,11 +1735,11 @@ void amdgpu_gmc_init_sw_mem_ranges(struct amdgpu_device *adev,
 	}
 
 	/* Adjust the last one */
-	mem_ranges[l].range.lpfn =
+	mem_ranges[l].range.param2 =
 		(adev->gmc.real_vram_size >> AMDGPU_GPU_PAGE_SHIFT) - 1;
 	mem_ranges[l].size =
 		adev->gmc.real_vram_size -
-		((u64)mem_ranges[l].range.fpfn << AMDGPU_GPU_PAGE_SHIFT);
+		((u64)mem_ranges[l].range.param1 << AMDGPU_GPU_PAGE_SHIFT);
 }
 
 int amdgpu_gmc_init_mem_ranges(struct amdgpu_device *adev)
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.h
index 676e3aaa1f27..12fc85d8c306 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.h
@@ -195,8 +195,8 @@ struct amdgpu_gmc_funcs {
 struct amdgpu_mem_partition_info {
 	union {
 		struct {
-			uint32_t fpfn;
-			uint32_t lpfn;
+			uint32_t param1;
+			uint32_t param2;
 		} range;
 		struct {
 			int node;
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c
index a5d26b943f6d..ebe3605f2855 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c
@@ -133,11 +133,11 @@ static int amdgpu_gtt_mgr_new(struct ttm_resource_manager *man,
 		goto err_free;
 	}
 
-	if (place->lpfn) {
+	if (place->param2) {
 		spin_lock(&mgr->lock);
 		r = drm_mm_insert_node_in_range(&mgr->mm, &node->mm_nodes[0],
 						num_pages, tbo->page_alignment,
-						0, place->fpfn, place->lpfn,
+						0, place->param1, place->param2,
 						DRM_MM_INSERT_BEST);
 		spin_unlock(&mgr->lock);
 		if (unlikely(r))
@@ -272,7 +272,7 @@ static bool amdgpu_gtt_mgr_intersects(struct ttm_resource_manager *man,
 				      const struct ttm_place *place,
 				      size_t size)
 {
-	return !place->lpfn || amdgpu_gtt_mgr_has_gart_addr(res);
+	return !place->param2 || amdgpu_gtt_mgr_has_gart_addr(res);
 }
 
 /**
@@ -290,7 +290,7 @@ static bool amdgpu_gtt_mgr_compatible(struct ttm_resource_manager *man,
 				      const struct ttm_place *place,
 				      size_t size)
 {
-	return !place->lpfn || amdgpu_gtt_mgr_has_gart_addr(res);
+	return !place->param2 || amdgpu_gtt_mgr_has_gart_addr(res);
 }
 
 /**
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
index f98bfba59a2c..86801f873966 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
@@ -120,21 +120,21 @@ void amdgpu_bo_placement_from_domain(struct amdgpu_bo *abo, u32 domain)
 		int8_t mem_id = KFD_XCP_MEM_ID(adev, abo->xcp_id);
 
 		if (adev->gmc.mem_partitions && mem_id >= 0) {
-			places[c].fpfn = adev->gmc.mem_partitions[mem_id].range.fpfn;
+			places[c].param1 = adev->gmc.mem_partitions[mem_id].range.param1;
 			/*
-			 * memory partition range lpfn is inclusive start + size - 1
-			 * TTM place lpfn is exclusive start + size
+			 * memory partition range param2 is inclusive start + size - 1
+			 * TTM place param2 is exclusive start + size
 			 */
-			places[c].lpfn = adev->gmc.mem_partitions[mem_id].range.lpfn + 1;
+			places[c].param2 = adev->gmc.mem_partitions[mem_id].range.param2 + 1;
 		} else {
-			places[c].fpfn = 0;
-			places[c].lpfn = 0;
+			places[c].param1 = 0;
+			places[c].param2 = 0;
 		}
 		places[c].mem_type = TTM_PL_VRAM;
 		places[c].flags = 0;
 
 		if (flags & AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED)
-			places[c].lpfn = min_not_zero(places[c].lpfn, visible_pfn);
+			places[c].param2 = min_not_zero(places[c].param2, visible_pfn);
 		else
 			places[c].flags |= TTM_PL_FLAG_TOPDOWN;
 
@@ -146,16 +146,16 @@ void amdgpu_bo_placement_from_domain(struct amdgpu_bo *abo, u32 domain)
 	}
 
 	if (domain & AMDGPU_GEM_DOMAIN_DOORBELL) {
-		places[c].fpfn = 0;
-		places[c].lpfn = 0;
+		places[c].param1 = 0;
+		places[c].param2 = 0;
 		places[c].mem_type = AMDGPU_PL_DOORBELL;
 		places[c].flags = 0;
 		c++;
 	}
 
 	if (domain & AMDGPU_GEM_DOMAIN_GTT) {
-		places[c].fpfn = 0;
-		places[c].lpfn = 0;
+		places[c].param1 = 0;
+		places[c].param2 = 0;
 		places[c].mem_type =
 			abo->flags & AMDGPU_GEM_CREATE_PREEMPTIBLE ?
 			AMDGPU_PL_PREEMPT : TTM_PL_TT;
@@ -171,40 +171,40 @@ void amdgpu_bo_placement_from_domain(struct amdgpu_bo *abo, u32 domain)
 	}
 
 	if (domain & AMDGPU_GEM_DOMAIN_CPU) {
-		places[c].fpfn = 0;
-		places[c].lpfn = 0;
+		places[c].param1 = 0;
+		places[c].param2 = 0;
 		places[c].mem_type = TTM_PL_SYSTEM;
 		places[c].flags = 0;
 		c++;
 	}
 
 	if (domain & AMDGPU_GEM_DOMAIN_GDS) {
-		places[c].fpfn = 0;
-		places[c].lpfn = 0;
+		places[c].param1 = 0;
+		places[c].param2 = 0;
 		places[c].mem_type = AMDGPU_PL_GDS;
 		places[c].flags = 0;
 		c++;
 	}
 
 	if (domain & AMDGPU_GEM_DOMAIN_GWS) {
-		places[c].fpfn = 0;
-		places[c].lpfn = 0;
+		places[c].param1 = 0;
+		places[c].param2 = 0;
 		places[c].mem_type = AMDGPU_PL_GWS;
 		places[c].flags = 0;
 		c++;
 	}
 
 	if (domain & AMDGPU_GEM_DOMAIN_OA) {
-		places[c].fpfn = 0;
-		places[c].lpfn = 0;
+		places[c].param1 = 0;
+		places[c].param2 = 0;
 		places[c].mem_type = AMDGPU_PL_OA;
 		places[c].flags = 0;
 		c++;
 	}
 
 	if (!c) {
-		places[c].fpfn = 0;
-		places[c].lpfn = 0;
+		places[c].param1 = 0;
+		places[c].param2 = 0;
 		places[c].mem_type = TTM_PL_SYSTEM;
 		places[c].flags = 0;
 		c++;
@@ -465,8 +465,8 @@ int amdgpu_bo_create_kernel_at(struct amdgpu_device *adev,
 	ttm_resource_free(&(*bo_ptr)->tbo, &(*bo_ptr)->tbo.resource);
 
 	for (i = 0; i < (*bo_ptr)->placement.num_placement; ++i) {
-		(*bo_ptr)->placements[i].fpfn = offset >> PAGE_SHIFT;
-		(*bo_ptr)->placements[i].lpfn = (offset + size) >> PAGE_SHIFT;
+		(*bo_ptr)->placements[i].param1 = offset >> PAGE_SHIFT;
+		(*bo_ptr)->placements[i].param2 = (offset + size) >> PAGE_SHIFT;
 	}
 	r = ttm_bo_mem_space(&(*bo_ptr)->tbo, &(*bo_ptr)->placement,
 			     &(*bo_ptr)->tbo.resource, &ctx);
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
index 2740de94e93c..000720287ca6 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
@@ -96,8 +96,8 @@ static void amdgpu_evict_flags(struct ttm_buffer_object *bo,
 	struct amdgpu_device *adev = amdgpu_ttm_adev(bo->bdev);
 	struct amdgpu_bo *abo;
 	static const struct ttm_place placements = {
-		.fpfn = 0,
-		.lpfn = 0,
+		.param1 = 0,
+		.param2 = 0,
 		.mem_type = TTM_PL_SYSTEM,
 		.flags = 0
 	};
@@ -147,8 +147,8 @@ static void amdgpu_evict_flags(struct ttm_buffer_object *bo,
 			amdgpu_bo_placement_from_domain(abo, AMDGPU_GEM_DOMAIN_VRAM |
 							AMDGPU_GEM_DOMAIN_GTT |
 							AMDGPU_GEM_DOMAIN_CPU);
-			abo->placements[0].fpfn = adev->gmc.visible_vram_size >> PAGE_SHIFT;
-			abo->placements[0].lpfn = 0;
+			abo->placements[0].param1 = adev->gmc.visible_vram_size >> PAGE_SHIFT;
+			abo->placements[0].param2 = 0;
 			abo->placements[0].flags |= TTM_PL_FLAG_DESIRED;
 		} else {
 			/* Move to GTT memory */
@@ -580,8 +580,8 @@ static int amdgpu_bo_move(struct ttm_buffer_object *bo, bool evict,
 	      new_mem->mem_type == TTM_PL_VRAM) ||
 	     (old_mem->mem_type == TTM_PL_VRAM &&
 	      new_mem->mem_type == TTM_PL_SYSTEM))) {
-		hop->fpfn = 0;
-		hop->lpfn = 0;
+		hop->param1 = 0;
+		hop->param2 = 0;
 		hop->mem_type = TTM_PL_TT;
 		hop->flags = TTM_PL_FLAG_TEMPORARY;
 		return -EMULTIHOP;
@@ -988,8 +988,8 @@ int amdgpu_ttm_alloc_gart(struct ttm_buffer_object *bo)
 	/* allocate GART space */
 	placement.num_placement = 1;
 	placement.placement = &placements;
-	placements.fpfn = 0;
-	placements.lpfn = adev->gmc.gart_size >> PAGE_SHIFT;
+	placements.param1 = 0;
+	placements.param2 = adev->gmc.gart_size >> PAGE_SHIFT;
 	placements.mem_type = TTM_PL_TT;
 	placements.flags = bo->resource->placement;
 
@@ -1956,8 +1956,8 @@ static int amdgpu_ttm_alloc_mmio_remap_bo(struct amdgpu_device *adev)
 	 */
 	placement.num_placement = 1;
 	placement.placement = &placements;
-	placements.fpfn = 0;
-	placements.lpfn = 0;
+	placements.param1 = 0;
+	placements.param2 = 0;
 	placements.mem_type = AMDGPU_PL_MMIO_REMAP;
 	placements.flags = 0;
 	/* Force the BO into the fixed MMIO_REMAP placement */
@@ -2097,7 +2097,7 @@ int amdgpu_ttm_init(struct amdgpu_device *adev)
 		}
 	}
 
-	/* Change the size here instead of the init above so only lpfn is affected */
+	/* Change the size here instead of the init above so only param2 is affected */
 	amdgpu_ttm_disable_buffer_funcs(adev);
 #ifdef CONFIG_64BIT
 #ifdef CONFIG_X86
@@ -2361,7 +2361,7 @@ void amdgpu_ttm_enable_buffer_funcs(struct amdgpu_device *adev)
 		}
 	}
 
-	/* this just adjusts TTM size idea, which sets lpfn to the correct value */
+	/* this just adjusts TTM size idea, which sets param2 to the correct value */
 	man->size = adev->gmc.real_vram_size;
 	adev->mman.buffer_funcs_enabled = true;
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
index 3a3bc0d370fa..5cb4ca4f60aa 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
@@ -550,8 +550,8 @@ static void amdgpu_uvd_force_into_uvd_segment(struct amdgpu_bo *abo)
 	int i;
 
 	for (i = 0; i < abo->placement.num_placement; ++i) {
-		abo->placements[i].fpfn = 0 >> PAGE_SHIFT;
-		abo->placements[i].lpfn = (256 * 1024 * 1024) >> PAGE_SHIFT;
+		abo->placements[i].param1 = 0 >> PAGE_SHIFT;
+		abo->placements[i].param2 = (256 * 1024 * 1024) >> PAGE_SHIFT;
 		if (abo->placements[i].mem_type == TTM_PL_VRAM)
 			abo->placements[i].flags |= TTM_PL_FLAG_CONTIGUOUS;
 	}
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c
index efdebd9c0a1f..1c0f2a2bea9e 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c
@@ -628,7 +628,7 @@ static int amdgpu_vce_validate_bo(struct amdgpu_cs_parser *p,
 	int64_t offset = ((uint64_t)size) * ((int64_t)index);
 	struct ttm_operation_ctx ctx = { false, false };
 	struct amdgpu_bo_va_mapping *mapping;
-	unsigned int i, fpfn, lpfn;
+	unsigned int i, start, end;
 	struct amdgpu_bo *bo;
 	uint64_t addr;
 	int r;
@@ -637,11 +637,11 @@ static int amdgpu_vce_validate_bo(struct amdgpu_cs_parser *p,
 	       ((uint64_t)amdgpu_ib_get_value(ib, hi)) << 32;
 	if (index >= 0) {
 		addr += offset;
-		fpfn = PAGE_ALIGN(offset) >> PAGE_SHIFT;
-		lpfn = 0x100000000ULL >> PAGE_SHIFT;
+		start = PAGE_ALIGN(offset) >> PAGE_SHIFT;
+		end = 0x100000000ULL >> PAGE_SHIFT;
 	} else {
-		fpfn = 0;
-		lpfn = (0x100000000ULL - PAGE_ALIGN(offset)) >> PAGE_SHIFT;
+		start = 0;
+		end = (0x100000000ULL - PAGE_ALIGN(offset)) >> PAGE_SHIFT;
 	}
 
 	r = amdgpu_cs_find_mapping(p, addr, &bo, &mapping);
@@ -652,9 +652,9 @@ static int amdgpu_vce_validate_bo(struct amdgpu_cs_parser *p,
 	}
 
 	for (i = 0; i < bo->placement.num_placement; ++i) {
-		bo->placements[i].fpfn = max(bo->placements[i].fpfn, fpfn);
-		bo->placements[i].lpfn = bo->placements[i].lpfn ?
-			min(bo->placements[i].lpfn, lpfn) : lpfn;
+		bo->placements[i].param1 = max(bo->placements[i].param1, start);
+		bo->placements[i].param2 = bo->placements[i].param2 ?
+			min(bo->placements[i].param2, end) : end;
 	}
 	return ttm_bo_validate(&bo->tbo, &bo->placement, &ctx);
 }
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
index a99d01f9dc75..ed3aeb1a2573 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
@@ -1784,7 +1784,7 @@ static int amdgpu_vm_verify_parameters(struct amdgpu_device *adev,
 					  uint64_t offset,
 					  uint64_t size)
 {
-	uint64_t tmp, lpfn;
+	uint64_t tmp, end;
 
 	if (saddr & AMDGPU_GPU_PAGE_MASK
 	    || offset & AMDGPU_GPU_PAGE_MASK
@@ -1801,8 +1801,8 @@ static int amdgpu_vm_verify_parameters(struct amdgpu_device *adev,
 		return -EINVAL;
 
 	/* Ensure last pfn not exceed max_pfn */
-	lpfn = (saddr + size - 1) >> AMDGPU_GPU_PAGE_SHIFT;
-	if (lpfn >= adev->vm_manager.max_pfn)
+	end = (saddr + size - 1) >> AMDGPU_GPU_PAGE_SHIFT;
+	if (end >= adev->vm_manager.max_pfn)
 		return -EINVAL;
 
 	return 0;
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
index 2a241a5b12c4..0b09e6f55b56 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
@@ -449,18 +449,18 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_manager *man,
 	struct amdgpu_bo *bo = ttm_to_amdgpu_bo(tbo);
 	u64 vis_usage = 0, max_bytes, min_block_size;
 	struct amdgpu_vram_mgr_resource *vres;
-	u64 size, remaining_size, lpfn, fpfn;
+	u64 size, remaining_size, end, start;
 	unsigned int adjust_dcc_size = 0;
 	struct gpu_buddy *mm = &mgr->mm;
 	struct gpu_buddy_block *block;
 	unsigned long pages_per_block;
 	int r;
 
-	lpfn = (u64)place->lpfn << PAGE_SHIFT;
-	if (!lpfn || lpfn > man->size)
-		lpfn = man->size;
+	end = (u64)place->param2 << PAGE_SHIFT;
+	if (!end || end > man->size)
+		end = man->size;
 
-	fpfn = (u64)place->fpfn << PAGE_SHIFT;
+	start = (u64)place->param1 << PAGE_SHIFT;
 
 	max_bytes = adev->gmc.mc_vram_size;
 	if (tbo->type != ttm_bo_type_kernel)
@@ -502,7 +502,7 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_manager *man,
 	if (bo->flags & AMDGPU_GEM_CREATE_VRAM_CLEARED)
 		vres->flags |= GPU_BUDDY_CLEAR_ALLOCATION;
 
-	if (fpfn || lpfn != mgr->mm.size)
+	if (start || end != mgr->mm.size)
 		/* Allocate blocks in desired range */
 		vres->flags |= GPU_BUDDY_RANGE_ALLOCATION;
 
@@ -537,8 +537,8 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_manager *man,
 
 		BUG_ON(min_block_size < mm->chunk_size);
 
-		r = gpu_buddy_alloc_blocks(mm, fpfn,
-					   lpfn,
+		r = gpu_buddy_alloc_blocks(mm, start,
+					   end,
 					   size,
 					   min_block_size,
 					   &vres->blocks,
@@ -820,13 +820,13 @@ static bool amdgpu_vram_mgr_intersects(struct ttm_resource_manager *man,
 
 	/* Check each drm buddy block individually */
 	list_for_each_entry(block, &mgr->blocks, link) {
-		unsigned long fpfn =
+		unsigned long start =
 			amdgpu_vram_mgr_block_start(block) >> PAGE_SHIFT;
-		unsigned long lpfn = fpfn +
+		unsigned long end = start +
 			(amdgpu_vram_mgr_block_size(block) >> PAGE_SHIFT);
 
-		if (place->fpfn < lpfn &&
-		    (!place->lpfn || place->lpfn > fpfn))
+		if (place->param1 < end &&
+		    (!place->param2 || place->param2 > start))
 			return true;
 	}
 
@@ -853,13 +853,13 @@ static bool amdgpu_vram_mgr_compatible(struct ttm_resource_manager *man,
 
 	/* Check each drm buddy block individually */
 	list_for_each_entry(block, &mgr->blocks, link) {
-		unsigned long fpfn =
+		unsigned long start =
 			amdgpu_vram_mgr_block_start(block) >> PAGE_SHIFT;
-		unsigned long lpfn = fpfn +
+		unsigned long end = start +
 			(amdgpu_vram_mgr_block_size(block) >> PAGE_SHIFT);
 
-		if (fpfn < place->fpfn ||
-		    (place->lpfn && lpfn > place->lpfn))
+		if (start < place->param1 ||
+		    (place->param2 && end > place->param2))
 			return false;
 	}
 
diff --git a/drivers/gpu/drm/amd/amdkfd/kfd_svm.c b/drivers/gpu/drm/amd/amdkfd/kfd_svm.c
index 35ec67d9739b..98cb68fb1e9e 100644
--- a/drivers/gpu/drm/amd/amdkfd/kfd_svm.c
+++ b/drivers/gpu/drm/amd/amdkfd/kfd_svm.c
@@ -1477,7 +1477,7 @@ svm_range_map_to_gpu(struct kfd_process_device *pdd, struct svm_range *prange,
 
 
 		/* For dGPU mode, we use same vm_manager to allocate VRAM for
-		 * different memory partition based on fpfn/lpfn, we should use
+		 * different memory partition based on param1/param2, we should use
 		 * same vm_manager.vram_base_offset regardless memory partition.
 		 */
 		gpu_start = last_start * AMDGPU_GPU_PAGES_IN_CPU_PAGE;
diff --git a/drivers/gpu/drm/amd/ras/ras_mgr/amdgpu_ras_cmd.c b/drivers/gpu/drm/amd/ras/ras_mgr/amdgpu_ras_cmd.c
index c22e53e84207..c1d152faf30d 100644
--- a/drivers/gpu/drm/amd/ras/ras_mgr/amdgpu_ras_cmd.c
+++ b/drivers/gpu/drm/amd/ras/ras_mgr/amdgpu_ras_cmd.c
@@ -145,7 +145,7 @@ static int amdgpu_ras_get_ras_safe_fb_addr_ranges(struct ras_core_context *ras_c
 
 	mem_ranges = adev->gmc.mem_partitions;
 	for (i = 0; i < adev->gmc.num_mem_partitions; i++) {
-		ranges->range[i].start = mem_ranges[i].range.fpfn << AMDGPU_GPU_PAGE_SHIFT;
+		ranges->range[i].start = mem_ranges[i].range.param1 << AMDGPU_GPU_PAGE_SHIFT;
 		ranges->range[i].size = mem_ranges[i].size;
 		ranges->range[i].idx = i;
 	}
diff --git a/drivers/gpu/drm/drm_gem_vram_helper.c b/drivers/gpu/drm/drm_gem_vram_helper.c
index bca802ccddee..89ae283a0ece 100644
--- a/drivers/gpu/drm/drm_gem_vram_helper.c
+++ b/drivers/gpu/drm/drm_gem_vram_helper.c
@@ -154,8 +154,8 @@ static void drm_gem_vram_placement(struct drm_gem_vram_object *gbo,
 	gbo->placement.num_placement = c;
 
 	for (i = 0; i < c; ++i) {
-		gbo->placements[i].fpfn = 0;
-		gbo->placements[i].lpfn = 0;
+		gbo->placements[i].param1 = 0;
+		gbo->placements[i].param2 = 0;
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index de70517b4ef2..b64402a788b5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -58,8 +58,8 @@ struct i915_ttm_tt {
 };
 
 static const struct ttm_place sys_placement_flags = {
-	.fpfn = 0,
-	.lpfn = 0,
+	.param1 = 0,
+	.param2 = 0,
 	.mem_type = I915_PL_SYSTEM,
 	.flags = 0,
 };
@@ -140,17 +140,17 @@ i915_ttm_place_from_region(const struct intel_memory_region *mr,
 	if (flags & I915_BO_ALLOC_CONTIGUOUS)
 		place->flags |= TTM_PL_FLAG_CONTIGUOUS;
 	if (offset != I915_BO_INVALID_OFFSET) {
-		WARN_ON(overflows_type(offset >> PAGE_SHIFT, place->fpfn));
-		place->fpfn = offset >> PAGE_SHIFT;
-		WARN_ON(overflows_type(place->fpfn + (size >> PAGE_SHIFT), place->lpfn));
-		place->lpfn = place->fpfn + (size >> PAGE_SHIFT);
+		WARN_ON(overflows_type(offset >> PAGE_SHIFT, place->param1));
+		place->param1 = offset >> PAGE_SHIFT;
+		WARN_ON(overflows_type(place->param1 + (size >> PAGE_SHIFT), place->param2));
+		place->param2 = place->param1 + (size >> PAGE_SHIFT);
 	} else if (resource_size(&mr->io) && resource_size(&mr->io) < mr->total) {
 		if (flags & I915_BO_ALLOC_GPU_ONLY) {
 			place->flags |= TTM_PL_FLAG_TOPDOWN;
 		} else {
-			place->fpfn = 0;
-			WARN_ON(overflows_type(resource_size(&mr->io) >> PAGE_SHIFT, place->lpfn));
-			place->lpfn = resource_size(&mr->io) >> PAGE_SHIFT;
+			place->param1 = 0;
+			WARN_ON(overflows_type(resource_size(&mr->io) >> PAGE_SHIFT, place->param2));
+			place->param2 = resource_size(&mr->io) >> PAGE_SHIFT;
 		}
 	}
 }
diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
index 10df50a54e88..90ad831ceba3 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
@@ -40,14 +40,14 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 	struct i915_ttm_buddy_manager *bman = to_buddy_manager(man);
 	struct i915_ttm_buddy_resource *bman_res;
 	struct gpu_buddy *mm = &bman->mm;
-	unsigned long n_pages, lpfn;
+	unsigned long n_pages, end;
 	u64 min_page_size;
 	u64 size;
 	int err;
 
-	lpfn = place->lpfn;
-	if (!lpfn)
-		lpfn = man->size;
+	end = place->param2;
+	if (!end)
+		end = man->size;
 
 	bman_res = kzalloc_obj(*bman_res);
 	if (!bman_res)
@@ -63,7 +63,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 	if (place->flags & TTM_PL_FLAG_CONTIGUOUS)
 		bman_res->flags |= GPU_BUDDY_CONTIGUOUS_ALLOCATION;
 
-	if (place->fpfn || lpfn != man->size)
+	if (place->param1 || end != man->size)
 		bman_res->flags |= GPU_BUDDY_RANGE_ALLOCATION;
 
 	GEM_BUG_ON(!bman_res->base.size);
@@ -76,7 +76,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 	GEM_BUG_ON(min_page_size < mm->chunk_size);
 	GEM_BUG_ON(!IS_ALIGNED(size, min_page_size));
 
-	if (size > lpfn << PAGE_SHIFT) {
+	if (size > end << PAGE_SHIFT) {
 		err = -E2BIG;
 		goto err_free_res;
 	}
@@ -84,14 +84,14 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 	n_pages = size >> ilog2(mm->chunk_size);
 
 	mutex_lock(&bman->lock);
-	if (lpfn <= bman->visible_size && n_pages > bman->visible_avail) {
+	if (end <= bman->visible_size && n_pages > bman->visible_avail) {
 		mutex_unlock(&bman->lock);
 		err = -ENOSPC;
 		goto err_free_res;
 	}
 
-	err = gpu_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT,
-				     (u64)lpfn << PAGE_SHIFT,
+	err = gpu_buddy_alloc_blocks(mm, (u64)place->param1 << PAGE_SHIFT,
+				     (u64)end << PAGE_SHIFT,
 				     (u64)n_pages << PAGE_SHIFT,
 				     min_page_size,
 				     &bman_res->blocks,
@@ -99,7 +99,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 	if (unlikely(err))
 		goto err_free_blocks;
 
-	if (lpfn <= bman->visible_size) {
+	if (end <= bman->visible_size) {
 		bman_res->used_visible_size = PFN_UP(bman_res->base.size);
 	} else {
 		struct gpu_buddy_block *block;
@@ -160,28 +160,28 @@ static bool i915_ttm_buddy_man_intersects(struct ttm_resource_manager *man,
 	struct gpu_buddy *mm = &bman->mm;
 	struct gpu_buddy_block *block;
 
-	if (!place->fpfn && !place->lpfn)
+	if (!place->param1 && !place->param2)
 		return true;
 
-	GEM_BUG_ON(!place->lpfn);
+	GEM_BUG_ON(!place->param2);
 
 	/*
 	 * If we just want something mappable then we can quickly check
 	 * if the current victim resource is using any of the CPU
 	 * visible portion.
 	 */
-	if (!place->fpfn &&
-	    place->lpfn == i915_ttm_buddy_man_visible_size(man))
+	if (!place->param1 &&
+	    place->param2 == i915_ttm_buddy_man_visible_size(man))
 		return bman_res->used_visible_size > 0;
 
 	/* Check each drm buddy block individually */
 	list_for_each_entry(block, &bman_res->blocks, link) {
-		unsigned long fpfn =
+		unsigned long start =
 			gpu_buddy_block_offset(block) >> PAGE_SHIFT;
-		unsigned long lpfn = fpfn +
+		unsigned long end = start +
 			(gpu_buddy_block_size(mm, block) >> PAGE_SHIFT);
 
-		if (place->fpfn < lpfn && place->lpfn > fpfn)
+		if (place->param1 < end && place->param2 > start)
 			return true;
 	}
 
@@ -198,23 +198,23 @@ static bool i915_ttm_buddy_man_compatible(struct ttm_resource_manager *man,
 	struct gpu_buddy *mm = &bman->mm;
 	struct gpu_buddy_block *block;
 
-	if (!place->fpfn && !place->lpfn)
+	if (!place->param1 && !place->param2)
 		return true;
 
-	GEM_BUG_ON(!place->lpfn);
+	GEM_BUG_ON(!place->param2);
 
-	if (!place->fpfn &&
-	    place->lpfn == i915_ttm_buddy_man_visible_size(man))
+	if (!place->param1 &&
+	    place->param2 == i915_ttm_buddy_man_visible_size(man))
 		return bman_res->used_visible_size == PFN_UP(res->size);
 
 	/* Check each drm buddy block individually */
 	list_for_each_entry(block, &bman_res->blocks, link) {
-		unsigned long fpfn =
+		unsigned long start =
 			gpu_buddy_block_offset(block) >> PAGE_SHIFT;
-		unsigned long lpfn = fpfn +
+		unsigned long end = start +
 			(gpu_buddy_block_size(mm, block) >> PAGE_SHIFT);
 
-		if (fpfn < place->fpfn || lpfn > place->lpfn)
+		if (start < place->param1 || end > place->param2)
 			return false;
 	}
 
@@ -373,7 +373,7 @@ int i915_ttm_buddy_man_reserve(struct ttm_resource_manager *man,
 {
 	struct i915_ttm_buddy_manager *bman = to_buddy_manager(man);
 	struct gpu_buddy *mm = &bman->mm;
-	unsigned long fpfn = start >> PAGE_SHIFT;
+	unsigned long start_pfn = start >> PAGE_SHIFT;
 	unsigned long flags = 0;
 	int ret;
 
@@ -386,9 +386,9 @@ int i915_ttm_buddy_man_reserve(struct ttm_resource_manager *man,
 				     &bman->reserved,
 				     flags);
 
-	if (fpfn < bman->visible_size) {
-		unsigned long lpfn = fpfn + (size >> PAGE_SHIFT);
-		unsigned long visible = min(lpfn, bman->visible_size) - fpfn;
+	if (start_pfn < bman->visible_size) {
+		unsigned long end_pfn = start_pfn + (size >> PAGE_SHIFT);
+		unsigned long visible = min(end_pfn, bman->visible_size) - start_pfn;
 
 		bman->visible_reserved += visible;
 		bman->visible_avail -= visible;
diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
index 47a69aad5c3f..35f6569e918c 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.c
+++ b/drivers/gpu/drm/i915/intel_region_ttm.c
@@ -209,26 +209,26 @@ intel_region_ttm_resource_alloc(struct intel_memory_region *mem,
 	if (flags & I915_BO_ALLOC_CONTIGUOUS)
 		place.flags |= TTM_PL_FLAG_CONTIGUOUS;
 	if (offset != I915_BO_INVALID_OFFSET) {
-		if (WARN_ON(overflows_type(offset >> PAGE_SHIFT, place.fpfn))) {
+		if (WARN_ON(overflows_type(offset >> PAGE_SHIFT, place.param1))) {
 			ret = -E2BIG;
 			goto out;
 		}
-		place.fpfn = offset >> PAGE_SHIFT;
-		if (WARN_ON(overflows_type(place.fpfn + (size >> PAGE_SHIFT), place.lpfn))) {
+		place.param1 = offset >> PAGE_SHIFT;
+		if (WARN_ON(overflows_type(place.param1 + (size >> PAGE_SHIFT), place.param2))) {
 			ret = -E2BIG;
 			goto out;
 		}
-		place.lpfn = place.fpfn + (size >> PAGE_SHIFT);
+		place.param2 = place.param1 + (size >> PAGE_SHIFT);
 	} else if (resource_size(&mem->io) && resource_size(&mem->io) < mem->total) {
 		if (flags & I915_BO_ALLOC_GPU_ONLY) {
 			place.flags |= TTM_PL_FLAG_TOPDOWN;
 		} else {
-			place.fpfn = 0;
-			if (WARN_ON(overflows_type(resource_size(&mem->io) >> PAGE_SHIFT, place.lpfn))) {
+			place.param1 = 0;
+			if (WARN_ON(overflows_type(resource_size(&mem->io) >> PAGE_SHIFT, place.param2))) {
 				ret = -E2BIG;
 				goto out;
 			}
-			place.lpfn = resource_size(&mem->io) >> PAGE_SHIFT;
+			place.param2 = resource_size(&mem->io) >> PAGE_SHIFT;
 		}
 	}
 
diff --git a/drivers/gpu/drm/loongson/lsdc_ttm.c b/drivers/gpu/drm/loongson/lsdc_ttm.c
index d7441d96a0dc..2f2aa53e7db6 100644
--- a/drivers/gpu/drm/loongson/lsdc_ttm.c
+++ b/drivers/gpu/drm/loongson/lsdc_ttm.c
@@ -79,8 +79,8 @@ static void lsdc_bo_set_placement(struct lsdc_bo *lbo, u32 domain)
 	lbo->placement.num_placement = c;
 
 	for (i = 0; i < c; ++i) {
-		lbo->placements[i].fpfn = 0;
-		lbo->placements[i].lpfn = 0;
+		lbo->placements[i].param1 = 0;
+		lbo->placements[i].param2 = 0;
 	}
 }
 
diff --git a/drivers/gpu/drm/nouveau/nouveau_bo.c b/drivers/gpu/drm/nouveau/nouveau_bo.c
index 0e8de6d4b36f..d50cf1d5402d 100644
--- a/drivers/gpu/drm/nouveau/nouveau_bo.c
+++ b/drivers/gpu/drm/nouveau/nouveau_bo.c
@@ -483,7 +483,7 @@ set_placement_range(struct nouveau_bo *nvbo, uint32_t domain)
 {
 	struct nouveau_drm *drm = nouveau_bdev(nvbo->bo.bdev);
 	u64 vram_size = drm->client.device.info.ram_size;
-	unsigned i, fpfn, lpfn;
+	unsigned i, start, end;
 
 	if (drm->client.device.info.family == NV_DEVICE_INFO_V0_CELSIUS &&
 	    nvbo->mode && (domain & NOUVEAU_GEM_DOMAIN_VRAM) &&
@@ -495,15 +495,15 @@ set_placement_range(struct nouveau_bo *nvbo, uint32_t domain)
 		 * at the same time.
 		 */
 		if (nvbo->zeta) {
-			fpfn = (vram_size / 2) >> PAGE_SHIFT;
-			lpfn = ~0;
+			start = (vram_size / 2) >> PAGE_SHIFT;
+			end = ~0;
 		} else {
-			fpfn = 0;
-			lpfn = (vram_size / 2) >> PAGE_SHIFT;
+			start = 0;
+			end = (vram_size / 2) >> PAGE_SHIFT;
 		}
 		for (i = 0; i < nvbo->placement.num_placement; ++i) {
-			nvbo->placements[i].fpfn = fpfn;
-			nvbo->placements[i].lpfn = lpfn;
+			nvbo->placements[i].param1 = start;
+			nvbo->placements[i].param2 = end;
 		}
 	}
 }
@@ -1198,8 +1198,8 @@ nouveau_bo_move(struct ttm_buffer_object *bo, bool evict,
 		     new_reg->mem_type == TTM_PL_VRAM) ||
 		    (old_reg->mem_type == TTM_PL_VRAM &&
 		     new_reg->mem_type == TTM_PL_SYSTEM)) {
-			hop->fpfn = 0;
-			hop->lpfn = 0;
+			hop->param1 = 0;
+			hop->param2 = 0;
 			hop->mem_type = TTM_PL_TT;
 			hop->flags = 0;
 			return -EMULTIHOP;
@@ -1398,8 +1398,8 @@ vm_fault_t nouveau_ttm_fault_reserve_notify(struct ttm_buffer_object *bo)
 			return 0;
 
 		for (i = 0; i < nvbo->placement.num_placement; ++i) {
-			nvbo->placements[i].fpfn = 0;
-			nvbo->placements[i].lpfn = mappable;
+			nvbo->placements[i].param1 = 0;
+			nvbo->placements[i].param2 = mappable;
 		}
 
 		nouveau_bo_placement_set(nvbo, NOUVEAU_GEM_DOMAIN_VRAM, 0);
diff --git a/drivers/gpu/drm/nouveau/nouveau_mem.c b/drivers/gpu/drm/nouveau/nouveau_mem.c
index b26c521166f1..87d9afbbe99f 100644
--- a/drivers/gpu/drm/nouveau/nouveau_mem.c
+++ b/drivers/gpu/drm/nouveau/nouveau_mem.c
@@ -195,8 +195,8 @@ nouveau_mem_intersects(struct ttm_resource *res,
 	u32 num_pages = PFN_UP(size);
 
 	/* Don't evict BOs outside of the requested placement range */
-	if (place->fpfn >= (res->start + num_pages) ||
-	    (place->lpfn && place->lpfn <= res->start))
+	if (place->param1 >= (res->start + num_pages) ||
+	    (place->param2 && place->param2 <= res->start))
 		return false;
 
 	return true;
@@ -209,8 +209,8 @@ nouveau_mem_compatible(struct ttm_resource *res,
 {
 	u32 num_pages = PFN_UP(size);
 
-	if (res->start < place->fpfn ||
-	    (place->lpfn && (res->start + num_pages) > place->lpfn))
+	if (res->start < place->param1 ||
+	    (place->param2 && (res->start + num_pages) > place->param2))
 		return false;
 
 	return true;
diff --git a/drivers/gpu/drm/qxl/qxl_object.c b/drivers/gpu/drm/qxl/qxl_object.c
index 313f6c30cac8..7873bd349080 100644
--- a/drivers/gpu/drm/qxl/qxl_object.c
+++ b/drivers/gpu/drm/qxl/qxl_object.c
@@ -83,8 +83,8 @@ void qxl_ttm_placement_from_domain(struct qxl_bo *qbo, u32 domain)
 	}
 	qbo->placement.num_placement = c;
 	for (i = 0; i < c; ++i) {
-		qbo->placements[i].fpfn = 0;
-		qbo->placements[i].lpfn = 0;
+		qbo->placements[i].param1 = 0;
+		qbo->placements[i].param2 = 0;
 	}
 }
 
diff --git a/drivers/gpu/drm/qxl/qxl_ttm.c b/drivers/gpu/drm/qxl/qxl_ttm.c
index 5d495c4798a3..fa43e31ac3d1 100644
--- a/drivers/gpu/drm/qxl/qxl_ttm.c
+++ b/drivers/gpu/drm/qxl/qxl_ttm.c
@@ -53,8 +53,8 @@ static void qxl_evict_flags(struct ttm_buffer_object *bo,
 {
 	struct qxl_bo *qbo;
 	static const struct ttm_place placements = {
-		.fpfn = 0,
-		.lpfn = 0,
+		.param1 = 0,
+		.param2 = 0,
 		.mem_type = TTM_PL_SYSTEM,
 		.flags = 0
 	};
diff --git a/drivers/gpu/drm/radeon/radeon_object.c b/drivers/gpu/drm/radeon/radeon_object.c
index a0fc0801abb0..60ec1c9a5de4 100644
--- a/drivers/gpu/drm/radeon/radeon_object.c
+++ b/drivers/gpu/drm/radeon/radeon_object.c
@@ -84,30 +84,30 @@ void radeon_ttm_placement_from_domain(struct radeon_bo *rbo, u32 domain)
 		 */
 		if ((rbo->flags & RADEON_GEM_NO_CPU_ACCESS) &&
 		    rbo->rdev->mc.visible_vram_size < rbo->rdev->mc.real_vram_size) {
-			rbo->placements[c].fpfn =
+			rbo->placements[c].param1 =
 				rbo->rdev->mc.visible_vram_size >> PAGE_SHIFT;
 			rbo->placements[c].mem_type = TTM_PL_VRAM;
 			rbo->placements[c++].flags = 0;
 		}
 
-		rbo->placements[c].fpfn = 0;
+		rbo->placements[c].param1 = 0;
 		rbo->placements[c].mem_type = TTM_PL_VRAM;
 		rbo->placements[c++].flags = 0;
 	}
 
 	if (domain & RADEON_GEM_DOMAIN_GTT) {
-		rbo->placements[c].fpfn = 0;
+		rbo->placements[c].param1 = 0;
 		rbo->placements[c].mem_type = TTM_PL_TT;
 		rbo->placements[c++].flags = 0;
 	}
 
 	if (domain & RADEON_GEM_DOMAIN_CPU) {
-		rbo->placements[c].fpfn = 0;
+		rbo->placements[c].param1 = 0;
 		rbo->placements[c].mem_type = TTM_PL_SYSTEM;
 		rbo->placements[c++].flags = 0;
 	}
 	if (!c) {
-		rbo->placements[c].fpfn = 0;
+		rbo->placements[c].param1 = 0;
 		rbo->placements[c].mem_type = TTM_PL_SYSTEM;
 		rbo->placements[c++].flags = 0;
 	}
@@ -117,11 +117,11 @@ void radeon_ttm_placement_from_domain(struct radeon_bo *rbo, u32 domain)
 	for (i = 0; i < c; ++i) {
 		if ((rbo->flags & RADEON_GEM_CPU_ACCESS) &&
 		    (rbo->placements[i].mem_type == TTM_PL_VRAM) &&
-		    !rbo->placements[i].fpfn)
-			rbo->placements[i].lpfn =
+		    !rbo->placements[i].param1)
+			rbo->placements[i].param2 =
 				rbo->rdev->mc.visible_vram_size >> PAGE_SHIFT;
 		else
-			rbo->placements[i].lpfn = 0;
+			rbo->placements[i].param2 = 0;
 	}
 }
 
@@ -307,10 +307,10 @@ int radeon_bo_pin_restricted(struct radeon_bo *bo, u32 domain, u64 max_offset,
 		if ((bo->placements[i].mem_type == TTM_PL_VRAM) &&
 		    !(bo->flags & RADEON_GEM_NO_CPU_ACCESS) &&
 		    (!max_offset || max_offset > bo->rdev->mc.visible_vram_size))
-			bo->placements[i].lpfn =
+			bo->placements[i].param2 =
 				bo->rdev->mc.visible_vram_size >> PAGE_SHIFT;
 		else
-			bo->placements[i].lpfn = max_offset >> PAGE_SHIFT;
+			bo->placements[i].param2 = max_offset >> PAGE_SHIFT;
 	}
 
 	r = ttm_bo_validate(&bo->tbo, &bo->placement, &ctx);
@@ -719,7 +719,7 @@ vm_fault_t radeon_bo_fault_reserve_notify(struct ttm_buffer_object *bo)
 	struct ttm_operation_ctx ctx = { false, false };
 	struct radeon_device *rdev;
 	struct radeon_bo *rbo;
-	unsigned long offset, size, lpfn;
+	unsigned long offset, size, end;
 	int i, r;
 
 	if (!radeon_ttm_bo_is_radeon_bo(bo))
@@ -741,12 +741,12 @@ vm_fault_t radeon_bo_fault_reserve_notify(struct ttm_buffer_object *bo)
 
 	/* hurrah the memory is not visible ! */
 	radeon_ttm_placement_from_domain(rbo, RADEON_GEM_DOMAIN_VRAM);
-	lpfn =	rdev->mc.visible_vram_size >> PAGE_SHIFT;
+	end =	rdev->mc.visible_vram_size >> PAGE_SHIFT;
 	for (i = 0; i < rbo->placement.num_placement; i++) {
 		/* Force into visible VRAM */
 		if ((rbo->placements[i].mem_type == TTM_PL_VRAM) &&
-		    (!rbo->placements[i].lpfn || rbo->placements[i].lpfn > lpfn))
-			rbo->placements[i].lpfn = lpfn;
+		    (!rbo->placements[i].param2 || rbo->placements[i].param2 > end))
+			rbo->placements[i].param2 = end;
 	}
 	r = ttm_bo_validate(bo, &rbo->placement, &ctx);
 	if (unlikely(r == -ENOMEM)) {
diff --git a/drivers/gpu/drm/radeon/radeon_ttm.c b/drivers/gpu/drm/radeon/radeon_ttm.c
index e7ab8162ac69..7456ede8bffb 100644
--- a/drivers/gpu/drm/radeon/radeon_ttm.c
+++ b/drivers/gpu/drm/radeon/radeon_ttm.c
@@ -83,8 +83,8 @@ static void radeon_evict_flags(struct ttm_buffer_object *bo,
 				struct ttm_placement *placement)
 {
 	static const struct ttm_place placements = {
-		.fpfn = 0,
-		.lpfn = 0,
+		.param1 = 0,
+		.param2 = 0,
 		.mem_type = TTM_PL_SYSTEM,
 		.flags = 0
 	};
@@ -103,7 +103,7 @@ static void radeon_evict_flags(struct ttm_buffer_object *bo,
 			radeon_ttm_placement_from_domain(rbo, RADEON_GEM_DOMAIN_CPU);
 		else if (rbo->rdev->mc.visible_vram_size < rbo->rdev->mc.real_vram_size &&
 			 bo->resource->start < (rbo->rdev->mc.visible_vram_size >> PAGE_SHIFT)) {
-			unsigned fpfn = rbo->rdev->mc.visible_vram_size >> PAGE_SHIFT;
+			unsigned start = rbo->rdev->mc.visible_vram_size >> PAGE_SHIFT;
 			int i;
 
 			/* Try evicting to the CPU inaccessible part of VRAM
@@ -115,8 +115,8 @@ static void radeon_evict_flags(struct ttm_buffer_object *bo,
 							 RADEON_GEM_DOMAIN_GTT);
 			for (i = 0; i < rbo->placement.num_placement; i++) {
 				if (rbo->placements[i].mem_type == TTM_PL_VRAM) {
-					if (rbo->placements[i].fpfn < fpfn)
-						rbo->placements[i].fpfn = fpfn;
+					if (rbo->placements[i].param1 < start)
+						rbo->placements[i].param1 = start;
 					rbo->placements[0].flags |= TTM_PL_FLAG_DESIRED;
 				}
 			}
@@ -228,8 +228,8 @@ static int radeon_bo_move(struct ttm_buffer_object *bo, bool evict,
 		     new_mem->mem_type == TTM_PL_VRAM) ||
 		    (old_mem->mem_type == TTM_PL_VRAM &&
 		     new_mem->mem_type == TTM_PL_SYSTEM)) {
-			hop->fpfn = 0;
-			hop->lpfn = 0;
+			hop->param1 = 0;
+			hop->param2 = 0;
 			hop->mem_type = TTM_PL_TT;
 			hop->flags = 0;
 			return -EMULTIHOP;
@@ -698,7 +698,7 @@ int radeon_ttm_init(struct radeon_device *rdev)
 		DRM_ERROR("Failed initializing VRAM heap.\n");
 		return r;
 	}
-	/* Change the size here instead of the init above so only lpfn is affected */
+	/* Change the size here instead of the init above so only param2 is affected */
 	radeon_ttm_set_active_vram_size(rdev, rdev->mc.visible_vram_size);
 
 	r = radeon_bo_create(rdev, 256 * 1024, PAGE_SIZE, true,
@@ -765,7 +765,7 @@ void radeon_ttm_set_active_vram_size(struct radeon_device *rdev, u64 size)
 		return;
 
 	man = ttm_manager_type(&rdev->mman.bdev, TTM_PL_VRAM);
-	/* this just adjusts TTM size idea, which sets lpfn to the correct value */
+	/* this just adjusts TTM size idea, which sets param2 to the correct value */
 	man->size = size >> PAGE_SHIFT;
 }
 
diff --git a/drivers/gpu/drm/radeon/radeon_uvd.c b/drivers/gpu/drm/radeon/radeon_uvd.c
index ded5747a58d1..b823d383d501 100644
--- a/drivers/gpu/drm/radeon/radeon_uvd.c
+++ b/drivers/gpu/drm/radeon/radeon_uvd.c
@@ -307,8 +307,8 @@ void radeon_uvd_force_into_uvd_segment(struct radeon_bo *rbo,
 	int i;
 
 	for (i = 0; i < rbo->placement.num_placement; ++i) {
-		rbo->placements[i].fpfn = 0 >> PAGE_SHIFT;
-		rbo->placements[i].lpfn = (256 * 1024 * 1024) >> PAGE_SHIFT;
+		rbo->placements[i].param1 = 0 >> PAGE_SHIFT;
+		rbo->placements[i].param2 = (256 * 1024 * 1024) >> PAGE_SHIFT;
 	}
 
 	/* If it must be in VRAM it must be in the first segment as well */
@@ -321,8 +321,8 @@ void radeon_uvd_force_into_uvd_segment(struct radeon_bo *rbo,
 
 	/* add another 256MB segment */
 	rbo->placements[1] = rbo->placements[0];
-	rbo->placements[1].fpfn += (256 * 1024 * 1024) >> PAGE_SHIFT;
-	rbo->placements[1].lpfn += (256 * 1024 * 1024) >> PAGE_SHIFT;
+	rbo->placements[1].param1 += (256 * 1024 * 1024) >> PAGE_SHIFT;
+	rbo->placements[1].param2 += (256 * 1024 * 1024) >> PAGE_SHIFT;
 	rbo->placement.num_placement++;
 }
 
diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
index 5cfe8f3f80d7..7d718a81cd13 100644
--- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
+++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
@@ -10,22 +10,22 @@
 #include "ttm_kunit_helpers.h"
 
 static const struct ttm_place sys_place = {
-	.fpfn = 0,
-	.lpfn = 0,
+	.param1 = 0,
+	.param2 = 0,
 	.mem_type = TTM_PL_SYSTEM,
 	.flags = TTM_PL_FLAG_FALLBACK,
 };
 
 static const struct ttm_place mock1_place = {
-	.fpfn = 0,
-	.lpfn = 0,
+	.param1 = 0,
+	.param2 = 0,
 	.mem_type = TTM_PL_MOCK1,
 	.flags = TTM_PL_FLAG_FALLBACK,
 };
 
 static const struct ttm_place mock2_place = {
-	.fpfn = 0,
-	.lpfn = 0,
+	.param1 = 0,
+	.param2 = 0,
 	.mem_type = TTM_PL_MOCK2,
 	.flags = TTM_PL_FLAG_FALLBACK,
 };
@@ -76,8 +76,8 @@ static int mock_move(struct ttm_buffer_object *bo, bool evict,
 	    new_mem->mem_type == TTM_PL_SYSTEM) {
 		hop->mem_type = TTM_PL_TT;
 		hop->flags = TTM_PL_FLAG_TEMPORARY;
-		hop->fpfn = 0;
-		hop->lpfn = 0;
+		hop->param1 = 0;
+		hop->param2 = 0;
 		return -EMULTIHOP;
 	}
 
diff --git a/drivers/gpu/drm/ttm/tests/ttm_mock_manager.c b/drivers/gpu/drm/ttm/tests/ttm_mock_manager.c
index 0d91bc51f1a4..fef7b0d0294d 100644
--- a/drivers/gpu/drm/ttm/tests/ttm_mock_manager.c
+++ b/drivers/gpu/drm/ttm/tests/ttm_mock_manager.c
@@ -32,7 +32,7 @@ static int ttm_mock_manager_alloc(struct ttm_resource_manager *man,
 	struct ttm_mock_manager *manager = to_mock_mgr(man);
 	struct ttm_mock_resource *mock_res;
 	struct gpu_buddy *mm = &manager->mm;
-	u64 lpfn, fpfn, alloc_size;
+	u64 end, start, alloc_size;
 	int err;
 
 	mock_res = kzalloc_obj(*mock_res);
@@ -40,8 +40,8 @@ static int ttm_mock_manager_alloc(struct ttm_resource_manager *man,
 	if (!mock_res)
 		return -ENOMEM;
 
-	fpfn = 0;
-	lpfn = man->size;
+	start = 0;
+	end = man->size;
 
 	ttm_resource_init(bo, place, &mock_res->base);
 	INIT_LIST_HEAD(&mock_res->blocks);
@@ -54,7 +54,7 @@ static int ttm_mock_manager_alloc(struct ttm_resource_manager *man,
 
 	alloc_size = (uint64_t)mock_res->base.size;
 	mutex_lock(&manager->lock);
-	err = gpu_buddy_alloc_blocks(mm, fpfn, lpfn, alloc_size,
+	err = gpu_buddy_alloc_blocks(mm, start, end, alloc_size,
 				     manager->default_page_size,
 				     &mock_res->blocks,
 				     mock_res->flags);
diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_bo_util.c
index 3e3c201a0222..2bd5ec375a7c 100644
--- a/drivers/gpu/drm/ttm/ttm_bo_util.c
+++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
@@ -1082,8 +1082,8 @@ long ttm_bo_shrink(struct ttm_operation_ctx *ctx, struct ttm_buffer_object *bo,
 		   const struct ttm_bo_shrink_flags flags)
 {
 	static const struct ttm_place sys_placement_flags = {
-		.fpfn = 0,
-		.lpfn = 0,
+		.param1 = 0,
+		.param2 = 0,
 		.mem_type = TTM_PL_SYSTEM,
 		.flags = 0,
 	};
diff --git a/drivers/gpu/drm/ttm/ttm_range_manager.c b/drivers/gpu/drm/ttm/ttm_range_manager.c
index b818836f0726..9d28d2d06e63 100644
--- a/drivers/gpu/drm/ttm/ttm_range_manager.c
+++ b/drivers/gpu/drm/ttm/ttm_range_manager.c
@@ -66,12 +66,12 @@ static int ttm_range_man_alloc(struct ttm_resource_manager *man,
 	struct ttm_range_mgr_node *node;
 	struct drm_mm *mm = &rman->mm;
 	enum drm_mm_insert_mode mode;
-	unsigned long lpfn;
+	unsigned long end;
 	int ret;
 
-	lpfn = place->lpfn;
-	if (!lpfn)
-		lpfn = man->size;
+	end = place->param2;
+	if (!end)
+		end = man->size;
 
 	node = kzalloc_flex(*node, mm_nodes, 1);
 	if (!node)
@@ -87,7 +87,7 @@ static int ttm_range_man_alloc(struct ttm_resource_manager *man,
 	ret = drm_mm_insert_node_in_range(mm, &node->mm_nodes[0],
 					  PFN_UP(node->base.size),
 					  bo->page_alignment, 0,
-					  place->fpfn, lpfn, mode);
+					  place->param1, end, mode);
 	spin_unlock(&rman->lock);
 
 	if (unlikely(ret)) {
@@ -124,8 +124,8 @@ static bool ttm_range_man_intersects(struct ttm_resource_manager *man,
 	u32 num_pages = PFN_UP(size);
 
 	/* Don't evict BOs outside of the requested placement range */
-	if (place->fpfn >= (node->start + num_pages) ||
-	    (place->lpfn && place->lpfn <= node->start))
+	if (place->param1 >= (node->start + num_pages) ||
+	    (place->param2 && place->param2 <= node->start))
 		return false;
 
 	return true;
@@ -139,8 +139,8 @@ static bool ttm_range_man_compatible(struct ttm_resource_manager *man,
 	struct drm_mm_node *node = &to_ttm_range_mgr_node(res)->mm_nodes[0];
 	u32 num_pages = PFN_UP(size);
 
-	if (node->start < place->fpfn ||
-	    (place->lpfn && (node->start + num_pages) > place->lpfn))
+	if (node->start < place->param1 ||
+	    (place->param2 && (node->start + num_pages) > place->param2))
 		return false;
 
 	return true;
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c b/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
index 9c7a73c0b0dc..2af1dcb65b6f 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
@@ -222,7 +222,7 @@ int vmw_bo_pin_in_start_of_vram(struct vmw_private *dev_priv,
 	vmw_bo_placement_set(buf,
 			     VMW_BO_DOMAIN_VRAM,
 			     VMW_BO_DOMAIN_VRAM);
-	buf->places[0].lpfn = PFN_UP(bo->resource->size);
+	buf->places[0].param2 = PFN_UP(bo->resource->size);
 	ret = ttm_bo_validate(bo, &buf->placement, &ctx);
 
 	/* For some reason we didn't end up at the start of vram */
@@ -308,8 +308,8 @@ void vmw_bo_pin_reserved(struct vmw_bo *vbo, bool pin)
 	if (pin == !!bo->pin_count)
 		return;
 
-	pl.fpfn = 0;
-	pl.lpfn = 0;
+	pl.param1 = 0;
+	pl.param2 = 0;
 	pl.mem_type = bo->resource->mem_type;
 	pl.flags = bo->resource->placement;
 
@@ -758,40 +758,40 @@ set_placement_list(struct ttm_place *pl, u32 desired, u32 fallback)
 		pl[n].mem_type = VMW_PL_MOB;
 		pl[n].flags = placement_flags(VMW_BO_DOMAIN_MOB, desired,
 					      fallback);
-		pl[n].fpfn = 0;
-		pl[n].lpfn = 0;
+		pl[n].param1 = 0;
+		pl[n].param2 = 0;
 		n++;
 	}
 	if (domain & VMW_BO_DOMAIN_GMR) {
 		pl[n].mem_type = VMW_PL_GMR;
 		pl[n].flags = placement_flags(VMW_BO_DOMAIN_GMR, desired,
 					      fallback);
-		pl[n].fpfn = 0;
-		pl[n].lpfn = 0;
+		pl[n].param1 = 0;
+		pl[n].param2 = 0;
 		n++;
 	}
 	if (domain & VMW_BO_DOMAIN_VRAM) {
 		pl[n].mem_type = TTM_PL_VRAM;
 		pl[n].flags = placement_flags(VMW_BO_DOMAIN_VRAM, desired,
 					      fallback);
-		pl[n].fpfn = 0;
-		pl[n].lpfn = 0;
+		pl[n].param1 = 0;
+		pl[n].param2 = 0;
 		n++;
 	}
 	if (domain & VMW_BO_DOMAIN_WAITABLE_SYS) {
 		pl[n].mem_type = VMW_PL_SYSTEM;
 		pl[n].flags = placement_flags(VMW_BO_DOMAIN_WAITABLE_SYS,
 					      desired, fallback);
-		pl[n].fpfn = 0;
-		pl[n].lpfn = 0;
+		pl[n].param1 = 0;
+		pl[n].param2 = 0;
 		n++;
 	}
 	if (domain & VMW_BO_DOMAIN_SYS) {
 		pl[n].mem_type = TTM_PL_SYSTEM;
 		pl[n].flags = placement_flags(VMW_BO_DOMAIN_SYS, desired,
 					      fallback);
-		pl[n].fpfn = 0;
-		pl[n].lpfn = 0;
+		pl[n].param1 = 0;
+		pl[n].param2 = 0;
 		n++;
 	}
 
@@ -799,8 +799,8 @@ set_placement_list(struct ttm_place *pl, u32 desired, u32 fallback)
 	if (!n) {
 		pl[n].mem_type = TTM_PL_SYSTEM;
 		pl[n].flags = 0;
-		pl[n].fpfn = 0;
-		pl[n].lpfn = 0;
+		pl[n].param1 = 0;
+		pl[n].param2 = 0;
 		n++;
 	}
 	return n;
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c b/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
index dfd08ee19041..633d198d0fb8 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
@@ -30,15 +30,15 @@
 #include <drm/ttm/ttm_placement.h>
 
 static const struct ttm_place vram_placement_flags = {
-	.fpfn = 0,
-	.lpfn = 0,
+	.param1 = 0,
+	.param2 = 0,
 	.mem_type = TTM_PL_VRAM,
 	.flags = 0
 };
 
 static const struct ttm_place sys_placement_flags = {
-	.fpfn = 0,
-	.lpfn = 0,
+	.param1 = 0,
+	.param2 = 0,
 	.mem_type = TTM_PL_SYSTEM,
 	.flags = 0
 };
diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index 4c80bac67622..05a45f154d6d 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -50,8 +50,8 @@ const char *const xe_mem_type_to_name[TTM_NUM_MEM_TYPES]  = {
 };
 
 static const struct ttm_place sys_placement_flags = {
-	.fpfn = 0,
-	.lpfn = 0,
+	.param1 = 0,
+	.param2 = 0,
 	.mem_type = XE_PL_SYSTEM,
 	.flags = 0,
 };
@@ -65,14 +65,14 @@ static struct ttm_placement purge_placement;
 
 static const struct ttm_place tt_placement_flags[] = {
 	{
-		.fpfn = 0,
-		.lpfn = 0,
+		.param1 = 0,
+		.param2 = 0,
 		.mem_type = XE_PL_TT,
 		.flags = TTM_PL_FLAG_DESIRED,
 	},
 	{
-		.fpfn = 0,
-		.lpfn = 0,
+		.param1 = 0,
+		.param2 = 0,
 		.mem_type = XE_PL_SYSTEM,
 		.flags = TTM_PL_FLAG_FALLBACK,
 	}
@@ -248,8 +248,8 @@ static void add_vram(struct xe_device *xe, struct xe_bo *bo,
 
 	if (io_size < vram->usable_size) {
 		if (bo_flags & XE_BO_FLAG_NEEDS_CPU_ACCESS) {
-			place.fpfn = 0;
-			place.lpfn = io_size >> PAGE_SHIFT;
+			place.param1 = 0;
+			place.param2 = io_size >> PAGE_SHIFT;
 		} else {
 			place.flags |= TTM_PL_FLAG_TOPDOWN;
 		}
@@ -1072,8 +1072,8 @@ static int xe_bo_move(struct ttm_buffer_object *ttm_bo, bool evict,
 	    ((old_mem_type == XE_PL_SYSTEM && resource_is_vram(new_mem)) ||
 	     (mem_type_is_vram(old_mem_type) &&
 	      new_mem->mem_type == XE_PL_SYSTEM))) {
-		hop->fpfn = 0;
-		hop->lpfn = 0;
+		hop->param1 = 0;
+		hop->param2 = 0;
 		hop->mem_type = XE_PL_TT;
 		hop->flags = TTM_PL_FLAG_TEMPORARY;
 		ret = -EMULTIHOP;
@@ -2454,8 +2454,8 @@ static int __xe_bo_fixed_placement(struct xe_device *xe,
 		return -EINVAL;
 
 	place->flags = TTM_PL_FLAG_CONTIGUOUS;
-	place->fpfn = start >> PAGE_SHIFT;
-	place->lpfn = end >> PAGE_SHIFT;
+	place->param1 = start >> PAGE_SHIFT;
+	place->param2 = end >> PAGE_SHIFT;
 
 	if (flags & XE_BO_FLAG_STOLEN)
 		place->mem_type = XE_PL_STOLEN;
diff --git a/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c b/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c
index b518f7dec680..39ed1e87f4e9 100644
--- a/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c
+++ b/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c
@@ -55,14 +55,14 @@ static int xe_ttm_vram_mgr_new(struct ttm_resource_manager *man,
 	struct xe_ttm_vram_mgr_resource *vres;
 	struct gpu_buddy *mm = &mgr->mm;
 	u64 size, min_page_size;
-	unsigned long lpfn;
+	unsigned long end;
 	int err;
 
-	lpfn = place->lpfn;
-	if (!lpfn || lpfn > man->size >> PAGE_SHIFT)
-		lpfn = man->size >> PAGE_SHIFT;
+	end = place->param2;
+	if (!end || end > man->size >> PAGE_SHIFT)
+		end = man->size >> PAGE_SHIFT;
 
-	if (tbo->base.size >> PAGE_SHIFT > (lpfn - place->fpfn))
+	if (tbo->base.size >> PAGE_SHIFT > (end - place->param1))
 		return -E2BIG; /* don't trigger eviction for the impossible */
 
 	vres = kzalloc_obj(*vres);
@@ -85,7 +85,7 @@ static int xe_ttm_vram_mgr_new(struct ttm_resource_manager *man,
 	if (place->flags & TTM_PL_FLAG_CONTIGUOUS)
 		vres->flags |= GPU_BUDDY_CONTIGUOUS_ALLOCATION;
 
-	if (place->fpfn || lpfn != man->size >> PAGE_SHIFT)
+	if (place->param1 || end != man->size >> PAGE_SHIFT)
 		vres->flags |= GPU_BUDDY_RANGE_ALLOCATION;
 
 	if (WARN_ON(!vres->base.size)) {
@@ -109,18 +109,18 @@ static int xe_ttm_vram_mgr_new(struct ttm_resource_manager *man,
 	}
 
 	mutex_lock(&mgr->lock);
-	if (lpfn <= mgr->visible_size >> PAGE_SHIFT && size > mgr->visible_avail) {
+	if (end <= mgr->visible_size >> PAGE_SHIFT && size > mgr->visible_avail) {
 		err = -ENOSPC;
 		goto error_unlock;
 	}
 
-	err = gpu_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT,
-				     (u64)lpfn << PAGE_SHIFT, size,
+	err = gpu_buddy_alloc_blocks(mm, (u64)place->param1 << PAGE_SHIFT,
+				     (u64)end << PAGE_SHIFT, size,
 				     min_page_size, &vres->blocks, vres->flags);
 	if (err)
 		goto error_unlock;
 
-	if (lpfn <= mgr->visible_size >> PAGE_SHIFT) {
+	if (end <= mgr->visible_size >> PAGE_SHIFT) {
 		vres->used_visible_size = size;
 	} else {
 		struct gpu_buddy_block *block;
@@ -217,19 +217,19 @@ static bool xe_ttm_vram_mgr_intersects(struct ttm_resource_manager *man,
 	struct gpu_buddy *mm = &mgr->mm;
 	struct gpu_buddy_block *block;
 
-	if (!place->fpfn && !place->lpfn)
+	if (!place->param1 && !place->param2)
 		return true;
 
-	if (!place->fpfn && place->lpfn == mgr->visible_size >> PAGE_SHIFT)
+	if (!place->param1 && place->param2 == mgr->visible_size >> PAGE_SHIFT)
 		return vres->used_visible_size > 0;
 
 	list_for_each_entry(block, &vres->blocks, link) {
-		unsigned long fpfn =
+		unsigned long start =
 			gpu_buddy_block_offset(block) >> PAGE_SHIFT;
-		unsigned long lpfn = fpfn +
+		unsigned long end = start +
 			(gpu_buddy_block_size(mm, block) >> PAGE_SHIFT);
 
-		if (place->fpfn < lpfn && place->lpfn > fpfn)
+		if (place->param1 < end && place->param2 > start)
 			return true;
 	}
 
@@ -247,19 +247,19 @@ static bool xe_ttm_vram_mgr_compatible(struct ttm_resource_manager *man,
 	struct gpu_buddy *mm = &mgr->mm;
 	struct gpu_buddy_block *block;
 
-	if (!place->fpfn && !place->lpfn)
+	if (!place->param1 && !place->param2)
 		return true;
 
-	if (!place->fpfn && place->lpfn == mgr->visible_size >> PAGE_SHIFT)
+	if (!place->param1 && place->param2 == mgr->visible_size >> PAGE_SHIFT)
 		return vres->used_visible_size == size;
 
 	list_for_each_entry(block, &vres->blocks, link) {
-		unsigned long fpfn =
+		unsigned long start =
 			gpu_buddy_block_offset(block) >> PAGE_SHIFT;
-		unsigned long lpfn = fpfn +
+		unsigned long end = start +
 			(gpu_buddy_block_size(mm, block) >> PAGE_SHIFT);
 
-		if (fpfn < place->fpfn || lpfn > place->lpfn)
+		if (start < place->param1 || end > place->param2)
 			return false;
 	}
 
diff --git a/include/drm/ttm/ttm_placement.h b/include/drm/ttm/ttm_placement.h
index ab2639e42c54..2c38674be102 100644
--- a/include/drm/ttm/ttm_placement.h
+++ b/include/drm/ttm/ttm_placement.h
@@ -73,16 +73,23 @@
 /**
  * struct ttm_place
  *
- * @fpfn:	first valid page frame number to put the object
- * @lpfn:	last valid page frame number to put the object
+ * @param1:	generic placement parameter, interpretation depends on the
+ *		backend resource manager. For range-based managers (e.g. the
+ *		VRAM range manager, the buddy managers in amdgpu/i915/xe and
+ *		the TTM range manager) this is the start of the allowed range,
+ *		typically expressed as a page frame number.
+ * @param2:	generic placement parameter, interpretation depends on the
+ *		backend resource manager. For range-based managers this is the
+ *		exclusive end of the allowed range (a value of 0 means
+ *		"no upper bound").
  * @mem_type:	One of TTM_PL_* where the resource should be allocated from.
  * @flags:	memory domain and caching flags for the object
  *
  * Structure indicating a possible place to put an object.
  */
 struct ttm_place {
-	uint64_t	fpfn;
-	uint64_t	lpfn;
+	uint64_t	param1;
+	uint64_t	param2;
 	uint32_t	mem_type;
 	uint32_t	flags;
 };

base-commit: b9e2d5cdaab05c997be3a69d9b372d7676683e1b
-- 
2.34.1

