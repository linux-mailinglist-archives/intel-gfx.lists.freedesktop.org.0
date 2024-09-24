Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C64984C61
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:44:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C034310E76F;
	Tue, 24 Sep 2024 20:44:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LfHO2ZKx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18D7A10E765;
 Tue, 24 Sep 2024 20:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210645; x=1758746645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=ECc0WZ0ROROo2VGgmvrN0Bsxo2LlCDx2JyS+TlzBfu8=;
 b=LfHO2ZKx+eoqilIvl9x98H/4YoxTeO3n6YiSi4Bjf3lGNkIFZMY6dO/5
 sA2P4y/gFkSGxJUwBhyIa9kCF+DolP/r3B6rSPZVzv1xCUAiLcqsaJTvR
 wgzfjurdwOFKAZazyz1SEoG+pnX85hZKqKOvj4ScsCdcs8Wmry698lecO
 Ar/kbV4lxRxrLv4ehXYRCevj/qeYKYlUj017k1dWNi4tuzHxVT8KCazMQ
 wRvZpgbQGWsLafbGZ1nfcd6uF+04oZfwJ9xd6GsAeUAjWRkK3x39OaF0M
 X7v3J+g7C8+FF/KKPzoFbDrjQutYJpl189ZRrbQoc+sgdB1+w6aWYX42V w==;
X-CSE-ConnectionGUID: L5zWYDggRPiVkos4DQ6kAQ==
X-CSE-MsgGUID: tARTCOVOQXiMA2kyK9tyoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751614"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751614"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:44:04 -0700
X-CSE-ConnectionGUID: 3eCjsX7hShS/LwtkxNzErw==
X-CSE-MsgGUID: HNI3pOMNRNCKaPkIZ/B9kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298959"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:44:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:44:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:44:00 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:44:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I/VRmiRKUqNeifNdNzhZSmMIz6kcXqw+SBhCVeF+eHzexs81WES0UrIY8+Cq5x84X73VBxhVtdHUlB5i/1Vsl/2pd54t9WJ6XmFMIWa9og/9rpMoMtkb34Zu7TUUeL03bqPN7NLph47CDbXmG+7tlDJzo56DF3KgLUDNIOng45YIjTFiEcGKrvDo+ZQnYe1y7BCF7RJjXdKgcro5d//F4a1ykjJLqvbiHLdtpXIQHgPpRXJZntEJArbrUUyggPvhNP0e9dnczS6zr0TFKCG6JkYOotoZ0bdZrO2IIQG/nGZYZGvqLdSSlHIj1o5AnTjt9BQ0B5sVW3RGZ55UQoIzDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=egC2iF20uqubsH4gsXtGXj85M1I3o9vUNOZDDWxlZ6c=;
 b=aG5oE2a94uQYsPUJyzdNwXOXJmgf54Q9MoZgqr6uSlqpYBSwMSLZwAR1AFDdRsYNsNhrRJ7p7eNRifbi5UF7yeJzNDSjNT+YWbzL5grLmdzMsZd1/KGPALZBitgbehKHKJfA+10rzDteZq6lacpLlPin1e/PjgB7TGN+0LEfvCt/w/B69Gy7GgSKpQZh/zk6zLXobxZqR9gvWfMU2UdbsVglealfcUT+DR+M8SCin6rZfsSNQ0fYSJQFrFSrcDVXPC60wmqKZOe9FWm2aLeylbf5Q1Mwip2lzgNapMeOxVX2ubaoKuCV00nQm2q5y2lwpVpPw2+8a9ZHOa/Mb5dCxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7425.namprd11.prod.outlook.com (2603:10b6:a03:4c0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 20:43:57 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:57 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 28/31] drm/xe/display: Move display runtime suspend to a later
 point
Date: Tue, 24 Sep 2024 16:35:49 -0400
Message-ID: <20240924204222.246862-29-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0097.namprd03.prod.outlook.com
 (2603:10b6:303:b7::12) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7425:EE_
