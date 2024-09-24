Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7355984C4E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C92210E24D;
	Tue, 24 Sep 2024 20:43:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZXw/zx84";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B20B10E24D;
 Tue, 24 Sep 2024 20:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210600; x=1758746600;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=gQJ21EwAbLUWgQ7pEK8J6o8M6QMWxowsakcRMDdRCXw=;
 b=ZXw/zx847ZihNM0awzY/VDqg7QlZTDXPY8Ismh0pd5g0IucaVSnAPgn0
 DOitZ50eH1mmYNQci4Ezs1p0P6A3DDNGd2sqrI+k1gUn0UeF2G3ipVx0g
 UUapk8p2k6aHOOAwGrT7dXmF1opbjzuyxFz1UlXZX4uRdwg3B0QMgY8gC
 t7wpJt9MCjNXaHXIplx/6ikKhHa7oGvCT3Fu0TH1kJ9mT4wp6OKnaMd7W
 hDDb+s4PYztsN6uV0atU1dlEjPw+MXRVS0p1hJQmPf9YYXdaoLP3J4VEy
 1v6VcGrbVfJnqrVGO2Hy6mTD1W8YqJzWB3XwN3M+cKF/6C/L57YuRVGrZ A==;
X-CSE-ConnectionGUID: +OASrPRgR2yoa1iaWKywIA==
X-CSE-MsgGUID: QM8ZgN3uSSWf+X5+AFDMDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26354026"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26354026"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:20 -0700
X-CSE-ConnectionGUID: D0/qdUPRQKa9Ia/bynjP3Q==
X-CSE-MsgGUID: kFKWqN7AS6+dYCko4taesQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="72383497"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:18 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:17 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i+RZopE1XaTYm9lhRPCbCk34unPvnDIih0NTzGw9OxDGiG9+OeIdrBY/G0Nen2vbrjoqf6TmOJxvOKNtRC4TyKRtg1LIDTe5hs/8p5ux3+7lTgXSEeoiz2e9tP36j9uPTELl9h8BYr7CTaxfknrbkiFyZ7+TcgxIyCxHqt7EVnXtBpzMkuYookyYzc94mdWjys8tyGmf/MHVInfxdrIlliOgQ8ahIY3ZoueOsB9kG6Wyj61IBF4g1pq1vBKkWcOWfZWgHAD6Yx2W0EFIk8GD0LKzR86jFysvS2OekStXXA50BOoc/BuTR/fZEwl78iTVSVTN7Cojy7m4kNlPTWp4pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pfw+irWRzEhhByKiwci4zs/qobY7YnBjbllJYDjZJjI=;
 b=ynx11ikTOSwxt7+gkdX57IUifrwGz/HjDC5V4IgXuEyHWIMx6jUxqOCBnph5HI4a/P93X40vyGQXIBiVQS1vbXBL6hHdATKBnlj9+f2EUiwcbyek0i9Z8K4MMtWUX4cRQoJaTHWO9+PIiXniuHYi8qt5WbI6uQSfJS1+SAt0J9GF49+tyZ7v+TckblRtOY/5Pax1DMmRCxFNmyrIfyvk2fDkZnZiEAz+yAFW6JsxchlEkPW3C+Ga+oRBCkcymU60n55U6KtgcqqcG/bz0LK+0bFOyYmAW2bPRwWF3I1J9I6IzYNNYSotgNXJmVqDA2e1R4AOs+V11QBhQilnwL5+lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:12 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:12 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 13/31] drm/{i915,xe}: Consolidate display suspend functions
