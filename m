Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4B3869981
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 15:58:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7296E10E812;
	Tue, 27 Feb 2024 14:58:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="klFQlM8S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7ACD10E812;
 Tue, 27 Feb 2024 14:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709045931; x=1740581931;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=bVTl7xwYlzLLnKOJwzqzL8WkTITI3WhY/LyPVJMrAs8=;
 b=klFQlM8SIL+wR8SnhYDn6HnziIZ0+4G/16Loh/Zt3T5TeLfG0HtYfxMc
 xXDUAw9rE6fJcS8h12ykXzFD17Xg85Bl8rb2B1AwahtiL5iR7cReSJbK9
 H//54anHU3QTYUyZ13ilv8TSqainaOCgt7yCrTXN5pl12pdElaqvFA0d6
 6eST53tzqjZL+7SM9OS+k1nbOSadxOHi3VZ+liO/rI88auOhfgKI3ZzwB
 vZ8pHhsEOKntY112SRPtN5fLzkcCSmgcTnWh+9LBE+9N9cBX5BFMQn8Mh
 5H7gKAP6j1N7vu2BiEK24SAHKITRzenmtHm1UtxejKXXmcx6rBi0X7HG0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14831141"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="14831141"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 06:58:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7421483"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 06:58:51 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 06:58:49 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 06:58:49 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 06:58:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e2BQDCYlPWKT/NuoUFHUq29ERdj2wWwJXikoLyd0161kctjWvdr2DFA7Lu9adRnVG6hRg4GPy0I4rPdEMl4iTsQXv0UUzUxxxYE0MvtgfwII3D3iVcBGogWCDMyWMHWGk+j4DznVw40JvLtYJiEaWkm99d7b1Bn0Oj/uJxEccjAS3ykkzsyPvIcOuVPZDbnMImnc6Fabpyx/86FYOK2WhOV59hr79Eik6hbBk7WUjZTvmswLcNBu7A9EUS6DJgqb2lxFcg4KP3NzP/usGP6dyEI43JGaNUxlIDk3mENgDXDnfCanbYKwCq3Pg6tnvLjvlmm0Y/s09VE9ayV+afTg4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Us0ZZJIy4AhNyMJeHY9w5NJlmyBr5hEt381zCzxPC8o=;
 b=MuVjfwn7QHpI5V2s7QW5qZtGzSFLKqV0arBs/w4N6fyn14t66fSUQPqf3Hn0jlbxl4Hd+s3VsKipRZPFgr8s3sbirCpH2fzoxMPvMk9HJb/RRTMOUle9kaxf692RVism3XxZpfZdiP3QoAg7uHERHuLnaPK2wsNzWSJi0IB0BTAOmrqlW4L/vyYEfIqHUnOpuv5PGJto+fhGRYpF5vycF2BlnoUEbsPo0MWCh5qOXKsj9ghNpi4uxRgzTDJL/ijuZe2Q5xw59VmTZhXrg5/Lmqkx1WaaGGngnWC6hcUJ8/sSYWnAb49reB2mu9hb2cjFCS1eWVHJlF/ed59+QjnyGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.13; Tue, 27 Feb
 2024 14:58:42 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 14:58:40 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <vinay.belgaumkar@intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [RFC 1/3] drm/i915/display: Introduce intel_display_guc_metrics