X-MS-Office365-Filtering-Correlation-Id: 618da4b3-db10-45fe-50ef-08dcdcd99c4d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zUmtc+3km2oHdzBUcUytyV3JlTDskI2X/oS9Etid4vGYUX+pDTJITGmjQ8jc?=
 =?us-ascii?Q?UdGDB1iWLuEejamvlts/AnAz3IVTIZ0PDZjSu8jjJ/M1+W6I8QwILh9mm2/R?=
 =?us-ascii?Q?JQ/QqsESpdISuDKrcRsR1XMPzGEQghkDbwi0M6bK6WOpvfL6t+berO16qlJH?=
 =?us-ascii?Q?uEnhS7OrjQmMjhfYXjK30ThCYBpnEYZMFnUBtwSfHeXzHgtXi5eq3KzeNnt0?=
 =?us-ascii?Q?aY2dA0zYeg7tz1pIqxNYR6nE+g2fqQFfgkndbeW2mXihVp82Gs89s01THe54?=
 =?us-ascii?Q?F/uTFcpEPnuaoWuJRX+5x57SqfgI/kohAhZxee2Z0MPbX37blfm2ovI6qMwO?=
 =?us-ascii?Q?nCJA3XUnwoorxEIzp6BgTZGJBwBKc2jfAfTVbvOrxCYKI+L9Ex9D26VRWtn1?=
 =?us-ascii?Q?kHGzue6bDyog8oK4CQfoROAB82RyyUNnKy40zaQRDYWwMSaw4/mSOOz5cusI?=
 =?us-ascii?Q?PBDSwlWbvR9IOhbqjhTNFtOv5bb4atmlH/FmttecAIi7qKkvP367CRYx2/6u?=
 =?us-ascii?Q?fJeKxDcWoc+3KO0FNspajVd2Prf6Ur2cmbiPy5jh7gwYvwVTpNV04IoR3nt5?=
 =?us-ascii?Q?mIYQk4y20HWgohaY2BWdavX9EJEKPi8wF43rUoXkDO5a5U/ZHnnK63dxYpLM?=
 =?us-ascii?Q?CiW0Aj7QRvEF84ItqncFRZOKbqN8vHH+uT8szxTuHt+TWawXNUHufRAqEUjI?=
 =?us-ascii?Q?jJhXQWVex1w7o+QLINFcuiGaXchKGXGuFQ3qx3HVVXma2if+NpKixTJorTa9?=
 =?us-ascii?Q?kcD96I1QJprFQuQxSJooiPobSKVEZmQ3qwsYrmX8TQSv06ZZXYU1hUaNun1S?=
 =?us-ascii?Q?nsTPvMy87G3ZcsIk8bmMk5XYYMZu/Y6xU4Le6ZpTt0tHZUcS2kWmo9j3ihs6?=
 =?us-ascii?Q?JzOyt2CNSNfKg/FiZQzotjZfT43Wosi1yy5qbQ4OhmF/CaEGoXxBt5BjDNx0?=
 =?us-ascii?Q?ufmWG0LszKpoIy7XzKF5sFaK0SYuNDUDdmky+PJUMhUUr7es1jVF/yA3/hsQ?=
 =?us-ascii?Q?cV12uhPdxXRhxStPc9m+gzYjeaECzN0OTfE/mabtbBML4PvhXq/Dai8ZCCEr?=
 =?us-ascii?Q?YGcOR+rwsaWr2Xw3bv3QJCiuu6TMX8DKF4JTKDaPy0cLJUO5U2k4PaNsmsr2?=
 =?us-ascii?Q?IYmMM58B/AlwXpzvjjp6BtXPWVJbvZ8h3vKrsXdbtSH2V7KlP1GAqEIQCaaK?=
 =?us-ascii?Q?5wNfxC4s+Lfir6MrgNBTClwIBCHSGHDqo6iGytrrxm7YvIFmlSFn/XqDxOff?=
 =?us-ascii?Q?/d89OGCxZk0TqjsOVc9w2NvOEM6TryvruAmCMI3zLHWZSEJlQmPmmv0u6v14?=
 =?us-ascii?Q?1FkbP+PrUcUIGZ3Q/GQBbOpvdxbqLJtpcp5uVD/V1P224w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MXfy871ga+1yx0/kMVA05jV4wB1Duqogpoh85ga0AvDN/P1vqqHTmpg/ty0x?=
 =?us-ascii?Q?YXaUwMJJSPFLf4aGNWSCNpm3Xq7HaPBk+NXG26HJrajw4PtrZjPb1ni7p+rn?=
 =?us-ascii?Q?pH5NaMvQxL892b0qfZQtVS5iVUQR0gx+WCzsfQlzm+3XCbaYuMZd6HimBXwW?=
 =?us-ascii?Q?L8B5n2PTTuJhaEgXZhbWx6Xvc3yDwn3NhrNxOvvromC8MlU5WgIzCnHmAtWw?=
 =?us-ascii?Q?MjRNMljk51OCGuebecQpgDTy2AlJZKPe5tWn4iE8LF/mhJPi3yoSmUXk8Vfb?=
 =?us-ascii?Q?v1UsxhL8dGhRw1HAX0xXbbm2KA3/A4DldkH218BmR/g+fc8DiMOBjuPDe5qO?=
 =?us-ascii?Q?s8yslh4Vm4dMcKbiXrjn52oOMRLHWG7XKdyYZjp9vNrRu9QjjNiysXLJxzg0?=
 =?us-ascii?Q?euj1KMXSy+/WcEYqvIWxWT0xEVEc1rqjvemwbkm0CsX/QnIfQx8da0Ek/KLS?=
 =?us-ascii?Q?K/ViQEI52uuIujgtwkveoz/3MfLLTihVR5va5BBa0UoM0CGQxN2x8feLXWXM?=
 =?us-ascii?Q?ofqUqCwcNX4M4xpLn4yijkNoBXQzlHsOlzphUGWf1D7YbcmYh4R0ESv8rzlB?=
 =?us-ascii?Q?oa1fu+vmcf99lUozW/WtuMOorOoJFaI9vH59v3WVUgcKyxBNcw3/Yr22RlL2?=
 =?us-ascii?Q?y54d+xl9ijpX+Ba0fPpN7bsAuIkEfuMjGtFIqs8J40PaLD13Sc4HI+UeDSA9?=
 =?us-ascii?Q?IfzrZEJIZPBbZt9KwF0jDiVzYvfpHFHoQx7xLQQjVONjcrr8ObM7AMmgyLHt?=
 =?us-ascii?Q?6fFgwDpOnMWSCi6M7UjF8dYFb5EPN6EKsONC9a0dxYiLeUCVUixW7nulmHII?=
 =?us-ascii?Q?rL4h3kznN+2gcY+XeRVGdAAY+REv2TYn73TkvcVXiwrQx5nzg/+aq7qgfiC5?=
 =?us-ascii?Q?oaTBLxwfQyOhsWwclbcW3CEHA7OG2kKL4LkjnPgDjM0/790moiHCQafwD5Oy?=
 =?us-ascii?Q?Swt0jlGOq7ixC5eqITpqCcPqq6fOB9SH7CqHl4KydnN2vPpeA+fbz6CxET6s?=
 =?us-ascii?Q?kFMbt0AZiGRWcrlVTvJWFW12jra8ktEkLcn5ABUHhjL0KSyLvwcakqw3yXBJ?=
 =?us-ascii?Q?1/Bebw+isvTjgXiUCnR+6p3A7QKAbtTG9X80jQ1+qQPBC+l529rvSI4ugZIh?=
 =?us-ascii?Q?gzOQBusfjeAoDHV8EAh62PT8hVuJ8iEW6v+oRyxk7i5n+z3ldmMg/Odd8+pD?=
 =?us-ascii?Q?1PZoZSs0lT/ZOnbbfB6p5yqOCUze0xvygXUpdPQoqJwSR0KV0s4fNsyY2E0E?=
 =?us-ascii?Q?KcJG9QOlceR5DKj86Ab3mkRnN+sw7mxbGJW59Rvi4qqOc5ba+dQfqvRX+r1z?=
 =?us-ascii?Q?fyNQCu6jt/M75w3n/yK0/HcXOjIYrAOXvimAOkMzfqqj2CHrrj/yvich0Etu?=
 =?us-ascii?Q?7518emOEIQQRe3BLzAX2YhRb0SDT9udDdu7zvk/k8D+ASlsdzESYv9spwqrX?=
 =?us-ascii?Q?oCiytOvDTSwgvEFL6cFZ6NMxFQCLlg7KBQRxlW3qK7t+ZCcMHB7hMBc12ShE?=
 =?us-ascii?Q?wQ5ePZjAf7Ni7xGRyBDBkwc2XjeyfiJyfsSENAEVLHFqfNejZTdgffe41E5F?=
 =?us-ascii?Q?GDRif1RhYZD887R5wSkISYVXF2a4WVAlT7adpWFlRBZyJj8i5PKim0vkCh8K?=
 =?us-ascii?Q?Uw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 618da4b3-db10-45fe-50ef-08dcdcd99c4d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:57.1566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SFDuBu2dl5D3rfxnJovLupQWZ3eAwj7M+iJ//h0L9AKLSFpTl+iZHwL8shjVOV8LsOB5zRvodnRBpXn2RXMrJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7425
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

On runtime suspend (regardless of d3cold), there's no need
to perform the display power sequences before we disable the GT
and IRQ.

In a matter of fact, the i915 runtime suspend needs to
disable power, which asserts that IRQs are disabled.
So, before the runtime_pm sequences can be reconciled, it is needed to
ensure that the Xe's IRQ are disabled before the display.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/xe_pm.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 4cacf4b33d83..16854215bea6 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -402,8 +402,6 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 		xe_bo_runtime_pm_release_mmap_offset(bo);
 	mutex_unlock(&xe->mem_access.vram_userfault.lock);
 
-	xe_display_pm_runtime_suspend(xe);
-
 	if (xe->d3cold.allowed) {
 		err = xe_bo_evict_all(xe);
 		if (err)
@@ -418,6 +416,7 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 
 	xe_irq_suspend(xe);
 
+	xe_display_pm_runtime_suspend(xe);
 	xe_display_pm_runtime_suspend_late(xe);
 out:
 	if (err)
-- 
2.46.0

