Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65845984C4B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0992510E748;
	Tue, 24 Sep 2024 20:43:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PNHN2VVr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D8310E24D;
 Tue, 24 Sep 2024 20:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210592; x=1758746592;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=LqnNIdOo+lW95VJw25liE03vbJfASjzfeN9j/MaeAmY=;
 b=PNHN2VVrkU/cavQmwwuj2gCbDaDOOnf3buUFc3o5hpPqlsZQc9d/frW9
 e8Ppwlba20UokDeTuag4UHi/fpsapUAL6ZdpDvL7FJOK0CqBoMQUCtvGN
 Bko9nHNWCrtvWHhy5R7WF4OeGMlXmOsfKrdtBGQiJgLNRWOTnOXySzlBW
 flNW3AR3huruqqHM8arDusTcGQR/HJ3I1Tu4gdsHMVrHNg7YCBBfArDwC
 H4TnWrK2EyQwSF5j/d7/BNDRYAwQd62V3kYJPTLj2oBsU2kww5meI46WS
 zaY5gK7IZj3z2Dt4qjVhTjklsDAEYpvzGobw14tIoyB60okmKBzkIPuT1 Q==;
X-CSE-ConnectionGUID: X/WzDFKcRrSwUkwh4OZfdg==
X-CSE-MsgGUID: L9fpw1DJSOu/MbQ29qmeVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26353988"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26353988"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:11 -0700
X-CSE-ConnectionGUID: 9JFboXbaSEim1Xbl4OkHYA==
X-CSE-MsgGUID: E3Ff7WYdQ9+Ah/eKKjmWZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="72383475"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GPmrPly9njhOXGf39XDJonDWqHEf42BPRvOnKI0D1ZEC38vZPs2sr4/od+1RUqCZyib6HonqTYTu4II9kDMS/D21FYB9Wo41Omri5upkPtjYGuA91+NdoI0vHF5iZRj4XfpfOLboU6zeuiMBLMaUz54p3+mNphAWdatDpRZN0FP1OHDzlDsNLs3+M/2QzIMCUfMWL5L15hz/ddP6VIE56Xgnp9q04aclLSntjbTR67NXMccTRAotkC7ipoGCad72kxRe5vVfOUzc8M9ZFQUd8Ai0ZNnWvSMoFB4J9Z01MYJOcTyiU1MGn274WwQIgqg+9Cvf86C+A7s8FWo6+lMwPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IZeBCBJJywiAt/oz0uaUzIwTvxpflzZu/KtYhVhcYrQ=;
 b=TG1VqD7TayTeE7hLXbcPgH7QOX3ntBiaFkvOLsc7ljvZR4Xc+DKNEwTrtML7iK22mRriZNo3XgNCM3QCJ+DiDLatKOG4oxV3u5DgsrEdnJoKH1UkNwcrzzICrBJVOU1vco+lgZVOJA/dNLBdcIpHS7ZOQLcwYB4BX7jTGSLMM1rvH5zA0nqoe6KUKUy51urb5U4Eil9IdbjKqwr9i/UzHzowc99gEScFvxbuhWiShLjYkiDlck1qz3OBsUJSAW6xV4MMqVLwyKGUhAHoBJw01CpgKp+C6omaN9VpEKKrnLCCWjikB+sjd3qr/Vtcer5yPTDq0yAvouYuPYxOeFZV/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:07 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:07 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 11/31] drm/{i915,xe}: Consolidate display resume functions
