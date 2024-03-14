Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8DC87BE91
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 15:10:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37B2410FB7C;
	Thu, 14 Mar 2024 14:10:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ap7DeJ2/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1188D10FB7B;
 Thu, 14 Mar 2024 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710425454; x=1741961454;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=zF2bvz8u7UazFNSj2osmPrY3DiJ2B6/th2CD4ENMGoE=;
 b=ap7DeJ2/B1m9K2mdk66yclknn8NKtKWHrAgf4A/VnEB3NqR3y7JZEDiU
 afckVNBpEmz2vt1ggQLyocqSxAYQmVqXt8QBf14+BYFxJP5xszmuWOzHz
 wXF+Q/MOUFv/q4OHXDmp4PJi4Zoy2OG+cro0YAGe9px8O+sdeuKQKqZAi
 VSKodZlX6GZx4r6T3YBLbosTjNOnZSrypMQVWk+L2boQqLhA3d26A/QiB
 ly7YfTR1qvLHdXbDq4m+/eiHO7aiP0B3MBYWfO374N3qYwkA+m5vIZLJN
 PVr5XqgKQBW2cmKgKjxHeIWOS8d344VlSK9mtz7Y6oRDiSLaMT5/V59Ym w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="30683029"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="30683029"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 07:10:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="16963298"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 07:10:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 07:10:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OsIB4HXDSutrvPMW7etCjAGn1mbrWxM9kmLz/f0aG3vaiPcHfwoHK5+wWX74UwMR04HnPlTgE8rzZSAim7IrQX57d2wQDsvVdvSVGdjerjez/z5GQSFsPskAMpq7GfZN+8ca1pFSHms2rJTG3iWt7Ku1dy1FP//OKibbJdwRexZpwWAOncvenYTSjGtjfYwXImmx8GcX/Oidm0hgdEKItGEoQy/Tzm9TPEfJl67KTOa7ps5CsJYfxtv2dMnisv+qnRxxg3gSUilTs9AwIWKWzLKjW8I3k+v4OAa00xvJrdzeWftTvmvIDml13ecXRn6THG8Izkh3hX8nXScoixzX/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nmp7goPO0Hqms0y+cZmv5/e3SdOD/X20kiDS+tyZMnc=;
 b=gk9NZMV+ANStEwgROoNhhCCBYP75gKjRTXBMxFmeciLIOeteuIGbIwmsswlaJM2WjYtSuJ5q5T4Yah1b0xC8D0si4djx5+BgP8ljbLaMnlm01HFOePRddFeQ0tmGYT80Ew4fjIXc5YDUkGzCwH52Z2GrbRGesaXaNJISjsWZaj1FlVZAZTe0xJda52iPv/Oj7tMN8rjcBDI7M0GgOo6g2kc3nqFgpxlHPU07K8DeYSgDj3UQPKS6krfFcH1BD9cxMl3OS+MhcLxw2JAqDV8Lyue3Qx8jsotqqOS2NicPhPIHmN1ZxKgMlfpQH+neMhHkhFyTIrdw8eX8uQM/Z5lYew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 14:10:47 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 14:10:47 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <francois.dugast@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH 06/11] drm/xe: Remove useless mem_access during probe