Date: Tue, 27 Feb 2024 09:58:29 -0500
Message-ID: <20240227145833.490328-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240227145833.490328-1-rodrigo.vivi@intel.com>
References: <20240227145833.490328-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0268.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY5PR11MB6366:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e6cc82f-8f1d-4ef2-4c46-08dc37a495b0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uDKronBQ22lavqFild8D9gYtHcPJbEkWQgcMaXn1UP1ISFEeYcNLseM0v4nek6AANqXZzYK7aeLKV1Qv7DFBTktpDsXzXxh5z+ejP2HVf9ncHVT7EKLd4cBgjaNDuI3QLLwoRicVocHYaMTDO57Rq1dbtt/igxPH8wO4awNH1zjEGKo33AiqQ6qawWbzVN7NQqofziS8SezXF2WwLMPd+ZLGcv45Abzb6Rl48hTBrllVUTZXxfflQoOc4DphYrXf4zRXY59cJ8ucgc4ZlCYluH1dRkn/AZEkBEdYWpUc7JxFo+m7TeGN5z9regI7CEBg729A1DIIlvBD5xta/efjunbArVEqjmj+B/7JiWYfCE6ZPfnelqd0hSfJNc7OZETbY+2uiwLx0YeKPuHGC5+NiOcdKE37FUqOvtJD76B9Q7Q9Y3ChdbpY79tQejHjqAXbpV+Ls2+2O3UQOXTPdLTdkwgs7h4CXTB240vkBGKFKn8QDwlg9jqj/iuF9XuwStqf7RlqRFIAIUfZLWml4vLGJrsUz+bOSNFQc2XaTu3FSvBZIgw2nOPm+w3E79SNYgPgc/GHkKl9jT83FDCI07tIFvjyl5RbfCUnEuvZABUR1KujrRie4n+CacY833NylbVY3W32pK7g+9AxG0/1IUuq/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnMwZmJGcUFLbzRZVGd5dWdVVGNZUlBFR2w2ZGJCbnhhV1RGYnpsOElhWG81?=
 =?utf-8?B?czMxbkdjUnlOcGxWMmxmV2FKdlo0QVhVRTJZLyt1dm5XeXl5d01YLzlRcWEy?=
 =?utf-8?B?dnBWdDFLaFJtYzRubFRoeGkvMVdOdXZZbjJyMXVJOHpyVFdOd0tWWXdMSTBs?=
 =?utf-8?B?VWN6dVNpa2N5RGtuSkJud0dydzdNZjBwZEFwblpjM2pNdHloODJTL1B6YUlz?=
 =?utf-8?B?WWlnNW9TblVINmJncURsR3lRSCs5aEF1VmI1NEtUbjlEQlBBTFV6K29Remgr?=
 =?utf-8?B?bFg2VWRVT0VJRjFkSW9USDZRZ3FIL3F2UExwOFVvdE05YXp6bUsxTmRkbmQ0?=
 =?utf-8?B?TjRGRXI0am44QjVkV0t4emlGT080MVlxcHBaU3pMcTNDWFI1aUFVa3BSWXVH?=
 =?utf-8?B?a1R3cjVlekhBTUF6aGNUM0JYRzBVeVovK2t4QVZRUXVYVnFGL1RtWS9kekw5?=
 =?utf-8?B?SmhLRS84QjlldHJnbW5weExxU3VTT3RjdXdDUzNyUEhGcFBuN0M5SXdpZGpV?=
 =?utf-8?B?aTJpdnVMdFZMdS9pT0lER2gyT0ZJRTdYQVdvQkRNVWhiZnBNWkZRWHpTaGlH?=
 =?utf-8?B?Q09NNkF5elhPQnRVMTRmRnFZTFZlVTczR251RGpQOGcwdHdXRG52czRMeTJT?=
 =?utf-8?B?dHQzMlBtdjZRcmJsVWVhZGxsOFE4ejRzVHBpanFsNVZxY2hlZ3hxN1Z6UUhY?=
 =?utf-8?B?YVhtKzB4c0h0UW1UZUZkUTVxcnpQODJZRGxHZy9YdHpRMndMMStRbjB1RWpP?=
 =?utf-8?B?TVhtanQ3NXV1bkpzNitpdzVJV3ZCeTNib3lDbDVrR0hWSVpSdXY2NGIvRzhR?=
 =?utf-8?B?M0FZL0lmWHFSVzdiT3NFRGVrL080UUxpSEFHdjNHNW8yRlFEMWxWQlZtT0d3?=
 =?utf-8?B?aGxWT0Fic2ZuWVRjb25JVFh4MmFBVHRqUnRzdmxmVllwMVczcXk5VWxpZFdM?=
 =?utf-8?B?WklaSzVYeEthRVdmS2Vzb0tDckhFdlFaaktDZkEvREhjUHR2Qy9XZ2NOdnBu?=
 =?utf-8?B?QzFMYWdQWHR5U2hwSklxNEs0ZTVhSmYxQ3N1OFNBY1NLTzBDaVBVRnZDdFdw?=
 =?utf-8?B?cnF3NCtGcjRvdVo5K0NvRExNMCs4ZjdnL2J0M1BvR3JWZytzb2FFN21FR0Za?=
 =?utf-8?B?SU85Tmg4ZzcxQmpwMHdUVURTSnNjeTk1a045REczWFlpM1l0dTM4Nk1RNjhR?=
 =?utf-8?B?MXhVdnlUNGpjd3p2SWN0UGVlNjZ3RDRVSS8zRDJ5Yk5uMHpVVGlrSU1yYVla?=
 =?utf-8?B?RWJHYmx4NmF6dDRKRDlrVlZYMytLRVFLVXdzKzduYzB2RDlLNHlvN0c0SWtD?=
 =?utf-8?B?NVJ0NUwwQWJHWms3Y2NWVS9TTWM0ODh1ckd0NUZ2eWFwbUNtTitENXNSNGJR?=
 =?utf-8?B?bi96M3VnMzZjUFJueEJTZEk5Q1lJQ1F6K1QvSFNFOXNJNlVvNjdZYy9OdU4w?=
 =?utf-8?B?a1o0L0piQXMyamo1Z1R4VmJraGxLbklXVDRLcklDNzBOZnI0T1h4V3FYbEc3?=
 =?utf-8?B?ZzZKckVYWmxGTHN5YmpQaXNxWlJib0xOcHg1eTFCOElYQ2FialZjb250VVU5?=
 =?utf-8?B?RkF5bGlrVmd5dTFHcTBGaDlNNVdqZTZrZ2xqNG5GMFB2UXdhcnA2SEplaVBX?=
 =?utf-8?B?TGhWTlVKVlBpZjVzWk56Uk9RVzBJRmtUTE5iQ0NUeE12aTJiMkhWTCs1U1BK?=
 =?utf-8?B?aDJ3WWJCNTBJL3NoMzVzWkRwNjM2RTZ5aFQ0dmV5N3hSWFJiSHloeHdFRW80?=
 =?utf-8?B?L0ttUEptT1ZCQytMSlFYRFpSQ2xVd1psUnVtMHBIaFFUcGIwL29GVDJUWFcr?=
 =?utf-8?B?SG44d3FxUDZvaFUwejhwaFZCbTlXMnVDSW5YRStiNkt6Y2luY0VvWUtXYXZL?=
 =?utf-8?B?UXR2aFZBOVFoc28rUGpGN2dWcWJSYU4xaDg3S3Y2WTNWK3doSmhxanBsdUR6?=
 =?utf-8?B?dVB0aW41SllmZndUdVFEYTF5RkZZQTkvL3pSRDF2bk5acXVhT0JqSnZlUWd5?=
 =?utf-8?B?Ty9YUGdOUUdBYUNReUtTVGZ2RDVQbGNJOFpkQ1NhQ08zS1hPVDNxSFphWDdh?=
 =?utf-8?B?Njd4THBORjNuUWlkTE5BdVlZWmpXZnhTQjRXbEgvZUQ5eEpDVEtlR201UFdD?=
 =?utf-8?Q?qWFxrUiV1ZxfqDNH1YJtPtQdm?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e6cc82f-8f1d-4ef2-4c46-08dc37a495b0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2024 14:58:40.7693 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jFIb59rcoxHTVkM+lBp4qLTV1EonA5hbTRt01IUNIcKHsFfXBntHZUOR7QS6+JTW/6rboMWtVbkB8KljMTqrSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6366
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