Date: Tue, 24 Sep 2024 16:35:34 -0400
Message-ID: <20240924204222.246862-14-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR02CA0002.namprd02.prod.outlook.com
 (2603:10b6:303:16d::10) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: b3465b43-fdd5-4236-74f3-08dcdcd98208
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?M/smUJNjPV1kLoLuPH1V6WOj3dfvnQdv/Z3VGIdfaS2iF3HmP2AQFZZn3tUJ?=
 =?us-ascii?Q?u0WaPBqVJC5tgHXwU5c7UV1uSUnRtzJcTyG+xc7y3s10pN6D+Ck5cWXAQuJi?=
 =?us-ascii?Q?fKBduvBMT+vGS2zxV3DkcNDJs1HIasjakq8D+n7QNWfNMsZE1+R6nVTUbUyL?=
 =?us-ascii?Q?5N1iWrrjvv8SutYST6P+rJyDOZvVzCz4hR64y9ORWjFrEozThfYq1xv6Rx+7?=
 =?us-ascii?Q?bddp4vBj/QEjntsJG7Haf8UtQlIJLLAHU/hVUyTis4+fK87ylysQw2oDmPEy?=
 =?us-ascii?Q?/trOe6VjJ4SiKN9Ciu2OrBbcZL3EnV2SoMmgYj1qmHO3Xb99jFdRbyQ9pHWB?=
 =?us-ascii?Q?dWDE/hEepr/DuWi/eeHFyYG9Yt2v6GwzuAtwIq/86fKjLt5ouaMs36Fm6chq?=
 =?us-ascii?Q?ooDpOr9Ipphpt0Qfrp9vW6V55nQdHlcteRktpRIM0ep0fOszySlOlck3O8E+?=
 =?us-ascii?Q?SLGcvIQA+pID+75aOcIF+iFi+lDEX+N8y/d12CMZyCs+m3T3Djf9R+ud1Cdf?=
 =?us-ascii?Q?sejCR6op+X1Zfts/3fZyuzoBe0qPOSlC557MMXbp41LkWNNxVUGTw8aPtCOc?=
 =?us-ascii?Q?pB9ndRcv9ErUbMQtwYw23roQDftTFVKdwCfZlfNR6XrmfC0WZLaEnMrsBoQQ?=
 =?us-ascii?Q?21W0QfnMLJUxIU0klqivnQ+NrYQplio+xuHFp2cNXcdRMI634y36r+2Gu6Kb?=
 =?us-ascii?Q?7TyOoDopJ8jJBI40X9tbxJ+vkyk0a/N06aqWGX24Jk/XyXR1tqgvCgn1cWJD?=
 =?us-ascii?Q?hYMtCl5fcxct53slwriX96zY95rk4p2Rs7039HU9oRXYtyoWmre/tZXlrL1+?=
 =?us-ascii?Q?KJXl72+mBIUwUe9bkqfDho8jihea4+qXzuGcdDaWiXw5cyoRkYhu+OqVfQ4x?=
 =?us-ascii?Q?VBtL6TTIF1DSuYrYLTUTn5pxpUY4iZ6D+yBYGzSYtGV5fjPCBT3VC2oKpxi+?=
 =?us-ascii?Q?DpvRbC+Hy42J9V1mEha93zEKvYf7bTK+j/XNG/jLUfeMm4JBslTb4EsahDEC?=
 =?us-ascii?Q?zO/gvdy8T4lUWkyiMXUYonaVJkW6hElvKsLxqYPGYU/LSur0JWyMwbCQS/QP?=
 =?us-ascii?Q?6gCqhdtV0i9iXbfiz/IcGMliiW964Ngtk2SqQyRAmXz9aYTboKTNYqdrG5Xx?=
 =?us-ascii?Q?VGpZaNu3iAdolYsaR0i2Lr/P0k9FuqveXyHXwzpetQY3id91KVQOomr7T22s?=
 =?us-ascii?Q?/rv0OCmfHZXkjmSpqiXEZnqTIKOiRoBBRsqabluhIllF+GDmWGmLw02l84DU?=
 =?us-ascii?Q?covhiqpHiI8dbiiYg1grHDGfCMEeBdIAomV+6rjbhg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KGc8IORNfhpV+AfPCSIrBRlFkY8sxP/nxieZLMSNfWrdkH8tPA85hrqjSxAo?=
 =?us-ascii?Q?HpGV+kD2S3nbcQ5xs8QcMlm67gFXOD2YHUy648NdcvfAwkIZ9DlAcMkqe10W?=
 =?us-ascii?Q?kUJLZLfDoS7yqRJxzd6QHAgMwYQcytZzY8NUCapzY2sqMh/MjSbB0mqRW02G?=
 =?us-ascii?Q?hVppv3D3uGq83RKGYhlpKX/NflzYbunMLhC8fZLq9jHIrGgFvkedkwNQWcHa?=
 =?us-ascii?Q?v2IKCdk55Hv0VPXjLx9d2QgylZ7HwTj2IHne8omf30E1kRh4UUvkq/FUowOc?=
 =?us-ascii?Q?Z+aeFlUz5bIC7OU9Cx6sgINJPsryOZMO0kDLcdYjfLSV36onxYWJtsyB3itg?=
 =?us-ascii?Q?wgZ1rX/tsc+fPjOUb29qZp+fKqX4z8qfvzjw4RL8Sz+u12kiXv2vrhH75y+g?=
 =?us-ascii?Q?OUwJAQr9YjvSMYeDabwpvPz97nfYfCsiMB7VnaidCZSo48zn9zRxb77kMu+n?=
 =?us-ascii?Q?zUcl/pApnx+EjWcgAjoPhaqElnbltkN5nDnkRNBDkCtyX5vS4ashsvZFjTm+?=
 =?us-ascii?Q?43QVJTMEWdf8VBMoBhaVEDClbQhk8InAtfYQuaQSs82q4PwRNldyTeuMuMSb?=
 =?us-ascii?Q?mnBnqY5pL1l3mDdaY0LLK9CRv812ud/MiNuegFGHzGUbEz5LRD56iZ33jRQI?=
 =?us-ascii?Q?ZN3g/o90ldXZ+mVVJWASMbUb9q1Hy+dQHZthbkJCIABExHNEHXzxmpl+D1yx?=
 =?us-ascii?Q?vRNwQFtoAeMO71x30Ql4QPMomCKrP+MUQEdbdef0SRnvYM2o7r8WiCQhJcuG?=
 =?us-ascii?Q?CECXD7W/1qtoj/UJkB+usWXg+g90Sm4B20872ia0mj0pBZXVh4xwcMMTPCNn?=
 =?us-ascii?Q?CW90I9Sq5zwpmQ4JUnLHk20DfwuEOyJaPTyO+bBL8ENnFWPY5Qle3g4gE9GT?=
 =?us-ascii?Q?fSzWh1LjmK7EKxjEJSqemGxihW1QdGXroljxZNwy2LdrAZdNC4wJTOUh0loj?=
 =?us-ascii?Q?7wJsEJ8lM7mFT9hsO3R1AkxOy4xtRhYxPKn2EI4N9CG4TTNMUfVjzVMXURRG?=
 =?us-ascii?Q?yn0Db7CTSBCnMMyg8T/0wrAlw/k6rPrmEGUeLN4IFDhUf+dDWw5Nr6DeUUT6?=
 =?us-ascii?Q?8tcWZwi590vesV3z8qN/dsT20fx7STbdb4MloaIGE+rSemWDwh1XS1jn6ywL?=
 =?us-ascii?Q?FvxVkZ42MzKBKPQOv9aLE08FFpnnVnYYPxfnzH715mOiHzQlcH+doyEod2Jl?=
 =?us-ascii?Q?wVETILMnk1J8/MZdYJ8eodvebk+hiihGe4l+f14/JneyVbP0iO0GkrEXvfQp?=
 =?us-ascii?Q?mkqbluCU/5K/6qboSGMjzTfIecOvwrCxijw4nw+VujiZFl2sYn4Hh6+wvDqI?=
 =?us-ascii?Q?bBSoYKck9teIayIi9fsLW2B+Xm1kYV4ZrMV2EzkMBIloV8v3gcK7HBD26vG1?=
 =?us-ascii?Q?TZr6VPwViQowrt3hD+SAeqlIRRogzvQI3vpLTAzvp41XUjGJny6foW16qd77?=
 =?us-ascii?Q?f2Xencg6ZnUr+QpJq3ZIDur8lz+ZJ/EGQ2UTCjCwWWHp7cVC35hzTsXFlruT?=
 =?us-ascii?Q?l+rm877HJfMm8lZwUGazsD5dxAPdpcQjhHHw5AdWtOVAykpkPPXGK1zlS5T4?=
 =?us-ascii?Q?lrczBtTer4CYYw6VjocWrmrR1m4vNV9MiLkuc9h2zpTFL1yYmHKnLWKxdi+a?=
 =?us-ascii?Q?FQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3465b43-fdd5-4236-74f3-08dcdcd98208
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:12.9004 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4iJiqciWRE/5i5rjXQprwWcAhJEh6YKrVom5Hx+j0kmAq2eMhHYU7GCm7INFPI+DGUpUQTKLicYB1azi4ulRQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

