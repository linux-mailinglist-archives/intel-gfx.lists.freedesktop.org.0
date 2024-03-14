Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 835FF87BE94
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 15:10:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5FEA10FB84;
	Thu, 14 Mar 2024 14:10:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fcBc7OaP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DADB10FB7B;
 Thu, 14 Mar 2024 14:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710425455; x=1741961455;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=MhqmIeSBrgG38p2rfzSLZlHZqcysCDNgL3rgUY48OMM=;
 b=fcBc7OaPxj1xg6R2AhKjGozubKNLi8Ozap7bqND3Csc923uS0u5r8wSs
 2pF9nYOx5zC3dlKJvE7PheBYf+bw7bIZYnaJo2HLASDm3nWrWfGbkyeLm
 tbymkVt0z3aACcih8v77nzgrnI818XI+Uxoojen4ev9xq4C3YnmrRqY9N
 Dx2K8otOwMSSKl11ooFO1Qu22YthbpC7vPBrgV7765Cd1QE0M5lWvz7QY
 +6kZSW79YQilFsdamVOBb8sqUW8LEmKpD5LuPEl4u0wZVVRmzu01imrua
 wnsUJTIRID7lJWrq0J4L9m6afr+e184E2eMUo6mobwR2TzXTcpDvKIhsL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5426871"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; 
   d="scan'208";a="5426871"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 07:10:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="12230056"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 07:10:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 07:10:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GtFe5QN5rn8nn/htAOzVUe6SpMklFx4d+Y/1SK9IxRsCGUPC7gWgWdcTjr660QGpyXlQq43zrBuUNLr3am3iFXXepZuFy5fwHJY6IsjYEHgjCgmnRth9hf6eD+b85yJk0w2pEgmahCpzTAHeF7t5cQCxVPRnlc7kjwVXiXhlb5HV0X3OOimazajswz3n0MDa0M71LnIFE095pd/FdQ7RWvh6eD3XwIgySMpjlCKzuZ/7wF3jbS4d1q1KFFWjy6RP1Qp9TC2cVswvRoCdDZXvyBRBmVUZSLmjt97pqXRqDDoRLy+x2fq0tq9NiTBYyBITTfGSFxKySqxqH11iSGkQgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dh4lcL/6foWsdMGvl3JbTt3VUAGzne03iLvnqWlJn60=;
 b=T5L/bc2AQgtMlnjL+zfwY3B02JAbUP0j1A68c5uPyDU1K9CIn1DhWmYzgNVa2qVf7mjOCJZamucWJ/v2jogp76LSm7rfEqRw989jtnjhfNrZIR5G+XC52NW3HmEMwfrkr+hvMrCSiiKvXdzZOXPy10XdeowH+ycfW/qecZKImH8jS6Ak8KIVO8RbcIqhNSkH2HE3apACDly8yMOow7co2j84kj+Y0+kDlG6j1LBr3M+ZrxgcBV1wtpkiOn5Shg2EVF84limuDRyGpPiLqN6SlEJ0I+IGTvIb4bnmK8FRRasw40qVdg3p/n6nztn59T1hRgTVyIspPRy2+tu3wC/Pvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 14:10:51 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 14:10:51 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <francois.dugast@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH 07/11] drm/xe: Convert xe_gem_fault to use direct
 xe_pm_runtime calls
