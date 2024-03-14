Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C56A587BE99
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 15:11:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29CF510FB79;
	Thu, 14 Mar 2024 14:11:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jtd/xSjf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A90E110FB79;
 Thu, 14 Mar 2024 14:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710425471; x=1741961471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=pi73wvq7uj+//QINjl15d+5JJCyvgCjioSIeQXdU1vY=;
 b=jtd/xSjfKyV479dHV3CNPcnb4vHTeFvw2MzQxGoddDqDz/Pttu3HLoha
 uNQHbBCwV6DRtpiaCPA4bfwk1bGirqk2vO0ebQD9lJOSomhIbz9sDEr1e
 ZL2ICzvsi+vmZm8t9nK+C5bigp36iNgkB8bGgTI3o2cHGxzRssUD+Adrn
 8qGRMHm8Z5VyLrltHhN6kosDVRq78Cgqculyrowycnp9Dn7VeRIwgJqNu
 1cODEsmGw4oTiSGa3BJPRfXENZeekVpRONzs1fRLlSj5ulH2dsZVE+5MQ
 XE5ph46Lv/85jVgKIzr0qdEVZn2uP5Aw3dGSIwliOetBbcXT1AzSMuWPw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="30683128"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="30683128"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 07:11:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="16963444"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 07:11:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:11:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:11:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 07:11:09 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 07:11:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sr5HLKpdqg+h6jfB0hPphA5VAxz7ry6wCemBrzQQKVyfr6E1h61SHBbWj4bcVgf15hgBvRdeNSXoCmoa68n7hrLfpimhStTEiSwv0YSdtuswZ3/Zt5cHQ5SBQhQ9QKBeoDoZr+pfb5UUg/DaZxZjy51LHM37pL9VuvSW+BVjfxMe9IpyNEshFCudY3HvPQ1HKbN4QLX/1rF+H6nLndXuatM3TwvhTVCGcjDFfA5zTXdMT3HD4wVHqHbeAWyzXxKG6ojaktYeOBC3rKyn9vSV4dwI7A6xKkHVKXFBGqiFlzZztzODXV0XQ5LKSVSLXcSQG6sITKNSKydSVZd/j/mHTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZnJbiH973vZvtRNwEIMC8SSC0rptxHEb0+YCmlfQpN4=;
 b=hgrpfVYGjiC7zYkBWHiw9WHwc1tFd2xGl1+5JJ0/xxQK3/SB+AlnOmTe1nMO2hf10EdhKwc5xMmJ2lfCTwJwpcM6MEl/VCwR1T1yM8jNYJAGP0dUtykO/ngd1+yMFk2nEUS9MCSQmgNM5Q2dS3jmRVGa1l5GnWNEB5ms2kRD0n37mS5Bxgz0WXXofvSsjO0ILuD/8irsj4wXf8BvDLkFwx9FF898BF6/ps5desfKoB7igB3Ja1suT3hWUvCWCjhgX/+5Xun3I65nGtuAjvIStrhnKfy4ItiGCJV3WiWx8O7dzZvw4qhzeDBfWJZ9Zrnjp5J50XXoNm4VytefdVwHmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 14:11:05 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 14:11:04 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <francois.dugast@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH 11/11] drm/xe: Kill xe_device_mem_access_{get*,put}