Date: Tue, 24 Sep 2024 16:35:32 -0400
Message-ID: <20240924204222.246862-12-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR02CA0025.namprd02.prod.outlook.com
 (2603:10b6:303:16d::11) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cf61d90-5821-4856-c324-08dcdcd97ef6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?htIXKLothg1kgxm6riph6WkbHD6dmd0GqJRQ/FNlMYuysNwO5iSskTcDWRaB?=
 =?us-ascii?Q?FrdJsrZDB2/RX/oCzFEZYVISMVnQoqFvLzQ8aqAIYZBOr+Kq7b0GalQee6C2?=
 =?us-ascii?Q?dURs0/q9/Qv420UY5BXeYBljNankpp5L07koNXGyjP6Ly/Pg4Y7kq7KKCwI8?=
 =?us-ascii?Q?KpfPzIvCyBt9NC10HNumqzfPIi8pwmQ6+VrUOBd3WH1MVUTZSWj9l/jdpNFx?=
 =?us-ascii?Q?Mg78cLLeeWBmUwd9YFwo9IqipLhVbVDRT8+pp9tqzP9vUW020pgONlt2DCvX?=
 =?us-ascii?Q?ft7j0aoOlNJjlouodjW//XWWA9fbM/n9oXc9eXAPXTEqvP2qcrU0b/s2UeZZ?=
 =?us-ascii?Q?9+JaMS/cuxGP915/ceBB7WTlKwI8fPkkL1RYwJ4zw1SJeORnM0KVByQDYnWo?=
 =?us-ascii?Q?yRJMFFU+qpSZ5lkepua2ahvI/70IOv5eCAhIBI+LlElmnzEem25NuojTg9fT?=
 =?us-ascii?Q?ubuj0mUoaBsThe3P1aBOWpRLbpPpRXKXvrsBRTCh0Hv5MuJ5D9XWkOvC5o2B?=
 =?us-ascii?Q?Z+XurUq0WIxOgATyaF11+2xjVRSgju4P0tl2hBpBUK47PupcGi2UhCREupgK?=
 =?us-ascii?Q?q8SRJapRbY9XYyusNZzWHkqwXlBnWjF/qXWS1Njre/UE5RKXcstAndWwnc7O?=
 =?us-ascii?Q?FEvK1TjRBJqzwc4/Z01a5M9g1fVeNtL/NFwKfxdit6ELkMnUtc6wy1zxQoIP?=
 =?us-ascii?Q?4ld/2eKPTZRYwcRnxlOXfmKgeSNbO90T+l+x1DdaRgFIIuuWw1NN+L8zoeVu?=
 =?us-ascii?Q?ThPMivGboVoyGAmkQz/ENxsTNNVrRj6iVoNCL9BC70XyF8fGfluFrO8f4ZSy?=
 =?us-ascii?Q?3z7a3809mWn7RKy7eE5zarOSor7sJLZN4vIvQQ1HUlLNtcUzFJ1BxjKkQQdH?=
 =?us-ascii?Q?U2FRLKZAK3RcpTFEIxAi1jGnyCta0DYa/r8mOQoGKUqxQGU3LFmkg/tpWo32?=
 =?us-ascii?Q?xR9mq4nUoyoyblktDw00N8HUojaBds8nqxUqqHpttpJALONuRt7hv/QGAAIA?=
 =?us-ascii?Q?0wwT87GZ+c5iSpcJ8djv7NzTJWnfG3DDi2n0QHSzP7cXZSEk6i1BeqxcIsUW?=
 =?us-ascii?Q?6wHRMYldXJbN/MUe3ZPT/30QsbSPvlGeUtg5w34Y5WQltoEJ/OmG+Z2pHJto?=
 =?us-ascii?Q?Bm1QxMNpZdN3fEEv1gcryLbwy8/f91OyiifmYpPk6SVXDR/LWGbfJskpMF3Z?=
 =?us-ascii?Q?+Wa1zKJcrSp7eXEe+OIjeSeIvKdL/0iZTTL+K9DkrCGQeMOV/Y6MkYRpkcgM?=
 =?us-ascii?Q?Jzuqy4huOAaYv8XleXX0slPitWgc3JdB5D/8tOD+4w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?N688F722zLTbnKM2lJyesreS9x8StXGgbSJxxqjfW0y8mrIiaK6LqSEn17s8?=
 =?us-ascii?Q?yh9R1ne1UoxtChwar91M1Imvv7rHx6ImvKxJ1YauWdVK1WpR6PzvAQRDhKl0?=
 =?us-ascii?Q?r3/LIRnCqcDbJD6RkZJ7iPzmbo6FUabjaConL/8apj8YVk71s+LUz6TdxNZl?=
 =?us-ascii?Q?QXG56Ims5nRNIgkQXKgaW13proW7RvZc3KPBPuV/cDYNUGt8w035Cpmtb4YB?=
 =?us-ascii?Q?VxP9mLOT5Znw+lzV72bI1KxS6j8V3a59RfVnYSMaWQGny9jt7dUErmuNXMhV?=
 =?us-ascii?Q?STiguI5TQ5d5G7GVPn62vpYKTeQSMmZXaB1IRGotRxoiuPcHzVBf/bD/ol+O?=
 =?us-ascii?Q?mICegfTXWf8QacGiKsBmQJRAi/x7dnEw4tNHGeLNyvyJ8T+YJHz/7t/OGq+H?=
 =?us-ascii?Q?T8xFkDIcs9iNT36YntSQ4lR/VY9LXwYE0YAWvVkWFyr416gcUlPxItgybJht?=
 =?us-ascii?Q?ocQhqpNa44rkKOVOT1MKNTOMPN6KoH33Jenu2RM7ENGGhShZ/148SbjnZH0n?=
 =?us-ascii?Q?y3yOhn2KFprt4VhlPD0GD01idOLkSabM+vxkMMWTRf+Y+1RSgwcavwBVMuAL?=
 =?us-ascii?Q?5wGZBcjF9xS9e5zMvFDzgEq0n+oUzdT3U/D858hWrTac8RZBvNK+xAbfDgyw?=
 =?us-ascii?Q?ET32zmppowjT1yqtBgJDOZK9oR2Hejs2xqzPYwKzaLS8n5GtCmsyoG7jzAr+?=
 =?us-ascii?Q?EaBwfj5+YMzY/NRtA7rvDPS7+F9JTGkIrBBQQEDMWgpTbNBcg54TNWXWLRS4?=
 =?us-ascii?Q?ycrVRTveG7orqwebnY6mUkduyBuuvb+eoM7xpS9Er8zBMHADaA8g0iicnccC?=
 =?us-ascii?Q?hIRoGHgLLNO2CFCSxvX1ctnt+I54OAIkioU47RngfNxQwNhd6q+1UE6p4YLo?=
 =?us-ascii?Q?25pEiE8r7sfyHg6aN+t0OmwXPVduJWJBxjdayR/s4gILfV06XISTIo05dVbe?=
 =?us-ascii?Q?ElLGiySnLZC8EPIu6DXRgZ+9B332d3AQasvMakfIXlhMfYF3AdKRd6DWOS5r?=
 =?us-ascii?Q?b49CxtsTqDwh4shtQ83K0yxU0qyqAu72OQOjb0/ue/80kaxAKus46KZ4BEkX?=
 =?us-ascii?Q?jDil18UC97qLYX0c1+3PDiQqkjZXKCwgs3+Nor5zKaL/m/NqSFiaQDP5KE3B?=
 =?us-ascii?Q?kZxM7I2a1019aLN4fSPbRXaPIfUiKJ4e5Npebh9kWmPPZ90rmIvo5qepcMqR?=
 =?us-ascii?Q?Mb44Mco+aQ+vI/WESLE2eDrmbN+7i3RWWC7SsvSdQ8RQ3uzw+NhMzWtk1HMN?=
 =?us-ascii?Q?qq/Y6B1GWeuwXnLii2OVgS84udk0YeNqUuPShj8XN0TiBe+Y17ziOpsSoirF?=
 =?us-ascii?Q?/XvEkhx9M9X4byqk4m4k8E1K27lTCnLWJNRsRhRnY70uuqQerb+iuC9XO29Y?=
 =?us-ascii?Q?/SsEpREBjQlp7UdAJyHJNTTe8+iX5xVTaw8arnNwBbsLFoPdKvk15xnFIbBH?=
 =?us-ascii?Q?/2HBfWoJ3vOGR2530Bw/5ZbEVsYTCtlJEOOX3u64TmYli2yx1neyX5rT7rwx?=
 =?us-ascii?Q?fY+0EgHg0NzBxQVeIArys/tCsJb3V7DYcJPU1LPsPYW2+KpZxYT4j/CNb3xX?=
 =?us-ascii?Q?tyEQ8SelL6Q5a325ZcKCC5VcuDhU5Lr2sHuH4NGWhdCpaYxGNCxq4VXhUOvd?=
 =?us-ascii?Q?xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cf61d90-5821-4856-c324-08dcdcd97ef6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:07.8654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VXfs8gebHZd0LqqmUDFrr+SQugeQLAI6xonbxMydlfOxrQvrzHj2gdCLtjqj7H28gWmLVq4bE5efh6SyBLyVUA==
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
system resume. Consolidate them in the intel_display_driver
side.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_display_driver.c    | 16 ++++++++++++++++
 drivers/gpu/drm/i915/i915_driver.c             | 17 -----------------
 drivers/gpu/drm/xe/display/xe_display.c        | 18 +-----------------
 3 files changed, 17 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 42624bf80f91..86d6ebf0c82f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -752,6 +752,10 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	intel_display_driver_resume_access(i915);