Date: Thu, 14 Mar 2024 10:10:17 -0400
Message-ID: <20240314141021.161009-7-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240314141021.161009-1-rodrigo.vivi@intel.com>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::17) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: adb6783f-b7c3-4e03-2ce4-08dc44308dc6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x1pbwP/EuxfXn2MLcp9O+yWhsSdmfSuMjWwFBlszOhqeloiY076w/oyzGQpXbR9216t8W7lTJ8a+dXvuh8Wen3ukUgCPVceukLIdSBlvDdguSXbTwhUSgt5/Yr64OWjpH1wpq8mK60+8M0zt3QZxSzpj0jv1UMOuvMKabvY1ijgPfeaHB/pzSiTu20VtzLXSXbMVBNFs7lF/4WYV3XV3VFlaYpzyl9tnhvbbhqvSmeguNZXvO5Fy0kdSSQaYHh8wHy91PIXWvGbWEP+fBwoHTpiVL7Q92VTe4VlbcF2ImA+qmqGGG/QJLWJRkiqltGlRnPTuE9bk3V/cMcc8qf0HeVjRKK0/c+UsG6dRyHEIk64Jg1kx3QWE4WrezuG4kiZU5r03N9UiXkQjgThYbsdSnjwlCoMMM3/q6hcXOvAplzmp4hgJGzjn2vkvF0Jk4BOjOPdxfm5vx94OPU1/W4xw42ywZE2MqRFCWOmkfBxMs1vJxcT/74RTi6lBCCkFOEEehWa7W8gfGGFc7nx2qgKud5LFgG/z9Afc0u7FEXd2Si9O0JA3K9cjsOGN7axZ20/6+lzR1R0R5A1vJ4VOc46g+nGoz6dYaj/130tl1HZqj8lkzqSF498Z0D4DxeOoBBovpn1aoSNegyDfWqUre4U3kiqQ6j0F8aETVyy0XrIJ6sM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KcTO+qXRR8SZUUTDpByUmUK+MakxcCPRwFH/hdf5WMoLftxZSpNvIN7HE6BX?=
 =?us-ascii?Q?6p8xfgATyO0XM1z0glZZ+RkVWY8Pm9PByrkvyisvAiSfVTHhMZBJFX4MiFBX?=
 =?us-ascii?Q?R2S+R2A76yB798rUd2iPWz9ZH77e8jkghJKEta+d2TmB38Q9gsWK7bWuqZN5?=
 =?us-ascii?Q?TR3DJBviGQRcLPn5rTT4GyMoys5UTNqzWypIm3cvQYbTJI6MamYqGDAUbZjK?=
 =?us-ascii?Q?o8zpvBWN5yVB74NtH/3wt9wdL0gPLVwPBrdZXFXmM9YCn6BhNbsQqIOJMU/l?=
 =?us-ascii?Q?5zfiezOtjfpnu5eQUoEKRQL5+z338zZvLIiLZxwTzFLH1+PoNOSDGzyoe4zY?=
 =?us-ascii?Q?XFbaBkTCNX4fDZiW3C8SlARfd1eb5ZYfEj9gmRz/ooQDuLcOz9lLhGZmm7Jz?=
 =?us-ascii?Q?yaKMyC1R6uyBePZg3Gp3s4PWhGkoIv5eUlcThomDEYZMNOIhC4mvNGQsjpk1?=
 =?us-ascii?Q?z7xdvhu7X9cbfRdg7MUSDLulWKSl7/PK2zsJo+VRg3CQL7jBcmPcINSxcDmE?=
 =?us-ascii?Q?r5Ja7uj2ZrNXyJsdIZY9U8RxBNqzbbDjx8aDGdt4l4xDhQqhSVUOddUaKi5n?=
 =?us-ascii?Q?cdF49+oshJEXJyNFGGeG3nn5uHWdbwSb2IVhrPfND9VyzYLREflAHm3h6mFA?=
 =?us-ascii?Q?TsuD8agAAoL9chLbqvvqme7e/UlJ1Qhq6USqJe41u9pHTK4K2OEN8YgJ2waM?=
 =?us-ascii?Q?QOAwY9UnrzfBxnq+C19xxd4Y7l5+vNu9/6aovFwDbUedmZTTul5N4aOo6+2I?=
 =?us-ascii?Q?QidYsjioq6ov9WIdvYF1JkF1VIHLEBDF8ljAjls4Ln/MeXh+Cq56kx+C2g8s?=
 =?us-ascii?Q?5Gk23IA6S4oV9Qjm7rnibbqgPUg6LWLgJzrPONLTXqv4nf2T4SQijhQ44Sgw?=
 =?us-ascii?Q?MF9sXPOwQQ9EHTLh/98ib+PbGmg9hWscngsl7T7CMgIZJiM+pcB8yVs7a1/D?=
 =?us-ascii?Q?4B4nGrThCcMOPMRFi9n48V94zBK6PylyMzptPGbag2z9HJxOS8U5XsdE5VQ0?=
 =?us-ascii?Q?6BbuSZoXWWo2Fshhfu3Luvo2AkkO/sjfBF08HJkv6+qy9UHGOSNMADBL1V3s?=
 =?us-ascii?Q?UMKaLoSNEJO39vCKoWa/46UggyycwGpFEjsX17luCg9T2EP1mQubpIfeq3+I?=
 =?us-ascii?Q?nOWuUPkqtbWN8IIgzk901w4xaSLDDAO2QymXkE90bdnHJz5xtDXbX3EyItZi?=
 =?us-ascii?Q?6Th+HIWbGOiL37k717LclZyuPZEvYTxzP/ZgMmGIT/8nbH3ydgByFDdjtoZr?=
 =?us-ascii?Q?T0mWWwS4NEEYZYpXyUKtc/MlKwM/wmXJ1qG6SOROczq1I6XLsHyIiYMhNpY0?=
 =?us-ascii?Q?3aygSDsb0gOtJ/nQ2X0Nz1yXc+lMpRbR1NbjSo9J2EFCnjgL5npFfaoRZomm?=
 =?us-ascii?Q?DxO4s2b70xagxQCywJLYjsty3kFPtQFYhdYMPipOS+pTVFUiRJzruIUg7oob?=
 =?us-ascii?Q?vFMaOReEt7aGkERS5eW1BBt0LY34B8JUsXy37LFLzxn1drszl9/U6RBy6jLr?=
 =?us-ascii?Q?LNBBK3uX+4YwfiMRHrS6ATc00P4LGX37J8BlSvuIgttFDtDRV1l8wsSDwt6K?=
 =?us-ascii?Q?ugHLObR1MsZI/T8Pq35+io/yuaJ5qKre2Hbq6nqNFgSd3YnL6WJZ8QuxSjOd?=
 =?us-ascii?Q?Hw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: adb6783f-b7c3-4e03-2ce4-08dc44308dc6
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 14:10:50.9865 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W3npp9X3a8xfWg0PjynD5yVTqktTRQypHmGU/F+GBv+/XJYd5L3Auz6DQ57SgTmIND+yQHq6FO/HVYV8UY0L5A==
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