Date: Thu, 14 Mar 2024 10:10:16 -0400
Message-ID: <20240314141021.161009-6-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240314141021.161009-1-rodrigo.vivi@intel.com>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR07CA0005.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: 7581834d-3513-456c-3478-08dc44308bc3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lhLEedTZtABgzIoQp0BUCIyr9XQfc6c/KDzZUDafJsl0Ma6KfVS2CmMlBZZd1PJQDsqg9VjZc1Wx81ydcYjs2ulNUH5jM6KN+qE429KE0YKT+WytzJQlj6vFFDcd08myYrRqAzIfuXSQqn9oCdajvc2BXdG/TK9znTzY/dUC0BX3epRqNR6GBmqOG+wCvmyGVyOLryPsGtiqNP5qqSxc0bUkMnsezxIhx3KoAYkWaREN38qvN3NkKvw+WEZw7z2z5Om336zDkDWB2M8Vg9llB3UN0AeEPwOj7lgoS0JyS+Eh5hu48DVWFWXWyHqEIFWJeu8Mnv0HljpZ/Nifr5ujV9SAFhg4G44z/eRvcAAvxfXVuxTDOwHuVjVJFeEZ8pfpCCL0SqbVDNCgtJL2KMUYJSWx1KM1v+USyd7Mxri+pQqbDCfTnBLPOAZV+p1eKVtFE2LwtCfBqPqX2+K7YzsjTH+AKC44Y2L0NA/6iphluz5rmKDZgKMblzl6TQL2nho25kW663onizgjDumn5xnI2aa0BMpRa7kSIOmzRr28c7z2Fcmt6Kxo/fPiM+WGfbL1Zl4EHZ/4aS/XZB1lhpDaEwmWl5mLI5OmslOTqQKD5euJ1P+W2LPhJuoQsYKmCE6/coCNQA9P2YvgpPP6W/cXpVmFX2lsc6nmHP+s/mvLYGA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w0qcrRprZNzQ0FFlG88iUOLzkiwqC46BXI61ep5HIsHsyDlHA94/wbu8yfRM?=
 =?us-ascii?Q?y9GZ/Kum3L3zZEy+aTnTbe0Lgl0KLb6+KfrDtZ4pHo6t7fpUD2OyPcd5QWap?=
 =?us-ascii?Q?fnG55Y3lzpgfcCNI/Ga7FMp34QQdMnUdT9zIGU/6d30SRKSxr584pOqkPtei?=
 =?us-ascii?Q?kLEaOV0+u/mfc0K/A7+BcyhmKQ4MbSNA65Ini+Pc6d5sw8uF059DX+0tPMYx?=
 =?us-ascii?Q?M+ABa6QtaUbZdwayka2ilfIwblB8aIfnxUon4/LowkVNCGfC6EQBizYRw+g0?=
 =?us-ascii?Q?STrRHDXRKPY1aqgmnpj4aIU9BAHRZU/HiHyHbWfqLX6UNfS0OJdPkJ7sLAzs?=
 =?us-ascii?Q?OPPu5kHx04JTq+9NQJwL6A7y68041GLoWpD4Rp64PF8m7mYo2i8sfKRT5IHt?=
 =?us-ascii?Q?j4RJMfQFvecoUNY+frGARFyzXUjNme6lS+0Caxik5+AvwTLkgKHqqCoN8+vK?=
 =?us-ascii?Q?sjdCA0W0pNE9TayaF314/bw/B37ctu3+RjQr3sb4T0T7cOswWrf7NLR1aNYH?=
 =?us-ascii?Q?0x5IxAv4B2wFoW0B+B4mR1IczYUDhiHiD00w400tihMw1rYHkr1IE863R/fH?=
 =?us-ascii?Q?q6YBv+je0/YAYdcTIOlcQwYS+I27QGvpF0w52txw5PWcQG5nNpIMvhG+9DB4?=
 =?us-ascii?Q?VBgENSRn2n0Q+yJGLukHCnHAp/x4PX9YzpSj5E61WHLnjFtEnhktZmPmcquk?=
 =?us-ascii?Q?y3ivJ3/BWJ8YEvNssDYB/3KdrqoA5Ts6yd1xBB6AS6yMYiTaG5CzV/iMQYp3?=
 =?us-ascii?Q?m6nfsUO1Z+Eg1rxKaQONGYDVIIqiMOcWTJzAI25J58Rlpz52P5zCeT7K/qqu?=
 =?us-ascii?Q?D7l+GvduT8IlaTu4O112tA7o+dpncEdEJ2/fcD/We0OwZsNQ/S4aGKfV+QNT?=
 =?us-ascii?Q?DE+T0jeaLg60M+77yFMh9GAplnaPp1qmXqJNsXw6WDlpiM13dikBHKAVxLc9?=
 =?us-ascii?Q?+x1VWVoi8ls8XYYvHS9GKad4mhY37ItHZpKsxqE5K0CHqyQUeC4gElmR6JhR?=
 =?us-ascii?Q?Z/5o/gz7GVq+Dqru5HukwaoYHiZd+lne9NSGr9nlrYJrQ01p/P+sLS11RaHD?=
 =?us-ascii?Q?4DYiAa67KzXj/eZbirhMeZzA9k8TKIyTLNkhA3t7x64YWSt73V5rapKKNGFZ?=
 =?us-ascii?Q?zHL24sVTi+11I2KcSYlFoZ+h9Ka3eQH3E/OvvM/9NRS4CJNKihsDjSR3f2nw?=
 =?us-ascii?Q?kcBpvrzeckNFGa4Nhkc6xI7GlB9w6nYrArDy4+O8CMlXpbo0ErB+Q3PvR2u1?=
 =?us-ascii?Q?3TLYxD478vW1D3Fuv2LYxpH5w5jmVpx1q2PVVO1Af8fx9Wrk4btuIGd7oYPG?=
 =?us-ascii?Q?DHFtzTr2G+Y7hmjRLSmTHPtA19+H2zKWnHJgJHbvwkdiIUHYCketLGBO275Y?=
 =?us-ascii?Q?uVGPduFc1aSgO5L4CTI9hJBwuaqu0NF762EjJM2znK4W8PNiYEfpyV0h2O84?=
 =?us-ascii?Q?7Ryv+AnPxbPiZa9l5sIoTU/m2RzbI/xF3lycz+XuUJ2xhiShA8hyZSnkm/5G?=
 =?us-ascii?Q?xGfR74urelRMUmgO5kYHknarbFQzgO85uT1JcrWcr2nJF//OkeGL7ZHw4P8F?=
 =?us-ascii?Q?BOXMss6CmV76KFk9zXVAruegh6pbYMzi29nag/4W6WrqWWqCpvIgKmyJ1Xcb?=
 =?us-ascii?Q?xQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7581834d-3513-456c-3478-08dc44308bc3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 14:10:47.7125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KON1S31TQtNVVNAOUwQJ8J1Sb0JPmCLp2BmH5u6YztdEkN2lLOl6HlcsEAkjefFAR0AMsfLBfy/7FjPbZcrT+A==
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