+
+	intel_hpd_init(i915);
+
 	/* MST sideband requires HPD interrupts enabled */
 	intel_dp_mst_resume(i915);
 
@@ -781,6 +785,18 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
 			"Restoring old state failed with %i\n", ret);
 	if (state)
 		drm_atomic_state_put(state);
+
+	intel_display_driver_enable_user_access(i915);
+
+	drm_kms_helper_poll_enable(&i915->drm);
+
+	intel_hpd_poll_disable(i915);
+
+	intel_opregion_resume(&i915->display);
+
+	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_RUNNING, false);
+
+	intel_power_domains_enable(i915);
 }
 
 void intel_display_driver_shutdown(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ac8bf00458b5..ce2dd03136d3 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1165,25 +1165,8 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_clock_gating_init(dev_priv);
 
-	if (HAS_DISPLAY(dev_priv))
-		intel_display_driver_resume_access(dev_priv);
-
-	intel_hpd_init(dev_priv);
-
 	intel_display_driver_resume(dev_priv);
 
-	if (HAS_DISPLAY(dev_priv)) {
-		intel_display_driver_enable_user_access(dev_priv);
-		drm_kms_helper_poll_enable(dev);
-	}
-	intel_hpd_poll_disable(dev_priv);
-
-	intel_opregion_resume(display);
-
-	intel_fbdev_set_suspend(dev, FBINFO_STATE_RUNNING, false);
-
-	intel_power_domains_enable(dev_priv);
-
 	intel_gvt_resume(dev_priv);
 
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index a4705a452adb..98ff603a1f84 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -447,23 +447,7 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 	intel_display_driver_init_hw(xe);
 
-	if (has_display(xe))
-		intel_display_driver_resume_access(xe);
-
-	intel_hpd_init(xe);
-
-	if (has_display(xe)) {
-		intel_display_driver_resume(xe);
-		drm_kms_helper_poll_enable(&xe->drm);
-		intel_display_driver_enable_user_access(xe);
-		intel_hpd_poll_disable(xe);
-	}
-
-	intel_opregion_resume(display);
-
-	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
-
-	intel_power_domains_enable(xe);
+	intel_display_driver_resume(xe);
 }
 
 void xe_display_pm_runtime_resume(struct xe_device *xe)
-- 
2.46.0