This is a generic component part of intel_display that collects
display information that could be used with GuC SLPC for a optimal
frequency selection.

This is also an experimental way to share the code with Xe without
a compact-headers, on an attempt to move towards the full detachment
of the intel_display from the i915.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +-
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../i915/display/intel_display_guc_metrics.c  | 153 ++++++++++++++++++
 .../i915/display/intel_display_guc_metrics.h  |  26 +++
 .../display/intel_display_guc_metrics_types.h |  32 ++++
 .../gpu/drm/i915/display/intel_display_irq.c  |   3 +
 .../drm/i915/display/skl_universal_plane.c    |   3 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 9 files changed, 234 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_guc_metrics.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_guc_metrics.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_guc_metrics_types.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index c13f14edb508..3bd77d61d956 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -262,6 +262,7 @@ i915-y += \
 	display/intel_display.o \
 	display/intel_display_driver.o \
 	display/intel_display_irq.o \
+	display/intel_display_guc_metrics.o \
 	display/intel_display_params.o \
 	display/intel_display_power.o \
 	display/intel_display_power_map.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7db0655d8c9e..8c659561e729 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -67,6 +67,7 @@
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_driver.h"
+#include "intel_display_guc_metrics.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
@@ -1020,11 +1021,15 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = &dev_priv->display;
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
+	const struct intel_plane_state __maybe_unused *plane_state;
+	struct intel_plane *plane;
+	int i;
 
 	intel_psr_post_plane_update(state, crtc);
 