xe_pm_init is the very last thing during the xe_pci_probe(),
hence these protections are useless from the point of view
of ensuring that the device is awake.

Let's remove it so we continue towards the goal of killing
xe_device_mem_access.

v2: Adding more cases
v3: Provide a separate fix for xe_tile_init_noalloc return (Matt)
    Adding a new case where display HDCP init calls which
    are also called at display probe time.

Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c |  2 --
 drivers/gpu/drm/xe/xe_ggtt.c             |  2 --
 drivers/gpu/drm/xe/xe_gt.c               |  9 ---------
 drivers/gpu/drm/xe/xe_tile.c             | 15 +++++----------
 drivers/gpu/drm/xe/xe_uc.c               | 11 -----------
 5 files changed, 5 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index a221f0cf4bac..b2bd56a9b76d 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -70,7 +70,6 @@ static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
 	int ret = 0;
 
 	/* allocate object of two page for HDCP command memory and store it */
-	xe_device_mem_access_get(xe);
 	bo = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, PAGE_SIZE * 2,
 				  ttm_bo_type_kernel,
 				  XE_BO_CREATE_SYSTEM_BIT |
@@ -90,7 +89,6 @@ static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
 	hdcp_message->hdcp_cmd_in = cmd_in;
 	hdcp_message->hdcp_cmd_out = cmd_out;
 out:
-	xe_device_mem_access_put(xe);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index 325337c38961..0f96b7db6dcc 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -206,14 +206,12 @@ static void xe_ggtt_initial_clear(struct xe_ggtt *ggtt)
 	u64 start, end;
 
 	/* Display may have allocated inside ggtt, so be careful with clearing here */
-	xe_device_mem_access_get(tile_to_xe(ggtt->tile));
 	mutex_lock(&ggtt->lock);
 	drm_mm_for_each_hole(hole, &ggtt->mm, start, end)
 		xe_ggtt_clear(ggtt, start, end - start);
 
 	xe_ggtt_invalidate(ggtt);
 	mutex_unlock(&ggtt->lock);
-	xe_device_mem_access_put(tile_to_xe(ggtt->tile));
 }
 
 int xe_ggtt_init(struct xe_ggtt *ggtt)
diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
index 85408e7a932b..063b710a8c7b 100644
--- a/drivers/gpu/drm/xe/xe_gt.c
+++ b/drivers/gpu/drm/xe/xe_gt.c
@@ -347,7 +347,6 @@ static int gt_fw_domain_init(struct xe_gt *gt)
 {
 	int err, i;
 
-	xe_device_mem_access_get(gt_to_xe(gt));
 	err = xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
 	if (err)
 		goto err_hw_fence_irq;
@@ -389,7 +388,6 @@ static int gt_fw_domain_init(struct xe_gt *gt)
 
 	err = xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
 	XE_WARN_ON(err);
-	xe_device_mem_access_put(gt_to_xe(gt));
 
 	return 0;
 
@@ -399,7 +397,6 @@ static int gt_fw_domain_init(struct xe_gt *gt)
 err_hw_fence_irq:
 	for (i = 0; i < XE_ENGINE_CLASS_MAX; ++i)
 		xe_hw_fence_irq_finish(&gt->fence_irq[i]);
-	xe_device_mem_access_put(gt_to_xe(gt));
 
 	return err;
 }
