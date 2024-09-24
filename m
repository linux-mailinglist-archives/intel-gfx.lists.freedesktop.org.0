Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC54D984C57
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7480610E75B;
	Tue, 24 Sep 2024 20:43:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hD0ysMRj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F363810E749;
 Tue, 24 Sep 2024 20:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210621; x=1758746621;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=dbwGkp4QJaXh6E7xhEfuF4dJNtp0H8NNisRly1dr7Gk=;
 b=hD0ysMRjUlorUPSsgfOxkbIT4oyJfWeUXvAm4go53vNlOUWmEbcpE89P
 hawKr9qSfBh9A6Ml4OO2clRQyrr10X8X8WoGqdT/0IKYiETkXac2hHXD/
 FW220FFBTxZyO9dqXiV125ZNugbAZECREDzCp+1GTA/EYEcIf0RGm7bwe
 2NkJSa83mcWnUc+vB+ueM9872XTRrhnP5k+NcYhDJP/fpruXLlUZW9dbd
 zT+hrteqfynWsnv2XSEVBonDkP0awoMKTvE505e4cIJik9MkOPq5ye70p
 JMCJT8mAo1b12KGaO1pXJmMpKrYKjfK8B6EPJGp67VJO2EZOE8TPr29VS g==;
X-CSE-ConnectionGUID: bILBOjzERlqKMGbeRaD7cQ==
X-CSE-MsgGUID: tTo2KXUKSo6WS+acTu5zcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26182675"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26182675"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:40 -0700
X-CSE-ConnectionGUID: +JQam3tiSdaLknIiBZWbgQ==
X-CSE-MsgGUID: iwRWkeEgT/u8r3wrR3JhLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76337815"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:40 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:39 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xRpQb8ug1cR8UFHnPOHV9zI4F8T+QYEYf1XMZrInLscacZuKCnRDThLYdmkCoU+8i05aZMURwEQa3CJh0A9vm5JKyZDbxk4/jAwvx9O/hVNTzznsDO2fnA5H/ZFKQZ6yi1xucaw9AneCfFklIh1y1DGTxzecHw75QGVde/aiAlTNM3ErQdk3mT94sdnmKLwooTFPdx6dl3/H6MgVSf+8ET7asMcPo1gXTQRok3kxOxz+G4Rv2Z70DO+fYcLM7G2AeovLBI2g1puNLiBfvYLBh6Z+bVK8kYrlnORgUepqLEM/9jvv/1gZZ+PDNh9FAWEFpNlwiSSGsnldUK057AQWJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IVdq99S+fIg7PUw5z2sq0tM90oGa4UqdtkAZjmVFKmY=;
 b=OoxPPhdTz87rieV7UwbuskhTGwLnpqc5Tj8sJ4qB35jCX/Ps5/xzMGfSpQz4jSQJbsjr5e8KO79PEDPwJzwhaInYBLlsiTsGnR+r5U6spf7bhRgvbEI60ExR9Xuq+/J3wMElYXScp6ouTxlCecZ+akDYU+ICqpcYAsgxYqKyUR27mKEatXVDUdB0j7k4yX6Avb7EpWvt5aAD9H/5OxYhswAbLEDjThoVkSMPIRcV92IUnGHVZN/4kIUXA9C/UuIg9coH870NTzuFsZq46hNzXRqrK3tCcNzS5DTthKNTSqGaA0tfuAPGxKiNQZxKJhitTwiNsMMdg6TzroCqUwn5fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7425.namprd11.prod.outlook.com (2603:10b6:a03:4c0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 20:43:32 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:32 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 20/31] drm/xe/display: Align suspend sequence with i915
Date: Tue, 24 Sep 2024 16:35:41 -0400
Message-ID: <20240924204222.246862-21-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR06CA0022.namprd06.prod.outlook.com
 (2603:10b6:303:2a::27) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7425:EE_
