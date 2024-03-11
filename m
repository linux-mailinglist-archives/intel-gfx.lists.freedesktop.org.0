Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0798C8788DB
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:23:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620DE112C20;
	Mon, 11 Mar 2024 19:23:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FJqLmpD6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A60C7112C2E
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 19:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710185025; x=1741721025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=OSVOIspRwAAoSby4X+f5hRmHMoLfirvyM5GkOm5ThMQ=;
 b=FJqLmpD6Fq0UopKrRCouUe2tj4pjt23G76j/03YN1xzXs8Pd6uJxxjK7
 W88p+iQxey4yXjT9b3IjL4FwBns12UjJ+CpMVp1LsVqXQjOtPEhfC4L1t
 2B8AP8MPQqAJ/G3imYCJZ7bronvfb+Px+03fHhjGh2qUdD1JqzLBnF3ss
 igt1K0CdrfgRxX7+K102i9YAX3hA33BOyK3Gb6SM8gzR3Y60WV/wnDji/
 9NMYHVOBIGCTFHOf8uA5mzXxFlGRwqLtuV2z+GagI5SxXRVhcw2WvNzXL
 NYn6y7fFSN0a7bigguuAKwJhkRKVTcQRh/pAvEZyJauKfLkacbDFXCXI0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8627120"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="8627120"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:23:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11344409"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:23:45 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:23:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ayfdvJQLloPxSEZOnR+qNll4m8C3MyACbma7dqFRczFTJb5n21x8ylF+Oxz9aOHXVvkosSVHtIGyQm60Bfz9m+SMhniqCC+EPZ6r2zp+58emjMXWXSwtRxzcGezcYydf5Y8BvFQKG793kz8d6aNGjT2YniFwAMP7pBivgqzkb7AR8gDP/0vVGTP8YperThoA1DWnCL5Vq0jT/+bXxoXsnmSP+InD9ZAWu0o/cvkDevcMxmGUEvxheqAeK+Q3RtVH8X+w/COL6pQYxUcVq3XlKnt9cNqFvv+raDL/uN/f0jpvnMBll/s92EC48v5ZfjJqt/ejoj7mnu+57kgRnZ65qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9cyTbc4DT+quwAetrqV9hhoVtzQzEtCemiMNpB3dppc=;
 b=jKVQwl6fcSuUFu91hgMx2jxARPF2wezWFSB9jssxvtGsJ/iUd9SE9+lG6flX2KG9pYvXQyW35qSIYRUYYY7Is0Vh89s0L1OC/E/ry3cx57zIroA7ixI927FeW2oEI2dgFdP9wq8v/UI4LSKEOQ/4gMfYUFURKe+49GAEFYexii+Au4guBWaksPLdTGNrUTI9mNSx+YzTz1XpwUBjps7f2Antswxl4lgcRtkh5TNpwOtZ5wcTQpx+SxtxeGBArrfeFVugzfNkxFlnbM1j+6r6GdSnB3V1LRslAeW1sOs0waIBSKbGrZdeZH4Y78RgOdKNpBYN5IADAy65f68k38Wz8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.14; Mon, 11 Mar
 2024 19:23:41 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:23:41 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>