@@ -408,7 +405,6 @@ static int all_fw_domain_init(struct xe_gt *gt)
 {
 	int err, i;
 
-	xe_device_mem_access_get(gt_to_xe(gt));
 	err = xe_force_wake_get(gt_to_fw(gt), XE_FORCEWAKE_ALL);
 	if (err)
 		goto err_hw_fence_irq;
@@ -474,7 +470,6 @@ static int all_fw_domain_init(struct xe_gt *gt)
 
 	err = xe_force_wake_put(gt_to_fw(gt), XE_FORCEWAKE_ALL);
 	XE_WARN_ON(err);
-	xe_device_mem_access_put(gt_to_xe(gt));
 
 	return 0;
 
@@ -483,7 +478,6 @@ static int all_fw_domain_init(struct xe_gt *gt)
 err_hw_fence_irq:
 	for (i = 0; i < XE_ENGINE_CLASS_MAX; ++i)
 		xe_hw_fence_irq_finish(&gt->fence_irq[i]);
-	xe_device_mem_access_put(gt_to_xe(gt));
 
 	return err;
 }
@@ -496,7 +490,6 @@ int xe_gt_init_hwconfig(struct xe_gt *gt)
 {
 	int err;
 
-	xe_device_mem_access_get(gt_to_xe(gt));
 	err = xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
 	if (err)
 		goto out;
@@ -519,8 +512,6 @@ int xe_gt_init_hwconfig(struct xe_gt *gt)
 out_fw:
 	xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
 out:
-	xe_device_mem_access_put(gt_to_xe(gt));
-
 	return err;
 }
 
diff --git a/drivers/gpu/drm/xe/xe_tile.c b/drivers/gpu/drm/xe/xe_tile.c
index 0650b2fa75ef..74ecb5f39438 100644
--- a/drivers/gpu/drm/xe/xe_tile.c
+++ b/drivers/gpu/drm/xe/xe_tile.c
@@ -160,24 +160,19 @@ int xe_tile_init_noalloc(struct xe_tile *tile)
 {
 	int err;
 
-	xe_device_mem_access_get(tile_to_xe(tile));
-
 	err = tile_ttm_mgr_init(tile);
 	if (err)
-		goto err_mem_access;
+		return err;
 
 	tile->mem.kernel_bb_pool = xe_sa_bo_manager_init(tile, SZ_1M, 16);
-	if (IS_ERR(tile->mem.kernel_bb_pool)) {
-		err = PTR_ERR(tile->mem.kernel_bb_pool);
-		goto err_mem_access;
-	}
+	if (IS_ERR(tile->mem.kernel_bb_pool))
+		return PTR_ERR(tile->mem.kernel_bb_pool);
+
 	xe_wa_apply_tile_workarounds(tile);
 
 	xe_tile_sysfs_init(tile);
 
-err_mem_access:
-	xe_device_mem_access_put(tile_to_xe(tile));
-	return err;
+	return 0;
 }
 
 void xe_tile_migrate_wait(struct xe_tile *tile)
diff --git a/drivers/gpu/drm/xe/xe_uc.c b/drivers/gpu/drm/xe/xe_uc.c
index 7033f8c1b431..4feb35c95a1c 100644
--- a/drivers/gpu/drm/xe/xe_uc.c
+++ b/drivers/gpu/drm/xe/xe_uc.c
@@ -32,11 +32,8 @@ uc_to_xe(struct xe_uc *uc)
 /* Should be called once at driver load only */
 int xe_uc_init(struct xe_uc *uc)
 {
-	struct xe_device *xe = uc_to_xe(uc);
 	int ret;
 
-	xe_device_mem_access_get(xe);
-
 	/*
 	 * We call the GuC/HuC/GSC init functions even if GuC submission is off
 	 * to correctly move our tracking of the FW state to "disabled".
@@ -65,16 +62,8 @@ int xe_uc_init(struct xe_uc *uc)
 		goto err;
 
 	ret = xe_guc_db_mgr_init(&uc->guc.dbm, ~0);
-	if (ret)
-		goto err;
-
-	xe_device_mem_access_put(xe);
-
-	return 0;
 
 err:
-	xe_device_mem_access_put(xe);
-
 	return ret;
 }
 
-- 
2.44.0