X-MS-Office365-Filtering-Correlation-Id: 42027b8c-b741-442c-4d9f-08dcdcd98d75
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1dnERwpbnCBq10C7THF+xjQB6pCJvqy4gc6splq1x0KICJs8VybfO/aMtist?=
 =?us-ascii?Q?Il3TGJbh+zWFJUsedkeMFCz4QQw7ke8n2cyAqOcv9vcg8xtEBz+GOfbFV0bL?=
 =?us-ascii?Q?KhIOcQK3M3BQDfPKnTvPPS/qRuouPNNAoRliZWpkpIHcG3MPwbh2hgt7H0Fd?=
 =?us-ascii?Q?b2o6WlAT+RSEou31meRWTB9pY6qgGHXNmcdPPoQsHlzXhNUUR33jP5LRaH75?=
 =?us-ascii?Q?fAZxZRDHDp3ZmPD128O+Yx7YjBL3xsLomjRGGCyY9iAkQnCcv4H9D88Y63oE?=
 =?us-ascii?Q?4wgqkPB19PqrbD4cWTO9Xisk1GSgj/eOr1DUMvCXt9QpTpxC4vg49qf/5/RF?=
 =?us-ascii?Q?zBxQsWeoYnGqRlIsXOjqT3x/Fol4Mt4aAl8D47+ogNtMTwNQsJ5pGM+Yt/6I?=
 =?us-ascii?Q?rJOa7a/clzB8qvywgKKawimf+0RSUoRbpHhCYt5Bw655SuWJlPPbBdWkFn6Y?=
 =?us-ascii?Q?V1/0hIMRlaUBk1Cf5CR9hhg81azxCOtK+e3Mb6pWYRh3V8gX5rMVv/gqg4jI?=
 =?us-ascii?Q?eSd4sQRbTDYcA0pld2xgR+N69+d6OLWM89hkDTSWN/ctu8DTQfKzsO7g1/V3?=
 =?us-ascii?Q?LuW1yvY7j7uSOXpenNLIwrPHaJuT7+imvyDmz/fuBQX0zWMHC/TdQ1gmwmG3?=
 =?us-ascii?Q?8V+GnkkRnZ5Gsi1k8SyBAJOKD78wUhV9T/KniDoFCEqH++v7vuolb73TpY4C?=
 =?us-ascii?Q?5L15YscTeF8JsdroSuyMzqqx+D9ubbB1zgNfbPa0aB++0I1bb/rNDeMiIUcM?=
 =?us-ascii?Q?iq2JrwyA/ioyQkwEwHpCizAfAP0Vxx6mYMYNca1GTCIcuOIPeblVTnt2WjTL?=
 =?us-ascii?Q?2OCNiCDwwEXNHO964SdD09l0MGPfEhlRm7UA9olGe8c2JZPR3ecveN38NGTT?=
 =?us-ascii?Q?MeTiPIhG7hnfkx93M17I2czZ835iWruEatirpZB9xQ5EoTeqeVdINuS70Owm?=
 =?us-ascii?Q?eYNO9Qo2D6yH+NpN8i40Gsok5Ab3x1A+byRSnqNv2wf9ABcTtMSqIErA77Er?=
 =?us-ascii?Q?gKH+UXxkFpUPwKUUMH5NMjD/MmaMN1x5X5+YnlfNZpvkBXSJEZr3wjGEo5/K?=
 =?us-ascii?Q?neBAQVehBFAMYF0FTkGK50X5uWAJEr6zEixDSofwphCqEqgNZpY61gZx+2bp?=
 =?us-ascii?Q?50FFYoCWW1A33LxiNHEiE3MuzpLcJroGx+aydmvsPQkSMGsqxr8C+oH7JSoZ?=
 =?us-ascii?Q?+cDJEgpy6+GqjBzZk2HZ6Pt2mCflrme5Y35lXfn4P++g3VioPknwMH2w0dbK?=
 =?us-ascii?Q?I2akKvMxcsasyy2Cz+UiqA7ncrBD0bXlcJkp5oxdrCLd8PPGWRd0vKlXBt5w?=
 =?us-ascii?Q?OT0wouCYnzMCkrgMAtv2J7EJ0Oy+/26CneaZTrLSMdgyPg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yp6wXvxJ3x6v3fLjHJ4Txfiu2zTlE9swYs2nQekBf1zoqCRGIfc7g+vwN60V?=
 =?us-ascii?Q?Ijh2q8thjuLAYK8d65JvAQ1ADXaXsLZCJBV27Ow6GrqC9E11qG6ZZbn281WF?=
 =?us-ascii?Q?oCrNzZCsWVfIv0ZWuhaK7lq8Z6ngAKJguMTH3uGYN2NLcyHpIgTuCI5pGSAJ?=
 =?us-ascii?Q?szZRecFs2LY0gB/8WNWBuIykDhaIFoM9F9uOosPPvJYqBSafzjQMTt0lCl/U?=
 =?us-ascii?Q?QdYWNUFpavOkXgZf3RWGmVjS6Dm6Gs7UJFzuZFDGoYEv6JHknFRjLJXcR0IJ?=
 =?us-ascii?Q?FqL3roMc7YuSIRls07lZzBbO4GTIOOBeO74X0dPTob+MDx/mSaxza28PYYV9?=
 =?us-ascii?Q?Sa7gYM4Xq0h0A7EBfkIKeKSWyORuYD+S3X9tM22tv4r2Zs00JGB0RNOt49+6?=
 =?us-ascii?Q?l8jpQ1xyVFA53AGaG+4SvsKRLhrY/6DGMOf0l3H6eNtVkJjS5z8CL1hQlFI2?=
 =?us-ascii?Q?dI8cO1/GRioSp3NrLvLYgUioW/Qe8eruxUWxKAG9H8KmSomRwt2NirWWEolC?=
 =?us-ascii?Q?WwOFSPDIL0G0aIo7aBE9tnFdCRTTE9volXSaUwIkRxF/5qDqdK6+OSdV9EUZ?=
 =?us-ascii?Q?Lnfsy5RBWuJ1jqHj2awFstocE8juvoojZhuB3utBor7GG6vxfd5t2S4xDDFk?=
 =?us-ascii?Q?rSIZLdpefi36Ju74NEGJsnquzIyG6ro1QDFRQMvuNZEgHWTyYjSPSpXB0j7z?=
 =?us-ascii?Q?coB5F0YAj/Xb+agmfS+GlvJQGOQ65NEWsSFn+W8quXfqXNx2vKeFgtkXO+y8?=
 =?us-ascii?Q?Slb5H5DVg4rNuyxWe+QESE77njUd4XqEi7ER0BXQbSg7zqJKWbxd471gwIYb?=
 =?us-ascii?Q?Ak3fmHFBWumoM0pXjhURlx+wV/ihqvxU67cdyhn27Co06/ETjY9zMQuHiLdp?=
 =?us-ascii?Q?1ZnFh+zBuIANAdcigjvhSZFPKWMa466UAnN8LS43lAifpPs7BVVI9WXTEzYx?=
 =?us-ascii?Q?GiKuTL3qU/3wC6ElyI2HOm0ARjMh+5ci1ROjGujO4o8/J3lGPWAQFD3AJT/r?=
 =?us-ascii?Q?d5zHBXYDX3XMM7MMT9riGqHut0PpDyYU+gFzlpPS1KjX0Xyal7zDGNZnVG5/?=
 =?us-ascii?Q?jkPoJMZrgQnIDMYf09vcdN+0nJcy9cXMx3bIoROMZwKzTzqVT7wRDV3Lpk2R?=
 =?us-ascii?Q?JW2LPJf+y6V9Pp6nrzTJ0UEKqLjP5SEOFJO/3Vy39Sa0M+gBumwRg8h83Xsk?=
 =?us-ascii?Q?T8nm/gMGnIGv8T+GQENa1ymygWmjfIBC4sQ5ILsTIqv52cGwrAjB3ccreNsG?=
 =?us-ascii?Q?4KkC5i4P1sSNJonyJZrQJP4sQ1Ut1rDtCW+hiFFbJWpXIdJK22UYYX85eKlK?=
 =?us-ascii?Q?tr7GT9fJtb/46PzPZ7dTkWlPH+dW1bI1I2IBwaeRVaUnBfsccyQlsBXBQtBT?=
 =?us-ascii?Q?15BJoLr3C0J4I6aULlwKgi/Q8fi3qgdBH82xedmNO8UP5tC4HlrnkZK8toV2?=
 =?us-ascii?Q?a3hCCpx8mcuDDGi2Xih9IbgbChZxG2/rFo+Zlg1Zxs87mT5zG1XeVd+zichN?=
 =?us-ascii?Q?NUWrbKmoE83JY6F6wiwU+mjTHD525ZJuhYtdknVWi6L78fqneskqiG5RPYRz?=
 =?us-ascii?Q?7eWKnDa4fNkmYY04sbA3au9suoTziGyVc6FXUMB5aopXb1REsOYcE/ubjY6t?=
 =?us-ascii?Q?bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42027b8c-b741-442c-4d9f-08dcdcd98d75
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:32.2217 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 20sbV0kk4PJnHmWMkIFweBrFoAhfZLYjumrw/qs4Vw0SOdEO0lcw5g/jjz/zic9g4aTUMbzQvgyKX190zhlUog==
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