@@ -1056,6 +1061,10 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 
 	if (audio_enabling(old_crtc_state, new_crtc_state))
 		intel_encoders_audio_enable(state, crtc);
+
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i)
+		intel_display_guc_metrics_flip(display, new_crtc_state,
+					       plane->id, false);
 }
 
 static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
@@ -7066,6 +7075,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 {
 	struct drm_device *dev = state->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = &dev_priv->display;
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
@@ -7112,8 +7122,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (intel_crtc_needs_modeset(new_crtc_state) ||
-		    intel_crtc_needs_fastset(new_crtc_state))
+		    intel_crtc_needs_fastset(new_crtc_state)) {
 			intel_modeset_get_crtc_power_domains(new_crtc_state, &put_domains[crtc->pipe]);
+			intel_display_guc_metrics_refresh_info(display, new_crtc_state);
+		}
 	}
 
 	intel_commit_modeset_disables(state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index fdeaac994e17..58bb0e9d40dc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -43,6 +43,7 @@ struct intel_color_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dmc;
+struct intel_display_guc_metrics;
 struct intel_dpll_funcs;
 struct intel_dpll_mgr;
 struct intel_fbdev;
@@ -529,6 +530,7 @@ struct intel_display {
 	struct intel_fbc *fbc[I915_MAX_FBCS];
 	struct intel_frontbuffer_tracking fb_tracking;
 	struct intel_hotplug hotplug;
+	struct intel_display_guc_metrics *guc_metrics;
 	struct intel_opregion *opregion;
 	struct intel_overlay *overlay;
 	struct intel_display_params params;
diff --git a/drivers/gpu/drm/i915/display/intel_display_guc_metrics.c b/drivers/gpu/drm/i915/display/intel_display_guc_metrics.c
new file mode 100644
index 000000000000..037421e61b90
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_guc_metrics.c
@@ -0,0 +1,153 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "intel_display_guc_metrics.h"
+#include "intel_display_guc_metrics_types.h"
+
+#include <drm/drm_modes.h>
+
+#include "i915_drv.h"
+#include "intel_de.h"
+#include "intel_display_types.h"
+
+/**
+ * Display GuC Metrics
+ *
+ * GuC SLPC has many optimized strategies to best select the running GT
+ * frequency.
+ * One common strategy is to take display metrics as input through a shared
+ * data buffer. The GuC SLPC will then use these metrics for a optimal balance
+ * between power savings and performance.
+ *
+ * This intel_display_guc_metrics, provides a generic interface where xe_guc_pc
+ * or i915's intel_guc_slpc could register themselves in order to recieve the
+ * metrics from the running intel_display.
+ *
+ * Since this is a generic interface, it won't take any further action, but only
+ * pass the generic display information about refresh_info, flips and vblank.
+ * The GuC SLPC component of the registered driver (Xe or i915) will then be
+ * responsible for allocating the shared display buffer, for collecting the
+ * right timestamp registers of the GT, and for programming the shared buffer
+ * as requested by GuC.
+ *
+ * The Display Shared Data is a block of global GTT memory into which the host
+ * continually writes display related information for SLPC to read and use in
+ * its algorithms.
+ *
+ * The programming flow is as follows.
+ *
+ * The host allocates sufficient memory in the global GTT for the Display
+ * Shared Data.
+ *
+ * The host initializes the Display Shared Data by setting the Version,
+ * Number of Pipes, and Number of Planes per Pipe fields in the Global Info.
+ * All other fields should start at 0.
+ *
+ * The host provides the Display Shared Data memory address in the Shared Data
+ * while (re-)activating SLPC through the GUC_ACTION_HOST2GUC_PCV2_SLPC_REQUEST
+ * Reset event. SLPC will now begin reading the Display Shared Data as part of
+ * its periodic processing. It reads the Global Info section and proceeds to the
+ * other sections only if a change count has been incremented.
+ *
+ * On a display connection to a pipe, the host writes the Refresh Info for the
+ * given pipe, then increments the Refresh Info Change Count field of the Global
+ * Info to alert SLPC to the change. This is also done if an existing display
+ * changes its refresh configuration.
+ *
+ * On a vblank event, the host updates the Vblank Metrics for the given pipe,
+ * then increments the Vblank Metrics Change Count field of the Global Info to
+ * alert SLPC to the change.
+ *
+ * On a flip event, the host updates the Flip Metrics for the given plane on the
+ * given pipe, then increments the Flip Metrics Change Count field of the Global
+ * Info to alert SLPC to the change.
+ */
+
+/**
+ * intel_display_guc_metrics_init - For device driver registration (i915 or xe)
+ * @gfx_device: Back pointer to whatever device is driving display (i915 or xe).
+ * @display: Pointer to the intel_display struct that was initialized by gfx_device.
+ * @guc_metrics: Struct with the callback function pointers to get notication from display.
+ */
+void intel_display_guc_metrics_init(void *gfx_device,
+				    struct intel_display *display,
+				    struct intel_display_guc_metrics *guc_metrics)
+{
+	guc_metrics->gfx_device = gfx_device;
+	display->guc_metrics = guc_metrics;
+}
+
+/**
+ * intel_display_guc_metrics_refresh_info - Refresh rate information
+ * @display: Pointer to the intel_display struct that is in use by the gfx device.
+ * @crtc_state: New CRTC state upon a modeset.
+ *
+ * To be called on a modeset. It gets current refresh interval in micro seconds
+ * and pass back to the gfx device if the refresh_info_update callback is registered.
+ */
+void intel_display_guc_metrics_refresh_info(struct intel_display *display,
+					    struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_display_mode *mode = &crtc_state->hw.adjusted_mode;
+	struct intel_display_guc_metrics *guc_metrics = display->guc_metrics;
+	u32 interval_us;
+
+	if (!guc_metrics)
+		return;
+
+	interval_us = crtc_state->hw.active ? DIV_ROUND_UP(1000000,
+						drm_mode_vrefresh(mode)) : 0;
+
+	if (guc_metrics->refresh_info_update)
+		guc_metrics->refresh_info_update(guc_metrics->gfx_device,
+						 crtc->pipe, interval_us,
+						 crtc_state->vrr.enable);
+}
+
+/**
+ * intel_display_guc_metrics_vblank - Vblank information
+ * @display: Pointer to the intel_display struct that is in use by the gfx device.
+ * @crtc: The Intel CRTC that received the vblank interrupt.
+ *
+ * To be called when a vblank is passed. It extracts the pipe from the intel_crtc
+ * and pass back to the gfx device if the vblank_update callback is registered.
+ */
+void intel_display_guc_metrics_vblank(struct intel_display *display,
+				      struct intel_crtc *crtc)
+{
+	struct intel_display_guc_metrics *guc_metrics = display->guc_metrics;
+
+	if (!guc_metrics)
+		return;
+
+	if (guc_metrics->vblank_update)
+		guc_metrics->vblank_update(guc_metrics->gfx_device, crtc->pipe);
+}
+
+/**
+ * intel_display_guc_metrics_flip - Flip information
+ * @display: Pointer to the intel_display struct that is in use by the gfx device.
+ * @crtc_state: New CRTC state upon a page flip.
+ * @plane: Which plane ID got the page flip.
+ * @async_flip: A boolean to indicate if the page flip was async.
+ *
+ * To be called on a page flip. Then it pass the relevant information
+ * to the gfx device if the flip_update callback is registered.
+ */
+void intel_display_guc_metrics_flip(struct intel_display *display,
+				    const struct intel_crtc_state *crtc_state,
+				    int plane, bool async_flip)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_display_guc_metrics *guc_metrics = display->guc_metrics;
+
+	if (!guc_metrics)
+		return;
+
+	if (guc_metrics->flip_update)
+		guc_metrics->flip_update(guc_metrics->gfx_device,
+					 crtc->pipe, plane, async_flip);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_guc_metrics.h b/drivers/gpu/drm/i915/display/intel_display_guc_metrics.h
new file mode 100644
index 000000000000..9a9b8673f2b0
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_guc_metrics.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_GUC_METRICS_H__
+#define __INTEL_DISPLAY_GUC_METRICS_H__
+
+#include <linux/types.h>
+
+struct intel_crtc;
+struct intel_crtc_state;
+struct intel_display;
+struct intel_display_guc_metrics;
+
+void intel_display_guc_metrics_init(void *gfx_device,
+				    struct intel_display *display,
+				    struct intel_display_guc_metrics *guc_metrics);
+void intel_display_guc_metrics_refresh_info(struct intel_display *display,
+					    struct intel_crtc_state *crtc_state);
+void intel_display_guc_metrics_vblank(struct intel_display *display,
+				      struct intel_crtc *intel_crtc);
+void intel_display_guc_metrics_flip(struct intel_display *display,
+				    const struct intel_crtc_state *crtc_state,
+				    int plane, bool async_flip);
+#endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_guc_metrics_types.h b/drivers/gpu/drm/i915/display/intel_display_guc_metrics_types.h
new file mode 100644
index 000000000000..036cf55d58a0
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_guc_metrics_types.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_GUC_METRICS_TYPES_H__
+#define __INTEL_DISPLAY_GUC_METRICS_TYPES_H__
+
+/**
+ * struct intel_display_guc_metrics - Intel Display GuC Metrics main struct
+ *
+ * The graphics device can register with intel_display to get information
+ * about display events that will then be used with GuC SLPC.
+ */
+struct intel_display_guc_metrics {
+	/**
+	 * @gfx_device: A pointer to the private device,
+	 * either to struct drm_i915_private or to struct xe_device.
+	 */
+	void *gfx_device;
+
+	/** @refresh_info_update: Callback for getting refresh information on modeset */
+	void (*refresh_info_update)(void *gfx_device, int pipe,
+				    u32 refresh_interval, bool vrr_enabled);
+	/** @vblank_update: Callback for getting vblank information updates */
+	void (*vblank_update)(void *gfx_device, int pipe);
+	/** @flip_update: Callback for getting page flip information updates */
+	void (*flip_update)(void *gfx_device, int pipe, int plane,
+			    bool async_flip);
+};
+
+#endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index f846c5b108b5..339bfbbe9314 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -10,6 +10,7 @@
 #include "icl_dsi_regs.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display_guc_metrics.h"
 #include "intel_display_irq.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
@@ -25,8 +26,10 @@
 static void
 intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 
+	intel_display_guc_metrics_vblank(display, crtc);
 	drm_crtc_handle_vblank(&crtc->base);
 }
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index e941e2e4fd14..0e98ec0665b9 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -12,6 +12,7 @@
 #include "i915_reg.h"
 #include "intel_atomic_plane.h"
 #include "intel_de.h"
+#include "intel_display_guc_metrics.h"
 #include "intel_display_irq.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
@@ -1392,6 +1393,7 @@ skl_plane_async_flip(struct intel_plane *plane,
 		     bool async_flip)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = &dev_priv->display;
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	u32 plane_ctl = plane_state->ctl;
@@ -1404,6 +1406,7 @@ skl_plane_async_flip(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
 			  skl_plane_surf(plane_state, 0));
+	intel_display_guc_metrics_flip(display, crtc_state, plane_id, async_flip);
 }
 
 static bool intel_format_is_p01x(u32 format)
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index c531210695db..e5b62cfbac8b 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -224,6 +224,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_display_device.o \
 	i915-display/intel_display_driver.o \
 	i915-display/intel_display_irq.o \
+	i915-display/intel_display_guc_metrics.o \
 	i915-display/intel_display_params.o \
 	i915-display/intel_display_power.o \
 	i915-display/intel_display_power_map.o \
-- 
2.43.2