Date: Thu, 14 Mar 2024 10:10:21 -0400
Message-ID: <20240314141021.161009-11-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240314141021.161009-1-rodrigo.vivi@intel.com>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR04CA0025.namprd04.prod.outlook.com
 (2603:10b6:a03:217::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: 4387687a-dcbb-4798-1d05-08dc443095e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZEa6I4pD2wuGYaxiBoj1tuhtNnkTr/NaF2wHPRdkuZQL0qjaFvKsoM972aOqF/c0IK4bxnNN32oj/qWz0VYM8z6MllIOSswvcC+ahkr/83lATjfTdS+94OFS9e3oxbxhXGDRdVIPKtVkLcY1tjTEj3gwhq7BezJDPGzZcK3ECvT0EHVso+dOaU2n/m6HRSb7Ya3UuMed5MZ1nPIYiWgt+PE3BP2OUsSCpuEW2a1O3m3mxDWIWkWdHgUvCaLhwwfZxAh/oP58hRlEHM3l8my1gnA1D9jdAfvPTg90vdD2lWHPzSXIdYXCVEPqdygCQSFsGSS7RCUtS7QKdbOanx21b5vT74MfGaZndhXU8Q5+4AtKNPNGa5ozYhcwiOYGGnjopBlPHIpoqJqjeGKFkGgEOQsVkcv+0Nb8fEF1q2l/DGuzf1f1yumTO5xuBzo9GhWWfcOCTC07ERd4pCcGj7sZWj/HGRqfVG2TLLfC0kgTMVNB2MrEDzxMTH6wSxfydbBBWHAQnPy4HB+EeXjmfG9b6iSks4rUG5N79700MYCtfXBKyaCOA4XZx6M0FY4oaMY0uDlvhSUrXyAbLH1INgSO6zFx8OtAJJr2r7ymr/roHqmj1nrMF7+1tk1aO3RlJHf+umDiQsJZvtOmM1835Hs/kGxSZ791dbTXJko+GX8rWN4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1wurhrSYqZPKEIA6Ofo7qni6aDgplMRjlTvPFTfyEvn92oqVcl36zzaCk8/B?=
 =?us-ascii?Q?E+w+PielKVzEvo97v6QbyfbPCPsQsFOcCASfSLd9KkzV6f+dLM/1WIDzoxDH?=
 =?us-ascii?Q?B5lpAv9iM/YMxDC5KXxjbzH9O/pwifXTVmxPjBhY47+9X3Zx+k/Ue4WjLVuq?=
 =?us-ascii?Q?QfCaNqljQvvspQ1QpiO0/BWv/of4iOR0P6LtgoKP65rI3Np2i2QHJIcGMsLR?=
 =?us-ascii?Q?3TNJ9yKCR/yay2At4VwiUB4Yr3pemVyDPbp10PyhbwFu9oYxCcDRQwTA7Eao?=
 =?us-ascii?Q?AslPrsqxUqMu6pwArU+Inl0d2coXi0u99x3MWhY+a1WtecfMspZLPgMB5fZb?=
 =?us-ascii?Q?5AFqvTLNm5k9iYjE6yJ8nHC9PwGUQUd/N/t47IhPkbtBnfyb53wyVedp5SMY?=
 =?us-ascii?Q?UDMdWKu/uzNEpaEbtzoInwnYKdIZxtiUpc2V/Q4YVgVcbM4x5HEP7fG3I/4w?=
 =?us-ascii?Q?Jfex+PvUHPBbGhHdtnWXQJVie7DgqEG8Hx3/gBu/gOD4zrIKIGBIcOcvgLXD?=
 =?us-ascii?Q?vIbvM2rgYqgPc6mHMbBE/mQDwT+DIj43b764vQrZVLzCaZSukwAgodroPQOT?=
 =?us-ascii?Q?Ou4ydvV6+ebpF0SZ4t0jEK1xgCS3o5O45qzfzs91t0FLZQIfMKB/mX4n4KpV?=
 =?us-ascii?Q?RdjrcrFZLYX4YsWe7ej+/Yy3+P8AijWOWaOnsgq74R3mmjorvhFcvLmn6dO3?=
 =?us-ascii?Q?Ry9843+sKrZf4dS3N+0vn8pot6BjQaWufl8FB5zOFSedIyS3AGLUknpEihWx?=
 =?us-ascii?Q?w9LUypNaPunzhly1qIW5HF7IV6I548GX+xjM1iikizbyiS9SvFrCHo1geoHS?=
 =?us-ascii?Q?O82vkhmM6l54LL/MutU8APGYRQ6K1z5bYaS6Hh6Hg60lY+6gl+SxhzHNfUow?=
 =?us-ascii?Q?0641Kqcpl+25IPx05oMxGr+5gwVBEHkkiMkZRMaw8/LLR6YH5iwYfO6/gl/c?=
 =?us-ascii?Q?2cpVSWmP8LvxMi2rKWU4jCEfDgq8KC/Zkr6acpO6MDfZ+tKQjjRev2q/ZGr2?=
 =?us-ascii?Q?PjJ2+EuIK3OQZrBSZuf4L00Cctl81911OAKOU2yKCMYfh2ylTYJ4hmbwEUlE?=
 =?us-ascii?Q?vGFNNMt3AbMIXF95BLoOxy6Lvjzd2Gr4OqcTCQkHY/XZHCw/qY+8D55UZT/V?=
 =?us-ascii?Q?XnIpAac9/fahjPri5OzIALQdsVxb+RWg7ofE/X10qLJKdrcAFCuHUmNI5nF0?=
 =?us-ascii?Q?Apmt4yiabcF4ny6LIkMmQx8AGgLkEDblYLw3ocpkooA0xNeuATjmr3+S4rvj?=
 =?us-ascii?Q?Ln8P8ndxFAHWxT3MMm50P/NoXmkCwF/Hgf799EqMrmH1OCk8NheukUYKMiFS?=
 =?us-ascii?Q?siNp3DLukQRxFZtzXNuDiFX1ezVAKrEnB+mnWVEZynsQ2ZO2I00qRLE5nXhQ?=
 =?us-ascii?Q?QbkMmrci5XnamTo9ckn+prwTWDap/xTtY/ieNPnQqWovsK674NVEJofViE9X?=
 =?us-ascii?Q?QfmUpqTXdVF7cO6atT+auBX7/hKdRgcedfE/tmpMcYyLu/qStFFnlWJlZbOF?=
 =?us-ascii?Q?jY/KFUEGCVbyINYhN7/gwhnCF20v7bpo9UtLWfPZA5G1/3j5v7xyB7mqJJ5p?=
 =?us-ascii?Q?L9/6UFLHvJhmQ7G3dEClW+AwC14LKrcnAzuW91oICrS1YqzEqCu/xoYLvcGA?=
 =?us-ascii?Q?BQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4387687a-dcbb-4798-1d05-08dc443095e8
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 14:11:04.8332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RNAUuZ3b9glD7+mjQ3bszTMHCVcJ6BGfvT0q+oWCnXUlvNp0vkZtejLvcIUprFzw7/mGbFt3q1OG0trfLQLntw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
X-OriginatorOrg: intel.com
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

Let's simply convert all the current callers towards direct
xe_pm_runtime access and remove this extra layer of indirection.

v2: Convert all the current callers instead of a big refactor
at once.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c |  7 ++---
 drivers/gpu/drm/xe/xe_bo.c             |  8 +++---
 drivers/gpu/drm/xe/xe_device.c         | 36 --------------------------
 drivers/gpu/drm/xe/xe_device.h         |  3 ---
 drivers/gpu/drm/xe/xe_device_types.h   |  3 ---
 drivers/gpu/drm/xe/xe_exec_queue.c     |  6 ++---
 drivers/gpu/drm/xe/xe_ggtt.c           |  9 ++++---
 drivers/gpu/drm/xe/xe_sched_job.c      |  5 ++--
 drivers/gpu/drm/xe/xe_vm.c             |  6 ++---
 9 files changed, 22 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 722c84a56607..403ed2d42f6b 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -10,6 +10,7 @@
 #include "intel_fb_pin.h"
 #include "xe_ggtt.h"
 #include "xe_gt.h"
+#include "xe_pm.h"
 
 #include <drm/ttm/ttm_bo.h>
 
@@ -190,7 +191,7 @@ static int __xe_pin_fb_vma_ggtt(struct intel_framebuffer *fb,
 	/* TODO: Consider sharing framebuffer mapping?
 	 * embed i915_vma inside intel_framebuffer
 	 */
-	xe_device_mem_access_get(tile_to_xe(ggtt->tile));
+	xe_pm_runtime_get_noresume(tile_to_xe(ggtt->tile));
 	ret = mutex_lock_interruptible(&ggtt->lock);
 	if (ret)
 		goto out;
@@ -242,7 +243,7 @@ static int __xe_pin_fb_vma_ggtt(struct intel_framebuffer *fb,
 out_unlock:
 	mutex_unlock(&ggtt->lock);
 out:
-	xe_device_mem_access_put(tile_to_xe(ggtt->tile));
+	xe_pm_runtime_put(tile_to_xe(ggtt->tile));
 	return ret;
 }
 
@@ -381,4 +382,4 @@ struct i915_address_space *intel_dpt_create(struct intel_framebuffer *fb)
 void intel_dpt_destroy(struct i915_address_space *vm)
 {
 	return;
-}
\ No newline at end of file
+}
diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index 7ee4406da127..4c9a8ab4e840 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -716,7 +716,7 @@ static int xe_bo_move(struct ttm_buffer_object *ttm_bo, bool evict,
 
 	xe_assert(xe, migrate);
 	trace_xe_bo_move(bo, new_mem->mem_type, old_mem_type, move_lacks_source);
-	xe_device_mem_access_get(xe);
+	xe_pm_runtime_get_noresume(xe);
 
 	if (xe_bo_is_pinned(bo) && !xe_bo_is_user(bo)) {
 		/*
@@ -740,7 +740,7 @@ static int xe_bo_move(struct ttm_buffer_object *ttm_bo, bool evict,
 
 				if (XE_WARN_ON(new_mem->start == XE_BO_INVALID_OFFSET)) {
 					ret = -EINVAL;
-					xe_device_mem_access_put(xe);
+					xe_pm_runtime_put(xe);
 					goto out;
 				}
 
@@ -758,7 +758,7 @@ static int xe_bo_move(struct ttm_buffer_object *ttm_bo, bool evict,
 						new_mem, handle_system_ccs);
 		if (IS_ERR(fence)) {
 			ret = PTR_ERR(fence);
-			xe_device_mem_access_put(xe);
+			xe_pm_runtime_put(xe);
 			goto out;
 		}
 		if (!move_lacks_source) {
@@ -783,7 +783,7 @@ static int xe_bo_move(struct ttm_buffer_object *ttm_bo, bool evict,
 		dma_fence_put(fence);
 	}
 
-	xe_device_mem_access_put(xe);
+	xe_pm_runtime_put(xe);
 
 out:
 	return ret;
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 6ab402153242..31182ebe0b89 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -655,42 +655,6 @@ void xe_device_assert_mem_access(struct xe_device *xe)
 	xe_assert(xe, !xe_pm_runtime_suspended(xe));
 }
 
-void xe_device_mem_access_get(struct xe_device *xe)
-{
-	int ref;
-
-	/*
-	 * This looks racy, but should be fine since the pm_callback_task only
-	 * transitions from NULL -> current (and back to NULL again), during the
-	 * runtime_resume() or runtime_suspend() callbacks, for which there can
-	 * only be a single one running for our device. We only need to prevent
-	 * recursively calling the runtime_get or runtime_put from those
-	 * callbacks, as well as preventing triggering any access_ongoing
-	 * asserts.
-	 */
-	if (xe_pm_read_callback_task(xe) == current)
-		return;
-
-	xe_pm_runtime_get_noresume(xe);
-	ref = atomic_inc_return(&xe->mem_access.ref);
-
-	xe_assert(xe, ref != S32_MAX);
-
-}
-
-void xe_device_mem_access_put(struct xe_device *xe)
-{
-	int ref;
-
-	if (xe_pm_read_callback_task(xe) == current)
-		return;
-
-	ref = atomic_dec_return(&xe->mem_access.ref);
-	xe_pm_runtime_put(xe);
-
-	xe_assert(xe, ref >= 0);
-}
-
 void xe_device_snapshot_print(struct xe_device *xe, struct drm_printer *p)
 {
 	struct xe_gt *gt;
diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
index b45592b0bf19..355bddfc8274 100644
--- a/drivers/gpu/drm/xe/xe_device.h
+++ b/drivers/gpu/drm/xe/xe_device.h
@@ -133,9 +133,6 @@ static inline struct xe_force_wake *gt_to_fw(struct xe_gt *gt)
 	return &gt->mmio.fw;
 }
 
-void xe_device_mem_access_get(struct xe_device *xe);
-void xe_device_mem_access_put(struct xe_device *xe);
-
 void xe_device_assert_mem_access(struct xe_device *xe);
 
 static inline bool xe_device_in_fault_mode(struct xe_device *xe)
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 9785eef2e5a4..4bec8b90a37c 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -377,9 +377,6 @@ struct xe_device {
 	 * triggering additional actions when they occur.
 	 */
 	struct {
-		/** @mem_access.ref: ref count of memory accesses */
-		atomic_t ref;
-
 		/**
 		 * @mem_access.vram_userfault: Encapsulate vram_userfault
 		 * related stuff
diff --git a/drivers/gpu/drm/xe/xe_exec_queue.c b/drivers/gpu/drm/xe/xe_exec_queue.c
index f69a9c99329c..42ddf857e9e8 100644
--- a/drivers/gpu/drm/xe/xe_exec_queue.c
+++ b/drivers/gpu/drm/xe/xe_exec_queue.c
@@ -217,7 +217,7 @@ void xe_exec_queue_fini(struct xe_exec_queue *q)
 	for (i = 0; i < q->width; ++i)
 		xe_lrc_finish(q->lrc + i);
 	if (!(q->flags & EXEC_QUEUE_FLAG_PERMANENT) && (q->flags & EXEC_QUEUE_FLAG_VM || !q->vm))
-		xe_device_mem_access_put(gt_to_xe(q->gt));
+		xe_pm_runtime_put(gt_to_xe(q->gt));
 	__xe_exec_queue_free(q);
 }
 
@@ -589,7 +589,7 @@ int xe_exec_queue_create_ioctl(struct drm_device *dev, void *data,
 				return -EINVAL;
 
 			/* The migration vm doesn't hold rpm ref */
-			xe_device_mem_access_get(xe);
+			xe_pm_runtime_get_noresume(xe);
 
 			flags = EXEC_QUEUE_FLAG_VM | (id ? EXEC_QUEUE_FLAG_BIND_ENGINE_CHILD : 0);
 
@@ -598,7 +598,7 @@ int xe_exec_queue_create_ioctl(struct drm_device *dev, void *data,
 						   args->width, hwe, flags,
 						   args->extensions);
 
-			xe_device_mem_access_put(xe); /* now held by engine */
+			xe_pm_runtime_put(xe); /* now held by engine */
 
 			xe_vm_put(migrate_vm);
 			if (IS_ERR(new)) {
diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index 0f96b7db6dcc..d73056aa2362 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -20,6 +20,7 @@
 #include "xe_gt_printk.h"
 #include "xe_gt_tlb_invalidation.h"
 #include "xe_map.h"
+#include "xe_pm.h"
 #include "xe_sriov.h"
 #include "xe_wopcm.h"
 
@@ -408,14 +409,14 @@ static int __xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
 	if (err)
 		return err;
 
-	xe_device_mem_access_get(tile_to_xe(ggtt->tile));
+	xe_pm_runtime_get_noresume(tile_to_xe(ggtt->tile));
 	mutex_lock(&ggtt->lock);
 	err = drm_mm_insert_node_in_range(&ggtt->mm, &bo->ggtt_node, bo->size,
 					  alignment, 0, start, end, 0);
 	if (!err)
 		xe_ggtt_map_bo(ggtt, bo);
 	mutex_unlock(&ggtt->lock);
-	xe_device_mem_access_put(tile_to_xe(ggtt->tile));
+	xe_pm_runtime_put(tile_to_xe(ggtt->tile));
 
 	return err;
 }
@@ -433,7 +434,7 @@ int xe_ggtt_insert_bo(struct xe_ggtt *ggtt, struct xe_bo *bo)
 
 void xe_ggtt_remove_node(struct xe_ggtt *ggtt, struct drm_mm_node *node)
 {
-	xe_device_mem_access_get(tile_to_xe(ggtt->tile));
+	xe_pm_runtime_get_noresume(tile_to_xe(ggtt->tile));
 	mutex_lock(&ggtt->lock);
 
 	xe_ggtt_clear(ggtt, node->start, node->size);
@@ -443,7 +444,7 @@ void xe_ggtt_remove_node(struct xe_ggtt *ggtt, struct drm_mm_node *node)
 	xe_ggtt_invalidate(ggtt);
 
 	mutex_unlock(&ggtt->lock);
-	xe_device_mem_access_put(tile_to_xe(ggtt->tile));
+	xe_pm_runtime_put(tile_to_xe(ggtt->tile));
 }
 
 void xe_ggtt_remove_bo(struct xe_ggtt *ggtt, struct xe_bo *bo)
diff --git a/drivers/gpu/drm/xe/xe_sched_job.c b/drivers/gpu/drm/xe/xe_sched_job.c
index 8151ddafb940..8ba35b1698ed 100644
--- a/drivers/gpu/drm/xe/xe_sched_job.c
+++ b/drivers/gpu/drm/xe/xe_sched_job.c
@@ -15,6 +15,7 @@
 #include "xe_hw_fence.h"
 #include "xe_lrc.h"
 #include "xe_macros.h"
+#include "xe_pm.h"
 #include "xe_trace.h"
 #include "xe_vm.h"
 
@@ -157,7 +158,7 @@ struct xe_sched_job *xe_sched_job_create(struct xe_exec_queue *q,
 
 	/* All other jobs require a VM to be open which has a ref */
 	if (unlikely(q->flags & EXEC_QUEUE_FLAG_KERNEL))
-		xe_device_mem_access_get(job_to_xe(job));
+		xe_pm_runtime_get_noresume(job_to_xe(job));
 	xe_device_assert_mem_access(job_to_xe(job));
 
 	trace_xe_sched_job_create(job);
@@ -190,7 +191,7 @@ void xe_sched_job_destroy(struct kref *ref)
 		container_of(ref, struct xe_sched_job, refcount);
 
 	if (unlikely(job->q->flags & EXEC_QUEUE_FLAG_KERNEL))
-		xe_device_mem_access_put(job_to_xe(job));
+		xe_pm_runtime_put(job_to_xe(job));
 	xe_exec_queue_put(job->q);
 	dma_fence_put(job->fence);
 	drm_sched_job_cleanup(&job->drm);
diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
index cbb9b8935c90..8263ae98c268 100644
--- a/drivers/gpu/drm/xe/xe_vm.c
+++ b/drivers/gpu/drm/xe/xe_vm.c
@@ -1341,7 +1341,7 @@ struct xe_vm *xe_vm_create(struct xe_device *xe, u32 flags)
 	vm->pt_ops = &xelp_pt_ops;
 
 	if (!(flags & XE_VM_FLAG_MIGRATION))
-		xe_device_mem_access_get(xe);
+		xe_pm_runtime_get_noresume(xe);
 
 	vm_resv_obj = drm_gpuvm_resv_object_alloc(&xe->drm);
 	if (!vm_resv_obj) {
@@ -1452,7 +1452,7 @@ struct xe_vm *xe_vm_create(struct xe_device *xe, u32 flags)
 		xe_range_fence_tree_fini(&vm->rftree[id]);
 	kfree(vm);
 	if (!(flags & XE_VM_FLAG_MIGRATION))
-		xe_device_mem_access_put(xe);
+		xe_pm_runtime_put(xe);
 	return ERR_PTR(err);
 }
 
@@ -1575,7 +1575,7 @@ static void vm_destroy_work_func(struct work_struct *w)
 	mutex_destroy(&vm->snap_mutex);
 
 	if (!(vm->flags & XE_VM_FLAG_MIGRATION)) {
-		xe_device_mem_access_put(xe);
+		xe_pm_runtime_put(xe);
 
 		if (xe->info.has_asid && vm->usm.asid) {
 			mutex_lock(&xe->usm.lock);
-- 
2.44.0