Subject: [PATCH 11/11] drm/xe: Kill xe_device_mem_access_{get*,put}
Date: Mon, 11 Mar 2024 15:23:03 -0400
Message-ID: <20240311192303.33961-11-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311192303.33961-1-rodrigo.vivi@intel.com>
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR05CA0059.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8253:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c3a0f7d-8cfd-48ec-7e09-08dc4200c2c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5vkBGcvbPO93vx8kB7Q9vQ/b6oOv8N+HlVQl9mhjNGkPVu4qTinpy3eldmvJyiY8mblW06zxMVmdPWKI19q29xYJfKlfG5CpYC7bQT/6e8tVLb6vbj4M2teOh/cqkM2021Id+Gu7iGYImwE4601K8Ltvoqrm4pPpvXl8IYjF48yVLc8qGEXP9nfdTaDmOxmkggNi3UGbamE5ZhUJKl5NtowhHmL9PStFQv1iyVubHBYNohOT1Jof8+sgOGd5a7Fvch0rlPccDM7Y2/Th3RteFK6LeqCTSY4IVw7Wgm5r+SoynFOIQ3mBn2VXflV2aUCJDdsJtTGwPiULOBhIoHPOVlvnXnpzC97D8JLbjAmBXE5SnFBZ8jgMsQmrUcMnQnrd3bl15CwSdki3tKCxshkPfL33cg3hb9SuG1KFhDmiT9L+ryWZemSNudaohqpg3y4uX8lotZFVpyAv1IyRMxEQvt9iWM2w0Hz0gJ1j7YXTjZD7PrV57GLrtCjxuSVNzVvvEVjAECrDOF+UgXnNl/Gg7t1/er8IkfCoKANKgW23vv7mvsiiqMT2YK06pg8pGxBC9IFa0Y7EXOdfXgL73Wq8fvANW0YELfmUEhULlerKFmEShUgqm4JdqiEWuxPcRqDWKLnjwvXAbcWiYroVQMPBn9+GeYuJ/0EaS7McGgWBtZo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eWAHLWnA7HDpUsJaESKiqJggCFTsmSAwO4YS2C4FLLuVKo81CVNzBLmG77Os?=
 =?us-ascii?Q?fr2X5h0ff89NPBxMdkScqBX68sVxEqFkO+sL0yobW368VJ+vprTqhpDkWbvB?=
 =?us-ascii?Q?yqyn5qT0MR19it54Kw9J0ZUpOnYVbohDGqeWX2ehmwM68cS4WIrK5ghtpgJt?=
 =?us-ascii?Q?AWPufQvnx1B9fXr8vTAtyoItfjw8lPF6ohp7N7MFtqeap5dpuNzT6KfO1p8f?=
 =?us-ascii?Q?R7qv7eZ+CETnrTJhxz/21fjkFVeqouBQVyFt+f3wP8PrQmxtbpJgzL7++rJc?=
 =?us-ascii?Q?7JSj4MLruTk9qMvxQskFPWwT1y52ezfQP2jOGxcbd0zHbyJoUO4CYexYjuTt?=
 =?us-ascii?Q?L60gg541XwjIM9rcm+FjPgELK87PLivZoiSakZWI2eDUWY18QtISpggLSp1D?=
 =?us-ascii?Q?Pydeo8sygLGY15wKt0SPuHtHUe/VxXJjj5gkoyk6pOHMNhug2X1fzfoqYBr4?=
 =?us-ascii?Q?uVhGtYLieEFclLr8KGZ2mc6I5K8UZ1FHuJD0BVMFjJMPXmXzfPewlbO5Hbi0?=
 =?us-ascii?Q?dY+azajcRBCJRGsENAgpf3BWFwga1nSjAcPoggdwfdGfbUgxY9fmsml2zOes?=
 =?us-ascii?Q?2NSUaNTNVhwAiPL18LPGk1qe6StHMRqi//nOqyLldzscl6Jjeqd1/FSL6whb?=
 =?us-ascii?Q?RlptbZMhb5cPQRFTorsST03v+DPX7VAQ9xyH+wizlal06vPhC0Flh8ZJxOUH?=
 =?us-ascii?Q?6kyNwxb1P17zbi96VRmNFRJC+XyT+YwFI0IxhwUXOmwTttLQgya5M8/+Erz1?=
 =?us-ascii?Q?2YQIeFp1Mi/R1G990UcFprGZ1q6PKAYCtfd1CcROvIoA9vhF+0LjcLVXWmrJ?=
 =?us-ascii?Q?s4bgCiEhx8/QEeKVFBUA/ChfxegrPTzXBW3GB7/YdlYOxtJUjwU7pSpUASYk?=
 =?us-ascii?Q?3E5C9vNCNlOqoMSwkuWWLD3LXQcfxnciMXe3E5DFrUp16q9mT4P5oON9NCK0?=
 =?us-ascii?Q?499J/KWux6Fwc49cxHNXkxJQ9dRSZ/2F6H2CYWtndupzvRoMSgHyW3PHXSSH?=
 =?us-ascii?Q?/Rsijt8FbA7b1xBLPs5mLQtdon56yKhuIpBCKI+YYaqU0z4611SYVJJOJ4Hy?=
 =?us-ascii?Q?AMEN2wpNPKkKw/y0j0RJ1zeZVfgLdEKgMrpmC0enm93nFY0UBF8VCFNIQUHZ?=
 =?us-ascii?Q?9LcJzoCm6TCs3IXsDeKmJ0dENftIEqqtKEIDcmpL9kmuT316WjA61bo3QpEf?=
 =?us-ascii?Q?isBkJ4ocERI7hsbcY+IAyfok0Nalowt5CCs+w52XzUwxerUyztVbB199K2sM?=
 =?us-ascii?Q?Td3hWu0Dly5807Qw198jTN6UDp2RYcJ+lNq0WDisQhH4vrZ8QQZbV89YVeZp?=
 =?us-ascii?Q?9213aBbqqRrgyKTrUOUEP+MBE1YE4u/iEM5eGq99Edks15jW5ti9Mv6Uvf8i?=
 =?us-ascii?Q?yc26pQQgJUVYC+fGEdM+EKUfDo/vJtil94XG57KQRMtpOPI1rHdq9RkGbUJw?=
 =?us-ascii?Q?D5DVwyH9AoF0D2dqpnNaLxHtguRuRDP9ULq+wdb/0MBajT0OdwgdOP6wijD3?=
 =?us-ascii?Q?plqg1JK8MQ+CJvu5yNXE+5bcsXWxU3buywUc0gxbkF/IV3MSIs1HIPhvhE8H?=
 =?us-ascii?Q?xE3KOynTN4HmaeDdWP8RS7dtU52Ac8BucpnWoexgVJwJjxbEG493RyJoFSYa?=
 =?us-ascii?Q?fQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c3a0f7d-8cfd-48ec-7e09-08dc4200c2c4
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:23:41.7123 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9d484MVeZeIzNfjc5HO+Ay9akZC6CIQHdQCsQsrM6768bJxlhxjS4h5zpe71X+kOSc+nSaQf4M6o3t2ijINd/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
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
index bc0cc5edc533..531c67083e2c 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -738,7 +738,7 @@ static int xe_bo_move(struct ttm_buffer_object *ttm_bo, bool evict,
 
 	xe_assert(xe, migrate);
 	trace_xe_bo_move(bo, new_mem->mem_type, old_mem_type, move_lacks_source);
-	xe_device_mem_access_get(xe);
+	xe_pm_runtime_get_noresume(xe);
 
 	if (xe_bo_is_pinned(bo) && !xe_bo_is_user(bo)) {
 		/*
@@ -762,7 +762,7 @@ static int xe_bo_move(struct ttm_buffer_object *ttm_bo, bool evict,
 
 				if (XE_WARN_ON(new_mem->start == XE_BO_INVALID_OFFSET)) {
 					ret = -EINVAL;
-					xe_device_mem_access_put(xe);
+					xe_pm_runtime_put(xe);
 					goto out;
 				}
 
@@ -780,7 +780,7 @@ static int xe_bo_move(struct ttm_buffer_object *ttm_bo, bool evict,
 						new_mem, handle_system_ccs);
 		if (IS_ERR(fence)) {
 			ret = PTR_ERR(fence);
-			xe_device_mem_access_put(xe);
+			xe_pm_runtime_put(xe);
 			goto out;
 		}
 		if (!move_lacks_source) {
@@ -805,7 +805,7 @@ static int xe_bo_move(struct ttm_buffer_object *ttm_bo, bool evict,
 		dma_fence_put(fence);
 	}
 
-	xe_device_mem_access_put(xe);
+	xe_pm_runtime_put(xe);
 
 out:
 	return ret;
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 58815e9bf242..e2e6b6dc8534 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -655,42 +655,6 @@ void xe_device_assert_mem_access(struct xe_device *xe)
 	XE_WARN_ON(xe_pm_runtime_suspended(xe));
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
index 643b3701a738..84360f4a1b60 100644
--- a/drivers/gpu/drm/xe/xe_vm.c
+++ b/drivers/gpu/drm/xe/xe_vm.c
@@ -1324,7 +1324,7 @@ struct xe_vm *xe_vm_create(struct xe_device *xe, u32 flags)
 	vm->pt_ops = &xelp_pt_ops;
 
 	if (!(flags & XE_VM_FLAG_MIGRATION))
-		xe_device_mem_access_get(xe);
+		xe_pm_runtime_get_noresume(xe);
 
 	vm_resv_obj = drm_gpuvm_resv_object_alloc(&xe->drm);
 	if (!vm_resv_obj) {
@@ -1435,7 +1435,7 @@ struct xe_vm *xe_vm_create(struct xe_device *xe, u32 flags)
 		xe_range_fence_tree_fini(&vm->rftree[id]);
 	kfree(vm);
 	if (!(flags & XE_VM_FLAG_MIGRATION))
-		xe_device_mem_access_put(xe);
+		xe_pm_runtime_put(xe);
 	return ERR_PTR(err);
 }
 
@@ -1558,7 +1558,7 @@ static void vm_destroy_work_func(struct work_struct *w)
 	mutex_destroy(&vm->snap_mutex);
 
 	if (!(vm->flags & XE_VM_FLAG_MIGRATION)) {
-		xe_device_mem_access_put(xe);
+		xe_pm_runtime_put(xe);
 
 		if (xe->info.has_asid && vm->usm.asid) {
 			mutex_lock(&xe->usm.lock);
-- 
2.44.0