The gem page fault is one of the outer bound protections where
we want to ensure that the hardware is in D0 before proceeding
with memory access. Let's convert it towards the xe_pm_runtime
functions directly so we can then convert the mem_access to be
inner protection only and then Kill it for good.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/xe/xe_bo.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index d7e0deb1b869..7ee4406da127 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -22,6 +22,7 @@
 #include "xe_gt.h"
 #include "xe_map.h"
 #include "xe_migrate.h"
+#include "xe_pm.h"
 #include "xe_preempt_fence.h"
 #include "xe_res_cursor.h"
 #include "xe_trace.h"
@@ -1107,7 +1108,7 @@ static vm_fault_t xe_gem_fault(struct vm_fault *vmf)
 	int idx;
 
 	if (needs_rpm)
-		xe_device_mem_access_get(xe);
+		xe_pm_runtime_get(xe);
 
 	ret = ttm_bo_vm_reserve(tbo, vmf);
 	if (ret)
@@ -1138,7 +1139,7 @@ static vm_fault_t xe_gem_fault(struct vm_fault *vmf)
 	dma_resv_unlock(tbo->base.resv);
 out:
 	if (needs_rpm)
-		xe_device_mem_access_put(xe);
+		xe_pm_runtime_put(xe);
 
 	return ret;
 }
-- 
2.44.0