Move a few things to after GT has stopped and also
IRQ has been disabled:
 - intel_hpd_cancel_work
 - intel_display_driver_suspend_access
 - intel_encoder_suspend_all

With that, also remove the xe_display_flush_cleanup_work,
which is no longer necessary.

Then, use directly all the intel_display_driver functions for
a full alignment.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 25 ++++++++++++++-----------
 drivers/gpu/drm/xe/display/xe_display.h |  2 ++
 drivers/gpu/drm/xe/xe_pm.c              |  2 ++
 3 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 959635653cfb..44850b6cd382 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -342,26 +342,29 @@ static void xe_display_from_d3cold(struct xe_device *xe)
 
 void xe_display_pm_suspend(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
-	bool s2idle = suspend_to_idle();
-
 	if (!xe->info.probe_display)
 		return;
 
 	intel_display_driver_suspend(xe);
+}
 
-	xe_display_flush_cleanup_work(xe);
+void xe_display_pm_suspend_noirq(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
 
-	intel_hpd_cancel_work(xe);
+	intel_display_driver_suspend_noirq(xe);
+}
 
-	if (has_display(xe)) {
-		intel_display_driver_suspend_access(xe);
-		intel_encoder_suspend_all(&xe->display);
-	}
+void xe_display_pm_suspend_noggtt(struct xe_device *xe)
+{
+	struct intel_display *display = &xe->display;
+	bool s2idle = suspend_to_idle();
 
-	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
+	if (!xe->info.probe_display)
+		return;
 
-	intel_dmc_suspend(display);
+	intel_display_driver_suspend_noggtt(display, s2idle);
 }
 
 void xe_display_pm_shutdown(struct xe_device *xe)
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index b4ed5b598c2d..256bd2d23964 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -35,6 +35,8 @@ void xe_display_irq_reset(struct xe_device *xe);
 void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt);
 
 void xe_display_pm_suspend(struct xe_device *xe);
+void xe_display_pm_suspend_noirq(struct xe_device *xe);
+void xe_display_pm_suspend_noggtt(struct xe_device *xe);
 void xe_display_pm_suspend_late(struct xe_device *xe);
 void xe_display_pm_shutdown(struct xe_device *xe);
 void xe_display_pm_shutdown_noirq(struct xe_device *xe);
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index f5d89c326d46..77eb45a641e8 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -140,6 +140,8 @@ int xe_pm_suspend(struct xe_device *xe)
 
 	xe_irq_suspend(xe);
 
+	xe_display_pm_suspend_noirq(xe);
+	xe_display_pm_suspend_noggtt(xe);
 	xe_display_pm_suspend_late(xe);
 
 	drm_dbg(&xe->drm, "Device suspended\n");
-- 
2.46.0