Same sequences are currently executed by i915 and xe during
system suspend. Consolidate them in the intel_display_driver
side.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../gpu/drm/i915/display/intel_display_driver.c   |  9 +++++++++
 drivers/gpu/drm/i915/i915_driver.c                | 12 ------------
 drivers/gpu/drm/xe/display/xe_display.c           | 15 ++-------------
 3 files changed, 11 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 86d6ebf0c82f..f509ed1503c1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -670,6 +670,15 @@ int intel_display_driver_suspend(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return 0;
 
+	/* We do a lot of poking in a lot of registers, make sure they work properly. */
+	intel_power_domains_disable(i915);
+
+	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
+
+	drm_kms_helper_poll_disable(&i915->drm);
+
+	intel_display_driver_disable_user_access(i915);
+
 	state = drm_atomic_helper_suspend(&i915->drm);
 	ret = PTR_ERR_OR_ZERO(state);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 4fc9d8bce1fd..12639fa232b3 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -43,7 +43,6 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_ioctl.h>
 #include <drm/drm_managed.h>
-#include <drm/drm_probe_helper.h>
 
 #include "display/i9xx_display_sr.h"
 #include "display/intel_acpi.h"
@@ -55,7 +54,6 @@
 #include "display/intel_dp.h"
 #include "display/intel_dpt.h"
 #include "display/intel_encoder.h"
-#include "display/intel_fbdev.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_overlay.h"
 #include "display/intel_pch_refclk.h"
@@ -995,19 +993,9 @@ static int i915_drm_suspend(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_display *display = &dev_priv->display;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
-	/* We do a lot of poking in a lot of registers, make sure they work
-	 * properly. */
-	intel_power_domains_disable(dev_priv);
-	intel_fbdev_set_suspend(dev, FBINFO_STATE_SUSPENDED, true);
-	if (HAS_DISPLAY(dev_priv)) {
-		drm_kms_helper_poll_disable(dev);
-		intel_display_driver_disable_user_access(dev_priv);
-	}
-
 	intel_display_driver_suspend(dev_priv);
 
 	intel_irq_suspend(dev_priv);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 98ff603a1f84..45949b095d7e 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -346,22 +346,11 @@ void xe_display_pm_suspend(struct xe_device *xe)
 {
 	struct intel_display *display = &xe->display;
 	bool s2idle = suspend_to_idle();
+
 	if (!xe->info.probe_display)
 		return;
 
-	/*
-	 * We do a lot of poking in a lot of registers, make sure they work
-	 * properly.
-	 */
-	intel_power_domains_disable(xe);
-
-	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
-
-	if (has_display(xe)) {
-		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(xe);
-		intel_display_driver_suspend(xe);
-	}
+	intel_display_driver_suspend(xe);
 
 	xe_display_flush_cleanup_work(xe);
 
-- 
2.46.0

